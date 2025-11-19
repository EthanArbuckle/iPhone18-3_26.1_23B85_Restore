uint64_t sub_10031FD0C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
  v4 = *(v2 + 40);
  *(v2 + 40) = 2;
  sub_1002B30A4(v3, v4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v2, &off_10160F590, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v1 + 72);
  if (v8)
  {

    v8(v1);
    return sub_1000588AC(v8);
  }

  return result;
}

uint64_t sub_10031FE3C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(a1 + 32);
    swift_unknownObjectRetain();
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  v5 = *(v1 + 16);
  v6 = *(v5 + 32);
  *(v5 + 32) = v3;
  v7 = *(v5 + 40);
  *(v5 + 40) = v4;
  sub_1002B2FCC(v3, v4);
  sub_1002B30A4(v6, v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v5 + 56);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v5, &off_10160F590, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v2 + 88);
  if (v10)
  {

    v10(v2);
    sub_1000588AC(v10);
  }

  return sub_1002B30A4(v3, v4);
}

unint64_t sub_10031FFB0()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_100100D84(v1);
  return v1;
}

uint64_t sub_10032005C()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100320100(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
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
  *(v1 + 32) = a1;
}

uint64_t sub_100320288()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10032032C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_1003203D8(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
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
  *(v1 + 40) = a1;
}

uint64_t sub_100320560()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 56))
  {

    String._mapsui_nilIfEmpty.getter();
    v2 = v1;

    if (v2)
    {
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1003206C4()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100320774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_100320820(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return sub_100320560();
}

unint64_t sub_100320994@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;
  return sub_100100D84(v4);
}

uint64_t sub_100320A60()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100320B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100320B60()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100320C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100320C60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
}

uint64_t sub_100320D2C()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100320DE8()
{
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100320E8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
}

uint64_t sub_100320F38()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 32))
  {

    Task.cancel()();
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v11 - 2) = v0;
  *(&v11 - 1) = 0;
  v12 = v0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  v9 = sub_10020AAE4(0, 0, v4, &unk_1011FACC0, v8);
  return sub_100320100(v9);
}

uint64_t sub_100321194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_10032122C, v6, v5);
}

uint64_t sub_10032122C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1003212C0;

  return sub_10032180C();
}

uint64_t sub_1003212C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    v6 = v4[6];
    v7 = v4[7];

    return _swift_task_switch(sub_100321464, v6, v7);
  }

  else
  {
    v4[10] = a1;
    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v5;
    v8[1] = sub_10032158C;

    return (sub_1003D3014)(a1);
  }
}

uint64_t sub_100321464()
{
  v1 = v0[4];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v0[2] = v1;
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10032158C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1003216D8, v4, v3);
}

uint64_t sub_1003216D8()
{
  v1 = v0[12];
  v2 = v0[4];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[3] = v2;
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032182C()
{
  v1 = *(v0[9] + 16);
  v2 = [v1 _identifier];
  if (v2 && (v3 = v2, v4 = [v2 mapsIdentifierString], v3, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v0[10] = v5;
    v0[11] = v7;
    [v1 centerCoordinate];
    v9 = v8;
    [v1 centerCoordinate];
    v11 = v10;
    v12 = [objc_opt_self() sharedService];
    if (v12)
    {
      v20 = v12;
      v21 = [v12 ticketForSpatialPlaceLookupWithCenterCoordinate:0 radius:100 pointOfInterestFilter:2 maxResultCount:v9 source:{v11, 800.0}];
      v0[12] = v21;

      v22 = swift_task_alloc();
      v0[13] = v22;
      *(v22 + 16) = v21;
      v23 = swift_task_alloc();
      v0[14] = v23;
      v19 = sub_1000CE6B8(&qword_101919D30);
      *v23 = v0;
      v23[1] = sub_100321B1C;
      v17 = sub_100324BF8;
      v12 = v0 + 8;
      v16 = 0x800000010122E7F0;
      v13 = 0;
      v14 = 0;
      v15 = 0xD000000000000012;
      v18 = v22;
    }

    else
    {
      __break(1u);
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100021540(v24, qword_10195FE70);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[Visit History Correction Picker] not fetching suggestions because place does not have mapsIdentifier", v27, 2u);
    }

    v28 = v0[1];

    return v28(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100321B1C()
{

  return _swift_task_switch(sub_100321C34, 0, 0);
}

uint64_t sub_100321C34()
{
  v1 = v0 + 8;
  v2 = v0[8];
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
      v4 = v0[10];
      v5 = v0[11];

      v6 = sub_100324DFC(v0 + 8, v4, v5);

      v7 = v0[8];
      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
        if (v8 >= v6)
        {
LABEL_5:
          sub_10054E654(v6, v8);

          if (qword_101906660 == -1)
          {
LABEL_6:
            v9 = type metadata accessor for Logger();
            sub_100021540(v9, qword_10195FE70);
            v10 = Logger.logObject.getter();
            v11 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v10, v11))
            {
              v12 = swift_slowAlloc();
              *v12 = 134218240;
              *(v12 + 4) = v3;
              *(v12 + 12) = 2048;
              swift_beginAccess();
              if (*v1 >> 62)
              {
                v13 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v13 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v12 + 14) = v13;
              _os_log_impl(&_mh_execute_header, v10, v11, "[Visit History Correction Picker] Server returned %ld suggestions, out of which %ld are usable", v12, 0x16u);
            }

            swift_unknownObjectRelease();

            swift_beginAccess();
            v14 = v0[8];
            goto LABEL_18;
          }

LABEL_23:
          swift_once();
          goto LABEL_6;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 >= v6)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (qword_101906660 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100021540(v15, qword_10195FE70);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[Visit History Correction Picker] Received 0 suggestions from server", v18, 2u);
  }

  swift_unknownObjectRelease();

  v14 = _swiftEmptyArrayStorage;
LABEL_18:
  v19 = v0[1];

  return v19(v14);
}

uint64_t sub_100321F7C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  if (!a2)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    swift_bridgeObjectRetain_n();
    sub_100320820(a1, a2);
    swift_getKeyPath();
    v18 = v2;
    sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2[5])
    {

      Task.cancel()();
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = 1;
    v18 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v3;
    v13[5] = a1;
    v13[6] = a2;
    v14 = sub_10020AAE4(0, 0, v8, &unk_1011FAD88, v13);
    return sub_1003203D8(v14);
  }

  else
  {
LABEL_8:
    swift_getKeyPath();
    v18 = v2;
    sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2[5])
    {

      Task.cancel()();
    }

    if (v2[7])
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      *(&v17 - 3) = 0;
      *(&v17 - 2) = 0;
      *(&v17 - 4) = v2;
      v18 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v2[6] = 0;
      v2[7] = 0;
      return sub_100320560();
    }
  }
}

uint64_t sub_10032236C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100109428();
    v19 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v20 = v9;
    v15 = v14;
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a2;
    v16[4] = a3;
    aBlock[4] = sub_100324CB4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_101611640;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_100324C54(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v20);
  }

  return result;
}

uint64_t sub_100322694(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100321F7C(a2, a3);
  }

  return result;
}

uint64_t sub_100322708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v8;
  v6[11] = v7;

  return _swift_task_switch(sub_1003227A4, v8, v7);
}

uint64_t sub_1003227A4()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_100322880;
    v5 = v0[7];
    v4 = v0[8];

    return sub_100322F3C(v5, v4);
  }
}

uint64_t sub_100322880(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {

    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_1003229A8;
  }

  else
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_100322AD4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1003229A8()
{
  v1 = v0[6];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v0[2] = v1;
  sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100322AD4()
{
  if (static Task<>.isCancelled.getter() & 1) == 0 && (v1 = v0[6], swift_getKeyPath(), v2 = OBJC_IVAR____TtC4Maps42VisitLocationCorrectionSearchableViewModel___observationRegistrar, v0[3] = v1, v0[15] = v2, v0[16] = sub_100324C54(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v3 = *(v1 + 56)) != 0) && (*(v1 + 48) == v0[7] ? (v4 = v3 == v0[8]) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_100322C80;
    v6 = v0[13];

    return (sub_1003D3014)(v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100322C80(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100322DCC, v4, v3);
}

uint64_t sub_100322DCC()
{

  if (static Task<>.isCancelled.getter() & 1) == 0 && (v1 = v0[6], swift_getKeyPath(), v0[4] = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v2 = *(v1 + 56)) != 0) && (*(v1 + 48) == v0[7] ? (v3 = v2 == v0[8]) : (v3 = 0), v3 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v4 = v0[18];
    v5 = v0[6];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v0[5] = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100322F3C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_100322F60, 0, 0);
}

uint64_t sub_100322F60()
{
  v1 = *(v0[5] + 16);
  v0[6] = v1;
  v2 = [v1 _identifier];
  if (v2 && (v3 = v2, v4 = [v2 mapsIdentifierString], v3, v4))
  {
    v5 = v0[5];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v0[7] = v6;
    v0[8] = v8;
    v9 = *(v5 + 24);
    v10 = [v9 defaultTraits];
    v0[9] = v10;
    UInteger = GEOConfigGetUInteger();
    if (UInteger)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = UInteger * 800.0;
      v14 = v10;
      [v1 centerCoordinate];
      v17 = [objc_allocWithZone(GEOMapRegion) initWithCenter:v15 radius:{v16, v13}];
      [v14 setMapRegion:v17];
    }

    if (v9)
    {
      v18 = String._bridgeToObjectiveC()();
      sub_1000CE6B8(&qword_101908400);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1011E47B0;
      *(v19 + 32) = [objc_allocWithZone(GEOStrictRegionSearchFilter) init];
      sub_1000CE6B8(&qword_101919D50);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = [v9 ticketForSearchQuery:v18 filters:isa maxResults:100 traits:v10];
      v0[10] = v21;

      if (v21)
      {
        v22 = swift_task_alloc();
        v0[11] = v22;
        *(v22 + 16) = v21;
        v23 = swift_task_alloc();
        v0[12] = v23;
        v24 = sub_1000CE6B8(&qword_101919D30);
        *v23 = v0;
        v23[1] = sub_100323370;

        return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000010122E810, sub_100324DF4, v22, v24);
      }
    }
  }

  else
  {
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100021540(v25, qword_10195FE70);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[Visit History Correction Picker] not fetching suggestions because place does not have mapsIdentifier", v28, 2u);
    }
  }

  v29 = v0[1];

  return v29(_swiftEmptyArrayStorage);
}

uint64_t sub_100323370()
{

  return _swift_task_switch(sub_100323488, 0, 0);
}

uint64_t sub_100323488()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  v5 = sub_100324DFC((v0 + 16), v3, v4);

  v6 = *(v0 + 16);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7 >= v5)
    {
LABEL_5:
      v8 = *(v0 + 48);
      sub_10054E654(v5, v7);

      v9 = *(v0 + 16);

      [v8 centerCoordinate];
      CLLocationCoordinate2DFromGEOLocationCoordinate2D();
      v5 = sub_100325110(v9, v10, v11);
      swift_bridgeObjectRelease_n();
      *(v0 + 16) = v5;
      if (qword_101906660 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_6:
  v12 = type metadata accessor for Logger();
  sub_100021540(v12, qword_10195FE70);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = v2;
    *(v15 + 12) = 2048;
    if (v5 >> 62)
    {
      v19 = v15;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v19;
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Visit History Correction Picker] Server returned %ld search results, out of which %ld are usable", v15, 0x16u);
  }

  swift_unknownObjectRelease();
  v17 = *(v0 + 8);

  return v17(v5);
}

uint64_t sub_1003236F8()
{
  swift_unknownObjectRelease();

  sub_100100D94(*(v0 + 64));
  sub_1000588AC(*(v0 + 72));
  sub_1000588AC(*(v0 + 88));

  v1 = OBJC_IVAR____TtC4Maps42VisitLocationCorrectionSearchableViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003237A8()
{
  sub_1003236F8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitLocationCorrectionSearchableViewModel()
{
  result = qword_101919BA0;
  if (!qword_101919BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100323854()
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

void sub_100323924(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101919D38);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100324C00;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_101611578;
  v11 = _Block_copy(aBlock);

  sub_100109428();
  v12 = static OS_dispatch_queue.main.getter();
  [a2 submitWithHandler:v11 queue:v12];

  _Block_release(v11);
}

void sub_100323AF0(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101919D38);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10032546C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_1016116B8;
  v11 = _Block_copy(aBlock);

  sub_100109428();
  v12 = static OS_dispatch_queue.main.getter();
  [a2 submitWithHandler:v11 queue:v12 networkActivity:0];

  _Block_release(v11);
}

void sub_100323CC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1 && (v5 = sub_1002B0288(a1)) != 0)
  {
    v14 = v5;
    sub_1000CE6B8(&unk_101919D38);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1000CE6B8(&unk_101919D38);
    CheckedContinuation.resume(returning:)();
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_10195FE70);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_1000CE6B8(&qword_101919D48);
      v11 = String.init<A>(describing:)();
      v13 = sub_10004DEB8(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 0xCu);
      sub_10004E3D0(v10);
    }
  }
}

uint64_t sub_100323EA0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100323F14(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100323F3C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_100323F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100321194(a1, v4, v5, v6);
}

Swift::Int sub_100324044(uint64_t *a1)
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
        sub_1000CE6B8(&qword_101919D58);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1003241E0(v7, v8, a1, v4);
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
    return sub_10032414C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10032414C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if ((*(v8 + 40) & 1) != 0 || (v9 = *(v8 + 32), (*(v8 + 16) & 1) == 0) && *(v8 + 8) <= v9)
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      *(v8 + 24) = *v8;
      *(v8 + 40) = v11;
      *v8 = v10;
      *(v8 + 8) = v9;
      *(v8 + 16) = 0;
      v8 -= 24;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003241E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_100:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_134:
      result = sub_10056D550(v7);
      v7 = result;
    }

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
        sub_1003247EC((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_126;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_127;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_128;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_138;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *a3 + 24 * v6;
      if (*(v10 + 16))
      {
        v11 = 0;
      }

      else
      {
        v12 = v9 + 24 * v8;
        v11 = (*(v12 + 16) & 1) != 0 || *(v10 + 8) < *(v12 + 8);
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v9 + 24 * v8 + 64);
        do
        {
          if (*v13 == 1)
          {
            if (v11)
            {
              goto LABEL_22;
            }
          }

          else if (*(v13 - 24) == 1)
          {
            if (!v11)
            {
              goto LABEL_30;
            }
          }

          else if ((v11 ^ (*(v13 - 1) < *(v13 - 4))))
          {
            goto LABEL_19;
          }

          ++v6;
          v13 += 3;
        }

        while (v5 != v6);
        v6 = v5;
        if (!v11)
        {
          goto LABEL_30;
        }

LABEL_22:
        if (v6 < v8)
        {
          goto LABEL_131;
        }

        if (v8 < v6)
        {
          v14 = 24 * v6 - 8;
          v15 = 24 * v8;
          v16 = v6;
          v17 = v8;
          do
          {
            if (v17 != --v16)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v19 = (v18 + v15);
              v20 = (v18 + v14);
              v21 = *v19;
              v22 = v19[1];
              v23 = *(v19 + 16);
              v24 = *v20;
              *v19 = *(v20 - 1);
              v19[2] = v24;
              *(v20 - 2) = v21;
              *(v20 - 1) = v22;
              *v20 = v23;
            }

            ++v17;
            v14 -= 24;
            v15 += 24;
          }

          while (v17 < v16);
          v5 = a3[1];
        }

        goto LABEL_30;
      }

LABEL_19:
      if (v11)
      {
        goto LABEL_22;
      }
    }

