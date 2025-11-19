unint64_t sub_10026BA14()
{
  result = qword_10057A090;
  if (!qword_10057A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A090);
  }

  return result;
}

void sub_10026BA68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 guid];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v7;
    v27 = v6;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v8 = [a1 podcast];
  if (v8 && (v9 = v8, v10 = [v8 feedURL], v9, v10))
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  [a1 storeTrackId];
  v14 = AdamID.init(rawValue:)();
  v15 = [a1 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 podcast];
  if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0;
  }

  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v23;
  *(a2 + 72) = v25;
}

uint64_t sub_10026BC28(uint64_t a1)
{
  v12 = *(v1 + 3);
  v13 = *(v1 + 2);
  v4 = *(v1 + 5);
  v11 = *(v1 + 4);
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  v7 = *(v1 + 8);
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C51C;

  return sub_100266B1C(v8, a1, v13, v12, v11, v4, v5, v6, v7);
}

uint64_t sub_10026BD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057A0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10026BDB4()
{
  sub_100168088(&unk_10057A0C0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];

  sub_10026A458(v1, v2, v3, v4, v5);
}

uint64_t sub_10026BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_10026BE94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[15];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10026504C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10026BF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026BFD4(uint64_t *a1)
{
  v2 = sub_100168088(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10026C0C4(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_100168088(a1) - 8);
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a3(v5, v6, v7, v8);
}

unint64_t sub_10026C13C()
{
  result = qword_10057A0F0;
  if (!qword_10057A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A0F0);
  }

  return result;
}

id sub_10026C2C4(void *a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.userActivity.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received request to pause playback (receiver has confirmed handoff)", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  v16 = v2;
  sub_100217CC4(0, 0, v6, &unk_1004071C8, v15);

  return [a1 close];
}

uint64_t sub_10026C4FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_100269E14(a1, v4, v5, v6);
}

__n128 sub_10026C5D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10026C5EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10026C648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10026C6D0()
{
  result = qword_10057A100;
  if (!qword_10057A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A100);
  }

  return result;
}

unint64_t sub_10026C728()
{
  result = qword_10057A108;
  if (!qword_10057A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A108);
  }

  return result;
}

__n128 sub_10026C77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10026C7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_10026C7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10026C850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10026C898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t LegacyEnqueueEpisodeForPlaybackIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10026C9BC;

  return (sub_10026F688)(a1, a2);
}

uint64_t sub_10026C9BC(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 1);
  }
}

void sub_10026CAEC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = sub_100168088(&qword_10057A148);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 11) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_1002706F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10026D330;
  aBlock[3] = &unk_1004E7E38;
  v17 = _Block_copy(aBlock);

  [a2 resolveActivePlayerPathWithCompletion:v17];
  _Block_release(v17);
}

void sub_10026CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v24 = a5;
  v23 = a4;
  v8 = sub_100168088(&qword_10057A148);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100009F1C(0, &qword_1005729D0);
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v16 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v15, v12);
    (*(v9 + 16))(v11, a3, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v11, v8);
    aBlock[4] = sub_1002707BC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10026D2DC;
    aBlock[3] = &unk_1004E7E88;
    v19 = _Block_copy(aBlock);

    MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer();
    _Block_release(v19);
  }

  else
  {
    v20 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
    v21 = swift_allocError();
    *v22 = a2;
    (*(*(v20 - 8) + 104))(v22, enum case for RemoteQueueOperationError.pathResolutionError(_:), v20);
    aBlock[0] = v21;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10026D034(int a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.playback.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v20[1] = a2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v21 = a1;
      type metadata accessor for MRMediaRemoteError(0);
      v13 = String.init<A>(describing:)();
      v15 = sub_1000153E0(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to resolve active player path with error: %s", v11, 0xCu);
      sub_100004590(v12);
    }

    (*(v5 + 8))(v7, v4);
    v16 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
    v17 = swift_allocError();
    *v18 = a1;
    (*(*(v16 - 8) + 104))(v18, enum case for RemoteQueueOperationError.mediaRemoteError(_:), v16);
    v22 = v17;
    sub_100168088(&qword_10057A148);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100168088(&qword_10057A148);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10026D2DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10026D330(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10026D3AC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1001A77CC(0, v4, 0);
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];

      if (v9 >= v10 >> 1)
      {
        sub_1001A77CC((v10 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v11 = &_swiftEmptyArrayStorage[3 * v9];
      v11[4] = v7;
      v11[5] = v8;
      *(v11 + 48) = 2;
      v6 += 2;
      --v4;
    }

    while (v4);
    v3 = a2;
    v2 = v21;
  }

  v12 = NSManagedObjectContext.episodes(for:sortDescriptors:limit:)();
  if (v2)
  {
  }

  v14 = v12;

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_20:

    *v3 = _swiftEmptyArrayStorage;
    return result;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_11:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v15 & 0x8000000000000000) == 0)
  {
    sub_100009F1C(0, &qword_10057A130);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        IMPlayerItem.init(episode:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 = v17;
      }

      while (v15 != v17);
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v14 + v18);
        IMPlayerItem.init(episode:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 += 8;
        --v15;
      }

      while (v15);
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10026D62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10026D6E4;

  return (sub_10026F688)(a2, a3);
}

uint64_t sub_10026D6E4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10026D7F8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for EpisodeOffer();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  EpisodeOffersIntent = type metadata accessor for FetchEpisodeOffersIntent();
  v2[14] = EpisodeOffersIntent;
  v2[15] = *(EpisodeOffersIntent - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_100168088(&qword_10057A158);
  v6 = swift_task_alloc();
  v2[17] = v6;
  *v6 = v2;
  v6[1] = sub_10026D970;

  return BaseObjectGraph.inject<A>(_:)(v2 + 7, v5, v5);
}

uint64_t sub_10026D970()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10026E1BC;
  }

  else
  {
    v2 = sub_10026DA84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026DA84()
{
  v0[19] = v0[7];
  v1 = sub_100168088(&qword_10057A160);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_10026DB48;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10026DB48()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10026E22C;
  }

  else
  {
    v2 = sub_10026DC5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026DC5C()
{
  if ([*(v0 + 152) isReachable])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_1000044A0((v0 + 16), v1);

    FetchEpisodeOffersIntent.init(adamIDs:)();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    v4 = sub_1002708F4(&unk_10057A170, &type metadata accessor for FetchEpisodeOffersIntent);
    *v3 = v0;
    v3[1] = sub_10026DE94;
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    v7 = *(v0 + 80);

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 64, v5, v7, v6, v4, v1, v2);
  }

  else
  {
    v8 = type metadata accessor for PodcastsPlaybackError.PlayerError();
    sub_1002708F4(&qword_10057A168, &type metadata accessor for PodcastsPlaybackError.PlayerError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PodcastsPlaybackError.PlayerError.noInternet(_:), v8);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100004590(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10026DE94()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_10026E2A4;
  }

  else
  {
    v3 = sub_10026DFFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026DFFC()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = v0[13];
      v10 = v0[11];
      v5(v9, v7, v10);
      v11 = sub_100294534();
      (*(v4 - 8))(v9, v10);
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  swift_unknownObjectRelease();
  sub_100004590((v0 + 2));

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_10026E1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E22C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E2A4()
{
  swift_unknownObjectRelease();
  sub_100004590(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E324(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for TaskPriority();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_100168088(&unk_1005738E0);
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_10026E49C;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v4, v4);
}

uint64_t sub_10026E49C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10026E9D8;
  }

  else
  {
    v2 = sub_10026E5B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E5B0()
{
  v1 = v0[12];
  swift_getObjectType();
  static Task<>.currentPriority.getter();
  v2 = NSManagedObjectContextProvider.managedObjectContext(for:)();
  v0[13] = v2;
  if (v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v10 = swift_allocObject();
    v0[14] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v9;
    (*(v8 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v5;

    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_100168088(&qword_100575C00);
    *v11 = v0;
    v11[1] = sub_10026E7C8;
    v13 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v13, sub_10027093C, v10, v12);
  }
}

uint64_t sub_10026E7C8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_10026EA48;
  }

  else
  {
    v3 = sub_10026E94C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E94C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026E9D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026EA48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026EAC0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_100168088(&qword_10057A0A0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for MediaIdentifier();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10026EBC4, 0, 0);
}

uint64_t sub_10026EBC4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  EnqueueEpisodeForPlaybackIntent.episodeID.getter();
  MediaIdentifier.init(episodeID:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100270838(v0[10]);
    sub_1002708A0();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  (*(v7 + 32))(v5, v0[10], v6);
  (*(v7 + 16))(v4, v5, v6);
  v8 = (*(v7 + 88))(v4, v6);
  if (v8 == enum case for MediaIdentifier.podcast(_:))
  {
LABEL_4:
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[12];
    v12 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for RemoteQueueOperationError.podcastsNotSupported(_:), v12);
    swift_willThrow();
    (*(v11 + 8))(v9, v10);
    goto LABEL_5;
  }

  if (v8 == enum case for MediaIdentifier.episodes(_:))
  {
    v16 = v0[13];
    (*(v0[12] + 96))(v16, v0[11]);
    v17 = *v16;
    v0[15] = v17;
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_10026F1A0;
    v19 = v0[9];

    return sub_10026D7F8(v17, v19);
  }

  else
  {
    if (v8 != enum case for MediaIdentifier.localEpisodes(_:))
    {
      if (v8 != enum case for MediaIdentifier.localPodcast(_:))
      {
        if (v8 == enum case for MediaIdentifier.station(_:))
        {
          v23 = v0[14];
          v24 = v0[11];
          v25 = *(v0[12] + 8);
          v25(v0[13], v24);
          v26 = type metadata accessor for RemoteQueueOperationError();
          sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
          swift_allocError();
          (*(*(v26 - 8) + 104))(v27, enum case for RemoteQueueOperationError.stationsNotSupported(_:), v26);
          swift_willThrow();
          v25(v23, v24);
        }

        else
        {
          v28 = v0[12];
          v29 = enum case for MediaIdentifier.library(_:);
          v30 = v8;
          v31 = type metadata accessor for RemoteQueueOperationError();
          sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
          swift_allocError();
          v33 = *(*(v31 - 8) + 104);
          v34 = (v28 + 8);
          v35 = v0[14];
          if (v30 == v29)
          {
            v36 = v0[11];
            v33(v32, enum case for RemoteQueueOperationError.libraryNotSupported(_:), v31);
            swift_willThrow();
            (*v34)(v35, v36);
          }

          else
          {
            v37 = v0[13];
            v38 = v0[11];
            v33(v32, enum case for RemoteQueueOperationError.unknownRequest(_:), v31);
            swift_willThrow();
            v39 = *v34;
            (*v34)(v35, v38);
            v39(v37, v38);
          }
        }

LABEL_5:

        v14 = v0[1];

        return v14();
      }

      (*(v0[12] + 8))(v0[13], v0[11]);
      goto LABEL_4;
    }

    v20 = v0[13];
    (*(v0[12] + 96))(v20, v0[11]);
    v21 = *v20;
    v0[18] = v21;
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_10026F414;

    return sub_10026E324(v21);
  }
}

uint64_t sub_10026F1A0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_10026F37C;
  }

  else
  {
    v4 = sub_10026F2D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026F2D8()
{
  v1 = v0[3];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10026F37C()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10026F414(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_10026F5F0;
  }

  else
  {
    v4 = sub_10026F54C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026F54C()
{
  v1 = v0[6];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10026F5F0()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10026F688(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for PlaybackController.QueueCommand.Location();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_100009F1C(0, &qword_10057A120);
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_10026F7A8;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v4, v4);
}

uint64_t sub_10026F7A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10027055C;
  }

  else
  {
    v2 = sub_10026F8BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026F8BC()
{
  v0[11] = v0[2];
  v1 = sub_100009F1C(0, &qword_10057A128);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10026F984;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v1, v1);
}

uint64_t sub_10026F984()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1002705C0;
  }

  else
  {
    v2 = sub_10026FA98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026FA98()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v0 + 112) = v4;
  EnqueueEpisodeForPlaybackIntent.location.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for PlaybackController.QueueCommand.Location.before(_:) || v5 == enum case for PlaybackController.QueueCommand.Location.after(_:))
  {
    v7 = *(v0 + 88);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v8 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for RemoteQueueOperationError.unsupportedQueuePosition(_:), v8);
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    if (v5 == enum case for PlaybackController.QueueCommand.Location.queueHead(_:))
    {
      v12 = 0;
    }

    else
    {
      if (v5 != enum case for PlaybackController.QueueCommand.Location.queueTail(_:))
      {
        (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      }

      v12 = 1;
    }

    *(v0 + 168) = v12;
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_10026FCE4;
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);

    return sub_10026EAC0(v15, v14);
  }
}

uint64_t sub_10026FCE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1002702D4;
  }

  else
  {
    v4 = sub_10026FDF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026FDF8()
{
  v33 = v0;
  v1 = *(v0 + 128);
  v32 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v2; i = *(v0 + 128))
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v7 + 8 * v4);
      }

      v9 = v8;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v1 = type metadata accessor for RestrictionsController();
      if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || ([v9 isExplicit] & 1) == 0) && (objc_msgSend(v9, "isEntitled"))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v32;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v0 == v2)
      {
        v0 = v31;
        v10 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_20:
  v11 = *(v0 + 112);

  sub_100009F1C(0, &qword_10057A130);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = [v11 playbackQueueWithAccountInfoForPlayerItems:isa];

  if (v13)
  {
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
LABEL_43:
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *(v10 + 16);
    }

    v15 = 0;
    do
    {
      if (v14 == v15)
      {

        v23 = type metadata accessor for PodcastsPlaybackError.FairPlayError();
        sub_1002708F4(&qword_10057A140, &type metadata accessor for PodcastsPlaybackError.FairPlayError);
        swift_allocError();
        (*(*(v23 - 8) + 104))(v24, enum case for PodcastsPlaybackError.FairPlayError.notEntitled(_:), v23);
        swift_willThrow();
        v19 = *(v0 + 112);
        v20 = *(v0 + 88);
        goto LABEL_35;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v10 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v18 = [v16 isEntitled];

      ++v15;
    }

    while ((v18 & 1) == 0);
    v27 = *(v0 + 168);
    v28 = *(v0 + 88);

    v29 = swift_task_alloc();
    *(v0 + 144) = v29;
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v27;
    v30 = swift_task_alloc();
    *(v0 + 152) = v30;
    *v30 = v0;
    v30[1] = sub_100270348;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v30, 0, 0, 0xD000000000000022, 0x800000010046B900, sub_1002706EC, v29, &type metadata for () + 8);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);

    v21 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for RemoteQueueOperationError.unableToIdentifyQueue(_:), v21);
    swift_willThrow();