LABEL_30:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_130;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_132;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_49:
    if (v6 < v8)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100097874(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v35 = v7[2];
    v34 = v7[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_100097874((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v36;
    v37 = v7 + 4;
    v38 = &v7[2 * v35 + 4];
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_139;
    }

    if (v35)
    {
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
LABEL_69:
          if (v43)
          {
            goto LABEL_116;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_118;
          }

          v62 = &v37[2 * v39];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_123;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v36 < 2)
        {
          goto LABEL_124;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_84:
        if (v61)
        {
          goto LABEL_120;
        }

        v69 = &v37[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_91:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v77 = &v37[2 * v39 - 2];
        v78 = *v77;
        v79 = &v37[2 * v39];
        v80 = v79[1];
        sub_1003247EC((*a3 + 24 * *v77), (*a3 + 24 * *v79), *a3 + 24 * v80, v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_111;
        }

        if (v39 > v7[2])
        {
          goto LABEL_112;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v7[2];
        if (v39 >= v81)
        {
          goto LABEL_113;
        }

        v36 = v81 - 1;
        result = memmove(&v37[2 * v39], v79 + 2, 16 * (v81 - 1 - v39));
        v7[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v37[2 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_114;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_115;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_117;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_119;
      }

      if (v55 >= v47)
      {
        v73 = &v37[2 * v39];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_125;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v89;
    if (v6 >= v5)
    {
      goto LABEL_100;
    }
  }

  v25 = *a3;
  v26 = *a3 + 24 * v6 - 24;
  v27 = v8 - v6;
LABEL_40:
  v28 = v27;
  v29 = v26;
  while (1)
  {
    if ((*(v29 + 40) & 1) != 0 || (v30 = *(v29 + 32), (*(v29 + 16) & 1) == 0) && *(v29 + 8) <= v30)
    {
LABEL_39:
      ++v6;
      v26 += 24;
      --v27;
      if (v6 != v5)
      {
        goto LABEL_40;
      }

      v6 = v5;
      goto LABEL_49;
    }

    if (!v25)
    {
      break;
    }

    v32 = *(v29 + 16);
    v31 = *(v29 + 24);
    *(v29 + 24) = *v29;
    *(v29 + 40) = v32;
    *v29 = v31;
    *(v29 + 8) = v30;
    *(v29 + 16) = 0;
    v29 -= 24;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_1003247EC(char *__src, double *__dst, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    v17 = 3 * v11;
    if (a4 != __dst || &__dst[v17] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v13 = &v4[v17];
    if (v10 < 24 || v6 <= v7)
    {
LABEL_36:
      v23 = v6;
    }

    else
    {
      do
      {
        v18 = 0;
        v19 = v13;
        while (1)
        {
          v20 = &v19[v18];
          if ((v19[v18 - 8] & 1) == 0 && ((*(v6 - 8) & 1) != 0 || *(v20 - 2) < *(v6 - 2)))
          {
            break;
          }

          if ((v5 + v18) != v20)
          {
            v21 = v5 + v18 - 24;
            v22 = *(v20 - 24);
            *(v21 + 16) = *(v20 - 1);
            *v21 = v22;
          }

          v18 -= 24;
          v13 = &v19[v18];
          if (&v19[v18] <= v4)
          {
            goto LABEL_36;
          }
        }

        v23 = v6 - 24;
        v24 = (v5 + v18);
        v5 = v5 + v18 - 24;
        if (v24 != v6)
        {
          v25 = *v23;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v25;
        }

        v13 = &v19[v18];
        if (&v19[v18] <= v4)
        {
          break;
        }

        v6 -= 24;
      }

      while (v23 > v7);
      v13 = &v19[v18];
    }
  }

  else
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12 / 8];
    if (v8 >= 24 && v6 < v5)
    {
      while ((v6[16] & 1) == 0 && ((v4[2] & 1) != 0 || *(v6 + 1) < v4[1]))
      {
        v14 = v6;
        v15 = v7 == v6;
        v6 += 24;
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v7 += 24;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 3;
      if (v15)
      {
        goto LABEL_12;
      }

LABEL_11:
      v16 = *v14;
      *(v7 + 2) = v14[2];
      *v7 = v16;
      goto LABEL_12;
    }

LABEL_35:
    v23 = v7;
  }

  v26 = 3 * ((v13 - v4) / 24);
  if (v23 != v4 || v23 >= &v4[v26])
  {
    memmove(v23, v4, v26 * 8);
  }

  return 1;
}

unint64_t sub_100324A54(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_25:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 _geoMapItem];
    if (v10)
    {
      v11 = [v10 _identifier];
      swift_unknownObjectRelease();
      if (v11)
      {
        v12 = [v11 mapsIdentifierString];

        if (v12)
        {
          break;
        }
      }
    }

LABEL_5:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_24;
    }
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 != a2 || v15 != a3)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      return v6;
    }

    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_100324C0C()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

uint64_t sub_100324C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100324CF0(uint64_t a1)
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

  return sub_100322708(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100324DB8()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_100324DFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = sub_100324A54(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  v34 = a2;
  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = a3;
  v33 = 0;
  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v13 = *(v7 + 8 * v11 + 32);
LABEL_16:
    v14 = v13;
    v15 = [v13 _geoMapItem];
    if (v15 && (v16 = [v15 _identifier], swift_unknownObjectRelease(), v16) && (v17 = objc_msgSend(v16, "mapsIdentifierString"), v16, v17))
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == v34 && v20 == v35)
      {

        goto LABEL_9;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (v10 != v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= v23)
        {
          goto LABEL_54;
        }

        if (v11 >= v23)
        {
          goto LABEL_55;
        }

        v24 = *(v7 + 32 + 8 * v11);
        v21 = *(v7 + 32 + 8 * v10);
        v22 = v24;
      }

      v25 = v22;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_1000564AC(v7);
        v26 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v26) = 0;
      }

      v27 = v7 & 0xFFFFFFFFFFFFFF8;
      v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v25;

      if ((v7 & 0x8000000000000000) != 0 || v26)
      {
        v7 = sub_1000564AC(v7);
        v27 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_46:
          __break(1u);
          return v10;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v11 >= *(v27 + 16))
      {
        goto LABEL_52;
      }

      v29 = v27 + 8 * v11;
      v30 = *(v29 + 32);
      *(v29 + 32) = v21;

      *a1 = v7;
    }

LABEL_8:
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_51;
    }

LABEL_9:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void *sub_100325110(unint64_t a1, double a2, double a3)
{
  v26 = [objc_allocWithZone(CLLocation) initWithLatitude:a2 longitude:a3];
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_100511978(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v27;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 _geoMapItem];
      v10 = v9;
      if (v9)
      {
        [v9 centerCoordinate];
        v12 = v11;
        v14 = v13;
        swift_unknownObjectRelease();
        v15 = [objc_allocWithZone(CLLocation) initWithLatitude:v12 longitude:v14];
        [v15 distanceFromLocation:v26];
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v27 = v6;
      v19 = v6[2];
      v18 = v6[3];
      if (v19 >= v18 >> 1)
      {
        sub_100511978((v18 > 1), v19 + 1, 1);
        v6 = v27;
      }

      v6[2] = v19 + 1;
      v20 = &v6[3 * v19];
      v20[4] = v8;
      ++v5;
      v20[5] = v17;
      *(v20 + 48) = v10 == 0;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v27 = v6;

  sub_10031F620(&v27);

  v21 = v27;
  v22 = v27[2];
  if (v22)
  {
    v27 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v23 = 4;
    do
    {
      v24 = v21[v23];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += 3;
      --v22;
    }

    while (v22);

    return v27;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1003253D8()
{
  v1 = sub_1000CE6B8(&unk_101919D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100325500()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  sub_100100D84(v1);
  return sub_100100D94(v3);
}

uint64_t sub_10032553C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;

  return sub_100320560();
}

uint64_t sub_10032558C()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t sub_100325644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_10032571C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
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

uint64_t sub_100325808(uint64_t *a1)
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
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100325964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
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

uint64_t sub_100325A50(uint64_t *a1)
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
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

id sub_100325BAC(uint64_t a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    ObjectType = swift_getObjectType();
    v3 = objc_allocWithZone(ObjectType);
    type metadata accessor for VisitLocationCorrectionSearchableViewModel();
    v4 = swift_allocObject();
    v5 = swift_unknownObjectRetain();
    *&v3[OBJC_IVAR____TtC4Maps47VisitLocationCorrectionSearchableViewController_viewModel] = sub_1002F60C8(v5, v4);
    v8.receiver = v3;
    v8.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v6;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

double sub_100325D54@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ActionBarItemType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC4Maps47VisitLocationCorrectionSearchableViewController_viewModel);
  sub_1000CE6B8(&qword_101908400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E47B0;
  (*(v4 + 104))(v6, enum case for ActionBarItemType.search(_:), v3);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();

  *(v8 + 32) = ActionBarItemViewModel.init(_:)();
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v9 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  v10 = type metadata accessor for VisitLocationCorrectionSearchableView();
  a1[3] = v10;
  a1[4] = sub_10032688C(&qword_101919D90, type metadata accessor for VisitLocationCorrectionSearchableView);
  v11 = sub_10001A848(a1);
  *v11 = v7;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  State.init(wrappedValue:)();
  v12 = v25;
  *(v11 + 1) = v24;
  v11[3] = v12;
  LOBYTE(v23[0]) = 0;
  State.init(wrappedValue:)();
  v13 = *(&v24 + 1);
  *(v11 + 32) = v24;
  v11[5] = v13;
  LOBYTE(v23[0]) = 0;
  State.init(wrappedValue:)();
  v14 = *(&v24 + 1);
  *(v11 + 48) = v24;
  v11[7] = v14;
  v11[8] = swift_getKeyPath();
  *(v11 + 72) = 0;
  v23[0] = 0;
  sub_1000CE6B8(&qword_101919618);
  State.init(wrappedValue:)();
  *(v11 + 5) = v24;
  v15 = v10[10];
  *(v11 + v15) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190CBC8);
  swift_storeEnumTagMultiPayload();
  v16 = (v11 + v10[11]);
  v23[0] = v9;
  State.init(wrappedValue:)();
  v17 = *(&v24 + 1);
  *v16 = v24;
  v16[1] = v17;
  v18 = v11 + v10[12];
  LOBYTE(v23[0]) = 0;
  State.init(wrappedValue:)();
  v19 = *(&v24 + 1);
  *v18 = v24;
  *(v18 + 1) = v19;
  v20 = v10[13];
  v23[0] = 0;
  sub_1000CE6B8(&unk_101919908);
  State.init(wrappedValue:)();
  *(v11 + v20) = v24;
  v21 = v10[14];
  v23[0] = 0;
  State.init(wrappedValue:)();
  result = *&v24;
  *(v11 + v21) = v24;
  return result;
}

uint64_t sub_100326144()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didResignCurrent");
  v1 = *&v0[OBJC_IVAR____TtC4Maps47VisitLocationCorrectionSearchableViewController_viewModel];
  swift_getKeyPath();
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 32))
  {

    Task.cancel()();
  }

  return result;
}

void sub_100326284()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 cardPresentationController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 setPresentedModally:1];

  v3 = [v0 cardPresentationController];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setTakesAvailableHeight:1];

  sub_1003263C0();
  v5 = [objc_opt_self() sharedService];
  if (v5)
  {
    v6 = v5;

    v7 = String._bridgeToObjectiveC()();

    [v6 captureUserAction:21 onTarget:150 eventValue:v7];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1003263C0()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10032688C(&unk_101919D20, type metadata accessor for VisitLocationCorrectionSearchableViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1003265E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleDismissAction:Strong];
    v2 = [objc_opt_self() sharedService];
    if (v2)
    {
      v3 = v2;

      v4 = String._bridgeToObjectiveC()();

      [v3 captureUserAction:516 onTarget:150 eventValue:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003266CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(*&v0[OBJC_IVAR____TtC4Maps47VisitLocationCorrectionSearchableViewController_viewModel] + 16);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
  v5 = *(v3 + 40);
  *(v3 + 40) = 2;
  swift_unknownObjectRetain();
  sub_1002B30A4(v4, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v3 + 56);
    v7 = swift_getObjectType();
    (*(v6 + 8))(v3, &off_10160F590, v7, v6);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "didDismissByGesture");
}

uint64_t sub_10032688C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100326B08(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  sub_10017A750(a1, v17);
  if (!v18)
  {
    sub_1000DB2F4(v17);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  v10 = v16;
  v11 = *(v4 + 16);
  v11(v9, &v16[OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle], v3);
  v11(v6, (v1 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle), v3);
  v12 = static Handle.== infix(_:_:)();

  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  return v12 & 1;
}

uint64_t sub_100326ED4()
{
  v1 = v0;
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _swiftEmptyArrayStorage;
  v7 = *(v3 + 16);
  v46 = OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle;
  v47 = v7;
  v48 = v3 + 16;
  (v7)(v6, v0 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v2, v4);
  v8 = Handle.identifier.getter();
  v10 = v9;
  v11 = *(v3 + 8);
  v44 = v6;
  v45 = v11;
  v50 = v3 + 8;
  v51 = v2;
  v11(v6, v2);
  v55 = v8;
  v56 = v10;
  v53 = 64;
  v54 = 0xE100000000000000;
  sub_1000E5580();
  v12 = StringProtocol.contains<A>(_:)();

  v49 = v1;
  v13 = sub_100327DCC();
  if (!v13)
  {
    if ((v12 & 1) == 0)
    {
LABEL_27:
      v34 = v44;
      v35 = v51;
      v47(v44, v49 + v46, v51);
      Handle.identifier.getter();
      v45(v34, v35);
      v36 = objc_allocWithZone(CNPhoneNumber);
      v37 = String._bridgeToObjectiveC()();

      [v36 initWithStringValue:v37];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v57;
      goto LABEL_30;
    }

LABEL_22:
    v33 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v14 = v13;
  v15 = [v13 phoneNumbers];

  sub_1000CE6B8(&unk_101918B20);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
LABEL_25:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_26:

    if ((v12 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_4:
  v18 = 0;
  v19 = v12 ^ 1;
  v20 = v16 & 0xC000000000000001;
  v41 = v16 & 0xFFFFFFFFFFFFFF8;
  v42 = v16;
  v21 = &selRef_userRequestedWaypoints;
  v43 = v17;
LABEL_5:
  HIDWORD(v40) = v19;
  v22 = v18;
  do
  {
    if (v20)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v41 + 16))
      {
        goto LABEL_24;
      }

      v23 = *(v16 + 8 * v22 + 32);
    }

    v24 = v23;
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v25 = [v23 v21[28]];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = &selRef_userRequestedWaypoints;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v52 = v57;
    if (v12)
    {
    }

    else
    {
      v26 = v44;
      v27 = v12;
      v28 = v51;
      v47(v44, v49 + v46, v51);
      Handle.identifier.getter();
      v45(v26, v28);
      v29 = objc_allocWithZone(CNPhoneNumber);
      v30 = String._bridgeToObjectiveC()();

      v31 = v29;
      v12 = v27;
      v16 = v42;
      v17 = v43;
      v32 = [v31 initWithStringValue:v30];

      LOBYTE(v30) = [v25 isLikePhoneNumber:v32];
      v21 = &selRef_userRequestedWaypoints;

      if (v30)
      {
        v19 = 0;
        if (v18 != v17)
        {
          goto LABEL_5;
        }

        v33 = v52;
        goto LABEL_30;
      }
    }

    ++v22;
  }

  while (v18 != v17);

  v33 = v52;
  if ((v40 & 0x100000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  v38 = sub_1004554BC(v33);

  return v38;
}

char *sub_100327444()
{
  v1 = v0;
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle;
  v8 = *(v3 + 16);
  v8(v6, v0 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v2, v4);
  v9 = Handle.identifier.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v2);
  v39 = v9;
  v40 = v11;
  v38[1] = 64;
  v38[2] = 0xE100000000000000;
  sub_1000E5580();
  LOBYTE(v9) = StringProtocol.contains<A>(_:)();

  if (v9)
  {
    (v8)(v6, v1 + v7, v2);
    v13 = Handle.identifier.getter();
    v15 = v14;
    v12(v6, v2);
    v16 = sub_100356258(0, 1, 1, _swiftEmptyArrayStorage);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100356258((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v13;
    *(v19 + 5) = v15;
    v41 = v16;
  }

  v20 = sub_100327DCC();
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 emailAddresses];

  sub_1000CE6B8(&unk_101918B20);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_18:

    v27 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_100247650(v27);
LABEL_20:
    v37 = sub_100455424(v41);

    return v37;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_8:
  v39 = _swiftEmptyArrayStorage;
  result = sub_1005111C4(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v39;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 value];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v39 = v27;
      v35 = v27[2];
      v34 = v27[3];
      if (v35 >= v34 >> 1)
      {
        sub_1005111C4((v34 > 1), v35 + 1, 1);
        v27 = v39;
      }

      ++v26;
      v27[2] = v35 + 1;
      v36 = &v27[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
    }

    while (v24 != v26);

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032785C()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v15._object = 0x800000010122E9C0;
  v5._countAndFlagsBits = 0x4C20739980E24025;
  v5._object = 0xAF6E6F697461636FLL;
  v6._object = 0x800000010122E990;
  v6._countAndFlagsBits = 0xD000000000000025;
  v15._countAndFlagsBits = 0x1000000000000054;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, qword_1019600D8, v5, v15);
  sub_1000CE6B8(&unk_10190D5C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D30;
  v8 = sub_1003277E8();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000DA61C();
  if (!v10)
  {
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v1);
    v8 = Handle.identifier.getter();
    v10 = v11;
    (*(v2 + 8))(v4, v1);
  }

  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = String.init(format:_:)();

  return v12;
}

id sub_100327AA0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100327B2C(SEL *a1)
{
  v20 = a1;
  v2 = v1;
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedManager];
  v19 = result;
  if (result)
  {
    v8 = OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle;
    v9 = *(v4 + 16);
    v9(v6, v2 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v3);
    Handle.identifier.getter();
    v10 = *(v4 + 8);
    v10(v6, v3);
    v11 = String._bridgeToObjectiveC()();

    v9(v6, v2 + v8, v3);
    v12 = Handle.identifier.getter();
    v14 = v13;
    v10(v6, v3);
    v23 = v12;
    v24 = v14;
    v21 = 64;
    v22 = 0xE100000000000000;
    sub_1000E5580();
    StringProtocol.contains<A>(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();

    v16 = v19;
    v17 = [v19 *v20];

    if (!v17)
    {
      return 0;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100327DCC()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle;
  v7 = *(v2 + 16);
  v18 = v0;
  v7(v5, v0 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v1, v3);
  v8 = Handle.identifier.getter();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v5, v1);
  v21 = v8;
  v22 = v10;
  v19 = 64;
  v20 = 0xE100000000000000;
  sub_1000E5580();
  LOBYTE(v8) = StringProtocol.contains<A>(_:)();

  result = [objc_opt_self() sharedManager];
  v13 = result;
  if (v8)
  {
    if (result)
    {
      v14 = &selRef_contactWithEmailAddress_;
LABEL_6:
      (v7)(v5, v18 + v6, v1);
      Handle.identifier.getter();
      v11(v5, v1);
      v15 = String._bridgeToObjectiveC()();

      v16 = [v13 *v14];

      return v16;
    }

    __break(1u);
  }

  else if (result)
  {
    v14 = &selRef_contactWithPhoneNumber_;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_100327FE8(double a1, double a2, double a3)
{
  v7 = type metadata accessor for Handle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100327DCC();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v7);
    Handle.identifier.getter();
    (*(v8 + 8))(v10, v7);
    v13 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v13];
  }

  v14 = [v12 avatarImageWithSize:0 scale:a2 rightToLeft:{a3, a1}];

  return v14;
}

id sub_100328224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsFindMyHandle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MapsFindMyHandle()
{
  result = qword_101919DC0;
  if (!qword_101919DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032831C()
{
  result = type metadata accessor for Handle();
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

unint64_t sub_1003283AC()
{
  result = qword_1019193B0;
  if (!qword_1019193B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019193B0);
  }

  return result;
}

unint64_t sub_1003283F8()
{
  result = qword_101919DD0;
  if (!qword_101919DD0)
  {
    sub_1003283AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919DD0);
  }

  return result;
}

uint64_t sub_10032847C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v64 = type metadata accessor for CenteredCardHeaderNavigation();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v55 - v5;
  v60 = type metadata accessor for CardHeaderSize();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v55 - v10;
  v11 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v67 = type metadata accessor for CardHeaderTextViewModel();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v56 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v65 = &v55 - v22;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v75._object = 0x800000010122EA60;
  v23._countAndFlagsBits = 0x79422074726F53;
  v24._object = 0x800000010122EA40;
  v75._countAndFlagsBits = 0xD000000000000021;
  v24._countAndFlagsBits = 0xD00000000000001ALL;
  v23._object = 0xE700000000000000;
  *&v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v23, v75)._countAndFlagsBits;
  v25 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v26 = type metadata accessor for MapsDesignAccessibilityString();
  v27 = *(v26 - 8);
  v28 = *(v27 + 104);
  v28(v19, v25, v26);
  v29 = *(v27 + 56);
  v29(v19, 0, 1, v26);
  v28(v16, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v26);
  v29(v16, 0, 1, v26);
  v28(v13, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v26);
  v29(v13, 0, 1, v26);
  static HorizontalAlignment.center.getter();
  v30 = v65;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  (*(v66 + 16))(v56, v30, v67);
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  v31 = swift_allocObject();
  v55 = xmmword_1011E1D30;
  *(v31 + 16) = xmmword_1011E1D30;
  v32 = swift_allocObject();
  v33 = *(a1 + 48);
  *(v32 + 48) = *(a1 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = *(a1 + 64);
  v34 = *(a1 + 16);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v34;
  sub_100329194(a1, v74);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  *(swift_allocObject() + 16) = v55;
  v35 = swift_allocObject();
  v36 = *(a1 + 48);
  *(v35 + 48) = *(a1 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a1 + 64);
  v37 = *(a1 + 16);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v37;
  sub_100329194(a1, v74);
  CardButtonViewModel.init(systemImageName:title:tintColor:enabled:systemImagePadding:fontPointSize:fontWeight:axID:showChevron:height:helpText:action:)();
  (*(v59 + 104))(v58, enum case for CardHeaderSize.medium(_:), v60);
  v38 = v68;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  (*(v69 + 16))(v57, v38, v70);
  v39 = v71;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v40 = *(a1 + 32);
  v41 = *(a1 + 56);
  v72 = *(a1 + 40);
  v73 = v41;

  sub_1000CE6B8(&qword_101919DF0);
  State.projectedValue.getter();
  v42 = v74[0];
  v43 = v74[1];
  v60 = v74[2];
  v59 = v74[3];
  v44 = v74[4];
  v45 = v63;
  v46 = *(v63 + 16);
  v47 = v62;
  v48 = v39;
  v49 = v64;
  v46(v62, v48, v64);
  v50 = v61;
  v46(v61, v47, v49);
  v51 = &v50[*(sub_1000CE6B8(&qword_101919DF8) + 48)];
  *v51 = v40;
  *(v51 + 1) = v42;
  v52 = v60;
  *(v51 + 2) = v43;
  *(v51 + 3) = v52;
  *(v51 + 4) = v59;
  *(v51 + 5) = v44;
  v53 = *(v45 + 8);

  v53(v71, v49);
  (*(v69 + 8))(v68, v70);
  (*(v66 + 8))(v65, v67);

  return (v53)(v47, v49);
}

uint64_t sub_100328E48(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101919DF0);
  State.wrappedValue.getter();
  result = v10;
  if (v10)
  {
    v4 = *(a2 + 32);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 32);
      while (1)
      {
        v8 = *v7;
        v7 += 3;
        if (v8 == v9)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = -1;
    }

    return (*(a2 + 16))(v6);
  }

  return result;
}

uint64_t sub_100328EF4()
{
  v1 = type metadata accessor for MapsDesignAccessibilityString();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000CE6B8(&qword_101919DD8);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v8;
  v13 = *(v0 + 64);
  v9 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v10 = sub_1000CE6B8(&qword_101919DE0);
  sub_10032847C(v12, &v7[*(v10 + 44)]);
  *v4 = 0x6B63695074726F53;
  v4[1] = 0xEA00000000007265;
  (*(v2 + 104))(v4, enum case for MapsDesignAccessibilityString.view(_:), v1);
  sub_1003290C8();
  View.mapsDesignAXContainer(withID:)();
  (*(v2 + 8))(v4, v1);
  return sub_10032912C(v7);
}

unint64_t sub_1003290C8()
{
  result = qword_101919DE8;
  if (!qword_101919DE8)
  {
    sub_1000D6664(&qword_101919DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919DE8);
  }

  return result;
}

uint64_t sub_10032912C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101919DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032929C()
{
  result = GEOConfigGetInteger();
  qword_101919E00 = result;
  return result;
}

void sub_10032939C()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960018);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_10004DEB8(v6, v7, &v20);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10004DEB8(*&v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery], *&v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery + 8], &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s is starting for query: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if ([v2 isCancelled])
  {
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v12 = 136315394;
      swift_getObjectType();
      v13 = _typeName(_:qualified:)();
      v15 = sub_10004DEB8(v13, v14, &v20);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_10004DEB8(*&v9[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery], *&v9[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery + 8], &v20);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s is cancelled: %s. Marking it as finished.", v12, 0x16u);
      swift_arrayDestroy();
    }

    v16 = String._bridgeToObjectiveC()();
    [v9 willChangeValueForKey:v16];

    v9[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_isFinishedOperation] = 1;
    v19 = String._bridgeToObjectiveC()();
    [v9 didChangeValueForKey:v19];
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();
    [v2 willChangeValueForKey:v17];

    v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_isExecutingOperation] = 1;
    v18 = String._bridgeToObjectiveC()();
    [v2 didChangeValueForKey:v18];

    [v2 main];
  }
}

uint64_t sub_1003297F4()
{
  v1 = v0[25];
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E4FD0;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D30;
  v5 = v1 + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery;
  v6 = *(v1 + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery);
  v0[26] = v6;
  v7 = *(v5 + 8);
  v0[27] = v7;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000DA61C();
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_bridgeObjectRetain_n();
  v9 = static MapsSyncQueryPredicate.withFormat(_:_:)();

  *(v2 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v8;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  v11 = static MapsSyncQueryPredicate.withFormat(_:_:)();

  *(v2 + 40) = v11;
  v12 = objc_allocWithZone(Predicate);
  v13 = MapsSyncQueryPredicate.init(or:)();
  v0[28] = v13;
  v14 = qword_1019066D8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v0[29] = qword_101919E00;
  v16 = type metadata accessor for MapsSyncRange();
  v0[30] = v16;
  v17 = objc_allocWithZone(v16);
  MapsSyncRange.init(offset:limit:)();
  v18 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v19 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[31] = v19;
  v0[20] = _swiftEmptyArrayStorage;
  type metadata accessor for CollectionPlaceItemRequest();
  v0[32] = CollectionPlaceItemRequest.__allocating_init()();
  v23 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v20 = v19;
  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_100329AD8;

  return v23(v19);
}

uint64_t sub_100329AD8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 256);
  if (v1)
  {

    v7 = sub_10032B0E0;
  }

  else
  {

    *(v5 + 272) = a1;
    v7 = sub_100329C24;
  }

  return _swift_task_switch(v7, 0, 0);
}

void *sub_100329C24()
{
  v1 = *(v0 + 272);
  *(v0 + 280) = v1;

  if (v1 >> 62)
  {
LABEL_26:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:
    v4 = _swiftEmptyArrayStorage;
LABEL_28:

    *(v0 + 288) = v4;
    *(v0 + 296) = v4;
    v25 = sub_10032CE3C();
    v26 = *(v0 + 248);
    if (v25)
    {
      v27 = *(v0 + 224);

      v28 = *(v0 + 8);

      return v28();
    }

    else
    {
      type metadata accessor for FavoriteItemRequest();
      *(v0 + 304) = FavoriteItemRequest.__allocating_init()();
      v37 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
      v29 = swift_task_alloc();
      *(v0 + 312) = v29;
      *v29 = v0;
      v29[1] = sub_10032A090;

      return v37(v26);
    }
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  v3 = 0;
  v34 = *(v0 + 200);
  v35 = v1 & 0xC000000000000001;
  v30 = v1 & 0xFFFFFFFFFFFFFF8;
  v4 = _swiftEmptyArrayStorage;
  v32 = v1;
  v33 = OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context;
  v31 = v2;
  while (1)
  {
    if (v35)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v30 + 16))
      {
        goto LABEL_25;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = dispatch thunk of CollectionPlaceItem.mapItemStorage.getter();
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v3;
    if (v7 == v2)
    {
      goto LABEL_28;
    }
  }

  v9 = v8;
  v36 = v6;
  dispatch thunk of CollectionPlaceItem.customName.getter();
  if (v10)
  {
    v11 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      v14 = String._bridgeToObjectiveC()();
      [v13 setName:v14];
    }

    [v9 setUserValues:{v12, v30}];
  }

  v15 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v9 isPlaceHolderPlace:0];
  v16 = [objc_allocWithZone(SearchResult) initWithMapItem:v15];
  result = sub_10032C574();
  if (!result)
  {
    goto LABEL_36;
  }

  v18 = *(v34 + v33);
  *(v0 + 184) = v16;
  v19 = result;
  sub_1000CE6B8(&unk_10190B250);
  [v18 setMatchInfo:v19 forObject:Optional._bridgeToObjectiveC()()];
  swift_unknownObjectRelease();

  if (v16)
  {
    *(v0 + 192) = v16;
    sub_100014C84(0, &qword_10190E160);
    v20 = v19;
    v21 = v16;
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v23 = v19;
    v22 = 0;
  }

  v24 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v22 sourceType:3 sourceSubtype:1 matchInfo:v19];

  result = swift_unknownObjectRelease();
  if (v24)
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = *(v0 + 160);
    v2 = v31;
    v1 = v32;
    goto LABEL_5;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10032A090(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 304);
  v7 = *(v4 + 248);
  if (v1)
  {

    v8 = sub_10032B550;
  }

  else
  {

    *(v5 + 320) = a1;
    v8 = sub_10032A1F8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10032A1F8()
{
  v78 = v0;
  v1 = v0;
  *(v0 + 328) = *(v0 + 320);

  if (v75 >> 62)
  {
LABEL_34:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v72 = OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context;
      v73 = *(v1 + 200);
      v6 = *(v1 + 288);
      v5 = *(v1 + 296);
      *&v2 = 136315394;
      v70 = v2;
      v71 = v3;
      while (1)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v7 = *(v75 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v10 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
        if (v10)
        {
          v11 = v10;
          v12 = dispatch thunk of FavoriteItem.type.getter() - 1;
          v76 = v8;
          if (v12 < 5u && ((0x17u >> v12) & 1) != 0)
          {
            v13 = qword_1011FB040[v12];
          }

          else
          {
            v74 = v11;
            if (qword_101906728 != -1)
            {
              swift_once();
            }

            v14 = *(v1 + 200);
            v15 = type metadata accessor for Logger();
            sub_100021540(v15, qword_101960018);
            v16 = v14;
            v17 = v8;
            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v77 = v22;
              *v20 = v70;
              swift_getObjectType();
              v23 = _typeName(_:qualified:)();
              v25 = sub_10004DEB8(v23, v24, &v77);

              *(v20 + 4) = v25;
              *(v20 + 12) = 2112;
              *(v20 + 14) = v17;
              *v21 = v17;
              v26 = v17;
              _os_log_impl(&_mh_execute_header, v18, v19, "%s: adding Favorite with unknown sourceSubtype. %@", v20, 0x16u);
              sub_1000DCD10(v21);

              sub_10004E3D0(v22);
            }

            v13 = 0;
            v11 = v74;
          }

          dispatch thunk of FavoriteItem.customName.getter();
          if (v27)
          {
            v28 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
            v29 = v28;
            if (v28)
            {
              v30 = v28;
              v31 = String._bridgeToObjectiveC()();
              [v30 setName:v31];
            }

            [v11 setUserValues:{v29, v70}];
          }

          v32 = v11;
          v33 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v11 isPlaceHolderPlace:0];
          v34 = [objc_allocWithZone(SearchResult) initWithMapItem:v33];
          v35 = sub_10032C574();
          if (!v35)
          {
            goto LABEL_54;
          }

          v36 = *(v73 + v72);
          *(v1 + 168) = v34;
          v37 = v35;
          sub_1000CE6B8(&unk_10190B250);
          [v36 setMatchInfo:v37 forObject:Optional._bridgeToObjectiveC()()];
          swift_unknownObjectRelease();

          if (v34)
          {
            *(v1 + 176) = v34;
            sub_100014C84(0, &qword_10190E160);
            v38 = v37;
            v39 = v34;
            v40 = _bridgeAnythingToObjectiveC<A>(_:)();
          }

          else
          {
            v41 = v37;
            v40 = 0;
          }

          v42 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v40 sourceType:9 sourceSubtype:v13 matchInfo:v37];

          v35 = swift_unknownObjectRelease();
          if (!v42)
          {
            __break(1u);
LABEL_54:
            __break(1u);
            return _swift_continuation_await(v35);
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v6 = *(v1 + 160);
          v5 = v6;
          v3 = v71;
          v9 = v4 + 1;
        }

        else
        {
        }

        ++v4;
        if (v9 == v3)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v6 = *(v1 + 288);
  v5 = *(v1 + 296);
LABEL_36:
  *(v1 + 336) = v6;
  *(v1 + 344) = v5;

  if ((GEOConfigGetBOOL() & 1) != 0 && *(*(v1 + 200) + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_includeCustomRoutes) == 1)
  {
    if ((sub_10032CE3C() & 1) == 0)
    {
      v64 = *(v1 + 240);
      v65 = objc_opt_self();
      v66 = String._bridgeToObjectiveC()();
      *(v1 + 352) = v66;
      v67 = objc_allocWithZone(v64);
      v68 = MapsSyncRange.init(offset:limit:)();
      *(v1 + 360) = v68;
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 144;
      *(v1 + 24) = sub_10032AB78;
      v69 = swift_continuation_init();
      *(v1 + 136) = sub_1000CE6B8(&qword_101919E68);
      *(v1 + 80) = _NSConcreteStackBlock;
      *(v1 + 88) = 1107296256;
      *(v1 + 96) = sub_10032C330;
      *(v1 + 104) = &unk_1016118C8;
      *(v1 + 112) = v69;
      [v65 fetchSavedRoutesWithType:1 matchingQuery:v66 range:v68 completion:v1 + 80];
      v35 = (v1 + 16);

      return _swift_continuation_await(v35);
    }

    v43 = *(v1 + 248);
    v44 = *(v1 + 224);
  }

  else
  {

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v45 = *(v1 + 200);
    v46 = type metadata accessor for Logger();
    sub_100021540(v46, qword_101960018);
    v47 = v45;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v50 = 136315394;
      swift_getObjectType();
      v51 = _typeName(_:qualified:)();
      v53 = sub_10004DEB8(v51, v52, &v77);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      sub_100014C84(0, &qword_10191FF40);

      v54 = Array.description.getter();
      v56 = v55;

      v57 = sub_10004DEB8(v54, v56, &v77);

      *(v50 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "%s: calling delegate method with items: %s", v50, 0x16u);
      swift_arrayDestroy();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v59 = Strong;
      v60 = *(v1 + 200);
      sub_100014C84(0, &qword_10191FF40);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v59 searchMapsSyncOperation:v60 didMatchResults:isa];
      swift_unknownObjectRelease();
    }

    v43 = *(v1 + 248);
    v44 = *(v1 + 224);
    sub_10032D0A8();
  }

  v62 = *(v1 + 8);

  return v62();
}