LABEL_35:

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1002702D4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100270348()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1002704E0;
  }

  else
  {

    v2 = sub_100270464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100270464()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1002704E0()
{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10027055C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002705C0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100270630()
{
  result = qword_10057A110;
  if (!qword_10057A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A110);
  }

  return result;
}

void sub_1002706F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100168088(&qword_10057A148) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 11) & 0xFFFFFFFFFFFFFFF8));

  sub_10026CCC8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1002707BC(int a1)
{
  v3 = *(sub_100168088(&qword_10057A148) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10026D034(a1, v4);
}

uint64_t sub_100270838(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057A0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002708A0()
{
  result = qword_10057A150;
  if (!qword_10057A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A150);
  }

  return result;
}

uint64_t sub_1002708F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100270A4C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_100168088(&qword_10057A270);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_100270D80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100270DF4(uint64_t a1)
{
  v73 = type metadata accessor for URL();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_10057A278);
    sub_100031980(&qword_10057A280, &qword_10057A278);
    Set.Iterator.init(_cocoa:)();
    a1 = v79;
    v4 = v80;
    v5 = v81;
    v6 = v82;
    v7 = v83;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v62 = v5;
  v11 = (v5 + 64) >> 6;
  v72 = (v2 + 8);
  v67 = UIApplicationOpenURLOptionsSourceApplicationKey;
  v66 = UIApplicationOpenURLOptionsAnnotationKey;
  v65 = UIApplicationOpenURLOptionsOpenInPlaceKey;
  v64 = xmmword_100400790;
  v12 = &type metadata for String;
  v70 = v4;
  v68 = a1;
  v63 = v11;
  while (a1 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (*&v76[0] = v18, sub_100009F1C(0, &qword_10057A278), swift_dynamicCast(), v17 = v77, v15 = v6, v16 = v7, !v77))
    {
LABEL_40:
      sub_1000319D8();
      return;
    }

LABEL_20:
    v74 = v16;
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v19 = static OS_os_log.launch.getter();
    sub_100168088(&unk_100574670);
    v20 = v12;
    v21 = swift_allocObject();
    *(v21 + 16) = v64;
    v22 = [v17 URL];
    v23 = v71;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = URL.absoluteString.getter();
    v26 = v25;
    v69 = *v72;
    v69(v23, v73);
    *(v21 + 56) = v20;
    *(v21 + 64) = sub_100022C18();
    *(v21 + 32) = v24;
    *(v21 + 40) = v26;
    os_log(_:dso:log:_:_:)();

    v27 = v67;
    v28 = [v17 options];
    v29 = [v28 sourceApplication];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *(&v78 + 1) = v20;
      *&v77 = v30;
      *(&v77 + 1) = v32;
      sub_10016B7CC(&v77, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = &_swiftEmptyDictionarySingleton;
      sub_10025F224(v76, v27, isUniquelyReferenced_nonNull_native);

      v34 = v75;
      v12 = v20;
      v35 = &selRef__frcDidChangeResults_uuidToManagedObjectIDMap_;
    }

    else
    {
      v34 = &_swiftEmptyDictionarySingleton;
      v36 = sub_100202D0C(v27);
      v12 = v20;
      if (v37)
      {
        v38 = v36;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *&v76[0] = &_swiftEmptyDictionarySingleton;
        v35 = &selRef__frcDidChangeResults_uuidToManagedObjectIDMap_;
        if ((v39 & 1) == 0)
        {
          sub_100260338();
          v34 = *&v76[0];
        }

        sub_10016B7CC((v34[7] + 32 * v38), &v77);
        sub_1002927D8(v38, v34);
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
        v35 = &selRef__frcDidChangeResults_uuidToManagedObjectIDMap_;
      }

      sub_10016B3CC(&v77);
    }

    v40 = v66;
    v41 = [v17 options];
    v42 = [v41 annotation];

    if (v42)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10016B7CC(&v77, v76);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v34;
      sub_10025F224(v76, v40, v43);

      v34 = v75;
    }

    else
    {
      v44 = sub_100202D0C(v40);
      if (v45)
      {
        v46 = v44;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v76[0] = v34;
        if ((v47 & 1) == 0)
        {
          sub_100260338();
          v34 = *&v76[0];
        }

        sub_10016B7CC((v34[7] + 32 * v46), &v77);
        sub_1002927D8(v46, v34);
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
      }

      sub_10016B3CC(&v77);
    }

    v48 = [v17 options];
    v49 = [v48 openInPlace];

    *(&v78 + 1) = &type metadata for Bool;
    LOBYTE(v77) = v49;
    sub_10016B7CC(&v77, v76);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v34;
    sub_10025F224(v76, v65, v50);
    v51 = objc_opt_self();
    v52 = [v51 sharedApplication];
    v53 = [v52 delegate];

    if (!v53)
    {

LABEL_9:

      goto LABEL_10;
    }

    if (([v53 respondsToSelector:v35[510]] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v54 = v12;
    v55 = [v51 sharedApplication];
    v56 = [v17 URL];
    v57 = v71;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    type metadata accessor for OpenURLOptionsKey(0);
    sub_100271CA4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v53 v35[510]];
    swift_unknownObjectRelease();

    v12 = v54;
    v11 = v63;

    v69(v57, v73);
LABEL_10:
    v6 = v15;
    v7 = v74;
    a1 = v68;
    v4 = v70;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_40;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1002715E8(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400790;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100022C18();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  os_log(_:dso:log:_:_:)();

  v6 = objc_opt_self();
  v7 = [v6 sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    if ([v8 respondsToSelector:"application:willContinueUserActivityWithType:"])
    {
      v9 = [v6 sharedApplication];
      v10 = String._bridgeToObjectiveC()();
      [v8 application:v9 willContinueUserActivityWithType:v10];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002717D8(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004007C0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_100022C18();
  *(v5 + 64) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  swift_getErrorValue();

  v7 = Error.localizedDescription.getter();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  os_log(_:dso:log:_:_:)();

  v9 = objc_opt_self();
  v10 = [v9 sharedApplication];
  v11 = [v10 delegate];

  if (v11)
  {
    if ([v11 respondsToSelector:"application:didFailToContinueUserActivityWithType:error:"])
    {
      v12 = [v9 sharedApplication];
      v13 = String._bridgeToObjectiveC()();
      v14 = _convertErrorToNSError(_:)();
      [v11 application:v12 didFailToContinueUserActivityWithType:v13 error:v14];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1002719DC(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v5 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400790;
  v7 = [a1 type];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100022C18();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  os_log(_:dso:log:_:_:)();

  v11 = objc_opt_self();
  v12 = [v11 sharedApplication];
  v13 = [v12 delegate];

  if (v13)
  {
    if ([v13 respondsToSelector:"application:performActionForShortcutItem:completionHandler:"])
    {
      swift_unknownObjectRetain();
      v14 = [v11 sharedApplication];
      v17[4] = sub_1002353FC;
      v17[5] = v4;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1002016BC;
      v17[3] = &unk_1004E7F28;
      v15 = _Block_copy(v17);

      [v13 application:v14 performActionForShortcutItem:a1 completionHandler:v15];
      swift_unknownObjectRelease_n();

      _Block_release(v15);
    }

    swift_unknownObjectRelease();
  }

  a2[2](a2, 0);
}

unint64_t sub_100271CA4()
{
  result = qword_100573110;
  if (!qword_100573110)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573110);
  }

  return result;
}

id sub_100271D14(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a3;
  v37 = a4;
  v5 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v5 - 8);
  v38 = &v36[-v6];
  v7 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-v8];
  v10 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v14 - 8);
  v16 = &v36[-v15];
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v41 = aBlock[0];
  LegacyLockup.title.getter();
  v18 = v17;
  v40 = a1;
  sub_1002722D0();
  v20 = v19;
  if (v18)
  {
    v21 = String._bridgeToObjectiveC()();

    if (v20)
    {
LABEL_3:
      v22 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
LABEL_6:
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v21 detailText:v22 image:0 accessoryImage:0 accessoryType:1];

  LegacyLockup.artwork.getter();
  CarPlayPageLoadCoordinator.loadImage(for:into:)(v16, v23);
  sub_10021F030(v16);
  v24 = v39;
  v25 = *(v39 + 64);
  if (v25 == 255)
  {
    *v13 = LibraryShowLockup.uuid.getter();
    *(v13 + 1) = v29;
    v28 = 16;
    LOBYTE(v25) = v37;
  }

  else
  {
    v26 = *(v39 + 16);
    *v13 = *v39;
    *(v13 + 1) = v26;
    v27 = *(v24 + 48);
    *(v13 + 2) = *(v24 + 32);
    *(v13 + 3) = v27;
    v28 = 64;
  }

  v13[v28] = v25;
  swift_storeEnumTagMultiPayload();
  v30 = v38;
  sub_1002724B0(v13, v38);
  v31 = *(v11 + 56);
  v31(v30, 0, 1, v10);
  v31(v9, 1, 1, v10);
  v32 = type metadata accessor for CarPlayTemplateInfo(0);
  v33 = *(v32 + 20);
  sub_100272514(v24, aBlock);
  sub_1001FBB44(v30, v9);
  v9[v33] = 0;
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_1001D2AD4(v9);
  aBlock[4] = sub_100272584;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004E7FA0;
  v34 = _Block_copy(aBlock);

  [v23 setHandler:v34];
  _Block_release(v34);

  sub_10027258C(v13);
  return v23;
}

uint64_t sub_10027217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_1004076E8, v13);
}

uint64_t sub_1002722D0()
{
  type metadata accessor for ExplicitContentPresenter();
  BaseObjectGraph.inject<A>(_:)();
  v0 = LegacyLockup.subtitle.getter();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v0;
  v3 = v1;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

LABEL_9:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v5 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100243134((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v3;
LABEL_10:
  if (LegacyLockup.isExplicit.getter())
  {
    v9 = ExplicitContentPresenter.symbol.getter();
    v11 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100243134(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_100243134((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0);
  sub_1001A4604();
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_1002724B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100575040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027258C(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002725E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_1002726BC(uint64_t a1)
{
  v3 = sub_100168088(&qword_10057A428);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v38 = type metadata accessor for MediaLibraryPid();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v29 - v9;
  v34 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_1005747D0);
    sub_100276194();
    result = Set.Iterator.init(_cocoa:)();
    a1 = v40;
    v11 = v41;
    v12 = v42;
    v13 = v43;
    v14 = v44;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v33 = v12;
  v36 = (v6 + 48);
  v37 = (v6 + 56);
  v35 = _swiftEmptyArrayStorage;
  v29 = v6;
  v30 = (v6 + 32);
  while (a1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v39 = v21, sub_100009F1C(0, &qword_1005747D0), swift_dynamicCast(), (v20 = v45) == 0))
    {
LABEL_24:
      sub_1000319D8();
      return v35;
    }

LABEL_17:
    [v20 persistentID];
    MediaLibraryPid.init(uint64Value:)();
    v22 = v38;
    (*v37)(v5, 0, 1, v38);

    if ((*v36)(v5, 1, v22) == 1)
    {
      result = sub_100009104(v5, &qword_10057A428);
    }

    else
    {
      v23 = *v30;
      v24 = v38;
      (*v30)(v31, v5, v38);
      v23(v32, v31, v24);
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_100243BFC(0, v35[2] + 1, 1, v35);
      }

      v27 = v35[2];
      v26 = v35[3];
      if (v27 >= v26 >> 1)
      {
        v35 = sub_100243BFC(v26 > 1, v27 + 1, 1, v35);
      }

      v28 = v35;
      v35[2] = v27 + 1;
      result = (v25)(v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, v32, v38);
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100272B30@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100276534(v1 + 88, &v5);
  if (v6)
  {
    return sub_1000109E4(&v5, a1);
  }

  v4 = sub_100009104(&v5, &qword_10057A478);
  (*(v1 + 72))(v4);
  sub_100004428(a1, &v5);
  swift_beginAccess();
  sub_1002765A4(&v5, v1 + 88);
  return swift_endAccess();
}

uint64_t sub_100272BFC(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v45 = a3;
  v44 = a2;
  v5 = sub_100168088(&qword_100573600);
  __chkstk_darwin(v5);
  v7 = (&v40 - v6);
  v43 = type metadata accessor for URL();
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v43);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v42 = &v40 - v15;
  v16 = [a1 mediaLibraryDictionary];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_100257E20(v17);

  v19 = sub_100275D9C(v18);

  if (v19)
  {
    v20 = [a1 itemFilePath];
    if (v20)
    {
      v21 = v20;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v41;
      v23 = *(v41 + 32);
      v24 = v42;
      v25 = v12;
      v26 = v43;
      v23(v42, v25, v43);
      sub_100272B30(v49);
      v40 = *(v3 + 168);
      sub_100004428(v3 + 128, v48);
      (*(v22 + 16))(v9, v24, v26);
      sub_100004428(v49, v47);
      v27 = (*(v22 + 80) + 88) & ~*(v22 + 80);
      v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      v29[2] = v3;
      v29[3] = v19;
      v30 = v45;
      v29[4] = v44;
      v29[5] = v30;
      sub_1000109E4(v48, (v29 + 6));
      v31 = v29 + v27;
      v32 = v43;
      v23(v31, v9, v43);
      sub_1000109E4(v47, v29 + v28);
      aBlock[4] = sub_1002763C0;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100273A94;
      aBlock[3] = &unk_1004E81F8;
      v33 = _Block_copy(aBlock);

      v34 = v19;

      [v40 requestMediaLibraryWriteTransaction:v33];
      _Block_release(v33);

      sub_100004590(v49);
      return (*(v22 + 8))(v42, v32);
    }

    sub_100276208();
    v38 = swift_allocError();
    *v39 = 3;
    *v7 = v38;
    swift_storeEnumTagMultiPayload();
    v44(v7);
  }

  else
  {
    sub_100276208();
    v36 = swift_allocError();
    *v37 = 0;
    *v7 = v36;
    swift_storeEnumTagMultiPayload();
    v44(v7);
  }

  return sub_100009104(v7, &qword_100573600);
}

uint64_t sub_1002730AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a4;
  v24 = a3;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = a2[7];
  v16 = a2[8];
  sub_1000044A0(a2 + 4, v15);
  sub_100004428(a6, v26);
  (*(v13 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  sub_100004428(v22, v25);
  v17 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 24) = a5;
  sub_1000109E4(v26, v18 + 32);
  (*(v13 + 32))(v18 + v17, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_1000109E4(v25, v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(v16 + 8);

  v19(v24, 6, UInt64.int64Representation.getter, 0, sub_100276468, v18, v15, v16);

  return 1;
}

uint64_t sub_1002732A4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), void (*a6)(char *, char *, uint64_t), void *a7, uint64_t a8, void *a9)
{
  v73 = a8;
  v74 = a7;
  v15 = type metadata accessor for MediaLibraryPid();
  v16 = *(v15 - 8);
  v76 = v15;
  v77 = v16;
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  __chkstk_darwin(v22);
  v75 = &v68 - v23;
  v24 = sub_100168088(&qword_100573600);
  __chkstk_darwin(v24);
  v26 = (&v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v30 = (&v68 - v29);
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v33 = a2;
    }

    else
    {
      sub_100276208();
      v33 = swift_allocError();
      *v38 = 1;
    }

    *v26 = v33;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a5(v26);
    v37 = v26;
    return sub_100009104(v37, &qword_100573600);
  }

  v72 = v28;
  if (a4 >> 60 == 15)
  {
    sub_100276208();
    v31 = swift_allocError();
    *v32 = 2;
    *v30 = v31;
    swift_storeEnumTagMultiPayload();
    a5(v30);
LABEL_8:
    v37 = v30;
    return sub_100009104(v37, &qword_100573600);
  }

  sub_100009F1C(0, &qword_10057A440);
  sub_100168088(&qword_10057A448);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004007C0;
  *(v34 + 32) = sub_100009F1C(0, &qword_10057A450);
  *(v34 + 40) = sub_100009F1C(0, &qword_1005742A0);
  sub_10027636C(a3, a4);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v81)
  {
    sub_100009104(v80, &unk_1005783D0);
    goto LABEL_7;
  }

  sub_100168088(&qword_100573BD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_100276208();
    v35 = swift_allocError();
    *v36 = 2;
    *v30 = v35;
    swift_storeEnumTagMultiPayload();
    a5(v30);
    sub_1001F6D60(a3, a4);
    goto LABEL_8;
  }

  v40 = *(v78 + 16);
  if (v40)
  {
    v68 = a3;
    v69 = a4;
    v70 = a6;
    v71 = a5;
    v80[0] = _swiftEmptyArrayStorage;
    sub_1001A7804(0, v40, 0);
    v41 = v80[0];
    v42 = 32;
    do
    {
      MediaLibraryPid.init(_:)();
      v80[0] = v41;
      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        sub_1001A7804(v43 > 1, v44 + 1, 1);
        v41 = v80[0];
      }

      v41[2] = v44 + 1;
      (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v44, v18, v76);
      v42 += 8;
      --v40;
    }

    while (v40);

    a5 = v71;
    a3 = v68;
    a4 = v69;
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

  v46 = v76;
  v45 = v77;
  if (!v41[2])
  {

    goto LABEL_7;
  }

  v47 = v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v70 = *(v77 + 16);
  v71 = (v77 + 16);
  v70(v21, v47, v76);

  v48 = v75;
  (*(v45 + 32))(v75, v21, v46);
  v49 = v45;
  v50 = v74[3];
  v51 = v74[4];
  sub_1000044A0(v74, v50);
  (*(*(v51 + 8) + 8))(&v78, v48, v50);
  if (v79)
  {
    v52 = a3;
    sub_1000109E4(&v78, v80);
    v53 = URL.path.getter();
    v55 = v54;
    v56 = v81;
    v57 = v82;
    sub_1000044A0(v80, v81);
    (*(v57 + 8))(v53, v55, 0, v56, v57);

    v58 = a9[3];
    v59 = a9[4];
    sub_1000044A0(a9, v58);
    v60 = v75;
    v61 = MediaLibraryPid.uint64Value.getter();
    v62 = (*(v59 + 8))(v61, 1, v58, v59);
    if (v62)
    {

      v63 = v76;
      v70(v30, v60, v76);
      swift_storeEnumTagMultiPayload();
      a5(v30);
      sub_1001F6D60(v52, a4);
      sub_100009104(v30, &qword_100573600);
      (*(v77 + 8))(v60, v63);
    }

    else
    {
      sub_100276208();
      v66 = swift_allocError();
      *v67 = 4;
      *v30 = v66;
      swift_storeEnumTagMultiPayload();
      a5(v30);
      sub_1001F6D60(v52, a4);
      sub_100009104(v30, &qword_100573600);
      (*(v77 + 8))(v60, v76);
    }

    return sub_100004590(v80);
  }

  else
  {
    sub_100009104(&v78, &qword_10057A438);
    sub_100276208();
    v64 = swift_allocError();
    *v65 = 4;
    *v30 = v64;
    swift_storeEnumTagMultiPayload();
    a5(v30);
    sub_1001F6D60(a3, a4);
    sub_100009104(v30, &qword_100573600);
    return (*(v49 + 8))(v75, v76);
  }
}

uint64_t sub_100273A94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_100273AEC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v31 = a1;
  v5 = type metadata accessor for MediaLibraryPid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_autoreleasePoolPush();
  v32 = _swiftEmptyArrayStorage;
  v9 = *(a2 + 16);
  v26 = v9;
  if (v9)
  {
    v12 = *(v6 + 16);
    v10 = v6 + 16;
    v11 = v12;
    v13 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    v30 = _swiftEmptyArrayStorage;
    v12(v8, v13, v5);
    while (1)
    {
      v15 = [v31 itemWithPersistentID:MediaLibraryPid.uint64Value.getter() verifyExistence:0];
      (*(v10 - 8))(v8, v5);
      if (v15)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v30 = v32;
      }

      v13 += v14;
      if (!--v9)
      {
        break;
      }

      v11(v8, v13, v5);
    }
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v16 = static OS_os_log.mediaLibrary.getter();
  sub_100168088(&unk_100574670);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004007C0;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v26;
  v18 = v30;
  if (v30 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v17 + 96) = &type metadata for Int;
  *(v17 + 104) = &protocol witness table for Int;
  *(v17 + 72) = v19;
  os_log(_:dso:log:_:_:)();

  sub_1001A5550(v18);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v31 deleteItems:isa];

  objc_autoreleasePoolPop(v27);
  if (v21)
  {
    (v29)(0, 0);
  }

  else
  {
    static os_log_type_t.error.getter();
    v22 = static OS_os_log.mediaLibrary.getter();
    os_log(_:dso:log:_:_:)();

    sub_100276208();
    swift_allocError();
    *v23 = 7;
    v29();
  }

  return v21;
}

void sub_100273E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for MediaLibraryPid();
  v20 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + 168);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, v21, v9);
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v6);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v10 + 32))(v16 + v14, v12, v9);
  (*(v7 + 32))(v16 + v15, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v25;
  *v17 = v24;
  v17[1] = v18;
  aBlock[4] = sub_100276264;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100273A94;
  aBlock[3] = &unk_1004E81A8;
  v19 = _Block_copy(aBlock);

  [v23 requestMediaLibraryWriteTransaction:v19];
  _Block_release(v19);
}