uint64_t sub_10032AB78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_10032BEC0;
  }

  else
  {
    v2 = sub_10032AC88;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_10032AC88()
{
  v34 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[18];

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v12 = v0[25];
    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_101960018);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v17 = 136315394;
      swift_getObjectType();
      v18 = _typeName(_:qualified:)();
      v20 = sub_10004DEB8(v18, v19, &v33);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      sub_100014C84(0, &qword_10191FF40);

      v21 = Array.description.getter();
      v23 = v22;

      v24 = sub_10004DEB8(v21, v23, &v33);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: calling delegate method with items: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = v0[25];
      sub_100014C84(0, &qword_10191FF40);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v26 searchMapsSyncOperation:v27 didMatchResults:isa];
      swift_unknownObjectRelease();
    }

    v29 = v0[31];
    v30 = v0[28];
    sub_10032D0A8();

    v31 = v0[1];

    return v31();
  }

LABEL_17:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  v5 = 0;
  v32 = v0[25];
  v6 = OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = sub_10032C574();
    if (!result)
    {
      break;
    }

    v11 = result;
    [*(v32 + v6) setMatchInfo:result forObject:v8];
    result = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v8 sourceType:3 sourceSubtype:3 matchInfo:v11];
    if (!result)
    {
      goto LABEL_29;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v5;
    if (v9 == v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_10032B0E0()
{
  *(v0 + 280) = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_35:
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v1)
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_26:

    *(v0 + 288) = v3;
    *(v0 + 296) = v3;
    v24 = sub_10032CE3C();
    v25 = *(v0 + 248);
    if (v24)
    {
      v26 = *(v0 + 224);

      v27 = *(v0 + 8);

      return v27();
    }

    else
    {
      type metadata accessor for FavoriteItemRequest();
      *(v0 + 304) = FavoriteItemRequest.__allocating_init()();
      v33 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
      v28 = swift_task_alloc();
      *(v0 + 312) = v28;
      *v28 = v0;
      v28[1] = sub_10032A090;

      return v33(v25);
    }
  }

  v2 = 0;
  v29 = v1;
  v31 = *(v0 + 200);
  v30 = OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v4 = _swiftEmptyArrayStorage[v2 + 4];
    }

    v5 = v4;
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v7 = dispatch thunk of CollectionPlaceItem.mapItemStorage.getter();
    if (!v7)
    {

      goto LABEL_6;
    }

    v8 = v7;
    dispatch thunk of CollectionPlaceItem.customName.getter();
    if (v9)
    {
      v10 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        v13 = String._bridgeToObjectiveC()();
        [v12 setName:v13];
      }

      [v8 setUserValues:v11];
    }

    v32 = v5;
    v14 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v8 isPlaceHolderPlace:0];
    v15 = [objc_allocWithZone(SearchResult) initWithMapItem:v14];
    result = sub_10032C574();
    if (!result)
    {
      break;
    }

    v17 = *(v31 + v30);
    *(v0 + 184) = v15;
    v18 = result;
    sub_1000CE6B8(&unk_10190B250);
    [v17 setMatchInfo:v18 forObject:Optional._bridgeToObjectiveC()()];
    swift_unknownObjectRelease();

    if (v15)
    {
      *(v0 + 192) = v15;
      sub_100014C84(0, &qword_10190E160);
      v19 = v18;
      v20 = v15;
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v22 = v18;
      v21 = 0;
    }

    v23 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v21 sourceType:3 sourceSubtype:1 matchInfo:v18];

    result = swift_unknownObjectRelease();
    if (!v23)
    {
      goto LABEL_37;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = *(v0 + 160);
    v1 = v29;
LABEL_6:
    ++v2;
    if (v6 == v1)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10032B550(__n128 a1)
{
  v75 = v1;
  v2 = v1;
  *(v1 + 328) = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_34:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v70 = OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context;
      v71 = *(v2 + 200);
      v7 = *(v2 + 288);
      v6 = *(v2 + 296);
      a1.n128_u64[0] = 136315394;
      v68 = a1;
      v69 = v3;
      while (1)
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v8 = _swiftEmptyArrayStorage[v5 + 4];
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v73 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
        if (v73)
        {
          v11 = dispatch thunk of FavoriteItem.type.getter() - 1;
          v72 = v9;
          if (v11 < 5u && ((0x17u >> v11) & 1) != 0)
          {
            v12 = qword_1011FB040[v11];
          }

          else
          {
            if (p_cache[229] != -1)
            {
              swift_once();
            }

            v13 = *(v2 + 200);
            v14 = type metadata accessor for Logger();
            sub_100021540(v14, qword_101960018);
            v15 = v13;
            v16 = v9;
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              v74 = v21;
              *v19 = v68.n128_u32[0];
              swift_getObjectType();
              v22 = _typeName(_:qualified:)();
              v24 = sub_10004DEB8(v22, v23, &v74);
              p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);

              *(v19 + 4) = v24;
              *(v19 + 12) = 2112;
              *(v19 + 14) = v16;
              *v20 = v16;
              v25 = v16;
              _os_log_impl(&_mh_execute_header, v17, v18, "%s: adding Favorite with unknown sourceSubtype. %@", v19, 0x16u);
              sub_1000DCD10(v20);

              sub_10004E3D0(v21);
            }

            v12 = 0;
          }

          dispatch thunk of FavoriteItem.customName.getter();
          if (v26)
          {
            v27 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
              v30 = String._bridgeToObjectiveC()();
              [v29 setName:v30];
            }

            [v73 setUserValues:{v28, *&v68}];
          }

          v31 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v73 isPlaceHolderPlace:0];
          v32 = [objc_allocWithZone(SearchResult) initWithMapItem:v31];
          v33 = sub_10032C574();
          if (!v33)
          {
            __break(1u);
LABEL_54:
            __break(1u);
            return _swift_continuation_await(v33);
          }

          v34 = *(v71 + v70);
          *(v2 + 168) = v32;
          v35 = v33;
          sub_1000CE6B8(&unk_10190B250);
          [v34 setMatchInfo:v35 forObject:Optional._bridgeToObjectiveC()()];
          swift_unknownObjectRelease();

          if (v32)
          {
            *(v2 + 176) = v32;
            sub_100014C84(0, &qword_10190E160);
            v36 = v35;
            v37 = v32;
            v38 = _bridgeAnythingToObjectiveC<A>(_:)();
          }

          else
          {
            v39 = v35;
            v38 = 0;
          }

          v40 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v38 sourceType:9 sourceSubtype:v12 matchInfo:v35];

          v33 = swift_unknownObjectRelease();
          if (!v40)
          {
            goto LABEL_54;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v7 = *(v2 + 160);
          v6 = v7;
          v3 = v69;
          v10 = v5 + 1;
        }

        else
        {
        }

        ++v5;
        if (v10 == v3)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v7 = *(v2 + 288);
  v6 = *(v2 + 296);
LABEL_36:
  *(v2 + 336) = v7;
  *(v2 + 344) = v6;

  if ((GEOConfigGetBOOL() & 1) != 0 && *(*(v2 + 200) + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_includeCustomRoutes) == 1)
  {
    if ((sub_10032CE3C() & 1) == 0)
    {
      v62 = *(v2 + 240);
      v63 = objc_opt_self();
      v64 = String._bridgeToObjectiveC()();
      *(v2 + 352) = v64;
      v65 = objc_allocWithZone(v62);
      v66 = MapsSyncRange.init(offset:limit:)();
      *(v2 + 360) = v66;
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 144;
      *(v2 + 24) = sub_10032AB78;
      v67 = swift_continuation_init();
      *(v2 + 136) = sub_1000CE6B8(&qword_101919E68);
      *(v2 + 80) = _NSConcreteStackBlock;
      *(v2 + 88) = 1107296256;
      *(v2 + 96) = sub_10032C330;
      *(v2 + 104) = &unk_1016118C8;
      *(v2 + 112) = v67;
      [v63 fetchSavedRoutesWithType:1 matchingQuery:v64 range:v66 completion:v2 + 80];
      v33 = (v2 + 16);

      return _swift_continuation_await(v33);
    }

    v41 = *(v2 + 248);
    v42 = *(v2 + 224);
  }

  else
  {

    if (p_cache[229] != -1)
    {
      swift_once();
    }

    v43 = *(v2 + 200);
    v44 = type metadata accessor for Logger();
    sub_100021540(v44, qword_101960018);
    v45 = v43;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v48 = 136315394;
      swift_getObjectType();
      v49 = _typeName(_:qualified:)();
      v51 = sub_10004DEB8(v49, v50, &v74);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      sub_100014C84(0, &qword_10191FF40);

      v52 = Array.description.getter();
      v54 = v53;

      v55 = sub_10004DEB8(v52, v54, &v74);

      *(v48 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s: calling delegate method with items: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v57 = Strong;
      v58 = *(v2 + 200);
      sub_100014C84(0, &qword_10191FF40);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v57 searchMapsSyncOperation:v58 didMatchResults:isa];
      swift_unknownObjectRelease();
    }

    v41 = *(v2 + 248);
    v42 = *(v2 + 224);
    sub_10032D0A8();
  }

  v60 = *(v2 + 8);

  return v60();
}

id sub_10032BEC0()
{
  v33 = v0;
  v1 = v0[45];
  v2 = v0[44];
  swift_willThrow();

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v11 = v0[25];
    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960018);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v16 = 136315394;
      swift_getObjectType();
      v17 = _typeName(_:qualified:)();
      v19 = sub_10004DEB8(v17, v18, v32);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      sub_100014C84(0, &qword_10191FF40);

      v20 = Array.description.getter();
      v22 = v21;

      v23 = sub_10004DEB8(v20, v22, v32);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: calling delegate method with items: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = v0[25];
      sub_100014C84(0, &qword_10191FF40);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 searchMapsSyncOperation:v26 didMatchResults:isa];
      swift_unknownObjectRelease();
    }

    v28 = v0[31];
    v29 = v0[28];
    sub_10032D0A8();

    v30 = v0[1];

    return v30();
  }

LABEL_17:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  v31 = v0[25];
  v5 = OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context;
  while (1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = _swiftEmptyArrayStorage[v4 + 4];
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = sub_10032C574();
    if (!result)
    {
      break;
    }

    v10 = result;
    [*(v31 + v5) setMatchInfo:result forObject:v7];
    result = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v7 sourceType:3 sourceSubtype:3 matchInfo:v10];
    if (!result)
    {
      goto LABEL_29;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v4;
    if (v8 == v3)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10032C330(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v6 = swift_allocError();
    *v7 = a4;
    v8 = a4;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    sub_100014C84(0, &qword_10190EC50);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = *(*(v5 + 64) + 40);
    *v11 = v9;
    v11[1] = v10;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_10032C574()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context) query];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 matchesInString:v2];

  v4 = [objc_allocWithZone(AutocompleteMatchInfo) initWithType:1];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    v6 = v4;
    [v3 fractionOfMatch];
    [v6 setFractionOfMatch:?];
    v7 = [v3 prefixLastTokenMatchCover];
    [v6 setPrefixLastTokenMatchCover:v7];

    v8 = [v3 prefixMatchCover];
    [v6 setPrefixMatchCover:v8];

    v9 = [v3 prefixMatchPosition];
    [v6 setPrefixMatchPosition:v9];

    [v6 setPrefixMatchesWordBoundary:{objc_msgSend(v3, "prefixMatchesWordBoundary")}];
    v10 = [v3 firstPrefixToken];
    [v6 setFirstPrefixToken:v10];

    v11 = [v3 secondPrefixToken];
    [v6 setSecondPrefixToken:v11];

    v3 = v11;
LABEL_4:
  }

  return v5;
}

void sub_10032C7C8()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960018);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v5 = 136315650;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = sub_10004DEB8(v7, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    *(v5 + 22) = 2080;
    v10 = *&v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery];
    v11 = *&v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery + 8];
    v12 = v2;
    *(v5 + 24) = sub_10004DEB8(v10, v11, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: %@ was cancelled for searchQuery:%s.", v5, 0x20u);
    sub_1000DCD10(v6);

    swift_arrayDestroy();
  }

  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    swift_getObjectType();
    v18 = _typeName(_:qualified:)();
    v20 = sub_10004DEB8(v18, v19, &v24);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: calling delegate method with no items", v16, 0xCu);
    sub_10004E3D0(v17);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_100014C84(0, &qword_10191FF40);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v22 searchMapsSyncOperation:v13 didMatchResults:isa];

    swift_unknownObjectRelease();
  }

  if (*&v13[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_task])
  {

    Task.cancel()();
  }

  sub_10032D0A8();
}

id sub_10032CB98()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960018);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136315650;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = sub_10004DEB8(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    *(v5 + 22) = 2080;
    v10 = *&v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery];
    v11 = *&v2[OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery + 8];
    v12 = v2;

    v13 = sub_10004DEB8(v10, v11, &v16);

    *(v5 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: deallocating operation:%@ for query:%s", v5, 0x20u);
    sub_1000DCD10(v6);

    swift_arrayDestroy();
  }

  sub_10032D0A8();
  v14 = type metadata accessor for SearchMapsSyncOperation();
  v17.receiver = v2;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, "dealloc");
}

uint64_t sub_10032CE3C()
{
  if (([v0 isFinished] & 1) != 0 || (result = objc_msgSend(v0, "isCancelled"), result))
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960018);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v6 = 136315394;
      swift_getObjectType();
      v9 = _typeName(_:qualified:)();
      v11 = sub_10004DEB8(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      *(v6 + 14) = v3;
      *v7 = v3;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: %%@ is cancelled or finished: %@. Treating it as No-Op.", v6, 0x16u);
      sub_1000DCD10(v7);

      sub_10004E3D0(v8);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_100014C84(0, &qword_10191FF40);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v14 searchMapsSyncOperation:v3 didMatchResults:isa];

      swift_unknownObjectRelease();
    }

    sub_10032D0A8();
    return 1;
  }

  return result;
}

void sub_10032D0A8()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v2];

  *(v0 + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_isFinishedOperation) = 1;
  *(v0 + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_isExecutingOperation) = 0;
  v3 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v3];

  v4 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v4];

  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101960018);
  v6 = v0;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v6 name];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = sub_10004DEB8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Marking the operation : %s as finished and set executing as false", v8, 0xCu);
    sub_10004E3D0(v9);
  }
}

uint64_t sub_10032D3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1003297D4(a1, v4, v5, v6);
}

uint64_t sub_10032D484()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FF40);
  sub_100021540(v0, qword_10195FF40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10032D580()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FFE8);
  sub_100021540(v0, qword_10195FFE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10032D714()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019600A8);
  sub_100021540(v0, qword_1019600A8);
  return Logger.init(subsystem:category:)();
}

id sub_10032D920(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController] = 0;
  v2 = OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem] = 0;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker] = 0;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController] = 0;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController] = 0;
  *&v1[v2] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TransitLineContext();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10032DA00(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  if (![v4 isTopContext:v1])
  {
    goto LABEL_8;
  }

  v5 = [v4 mapView];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  if ([a1 _maps_numLines] != 1)
  {

LABEL_8:
    return 0;
  }

  v7 = [v6 _selectedTransitLineIDs];
  if (v7)
  {
    v8 = v7;
    sub_100014C84(0, &unk_101918370);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v11 = [a1 _maps_lineIdentifiers];
  if (v11)
  {
    v12 = v11;
    sub_100014C84(0, &unk_101918370);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9)
    {
      if (v13)
      {
        v14 = sub_1001F11E4(v9, v13);

        return v14 & 1;
      }

      goto LABEL_16;
    }

    if (v13)
    {

      return 0;
    }
  }

  else
  {
    if (v9)
    {
LABEL_16:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_10032DC10(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v2)
  {
    v4 = v2;
    if ([v4 isTopContext:v1])
    {
      v5 = [v4 mapView];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 _selectedTransitLineIDs];
        if (v7)
        {
          v8 = v7;
          sub_100014C84(0, &unk_101918370);
          v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000CE6B8(&qword_101908400);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_1011E47B0;
          *(v10 + 32) = a1;
          v11 = a1;
          v12 = sub_1001F11E4(v9, v10);

          return v12 & 1;
        }
      }
    }
  }

  return 0;
}

void sub_10032DDDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v1)
  {
    v2 = [v1 mapView];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() sharedService];
      if (v4)
      {
        v5 = v4;
        v6 = [v3 mapRegion];
        v7 = [v5 mapsDefaultTraitsForMapRegion:v6 source:20];

        if (v7)
        {

          return;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }
  }

  v8 = [objc_opt_self() sharedService];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 mapsDefaultTraits];

  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

void sub_10032DF04(void *a1, int a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController;
  v14 = *&v2[OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController];
  if (v14)
  {
    v61 = [v14 mapView];
    if (v61)
    {
      v15 = [a1 _maps_numLines];
      if (v15)
      {
        v16 = v15;
        v59 = a2;
        v17 = [v61 mapRegion];
        if (!v17)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v18 = v17;
        Date.init()();
        v60 = v18;
        if (v16 == 1)
        {
          v19 = [a1 _maps_lineIdentifiers];
          if (!v19)
          {
LABEL_29:
            __break(1u);
            return;
          }

          v20 = v19;
          sub_100014C84(0, &unk_101918370);
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v21 >> 62)
          {
            v22 = &selRef_lowercaseString;
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_9;
            }
          }

          else
          {
            v22 = &selRef_lowercaseString;
            if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_9:
              if ((v21 & 0xC000000000000001) != 0)
              {
                v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                goto LABEL_12;
              }

              if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v23 = *(v21 + 32);
LABEL_12:
                v58 = v23;

                [v61 _deselectTransitLineMarker];
                v24 = *&v2[v13];
                if (v24)
                {
                  v25 = [v24 v22[237]];
                  if (v25)
                  {
                    v26 = v25;
                    [v25 _selectTransitLineMarkerWithIdentifier:v58];
                  }
                }

                sub_10032DDDC();
                v57 = v27;
                (*(v6 + 16))(v8, v12, v5);
                v28 = (*(v6 + 80) + 48) & ~*(v6 + 80);
                v29 = swift_allocObject();
                v30 = v58;
                *(v29 + 16) = v2;
                *(v29 + 24) = v30;
                *(v29 + 32) = v59 & 1;
                v31 = v60;
                *(v29 + 40) = v60;
                (*(v6 + 32))(v29 + v28, v8, v5);
                aBlock[4] = sub_10032FBDC;
                aBlock[5] = v29;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_10032FD30;
                aBlock[3] = &unk_101611968;
                v32 = _Block_copy(aBlock);
                v33 = v2;
                v34 = v31;
                v35 = v30;

                v36 = a1;
                v37 = v57;
                [v36 _maps_loadLineInfoUsingTraits:v57 withCompletion:v32];

                _Block_release(v32);
                goto LABEL_24;
              }

              __break(1u);
              goto LABEL_28;
            }
          }

          [v61 _deselectTransitLineMarker];

LABEL_24:
          (*(v6 + 8))(v12, v5);
          return;
        }

        v39 = objc_allocWithZone(type metadata accessor for TransitLineDisambiguationContaineeViewController());
        v40 = sub_100133C78(0);
        [v40 setContaineeDelegate:v2];
        v41 = *&v2[OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController];
        *&v2[OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController] = v40;
        v42 = v40;

        v43 = *&v2[v13];
        if (v43)
        {
          [v43 setNeedsUpdateComponent:@"cards" animated:1];
        }

        (*(v6 + 16))(v8, v12, v5);
        v44 = (*(v6 + 80) + 40) & ~*(v6 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = v2;
        *(v45 + 24) = v59 & 1;
        v46 = v60;
        *(v45 + 32) = v60;
        (*(v6 + 32))(v45 + v44, v8, v5);
        v47 = &v42[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection];
        v48 = *&v42[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection];
        *v47 = sub_10032FC68;
        v47[1] = v45;
        v49 = v2;
        v50 = v46;
        sub_1000588AC(v48);
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = &v42[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError];
        v53 = *&v42[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError];
        *v52 = sub_10032FD20;
        v52[1] = v51;

        sub_1000588AC(v53);

        v54 = *&v42[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker];
        *&v42[OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker] = a1;
        v55 = a1;

        sub_10041A8F4(a1);
        (*(v6 + 8))(v12, v5);
      }

      else
      {
        [v61 _deselectTransitLineMarker];
        v38 = v61;
      }
    }
  }
}

void sub_10032E534(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController;
  v5 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v5)
  {
    return;
  }

  v9 = v5;
  if ([v9 isTopContext:a3])
  {
    sub_10032F450();
    v10 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 lineItem];
      if (v12)
      {
        [v11 setLineItem:v12 loading:0];

        swift_unknownObjectRelease();
        v13 = *(a3 + v4);
        if (!v13)
        {
          return;
        }

        goto LABEL_9;
      }
    }
  }

  v13 = *(a3 + v4);
  if (!v13)
  {
    return;
  }

LABEL_9:
  v14 = [v13 mapView];
  if (v14)
  {
    v19 = v14;
    [v14 _deselectLabelMarkerAnimated:1];
    v15 = MKMapItemIdentifierFromGEOTransitLine();
    v16 = *(a3 + v4);
    if (v16)
    {
      v17 = [v16 mapView];
      if (v17)
      {
        v18 = v17;
        [v17 _selectTransitLineMarkerWithIdentifier:v15];
      }
    }

    if (a4)
    {
      sub_10032F954(a2);
    }

    sub_10032F534(a2, 0);
  }
}

void sub_10032E6EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController];
    if (v2)
    {
      v3 = v2;
      if (([v3 isTopContext:v1] & 1) != 0 && (sub_10032F450(), (v4 = *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController]) != 0))
      {
        v5 = v4;
        v6 = [v5 lineItem];
        if (v6)
        {
          [v5 setLineItem:v6 loading:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10032E7F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v6 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
    if (!v6)
    {
      return;
    }

    swift_errorRetain();
    v7 = v6;
    if ([v7 isTopContext:a3])
    {
      sub_10032F450();
      v8 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
      if (v8)
      {
        v9 = v8;
        v10 = [v9 lineItem];
        if (v10)
        {
          [v9 setLineItem:v10 loading:0];

          swift_unknownObjectRelease();
LABEL_31:

          return;
        }
      }
    }

    goto LABEL_31;
  }

  if (a1)
  {
    v28 = MKMapItemIdentifiersToGEOMapItemIdentifier();
    v12 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (a1 >> 62)
    {
LABEL_40:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
LABEL_10:
        v27 = v12;
        v14 = 0;
        v12 = &selRef_hasMarkedText;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v14 >= v27[2])
            {
              goto LABEL_39;
            }

            v15 = *(a1 + 8 * v14 + 32);
            swift_unknownObjectRetain();
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v17 = [v15 identifier];
          if (v17)
          {
            v18 = v17;
            sub_100014C84(0, &qword_101919ED0);
            v19 = v28;
            v20 = static NSObject.== infix(_:_:)();

            if (v20)
            {
              break;
            }
          }

          swift_unknownObjectRelease();
          ++v14;
          if (v16 == v13)
          {
            v15 = 0;
            goto LABEL_42;
          }
        }

        if (a5)
        {
          v21 = swift_unknownObjectRetain();
          sub_10032F954(v21);
          swift_unknownObjectRelease();
        }

        goto LABEL_42;
      }
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_10;
      }
    }

    v15 = 0;
LABEL_42:
    sub_10032F534(v15, 0);

    goto LABEL_43;
  }

  v22 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v22)
  {
    return;
  }

  v29 = v22;
  if ([v29 isTopContext:a3])
  {
    sub_10032F450();
    v23 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
    if (v23)
    {
      v24 = v23;
      v25 = [v24 lineItem];
      if (v25)
      {
        [v24 setLineItem:v25 loading:0];

LABEL_43:

        swift_unknownObjectRelease();
        return;
      }
    }
  }
}

void sub_10032EBF4(void *a1, int a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController;
  v14 = *&v2[OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController];
  if (v14)
  {
    v15 = [v14 mapView];
    if (v15)
    {
      v45 = v6;
      v48 = a2;
      v47 = v15;
      v46 = [v15 mapRegion];
      if (!v46)
      {
        __break(1u);
        goto LABEL_21;
      }

      Date.init()();
      v16 = MKMapItemIdentifierFromGEOTransitLine();
      if (v48)
      {
        v17 = [a1 mapRegion];
        v18 = *&v2[v13];
        if (!v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = 0;
        v18 = *&v2[v13];
        if (!v18)
        {
          goto LABEL_11;
        }
      }

      v19 = [v18 mapView];
      if (v19)
      {
        v20 = v19;
        [v19 _selectTransitLineMarkerWithIdentifier:v16];
        if (!v17)
        {
LABEL_12:

          if ((sub_1005B1B14(a1) & 1) == 0)
          {
            (*(v45 + 8))(v12, v5);

LABEL_18:
            return;
          }

          v29 = [objc_opt_self() sharedService];
          if (v29)
          {
            v30 = v29;
            sub_1000CE6B8(&qword_101908400);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1011E47B0;
            *(v31 + 32) = v16;
            sub_100014C84(0, &unk_101918370);
            v32 = v16;
            isa = Array._bridgeToObjectiveC()().super.isa;

            sub_10032DDDC();
            v35 = v34;
            v36 = [v30 ticketForTransitLines:isa traits:v34];

            if (v36)
            {
              v37 = v32;
              v38 = v45;
              (*(v45 + 16))(v8, v12, v5);
              v39 = (*(v38 + 80) + 40) & ~*(v38 + 80);
              v40 = swift_allocObject();
              *(v40 + 16) = v2;
              *(v40 + 24) = v48 & 1;
              v41 = v46;
              *(v40 + 32) = v46;
              (*(v38 + 32))(v40 + v39, v8, v5);
              aBlock[4] = sub_10032F828;
              aBlock[5] = v40;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10032FD30;
              aBlock[3] = &unk_101611918;
              v42 = _Block_copy(aBlock);
              swift_unknownObjectRetain();
              v43 = v2;
              v44 = v41;

              [v36 submitWithHandler:v42 networkActivity:0];
              _Block_release(v42);

              swift_unknownObjectRelease_n();
              (*(v38 + 8))(v12, v5);
              return;
            }

            (*(v45 + 8))(v12, v5);

            goto LABEL_18;
          }

LABEL_21:
          __break(1u);
          return;
        }

        v17 = v17;
        GEOMapRectForMapRegion();
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        [v20 setVisibleMapRect:1 animated:{v22, v24, v26, v28}];
      }

LABEL_11:
      v20 = v17;
      goto LABEL_12;
    }
  }
}

void sub_10032F0AC(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v5 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
    if (!v5)
    {
      return;
    }

    swift_errorRetain();
    v6 = v5;
    if ([v6 isTopContext:a3])
    {
      sub_10032F450();
      v7 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
      if (v7)
      {
        v8 = v7;
        v9 = [v8 lineItem];
        if (v9)
        {
          [v8 setLineItem:v9 loading:0];

          swift_unknownObjectRelease();
LABEL_20:

          return;
        }
      }
    }

    goto LABEL_20;
  }

  if (a1)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v20 = a1;
      v13 = a4;
      v14 = _CocoaArrayWrapper.endIndex.getter();
      a4 = v13;
      v15 = v14;
      a1 = v20;
      if (v15)
      {
        goto LABEL_10;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = a4;
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(v10 + 16))
        {
          __break(1u);
          return;
        }

        v11 = a4;
        v12 = *(a1 + 32);
        swift_unknownObjectRetain();
      }

      sub_10032F534(v12, 0);
      if (v11)
      {
        sub_10032F954(v12);
      }

      goto LABEL_15;
    }
  }

  v16 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v16)
  {
    return;
  }

  v21 = v16;
  if ([v21 isTopContext:a3])
  {
    sub_10032F450();
    v17 = *(a3 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
    if (v17)
    {
      v18 = v17;
      v19 = [v18 lineItem];
      if (v19)
      {
        [v18 setLineItem:v19 loading:0];

LABEL_15:

        swift_unknownObjectRelease();
        return;
      }
    }
  }
}

uint64_t sub_10032F338(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000CE6B8(&qword_101919EC0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_10032F450()
{
  v1 = OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController;
  if (!*(v0 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController))
  {
    v2 = [objc_allocWithZone(LineCardViewController) init];
    [v2 setContaineeDelegate:v0];
    [v2 setLineCardDelegate:v0];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_10032F534(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v3)
  {
    return;
  }

  v11 = v3;
  if ([v11 isTopContext:v2])
  {
    sub_10032F450();
    v6 = *(v2 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 lineItem];
      if (v8)
      {
        v9 = v8;
        if (!a1)
        {
          goto LABEL_10;
        }

        v10 = [swift_unknownObjectRetain() muid];
        if (v10 == [v9 muid])
        {
          [v7 setLineItem:a1 loading:0];

          swift_unknownObjectRelease();
LABEL_11:

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        if (a2)
        {
LABEL_10:
          [v7 setLineItem:v9 loading:0];

          goto LABEL_11;
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_10032F754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitLineContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10032F840(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController] = 0;
  v2 = OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem] = 0;
  v3 = OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker] = 0;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController] = 0;
  *&v1[OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController] = 0;
  *&v1[v3] = a1;
  v4 = a1;
  v5 = [v4 _maps_numLines];
  v6 = [v4 _maps_loadedLineItems];
  if (v6)
  {
    v7 = v6;
  }

  else if (v5 < 2)
  {
    v8 = [objc_allocWithZone(IncompleteTransitLineItem) initWithLabelMarker:v4];

    *&v1[v2] = v8;
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for TransitLineContext();
  return objc_msgSendSuper2(&v10, "init");
}

void sub_10032F954(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (!v3)
  {
    return;
  }

  v27 = [v3 mapView];
  if (!v27)
  {
    return;
  }

  v4 = [a1 mapRegion];
  if (v4)
  {
    v5 = v4;
    v6 = [v27 mapRegion];
    if (v6)
    {
      v7 = v6;
      sub_100014C84(0, &qword_101919EC8);
      v8 = v5;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {

        v5 = v8;
        goto LABEL_19;
      }
    }

    else
    {
      v10 = v5;
    }

    Date.timeIntervalSinceNow.getter();
    if (fabs(v11) >= 30.0)
    {
      v12 = [v27 _selectedTransitLineIDs];
      if (v12)
      {
        v13 = v12;
        sub_100014C84(0, &unk_101918370);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v14 = 0;
      }

      sub_1000CE6B8(&qword_101908400);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1011E47B0;
      *(v15 + 32) = MKMapItemIdentifierFromGEOTransitLine();
      if (v14)
      {

        v17 = sub_1001F11E4(v16, v15);

        swift_bridgeObjectRelease_n();
        if (v17)
        {

          goto LABEL_19;
        }
      }

      else
      {
      }

      v18 = v5;
      GEOMapRectForMapRegion();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v27 setVisibleMapRect:1 animated:{v20, v22, v24, v26}];
      v5 = v27;
      v27 = v18;
      goto LABEL_19;
    }

    v27 = v5;
LABEL_19:
  }
}

void sub_10032FBDC(unint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);

  sub_10032E7F4(a1, a2, v5, v6, v7);
}

uint64_t sub_10032FC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = v3 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9, v10);
}

void sub_10032FD74()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "prepareContent");
  v1 = String._bridgeToObjectiveC()();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_1003304C4;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100271778;
  v6[3] = &unk_101611A08;
  v3 = _Block_copy(v6);
  v4 = v0;

  v5 = [v4 addSectionWithTitle:v1 content:v3];
  _Block_release(v3);
}