uint64_t sub_100274168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong[19];
    v10 = Strong[20];
    sub_1000044A0(Strong + 16, v9);
    (*(*(v10 + 8) + 8))(&v37, a4, v9);
    if (v38)
    {
      sub_1000109E4(&v37, v39);
      v11 = v40;
      v12 = v41;
      sub_1000044A0(v39, v40);
      v13 = (*(v12 + 24))(v11, v12);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v17 = v8[19];
        v18 = v8[20];
        sub_1000044A0(v8 + 16, v17);
        (*(v18 + 32))(v15, v16, v17, v18);

        v21 = Data.init(contentsOf:options:)();
        v23 = v22;
        v24 = v40;
        v25 = v41;
        sub_1000044A0(v39, v40);
        v26 = *(v25 + 16);
        sub_10027636C(v21, v23);
        v27 = v26(v21, v23, v24, v25);
        sub_1001F6D74(v21, v23);
        if (v27)
        {
          sub_1001F6D74(v21, v23);
          sub_100004590(v39);

          goto LABEL_12;
        }

        sub_100276208();
        swift_allocError();
        *v28 = 5;
        swift_willThrow();
        sub_1001F6D74(v21, v23);
      }

      else
      {
        sub_100276208();
        swift_allocError();
        *v20 = 6;
        swift_willThrow();
      }

      sub_100004590(v39);
    }

    else
    {
      sub_100009104(&v37, &qword_10057A438);
      sub_100276208();
      swift_allocError();
      *v19 = 4;
      swift_willThrow();
    }

    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v29 = static OS_os_log.mediaLibrary.getter();
    sub_100168088(&unk_100574670);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100400790;
    v31 = _convertErrorToNSError(_:)();
    v32 = [v31 description];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100022C18();
    *(v30 + 32) = v33;
    *(v30 + 40) = v35;
    os_log(_:dso:log:_:_:)();
  }

LABEL_12:
  a5(0, 0);
  return 1;
}

void sub_100274520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v6 = static OS_os_log.mediaLibrary.getter();
  os_log(_:dso:log:_:_:)();

  v7 = *(v3 + 168);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_10027625C;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100273A94;
  v10[3] = &unk_1004E8068;
  v9 = _Block_copy(v10);

  [v7 requestMediaLibraryWriteTransaction:v9];
  _Block_release(v9);
}

void sub_10027466C(void *a1, void (*a2)(void))
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v2 = static OS_os_log.mediaLibrary.getter();
  os_log(_:dso:log:_:_:)();

  v3 = [objc_opt_self() downloadCandidateMediaItems];
  sub_100009F1C(0, &qword_1005747D0);
  sub_100276194();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  static os_log_type_t.default.getter();
  v5 = static OS_os_log.mediaLibrary.getter();
  sub_100168088(&unk_100574670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400790;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(v4 + 16);
  }

  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  static Date.timeIntervalSinceReferenceDate.getter();
  v9 = v8;

  v11 = sub_1002753D4(v10, v9, 2592000.0);
  v45 = sub_1002726BC(v11);

  v48 = v11;
  v12 = sub_100274D08(v11, v4);
  static os_log_type_t.default.getter();
  v13 = static OS_os_log.mediaLibrary.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007E0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *(v4 + 16);
  }

  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v15;
  v44 = v48 & 0xC000000000000001;
  if ((v48 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v48 + 16);
  }

  *(v14 + 96) = &type metadata for Int;
  *(v14 + 104) = &protocol witness table for Int;
  *(v14 + 72) = v16;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *(v12 + 16);
  }

  *(v14 + 136) = &type metadata for Int;
  *(v14 + 144) = &protocol witness table for Int;
  *(v14 + 112) = v17;
  os_log(_:dso:log:_:_:)();

  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v19 = v50;
    v18 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v54;
  }

  else
  {
    v23 = -1 << *(v12 + 32);
    v18 = (v12 + 56);
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v12 + 56);

    v21 = 0;
    v19 = v12;
  }

  v26 = (v20 + 64) >> 6;
  v27 = MPMediaEntityPropertyKeepLocal;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v28 = v21;
    v29 = v22;
    v30 = v21;
    if (!v22)
    {
      break;
    }

LABEL_24:
    v31 = (v29 - 1) & v29;
    v32 = *(*(v19 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v32)
    {
LABEL_30:
      sub_1000319D8();

      v34 = sub_100275324(v48);
      sub_1001A5550(v34);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v36 = [a1 deleteItems:isa];

      if (v36)
      {
        static os_log_type_t.default.getter();
        v37 = static OS_os_log.mediaLibrary.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_100400790;
        if (v44)
        {
          v39 = __CocoaSet.count.getter();
        }

        else
        {
          v39 = *(v48 + 16);
        }

        *(v38 + 56) = &type metadata for Int;
        *(v38 + 64) = &protocol witness table for Int;
        *(v38 + 32) = v39;
        os_log(_:dso:log:_:_:)();

        (a2)(v45, 0);
      }

      else
      {

        static os_log_type_t.error.getter();
        v40 = static OS_os_log.mediaLibrary.getter();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100400790;
        if (v44)
        {
          v42 = __CocoaSet.count.getter();
        }

        else
        {
          v42 = *(v48 + 16);
        }

        *(v41 + 56) = &type metadata for Int;
        *(v41 + 64) = &protocol witness table for Int;
        *(v41 + 32) = v42;
        os_log(_:dso:log:_:_:)();

        sub_100276208();
        swift_allocError();
        *v43 = 7;
        a2();
      }

      return;
    }

    while (1)
    {
      v33 = Int._bridgeToObjectiveC()().super.super.isa;
      [v32 setValue:v33 forProperty:v27];

      v21 = v30;
      v22 = v31;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_26:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v32 = v49;
        v30 = v21;
        v31 = v22;
        if (v49)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      goto LABEL_30;
    }

    v29 = v18[v30];
    ++v28;
    if (v29)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

void *sub_100274D08(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_10036DA88(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100291B78(v5, v6);
LABEL_10:

  return sub_10036DFF0(a1, v2);
}

uint64_t sub_100274DFC()
{

  sub_100004590(v0 + 32);

  sub_100009104(v0 + 88, &qword_10057A478);
  sub_100004590(v0 + 128);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100274E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 168);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v10[4] = sub_1002761FC;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100273A94;
  v10[3] = &unk_1004E8018;
  v9 = _Block_copy(v10);

  [v7 requestMediaLibraryWriteTransaction:v9];
  _Block_release(v9);
}

void sub_100274FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100168088(&qword_100574690);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002750B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100009F1C(0, &qword_10057A130);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100168088(&unk_100574680);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

int64_t sub_1002751A8(int64_t result, int64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v2)
  {
    if (v2 < 1)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v3 = a2;
    v4 = result;
    sub_100168088(&qword_100574820);
    v5 = swift_allocObject();
    result = j__malloc_size(v5);
    v6 = result - 32;
    if (result < 32)
    {
      v6 = result - 25;
    }

    if (v3 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v3;
    }

    v5[1].i64[0] = v2;
    v5[1].i64[1] = 2 * (v6 >> 3);
    if (v3 != v4)
    {
      v8 = v3 - v7;
      v9 = v5 + 2;
      v10 = ~v4 + v3;
      if (v10 >= v8)
      {
        v10 = v8;
      }

      v11 = v10 + 1;
      if (v11 < 5)
      {
        v13 = 0;
        v14 = 1;
      }

      else
      {
        v12 = v11 & 3;
        if ((v11 & 3) == 0)
        {
          v12 = 4;
        }

        v13 = v11 - v12;
        v14 = v13 + 1;
        v9 = (v9 + 8 * v13);
        v15 = vaddq_s64(vdupq_n_s64(v3), xmmword_1004076F0);
        v16 = v5 + 3;
        v17.i64[0] = -1;
        v17.i64[1] = -1;
        v18 = vdupq_n_s64(0xFFFFFFFFFFFFFFFDLL);
        v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
        v20 = v13;
        do
        {
          v16[-1] = vaddq_s64(v15, v17);
          *v16 = vaddq_s64(v15, v18);
          v15 = vaddq_s64(v15, v19);
          v16 += 2;
          v20 -= 4;
        }

        while (v20);
        v3 -= v13;
      }

      v21 = v4 - v3;
      v22 = v3 - 1;
      while (v13 != v8)
      {
        v13 = v14;
        v9->i64[0] = v22;
        if (v2 == v14)
        {
          return v5;
        }

        v9 = (v9 + 8);
        ++v14;
        --v22;
        if (__CFADD__(v21++, 1))
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_23:
    __break(1u);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100275324(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100245200(v2, 0);

    v1 = sub_1002FE184(&v5, (v3 + 32), v2, v1);
    sub_1000319D8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

Swift::Int sub_1002753D4(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31[1] = v10;
    v11 = &_swiftEmptySetSingleton;
    v33 = &_swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v12 = __CocoaSet.Iterator.next()();
    if (v12)
    {
      v13 = v12;
      sub_100009F1C(0, &qword_1005747D0);
      v14 = v13;
      v15 = (v7 + 8);
      do
      {
        v31[3] = v14;
        swift_dynamicCast();
        v16 = [v32 dateAdded];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v18 = v17;
        (*v15)(v9, v6);
        v19 = v32;
        if (a2 - v18 >= a3)
        {
        }

        else
        {
          v20 = v11[2];
          if (v11[3] <= v20)
          {
            sub_10038F208(v20 + 1);
          }

          v11 = v33;
          result = NSObject._rawHashValue(seed:)(v33[5]);
          v22 = (v11 + 7);
          v23 = -1 << *(v11 + 32);
          v24 = result & ~v23;
          v25 = v24 >> 6;
          if (((-1 << v24) & ~v11[(v24 >> 6) + 7]) != 0)
          {
            v26 = __clz(__rbit64((-1 << v24) & ~v11[(v24 >> 6) + 7])) | v24 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = 0;
            v28 = (63 - v23) >> 6;
            do
            {
              if (++v25 == v28 && (v27 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v29 = v25 == v28;
              if (v25 == v28)
              {
                v25 = 0;
              }

              v27 |= v29;
              v30 = *&v22[8 * v25];
            }

            while (v30 == -1);
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          }

          *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
          *(v11[6] + 8 * v26) = v19;
          ++v11[2];
        }

        v14 = __CocoaSet.Iterator.next()();
      }

      while (v14);
    }
  }

  else
  {
    v11 = sub_1002756F8(a1, a2, a3);
  }

  return v11;
}

uint64_t sub_1002756F8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v37 = type metadata accessor for Date();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(a1 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = v13;
    v33 = v11;
    v34 = v4;
    v31[1] = v31;
    __chkstk_darwin(v11);
    v35 = v31 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v14);
    v36 = 0;
    v15 = 0;
    v38 = a1;
    v4 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    a1 = v17 & *(a1 + 56);
    v18 = (v16 + 63) >> 6;
    v19 = v8 + 1;
    while (a1)
    {
      v20 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_12:
      v13 = v20 | (v15 << 6);
      v8 = *(*(v38 + 48) + 8 * v13);
      v23 = [v8 dateAdded];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v25 = v24;
      (*v19)(v10, v37);

      if (a2 - v25 < a3)
      {
        *&v35[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v27 = sub_100370020(v35, v32, v36, v38);

          return v27;
        }
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v18)
      {
        goto LABEL_16;
      }

      v22 = *(v4 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        a1 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v29 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v29;
  }

  v30 = swift_slowAlloc();
  v27 = sub_100275CBC(v30, v13, a1, a2, a3);

  return v27;
}

void sub_100275A68(unint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v32 = a2;
  v33 = a1;
  v35 = type metadata accessor for Date();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v34 = 0;
  v12 = 0;
  v36 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v31[1] = v11;
  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v20 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v24 = v21 | (v12 << 6);
    v25 = *(*(v36 + 48) + 8 * v24);
    v26 = [v25 dateAdded];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v27;
    (*v20)(v10, v35);

    if (a4 - v28 < a5)
    {
      *(v33 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_15:
        v30 = v36;

        sub_100370020(v33, v32, v34, v30);

        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_15;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100275CBC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    sub_100275A68(a1, a2, a3, a4, a5);
    v13 = v12;

    return v13;
  }

  return result;
}

id sub_100275D9C(uint64_t a1)
{
  sub_100168088(&qword_10057A458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = 0x74695F6B63617274;
  *(inited + 40) = 0xEB00000000736D65;
  sub_100168088(&qword_10057A460);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100400790;
  *(v3 + 32) = a1;
  *(inited + 48) = v3;

  sub_10016A218(inited);
  swift_setDeallocating();
  sub_100009104(inited + 32, &qword_10057A468);
  v4 = objc_opt_self();
  sub_100168088(&qword_10057A470);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = 0;
  v6 = [v4 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v16];

  v7 = v16;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v12 = String._bridgeToObjectiveC()();

  if (v10 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = Data._bridgeToObjectiveC()().super.isa;
    sub_1001F6D60(v8, v10);
  }

  v14 = [objc_allocWithZone(ML3DatabaseImport) initWithLibraryPath:v12 trackData:v13 playlistData:0];

  return v14;
}

void *sub_100276010()
{
  v0 = [objc_opt_self() postRestoreCandidateMediaItems];
  sub_100009F1C(0, &qword_1005747D0);
  sub_100276194();
  v1 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_1002726BC(v1);
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v3 = static OS_os_log.mediaLibrary.getter();
  sub_100168088(&unk_100574670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004007C0;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v1 + 16);
  }

  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v5;
  v6 = v2[2];
  *(v4 + 96) = &type metadata for Int;
  *(v4 + 104) = &protocol witness table for Int;
  *(v4 + 72) = v6;
  os_log(_:dso:log:_:_:)();

  return v2;
}

unint64_t sub_100276194()
{
  result = qword_10057E3D0;
  if (!qword_10057E3D0)
  {
    sub_100009F1C(255, &qword_1005747D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E3D0);
  }

  return result;
}

unint64_t sub_100276208()
{
  result = qword_10057A430;
  if (!qword_10057A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A430);
  }

  return result;
}

uint64_t sub_100276264(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for MediaLibraryPid() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100274168(a1, v8, v1 + v4, v1 + v7, v9);
}

uint64_t sub_10027636C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1002763C0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1002730AC(a1, v5, v6, v7, v8, (v1 + 6), v1 + v4, v9);
}

uint64_t sub_100276468(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1002732A4(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), (v4 + 32), v4 + v10, (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100276534(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057A478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002765A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057A478);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MediaLibraryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaLibraryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027676C()
{
  result = qword_10057A480;
  if (!qword_10057A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A480);
  }

  return result;
}

id sub_1002767D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v86 = a5;
  v90 = a3;
  v85 = a2;
  v99 = a1;
  v6 = type metadata accessor for ArtworkModel();
  v87 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v9 - 8);
  v84 = (&v81 - v10);
  v11 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v11 - 8);
  v83 = &v81 - v12;
  v13 = sub_100168088(&qword_10057A490);
  __chkstk_darwin(v13 - 8);
  v15 = &v81 - v14;
  v102 = _s19EpisodeImageRowItemVMa();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  if (a4 >> 62)
  {
    goto LABEL_49;
  }

  v23 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v95 = v8;
  if (v23)
  {
    v24 = 0;
    v101 = a4 & 0xC000000000000001;
    v25 = a4 & 0xFFFFFFFFFFFFFF8;
    v26 = (v97 + 48);
    v100 = _swiftEmptyArrayStorage;
    v96 = v22;
    v8 = v23;
    while (1)
    {
      if (v101)
      {
        v28 = a4;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a4 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v24 >= *(v25 + 16))
        {
          goto LABEL_48;
        }

        v28 = a4;

        a4 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v23 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_1002774F4(v15);
      if ((*v26)(v15, 1, v102) == 1)
      {
        sub_100009104(v15, &qword_10057A490);
      }

      else
      {
        sub_1002782D0(v15, v22, _s19EpisodeImageRowItemVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_100243C24(0, v100[2] + 1, 1, v100);
        }

        v30 = v100[2];
        v29 = v100[3];
        if (v30 >= v29 >> 1)
        {
          v100 = sub_100243C24(v29 > 1, v30 + 1, 1, v100);
        }

        v31 = v100;
        v100[2] = v30 + 1;
        v32 = v31 + ((v97[80] + 32) & ~v97[80]) + *(v97 + 9) * v30;
        v22 = v96;
        sub_1002782D0(v96, v32, _s19EpisodeImageRowItemVMa);
      }

      ++v24;
      v27 = a4 == v8;
      a4 = v28;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  v100 = _swiftEmptyArrayStorage;
LABEL_20:
  v89 = a4;
  v33 = v100[2];
  if (v33 >= 4)
  {
    v34 = 4;
  }

  else
  {
    v34 = v100[2];
  }

  v35 = v95;
  if (!v33)
  {

    return 0;
  }

  v36 = v97;
  v37 = v100 + ((v36[80] + 32) & ~v36[80]);
  v82 = (2 * v34) | 1;
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v93 = aBlock;
  aBlock = _swiftEmptyArrayStorage;
  v38 = &v19[*(v102 + 28)];
  v96 = objc_opt_self();
  v101 = *(v36 + 9);
  v92 = "defaultCoverImage";
  v91 = "CarPlayLoadArtwork";
  v88 = v37;
  v39 = v34;
  v94 = _swiftEmptyArrayStorage;
  v97 = v38;
  do
  {
    sub_100278454(v37, v19, _s19EpisodeImageRowItemVMa);
    [v96 maximumImageSize];
    v40 = v38[64];
    if (v40 == 255)
    {
      v49 = String._bridgeToObjectiveC()();
      v48 = [objc_opt_self() imageNamed:v49];

      if (!v48)
      {
LABEL_25:
        sub_10027870C(v19, _s19EpisodeImageRowItemVMa);
        goto LABEL_26;
      }
    }

    else
    {
      v41 = *(v38 + 7);
      sub_1002448C4(v41, v38[64]);
      static CGSize.* infix(_:_:)();
      v43 = v42;
      v45 = v44;
      v46 = Color.color.getter();
      v47 = objc_opt_self();
      v48 = [v47 imageWithSolidColor:v46 atSize:{v43, v45}];

      if (v48)
      {
        sub_1002448D8(v41, v40);
      }

      else
      {
        v50 = String._bridgeToObjectiveC()();
        v48 = [v47 imageNamed:v50];
        sub_1002448D8(v41, v40);

        if (!v48)
        {
          goto LABEL_25;
        }
      }
    }

    v51 = *&v19[*(v102 + 32) + 8];
    v52 = String._bridgeToObjectiveC()();
    v53 = String._bridgeToObjectiveC()();
    if (v51)
    {
      v51 = String._bridgeToObjectiveC()();
    }

    [objc_allocWithZone(CPListImageRowItemCondensedElement) initWithImage:v48 imageShape:1 title:v52 subtitle:v53 accessorySymbolName:v51];

    sub_10027870C(v19, _s19EpisodeImageRowItemVMa);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v35 = v95;
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v94 = aBlock;
LABEL_26:
    v37 += v101;
    --v39;
    v38 = v97;
  }

  while (v39);
  v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v55 = v85;
  v56 = String._bridgeToObjectiveC()();
  sub_100009F1C(0, &qword_10057A498);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v58 = [v54 initWithText:v56 condensedElements:isa allowsMultipleLines:1];

  aBlock = _swiftEmptyArrayStorage;
  v59 = v58;
  sub_1001A7650(0, v34, 0);
  v60._rawValue = aBlock;
  v61 = v88;
  v62 = v87;
  do
  {
    v63 = v98;
    sub_100278454(v61, v98, _s19EpisodeImageRowItemVMa);
    sub_100278454(v63 + *(v102 + 28), v35, &type metadata accessor for ArtworkModel);
    sub_10027870C(v63, _s19EpisodeImageRowItemVMa);
    aBlock = v60._rawValue;
    v64 = v35;
    v66 = *(v60._rawValue + 2);
    v65 = *(v60._rawValue + 3);
    if (v66 >= v65 >> 1)
    {
      sub_1001A7650(v65 > 1, v66 + 1, 1);
      v62 = v87;
      v60._rawValue = aBlock;
    }

    *(v60._rawValue + 2) = v66 + 1;
    sub_1002782D0(v64, v60._rawValue + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v66, &type metadata accessor for ArtworkModel);
    v61 += v101;
    --v34;
    v35 = v64;
  }

  while (v34);
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v60, v59);

  v67 = v84;
  *v84 = v89;
  v68 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v69 = *(*(v68 - 8) + 56);
  v69(v67, 0, 1, v68);
  v70 = v83;
  v69(v83, 1, 1, v68);
  v71 = type metadata accessor for CarPlayTemplateInfo(0);
  v72 = *(v71 + 20);
  sub_1001FBB44(v67, v70);
  *(v70 + v72) = 0;
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  sub_1001D2AD4(v70);
  v73 = v99;
  v107 = sub_100278338;
  v108 = v99;
  aBlock = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_100372F30;
  v106 = &unk_1004E82D8;
  v74 = _Block_copy(&aBlock);

  [v59 setHandler:v74];
  _Block_release(v74);
  v75 = swift_allocObject();
  v76 = v88;
  *(v75 + 16) = v100;
  *(v75 + 24) = v76;
  v77 = v82;
  *(v75 + 32) = 0;
  *(v75 + 40) = v77;
  v78 = v90;
  *(v75 + 48) = v55;
  *(v75 + 56) = v78;
  *(v75 + 64) = v86;
  *(v75 + 72) = v73;
  v107 = sub_100278340;
  v108 = v75;
  aBlock = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_1002B1CD0;
  v106 = &unk_1004E8328;
  v79 = _Block_copy(&aBlock);

  [v59 setListImageRowHandler:v79];
  _Block_release(v79);

  return v59;
}

uint64_t sub_1002774F4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v43 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v43);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for ArtworkModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s19EpisodeImageRowItemVMa();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = LegacyLockup.title.getter();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (v19 = dispatch thunk of LegacyLockup.playAction.getter()) == 0)
  {

LABEL_9:

    goto LABEL_10;
  }

  v42 = v19;
  LegacyLockup.artwork.getter();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1002782D0(v6, v10, &type metadata accessor for ArtworkModel);
    sub_100168088(&unk_100578420);
    BaseObjectGraph.inject<A>(_:)();
    sub_100168088(&unk_10057A4A0);
    BaseObjectGraph.inject<A>(_:)();
    LegacyLockup.adamId.getter();
    EpisodeStateController.stateMachine(for:)();
    v24 = v45;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    *v13 = v16;
    v13[1] = v17;
    LegacyEpisodeLockup.showTypeIsSerial.getter();
    v25 = LegacyLockup.isExplicit.getter();
    v26 = sub_100168088(&qword_1005812A0);
    v27 = v44;
    v28 = &v44[*(v26 + 64)];
    *v27 = LegacyEpisodeLockup.episodeNumber.getter();
    *(v27 + 8) = v29 & 1;
    LegacyEpisodeLockup.releaseDate.getter();
    *v28 = LegacyEpisodeLockup.duration.getter();
    v28[8] = v30 & 1;
    swift_storeEnumTagMultiPayload();
    v31 = sub_1001A3250(v49, v25 & 1, v27);
    v33 = v32;
    sub_10027870C(v27, _s27CarPlayEpisodeSubtitleStyleOMa);
    v13[2] = v31;
    v13[3] = v33;
    v34 = v47;
    v35 = v13 + *(v47 + 24);
    *(v35 + 3) = type metadata accessor for Action();
    *(v35 + 4) = sub_100036A24();
    *v35 = v42;
    v35[40] = 0;
    type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    sub_100278454(v10, v13 + *(v34 + 28), &type metadata accessor for ArtworkModel);

    v36 = sub_100278590();
    v38 = v37;

    sub_10027870C(v24, &type metadata accessor for EpisodePlayState);
    sub_100004590(v49);
    sub_10027870C(v10, &type metadata accessor for ArtworkModel);
    v39 = (v13 + *(v34 + 32));
    *v39 = v36;
    v39[1] = v38;
    v40 = v48;
    sub_1002782D0(v13, v48, _s19EpisodeImageRowItemVMa);
    v22 = v34;
    v21 = v40;
    v20 = 0;
    return (*(v46 + 56))(v21, v20, 1, v22);
  }

  sub_100009104(v6, &unk_100578C10);
LABEL_10:
  v20 = 1;
  v22 = v47;
  v21 = v48;
  return (*(v46 + 56))(v21, v20, 1, v22);
}