void sub_10032FEA0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v21 = sub_1003304CC;
    v22 = v5;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100039C64;
    v20 = &unk_101611A58;
    v6 = _Block_copy(&v17);
    v7 = a2;

    v8 = [v3 addButtonRowWithTitle:v4 action:v6];
    _Block_release(v6);

    v9 = [objc_opt_self() sharedInstance];
    if (v9)
    {
      v10 = v9;
      if ([v9 isCurrentlyConnectedToAnyCarScene])
      {
        if ([v10 isChromeAvailable])
        {
          v11 = String._bridgeToObjectiveC()();
          v12 = swift_allocObject();
          *(v12 + 16) = v10;
          v21 = sub_1003304D4;
          v22 = v12;
          v17 = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_100039C64;
          v20 = &unk_101611AA8;
          v13 = _Block_copy(&v17);
          v14 = v10;

          v15 = [v3 addButtonRowWithTitle:v11 action:v13];

          _Block_release(v13);
          v10 = v11;
        }
      }
    }

    v16 = String._bridgeToObjectiveC()();
    [v3 setFooter:v16];
  }
}

void sub_100330140(void *a1)
{
  v3[4] = sub_1003301EC;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1001FDE68;
  v3[3] = &unk_101611AD0;
  v2 = _Block_copy(v3);
  [a1 _performBlockAfterDismiss:1 block:v2];
  _Block_release(v2);
}

void sub_1003301EC(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for IOSMapsDesignIntegrationTestContext()) init];
  [a1 pushContext:v2 animated:1 completion:0];
}

void sub_100330260(void *a1)
{
  v1 = [a1 chromeViewController];
  v2 = [objc_allocWithZone(type metadata accessor for CarMapsDesignIntegrationTestContext()) init];
  [v1 pushContext:v2 animated:1 completion:0];
}

id sub_100330708(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1003307C8()
{
  result = qword_101919F70;
  if (!qword_101919F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919F70);
  }

  return result;
}

unint64_t sub_10033081C@<X0>(void *a1@<X8>)
{
  type metadata accessor for TestLargeCardContaineeViewController.LargeCardViewModel();

  State.init(wrappedValue:)();
  a1[3] = &type metadata for TestLargeCardContaineeViewController.LargeCard;
  result = sub_100332190();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

id sub_100330898()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (result)
  {
    v2 = result;
    [result setPresentedModally:1];

    result = [v0 cardPresentationController];
    if (result)
    {
      v3 = result;
      [result setTakesAvailableHeight:1];

      v4 = *&v0[OBJC_IVAR____TtC4Maps36TestLargeCardContaineeViewController_viewModel];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = *(v4 + 16);
      *(v4 + 16) = sub_1000D8714;
      *(v4 + 24) = v5;

      sub_1000588AC(v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003309F8@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v33 = sub_1000CE6B8(&qword_10191A098);
  v43 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v28 - v3;
  v4 = sub_1000CE6B8(&qword_10191A0A0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v38 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v28 - v7;
  v37 = sub_1000CE6B8(&qword_10191A0A8);
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000CE6B8(&qword_10191A0B0);
  sub_1000414C8(&qword_10191A0B8, &qword_10191A0B0);
  v31 = v11;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000CE6B8(&qword_10191A0C0);
  sub_1000414C8(&qword_10191A0C8, &qword_10191A0C0);
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000CE6B8(&qword_10191A0D0);
  sub_1000414C8(&qword_10191A0D8, &qword_10191A0D0);
  v12 = v39;
  Section<>.init(_:content:)();
  v13 = *(v40 + 16);
  v14 = v36;
  v15 = v37;
  v13(v36, v11, v37);
  v30 = *(v41 + 16);
  v16 = v38;
  v30(v38, v35, v42);
  v29 = *(v43 + 16);
  v17 = v32;
  v18 = v12;
  v19 = v33;
  v29(v32, v18, v33);
  v20 = v34;
  v13(v34, v14, v15);
  v21 = sub_1000CE6B8(&qword_10191A0E0);
  v22 = v42;
  v30(&v20[*(v21 + 48)], v16, v42);
  v29(&v20[*(v21 + 64)], v17, v19);
  v23 = *(v43 + 8);
  v23(v39, v19);
  v24 = *(v41 + 8);
  v24(v35, v22);
  v25 = *(v40 + 8);
  v26 = v37;
  v25(v31, v37);
  v23(v17, v19);
  v24(v38, v22);
  return (v25)(v36, v26);
}

uint64_t sub_100330FC4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v35 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v36 = v9;
  v37 = v8;
  v11 = v10;
  v38 = v12;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v33 = v14;
  v34 = v13;
  v16 = v15;
  LocalizedStringKey.init(stringLiteral:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v30 = v18;
  v31 = v17;
  v20 = v19;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v28 = v22;
  v29 = v21;
  v32 = v23 & 1;
  *a1 = v35;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v37;
  *(a1 + 40) = v36;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v38;
  *(a1 + 64) = v26;
  *(a1 + 72) = v34;
  *(a1 + 80) = v16 & 1;
  *(a1 + 88) = v33;
  *(a1 + 96) = v27;
  *(a1 + 104) = v31;
  *(a1 + 112) = v20 & 1;
  *(a1 + 120) = v30;
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v23 & 1;
  *(a1 + 152) = v24;
  sub_1001C8AFC(v35, v3, v5 & 1);

  sub_1001C8AFC(v37, v36, v11 & 1);

  sub_1001C8AFC(v26, v34, v16 & 1);

  sub_1001C8AFC(v27, v31, v20 & 1);

  sub_1001C8AFC(v29, v28, v32);

  sub_1000F0A40(v29, v28, v32);

  sub_1000F0A40(v27, v31, v20 & 1);

  sub_1000F0A40(v26, v34, v16 & 1);

  sub_1000F0A40(v37, v36, v11 & 1);

  sub_1000F0A40(v35, v3, v5 & 1);
}

uint64_t sub_10033133C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v21 = v4;
  v22 = v3;
  v6 = v5;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v20 = v8;
  v10 = v9;
  v12 = v11;
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16 & 1;
  *a1 = v2;
  *(a1 + 8) = v22;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = v7;
  *(a1 + 40) = v20;
  *(a1 + 48) = v10 & 1;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v16 & 1;
  *(a1 + 88) = v18;
  sub_1001C8AFC(v2, v22, v6 & 1);

  sub_1001C8AFC(v7, v20, v10 & 1);

  sub_1001C8AFC(v13, v15, v17);

  sub_1000F0A40(v13, v15, v17);

  sub_1000F0A40(v7, v20, v10 & 1);

  sub_1000F0A40(v2, v22, v6 & 1);
}

uint64_t sub_10033155C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v30 = v3;
  v31 = v4;
  v6 = v5;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v28 = v9;
  v29 = v8;
  v11 = v10;
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v26 = v20;
  v21 = v6 & 1;
  v23 = v22 & 1;
  *a1 = v2;
  *(a1 + 8) = v30;
  *(a1 + 16) = v21;
  v27 = v21;
  *(a1 + 24) = v31;
  *(a1 + 32) = v7;
  *(a1 + 40) = v29;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v28;
  *(a1 + 64) = v12;
  *(a1 + 72) = v14;
  *(a1 + 80) = v16 & 1;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v22 & 1;
  *(a1 + 120) = v24;
  sub_1001C8AFC(v2, v30, v21);

  sub_1001C8AFC(v7, v29, v11 & 1);

  sub_1001C8AFC(v12, v14, v16 & 1);

  sub_1001C8AFC(v19, v26, v23);

  sub_1000F0A40(v19, v26, v23);

  sub_1000F0A40(v12, v14, v16 & 1);

  sub_1000F0A40(v7, v29, v11 & 1);

  sub_1000F0A40(v2, v30, v27);
}

uint64_t sub_100331824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = type metadata accessor for CardHeaderSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v9 - 8);
  v11 = v16 - v10;
  v12 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  (*(v6 + 104))(v8, enum case for CardHeaderSize.medium(_:), v5);
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_100331B38()
{
  sub_1000CE6B8(&qword_10191A090);
  State.wrappedValue.getter();
  v0 = *(v2 + 16);
  if (!v0)
  {
  }

  v0();

  return sub_1000588AC(v0);
}

uint64_t sub_100331BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000CE6B8(&qword_10191A058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = sub_1000CE6B8(&qword_10191A060);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = *v1;
  v16 = v1[1];
  v17 = v11;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = a1 + *(sub_1000CE6B8(&qword_10191A068) + 44);
  sub_1000CE6B8(&qword_10191A070);
  sub_1000414C8(&qword_10191A078, &qword_10191A070);
  List<>.init(content:)();
  static Edge.Set.top.getter();
  v13 = sub_1000414C8(&qword_10191A080, &qword_10191A058);
  View.listPadding(_:_:)();
  (*(v4 + 8))(v6, v3);
  v18 = v3;
  v19 = v13;
  swift_getOpaqueTypeConformance2();
  View.scrollContentBackground(_:)();
  (*(v8 + 8))(v10, v7);
  v14 = v12 + *(sub_1000CE6B8(&qword_10191A088) + 36);
  sub_100331824(v17, v16, v14);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v14 + *(result + 36)) = 1;
  return result;
}

id sub_100331EC0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC4Maps36TestLargeCardContaineeViewController_michelinStarRestaraunts] = &off_101600A68;
  v7 = OBJC_IVAR____TtC4Maps36TestLargeCardContaineeViewController_viewModel;
  type metadata accessor for TestLargeCardContaineeViewController.LargeCardViewModel();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *&v3[v7] = v8;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100331FF0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps36TestLargeCardContaineeViewController_michelinStarRestaraunts] = &off_101600B58;
  v4 = OBJC_IVAR____TtC4Maps36TestLargeCardContaineeViewController_viewModel;
  type metadata accessor for TestLargeCardContaineeViewController.LargeCardViewModel();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1003320BC()
{
}

unint64_t sub_100332190()
{
  result = qword_10191A050;
  if (!qword_10191A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A050);
  }

  return result;
}

void *sub_100332220()
{
  result = _swiftEmptyArrayStorage;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController);
  if (v2)
  {
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = _swiftEmptyArrayStorage;
  }

  v4 = *(v0 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
  if (v4)
  {
    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1003323C8(uint64_t result)
{
  v1 = OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController;
  if (!*(result + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController))
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem);
    if (v3)
    {
      v4 = swift_unknownObjectRetain();
      v5 = sub_1005B1B14(v4);
      sub_10032F450();
      v6 = *(v2 + v1);
      if (v6)
      {
        [v6 setLineItem:v3 labelMarker:*(v2 + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker) loading:v5 preferredLayout:0];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100332574(void *a1, uint64_t a2)
{
  v3 = [a1 mapView];
  if (v3)
  {
    v10 = v3;
    [v3 _setApplicationState:4];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 updateViewMode:3 animated:1 preserveMapSelection:1];
    }

    v5 = *(a2 + OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem);
    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker);
      swift_unknownObjectRetain();
      if (v6)
      {
        v7 = [v6 _maps_lineShouldZoomMapRegionOnSelection];
      }

      else
      {
        v7 = 0;
      }

      sub_10032EBF4(v5, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = *(a2 + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker);
      if (v8)
      {
        v9 = v8;
        sub_10032DF04(v9, [v9 _maps_lineShouldZoomMapRegionOnSelection]);
      }
    }
  }
}

unint64_t sub_100332800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RichTextType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  *a2 = a1;
  v12 = a1;
  v13 = [v12 _maps_diffableDataSourceIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v18;
    (*(v9 + 8))(v11, v8);
  }

  v19 = v41;
  v41[1] = v15;
  v19[2] = v17;
  v20 = [v12 titleForCarPlay];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v19[3] = v21;
  v19[4] = v23;
  sub_1000CE6B8(&unk_1019157F0);
  v40 = swift_allocObject();
  v39 = xmmword_1011E1D30;
  *(v40 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v24 = v12;
  v25 = swift_allocObject();
  *(v25 + 16) = v39;
  (*(v5 + 104))(v7, enum case for RichTextType.line(_:), v4);
  v26 = [v12 subtitleForCarPlay];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v5 + 8))(v7, v4);
  v27 = v40;
  *(v40 + 32) = v25;
  v19[5] = v27;
  v28 = [v12 sharedTrips];

  sub_100332CE4();
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v29 >> 62))
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v29 + 32);
LABEL_9:
    v32 = v31;

    v33 = [v32 senderInfo];

    if (!v33)
    {
LABEL_15:
      v36 = 0xE000000000000000;
      goto LABEL_16;
    }

    v34 = [v33 localContactIdentifier];

    if (v34)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

LABEL_16:
      v37 = String._bridgeToObjectiveC()();

      v38 = v41;
      v41[9] = &type metadata for ContactImageProvider;
      result = sub_10027CFF0();
      v38[10] = result;
      v38[6] = v33;
      v38[7] = v36;
      *(v38 + 64) = 1;
      return result;
    }

LABEL_14:
    v33 = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100332CE4()
{
  result = qword_10191D050;
  if (!qword_10191D050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10191D050);
  }

  return result;
}

__n128 sub_100332D30(uint64_t a1, uint64_t a2)
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

uint64_t sub_100332D54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100332D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100332E0C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100332E44@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

unint64_t sub_100332E54()
{
  result = qword_10191A0F8;
  if (!qword_10191A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A0F8);
  }

  return result;
}

uint64_t sub_100332EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100332EF0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100332FA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x796C746E65636572;
  v4 = 0xEF64657469736956;
  if (v2 != 1)
  {
    v3 = 0x65637341656D616ELL;
    v4 = 0xED0000676E69646ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6973695674736F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000646574;
  }

  v7 = 0x796C746E65636572;
  v8 = 0xEF64657469736956;
  if (*a2 != 1)
  {
    v7 = 0x65637341656D616ELL;
    v8 = 0xED0000676E69646ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6973695674736F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1003330D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10033319C()
{
  String.hash(into:)();
}

Swift::Int sub_10033324C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10033330C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100333514(*a1);
  *a2 = result;
  return result;
}

void sub_10033333C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0xEF64657469736956;
  v5 = 0x796C746E65636572;
  if (v2 != 1)
  {
    v5 = 0x65637341656D616ELL;
    v4 = 0xED0000676E69646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6973695674736F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1003333D0()
{
  result = qword_10191A110;
  if (!qword_10191A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A110);
  }

  return result;
}

unint64_t sub_100333458()
{
  result = qword_10191A128;
  if (!qword_10191A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A128);
  }

  return result;
}

unint64_t sub_1003334B0()
{
  result = qword_1019219B0;
  if (!qword_1019219B0)
  {
    sub_1000F337C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019219B0);
  }

  return result;
}

id sub_100333508@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_100333514(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016001A0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100333560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  v9 = (a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
  v11 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title + 8);
  *v9 = *a5;
  v9[1] = v8;
  if (v11 && (v7 == v10 ? (v12 = v11 == v8) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    sub_100505488();
  }

  v13 = 2;
  if (*(a5 + 16))
  {
    v13 = 0;
  }

  v14 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderPosition);
  *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderPosition) = v13;
  if (v13 != v14)
  {
    sub_100505488();
  }

  if (*(a5 + 17) == 1)
  {
    sub_100333AAC(a5, v23);
    v15 = swift_allocObject();
    sub_100333AE4(v23, v15 + 16);
    v16 = (a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
    v17 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
    v18 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler + 8);
    *v16 = sub_100333B1C;
    v16[1] = v15;

    sub_1000D3B90(v17, v18);
    sub_100505488();
  }

  else
  {
    v20 = (a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
    v21 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
    v22 = *(a1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler + 8);
    *v20 = 0;
    v20[1] = 0;
    sub_1000D3B90(v21, v22);
    return sub_100505488();
  }
}

uint64_t sub_1003336CC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 8))(ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003337A0()
{
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 17));
  if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
  {
    if (*(&v4 + 1))
    {
      v6[0] = v3;
      v6[1] = v4;
      v7 = v5;
      AnyHashable.hash(into:)();
      sub_10005BF8C(v6);
      return String.hash(into:)();
    }
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
  }

  sub_10010EA94(&v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Hasher._combine(_:)(Strong);
    swift_unknownObjectRelease();
  }

  return String.hash(into:)();
}

Swift::Int sub_100333898()
{
  Hasher.init(_seed:)();
  sub_1003337A0();
  return Hasher._finalize()();
}

Swift::Int sub_1003338DC()
{
  Hasher.init(_seed:)();
  sub_1003337A0();
  return Hasher._finalize()();
}

unint64_t sub_100333920()
{
  result = qword_10191A130;
  if (!qword_10191A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A130);
  }

  return result;
}