uint64_t sub_100277A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_100407970, v13);
}

void sub_100277BAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v59 = a6;
  v63 = a3;
  v64 = a4;
  v15 = type metadata accessor for Logger();
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v18 - 8);
  v62 = &v56[-v19];
  v20 = type metadata accessor for CarPlayTemplateInfo(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v58 = &v56[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v23 - 8);
  v25 = &v56[-v24];
  v26 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v26 - 8);
  v28 = &v56[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v31 = &v56[-v30];
  v32 = _s19EpisodeImageRowItemVMa();
  __chkstk_darwin(v32);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Attempted to select list image row item with invalid index!", v54, 2u);
    }

    v55 = (*(v60 + 8))(v17, v61);
    v63(v55);
  }

  else
  {
    v60 = a12;
    v57 = a11;
    v35 = &v56[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_100278454(v59 + *(v33 + 72) * a2, v35, _s19EpisodeImageRowItemVMa);
    v36 = objc_allocWithZone(CPListImageRowItem);
    v37 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_10057A498);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v39 = [v36 initWithText:v37 condensedElements:isa allowsMultipleLines:1];

    v40 = *(v32 + 24);
    v61 = v35;
    sub_100278454(&v35[v40], v25, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v41 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v42 = *(*(v41 - 8) + 56);
    v42(v25, 0, 1, v41);
    v42(v31, 1, 1, v41);
    v43 = *(v20 + 20);
    sub_1001FBB44(v25, v31);
    v31[v43] = v57;
    (*(v21 + 56))(v31, 0, 1, v20);
    sub_1001D2D08(v31, v28);
    v44 = 0;
    if ((*(v21 + 48))(v28, 1, v20) != 1)
    {
      sub_100278454(v28, v58, type metadata accessor for CarPlayTemplateInfo);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_10027870C(v28, type metadata accessor for CarPlayTemplateInfo);
    }

    [v39 setUserInfo:v44];
    swift_unknownObjectRelease();
    sub_100009104(v31, &unk_100578410);
    v45 = v62;
    static TaskPriority.userInitiated.getter();
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    type metadata accessor for MainActor();
    v47 = v60;

    v48 = v39;
    v49 = v64;

    v50 = static MainActor.shared.getter();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = &protocol witness table for MainActor;
    v51[4] = v47;
    v51[5] = v48;
    v51[6] = v63;
    v51[7] = v49;
    sub_10023EE80(0, 0, v45, &unk_100407958, v51);

    sub_10027870C(v61, _s19EpisodeImageRowItemVMa);
  }
}

uint64_t _s19EpisodeImageRowItemVMa()
{
  result = qword_10057A508;
  if (!qword_10057A508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002782D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100278380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100278454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002784BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100278590()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90);
  BaseObjectGraph.inject<A>(_:)();
  LegacyLockup.adamId.getter();
  EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {

    (*(v1 + 8))(v3, v0);
    return 0xD000000000000016;
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }
}

uint64_t sub_10027870C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100278794()
{
  type metadata accessor for CarPlayTemplateInfo.TemplateType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkModel();
    if (v1 <= 0x3F)
    {
      sub_100278840();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100278840()
{
  if (!qword_1005779C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005779C8);
    }
  }
}

BOOL sub_100278890(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      return v2 == 1;
    }

    v4 = *a2;
    v3 = a2[1];
    if (*a1 == 0)
    {
      v5 = v3 | v4;
      return v2 == 2 && v5 == 0;
    }

    if (*a1 ^ 1 | *(a1 + 8))
    {
      if (v2 != 2 || v4 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v4 != 1)
    {
      return 0;
    }

    if (!v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  return 0;
}

void sub_10027891C(char a1)
{
  sub_1000044A0(v1 + 2, v1[5]);
  dispatch thunk of MediaLibraryClientProtocol.mostRecentRestoreToken.getter();
  if (v3)
  {
    if ((a1 & 1) == 0)
    {
      v4 = v1[10];
      v11 = String._bridgeToObjectiveC()();

LABEL_11:
      v12 = String._bridgeToObjectiveC()();
      [v4 setValue:v11 forKey:v12];

      return;
    }

    v4 = v1[10];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 valueForKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = String._bridgeToObjectiveC()();

        goto LABEL_11;
      }
    }

    else
    {
      sub_100009104(v15, &unk_1005783D0);
    }

    v8 = 0x800000010046C260;
    sub_100030C30();
    swift_allocError();
    v10 = 0;
    v9 = 0xD000000000000050;
  }

  else
  {
    sub_100030C30();
    swift_allocError();
    v8 = 0;
    v9 = 2;
    v10 = 2;
  }

  *v7 = v9;
  *(v7 + 8) = v8;
  *(v7 + 16) = v10;
  swift_willThrow();
}

uint64_t sub_100278B4C()
{
  v1 = *(v0 + 80);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100009104(v8, &unk_1005783D0);
    return 0;
  }
}

void sub_100278C70(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10027B410(a5, a1 & 1);
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100400790;
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = a5;
  os_log(_:dso:log:_:_:)();

  if (a1)
  {
    sub_10027A0B4(1, a2, a3);
  }

  else
  {
    sub_100278EF4(a2, a3);
  }
}

uint64_t sub_100278DC4(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t))
{
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v6 = Error.localizedDescription.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100022C18();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  return a2(a1, 0, 1, 1);
}

void sub_100278EF4(void (*a1)(void), uint64_t a2)
{
  v5 = sub_10002F07C(1);
  if ((v7 & 0x100) == 0)
  {
    v8 = sub_100168088(&qword_10057A6D0);
    v9 = objc_allocWithZone(v8);
    v10 = &v9[*((swift_isaMask & *v9) + 0x180)];
    *v10 = 0;
    v10[8] = 2;
    v11 = &v9[*((swift_isaMask & *v9) + 0x188)];
    *v11 = sub_10027B784;
    v11[1] = v2;
    v112.receiver = v9;
    v112.super_class = v8;

    v103.super_class = objc_msgSendSuper2(&v112, "init");
    v12 = swift_allocObject();
    *(v12 + 16) = *(v2 + 64);
    v13 = sub_100168088(&qword_10057A6D8);
    v14 = objc_allocWithZone(v13);
    v15 = &v14[*((swift_isaMask & *v14) + 0x180)];
    *v15 = 0;
    v15[8] = 2;
    v16 = &v14[*((swift_isaMask & *v14) + 0x188)];
    *v16 = sub_10027B7E4;
    v16[1] = v12;
    v111.receiver = v14;
    v111.super_class = v13;
    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v111, "init");
    v18 = *(v2 + 56);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = a1;
    v21 = sub_100168088(&qword_10057A6E0);
    v22 = objc_allocWithZone(v21);
    v23 = &v22[*((swift_isaMask & *v22) + 0x180)];
    *v23 = 0;
    v23[8] = 2;
    v24 = &v22[*((swift_isaMask & *v22) + 0x188)];
    *v24 = sub_10027B7EC;
    v24[1] = v19;
    v110.receiver = v22;
    v110.super_class = v21;
    swift_unknownObjectRetain();
    v25 = objc_msgSendSuper2(&v110, "init");
    v26 = sub_100168088(&qword_10057A6E8);
    v27 = objc_allocWithZone(v26);
    v28 = &v27[*((swift_isaMask & *v27) + 0x180)];
    *v28 = 0;
    v28[8] = 2;
    v29 = &v27[*((swift_isaMask & *v27) + 0x188)];
    *v29 = sub_10027B7F4;
    v29[1] = v2;
    v109.receiver = v27;
    v109.super_class = v26;

    v103.receiver = objc_msgSendSuper2(&v109, "init");
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 2) = v30;
    *(v31 + 3) = v20;
    *(v31 + 4) = a2;
    v32 = sub_100168088(&unk_10057A690);
    v33 = objc_allocWithZone(v32);
    v34 = a2;
    v35 = v33;
    v36 = &v33[*((swift_isaMask & *v33) + 0x180)];
    *v36 = 0;
    v36[8] = 2;
    v37 = &v33[*((swift_isaMask & *v33) + 0x188)];
    *v37 = sub_10027B7FC;
    v37[1] = v31;
    v100 = v20;
    v101 = v34;
    sub_100013CB4(v20);
    v108.receiver = v35;
    v108.super_class = v32;
    v102 = objc_msgSendSuper2(&v108, "init");
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = (v103.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    v40 = *(v103.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    *v39 = sub_10027B81C;
    v39[1] = v38;

    sub_1000112B4(v40);

    ObjectType = swift_getObjectType();
    v42 = swift_conformsToProtocol2();
    if (v42)
    {
      v43 = v42;
      v44 = swift_allocObject();
      *(v44 + 24) = v43;
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v44;
      v47 = *(v43 + 72);
      v48 = v103.super_class;

      v47(sub_10003B6A0, v46, ObjectType, v43);

      v107.receiver = v17;
      v107.super_class = type metadata accessor for BaseOperation();
      v103.super_class = v107.super_class;
      objc_msgSendSuper2(&v107, "addDependency:", v48);

      v99 = v48;
      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = &v17[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v51 = *&v17[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      *v50 = sub_10027B824;
      v50[1] = v49;

      sub_1000112B4(v51);

      v52 = swift_getObjectType();
      v53 = swift_conformsToProtocol2();
      if (v53)
      {
        v54 = v53;
        v55 = swift_allocObject();
        *(v55 + 24) = v54;
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = v55;
        v58 = *(v54 + 72);
        v59 = v17;

        v58(sub_10003B6A0, v57, v52, v54);

        v106.receiver = v25;
        v106.super_class = v103.super_class;
        objc_msgSendSuper2(&v106, "addDependency:", v59);

        v98 = v59;
        v60 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v61 = &v25[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
        v62 = *&v25[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
        *v61 = sub_10027B81C;
        v61[1] = v60;

        sub_1000112B4(v62);

        v63 = swift_getObjectType();
        v64 = swift_conformsToProtocol2();
        if (v64)
        {
          v65 = v64;
          v66 = swift_allocObject();
          *(v66 + 24) = v65;
          swift_unknownObjectWeakInit();
          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v68 = swift_allocObject();
          *(v68 + 16) = v67;
          *(v68 + 24) = v66;
          v69 = *(v65 + 72);
          v70 = v25;

          v69(sub_10003B6A0, v68, v63, v65);

          v105 = v103;
          objc_msgSendSuper2(&v105, "addDependency:", v70);

          v97 = v70;
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v72 = (v103.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          v73 = *(v103.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          *v72 = sub_100182704;
          v72[1] = v71;

          sub_1000112B4(v73);

          v74 = swift_getObjectType();
          v75 = swift_conformsToProtocol2();
          if (v75)
          {
            v76 = v75;
            v77 = swift_allocObject();
            *(v77 + 24) = v76;
            swift_unknownObjectWeakInit();
            v78 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v79 = swift_allocObject();
            *(v79 + 16) = v78;
            *(v79 + 24) = v77;
            v80 = *(v76 + 72);
            v81 = v103.receiver;
            v82 = v102;

            v80(sub_10003B6A0, v79, v74, v76);

            v104.receiver = v82;
            v104.super_class = v103.super_class;
            objc_msgSendSuper2(&v104, "addDependency:", v81);

            v83 = swift_allocObject();
            *(v83 + 16) = v100;
            *(v83 + 24) = v101;
            v84 = &v82[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
            v85 = *&v82[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
            *v84 = sub_10027B82C;
            v84[1] = v83;
            sub_100013CB4(v100);
            sub_1000112B4(v85);

            v86 = sub_10002EA1C();
            sub_100168088(&unk_100574680);
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_1004007F0;
            *(v87 + 32) = v99;
            *(v87 + 40) = v98;
            *(v87 + 48) = v97;
            *(v87 + 56) = v81;
            *(v87 + 64) = v82;
            sub_100009F1C(0, &unk_10057A6A0);
            v88 = v99;
            v89 = v98;
            v90 = v97;
            v91 = v81;
            v92 = v82;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v86 addOperations:isa waitUntilFinished:0];

            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1)
  {
    v94 = v5;
    v95 = v6;
    v96 = v7;
    a1();
    v5 = v94;
    v6 = v95;
    LOBYTE(v7) = v96;
  }

  sub_1000316C4(v5, v6, v7, 1);
}

void sub_100279AE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10002DD30;
  *(v9 + 24) = v8;
  v10 = *(a4 + 16);

  v12 = v10(v11);

  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v12;
  v13[4] = sub_10027B890;
  v13[5] = v9;
  v16[4] = sub_10027B89C;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000F038;
  v16[3] = &unk_1004E8840;
  v14 = _Block_copy(v16);

  v15 = v12;

  [v15 performBlock:v14];
  _Block_release(v14);
}

uint64_t sub_100279C78(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(a1, 0);
  }

  sub_100217988();
  v5 = swift_allocError();
  *v6 = a1;
  swift_errorRetain();
  a3(v5, 1);
}

void sub_100279D18(uint64_t *a1, void (*a2)(char **), uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        v13 = String._bridgeToObjectiveC()();

        [a4 cancelDownloadsForEpisodeUuid:v13 userInitiated:1];
      }

      while (v9);
      continue;
    }
  }

  v14 = *(v5 + 16);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = sub_100244158(*(v5 + 16), 0);
  v16 = *(type metadata accessor for MediaLibraryPid() - 8);
  v17 = sub_1002FE3A0(&v19, &v15[(*(v16 + 80) + 32) & ~*(v16 + 80)], v14, v5);

  sub_1000319D8();
  if (v17 != v14)
  {
    __break(1u);
LABEL_14:
    v15 = _swiftEmptyArrayStorage;
  }

  v19 = v15;
  LOBYTE(v20) = 0;
  a2(&v19);
}

uint64_t sub_100279F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1000044A0((a4 + 16), *(a4 + 40));
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002DD30;
  *(v8 + 24) = v7;

  dispatch thunk of MediaLibraryClientProtocol.deleteEpisodes(identifiers:completion:)();
}

uint64_t sub_10027A004@<X0>(uint64_t (*a1)(void, void, void)@<X2>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result || (sub_10027891C(1), result = , !v2))
  {
    if (a1)
    {
      result = a1(0, 0, 0);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_10027A0B4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002F07C(a1);
  v77 = a3;
  if ((v10 & 0x100) != 0)
  {
    v60 = v8;
    v61 = v9;
    v62 = v10;
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v63 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1004007C0;
    v65 = sub_100022C18();
    v66 = a2;
    v67 = v65;
    v68 = 28526;
    if (a1)
    {
      v68 = 7562617;
    }

    v69 = 0xE200000000000000;
    if (a1)
    {
      v69 = 0xE300000000000000;
    }

    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = v65;
    *(v64 + 32) = v68;
    *(v64 + 40) = v69;
    v82[0] = v60;
    v82[1] = v61;
    v83 = v62;
    sub_100030C30();
    v70 = Error.localizedDescription.getter();
    *(v64 + 96) = &type metadata for String;
    *(v64 + 104) = v67;
    *(v64 + 72) = v70;
    *(v64 + 80) = v71;
    os_log(_:dso:log:_:_:)();

    if (v66)
    {
      sub_10027B3E0(v60, v61, v62);
      v66(v60, v61, v62 | 0x100u);
      sub_1000316C4(v60, v61, v62, 1);
    }

    sub_1000316C4(v60, v61, v62, 1);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1 & 1;
    *(v11 + 24) = v3;
    v12 = sub_100168088(&qword_10057A688);
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*((swift_isaMask & *v13) + 0x180)];
    *v14 = 0;
    v14[8] = 2;
    v15 = &v13[*((swift_isaMask & *v13) + 0x188)];
    *v15 = sub_10027B380;
    v15[1] = v11;
    v84.receiver = v13;
    v84.super_class = v12;

    v16 = objc_msgSendSuper2(&v84, "init");
    v17 = *(v4 + 56);
    v75 = *(v4 + 64);
    sub_100004428(v4 + 16, v82);
    v18 = type metadata accessor for RestoreDownloadedEpisodesOperation();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input];
    *v20 = 0;
    v20[8] = 2;
    *&v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue] = 0;
    sub_100004428(v82, &v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary]);
    *&v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_episodeStorage] = v75;
    *&v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_downloadsManager] = v17;
    v81.receiver = v19;
    v81.super_class = v18;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = objc_msgSendSuper2(&v81, "init");
    sub_100004590(v82);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1 & 1;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    v24 = sub_100168088(&unk_10057A690);
    v25 = objc_allocWithZone(v24);
    v26 = v25 + *((swift_isaMask & *v25) + 0x180);
    *v26 = 0;
    v26[8] = 2;
    v27 = (v25 + *((swift_isaMask & *v25) + 0x188));
    *v27 = sub_10027B38C;
    v27[1] = v23;
    v74 = a2;
    sub_100013CB4(a2);
    v80.receiver = v25;
    v80.super_class = v24;
    v76 = objc_msgSendSuper2(&v80, "init");
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = &v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v30 = *&v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    *v29 = sub_10027B3B0;
    v29[1] = v28;

    sub_1000112B4(v30);

    ObjectType = swift_getObjectType();
    v32 = swift_conformsToProtocol2();
    if (v32)
    {
      v33 = v32;
      v34 = swift_allocObject();
      *(v34 + 24) = v33;
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v34;
      v37 = *(v33 + 72);
      v38 = v16;

      v37(sub_1000319D0, v36, ObjectType, v33);

      v79.receiver = v21;
      v79.super_class = type metadata accessor for BaseOperation();
      super_class = v79.super_class;
      objc_msgSendSuper2(&v79, "addDependency:", v38);

      v73 = v38;
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = &v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v41 = *&v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      *v40 = sub_100182704;
      v40[1] = v39;

      sub_1000112B4(v41);

      v42 = swift_getObjectType();
      v43 = swift_conformsToProtocol2();
      if (v43)
      {
        v44 = v43;
        v45 = swift_allocObject();
        *(v45 + 24) = v44;
        swift_unknownObjectWeakInit();
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 24) = v45;
        v48 = *(v44 + 72);
        v49 = v21;
        v50 = v76;

        v48(sub_10003B6A0, v47, v42, v44);

        v78.receiver = v50;
        v78.super_class = super_class;
        objc_msgSendSuper2(&v78, "addDependency:", v49);

        v51 = swift_allocObject();
        *(v51 + 16) = v74;
        *(v51 + 24) = v77;
        v52 = &v50[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
        v53 = *&v50[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
        *v52 = sub_10027B3B8;
        v52[1] = v51;
        sub_100013CB4(v74);
        sub_1000112B4(v53);

        v54 = sub_10002EA1C();
        sub_100168088(&unk_100574680);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_100400800;
        *(v55 + 32) = v73;
        *(v55 + 40) = v49;
        *(v55 + 48) = v50;
        sub_100009F1C(0, &unk_10057A6A0);
        v56 = v73;
        v57 = v49;
        v58 = v50;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v54 addOperations:isa waitUntilFinished:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10027A92C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  if (a4)
  {

    sub_1000044A0((a5 + 16), *(a5 + 40));
    v10 = dispatch thunk of MediaLibraryClientProtocol.postRestoreCandidates()();
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v11 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100400790;
    v13 = *(v10 + 16);
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = v13;
    os_log(_:dso:log:_:_:)();

    v17 = v10;
    v18 = 0;
    a2(&v17);
  }

  else
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v15 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)();

    sub_1000044A0((a5 + 16), *(a5 + 40));
    v16 = swift_allocObject();
    v16[2] = sub_10002DD38;
    v16[3] = v9;
    v16[4] = a5;

    dispatch thunk of MediaLibraryClientProtocol.reconcileMostRecentlyDownloadedEpisodes(completion:)();
  }
}

uint64_t sub_10027AB94(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v5 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100022C18();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    v10 = a1;
    v11 = 1;
  }

  else
  {
    v12 = *(a1 + 16);
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v13 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100400790;
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v12;
    os_log(_:dso:log:_:_:)();

    sub_10027B5B4(v12);
    v10 = a1;
    v11 = 0;
  }

  return a3(v10, v11);
}

uint64_t sub_10027AD80@<X0>(char a1@<W2>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (sub_10027891C(a1 & 1), result = , !v3))
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v8 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100400790;
    v10 = sub_100022C18();
    v11 = 0x6563655274736F6DLL;
    if (a1)
    {
      v11 = 0x7473655274736F70;
    }

    v12 = 0xEA0000000000746ELL;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = v10;
    if (a1)
    {
      v12 = 0xEB0000000065726FLL;
    }

    *(v9 + 32) = v11;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)();

    if (a2)
    {
      result = a2(0, 0, 0);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_10027AF20(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v6 = Error.localizedDescription.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100022C18();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    return a2(a1, 0, 257);
  }

  return result;
}

uint64_t sub_10027B05C(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100256864(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_100256864(&v35, &v28);
    if (v29)
    {
      sub_10016B7CC(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_10016B7CC(v33, v30);
      v17 = v2[2];
      if (v2[3] <= v17)
      {

        sub_10019B010(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = (v2 + 8);
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *&v19[8 * v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *&v19[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      *(v2[6] + 16 * v23) = v18;
      sub_10016B7CC(v30, (v2[7] + 32 * v23));
      ++v2[2];
      v10 = v32;
    }

    else
    {

      sub_100009104(&v34, &qword_1005817D0);
      v10 = &v28;
    }

    result = sub_100009104(v10, &unk_1005783D0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10027B328()
{
  sub_100004590(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10027B3E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return swift_errorRetain();
  }

  if (!a3)
  {
  }

  return result;
}

void sub_10027B410(uint64_t a1, char a2)
{
  sub_100168088(&unk_10057A6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = a2;
  v7 = sub_10016A998(inited);
  swift_setDeallocating();
  sub_100168088(&unk_10057A6C0);
  swift_arrayDestroy();
  v8 = sub_10027B05C(v7);

  sub_100009F1C(0, &unk_100573E20);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_10025810C(v8);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 reportWithType:6 userInfo:isa location:@"rstr" reason:0];
}

void sub_10027B5B4(uint64_t a1)
{
  sub_100168088(&unk_10057A6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v3;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  v5 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 120) = sub_100009F1C(0, &qword_1005742A0);
  *(inited + 96) = v5;
  v6 = sub_10016A998(inited);
  swift_setDeallocating();
  sub_100168088(&unk_10057A6C0);
  swift_arrayDestroy();
  v7 = sub_10027B05C(v6);

  sub_100009F1C(0, &unk_100573E20);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_10025810C(v7);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 reportWithType:6 userInfo:isa location:@"rstr" reason:0];
}

uint64_t sub_10027B784@<X0>(uint64_t a1@<X8>)
{
  sub_1000044A0((v1 + 16), *(v1 + 40));
  result = dispatch thunk of MediaLibraryClientProtocol.postRestoreCandidates()();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_10027B854(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    a1 = 0;
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

unint64_t sub_10027B8E0()
{
  result = qword_10057A6F8;
  if (!qword_10057A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A6F8);
  }

  return result;
}

void *_s8Podcasts23CoreDataChapterIngesterC12unsafeIngest04feedD03ctx0A10Foundation9MTChapterCSgSo06MTFeedD0_p_So22NSManagedObjectContextCtF_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MTChapter.FieldNames();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  (*(v8 + 104))(v10, enum case for MTChapter.FieldNames.entity(_:), v7);
  MTChapter.FieldNames.rawValue.getter();
  (*(v8 + 8))(v10, v7);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 insertNewObjectForEntityForName:v12 inManagedObjectContext:a2];

  type metadata accessor for MTChapter();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = [a1 id];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    [v15 setId:v16];

    v17 = [a1 title];
    [v15 setTitle:v17];

    v18 = [a1 timeframesData];
    if (v18)
    {
      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001F6D74(v20, v22);
    }

    else
    {
      v23.super.isa = 0;
    }

    [v15 setTimeframesData:v23.super.isa];

    [v15 setChapterTypeIntValue:{objc_msgSend(a1, "chapterTypeIntValue")}];
    v34 = [a1 artworkWidth];
    [v15 setArtworkWidth:v34];

    v35 = [a1 artworkHeight];
    [v15 setArtworkHeight:v35];

    v36 = [a1 artworkTemplateURL];
    [v15 setArtworkTemplateURL:v36];

    v37 = [a1 artworkBackgroundColor];
    [v15 setArtworkBackgroundColor:v37];
  }

  else
  {
    v40 = v4;
    v24 = v41;

    static Logger.chapters.getter();
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      v29 = [a1 id];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_1000153E0(v30, v32, &v42);

      *(v27 + 14) = v33;
      sub_100004590(v28);
    }

    (*(v24 + 8))(v6, v40);
    return 0;
  }

  return v15;
}

uint64_t static Result<>.success.getter()
{
  type metadata accessor for Result();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.zip<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a2 + 24) - 8) + 32))(a4, v10, *(a2 + 24));
    swift_getTupleTypeMetadata2();
  }

  else
  {
    v13 = *(a2 + 16);
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v13 - 8) + 32))(a4, v10, v13);
    (*(*(a3 - 8) + 16))(a4 + v14, a1, a3);
  }

  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10027C14C()
{
  v0 = sub_100168088(&qword_100574040);
  sub_100182568(v0, qword_10057A798);
  sub_1001825CC(v0, qword_10057A798);
  return URL.init(string:)();
}

id _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  static URL.iOSAutomaticallyDownloadPreferences.getter();
  sub_1001BB0E0(v9, v6);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_1001FDD40(v9);
    return sub_1001FDD40(v6);
  }

  (*(v1 + 32))(v3, v6, v0);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    sub_10016A444(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 openSensitiveURL:v14 withOptions:isa];

    (*(v1 + 8))(v3, v0);
    v6 = v9;
    return sub_1001FDD40(v6);
  }

  __break(1u);
  return result;
}