unint64_t sub_100333974(uint64_t a1)
{
  result = sub_10033399C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10033399C()
{
  result = qword_10191A168;
  if (!qword_10191A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A168);
  }

  return result;
}

uint64_t sub_1003339F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || (sub_10010ED08(a1 + 24, a2 + 24) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100333B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100333B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100333C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsWarmingSheetLaunchAlert();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100333CC4(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = (v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
  v4 = *(v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
  v5 = *(v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock + 8);
  *v3 = a1;
  v3[1] = a2;

  sub_1000D3B90(v4, v5);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isCurrentlyConnectedToAnyCarScene];

    if (v8)
    {
      if (qword_101906740 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100021540(v9, qword_101960060);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_19;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Maps Warming Sheet: Skipping on CarPlay.";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_19:

      v21 = *v3;
      if (*v3)
      {
        v22 = v3[1];

        v21(v23);
        sub_1000D3B90(v21, v22);
        v24 = *v3;
      }

      else
      {
        v24 = 0;
      }

      v25 = v3[1];
      *v3 = 0;
      v3[1] = 0;

      return sub_1000D3B90(v24, v25);
    }
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result isInNavigatingState];

  if (v16)
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100021540(v17, qword_101960060);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Maps Warming Sheet: Skipping while in navigation.";
    goto LABEL_18;
  }

  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19)
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100021540(v20, qword_101960060);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Maps Warming Sheet: Skipping because the device is not supported.";
    goto LABEL_18;
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1003351C0(v2, sub_1003351B8, v26);
}

void sub_100334058(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100021540(v8, qword_101960060);
  sub_100335E4C(a1, a2, a3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  sub_100335DFC(a1, a2, a3);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v11 = 136315394;
    v26 = a4;
    if (a4 == 1)
    {
      v12 = 0xEE00736563616C50;
      v13 = 0x2064657469736956;
    }

    else
    {
      if (a4)
      {
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v12 = 0x800000010121B3D0;
      v13 = 0xD000000000000015;
    }

    v14 = sub_10004DEB8(v13, v12, v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = sub_100339F2C(a1, a2, a3);
    v17 = sub_10004DEB8(v15, v16, v27);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Maps Warming Sheet for %s: %s", v11, 0x16u);
    swift_arrayDestroy();

    a4 = v26;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a3 == 3 && a1 == 1 && !a2)
    {
      sub_100334330(a4);
    }

    else
    {
      v20 = (Strong + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
      v21 = *(Strong + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
      if (v21)
      {
        v22 = v20[1];

        v21(v23);
        sub_1000D3B90(v21, v22);
        v24 = *v20;
      }

      else
      {
        v24 = 0;
      }

      v25 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      sub_1000D3B90(v24, v25);
    }
  }
}

void sub_100334330(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedService];
  if (!v4)
  {
    __break(1u);
    goto LABEL_40;
  }

  v5 = v4;
  v6 = [v4 isInNavigatingState];

  if (v6)
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960060);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Maps Warming Sheet: Skipping while in navigation.", v10, 2u);
    }

    v11 = (v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
    v12 = *(v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
    if (v12)
    {
      v13 = v11[1];

      v12(v14);
      sub_1000D3B90(v12, v13);
      v15 = *v11;
    }

    else
    {
      v15 = 0;
    }

    v34 = v11[1];
    goto LABEL_23;
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(type metadata accessor for LocationAuthenticationViewController());
  v18 = sub_1000F58DC(a1, 2, sub_100335EAC, v16);
  v19 = *(v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_locIntWelcomeViewController);
  *(v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_locIntWelcomeViewController) = v18;
  v42 = v18;

  v20 = [objc_opt_self() sharedMapsDelegate];
  if (!v20 || (v21 = v20, v44 = [v20 chromeViewController], v21, !v44))
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100021540(v29, qword_101960060);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Maps Warming Sheet: The ChromeViewController is nil, so we did not present the warming sheet", v32, 2u);
    }

    v33 = v42;
    goto LABEL_34;
  }

  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100021540(v22, qword_101960060);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136315138;
    if (a1 == 1)
    {
      v27 = 0xEE00736563616C50;
      v28 = 0x2064657469736956;
LABEL_28:
      v35 = sub_10004DEB8(v28, v27, &v45);

      *(v25 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "Maps Warming Sheet: Presenting warming sheet for %s", v25, 0xCu);
      sub_10004E3D0(v26);

      goto LABEL_29;
    }

    if (!a1)
    {
      v27 = 0x800000010121B3D0;
      v28 = 0xD000000000000015;
      goto LABEL_28;
    }

LABEL_40:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

LABEL_29:

  v36 = [v44 topMostPresentedViewController];
  if (v36)
  {
    v37 = v36;
    v38 = swift_dynamicCastClass();

    if (v38)
    {
      v11 = (v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
      v39 = *(v2 + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
      if (v39)
      {
        v40 = v11[1];

        v39(v41);

        sub_1000D3B90(v39, v40);
      }

      else
      {
      }

      v15 = *v11;
      v34 = v11[1];
LABEL_23:
      *v11 = 0;
      v11[1] = 0;

      sub_1000D3B90(v15, v34);
      return;
    }
  }

  [v44 _maps_topMostPresentViewController:v42 animated:1 completion:{0, v42}];

  v33 = v44;
LABEL_34:
}

uint64_t sub_10033489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v25 = *(v16 - 8);
  v26 = v16;
  __chkstk_darwin(v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a5(a1, a2, a3, a4);
  }

  sub_100109428();
  v24 = v13;
  v23 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  aBlock[4] = sub_100335E14;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016120F8;
  v21 = _Block_copy(aBlock);

  sub_100335E4C(a1, a2, a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100335E64(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v24 + 8))(v15, v12);
  return (*(v25 + 8))(v18, v26);
}

void sub_100334C50(char a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v7 = Strong, v8 = sub_1003354AC(1), v7, (v8 & 1) != 0))
    {
      if (qword_1019066F8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100021540(v9, qword_10195FF88);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Skipping LocInt Warming sheet because VP warming sheet was seen recently", v12, 2u);
      }

      v13 = 0x800000010122F350;
      v14 = 0xD000000000000032;
      v15 = 2;
    }

    else
    {
      v14 = 1;
      v13 = 0;
      v15 = 3;
    }

    a3(v14, v13, v15, 0);
  }

  else
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      if (MapsFeature_IsEnabled_VisitedPlaces())
      {
        type metadata accessor for MapsWarmingSheetHelper();
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = swift_allocObject();
        v19[2] = a3;
        v19[3] = a4;
        v19[4] = v18;

        sub_10033A5A4(sub_100335EB4, v19);
      }

      else
      {
        a3(1uLL, 0, 0, 1);
      }
    }
  }
}

uint64_t sub_100334E9C(char a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  if ((a1 & 1) == 0)
  {
    v12 = "as shown recently.";
    v11 = 0xD000000000000041;
LABEL_16:
    v10 = v12 | 0x8000000000000000;
    goto LABEL_17;
  }

  if ((sub_10033D320() & 1) == 0)
  {
    if (qword_1019066F8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_10195FF88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Eligible for warming sheet, but not showing because we are in unsupported market", v16, 2u);
    }

    v11 = 0xD000000000000032;
    goto LABEL_16;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = Strong, v5 = sub_1003354AC(0), v4, (v5 & 1) == 0))
  {
    v11 = 1;
    v10 = 0;
    v17 = 3;
    return a2(v11, v10, v17, 1);
  }

  if (qword_1019066F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_10195FF88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Skipping VP Warming sheet because LocInt warming sheet was seen recently", v9, 2u);
  }

  v10 = 0x800000010122F420;
  v11 = 0xD00000000000002ALL;
LABEL_17:
  v17 = 2;
  return a2(v11, v10, v17, 1);
}

void sub_100335100()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
    v3 = *(Strong + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
    if (v3)
    {
      v4 = v2[1];

      v3(v5);
      sub_1000D3B90(v3, v4);
      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_1000D3B90(v6, v7);
    v8 = *&v1[OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_locIntWelcomeViewController];
    *&v1[OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_locIntWelcomeViewController] = 0;
  }
}

uint64_t sub_1003351C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    type metadata accessor for MapsWarmingSheetHelper();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_10033544C;
    v7[4] = v5;

    sub_10033A278(sub_100335460, v7);
LABEL_9:

    goto LABEL_11;
  }

  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100021540(v8, qword_101960060);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Maps Warming Sheet: LocInt FF is not enabled. Skipping", v11, 2u);
  }

  if (MapsFeature_IsEnabled_VisitedPlaces())
  {
    type metadata accessor for MapsWarmingSheetHelper();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = sub_10033544C;
    v13[3] = v5;
    v13[4] = v12;

    sub_10033A5A4(sub_100335454, v13);
    goto LABEL_9;
  }

  sub_10033489C(1, 0, 0, 1, a2, a3);
LABEL_11:
}

uint64_t sub_10033546C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003354AC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar();
  v72 = *(v2 - 8);
  v73 = v2;
  __chkstk_darwin(v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v66 - v12;
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v16 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  if (a1)
  {
    v28 = GEOConfigGetDate();
    if (v28)
    {
      v29 = v28;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 56))(v21, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v21, 1, 1, v8);
    }

    v24 = v21;
  }

  else
  {
    v30 = GEOConfigGetDate();
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 56))(v24, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v24, 1, 1, v8);
    }
  }

  sub_100335D8C(v24, v27);
  sub_1002323DC(v27, v18);
  if ((*(v9 + 48))(v18, 1, v8) == 1)
  {
    sub_100232374(v27);
    sub_100232374(v18);
    return 0;
  }

  (*(v9 + 32))(v15, v18, v8);
  v67 = a1;
  UInteger = GEOConfigGetUInteger();
  static Calendar.current.getter();
  sub_1000CE6B8(&qword_10191A210);
  v33 = type metadata accessor for Calendar.Component();
  v34 = *(v33 - 8);
  v35 = *(v34 + 80);
  v69 = v15;
  v36 = (v35 + 32) & ~v35;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1011E1D30;
  (*(v34 + 104))(v37 + v36, enum case for Calendar.Component.day(_:), v33);
  sub_10052FAE8(v37);
  swift_setDeallocating();
  v38 = v37 + v36;
  v39 = v69;
  (*(v34 + 8))(v38, v33);
  swift_deallocClassInstance();
  v40 = v75;
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  v41 = *(v9 + 8);
  v41(v40, v8);
  (*(v72 + 8))(v4, v73);
  v42 = DateComponents.day.getter();
  LOBYTE(v40) = v43;
  (*(v70 + 8))(v7, v71);
  if (v40)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100021540(v45, qword_101960060);
  v46 = v74;
  (*(v9 + 16))(v74, v39, v8);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v77 = v50;
    *v49 = 136316162;
    v73 = v44;
    LODWORD(v72) = v48;
    v71 = v50;
    if (v67 == 1)
    {
      v51 = 0xEE00736563616C50;
      v52 = 0x2064657469736956;
    }

    else
    {
      if (v67)
      {
        v76 = v67;
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      v51 = 0x800000010121B3D0;
      v52 = 0xD000000000000015;
    }

    v54 = sub_10004DEB8(v52, v51, &v77);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    sub_100335E64(&qword_10190D308, &type metadata accessor for Date);
    v55 = v74;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v41(v55, v8);
    v59 = sub_10004DEB8(v56, v58, &v77);

    *(v49 + 14) = v59;
    *(v49 + 22) = 2080;
    v60 = v75;
    static Date.now.getter();
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v41(v60, v8);
    v64 = sub_10004DEB8(v61, v63, &v77);

    *(v49 + 24) = v64;
    *(v49 + 32) = 2048;
    v53 = UInteger;
    *(v49 + 34) = UInteger;
    *(v49 + 42) = 2048;
    v44 = v73;
    *(v49 + 44) = v73;
    _os_log_impl(&_mh_execute_header, v47, v72, "Maps Warming Sheet: \nSheet to be presented: %s\nOther Sheet was presented on : %s\nCurrent Date: %s\nThreshold: %lu\nDifference in Days: %ld", v49, 0x34u);
    swift_arrayDestroy();

    v41(v69, v8);
    sub_100232374(v27);
  }

  else
  {

    v41(v46, v8);
    v41(v39, v8);
    sub_100232374(v27);
    v53 = UInteger;
  }

  return v44 < 0 || v44 < v53;
}

uint64_t sub_100335D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190EBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100335DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_100335E4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_100335E64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100335FDC(void *a1)
{
  v2 = sub_1000CE6B8(&qword_10191A390);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v5 = sub_1000CE6B8(&qword_10191A398);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v50 = type metadata accessor for RefinementsBarButtonViewModel(0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v49 = &v43 - v12;
  v46 = a1;
  v13 = [a1 resultRefinementBar];
  v14 = [v13 resultRefinements];

  sub_100014C84(0, &qword_10190A8D8);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    goto LABEL_19;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v9;
  for (i = v4; v16; i = v4)
  {
    v17 = 0;
    v4 = (v15 & 0xC000000000000001);
    v9 = (v15 & 0xFFFFFFFFFFFFFF8);
    v18 = (v48 + 48);
    v19 = _swiftEmptyArrayStorage;
    v47 = v16;
    while (1)
    {
      if (v4)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v20 = *(v15 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      sub_100336558(v20, v7);

      if ((*v18)(v7, 1, v50) == 1)
      {
        sub_100338B88(v7);
      }

      else
      {
        sub_100338BF0(v7, v49, type metadata accessor for RefinementsBarButtonViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100357804(0, v19[2] + 1, 1, v19);
        }

        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          v19 = sub_100357804(v23 > 1, v24 + 1, 1, v19);
        }

        v19[2] = v24 + 1;
        sub_100338BF0(v49, v19 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v24, type metadata accessor for RefinementsBarButtonViewModel);
        v16 = v47;
      }

      ++v17;
      if (v22 == v16)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v44 = v9;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_21:

  v25 = [v46 resultRefinementView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_100336E00(v25);

    if (v27)
    {
      v28 = _UISolariumEnabled();
      if (v28)
      {
        v29 = 0xD00000000000001ALL;
      }

      else
      {
        v29 = 0xD000000000000021;
      }

      if (v28)
      {
        v30 = "3.decrease.circle";
      }

      else
      {
      }

      v31 = v30 | 0x8000000000000000;
      v32 = v44;
      UUID.init()();
      v33 = v50;
      v34 = v32 + *(v50 + 20);
      *v34 = v29;
      *(v34 + 8) = v31;
      *(v34 + 16) = 1;
      *(v32 + v33[6]) = 0;
      *(v32 + v33[7]) = 0;
      v35 = (v32 + v33[8]);
      *v35 = 0u;
      v35[1] = 0u;
      *(v32 + v33[9]) = v27;
      v36 = v32 + v33[10];
      *v36 = 0;
      *(v36 + 8) = 1;
      v37 = i;
      sub_10023FF74(v32, i);
      v38 = v19[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v19;
      if (!isUniquelyReferenced_nonNull_native || v38 >= v19[3] >> 1)
      {
        v19 = sub_100357804(isUniquelyReferenced_nonNull_native, v38 + 1, 1, v19);
        v53 = v19;
      }

      sub_10054DF20(0, 0, 1, v37);
      sub_10023FFD8(v32);
    }
  }

  if (v19[2])
  {
    v40 = type metadata accessor for RefinementsBarViewModel(0);
    v41 = objc_allocWithZone(v40);
    v41[OBJC_IVAR____TtC4Maps23RefinementsBarViewModel_tapInteractionEnabled] = 1;
    swift_beginAccess();
    v52 = v19;
    sub_1000CE6B8(&qword_10191A3A0);
    Published.init(initialValue:)();
    swift_endAccess();
    v51.receiver = v41;
    v51.super_class = v40;
    return objc_msgSendSuper2(&v51, "init");
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100336558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element(0);
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 type];
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_64;
    }

    if (v9 == 1)
    {
      v9 = [a1 toggle];
      if (v9)
      {
        v16 = v9;
        v76 = a1;
        v77 = a2;
        v17 = [v9 displayName];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v18;

        v74 = [v16 isSelected];
        v19 = [v16 selectionSequenceNumber];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 integerValue];

          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
        }

        else
        {

          v21 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v22 = 1;
        }

        goto LABEL_58;
      }

      goto LABEL_64;
    }

LABEL_63:
    v9 = 0;
    goto LABEL_64;
  }

  if (v9 == 2)
  {
    v9 = [a1 multiSelect];
    if (!v9)
    {
      goto LABEL_64;
    }

    v28 = v9;
    v76 = a1;
    v29 = [v9 displayName];
    v77 = a2;
    if (v29)
    {
      v30 = v29;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v31;
    }

    else
    {
      v8 = 0;
      v75 = 0;
    }

    v47 = [v28 multiSelect];
    sub_100014C84(0, &unk_10191A370);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v35 & 0xFFFFFFFFFFFFFF8;
    if (!(v35 >> 62))
    {
      v48 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
      v49 = 0;
      while (v48 != v49)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v49 >= *(v32 + 16))
          {
            goto LABEL_70;
          }

          v50 = *(v35 + 8 * v49 + 32);
        }

        v51 = v50;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_69;
        }

        v52 = [v50 isSelected];

        ++v49;
        if (v52)
        {

          v15 = 1;
          goto LABEL_49;
        }
      }

      v15 = 0;