void _sSo13UIApplicationC8PodcastsE18openGlobalSettingsyyF_0()
{
  v0 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    static URL.iOSGlobalPreferences.getter();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    sub_10016A444(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v8 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10027C5A4()
{
  v0 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v0);
  v2 = &v12 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    if (qword_1005727D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1001825CC(v0, qword_10057A798);
    sub_1001BB0E0(v5, v2);
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    v9 = 0;
    if ((*(v7 + 48))(v2, 1, v6) != 1)
    {
      URL._bridgeToObjectiveC()(v8);
      v9 = v10;
      (*(v7 + 8))(v2, v6);
    }

    sub_10016A444(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v9 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void *sub_10027C77C(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

Swift::Void __swiftcall MTLibrary.cleanUpNeutralInterests()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.database.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, "Deleting all neutral interests", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 importContext];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  aBlock[4] = sub_10027CB7C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E8A50;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 performBlock:v11];
  _Block_release(v11);
}

Swift::Void __swiftcall MTLibrary.deleteAllInterestsBlockingCaller()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.database.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, "Immediately deleting all interests", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 importContext];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10027D07C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E8AC8;
  v12 = _Block_copy(aBlock);
  v13 = v8;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_10027CEBC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

uint64_t sub_10027CF70(id *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 lastUpdatedDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static Date.< infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_10027D0AC(void *a1)
{
  v71 = type metadata accessor for Date();
  v65 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v63 - v4;
  v75 = type metadata accessor for Logger();
  v5 = *(v75 - 8);
  __chkstk_darwin(v75);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v63 - v9;
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  kMTInterestEntityName.getter();
  v19 = String._bridgeToObjectiveC()();

  type metadata accessor for MTInterest();
  v20 = static MTInterest.predicateForNeutralInterests()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v74 = a1;
  v22 = [a1 objectsInEntity:v19 predicate:v20 sortDescriptors:isa];

  if (v22 && (sub_1001D3D4C(), v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v22, v24 = sub_10037FEFC(v23), , v24))
  {
    static Logger.database.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = Logger.logObject.getter();
    if (!os_log_type_enabled(v26, v25))
    {
      goto LABEL_7;
    }

    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if (v24 >> 62)
    {
      goto LABEL_40;
    }

    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      *(v27 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v26, v25, "Starting to delete %ld neutral interests.", v27, 0xCu);

LABEL_7:

      v30 = *(v5 + 8);
      v5 += 8;
      v29 = v30;
      v73 = v5;
      v30(v18, v75);
      type metadata accessor for SyncKeysRepository();
      v31 = static SyncKeysRepository.shared.getter();
      SyncKeysRepository.interestLastSyncTimestamp.getter();
      v33 = v32;

      v34 = v66;
      v35 = (v33 & 1) != 0 ? static Date.distantFuture.getter() : Date.init(timeIntervalSinceReferenceDate:)();
      __chkstk_darwin(v35);
      *(&v63 - 2) = v34;

      v40 = sub_10027C77C(sub_10027E040, &v63 - 4, v24);

      static Logger.database.getter();
      v25 = static os_log_type_t.default.getter();

      v26 = Logger.logObject.getter();
      v41 = os_log_type_enabled(v26, v25);
      v18 = (v40 >> 62);
      v69 = v40;
      if (v41)
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        if (v18)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
          v40 = v69;
        }

        else
        {
          v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v24 + 4) = v42;

        _os_log_impl(&_mh_execute_header, v26, v25, "Proceeding to delete %ld interests.", v24, 0xCu);
      }

      else
      {
      }

      v27 = v29(v15, v75);
      if (v18)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        v15 = v27;
        v63 = v18;
        if (!v27)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v15 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v63 = 0;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      if (v15 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_40:
      v62 = v27;
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v27 = v62;
    }

    v72 = v40 & 0xC000000000000001;
    v68 = (v65 + 8);

    v43 = 0;
    *&v44 = 134218496;
    v67 = v44;
    do
    {
      if (v72)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v46 = *(v40 + 8 * v43 + 32);
      }

      v47 = v46;
      static Logger.database.getter();
      v48 = static os_log_type_t.default.getter();
      v49 = v47;
      v45 = Logger.logObject.getter();
      if (os_log_type_enabled(v45, v48))
      {
        v50 = swift_slowAlloc();
        *v50 = v67;
        *(v50 + 4) = [v49 adamID];

        *(v50 + 12) = 2048;
        [v49 interestValue];
        *(v50 + 14) = v51;
        *(v50 + 22) = 2048;
        v52 = v29;
        v53 = [v49 lastUpdatedDate];
        v54 = v70;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = v52;
        v40 = v69;
        Date.timeIntervalSinceReferenceDate.getter();
        v56 = v55;
        (*v68)(v54, v71);
        *(v50 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v45, v48, "Deleting interest as part of interest cleanup. AdamID: %llu, interestValue: %f, lastUpdatedDate: %f", v50, 0x20u);
      }

      else
      {

        v45 = v49;
      }

      ++v43;

      v29(v12, v75);
      [v74 deleteObject:v49];
    }

    while (v15 != v43);

    v34 = v66;
LABEL_30:
    v57 = v64;
    static Logger.database.getter();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      if (v63)
      {
        v61 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v61 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v60 + 4) = v61;

      _os_log_impl(&_mh_execute_header, v58, v59, "Finished deleting %ld interests.", v60, 0xCu);
    }

    else
    {
    }

    v29(v57, v75);
    [v74 saveInCurrentBlock];
    (*(v65 + 8))(v34, v71);
  }

  else
  {
    static Logger.database.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to fetch interests when attempting to cleanup. Cannot delete any interests.", v38, 2u);
    }

    return (*(v5 + 8))(v7, v75);
  }
}

id sub_10027D968(void *a1)
{
  v58 = type metadata accessor for Date();
  *&v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Logger();
  v3 = *(v63 - 8);
  __chkstk_darwin(v63);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  kMTInterestEntityName.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() truePredicate];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v62 = a1;
  v18 = [a1 objectsInEntity:v15 predicate:v16 sortDescriptors:isa];

  if (v18 && (sub_1001D3D4C(), v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v18, v20 = sub_10037FEFC(v19), , v20))
  {
    static Logger.database.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = Logger.logObject.getter();
    v23 = os_log_type_enabled(v22, v21);
    v24 = v20 >> 62;
    v56 = v20;
    if (!v23)
    {

      goto LABEL_11;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    if (v24)
    {
      goto LABEL_31;
    }

    v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      *(v25 + 4) = v26;
      v27 = v25;

      _os_log_impl(&_mh_execute_header, v22, v21, "Starting to delete all %ld interests.", v27, 0xCu);

LABEL_11:
      v54 = v8;
      v60 = *(v3 + 8);
      v61 = v3 + 8;
      v25 = v60(v14, v63);
      v53 = v24;
      if (v24)
      {
        v3 = v56;
        v25 = _CocoaArrayWrapper.endIndex.getter();
        v33 = v25;
        if (!v25)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v3 = v56;
        v33 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_23;
        }
      }

      if (v33 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_31:
      v52 = v25;
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v52;
    }

    v34 = 0;
    v59 = v3 & 0xC000000000000001;
    v35 = (v55 + 8);
    *&v32 = 134218496;
    v55 = v32;
    do
    {
      if (v59)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v3 + 8 * v34 + 32);
      }

      v38 = v37;
      static Logger.database.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = v38;
      v36 = Logger.logObject.getter();
      if (os_log_type_enabled(v36, v39))
      {
        v41 = swift_slowAlloc();
        *v41 = v55;
        *(v41 + 4) = [v40 adamID];

        *(v41 + 12) = 2048;
        [v40 interestValue];
        *(v41 + 14) = v42;
        *(v41 + 22) = 2048;
        v43 = [v40 lastUpdatedDate];
        v44 = v57;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v3 = v56;
        Date.timeIntervalSinceReferenceDate.getter();
        v46 = v45;
        (*v35)(v44, v58);
        *(v41 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v36, v39, "Deleting interest as part of interest cleanup. AdamID: %llu, interestValue: %f, lastUpdatedDate: %f", v41, 0x20u);
      }

      else
      {

        v36 = v40;
      }

      ++v34;

      v60(v11, v63);
      [v62 deleteObject:v40];
    }

    while (v33 != v34);
LABEL_23:
    v47 = v54;
    static Logger.database.getter();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      if (v53)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v51 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 4) = v51;

      _os_log_impl(&_mh_execute_header, v48, v49, "Finished deleting %ld interests.", v50, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v60(v47, v63);
    return [v62 saveInCurrentBlock];
  }

  else
  {
    static Logger.database.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to fetch interests when attempting to cleanup. Cannot delete any interests.", v30, 2u);
    }

    return (*(v3 + 8))(v5, v63);
  }
}

uint64_t PlayNextChapterIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for PlaybackController();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10027E120;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_10027E120()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10027E2D4;
  }

  else
  {
    v2 = sub_10027E234;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E234()
{
  v1 = v0[4];

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10027E2D4()
{
  v1 = *(v0 + 32);

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PlayNextChapterIntentImplementation.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001B9784;

  return PlaybackController.seekToNextChapter()();
}

unint64_t sub_10027E408()
{
  result = qword_10057A7B0;
  if (!qword_10057A7B0)
  {
    type metadata accessor for PlayNextChapterIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A7B0);
  }

  return result;
}

uint64_t sub_10027E460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for PlaybackController();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_10027E518;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_10027E518()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10027E6D4;
  }

  else
  {
    v2 = sub_10027E62C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E62C()
{
  v1 = v0[5];
  v2 = v0[3];

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  *v2 = v0[2];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10027E6D4()
{
  v1 = *(v0 + 40);

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10027E770(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001B9C88;

  return PlaybackController.seekToNextChapter()();
}

void sub_10027E818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  [v3 updatePlaylistWithUuid:v5 inContext:a3];
}

uint64_t sub_10027E874(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = [objc_opt_self() mainBundle];
  v15._object = 0x800000010046C5D0;
  v4._object = 0x800000010046C5B0;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000013;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  *(v1 + 72) = v6;
  *(v1 + 88) = xmmword_100403760;
  v7 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel;
  v8 = enum case for MetricsLabel.removeFromUpNext(_:);
  v9 = type metadata accessor for MetricsLabel();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType;
  v11 = enum case for ContextActionType.removeFromUpNext(_:);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v1 + v10, v11, v12);
  (*(v13 + 56))(v1 + v10, 0, 1, v12);
  sub_100184658(a1, v1 + 32);
  return v1;
}

uint64_t sub_10027EA24()
{
  v1 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  swift_beginAccess();
  v11 = *(v0 + 16);
  if (v11)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    (*(v5 + 32))(v10, v7, v4);
    InteractionContext.page.getter();
    See = InteractionContext.Page.isUpNextSeeAll.getter();
    sub_10027F15C(v3, &type metadata accessor for InteractionContext.Page);
    if (See & 1) != 0 || (InteractionContext.view.getter(), (static InteractionContext.View.== infix(_:_:)()))
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      InteractionContext.view.getter();
      LOBYTE(v11) = static InteractionContext.View.== infix(_:_:)();
    }

    (*(v5 + 8))(v10, v4);
  }

  return v11 & 1;
}

void sub_10027EC0C()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[3];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v4 + v5, v3);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10027F15C(v3, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {

      sub_1000044A0(v0 + 4, v0[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();
    }
  }
}

uint64_t sub_10027ED38()
{

  sub_100004590(v0 + 32);

  v1 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveFromUpNextEpisodeContextAction()
{
  result = qword_10057A7E0;
  if (!qword_10057A7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027EE60()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10027EF54()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_10027EF84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10027F014@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() systemGrayColor];
  v5 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = v3;
  *(a1 + 8) = xmmword_100403760;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t sub_10027F090(uint64_t a1)
{
  result = sub_10027F118(&qword_10057A898);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10027F0D4(uint64_t a1)
{
  result = sub_10027F118(&qword_10057A8A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10027F118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromUpNextEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027F15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027F1BC()
{
  v1 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText))
    {
      v9 = v6;
      swift_beginAccess();
      if (*(v0 + 24))
      {

        dispatch thunk of ContextActionsConfiguration.context.getter();
        InteractionContext.page.getter();

        (*(v5 + 8))(v8, v9);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          return v3[9];
        }

        sub_10027F15C(v3, &type metadata accessor for InteractionContext.Page);
      }
    }
  }

  return 0;
}

void sub_10027F36C()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_10035402C();

  v15 = sub_10027F7C8(v14);

  if (v15)
  {
    v16 = [v15 shortURL];
    if (v16)
    {
      v17 = v16;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    }

    else
    {
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    }

    sub_1001B8A3C(v7, v10);
    type metadata accessor for URL();
    v20 = *(v18 - 8);
    if ((*(v20 + 48))(v10, 1, v18) != 1)
    {
      (*(v20 + 32))(v13, v10, v18);
      (*(v20 + 56))(v13, 0, 1, v18);
      goto LABEL_14;
    }

    v21 = [v15 shareURL];
    if (v21)
    {
      v22 = v21;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v20 + 56))(v4, v23, 1, v18);
    sub_1001B8A3C(v4, v13);
  }

  else
  {
    v18 = type metadata accessor for URL();
    v19 = *(*(v18 - 8) + 56);
    v19(v10, 1, 1, v18);
    v19(v13, 1, 1, v18);
  }

  type metadata accessor for URL();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) != 1)
  {
    sub_1001FDD40(v10);
  }

LABEL_14:
  v24 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL;
  swift_beginAccess();
  sub_1001FDDA8(v13, v1 + v24);
  swift_endAccess();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;

      v27 = *(v26 + qword_1005766D0);
    }

    else
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      v27 = swift_dynamicCastClass();
      if (v27)
      {

        v27 = NowPlayingTranscriptSelectionContextActionConfiguration.selectedText.getter();
      }
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = *(v1 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText);
  *(v1 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText) = v27;
}

uint64_t sub_10027F7C8(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeOffer();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  if (!a1)
  {
    return 0;
  }

  v49 = v1;
  v19 = v3;
  v20 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  v21 = a1 + v20;
  v22 = v18;
  sub_1001EAFE4(v21, v15);
  sub_1002288DC(v15, v18);
  sub_1001EAFE4(v18, v12);
  LODWORD(v23) = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      v4 = v49;
      if (v23 != 3)
      {
        sub_10027F15C(v18, type metadata accessor for EpisodeContextActionDataType);
        v35 = v12;
LABEL_40:
        sub_10027F15C(v35, type metadata accessor for EpisodeContextActionDataType);
        return 0;
      }

      v9 = *v12;
      v24 = sub_10039779C(*v12);

      if (v24 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (v23)
        {
LABEL_7:
          if ((v24 & 0xC000000000000001) == 0)
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_10;
            }

            goto LABEL_24;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_7;
        }
      }

LABEL_46:
      v34 = 0;
      goto LABEL_47;
    }

    v24 = *v12;
    v4 = v49;
    if (*v12 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_46;
      }
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_46;
      }
    }

    if ((v24 & 0xC000000000000001) == 0)
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

LABEL_24:
      v33 = *(v24 + 32);
LABEL_25:
      v34 = v33;
LABEL_47:

      if (*(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime + 8))
      {
        v47 = 0.0;
      }

      else
      {
        v47 = *(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime);
      }

      if (*(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime + 8))
      {
        v48 = 0.0;
      }

      else
      {
        v48 = *(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime);
      }

      v31 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v34 selectedReferenceTime:v47 selectedPlayerTime:v48 currentPlayerTime:0.0];

      goto LABEL_54;
    }

LABEL_42:
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

LABEL_10:
  if (!v23)
  {
    v25 = *v12;

    if (!*(v25 + 16))
    {
      sub_10027F15C(v22, type metadata accessor for EpisodeContextActionDataType);

      return 0;
    }

    v26 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 mediaItemForEpisodeWithUUID:v27];

    if (v28)
    {
      if (*(v49 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime + 8))
      {
        v29 = 0.0;
      }

      else
      {
        v29 = *(v49 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime);
      }

      if (*(v49 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime + 8))
      {
        v30 = 0.0;
      }

      else
      {
        v30 = *(v49 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime);
      }

      v31 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v28 selectedReferenceTime:v29 selectedPlayerTime:v30 currentPlayerTime:0.0];

LABEL_54:
      sub_10027F15C(v22, type metadata accessor for EpisodeContextActionDataType);
      return v31;
    }

    goto LABEL_39;
  }

  v36 = *v12;
  if (!*(*v12 + 16))
  {

LABEL_39:
    v35 = v22;
    goto LABEL_40;
  }

  v37 = v49;
  v38 = v4;
  v39 = *(v4 + 16);
  v40 = v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v41 = v19;
  v39(v6, v40, v19);

  (*(v38 + 32))(v9, v6, v19);
  v42 = sub_100294534();
  if (!v42)
  {
    (*(v38 + 8))(v9, v19);
    goto LABEL_39;
  }

  v43 = v42;
  if (*(v37 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime + 8))
  {
    v44 = 0.0;
  }

  else
  {
    v44 = *(v37 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime);
  }

  if (*(v37 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime + 8))
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *(v37 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime);
  }

  v46 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v42 selectedReferenceTime:v44 selectedPlayerTime:v45 currentPlayerTime:0.0];

  (*(v38 + 8))(v9, v41);
  sub_10027F15C(v22, type metadata accessor for EpisodeContextActionDataType);
  return v46;
}

void sub_10027FDC0()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-v2];
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 16);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText);
    if (v8)
    {
      v9 = v8;

      v10 = [v9 string];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
      swift_beginAccess();
      sub_1001EAFE4(v7 + v14, v6);
      v15 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL;
      swift_beginAccess();
      sub_1001BB0E0(v0 + v15, v3);
      sub_1002AB204(v11, v13, v6, v3);
      v17 = v16;

      sub_1001FDD40(v3);
      sub_10027F15C(v6, type metadata accessor for EpisodeContextActionDataType);
      if (v17)
      {
        v18 = [objc_opt_self() generalPasteboard];
        v19 = String._bridgeToObjectiveC()();

        [v18 setString:v19];

        v9 = v19;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10027FFF4()
{

  v1 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001FDD40(v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyTranscriptSelectionContextAction()
{
  result = qword_10057A8E0;
  if (!qword_10057A8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100280124()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_100012E4C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100280228()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100280258()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_100280288@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100280300@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.copyTranscriptSelection(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002803E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_100280440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002804A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100280504(uint64_t a1)
{
  result = sub_1002805D0(&qword_10057AA90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100280548(uint64_t a1)
{
  result = sub_1002805D0(&qword_10057AA98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028058C(uint64_t a1)
{
  result = sub_1002805D0(&unk_10057AAA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002805D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CopyTranscriptSelectionContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MTWelcomeViewController.deferUntilAcknowledged(_:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000F038;
  v4[3] = &unk_1004E8C98;
  v3 = _Block_copy(v4);

  [v2 addAcknowledgementCompletionBlock:v3];
  _Block_release(v3);
}

void sub_1002806C8(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000F038;
  v4[3] = &unk_1004E8CC0;
  v3 = _Block_copy(v4);

  [v2 addAcknowledgementCompletionBlock:v3];
  _Block_release(v3);
}

id sub_10028079C@<X0>(void *a1@<X8>)
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PodcastsStateCoordinator.shared;
  *a1 = static PodcastsStateCoordinator.shared;

  return v2;
}

uint64_t sub_100280844@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranscriptReportConcernURLBuilder();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10028087C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  *(a1 + 24) = type metadata accessor for TranscriptReportConcernURLBuilder();
  *(a1 + 32) = &off_1004E6A50;
  BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_100280900@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  result = sub_100020360(v2);
  *a1 = result;
  return result;
}

id sub_100280980@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  v3 = objc_allocWithZone(type metadata accessor for ClassKitManager());
  result = sub_100334A0C(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1002809D4@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  type metadata accessor for EpisodeController();
  swift_allocObject();
  v3 = sub_100021D60(v2);

  *a1 = v3;
  return result;
}

id sub_100280A5C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100280AD8@<X0>(unint64_t *a1@<X0>, SEL *a2@<X2>, void *a3@<X8>)
{
  sub_100009F1C(0, a1);
  result = [swift_getObjCClassFromMetadata() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_100280B38@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100009F1C(0, a1);
  BaseObjectGraph.inject<A>(_:)();

  *a2 = v5;
  return result;
}

id sub_100280BB0@<X0>(void *a1@<X8>)
{
  sub_100009F1C(0, &qword_10057AFD8);
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  *a1 = result;
  return result;
}

uint64_t sub_100280C30@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for PageIntentInstrumentation();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IntentDispatchTimeout();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeIntentDispatcher();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  v12 = type metadata accessor for LazyJSStack();
  BaseObjectGraph.inject<A>(_:)();

  v13 = v29[0];
  sub_100281018();
  v30 = v12;
  v31 = sub_100283980(&qword_10057AE98, &type metadata accessor for LazyJSStack);
  v29[0] = v13;
  v20 = v13;
  v14 = *(v6 + 16);
  v14(v11, v8, v5);
  sub_100010430(v29, v28, &qword_10057AEA0);

  NativeIntentDispatcher.next.setter();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_100009104(v29, &qword_10057AEA0);
  static BaseObjectGraph.current.getter();
  v30 = v5;
  v31 = &protocol witness table for NativeIntentDispatcher;
  v16 = sub_10000E680(v29);
  v14(v16, v11, v5);
  (*(v22 + 104))(v21, enum case for IntentDispatchTimeout.none(_:), v23);
  (*(v25 + 104))(v24, enum case for PageIntentInstrumentation.notInstrumented(_:), v26);
  v17 = type metadata accessor for PodcastsIntentDispatcher();
  v18 = v27;
  v27[3] = v17;
  v18[4] = sub_100283980(&qword_10057AEA8, &type metadata accessor for PodcastsIntentDispatcher);
  sub_10000E680(v18);
  PodcastsIntentDispatcher.init(asPartOf:intentDispatcher:timeout:instrumentation:)();

  return (v15)(v11, v5);
}

uint64_t sub_100281018()
{
  v0 = type metadata accessor for ReferenceLinkMetadataIntentImplementation();
  v1 = *(v0 - 8);
  v139 = v0;
  v140 = v1;
  __chkstk_darwin(v0);
  v138 = &UpNextEpisodesIntentImplementation - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EpisodeTimedReferenceLinksIntentImplementation();
  v4 = *(v3 - 8);
  v136 = v3;
  v137 = v4;
  __chkstk_darwin(v3);
  v135 = &UpNextEpisodesIntentImplementation - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlayEpisodeIntentImplementation();
  v7 = *(v6 - 8);
  v133 = v6;
  v134 = v7;
  __chkstk_darwin(v6);
  v132 = &UpNextEpisodesIntentImplementation - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnqueueEpisodeForPlaybackIntentImplementation();
  v10 = *(v9 - 8);
  v130 = v9;
  v131 = v10;
  __chkstk_darwin(v9);
  v129 = &UpNextEpisodesIntentImplementation - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugLibraryStorageTipSuggestedLimitIntentImplementation();
  v13 = *(v12 - 8);
  v127 = v12;
  v128 = v13;
  __chkstk_darwin(v12);
  v126 = &UpNextEpisodesIntentImplementation - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  PodcastForEpisodeIntentImplementation = type metadata accessor for FetchPodcastForEpisodeIntentImplementation();
  v125 = *(PodcastForEpisodeIntentImplementation - 8);
  __chkstk_darwin(PodcastForEpisodeIntentImplementation);
  v123 = &UpNextEpisodesIntentImplementation - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100168088(&qword_10057AEB0);
  v122 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &UpNextEpisodesIntentImplementation - v16;
  v118 = sub_100168088(&qword_10057AEB8);
  v119 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &UpNextEpisodesIntentImplementation - v17;
  v114 = sub_100168088(&qword_10057AEC0);
  v115 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &UpNextEpisodesIntentImplementation - v18;
  ShowLatestCatalogEpisodesIntentImplementation = type metadata accessor for FetchShowLatestCatalogEpisodesIntentImplementation();
  v112 = *(ShowLatestCatalogEpisodesIntentImplementation - 8);
  __chkstk_darwin(ShowLatestCatalogEpisodesIntentImplementation);
  v110 = &UpNextEpisodesIntentImplementation - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowEpisodesIntentImplementation = type metadata accessor for FindShowEpisodesIntentImplementation();
  v109 = *(ShowEpisodesIntentImplementation - 8);
  __chkstk_darwin(ShowEpisodesIntentImplementation);
  v107 = &UpNextEpisodesIntentImplementation - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for FollowFeedIntentImplementation();
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &UpNextEpisodesIntentImplementation - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for UnfollowShowIntentImplementation();
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &UpNextEpisodesIntentImplementation - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RemoveEpisodesDownloadIntentImplementation();
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &UpNextEpisodesIntentImplementation - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DownloadEpisodesIntentImplementation();
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &UpNextEpisodesIntentImplementation - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for UnbookmarkEpisodeIntentImplementation();
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &UpNextEpisodesIntentImplementation - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for BookmarkEpisodeIntentImplementation();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &UpNextEpisodesIntentImplementation - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOfferContentIDsIntentsIntentImplementation = type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation();
  v88 = *(EpisodeOfferContentIDsIntentsIntentImplementation - 8);
  __chkstk_darwin(EpisodeOfferContentIDsIntentsIntentImplementation);
  v86 = &UpNextEpisodesIntentImplementation - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalEpisodeContentIDsIntentImplementation = type metadata accessor for FindOrCreateLocalEpisodeContentIDsIntentImplementation();
  v85 = *(LocalEpisodeContentIDsIntentImplementation - 8);
  __chkstk_darwin(LocalEpisodeContentIDsIntentImplementation);
  v29 = &UpNextEpisodesIntentImplementation - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  UpNextEpisodesIntentImplementation = type metadata accessor for FetchUpNextEpisodesIntentImplementation();
  v30 = *(UpNextEpisodesIntentImplementation - 8);
  __chkstk_darwin(UpNextEpisodesIntentImplementation);
  v32 = &UpNextEpisodesIntentImplementation - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for NativeIntentDispatcher.Configuration();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &UpNextEpisodesIntentImplementation - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &UpNextEpisodesIntentImplementation - v38;
  v40 = type metadata accessor for LRUIntentCache.Configuration();
  __chkstk_darwin(v40 - 8);
  LRUIntentCache.Configuration.init(cacheLimit:)();
  v41 = type metadata accessor for LRUIntentCache();
  swift_allocObject();
  v42 = LRUIntentCache.init(configuration:)();
  v142 = v41;
  v143 = &protocol witness table for LRUIntentCache;
  v116 = v42;
  v141 = v42;

  NativeIntentDispatcher.Configuration.init(cache:)();
  v43 = v33;
  (*(v34 + 16))(v36, v39, v33);
  NativeIntentDispatcher.init(configuration:)();
  sub_10001E75C();
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for OpenTranscriptIntentImplementation();
  sub_100283980(&qword_10057AED0, type metadata accessor for OpenTranscriptIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  FetchUpNextEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AED8, &type metadata accessor for FetchUpNextEpisodesIntentImplementation);
  v44 = UpNextEpisodesIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v30 + 8))(v32, v44);
  FindOrCreateLocalEpisodeContentIDsIntentImplementation.init()();
  sub_100283980(&qword_10057AEE0, &type metadata accessor for FindOrCreateLocalEpisodeContentIDsIntentImplementation);
  v45 = LocalEpisodeContentIDsIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v85 + 8))(v29, v45);
  v46 = v86;
  FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init()();
  sub_100283980(&qword_10057AEE8, &type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation);
  v47 = EpisodeOfferContentIDsIntentsIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v88 + 8))(v46, v47);
  v48 = v89;
  BookmarkEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AEF0, &type metadata accessor for BookmarkEpisodeIntentImplementation);
  v49 = v90;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v91 + 8))(v48, v49);
  v50 = v92;
  UnbookmarkEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AEF8, &type metadata accessor for UnbookmarkEpisodeIntentImplementation);
  v51 = v93;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v94 + 8))(v50, v51);
  v52 = v95;
  DownloadEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AF00, &type metadata accessor for DownloadEpisodesIntentImplementation);
  v53 = v96;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v97 + 8))(v52, v53);
  v54 = v98;
  RemoveEpisodesDownloadIntentImplementation.init()();
  sub_100283980(&qword_10057AF08, &type metadata accessor for RemoveEpisodesDownloadIntentImplementation);
  v55 = v99;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v100 + 8))(v54, v55);
  type metadata accessor for UpdateEpisodeDownloadBehaviorImplementation();
  sub_100283980(&qword_10057AF10, &type metadata accessor for UpdateEpisodeDownloadBehaviorImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for ReevaluateAutoDownloadsIntentImplementation();
  sub_100283980(&qword_10057AF18, type metadata accessor for ReevaluateAutoDownloadsIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  sub_10001F078();
  NativeIntentDispatcher.register<A>(_:)();
  sub_10001F114();
  NativeIntentDispatcher.register<A>(_:)();
  sub_10001F2A4();
  NativeIntentDispatcher.register<A>(_:)();
  v56 = v101;
  UnfollowShowIntentImplementation.init()();
  sub_100283980(&qword_10057AF38, &type metadata accessor for UnfollowShowIntentImplementation);
  v57 = v102;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v103 + 8))(v56, v57);
  v58 = v104;
  FollowFeedIntentImplementation.init()();
  sub_100283980(&qword_10057AF40, &type metadata accessor for FollowFeedIntentImplementation);
  v59 = v105;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v106 + 8))(v58, v59);
  v60 = v107;
  FindShowEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AF48, &type metadata accessor for FindShowEpisodesIntentImplementation);
  v61 = ShowEpisodesIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v109 + 8))(v60, v61);
  v62 = v110;
  FetchShowLatestCatalogEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AF50, &type metadata accessor for FetchShowLatestCatalogEpisodesIntentImplementation);
  v63 = ShowLatestCatalogEpisodesIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v112 + 8))(v62, v63);
  type metadata accessor for ServerChannel();
  v64 = v113;
  FetchMediaAPIRepresentableIntentImplementation.init()();
  sub_100009FAC(&qword_10057AF58, &qword_10057AEC0);
  v65 = v114;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v115 + 8))(v64, v65);
  type metadata accessor for ServerPodcast();
  v66 = v117;
  FetchMediaAPIRepresentableIntentImplementation.init()();
  sub_100009FAC(&qword_10057AF60, &qword_10057AEB8);
  v67 = v118;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v119 + 8))(v66, v67);
  type metadata accessor for ServerPodcastEpisode();
  v68 = v120;
  FetchMediaAPIRepresentableIntentImplementation.init()();
  sub_100009FAC(&qword_10057AF68, &qword_10057AEB0);
  v69 = v121;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v122 + 8))(v68, v69);
  v70 = v123;
  FetchPodcastForEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AF70, &type metadata accessor for FetchPodcastForEpisodeIntentImplementation);
  v71 = PodcastForEpisodeIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v125 + 8))(v70, v71);
  sub_100283A1C();
  NativeIntentDispatcher.register<A>(_:)();
  sub_100283A70();
  NativeIntentDispatcher.register<A>(_:)();
  v72 = v126;
  DebugLibraryStorageTipSuggestedLimitIntentImplementation.init()();
  sub_100283980(&qword_10057AF88, &type metadata accessor for DebugLibraryStorageTipSuggestedLimitIntentImplementation);
  v73 = v127;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v128 + 8))(v72, v73);
  v74 = v129;
  EnqueueEpisodeForPlaybackIntentImplementation.init()();
  sub_100283980(&qword_10057AF90, &type metadata accessor for EnqueueEpisodeForPlaybackIntentImplementation);
  v75 = v130;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v131 + 8))(v74, v75);
  v76 = v132;
  PlayEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AF98, &type metadata accessor for PlayEpisodeIntentImplementation);
  v77 = v133;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v134 + 8))(v76, v77);
  type metadata accessor for PlayStationIntentImplementation();
  sub_100283980(&qword_10057AFA0, type metadata accessor for PlayStationIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  sub_100283AC4();
  NativeIntentDispatcher.register<A>(_:)();
  sub_100283B18();
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for CategoryPageFromYourShowsShelfIntentImplementation();
  sub_100283980(&qword_10057AFB8, &type metadata accessor for CategoryPageFromYourShowsShelfIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for NewsFromYourShowsShelfIntentImplementation();
  sub_100283980(&qword_10057AFC0, &type metadata accessor for NewsFromYourShowsShelfIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  v78 = v135;
  EpisodeTimedReferenceLinksIntentImplementation.init()();
  sub_100283980(&qword_10057AFC8, &type metadata accessor for EpisodeTimedReferenceLinksIntentImplementation);
  v79 = v136;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v137 + 8))(v78, v79);
  v80 = v138;
  ReferenceLinkMetadataIntentImplementation.init()();
  sub_100283980(&qword_10057AFD0, &type metadata accessor for ReferenceLinkMetadataIntentImplementation);
  v81 = v139;
  NativeIntentDispatcher.register<A>(_:)();

  (*(v140 + 8))(v80, v81);
  return (*(v34 + 8))(v39, v43);
}

void *sub_100282828@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  type metadata accessor for UserActivityController();
  swift_allocObject();
  result = sub_100009B18(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1002828B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  [objc_allocWithZone(MTSubscribeUtil) init];
  v2 = objc_allocWithZone(type metadata accessor for RemoteFollowCommandCenter());
  result = RemoteFollowCommandCenter.init(asPartOf:subscriptionUtility:)();
  *a1 = result;
  return result;
}

unint64_t sub_10028292C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  a1[3] = &type metadata for UIAppSettingsBridge;
  result = sub_1002839C8();
  a1[4] = result;
  *a1 = v2;
  return result;
}

id sub_100282988@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  *a1 = result;
  return result;
}

unint64_t sub_100282A04@<X0>(void *a1@<X8>)
{
  sub_100009F1C(0, &qword_100573E00);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  result = sub_100021698();
  *a1 = v2;
  a1[1] = result;
  return result;
}

id sub_100282A60@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  *a1 = result;
  return result;
}

uint64_t sub_100282AB8@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  *(a4 + 24) = a1(0);
  *(a4 + 32) = sub_100283980(a2, a3);
  BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_100282B84@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LibraryViewControllerProvider();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_100283980(&qword_10057AC40, type metadata accessor for LibraryViewControllerProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100282C0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  v2 = type metadata accessor for LibraryRemovalController();
  swift_allocObject();
  result = LibraryRemovalController.init(asPartOf:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for LibraryRemovalController;
  *a1 = result;
  return result;
}

uint64_t sub_100282CAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for HomePageProvider();
  swift_allocObject();
  result = HomePageProvider.init(asPartOf:platformContext:)();
  *a1 = result;
  return result;
}

uint64_t sub_100282D38@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v6 = static BaseObjectGraph.current.getter();
  a1(0);
  swift_allocObject();
  result = a2(v6);
  *a3 = result;
  return result;
}

uint64_t sub_100282DAC@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  v3 = type metadata accessor for PodcastsContextActionProvider();
  swift_allocObject();
  v4 = sub_1000201A8(v2);

  a1[3] = v3;
  result = sub_100283980(&qword_10057AC38, type metadata accessor for PodcastsContextActionProvider);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_100282E58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  v3 = type metadata accessor for TranscriptsContextActionsProviderImplementation();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_100168088(&unk_10057AB00);

  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_10057A4A0);
  BaseObjectGraph.inject<A>(_:)();

  *(v4 + 64) = v6;
  a1[3] = v3;
  result = sub_100283980(&qword_10057AC30, type metadata accessor for TranscriptsContextActionsProviderImplementation);
  a1[4] = result;
  *a1 = v4;
  return result;
}

void sub_100282F64(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v30 - v8;
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 stringForKey:v13];

  if (v14)
  {
    v31 = a1;
    v30[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = String._bridgeToObjectiveC()();
    v18 = [v12 URLForKey:v17];

    if (v18)
    {
      v30[1] = v16;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v11, v9, v2);
      v19 = String._bridgeToObjectiveC()();
      v20 = [v12 BOOLForKey:v19];

      if ((v20 & 1) == 0)
      {
        (*(v3 + 16))(v6, v11, v2);
        v27 = type metadata accessor for KCUTranscriptProvider();
        v28 = v31;
        v31[3] = v27;
        v28[4] = &protocol witness table for KCUTranscriptProvider;
        sub_10000E680(v28);
        KCUTranscriptProvider.init(bearerToken:basePath:kcuTranscriptPath:kcuSignaturePath:)();

        (*(v3 + 8))(v11, v2);
        return;
      }

      (*(v3 + 8))(v11, v2);
    }

    a1 = v31;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v12 stringForKey:v21];

  if (v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = String._bridgeToObjectiveC()();
    v24 = [v12 stringForKey:v23];

    if (v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = String._bridgeToObjectiveC()();
      v26 = [v12 BOOLForKey:v25];

      if ((v26 & 1) == 0)
      {
        v29 = [objc_opt_self() mainBundle];
        a1[3] = type metadata accessor for BundleAssetTranscriptProvider();
        a1[4] = &protocol witness table for BundleAssetTranscriptProvider;
        sub_10000E680(a1);
        BundleAssetTranscriptProvider.init(ttmlFileName:signatureFileName:bundle:)();
        goto LABEL_13;
      }
    }
  }

  a1[3] = type metadata accessor for TimeBombedTranscriptProvider();
  a1[4] = &protocol witness table for TimeBombedTranscriptProvider;
  sub_10000E680(a1);
  static TimeBombedTranscriptProvider.foreground.getter();