LABEL_49:
      v11 = v76;
      a2 = v77;
      v53 = v75;
      if (!v75)
      {
        goto LABEL_63;
      }

LABEL_50:
      v74 = v15;
      v75 = v53;
      v76 = v11;
      v77 = a2;
      v21 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
LABEL_57:
      v22 = 1;
      v23 = 1;
LABEL_58:
      v58 = v76;
      v59 = v77;
      UUID.init()();
      v60 = type metadata accessor for RefinementsBarButtonViewModel(0);
      v61 = v59 + v60[5];
      v62 = v75;
      *v61 = v8;
      *(v61 + 8) = v62;
      *(v61 + 16) = 0;
      *(v59 + v60[6]) = v74;
      *(v59 + v60[7]) = v23;
      v63 = (v59 + v60[8]);
      *v63 = v24;
      v63[1] = v25;
      v63[2] = v26;
      v63[3] = v27;
      *(v59 + v60[9]) = v58;
      v64 = v59 + v60[10];
      *v64 = v21;
      *(v64 + 8) = v22;
      return (*(*(v60 - 1) + 56))(v59, 0, 1, v60);
    }

LABEL_71:
    v48 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_39;
  }

  if (v9 == 3)
  {
    v9 = [a1 sort];
    if (!v9)
    {
      goto LABEL_64;
    }

    v32 = v9;
    v76 = a1;
    v28 = [v9 displayName];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v33;

    v34 = [v32 selectedElementIndex];
    v74 = v34 != 0;
    if (v34)
    {
    }

    v35 = [v32 sorts];
    sub_100014C84(0, &unk_101922A40);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v32;
    v77 = a2;
    if (!v37)
    {
      v24 = _swiftEmptyArrayStorage;
LABEL_52:

      v54 = [v73 selectedElementIndex];
      v55 = v54;
      if (v54)
      {
        v25 = [v54 integerValue];
      }

      else
      {
        v25 = 0;
      }

      v26 = v55 == 0;
      v8 = v72;
      v56 = v73;
      v57 = [v73 defaultSelectedElementIndex];
      v27 = [v57 integerValue];

      v21 = 0;
      goto LABEL_57;
    }

    v38 = 0;
    v78 = v36 & 0xFFFFFFFFFFFFFF8;
    v79 = v36 & 0xC000000000000001;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v79)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *(v78 + 16))
        {
          goto LABEL_68;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v28 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v41 = [v39 displayName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v43;

      UUID.init()();
      v44 = v80;
      v45 = &v8[*(v80 + 20)];
      *v45 = v42;
      v45[1] = v35;
      *&v8[*(v44 + 24)] = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100358198(0, v24[2] + 1, 1, v24);
      }

      v32 = v24[2];
      v46 = v24[3];
      if (v32 >= v46 >> 1)
      {
        v24 = sub_100358198(v46 > 1, v32 + 1, 1, v24);
      }

      v24[2] = v32 + 1;
      sub_100338BF0(v8, v24 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v32, type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element);
      ++v38;
      if (v28 == v37)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v9 != 4 || !MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    goto LABEL_63;
  }

  v9 = [a1 openOptions];
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v9 openAt];
    if (v12 && (v13 = v12, v14 = [v12 isSelected], v13, (v14 & 1) != 0))
    {
      v15 = 1;
    }

    else
    {
      v66 = [v10 openNow];
      if (v66)
      {
        v67 = v66;
        v15 = [v66 isSelected];
      }

      else
      {
        v15 = 0;
      }
    }

    v68 = v10;
    v8 = sub_10033832C(v10);
    v53 = v69;

    if (!v53)
    {
      goto LABEL_63;
    }

    goto LABEL_50;
  }

LABEL_64:
  v70 = type metadata accessor for RefinementsBarButtonViewModel(v9);
  v71 = *(*(v70 - 8) + 56);

  return v71(a2, 1, 1, v70);
}

id sub_100336E00(void *a1)
{
  v1 = [a1 sections];
  sub_100014C84(0, &qword_10190A8E0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v17 = v6;
      sub_1003370EC(&v17, &v16);

      if (v16)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v18;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_18:

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_20;
    }

LABEL_24:

    return 0;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_20:
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v19._object = 0x800000010122F4D0;
  v9._countAndFlagsBits = 0x737265746C6946;
  v9._object = 0xE700000000000000;
  v10._countAndFlagsBits = 0x737265746C6946;
  v10._object = 0xE700000000000000;
  v19._countAndFlagsBits = 0xD00000000000005BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v19);
  v11 = objc_allocWithZone(AllRefinementsViewModel);
  sub_1000CE6B8(&unk_10191A360);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = String._bridgeToObjectiveC()();

  v14 = [v11 initWithSections:isa displayName:v13 viewTakesFullHeight:1];

  return v14;
}

void sub_1003370EC(id *a1@<X0>, void *a2@<X8>)
{
  v111 = *a1;
  v4 = [*a1 refinementsType];
  if (v4 <= 1)
  {
    if (v4 != 1)
    {
      goto LABEL_162;
    }

    v5 = [v111 resultRefinements];
    sub_100014C84(0, &qword_10190A8D8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v127 = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_132;
    }

    v122 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_133;
    }

    goto LABEL_5;
  }

  if (v4 != 2)
  {
    if (v4 != 4 || !MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      goto LABEL_162;
    }

    v127 = _swiftEmptyArrayStorage;
    v21 = [v111 resultRefinements];
    sub_100014C84(0, &qword_10190A8D8);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v22 >> 62))
    {
      v6 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_29:
        if (v6 >= 1)
        {
          v23 = 0;
          v24 = v22 & 0xC000000000000001;
          v119 = _swiftEmptyArrayStorage;
          v25 = &selRef_notifyPPTDidChangeSearchResults;
          v114 = v22;
          v109 = (v22 & 0xC000000000000001);
          v110 = v6;
          while (1)
          {
            if (v24)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v26 = *(v22 + 8 * v23 + 32);
            }

            v27 = v26;
            v28 = [v26 v25[235]];
            if (v28)
            {
              v29 = v28;
              v3 = [v28 openNow];

              if (v3)
              {
                v30 = [v27 v25[235]];
                if (v30)
                {
                  v2 = v30;
                  v31 = [v30 openAt];
                  if (v31)
                  {
                    v32 = v31;
                    if (qword_101906768 != -1)
                    {
                      swift_once();
                    }

                    v128._object = 0x800000010122F550;
                    v33._object = 0x800000010122F530;
                    v128._countAndFlagsBits = 0xD000000000000023;
                    v33._countAndFlagsBits = 0xD000000000000011;
                    v34._countAndFlagsBits = 0xE27461206E65704FLL;
                    v34._object = 0xAA0000000000A680;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v34, v128);
                    [v32 timeStamp];
                    v36 = v35;
                    v123 = [v32 isSelected];
                    v37 = [v32 isNextDay];
                    v38 = objc_allocWithZone(AllRefinementsViewModelOpenAt);
                    v39 = String._bridgeToObjectiveC()();

                    v40 = v32;
                    v41 = [v38 initWithDisplayName:v39 timeStamp:v123 isSelected:v37 isNextDay:v40 data:v36];

                    if (v41)
                    {
                      v42 = [v3 displayName];
                      if (!v42)
                      {
                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v42 = String._bridgeToObjectiveC()();
                      }

                      v43 = [v3 isSelected];
                      v44 = v3;
                      v45 = [v44 refinementKey];
                      if (!v45)
                      {
                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v45 = String._bridgeToObjectiveC()();
                      }

                      v46 = objc_allocWithZone(AllRefinementsViewModelToggle);
                      v2 = v44;
                      v47 = [v46 initWithDisplayName:v42 isSelected:v43 data:v2 refinementKey:v45];

                      v48 = [v111 sectionHeader];
                      v49 = objc_allocWithZone(AllRefinementsViewModelSectionOpenOption);
                      v3 = v47;
                      v50 = v41;
                      v51 = [v49 initWithOpenNow:v3 openAt:v50 displayName:v48];

                      v52 = v51;
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v119 = v127;
                    }

                    else
                    {
                    }

                    v22 = v114;
                    v24 = v109;
                    v6 = v110;
                    v25 = &selRef_notifyPPTDidChangeSearchResults;
                    goto LABEL_33;
                  }
                }

                else
                {
                }
              }
            }

LABEL_33:
            if (v6 == ++v23)
            {
              goto LABEL_151;
            }
          }
        }

        __break(1u);
        goto LABEL_164;
      }

      goto LABEL_150;
    }

LABEL_149:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_150:
    v119 = _swiftEmptyArrayStorage;
LABEL_151:

    if (v119 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_144;
      }
    }

    else if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_144;
    }

    if ((v119 & 0xC000000000000001) != 0)
    {
LABEL_164:
      v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_156;
    }

    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v107 = *(v119 + 32);
LABEL_156:
      v108 = v107;

      *a2 = v108;
      return;
    }

    __break(1u);
    goto LABEL_166;
  }

  v22 = [v111 resultRefinements];
  sub_100014C84(0, &qword_10190A8D8);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_144;
    }
  }

  else if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_144;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_149;
    }

    v54 = *(v53 + 32);
  }

  v55 = v54;

  v6 = &stru_10185C000;
  v2 = [v55 multiSelect];

  if (!v2)
  {
    goto LABEL_162;
  }

  v109 = v2;
  if (([v2 showEqualWidthButtonsOnFilterView] & 1) == 0)
  {
    v120 = 1;
    v61 = 0.0;
    goto LABEL_86;
  }

  v56 = [v2 multiSelect];
  sub_100014C84(0, &unk_10191A370);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_166:
    v124 = v3 & 0xFFFFFFFFFFFFFF8;
    v57 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_63;
  }

  v124 = v3 & 0xFFFFFFFFFFFFFF8;
  v57 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_63:
  v120 = v57 == 0;
  if (!v57)
  {
    v61 = 0.0;
    goto LABEL_85;
  }

  v58 = 0;
  v59 = 1;
  v60 = 0.0;
  while (2)
  {
    v61 = v60;
    v62 = v58;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *(v124 + 16))
        {
          goto LABEL_131;
        }

        v63 = *(v3 + 8 * v62 + 32);
      }

      v64 = v63;
      v58 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_130;
      }

      v6 = [v63 displayName];
      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      v65 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v6 _maps_sizeWithFont:v65];
      v60 = v66;

      if (v59)
      {
        break;
      }

      if (v60 > v61)
      {
        goto LABEL_78;
      }

LABEL_67:
      ++v62;
      if (v58 == v57)
      {
        v120 = v59;
        goto LABEL_83;
      }
    }

    if (v60 <= 0.0)
    {
      goto LABEL_67;
    }

LABEL_78:
    v59 = 0;
    if (v58 != v57)
    {
      continue;
    }

    break;
  }

  v61 = v60;
LABEL_83:
  v2 = v109;
  v6 = 0x10185C000;
LABEL_85:

LABEL_86:
  v67 = [v2 *(v6 + 2752)];
  sub_100014C84(0, &unk_10191A370);
  v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v127 = _swiftEmptyArrayStorage;
  if (v68 >> 62)
  {
    v125 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v125 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = 0;
  while (2)
  {
    if (v125 == v69)
    {

      if (_swiftEmptyArrayStorage >> 62)
      {
        v80 = v109;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_109:
          v126 = [v80 clauseType] == 1;
          v81 = [v111 sectionHeader];
          if (v81)
          {
            v82 = v81;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = v83;
          }

          else
          {
            v84 = 0;
          }

          v121 = [v80 maximumNumberOfSelectElements];
          v85 = [v80 showEqualWidthButtonsOnFilterView];
          v86 = [v80 displayNameForMultiSelected];
          if (v86)
          {
            v87 = v86;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v89 = v88;
          }

          else
          {
            v89 = 0;
          }

          v90 = [v109 multiSelectIdentifier];
          if (v90)
          {
            v91 = v90;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;
          }

          else
          {
            v93 = 0;
          }

          sub_100014C84(0, &qword_101922A20);
          v94.super.isa = Array._bridgeToObjectiveC()().super.isa;

          if (v84)
          {
            v95 = String._bridgeToObjectiveC()();

            if (v89)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v95 = 0;
            if (v89)
            {
LABEL_120:
              v96 = String._bridgeToObjectiveC()();

              v97 = v109;
              if (v93)
              {
LABEL_121:
                v98 = String._bridgeToObjectiveC()();

LABEL_125:
                v99 = [objc_allocWithZone(AllRefinementsViewModelSectionMultiSelect) initWithElements:v94.super.isa displayName:v95 maximumNumberOfSelectableElements:v121 clauseType:v126 showEqualWidthButtonsOnFilterView:v85 displayNameForMultiSelected:v96 multiSelectIdentifier:v98];

                *a2 = v99;
                return;
              }

LABEL_124:
              v98 = 0;
              goto LABEL_125;
            }
          }

          v96 = 0;
          v97 = v109;
          if (v93)
          {
            goto LABEL_121;
          }

          goto LABEL_124;
        }
      }

      else
      {
        v80 = v109;
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_109;
        }
      }

      goto LABEL_162;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v69 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_129;
      }

      v73 = *(v68 + 8 * v69 + 32);
    }

    v74 = v73;
    if (!__OFADD__(v69, 1))
    {
      v115 = v69 + 1;
      v75 = [v73 displayName];
      if (!v75)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = String._bridgeToObjectiveC()();
      }

      v76 = [v74 isSelected];
      if (v120)
      {
        v77 = 0;
      }

      else
      {
        v77 = [objc_allocWithZone(NSNumber) initWithDouble:v61];
      }

      v78 = [v74 refinementKey];
      if (v78)
      {
        v79 = v78;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = String._bridgeToObjectiveC()();
      }

      else
      {
        v6 = 0;
      }

      v70 = objc_allocWithZone(AllRefinementsViewModelMultiSelectElement);
      v71 = v74;
      v72 = [v70 initWithDisplayName:v75 isSelected:v76 optionalLabelWidth:v77 refinementKey:v6 data:v71];

      ++v69;
      if (v72)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v69 = v115;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    v122 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
LABEL_133:
      v9 = _swiftEmptyArrayStorage;
      goto LABEL_134;
    }

LABEL_5:
    v8 = 0;
    v118 = v6 & 0xC000000000000001;
    v9 = _swiftEmptyArrayStorage;
    v116 = v7;
    v117 = v6;
LABEL_6:
    v113 = v9;
    v10 = v8;
LABEL_9:
    if (v118)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v122 + 16))
      {
        goto LABEL_127;
      }

      v14 = *(v6 + 8 * v10 + 32);
    }

    v15 = v14;
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_127:
      __break(1u);
      continue;
    }

    break;
  }

  v16 = [v14 toggle];
  if (!v16)
  {

    goto LABEL_8;
  }

  v17 = v16;
  v18 = [v16 displayName];
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  v19 = [v17 isSelected];
  v20 = [v17 refinementKey];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v11 = objc_allocWithZone(AllRefinementsViewModelToggle);
  v12 = v17;
  v13 = [v11 initWithDisplayName:v18 isSelected:v19 data:v12 refinementKey:v20];

  v7 = v116;
  v6 = v117;
  if (!v13)
  {
LABEL_8:
    ++v10;
    if (v8 == v7)
    {
      v9 = v113;
      goto LABEL_134;
    }

    goto LABEL_9;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = v127;
  if (v8 != v116)
  {
    goto LABEL_6;
  }

LABEL_134:

  if (v9 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_144;
    }

LABEL_136:
    v100 = [v111 sectionHeader];
    if (v100)
    {
      v101 = v100;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    sub_100014C84(0, &unk_10191A380);
    v104.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v103)
    {
      v105 = String._bridgeToObjectiveC()();
    }

    else
    {
      v105 = 0;
    }

    v106 = [objc_allocWithZone(AllRefinementsViewModelSectionToggles) initWithToggles:v104.super.isa displayName:v105];

    *a2 = v106;
  }

  else
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_136;
    }

LABEL_144:

LABEL_162:
    *a2 = 0;
  }
}