LABEL_13:
}

uint64_t sub_100283408@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageContextTracker();
  result = static PageContextTracker.shared.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10028343C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AMSOAuthEndpointSubscriber();
  __chkstk_darwin(v2 - 8);
  AMSOAuthEndpointSubscriber.init()();
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for OAuthHUDViewHandler();
  swift_allocObject();
  OAuthHUDViewHandler.init(asPartOf:)();
  sub_100283980(&qword_10057AC28, &type metadata accessor for OAuthHUDViewHandler);
  type metadata accessor for OAuthController();
  swift_allocObject();
  result = OAuthController.init(endpointSubscriber:hudViewHandler:)();
  *a1 = result;
  return result;
}

id sub_1002835A8@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t sub_100283604@<X0>(uint64_t *a1@<X8>)
{
  sub_100168088(&qword_10057ABF8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004080E0;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  v3 = type metadata accessor for RestorePurgedEpisodesTipProvider();
  swift_allocObject();
  v4 = RestorePurgedEpisodesTipProvider.init(asPartOf:)();
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for RestorePurgedEpisodesTipProvider;
  *(v2 + 32) = v4;
  v5 = type metadata accessor for RemoveOlderDownloadsTipProvider();
  static BaseObjectGraph.current.getter();
  v6 = RemoveOlderDownloadsTipProvider.__allocating_init(asPartOf:)();
  *(v2 + 96) = v5;
  *(v2 + 104) = &protocol witness table for RemoveOlderDownloadsTipProvider;
  *(v2 + 72) = v6;
  static BaseObjectGraph.current.getter();
  v7 = type metadata accessor for AddFavoriteCategoriesSearchTipProvider();
  swift_allocObject();
  v8 = AddFavoriteCategoriesSearchTipProvider.init(asPartOf:)();
  *(v2 + 136) = v7;
  *(v2 + 144) = sub_100283980(&qword_10057AC00, &type metadata accessor for AddFavoriteCategoriesSearchTipProvider);
  *(v2 + 112) = v8;
  static BaseObjectGraph.current.getter();
  v9 = type metadata accessor for CategoriesSavedTipProvider();
  swift_allocObject();
  v10 = CategoriesSavedTipProvider.init(asPartOf:)();
  *(v2 + 176) = v9;
  *(v2 + 184) = sub_100283980(&qword_10057AC08, &type metadata accessor for CategoriesSavedTipProvider);
  *(v2 + 152) = v10;
  static BaseObjectGraph.current.getter();
  v11 = type metadata accessor for NotFindingAnythingTipProvider();
  swift_allocObject();
  v12 = NotFindingAnythingTipProvider.init(asPartOf:)();
  *(v2 + 216) = v11;
  *(v2 + 224) = sub_100283980(&qword_10057AC10, &type metadata accessor for NotFindingAnythingTipProvider);
  *(v2 + 192) = v12;
  static BaseObjectGraph.current.getter();
  v13 = type metadata accessor for AddFavoriteCategoriesButtonTipProvider();
  swift_allocObject();
  v14 = AddFavoriteCategoriesButtonTipProvider.init(asPartOf:)();
  *(v2 + 256) = v13;
  *(v2 + 264) = &protocol witness table for AddFavoriteCategoriesButtonTipProvider;
  *(v2 + 232) = v14;
  static BaseObjectGraph.current.getter();
  v15 = type metadata accessor for StayUpToDateTipProvider();
  swift_allocObject();
  v16 = StayUpToDateTipProvider.init(asPartOf:)();
  *(v2 + 296) = v15;
  *(v2 + 304) = &protocol witness table for StayUpToDateTipProvider;
  *(v2 + 272) = v16;
  a1[3] = sub_100168088(&qword_10057AC18);
  a1[4] = sub_100009FAC(&qword_10057AC20, &qword_10057AC18);
  sub_10000E680(a1);
  return OrderedTipProvider<>.init(providers:)();
}

uint64_t sub_100283930@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ForegroundSessionPreconnecter();
  swift_allocObject();
  result = ForegroundSessionPreconnecter.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100283980(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002839C8()
{
  result = qword_10057AC58;
  if (!qword_10057AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AC58);
  }

  return result;
}

unint64_t sub_100283A1C()
{
  result = qword_10057AF78;
  if (!qword_10057AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF78);
  }

  return result;
}

unint64_t sub_100283A70()
{
  result = qword_10057AF80;
  if (!qword_10057AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF80);
  }

  return result;
}

unint64_t sub_100283AC4()
{
  result = qword_10057AFA8;
  if (!qword_10057AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AFA8);
  }

  return result;
}

unint64_t sub_100283B18()
{
  result = qword_10057AFB0;
  if (!qword_10057AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AFB0);
  }

  return result;
}

uint64_t sub_100283B74@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() systemOrangeColor];
  v4 = [objc_opt_self() mainBundle];
  v12._object = 0xE600000000000000;
  v12._countAndFlagsBits = 0x657661736E55;
  v5._object = 0x800000010046C780;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v12);

  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
}

void sub_100283C64()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v41 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for BookmarksControllerEpisodeData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 16))
  {
    v38 = v14;
    v39 = v3;
    v37 = v2;

    static Logger.podcastsStatesCoordination.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v40 = v5;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v36 = v6;
      v21 = v20;
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v21 = 136315394;
      v34 = v18;
      sub_1003972E0(v11);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000153E0(v22, v23, v42);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = Array.description.getter();
      v28 = v27;

      v29 = sub_1000153E0(v26, v28, v42);

      *(v21 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v17, v34, "RemoveEpisodeFromBookmarksContextAction.handler() - Unbookmarking episode %s %s", v21, 0x16u);
      swift_arrayDestroy();

      v6 = v36;
    }

    (*(v13 + 8))(v16, v38);
    sub_1003972E0(v8);
    swift_beginAccess();
    v30 = v39;
    if (*(v1 + 24))
    {

      v31 = v41;
      dispatch thunk of ContextActionsConfiguration.context.getter();

      v32 = InteractionContext.view.getter();
      (*(v30 + 8))(v31, v37);
      if ((v32 - 5) > 2u)
      {
        InteractionContext.EpisodeCellType.showsEpisodeControls.getter();
      }
    }

    BookmarksController.removeEpisodesFromBookmarks(with:showHUDConfirmation:)();

    (*(v6 + 8))(v8, v40);
  }
}

uint64_t sub_1002840D0()
{

  v1 = OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveEpisodeFromBookmarksContextAction()
{
  result = qword_10057B030;
  if (!qword_10057B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100284200()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10028430C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_10028439C@<D0>(uint64_t a1@<X8>)
{
  sub_100283B74(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1002843DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10028443C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10028449C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002844FC()
{
  v1 = type metadata accessor for BookmarksControllerEpisodeData();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 16))
  {

    sub_1003972E0(v4);
    v5 = BookmarksController.containsBookmarkedEpisodes(in:)();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100284608(uint64_t a1)
{
  result = sub_100284690(&qword_10057B1A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028464C(uint64_t a1)
{
  result = sub_100284690(&qword_10057B1A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100284690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveEpisodeFromBookmarksContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1002846D4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1002846E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10028473C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1002847B4()
{
  result = qword_10057B1B0;
  if (!qword_10057B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B1B0);
  }

  return result;
}

void sub_100284820(void *a1)
{
  v3 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for ArtworkRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  sub_100226208();
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v15 = v14;
    v26 = 0;
    v31 = v13;
    if (v14 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = v31;
      v27 = a1;
      if (!i)
      {
        break;
      }

      v34 = v12;
      v28 = v9;
      v29 = v7;
      v12 = 0;
      v36 = v15 & 0xC000000000000001;
      v35 = v15 & 0xFFFFFFFFFFFFFF8;
      v32 = (v7 + 32);
      a1 = _swiftEmptyArrayStorage;
      v30 = v6;
      v33 = i;
      while (1)
      {
        if (v36)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v35 + 16))
          {
            goto LABEL_23;
          }

          v18 = *(v15 + 8 * v12 + 32);
        }

        v19 = v18;
        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v9 = v15;
        MTPodcast.uberBackgroundArtworkModel.getter();
        v20 = type metadata accessor for ArtworkModel();
        if ((*(*(v20 - 8) + 48))(v5, 1, v20) == 1)
        {

          sub_10021F030(v5);
        }

        else
        {
          v21 = v28;
          ArtworkModel.preferredRequest.getter();

          sub_1001A0664(v5);
          v22 = *v32;
          (*v32)(v34, v21, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_100036414(0, a1[2] + 1, 1, a1);
          }

          v24 = a1[2];
          v23 = a1[3];
          v17 = v31;
          if (v24 >= v23 >> 1)
          {
            a1 = sub_100036414(v23 > 1, v24 + 1, 1, a1);
          }

          a1[2] = v24 + 1;
          v25 = a1 + ((v29[80] + 32) & ~v29[80]) + *(v29 + 9) * v24;
          v6 = v30;
          v22(v25, v34, v30);
        }

        ++v12;
        if (v7 == v33)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_21:

    *v27 = a1;
  }
}

id sub_100284BE0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  v19 = 0;
  v6 = [v4 removeItemAtPath:v5 error:&v19];

  if (v6)
  {
    return v19;
  }

  v8 = v19;
  v9 = _convertNSErrorToError(_:)();

  swift_willThrow();
  static Logger.artwork.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v0;
    v18[1] = v9;
    v14 = v13;
    v19 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000153E0(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to remove uber artwork: %s", v12, 0xCu);
    sub_100004590(v14);

    return (*(v1 + 8))(v3, v18[0]);
  }

  else
  {

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_100284EBC()
{
  v114 = type metadata accessor for Logger();
  v110 = *(v114 - 8);
  __chkstk_darwin(v114);
  v109 = &v106 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for ArtworkRequest();
  v2 = *(v1 - 8);
  v118 = v1;
  v119 = v2;
  __chkstk_darwin(v1);
  v117 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100168088(&qword_100577B28);
  v4 = *(v115 - 8);
  __chkstk_darwin(v115);
  v6 = &v106 - v5;
  v7 = sub_100168088(&qword_100577B30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v106 - v9;
  v11 = type metadata accessor for AssetCaches();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for URL();
  v116 = *(v120 - 8);
  __chkstk_darwin(v120);
  v112 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = &v106 - v17;
  __chkstk_darwin(v18);
  v113 = &v106 - v19;
  __chkstk_darwin(v20);
  v22 = &v106 - v21;
  static AssetCaches.shared.getter();
  AssetCaches.artwork.getter();
  (*(v12 + 8))(v14, v11);
  CacheDomain.disk.getter();
  (*(v8 + 8))(v10, v7);
  v23 = v115;
  CacheDomain.DiskCaches.directory.getter();
  (*(v4 + 8))(v6, v23);
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  v26._countAndFlagsBits = URL.path.getter();
  LOBYTE(v14) = NSFileManager.fileExists(at:isDirectory:)(v26, 1);

  if (v14)
  {
    v27 = [objc_opt_self() sharedInstance];
    v28 = [v27 privateQueueContext];

    v123 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v29);
    *(&v106 - 2) = &v123;
    *(&v106 - 1) = v28;
    v30 = v111;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v111 = v30;
    if (v30)
    {

      (*(v116 + 8))(v22, v120);
    }

    v110 = v28;
    v36 = v123;
    v37 = v123[2];
    v38 = _swiftEmptyArrayStorage;
    v107 = v22;
    v109 = v123;
    if (v37)
    {
      v106 = v24;
      v121[0] = _swiftEmptyArrayStorage;
      sub_1001A7364(0, v37, 0);
      v38 = v121[0];
      v39 = v119[2];
      v40 = v36 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v114 = v119[9];
      v115 = v39;
      v119 += 2;
      v41 = v119 - 1;
      do
      {
        v42 = v117;
        v43 = v118;
        (v115)(v117, v40, v118);
        v44 = ArtworkRequest.stableFilePrefix.getter();
        v46 = v45;
        (*v41)(v42, v43);
        v121[0] = v38;
        v48 = v38[2];
        v47 = v38[3];
        if (v48 >= v47 >> 1)
        {
          sub_1001A7364((v47 > 1), v48 + 1, 1);
          v38 = v121[0];
        }

        v38[2] = v48 + 1;
        v49 = &v38[2 * v48];
        v49[4] = v44;
        v49[5] = v46;
        v40 += v114;
        --v37;
      }

      while (v37);
      v22 = v107;
      v24 = v106;
    }

    v50 = sub_10039B51C(v38);

    v51 = [v24 defaultManager];
    URL.path.getter();
    v52 = String._bridgeToObjectiveC()();

    v121[0] = 0;
    v53 = [v51 subpathsOfDirectoryAtPath:v52 error:v121];

    v54 = v121[0];
    v55 = v116;
    if (!v53)
    {
      v79 = v121[0];

      v80 = _convertNSErrorToError(_:)();

      v111 = v80;
      swift_willThrow();

      (*(v55 + 8))(v22, v120);
    }

    v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v54;

    v118 = *(v56 + 16);
    if (v118)
    {
      v58 = 0;
      v117 = (v56 + 32);
      v59 = v50 + 56;
      v119 = _swiftEmptyArrayStorage;
      v115 = v56;
      while (v58 < *(v56 + 16))
      {
        v60 = &v117[16 * v58];
        v62 = *v60;
        v61 = *(v60 + 1);
        ++v58;

        v63 = static ArtworkRequest.comparablePrefix(from:)();
        v65 = v64;
        if (*(v50 + 16) && (v66 = v63, Hasher.init(_seed:)(), String.hash(into:)(), v67 = Hasher._finalize()(), v68 = -1 << *(v50 + 32), v69 = v67 & ~v68, ((*(v59 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0))
        {
          v70 = ~v68;
          while (1)
          {
            v71 = (*(v50 + 48) + 16 * v69);
            v72 = *v71 == v66 && v71[1] == v65;
            if (v72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v69 = (v69 + 1) & v70;
            if (((*(v59 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v73 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001A7364(0, v73[2] + 1, 1);
            v73 = v122;
          }

          v76 = v73[2];
          v75 = v73[3];
          v77 = v73;
          if (v76 >= v75 >> 1)
          {
            sub_1001A7364((v75 > 1), v76 + 1, 1);
            v77 = v122;
          }

          v77[2] = v76 + 1;
          v119 = v77;
          v78 = &v77[2 * v76];
          v78[4] = v62;
          v78[5] = v61;
        }

        else
        {
LABEL_17:
        }

        v56 = v115;
        v55 = v116;
        if (v58 == v118)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    v119 = _swiftEmptyArrayStorage;
LABEL_37:

    v116 = *(v55 + 16);
    v117 = (v55 + 16);
    (v116)(v113, v107, v120);
    v81 = v119[2];
    if (v81)
    {
      v121[0] = _swiftEmptyArrayStorage;
      sub_1001A7384(0, v81, 0);
      v82 = v119;
      v83 = 0;
      v84 = v121[0];
      v118 = (v55 + 32);
      v85 = v119 + 5;
      v86 = v108;
      do
      {
        if (v83 >= v82[2])
        {
          goto LABEL_58;
        }

        URL.appendingPathComponent(_:)();

        v121[0] = v84;
        v88 = v84[2];
        v87 = v84[3];
        if (v88 >= v87 >> 1)
        {
          sub_1001A7384(v87 > 1, v88 + 1, 1);
          v84 = v121[0];
        }

        ++v83;
        v84[2] = v88 + 1;
        (*(v55 + 32))(v84 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v88, v86, v120);
        v85 += 2;
        v82 = v119;
      }

      while (v81 != v83);
    }

    else
    {

      v84 = _swiftEmptyArrayStorage;
    }

    v118 = *(v55 + 8);
    v119 = (v55 + 8);
    v118(v113, v120);
    v89 = v84[2];
    if (v89)
    {
      v121[0] = _swiftEmptyArrayStorage;
      sub_1001A7364(0, v89, 0);
      v90 = v121[0];
      v91 = v84 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v115 = *(v55 + 72);
      do
      {
        v92 = v112;
        v93 = v120;
        (v116)(v112, v91, v120);
        v94 = URL.path.getter();
        v96 = v95;
        v118(v92, v93);
        v121[0] = v90;
        v98 = v90[2];
        v97 = v90[3];
        if (v98 >= v97 >> 1)
        {
          sub_1001A7364((v97 > 1), v98 + 1, 1);
          v90 = v121[0];
        }

        v90[2] = (v98 + 1);
        v99 = &v90[2 * v98];
        v99[4] = v94;
        v99[5] = v96;
        v91 += v115;
        --v89;
      }

      while (v89);
    }

    else
    {

      v90 = _swiftEmptyArrayStorage;
    }

    v100 = v90[2];
    v101 = v111;
    v102 = v107;
    if (v100)
    {
      v103 = 0;
      v104 = v90 + 5;
      while (v103 < v90[2])
      {
        ++v103;
        v105 = *v104;
        v121[0] = *(v104 - 1);
        v121[1] = v105;
        sub_100284BE0();
        v104 += 2;
        if (v100 == v103)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_59;
    }

LABEL_56:
    v111 = v101;

    v118(v102, v120);
  }

  else
  {
    v32 = v109;
    static Logger.artwork.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Uber migration unnecessary, artwork cache never created", v35, 2u);
    }

    (*(v110 + 1))(v32, v114);
    return (*(v116 + 8))(v22, v120);
  }
}