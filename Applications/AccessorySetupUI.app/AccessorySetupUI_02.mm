id sub_100028E4C()
{
  v1 = v0;
  if (qword_10007EC20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F440);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Bluetooth Setup View", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100027788();
    [v7 pushViewController:v8 animated:1];
  }

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  result = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (result)
  {

    return [result pickerStartedBridging];
  }

  return result;
}

void sub_10002903C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  LODWORD(v3) = (*(v3 + 8))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3 != 4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_6:
    v9 = *(v1 + v5);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v11 = *&v9[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      v12 = v9;
      if (v11)
      {
        [v11 invalidateWithReason:6];
        v11 = *&v9[v10];
      }

      *&v9[v10] = 0;

      sub_1000268F0("Showing App Scan Error View", sub_100027ADC);
      return;
    }

LABEL_16:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    v13 = *(v6 + v7);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_6;
  }
}

id sub_100029190()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] = 6;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController] = 0;
  v2 = &v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_rootController] = 0;
  v0[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_100029328()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    if (v5(ObjectType, v3) == 9 || v5(ObjectType, v3) == 11 || v5(ObjectType, v3) == 16)
    {
      v6 = 0;
    }

    else
    {
      type metadata accessor for ASError(0);
      sub_1000299A0(_swiftEmptyArrayStorage);
      sub_10002A4E0(&qword_10007EE40, type metadata accessor for ASError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v6 = v19;
    }

    if (v5(ObjectType, v3) == 6 || v5(ObjectType, v3) == 8 || v5(ObjectType, v3) == 7)
    {
      v7 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      if (!v7)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v8 = v7;
      sub_10001B4D4(0, 0, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_1000299A0(_swiftEmptyArrayStorage);
    sub_10002A4E0(&qword_10007EE40, type metadata accessor for ASError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v6 = v19;
  }

  v9 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v10)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v12 = *&v10[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
  v13 = v10;
  if (v12)
  {
    [v12 invalidateWithReason:10];
    v12 = *&v10[v11];
  }

  *&v10[v11] = 0;

  v14 = *(v1 + v9);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  sub_1000189D4(10, 0);

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  sub_100043324(v6);
  v16 = v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    (*(v17 + 8))(v18, v17);
    swift_unknownObjectRelease();
  }
}

uint64_t getEnumTagSinglePayload for ASUIFlowType(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASUIFlowType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100029854(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100029878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000298D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10002994C()
{
  result = qword_10007F520;
  if (!qword_10007F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F520);
  }

  return result;
}

unint64_t sub_1000299A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080210, &qword_10005C898);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002A078(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001F768(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100022E1C(&v15, (v3[7] + 32 * result));
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

void sub_100029AB0(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView];
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 1), v5 = swift_getObjectType(), LODWORD(v4) = (*(v4 + 8))(v5, v4), swift_unknownObjectRelease(), v4 != 14))
  {
    if (!swift_unknownObjectWeakLoadStrong() || (v6 = *(v3 + 1), ObjectType = swift_getObjectType(), LODWORD(v6) = (*(v6 + 8))(ObjectType, v6), swift_unknownObjectRelease(), v6 != 11))
    {
      if (v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] != 3)
      {
        sub_1000268F0("Showing Connection Error View", sub_1000278A4);
        v23 = *(a1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
        if (!v23)
        {
          __break(1u);
          return;
        }

        v24 = [v23 allowPairing];
        v25 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
        if (v24)
        {
          if (v25)
          {
            v26 = &v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
            v27 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
            if (v27)
            {
              v28 = v25;
              [v27 invalidateWithReason:1];
LABEL_30:
              v27 = *v26;
LABEL_33:
              *v26 = 0;

              goto LABEL_35;
            }

            goto LABEL_32;
          }
        }

        else if (v25)
        {
          v26 = &v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          v27 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          if (v27)
          {
            v28 = v25;
            [v27 invalidateWithReason:2];
            goto LABEL_30;
          }

LABEL_32:
          v28 = v25;
          goto LABEL_33;
        }

LABEL_35:
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        v32 = qword_1000814E8;
        type metadata accessor for ASError(0);
        sub_1000299A0(_swiftEmptyArrayStorage);
        sub_10002A4E0(&qword_10007EE40, type metadata accessor for ASError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v33 = *(v32 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
        if (v33)
        {
          v34 = *(v32 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
          swift_unknownObjectRetain();
          v35 = _convertErrorToNSError(_:)();
          [v33 pickerSetupFailed:v35];

          swift_unknownObjectRelease();
        }

        return;
      }
    }
  }

  if (!swift_unknownObjectWeakLoadStrong() || (v8 = *(v3 + 1), v9 = swift_getObjectType(), LODWORD(v8) = (*(v8 + 8))(v9, v8), swift_unknownObjectRelease(), v8 != 15))
  {
    if (!swift_unknownObjectWeakLoadStrong() || (v10 = *(v3 + 1), v11 = swift_getObjectType(), LODWORD(v10) = (*(v10 + 8))(v11, v10), swift_unknownObjectRelease(), v10 != 11))
    {
      if (v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] == 3)
      {
        sub_1000268F0("Showing Upgrade Error View", sub_1000279C0);
        v12 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
        if (v12)
        {
          v13 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
          v14 = *&v12[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          v15 = v12;
          if (v14)
          {
            [v14 invalidateWithReason:1];
            v14 = *&v12[v13];
          }

          *&v12[v13] = 0;
        }

        goto LABEL_35;
      }
    }
  }

  if (qword_10007EC20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000032F0(v16, qword_10007F440);
  v17 = v1;
  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v3 + 1);
      v22 = swift_getObjectType();
      (*(v21 + 8))(v22, v21);
      swift_unknownObjectRelease();
    }

    sub_100009894(&unk_10007F530, &qword_10005C890);
    v29 = String.init<A>(describing:)();
    v31 = sub_10003FFF4(v29, v30, &v37);

    *(v19 + 4) = v31;
    _os_log_impl(&_mh_execute_header, oslog, v18, "ignoring error event from DA, UI is already in the state of %s", v19, 0xCu);
    sub_100009AB0(v20);
  }

  else
  {
  }
}

uint64_t sub_10002A078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&unk_10007F540, &unk_10005C8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10002A0E8()
{
  if (!*(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter))
  {
    __break(1u);
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v2 = Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v3)
  {
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    sub_10004B788(v6, v7);
    (*(v4 + 72))(v7, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_10002A024(v7);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002A210()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 8))(ObjectType, v2);
    result = swift_unknownObjectRelease();
    if (v2 == 4)
    {
      goto LABEL_17;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v1 + 8);
    v6 = swift_getObjectType();
    LODWORD(v5) = (*(v5 + 8))(v6, v5);
    result = swift_unknownObjectRelease();
    if (v5 == 16)
    {
LABEL_17:
      if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter))
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v7 = result + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v9 = *(v7 + 8);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          if (Strong)
          {
            v10 = swift_getObjectType();
            v11 = (*(v9 + 8))(v10, v9);
            sub_10004B788(v11, v12);
            (*(v9 + 72))(v12, v10, v9);
            swift_unknownObjectRelease();
            sub_10002A024(v12);
            return swift_unknownObjectRelease();
          }

          else
          {

            return swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002A43C()
{
  result = qword_10007F550;
  if (!qword_10007F550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F550);
  }

  return result;
}

uint64_t sub_10002A488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002A4E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002A528()
{
  result = qword_10007F288;
  if (!qword_10007F288)
  {
    sub_10001F924(&unk_10007F560, &qword_10005C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F288);
  }

  return result;
}

uint64_t sub_10002A58C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002A5CC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[6];
  v10 = a1[7];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v16[4] = sub_10002AA38;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10001BE14;
  v16[3] = &unk_100072788;
  v13 = _Block_copy(v16);
  v14 = [objc_opt_self() actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v15 = [v1 addAction:v14];
}

void sub_10002A76C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      sub_100042694(v4, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

__n128 sub_10002A990@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002AA00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002AA58(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[6];
  v10 = a1[7];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10002B838;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE14;
  aBlock[3] = &unk_100072840;
  v13 = _Block_copy(aBlock);
  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v15 = a1[4];
  v16 = a1[5];
  v17 = String._bridgeToObjectiveC()();
  [v1 setBottomTrayTitle:v17];

  aBlock[0] = a1[15];
  v18 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device;
  v19 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device] = aBlock[0];
  sub_1000253C8(aBlock, v66, &qword_10007F3D8, &qword_10005C9D0);

  v20 = [objc_allocWithZone(PRXTextField) init];
  v21 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField;
  v22 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField] = v20;
  v23 = v20;

  [v23 addTarget:v1 action:"textFieldDidChange" forControlEvents:0x20000];
  v24 = *&v1[v21];
  if (!v24)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 systemFontOfSize:18.0 weight:UIFontWeightMedium];
  [v26 setFont:v27];

  v28 = *&v1[v21];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *&v1[v21];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 secondarySystemBackgroundColor];
  [v31 setBackgroundColor:v32];

  v33 = *&v1[v21];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = *&v1[v18];
  if (!v34)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = (v34 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);
  if (v35[1])
  {
    v36 = *v35;
    v37 = v33;

    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = v33;
    v38 = 0;
  }

  [v33 setPlaceholder:v38];

  v40 = [v1 contentView];
  if (!*&v1[v21])
  {
    goto LABEL_21;
  }

  v41 = v40;
  [v40 addSubview:?];

  v42 = [v1 contentView];
  v43 = [v42 mainContentGuide];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10005C450;
  v45 = *&v1[v21];
  if (!v45)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = [v45 topAnchor];
  v47 = [v43 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v44 + 32) = v48;
  v49 = *&v1[v21];
  if (!v49)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v50 = [v49 centerXAnchor];
  v51 = [v43 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v44 + 40) = v52;
  v53 = *&v1[v21];
  if (!v53)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v54 = [v53 bottomAnchor];
  v55 = [v43 bottomAnchor];
  v56 = [v54 constraintLessThanOrEqualToAnchor:v55];

  *(v44 + 48) = v56;
  v57 = *&v1[v21];
  if (!v57)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v58 = [v57 heightAnchor];
  v59 = [v58 constraintEqualToConstant:62.0];

  *(v44 + 56) = v59;
  v60 = *&v1[v21];
  if (v60)
  {
    v61 = objc_opt_self();
    v62 = [v60 widthAnchor];
    v63 = [v43 widthAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    *(v44 + 64) = v64;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v61 activateConstraints:isa];

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10002B0F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002B14C();
  }
}

id sub_10002B14C()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField;
  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField);
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [result resignFirstResponder];
  v9 = v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_routingContext;
  swift_beginAccess();
  v10 = *(v9 + 48);
  v29[2] = *(v9 + 32);
  v29[3] = v10;
  v30 = *(v9 + 64);
  v11 = *(v9 + 16);
  v29[0] = *v9;
  v29[1] = v11;
  *v9 = 257;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  sub_10000A634(v29);
  if (*(v9 + 16) == 1)
  {
    goto LABEL_6;
  }

  *v9 = 1;
  result = *(v1 + v7);
  if (!result)
  {
    goto LABEL_15;
  }

  result = [result text];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = result;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v28[1] = v13;
  v28[2] = v15;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002B858();
  v16 = StringProtocol.trimmingCharacters(in:)();
  v18 = v17;
  (*(v3 + 8))(v6, v2);

  v19 = *(v9 + 16);
  *(v9 + 8) = v16;
  *(v9 + 16) = v18;

LABEL_6:
  swift_endAccess();
  result = swift_beginAccess();
  if (*(v9 + 16) == 1)
  {
    goto LABEL_11;
  }

  v20 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device);
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = *&v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v20;
  result = [v21 identifier];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v23 = result;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = *(v9 + 48);
  *(v9 + 40) = v24;
  *(v9 + 48) = v26;

LABEL_11:
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000426C4(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10002B464()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField;
  v8 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField);
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = [v8 text];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v21[0] = v11;
  v21[1] = v13;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002B858();
  v14 = StringProtocol.trimmingCharacters(in:)();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    return;
  }

  v18 = *(v1 + v7);
  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v19 = v18;

  v20 = String._bridgeToObjectiveC()();
  [v19 setText:v20];
}

__n128 sub_10002B76C@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002B800()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002B858()
{
  result = qword_10007F618;
  if (!qword_10007F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F618);
  }

  return result;
}

id sub_10002B8AC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_type] = 9;
  v4 = &v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_routingContext];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 1;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_router + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device] = 0;
  v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_updatingSSID] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "initWithContentView:", a1);
}

uint64_t getEnumTagSinglePayload for ASUIViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASUIViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002BAC8()
{
  result = qword_10007F620;
  if (!qword_10007F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F620);
  }

  return result;
}

void sub_10002BB1C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v10 = a1[6];
  v11 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v60 = sub_10002C57C;
  v61 = v12;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v58 = sub_10001BE14;
  v59 = &unk_100072988;
  v14 = _Block_copy(&aBlock);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10005C520;
  v17 = a1[15];
  v62 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v16;
  *(v16 + 32) = v17;
  aBlock = *(a1 + 10);
  v19 = *(&aBlock + 1);
  if (!*(&aBlock + 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = aBlock;
  sub_1000253C8(&v62, v56, &qword_10007F3D8, &qword_10005C9D0);
  sub_1000253C8(&aBlock, v56, &qword_10007F668, &qword_10005C9D8);
  if (qword_10007EBF0 != -1)
  {
    swift_once();
  }

  v55 = v15;
  v21 = type metadata accessor for Logger();
  sub_1000032F0(v21, qword_10007EF70);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v56[0] = v25;
    *v24 = 136315138;
    type metadata accessor for ASUIDevice();
    v26 = Array.description.getter();
    v28 = sub_10003FFF4(v26, v27, v56);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "init ASUIProductCarouselView with devices %s", v24, 0xCu);
    sub_100009AB0(v25);
  }

  v29 = [objc_allocWithZone(type metadata accessor for ASUIProductCarouselView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v30 = *&v29[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  *&v29[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = v18;
  v31 = v29;

  v32 = &v31[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  v33 = *&v31[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8];
  *v32 = v20;
  *(v32 + 1) = v19;

  v31[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 0;
  v31[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 0;
  sub_100005CD4();

  v34 = v31;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [v2 contentView];
  [v35 addSubview:v34];

  v36 = [v2 contentView];
  v37 = [v36 mainContentGuide];

  v38 = objc_opt_self();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10005C4D0;
  v40 = [v34 topAnchor];
  v41 = [v37 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v39 + 32) = v42;
  v43 = [v34 bottomAnchor];
  v44 = [v37 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v39 + 40) = v45;
  v46 = [v34 leadingAnchor];
  v47 = [v2 contentView];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v39 + 48) = v49;
  v50 = [v34 trailingAnchor];

  v51 = [v2 contentView];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v39 + 56) = v53;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];
}

void sub_10002C1CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002C220();
  }
}

char *sub_10002C220()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 showActivityIndicatorWithStatus:v1];

  v2 = &v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_routingContext];
  swift_beginAccess();
  v3 = *(v2 + 3);
  v6[2] = *(v2 + 2);
  v6[3] = v3;
  v7 = *(v2 + 8);
  v4 = *(v2 + 1);
  v6[0] = *v2;
  v6[1] = v4;
  *v2 = 257;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  sub_10000A634(v6);
  if (*(v2 + 2) != 1)
  {
    *v2 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000426F4(v0, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_10002C4B0@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C544()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C59C()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007F670);
  v1 = sub_1000032F0(v0, qword_10007F670);
  if (qword_10007EBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_1000814A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_10002C6B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10002C6E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10002C710@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10002C7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10002FB84(a1);

  *a2 = v3;
  return result;
}

void sub_10002C83C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_1000814E0 = v1;
}

uint64_t sub_10002C880(uint64_t result)
{
  if (!result)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v3 = *(v1 + 32);

      v2(v4);
      result = sub_100002E6C(v2);
    }

    *(v1 + 56) = 0;
    return result;
  }

  *(v1 + 56) = result;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(v1 + 80))
  {
    *(v1 + 56) = result & 0xFFFFFFFFFFFFFFFELL;
    if ((result & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
LABEL_16:
      v7 = *(v1 + 24);
      if (v7)
      {
        v8 = *(v1 + 32);

        v7(v9);

        return sub_100002E6C(v7);
      }

      return result;
    }

LABEL_5:
    if ((result & 2) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  v5 = result;
  sub_10002C994();
  result = v5;
  if ((v5 & 2) == 0)
  {
    return result;
  }

LABEL_12:
  if (*(v1 + 81))
  {
    v6 = *(v1 + 56);
    if ((v6 & 2) != 0)
    {
      v6 &= ~2uLL;
      *(v1 + 56) = v6;
    }

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    return sub_10002D57C();
  }

  return result;
}

uint64_t sub_10002C994()
{
  v1 = v0;
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring CBController", v5, 2u);
  }

  v6 = *(v1 + 64);
  v16 = sub_10002FD40;
  v17 = v1;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000102BC;
  v15 = &unk_100072AF0;
  v7 = _Block_copy(&v12);
  swift_retain_n();

  [v6 setBluetoothStateChangedHandler:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002FD38;
  *(v8 + 24) = v1;
  v16 = sub_10002FD80;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000102BC;
  v15 = &unk_100072B40;
  v9 = _Block_copy(&v12);

  [v6 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10002FD88;
  v17 = v1;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018ABC;
  v15 = &unk_100072B68;
  v10 = _Block_copy(&v12);

  [v6 activateWithCompletion:v10];
  _Block_release(v10);
}

void sub_10002CC5C(uint64_t a1)
{
  v1 = *(a1 + 64);
  v3[4] = sub_10002FEA0;
  v3[5] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100018ABC;
  v3[3] = &unk_100072B90;
  v2 = _Block_copy(v3);

  [v1 activateWithCompletion:v2];
  _Block_release(v2);
}

void sub_10002CD24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000032F0(v2, qword_10007F670);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to activate CBController: %@", v4, 0xCu);
      sub_10002FCB0(v5);
    }

    else
    {
    }
  }

  else
  {
    *(a2 + 80) = 1;
    *(a2 + 84) = [*(a2 + 64) bluetoothState] == 5;
    v8 = *(a2 + 56);
    if (v8)
    {
      v8 &= ~1uLL;
      *(a2 + 56) = v8;
    }

    if (!v8)
    {
      v9 = *(a2 + 24);
      if (v9)
      {
        v10 = *(a2 + 32);

        v9(v11);
        sub_100002E6C(v9);
        v12 = *(a2 + 24);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 32);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;

      sub_100002E6C(v12);
    }
  }
}

void sub_10002CF64(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(a1 + 84) = [v2 bluetoothState] == 5;
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000032F0(v3, qword_10007F670);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_10002FD90([v2 bluetoothState]);
    v8 = String.init(cString:)();
    v10 = sub_10003FFF4(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "New Bluetooth State:  %s", v6, 0xCu);
    sub_100009AB0(v7);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 84);

    v11(v13, 1);

    sub_100002E6C(v11);
  }
}

uint64_t sub_10002D148(uint64_t (*a1)(void))
{
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection to CoreBluetooth interrupted - Re-activating", v5, 2u);
  }

  return a1();
}

void sub_10002D23C()
{
  if ((*(v0 + 82) & 1) == 0 && (*(v0 + 84) & 1) == 0)
  {
    v1 = v0;
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000032F0(v2, qword_10007F670);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Turning on Bluetooth", v5, 2u);
    }

    *(v1 + 82) = 1;
    v6 = *(v1 + 64);
    v8[4] = sub_10002FD30;
    v8[5] = v1;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100018ABC;
    v8[3] = &unk_100072AC8;
    v7 = _Block_copy(v8);

    [v6 setPowerState:5 completion:v7];
    _Block_release(v7);
  }
}

void sub_10002D3D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 82) = 0;
    swift_errorRetain();
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000032F0(v2, qword_10007F670);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to turn on Bluetooth: %@", v4, 0xCu);
      sub_10002FCB0(v5);
    }

    else
    {
    }
  }
}

id sub_10002D57C()
{
  v1 = v0;
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring CWFInterface", v5, 2u);
  }

  v6 = *(v1 + 72);
  v19 = sub_10002FD20;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10001BE14;
  v18 = &unk_100072A78;
  v7 = _Block_copy(&aBlock);

  [v6 setEventHandler:v7];
  _Block_release(v7);
  v19 = sub_10002FD28;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000102BC;
  v18 = &unk_100072AA0;
  v8 = _Block_copy(&aBlock);

  [v6 setInterruptionHandler:v8];
  _Block_release(v8);
  [v6 activate];
  sub_10002DC0C(&off_1000711C0);
  *(v1 + 81) = 1;
  result = [v6 powerOn];
  *(v1 + 86) = result;
  v10 = *(v1 + 56);
  if ((v10 & 2) != 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFDLL;
    *(v1 + 56) = v11;
    if (!v11)
    {
      v12 = *(v1 + 24);
      if (v12)
      {
        v13 = *(v1 + 32);

        v12(v14);
        return sub_100002E6C(v12);
      }
    }
  }

  return result;
}

id sub_10002D924(void *a1, uint64_t a2)
{
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_10007F670);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "CWFInterface event %@", v8, 0xCu);
    sub_10002FCB0(v9);
  }

  result = [v5 type];
  if (result == 1)
  {
    *(a2 + 83) = 0;
    result = [*(a2 + 72) powerOn];
    *(a2 + 86) = result;
    v12 = *(a2 + 56);
    if (v12)
    {
      if ((v12 & 2) == 0)
      {
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFDLL;
      *(a2 + 56) = v13;
      if (v13)
      {
        return result;
      }

      v14 = *(a2 + 24);
      if (!v14)
      {
        return result;
      }

      v15 = *(a2 + 32);

      v14(v16);
    }

    else
    {
      v14 = *(a2 + 40);
      if (!v14)
      {
        return result;
      }

      v17 = *(a2 + 48);
      v18 = result;

      (v14)(v18, 2);
    }

    return sub_100002E6C(v14);
  }

  return result;
}

id sub_10002DB14(uint64_t a1)
{
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection to CoreWiFi interrupted - Re-activating", v5, 2u);
  }

  v6 = *(a1 + 72);

  return [v6 activate];
}

void *sub_10002DC0C(void *result)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result + 4;
    while (1)
    {
      v4 = *v3++;
      v6 = 0;
      if (![v1 startMonitoringEventType:v4 error:&v6])
      {
        break;
      }

      result = v6;
      if (!--v2)
      {
        return result;
      }
    }

    v5 = v6;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10002DCD4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 83) & 1) == 0 && (*(v0 + 86) & 1) == 0)
  {
    *(v0 + 83) = 1;
    v14[1] = *(v0 + 16);
    v15 = result;
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10002FBF4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000102BC;
    aBlock[3] = &unk_100072A28;
    v14[0] = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v16 = _swiftEmptyArrayStorage;
    sub_10002FC14(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v14[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v15);
  }

  return result;
}

void sub_10002DFBC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v34 = v4;
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v33 = v6;
    v12 = type metadata accessor for Logger();
    sub_1000032F0(v12, qword_10007F670);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Turning on Wi-Fi", v15, 2u);
    }

    v16 = *(v11 + 72);
    aBlock[0] = 0;
    v17 = [v16 setPower:1 error:aBlock];
    v18 = aBlock[0];
    if (v17)
    {
      *(v11 + 83) = 0;
      v19 = *(v11 + 72);
      v20 = v18;
      *(v11 + 86) = [v19 powerOn];
      sub_10002A43C();
      v32 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_10002FD18;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000102BC;
      aBlock[3] = &unk_100072A50;
      v22 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v35 = _swiftEmptyArrayStorage;
      sub_10002FC14(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
      v31 = v5;
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v23 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v32;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      (*(v1 + 8))(v23, v0);
      (*(v33 + 8))(v9, v31);
    }

    else
    {
      v25 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v11 + 83) = 0;
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Unable to turn on Wi-Fi: %@", v28, 0xCu);
        sub_10002FCB0(v29);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10002E518()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      if ((v1 & 2) != 0)
      {
        v2 = v1 & 0xFFFFFFFFFFFFFFFDLL;
        *(result + 56) = v2;
        if (!v2)
        {
          v3 = *(result + 24);
          if (v3)
          {
            v4 = *(result + 32);

            v3(v5);
            sub_100002E6C(v3);
          }
        }
      }
    }

    else
    {
      v6 = *(result + 40);
      if (v6)
      {
        v7 = *(result + 48);
        v8 = *(result + 86);

        v6(v8, 2);
        sub_100002E6C(v6);
      }
    }
  }

  return result;
}

uint64_t sub_10002E5F4()
{
  [*(v0 + 64) invalidate];
  [*(v0 + 72) invalidate];

  v1 = *(v0 + 32);
  sub_100002E6C(*(v0 + 24));
  v2 = *(v0 + 48);
  sub_100002E6C(*(v0 + 40));

  return v0;
}

uint64_t sub_10002E658()
{
  sub_10002E5F4();

  return _swift_deallocClassInstance(v0, 88, 7);
}

_BYTE *sub_10002E68C()
{
  v1 = v0;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10002A43C();
  v17[0] = &OBJC_IVAR____TtC16AccessorySetupUI17ASUISystemMonitor_bluetoothRestricted;
  v17[1] = v10;
  static DispatchQoS.userInitiated.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10002FC14(&qword_10007F8E8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100009894(&unk_1000804B0, &unk_10005D1B0);
  sub_10002FC5C(&qword_10007F8F0, &unk_1000804B0, &unk_10005D1B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(CBController) init];
  *(v0 + 72) = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  *(v0 + 80) = 0;
  *(v0 + 84) = 0;
  v11 = objc_opt_self();
  result = [v11 sharedConnection];
  if (result)
  {
    v13 = result;
    v14 = [result isBluetoothModificationAllowed];

    v1[85] = v14;
    v1[86] = 0;
    result = [v11 sharedConnection];
    if (result)
    {
      v15 = result;
      v16 = [result isWiFiPowerModificationAllowed];

      v1[87] = v16;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OptionSet<>.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 8) + 24) + 16);
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  swift_checkMetadataState();
  v9 = swift_allocBox();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = swift_allocBox();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v9;
  v11[6] = v10;
  type metadata accessor for AnyIterator();
  swift_getWitnessTable();
  return AnySequence.init<A>(_:)();
}

uint64_t sub_10002EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;

  result = AnyIterator.init(_:)();
  *a6 = result;
  return result;
}

uint64_t sub_10002EC60@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v67 = a4;
  v72 = a3;
  v4 = *(a3 + 8);
  v5 = *(v4[3] + 16);
  v71 = a2;
  v66 = *(a2 + 8);
  v73 = a1;
  swift_getAssociatedTypeWitness();
  v70 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v68 = &v62 - v7;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v64 = &v62 - v14;
  v15 = __chkstk_darwin(v13);
  v74 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v62 - v21;
  __chkstk_darwin(v20);
  v24 = &v62 - v23;
  v25 = swift_projectBox();
  v26 = swift_projectBox();
  swift_beginAccess();
  v79 = v25;
  swift_beginAccess();
  v76 = v26;
  swift_beginAccess();
  v75 = (v9 + 8);
  v65 = v9;
  v27 = *(v9 + 16);
  v78 = v9 + 16;
  v77 = v27;
  v27(v24, v79, v8);
  while (1)
  {
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v30 = dispatch thunk of BinaryInteger._lowWord.getter();
        v31 = *v75;
        (*v75)(v24, v8);
        if (!v30)
        {
          return (*(*(v73 - 8) + 56))(v67, 1, 1);
        }

        goto LABEL_21;
      }

LABEL_10:
      v80 = 0;
      sub_10002FE04();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v34 = *(v4[2] + 8);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *v75;
      (*v75)(v22, v8);
      v31(v24, v8);
      if (v35)
      {
        return (*(*(v73 - 8) + 56))(v67, 1, 1);
      }

      goto LABEL_21;
    }

    v32 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v33 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v32)
    {
      if (v33 > 64)
      {
        goto LABEL_10;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v39 = *(v4[4] + 8);
      v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v31 = *v75;
      (*v75)(v22, v8);
      if (v40)
      {
        v41 = dispatch thunk of BinaryInteger._lowWord.getter();
        v31(v24, v8);
        if (!v41)
        {
          return (*(*(v73 - 8) + 56))(v67, 1, 1);
        }
      }

      else
      {
        v31(v24, v8);
      }
    }

    else
    {
      v36 = v19;
      v37 = v75;
      if (v33 >= 64)
      {
        v80 = 0;
        sub_10002FE04();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v42 = *(v4[2] + 8);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *v37;
        (*v37)(v22, v8);
        v31(v24, v8);
        if (v43)
        {
          return (*(*(v73 - 8) + 56))(v67, 1, 1);
        }
      }

      else
      {
        v38 = dispatch thunk of BinaryInteger._lowWord.getter();
        v31 = *v37;
        (*v37)(v24, v8);
        if (!v38)
        {
          return (*(*(v73 - 8) + 56))(v67, 1, 1);
        }
      }

      v19 = v36;
    }

LABEL_21:
    v44 = v77;
    v77(v22, v79, v8);
    v45 = v74;
    v44(v74, v76, v8);
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v31(v45, v8);
    v31(v22, v8);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        goto LABEL_2;
      }

      goto LABEL_29;
    }

    v46 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v47 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v46)
    {
      break;
    }

    if (v47 >= 64)
    {
LABEL_2:
      v80 = 0;
      sub_10002FE04();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v28 = *(v4[2] + 8);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31(v22, v8);
      v31(v19, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

LABEL_29:
    v50 = dispatch thunk of BinaryInteger._lowWord.getter();
    v31(v19, v8);
    if (v50)
    {
      goto LABEL_32;
    }

LABEL_3:
    sub_10002F678(v76, v73, v71, v72);
    v77(v24, v79, v8);
  }

  if (v47 > 64)
  {
    goto LABEL_2;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v48 = *(v4[4] + 8);
  v49 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v31(v22, v8);
  if (v49)
  {
    goto LABEL_29;
  }

  v31(v19, v8);
LABEL_32:
  v52 = v79;
  swift_beginAccess();
  v53 = v74;
  v54 = v52;
  v55 = v77;
  v77(v74, v54, v8);
  v56 = v55;
  v57 = v76;
  swift_beginAccess();
  v58 = v63;
  v56(v63, v57, v8);
  v59 = v64;
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  v31(v58, v8);
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v31(v59, v8);
  v31(v53, v8);
  v60 = v79;
  swift_beginAccess();
  (*(v65 + 40))(v60, v22, v8);
  swift_beginAccess();
  v77(v22, v57, v8);
  v61 = v73;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  return sub_10002F678(v57, v61, v71, v72);
}

uint64_t sub_10002F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 8) + 24) + 16);
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v22[-v16];
  __chkstk_darwin(v15);
  v19 = &v22[-v18];
  swift_beginAccess();
  (*(v10 + 16))(v17, a1, v9);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static FixedWidthInteger.&* infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v14, v9);
  v20(v17, v9);
  swift_beginAccess();
  return (*(v10 + 40))(a1, v19, v9);
}

unint64_t sub_10002F94C()
{
  result = qword_10007F8C8;
  if (!qword_10007F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8C8);
  }

  return result;
}

unint64_t sub_10002F9A4()
{
  result = qword_10007F8D0;
  if (!qword_10007F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8D0);
  }

  return result;
}

unint64_t sub_10002F9FC()
{
  result = qword_10007F8D8;
  if (!qword_10007F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8D8);
  }

  return result;
}

unint64_t sub_10002FA54()
{
  result = qword_10007F8E0;
  if (!qword_10007F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8E0);
  }

  return result;
}

uint64_t sub_10002FAA8()
{
  v0 = SCDynamicStoreCopyComputerName(0, 0);
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 model];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10002FB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10002FBBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002FC14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002FC5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002FCB0(uint64_t a1)
{
  v2 = sub_100009894(&qword_10007F278, &unk_10005CD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FD48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_10002FD90(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_100072BE0[a1];
  }
}

uint64_t sub_10002FDB4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002FDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  return sub_10002EC60(v1[2], v1[3], v1[4], a1);
}

unint64_t sub_10002FE04()
{
  result = qword_10007F8F8;
  if (!qword_10007F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8F8);
  }

  return result;
}

void sub_10002FEA4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[6];
  v10 = a1[7];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v87 = sub_100031154;
  v88 = v11;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_10001BE14;
  v86 = &unk_100072CC8;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  [v15 setEnabled:0];
  v82 = v15;

  v16 = a1[8];
  v17 = a1[9];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v87 = sub_10003119C;
  v88 = v18;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_10001BE14;
  v86 = &unk_100072CF0;
  v20 = _Block_copy(&aBlock);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v81 = v21;

  v22 = [objc_allocWithZone(PRXPasscodeEntryView) initWithNumberOfDigits:*&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_numberOfDigits] useMonospacedFont:1 delegate:v1];
  v23 = OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView;
  v24 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView] = v22;
  v25 = v22;

  [v25 addTarget:v1 action:"textDidChange:" forControlEvents:4096];
  v26 = *&v1[v23];
  if (!v26)
  {
    __break(1u);
    goto LABEL_29;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v1 contentView];
  if (!*&v1[v23])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = v27;
  [v27 addSubview:?];

  v29 = a1[15];
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v29 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) <= 1u && *(v29 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
  {
    goto LABEL_13;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_14;
  }

  if (*(v29 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 2u)
  {
LABEL_13:

    goto LABEL_14;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    v32 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v33 = String._bridgeToObjectiveC()();
  v34 = [objc_opt_self() _systemImageNamed:v33];

  v32 = [objc_allocWithZone(UIImageView) initWithImage:v34];
  v35 = [objc_opt_self() systemBlueColor];
  [v32 setTintColor:v35];

  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [objc_opt_self() configurationWithPointSize:40.0];
  [v32 setPreferredSymbolConfiguration:v36];

  v37 = v32;
  v38 = [v1 contentView];
  [v38 addSubview:v37];

LABEL_15:
  v39 = [v1 contentView];
  v40 = [v39 mainContentGuide];

  if (v32)
  {
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10005C450;
    v42 = v32;
    v43 = [v42 topAnchor];
    v44 = [v40 topAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

    *(v41 + 32) = v45;
    v46 = [v42 centerXAnchor];
    v47 = [v40 centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v41 + 40) = v48;
    v49 = *&v1[v23];
    if (v49)
    {
      v50 = [v49 topAnchor];
      v51 = [v42 bottomAnchor];

      v52 = [v50 constraintEqualToAnchor:v51 constant:28.0];
      *(v41 + 48) = v52;

      v53 = *&v1[v23];
      if (v53)
      {
        v54 = [v53 bottomAnchor];
        v55 = [v40 bottomAnchor];
        v56 = [v54 constraintLessThanOrEqualToAnchor:v55 constant:-32.0];

        *(v41 + 56) = v56;
        v57 = *&v1[v23];
        if (v57)
        {
          v58 = objc_opt_self();
          v59 = [v57 centerXAnchor];
          v60 = [v40 centerXAnchor];
          v61 = [v59 constraintEqualToAnchor:v60];

          *(v41 + 64) = v61;
          sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
          v62.super.isa = Array._bridgeToObjectiveC()().super.isa;

          [v58 activateConstraints:v62.super.isa];

LABEL_27:
          return;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_10005C4D0;
  v64 = *&v1[v23];
  if (!v64)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v65 = [v64 topAnchor];
  v66 = [v40 topAnchor];
  if (qword_10007EC18 != -1)
  {
    swift_once();
  }

  v67 = [v65 constraintGreaterThanOrEqualToAnchor:v66 constant:*&qword_1000814D8];

  *(v63 + 32) = v67;
  v68 = *&v1[v23];
  if (!v68)
  {
    goto LABEL_35;
  }

  v69 = [v68 bottomAnchor];
  v70 = [v40 bottomAnchor];
  v71 = [v69 constraintLessThanOrEqualToAnchor:v70 constant:-32.0];

  *(v63 + 40) = v71;
  v72 = *&v1[v23];
  if (!v72)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v73 = [v72 centerXAnchor];
  v74 = [v40 centerXAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v63 + 48) = v75;
  v76 = *&v1[v23];
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = [v76 centerYAnchor];
    v79 = [v40 centerYAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v63 + 56) = v80;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    v62.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v77 activateConstraints:v62.super.isa];
    goto LABEL_27;
  }

LABEL_37:
  __break(1u);
}

void *sub_100030A04()
{
  sub_10003B898();
  v1 = OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  [result resignFirstResponder];
  result = *(v0 + v1);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [result setEnabled:0];
  v3 = v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v11[2] = *(v3 + 32);
  v11[3] = v4;
  v12 = *(v3 + 64);
  v5 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v11);
  if (*(v3 + 16) == 1)
  {
    goto LABEL_6;
  }

  *v3 = 1;
  result = *(v0 + v1);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = [result text];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v3 + 32);
  *(v3 + 24) = v7;
  *(v3 + 32) = v9;

LABEL_6:
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042724(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100030B5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_100030BB8()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042724(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100030CE4(void *a1)
{
  v2 = [a1 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.count.getter();

  v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_numberOfDigits];
  v5 = [v1 actions];
  sub_100009B48(0, &qword_10007F9B0, PRXAction_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v3 >= v4)
  {
    if (!v7)
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:

        __break(1u);
        goto LABEL_21;
      }

LABEL_10:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v9 = *(v6 + 32);
      }

      v10 = v9;

      [v10 setEnabled:1];
      goto LABEL_14;
    }

LABEL_19:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 32);
LABEL_7:
  v10 = v8;

  [v10 setEnabled:0];
LABEL_14:
}

__n128 sub_100031098@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003111C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000311D4(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v1 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v9];

  v10 = a1[6];
  v11 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v85 = sub_1000321B0;
  v86 = v12;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_10001BE14;
  v84 = &unk_100072DA8;
  v14 = _Block_copy(&aBlock);
  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v80 = v16;

  v17 = a1[8];
  v18 = a1[9];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = String._bridgeToObjectiveC()();
  v85 = sub_1000321F8;
  v86 = v19;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_10001BE14;
  v84 = &unk_100072DD0;
  v21 = _Block_copy(&aBlock);
  v22 = [v15 actionWithTitle:v20 style:1 handler:v21];

  _Block_release(v21);

  v79 = v22;

  v23 = a1[15];
  if (!v23)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v23 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) <= 1u && *(v23 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
  {

LABEL_8:
    v25 = String._bridgeToObjectiveC()();
    p_ivars = (&ASUIPresenter + 48);
    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_8;
  }

  if (*(v23 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 2u)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      v28 = 0;
      p_ivars = (&ASUIPresenter + 48);
      goto LABEL_15;
    }
  }

  v25 = String._bridgeToObjectiveC()();
  p_ivars = &ASUIPresenter.ivars;
LABEL_14:
  v29 = [objc_opt_self() _systemImageNamed:v25];

  v28 = [objc_allocWithZone(UIImageView) initWithImage:v29];
  v30 = [objc_opt_self() systemBlueColor];
  [v28 setTintColor:v30];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [objc_opt_self() configurationWithPointSize:40.0];
  [v28 setPreferredSymbolConfiguration:v31];

  v32 = v28;
  v33 = [v2 contentView];
  [v33 p_ivars[150]];

LABEL_15:
  v34 = [objc_allocWithZone(UILabel) init];
  if (!a1[18])
  {
LABEL_23:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = a1[17];
  v37 = String._bridgeToObjectiveC()();
  [v35 setText:v37];

  v38 = [objc_opt_self() monospacedSystemFontOfSize:48.0 weight:UIFontWeightMedium];
  [v35 setFont:v38];

  v39 = v35;
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v2 contentView];
  [v40 p_ivars[150]];

  v41 = [v2 contentView];
  v42 = [v41 mainContentGuide];

  if (v28)
  {
    v78 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10005CC90;
    v44 = v28;
    v45 = [v44 topAnchor];
    v46 = [v42 topAnchor];
    v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46];

    *(v43 + 32) = v47;
    v48 = [v44 bottomAnchor];
    v49 = [v42 bottomAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

    *(v43 + 40) = v50;
    v51 = [v44 centerXAnchor];
    v52 = [v42 centerXAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v43 + 48) = v53;
    v54 = [v39 topAnchor];
    v55 = [v44 bottomAnchor];

    v56 = [v54 constraintEqualToAnchor:v55 constant:28.0];
    *(v43 + 56) = v56;
    v57 = [v39 bottomAnchor];
    v58 = [v42 bottomAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:-32.0];

    *(v43 + 64) = v59;
    v60 = [v39 centerXAnchor];

    v61 = [v42 centerXAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v43 + 72) = v62;
    sub_10000A5E8();
    v63.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v78 activateConstraints:v63.super.isa];
  }

  else
  {
    v64 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10005C4D0;
    v66 = [v39 topAnchor];
    v67 = [v42 topAnchor];
    if (qword_10007EC18 != -1)
    {
      swift_once();
    }

    v68 = [v66 constraintGreaterThanOrEqualToAnchor:v67 constant:*&qword_1000814D8];

    *(v65 + 32) = v68;
    v69 = [v39 bottomAnchor];
    v70 = [v42 bottomAnchor];
    v71 = [v69 constraintLessThanOrEqualToAnchor:v70 constant:-32.0];

    *(v65 + 40) = v71;
    v72 = [v39 centerXAnchor];
    v73 = [v42 centerXAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v65 + 48) = v74;
    v75 = [v39 centerYAnchor];

    v76 = [v42 centerYAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(v65 + 56) = v77;
    sub_10000A5E8();
    v63.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v64 activateConstraints:v63.super.isa];
  }
}

char *sub_100031D60()
{
  sub_10003B898();
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042754(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100031E2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_100031E88()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042754(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000320F4@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100032178()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000321E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000323F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100032460(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v10 = a1[6];
  v11 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v51 = sub_100032E0C;
  v52 = v12;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE14;
  v50 = &unk_100072E88;
  v14 = _Block_copy(&aBlock);
  v15 = objc_opt_self();
  v46 = [v15 actionWithTitle:v13 style:1 handler:v14];

  _Block_release(v14);

  v17 = a1[8];
  v16 = a1[9];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v51 = sub_100032E44;
  v52 = v18;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE14;
  v50 = &unk_100072EB0;
  v20 = _Block_copy(&aBlock);
  v21 = [v15 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() _systemImageNamed:v22];

  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];
  v25 = [objc_opt_self() systemBlueColor];
  [v24 setTintColor:v25];

  v26 = v24;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [objc_opt_self() configurationWithPointSize:72.0];
  [v26 setPreferredSymbolConfiguration:v27];

  v28 = [v2 contentView];
  [v28 addSubview:v26];

  v29 = [v2 contentView];
  v30 = [v29 mainContentGuide];

  v31 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10005C4D0;
  v33 = [v26 topAnchor];
  v34 = [v30 topAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34];

  *(v32 + 32) = v35;
  v36 = [v26 bottomAnchor];
  v37 = [v30 bottomAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37];

  *(v32 + 40) = v38;
  v39 = [v26 centerXAnchor];
  v40 = [v30 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v32 + 48) = v41;
  v42 = [v26 centerYAnchor];

  v43 = [v30 centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v32 + 56) = v44;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

void sub_100032A88(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100032AE4(a3);
  }
}

char *sub_100032AE4(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042784(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100032D50@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100032DD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032E6C()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007FA70);
  v1 = sub_1000032F0(v0, qword_10007FA70);
  if (qword_10007EBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000330D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100033140(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    if (qword_10007EC38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000032F0(v25, qword_10007FA70);
    v26 = a1;
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      swift_getObjectType();
      v30 = _typeName(_:qualified:)();
      v32 = sub_10003FFF4(v30, v31, &v41);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, oslog, v27, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v28, 0xCu);
      sub_100009AB0(v29);
    }

    goto LABEL_20;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 configurationIdentifier];
  if (v9)
  {

    [v7 setOrientationChangedEventsDisabled:1];
    [v7 setAllowsMenuButtonDismissal:0];
    [v7 setDesiredHardwareButtonEvents:0];
    v10 = v8;
    v11 = sub_100002CF8(v7, a2);
    v12 = OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window;
    v13 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window) = v11;

    v14 = [objc_allocWithZone(type metadata accessor for ASUIRootViewController()) init];
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      sub_1000335E8();
      static Color.clear.getter();
      v17 = UIColor.init(_:)();
      [v16 setBackgroundColor:v17];

      v18 = [v14 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 layer];

        [v20 setAllowsHitTesting:0];
        v21 = *(v3 + v12);
        if (v21)
        {
          v22 = v21;
          [v22 setRootViewController:v14];
        }

        v23 = *(v3 + v12);
        if (v23)
        {
          [v23 makeKeyAndVisible];
          v24 = *(v3 + v12);
          if (v24)
          {
            [v24 setHidden:0];
          }
        }

        oslog = String._bridgeToObjectiveC()();
        [v7 setIdleTimerDisabled:1 forReason:oslog];

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_10007EC38 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000032F0(v33, qword_10007FA70);
  v34 = v8;
  oslog = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v35))
  {

LABEL_20:
    v38 = oslog;
    goto LABEL_21;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  *v36 = 138412290;
  *(v36 + 4) = v7;
  *v37 = v7;
  v39 = v34;
  _os_log_impl(&_mh_execute_header, oslog, v35, "Could not find configuration identifier on remote alert scene: %@", v36, 0xCu);
  sub_10002FCB0(v37);

  v38 = v39;
LABEL_21:
}

unint64_t sub_1000335E8()
{
  result = qword_10007FAC0;
  if (!qword_10007FAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007FAC0);
  }

  return result;
}

__n128 sub_1000337DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

void sub_10003384C()
{
  v1 = v0;
  sub_100009894(&qword_10007FC88, &qword_10005CDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005CDA0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device;
  v4 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device);
  if (!v4)
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = inited;
  v7 = v4;
  v8 = [v5 identifier];
  if (!v8)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v6 + 48) = v10;
  *(v6 + 56) = v12;
  *(v6 + 64) = 0x656D614E2041544FLL;
  *(v6 + 72) = 0xE800000000000000;
  v13 = *(v1 + v3);
  if (!v13)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_100035628();
  v17 = v16;

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(v6 + 80) = v18;
  *(v6 + 88) = v19;
  strcpy((v6 + 96), "Technologies");
  *(v6 + 109) = 0;
  *(v6 + 110) = -5120;
  v20 = *(v1 + v3);
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = v20;
  v22 = sub_100036194();

  v23 = *(v22 + 2);
  if (v23)
  {
    v39 = v6;
    sub_100039810(0, v23, 0);
    v24 = 32;
    do
    {
      v25 = v22[v24];
      if (v25 == 2)
      {
        v26 = 0x74666F5369666977;
      }

      else
      {
        v26 = 0x7261774169666977;
      }

      if (v25 == 2)
      {
        v27 = 0xEA00000000005041;
      }

      else
      {
        v27 = 0xE900000000000065;
      }

      v28 = 0xE900000000000068;
      if (v22[v24])
      {
        v29 = 0x746F6F7465756C62;
      }

      else
      {
        v29 = 1701736302;
      }

      if (!v22[v24])
      {
        v28 = 0xE400000000000000;
      }

      if (v22[v24] <= 1u)
      {
        v30 = v29;
      }

      else
      {
        v30 = v26;
      }

      if (v22[v24] <= 1u)
      {
        v31 = v28;
      }

      else
      {
        v31 = v27;
      }

      v33 = _swiftEmptyArrayStorage[2];
      v32 = _swiftEmptyArrayStorage[3];
      if (v33 >= v32 >> 1)
      {
        sub_100039810((v32 > 1), v33 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v33 + 1;
      v34 = &_swiftEmptyArrayStorage[2 * v33];
      v34[4] = v30;
      v34[5] = v31;
      ++v24;
      --v23;
    }

    while (v23);

    v6 = v39;
  }

  else
  {
  }

  v35 = Array.description.getter();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  *(v6 + 112) = 0;
  *(v6 + 120) = 0xE000000000000000;
  sub_100042D4C(v6);
  swift_setDeallocating();
  sub_100009894(&unk_10007FC90, &unk_10005CDE0);
  swift_arrayDestroy();
}

void sub_100033BB4()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemWhiteColor];
  [v2 setBackgroundColor:v4];

  [v0 preferredContentSize];
  v6 = v5;
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v17 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, v6 + -20.0, CGRectGetHeight(v28)}];
  v18 = OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView;
  v19 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView] = v17;
  v20 = v17;

  [v20 setDelegate:v0];
  v21 = *&v0[v18];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v21 setDataSource:v0];
  v22 = *&v0[v18];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v3 systemGroupedBackgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*&v0[v18])
  {
    v26 = v25;
    [v25 addSubview:?];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100034090(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView] = 0;
  v5 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey];
  *v5 = 0x696669746E656449;
  *(v5 + 1) = 0xEA00000000007265;
  v6 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey];
  *v6 = 0x656D614E2041544FLL;
  *(v6 + 1) = 0xE800000000000000;
  v7 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_typeKey];
  *v7 = 0x7954207465737341;
  *(v7 + 1) = 0xEA00000000006570;
  v8 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey];
  strcpy(&v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey], "Technologies");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100034224(void *a1)
{
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView] = 0;
  v3 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey];
  *v3 = 0x696669746E656449;
  *(v3 + 1) = 0xEA00000000007265;
  v4 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey];
  *v4 = 0x656D614E2041544FLL;
  *(v4 + 1) = 0xE800000000000000;
  v5 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_typeKey];
  *v5 = 0x7954207465737341;
  *(v5 + 1) = 0xEA00000000006570;
  v6 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey];
  strcpy(&v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey], "Technologies");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100034360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100034454()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey + 8);
  v29[0] = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey);
  v29[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey + 8);
  v29[2] = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey);
  v29[3] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey + 8);
  v29[4] = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey);
  v29[5] = v8;

  result = IndexPath.row.getter();
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    v10 = &v29[2 * result];
    v11 = *v10;
    v12 = v10[1];

    swift_arrayDestroy();
    sub_10003384C();
    v14 = v13;
    if (*(v13 + 16))
    {
      v15 = sub_10001F768(v11, v12);
      if (v16)
      {
        v17 = (*(v14 + 56) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
      }
    }

    v20 = [objc_allocWithZone(UITableViewCell) initWithStyle:1 reuseIdentifier:0];
    UITableViewCell.defaultContentConfiguration()();
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    v21 = objc_opt_self();
    v22 = [v21 labelColor];
    v23 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v23(v28, 0);
    v24 = [v21 secondaryLabelColor];
    v25 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v25(v28, 0);
    v28[3] = v1;
    v28[4] = &protocol witness table for UIListContentConfiguration;
    v26 = sub_100034738(v28);
    (*(v2 + 16))(v26, v5, v1);
    UITableViewCell.contentConfiguration.setter();
    (*(v2 + 8))(v5, v1);
    return v20;
  }

  return result;
}

uint64_t *sub_100034738(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10003479C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v10 = OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_restrictedCapabilities;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_restrictedCapabilities] = a1[25];
  v11 = a1[6];
  v12 = a1[7];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  v53 = sub_1000350F8;
  v54 = v13;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10001BE14;
  v52 = &unk_100072FD0;
  v15 = _Block_copy(&aBlock);
  v16 = objc_opt_self();
  v48 = [v16 actionWithTitle:v14 style:0 handler:v15];

  _Block_release(v15);

  v18 = a1[8];
  v17 = a1[9];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = String._bridgeToObjectiveC()();
  v53 = nullsub_1;
  v54 = v19;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10001BE14;
  v52 = &unk_100072FF8;
  v21 = _Block_copy(&aBlock);
  v22 = [v16 actionWithTitle:v20 style:1 handler:v21];

  _Block_release(v21);

  v23 = *&v2[v10];
  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() _systemImageNamed:v24];

  v26 = [objc_allocWithZone(UIImageView) initWithImage:v25];
  v27 = [objc_opt_self() systemBlueColor];
  [v26 setTintColor:v27];

  v28 = v26;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [objc_opt_self() configurationWithPointSize:72.0];
  [v28 setPreferredSymbolConfiguration:v29];

  v30 = [v2 contentView];
  [v30 addSubview:v28];

  v31 = [v2 contentView];
  v32 = [v31 mainContentGuide];

  v33 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10005C4D0;
  v35 = [v28 topAnchor];
  v36 = [v32 topAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [v28 bottomAnchor];
  v39 = [v32 bottomAnchor];
  v40 = [v38 constraintLessThanOrEqualToAnchor:v39];

  *(v34 + 40) = v40;
  v41 = [v28 centerXAnchor];
  v42 = [v32 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v34 + 48) = v43;
  v44 = [v28 centerYAnchor];

  v45 = [v32 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v34 + 56) = v46;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];
}

void sub_100034E30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      sub_1000405F8(v1, v2);
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_100035050@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000350C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10003512C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000351F0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000352A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100035360@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100036B40(*a1);
  *a2 = result;
  return result;
}

void sub_100035390(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEA00000000005041;
  v5 = 0x74666F5369666977;
  if (*v1 != 2)
  {
    v5 = 0x7261774169666977;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x746F6F7465756C62;
    v2 = 0xE900000000000068;
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

void sub_100035410()
{
  v1 = v0;
  v2 = *(sub_100036360() + 2);

  v3 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (v2 < 2)
  {
    if (v4)
    {
      v16 = [v4 discoveryConfiguration];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 associationIdentifier];

        if (v18)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v19._countAndFlagsBits = 43;
          v19._object = 0xE100000000000000;
          String.append(_:)(v19);

          v20 = sub_100035628();
          if (v21)
          {
            v22 = v20;
          }

          else
          {
            v22 = 0;
          }

          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = 0xE000000000000000;
          }

          v24._countAndFlagsBits = v22;
          v24._object = v23;
          String.append(_:)(v24);

          goto LABEL_18;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (!v4)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = [v4 discoveryConfiguration];
  if (!v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5;
  v7 = [v5 associationIdentifier];

  if (!v7)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8._countAndFlagsBits = 43;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9 = *(v1 + v3);
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = [v9 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

LABEL_18:

    return;
  }

LABEL_26:
  __break(1u);
}

void *sub_100035628()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = [result bluetoothOTAName];
  if (v3)
  {
    goto LABEL_7;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = [result SSID];
  if (v3)
  {
    goto LABEL_7;
  }

  result = *(v0 + v1);
  if (result)
  {
    v3 = [result wifiAwareOTAName];
    if (!v3)
    {
      return 0;
    }

LABEL_7:
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1000356E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = [v1 appAccessInfoMap];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_100036BF4();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_appBundleID + 8);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v4 + 16) && (v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_appBundleID), , v7 = sub_10001F768(v6, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v4 + 56) + 8 * v7);

    [v10 state];
  }

  else
  {
  }
}

char *sub_1000357FC()
{
  v1 = *(*(sub_100009894(&qword_10007F2C0, &qword_10005C5C0) - 8) + 64);
  v2 = (__chkstk_darwin)();
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = &v32 - v4;
  v5 = sub_100036194();
  v6 = *(v5 + 2);
  v7 = v5 + 32;
  while (1)
  {
    if (!v6)
    {

LABEL_12:
      v33 = &_swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    if (*v7 <= 1u && *v7)
    {
      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v7;
    --v6;
    if (v8)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v10 = [result bluetoothIdentifier];
  if (v10)
  {
    v11 = v33;
    v12 = v10;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    sub_100036B8C(v11);
    goto LABEL_12;
  }

  v14 = type metadata accessor for UUID();
  v15 = v33;
  (*(*(v14 - 8) + 56))(v33, 1, 1, v14);
  sub_100036B8C(v15);
  v16 = sub_10001F674(0, 1, 1, &_swiftEmptyArrayStorage);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_10001F674((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v33 = v16;
  v16[v18 + 32] = 1;
LABEL_16:
  v19 = sub_100036194();
  v20 = *(v19 + 2);
  v21 = (v19 + 32);
  while (1)
  {
    if (!v20)
    {

      return v33;
    }

    if (*v21 > 2u)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v21;
    --v20;
    if (v22)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  v23 = v33;
  if (!result)
  {
    goto LABEL_33;
  }

  v24 = [result wifiAwareDevicePairingID];
  if (v24)
  {
    v25 = v32;
    v26 = v24;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
    sub_100036B8C(v25);
  }

  else
  {
    v28 = type metadata accessor for UUID();
    v29 = v32;
    (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
    sub_100036B8C(v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10001F674(0, *(v23 + 2) + 1, 1, v23);
    }

    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v23 = sub_10001F674((v30 > 1), v31 + 1, 1, v23);
    }

    *(v23 + 2) = v31 + 1;
    v23[v31 + 32] = 3;
  }

  return v23;
}

char *sub_100035CC8()
{
  v1 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v33 - v5;
  v6 = sub_100036194();
  v7 = *(v6 + 2);
  v8 = v6 + 32;
  while (1)
  {
    if (!v7)
    {

LABEL_15:
      v34 = &_swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    if (*v8 <= 1u && *v8)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v8;
    --v7;
    if (v9)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v11 = [result bluetoothIdentifier];
  if (!v11)
  {
    v18 = type metadata accessor for UUID();
    v19 = v34;
    (*(*(v18 - 8) + 56))(v34, 1, 1, v18);
    sub_100036B8C(v19);
    goto LABEL_15;
  }

  v12 = v34;
  v13 = v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_100036B8C(v12);
  v15 = sub_10001F674(0, 1, 1, &_swiftEmptyArrayStorage);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_10001F674((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v34 = v15;
  v15[v17 + 32] = 1;
LABEL_16:
  v20 = sub_100036194();
  v21 = *(v20 + 2);
  v22 = (v20 + 32);
  while (1)
  {
    if (!v21)
    {

      return v34;
    }

    if (*v22 > 2u)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v22;
    --v21;
    if (v23)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  v24 = v34;
  if (!result)
  {
    goto LABEL_33;
  }

  v25 = [result wifiAwareDevicePairingID];
  if (v25)
  {
    v26 = v33;
    v27 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
    sub_100036B8C(v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_10001F674(0, *(v24 + 2) + 1, 1, v24);
    }

    v30 = *(v24 + 2);
    v29 = *(v24 + 3);
    if (v30 >= v29 >> 1)
    {
      v24 = sub_10001F674((v29 > 1), v30 + 1, 1, v24);
    }

    *(v24 + 2) = v30 + 1;
    v24[v30 + 32] = 3;
  }

  else
  {
    v31 = type metadata accessor for UUID();
    v32 = v33;
    (*(*(v31 - 8) + 56))(v33, 1, 1, v31);
    sub_100036B8C(v32);
  }

  return v24;
}

char *sub_100036194()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if ([result requiresBluetoothSetup])
  {
    v3 = sub_10001F674(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_10001F674((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v3[v5 + 32] = 1;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_23;
  }

  if ([result requiresWiFiSoftAPSetup])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10001F674(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_10001F674((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v3[v7 + 32] = 2;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_24;
  }

  if ([result requiresWiFiAwareSetup])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10001F674(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_10001F674((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v3[v9 + 32] = 3;
  }

  return v3;
}

char *sub_100036360()
{
  v1 = sub_100036194();
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    while (1)
    {
      if (v4 >= *(v2 + 2))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v5[v4] > 1u)
      {
        if (v5[v4] != 3)
        {

LABEL_15:
          v0 = v4 + 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_16;
        }

        v0 = 0xE900000000000065;
      }

      else if (v5[v4])
      {
        v0 = 0xE900000000000068;
      }

      else
      {
        v0 = 0xE400000000000000;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        goto LABEL_15;
      }

      if (v3 == ++v4)
      {
        v0 = *(v2 + 2);
        v4 = v0;
        goto LABEL_37;
      }
    }
  }

  v0 = 0;
  v4 = 0;
LABEL_37:
  while (__OFADD__(v0, v4 - v0))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v2 = sub_100021604(v2);
LABEL_16:
    v7 = *(v2 + 2);
    if (v7 - 1 != v4)
    {
      v8 = (v4 + 33);
      v9 = v2 + 32;
      while (1)
      {
        v13 = v8 - 32;
        if ((v8 - 32) >= v7)
        {
          goto LABEL_46;
        }

        if (v8[v2] > 1u)
        {
          if (v8[v2] == 2)
          {

            goto LABEL_20;
          }

          v0 = 0xE900000000000065;
        }

        else if (v8[v2])
        {
          v0 = 0xE900000000000068;
        }

        else
        {
          v0 = 0xE400000000000000;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          if (v13 != v4)
          {
            if (v4 < 0)
            {
              goto LABEL_47;
            }

            v15 = *(v2 + 2);
            if (v4 >= v15)
            {
              goto LABEL_48;
            }

            if (v13 >= v15)
            {
              __break(1u);
LABEL_35:
              v0 = (v11 - 32);
              if ((v11 - 32) < v4)
              {
                goto LABEL_49;
              }

              if (v4 < 0)
              {
                goto LABEL_50;
              }

              goto LABEL_37;
            }

            v10 = v9[v4];
            v9[v4] = v8[v2];
            v8[v2] = v10;
          }

          ++v4;
        }

LABEL_20:
        v7 = *(v2 + 2);
        v11 = v8 + 1;
        v12 = v8 - 31;
        ++v8;
        if (v12 == v7)
        {
          goto LABEL_35;
        }
      }
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 3) >> 1)
  {
    if (v0 <= v4)
    {
      v17 = v4;
    }

    else
    {
      v17 = v0;
    }

    v2 = sub_10001F674(isUniquelyReferenced_nonNull_native, v17, 1, v2);
  }

  sub_100021884(v4, v0, 0);
  return v2;
}

unint64_t sub_1000366A0()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v2 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8);
  }

  v4._countAndFlagsBits = v3;
  v4._object = v1;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6369766544414420;
  v5._object = 0xEB00000000203A65;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  sub_100009894(&qword_10007FD68, &unk_10005CF00);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  return 0xD00000000000001ALL;
}

id sub_1000367E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIDevice();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ASUIDeviceTechnology(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASUIDeviceTechnology(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100036A10()
{
  result = qword_10007FD60;
  if (!qword_10007FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FD60);
  }

  return result;
}

id sub_100036A64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_allowsRename] = 0;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_finishSetupInApp] = 0;
  v7 = &v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  *v7 = 0;
  v7[1] = 0;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup] = 0;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_supportsHID] = 0;
  v8 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup] = &_swiftEmptyArrayStorage;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] = 0;
  v9 = &v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_appBundleID];
  *v9 = 0;
  v9[1] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] = 0;
  *v7 = a1;
  v7[1] = a2;
  *&v5[v8] = a3;
  *v9 = a4;
  v9[1] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for ASUIDevice();
  v10 = a3;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t sub_100036B40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000711E8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036B8C(uint64_t a1)
{
  v2 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100036BF4()
{
  result = qword_10007F100;
  if (!qword_10007F100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F100);
  }

  return result;
}

void sub_100036C40(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[6];
  v10 = a1[7];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v16[4] = sub_100037154;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10001BE14;
  v16[3] = &unk_100073140;
  v13 = _Block_copy(v16);
  v14 = [objc_opt_self() actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v15 = [v1 addAction:v14];
}

void sub_100036DE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100036E34();
  }
}

char *sub_100036E34()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000427B4(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100037098@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003711C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003715C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100037174(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[15];
  if (!v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v9 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) <= 1u && *(v9 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
  {
    goto LABEL_11;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_12;
  }

  if (*(v9 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 2u)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    v12 = 0;
    p_ivars = (&ASUIPresenter + 48);
    goto LABEL_13;
  }

LABEL_12:
  v14 = String._bridgeToObjectiveC()();
  p_ivars = &ASUIPresenter.ivars;
  v15 = [objc_opt_self() _systemImageNamed:v14];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v15];
  v16 = [objc_opt_self() systemBlueColor];
  [v12 setTintColor:v16];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [objc_opt_self() configurationWithPointSize:40.0];
  [v12 setPreferredSymbolConfiguration:v17];

  v18 = v12;
  v19 = [v1 contentView];
  [v19 addSubview:v18];

LABEL_13:
  v20 = [objc_allocWithZone(UILabel) init];
  if (!a1[18])
  {
LABEL_23:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = a1[17];
  v23 = String._bridgeToObjectiveC()();
  [v21 setText:v23];

  v24 = [objc_opt_self() monospacedSystemFontOfSize:48.0 weight:UIFontWeightMedium];
  [v21 setFont:v24];

  v25 = v21;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v1 p_ivars[198]];
  [v26 addSubview:v25];

  v27 = [v1 p_ivars[198]];
  v64 = [v27 mainContentGuide];

  if (v12)
  {
    v63 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10005CC90;
    v29 = v12;
    v30 = [v29 topAnchor];
    v31 = [v64 topAnchor];
    v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];

    *(v28 + 32) = v32;
    v33 = [v29 bottomAnchor];
    v34 = [v64 bottomAnchor];
    v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

    *(v28 + 40) = v35;
    v36 = [v29 centerXAnchor];
    v37 = [v64 centerXAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v28 + 48) = v38;
    v39 = [v25 topAnchor];
    v40 = [v29 bottomAnchor];

    v41 = [v39 constraintEqualToAnchor:v40 constant:28.0];
    *(v28 + 56) = v41;
    v42 = [v25 bottomAnchor];
    v43 = [v64 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:-32.0];

    *(v28 + 64) = v44;
    v45 = [v25 centerXAnchor];

    v46 = [v64 centerXAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v28 + 72) = v47;
    sub_10000A5E8();
    v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v63 activateConstraints:v48.super.isa];
  }

  else
  {
    v49 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10005C4D0;
    v51 = [v25 topAnchor];
    v52 = [v64 topAnchor];
    if (qword_10007EC18 != -1)
    {
      swift_once();
    }

    v53 = [v51 constraintGreaterThanOrEqualToAnchor:v52 constant:*&qword_1000814D8];

    *(v50 + 32) = v53;
    v54 = [v25 bottomAnchor];
    v55 = [v64 bottomAnchor];
    v56 = [v54 constraintLessThanOrEqualToAnchor:v55 constant:-32.0];

    *(v50 + 40) = v56;
    v57 = [v25 centerXAnchor];
    v58 = [v64 centerXAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v50 + 48) = v59;
    v60 = [v25 centerYAnchor];

    v61 = [v64 centerYAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v50 + 56) = v62;
    sub_10000A5E8();
    v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v49 activateConstraints:v48.super.isa];
  }
}

void sub_100037AE0()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = &v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext];
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 48];
  v18[2] = *&v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 32];
  v18[3] = v2;
  v19 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 64];
  v3 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 16];
  v18[0] = *&v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext];
  v18[1] = v3;
  *v1 = 257;
  *(v1 + 24) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v18);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v0[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_type] != 7)
    {
      goto LABEL_6;
    }

    v5 = *(v1 + 3);
    v14 = *(v1 + 2);
    v15 = v5;
    v16 = *(v1 + 8);
    v6 = *(v1 + 1);
    v12 = *v1;
    v13 = v6;
    if (v6 == 1)
    {
      goto LABEL_6;
    }

    v7 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    if (v7)
    {
      v8 = *(&v13 + 1);
      v9 = v14;
      sub_10000A4E8(&v12, v11);
      v10 = v7;
      sub_10001B4D4(1, v8, v9);
      swift_unknownObjectRelease();
      sub_10000A634(&v12);
    }

    else
    {
LABEL_6:
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_100037DC8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

id sub_100037F88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_100038154()
{
  v1 = *(*&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image);
  if (v1)
  {
    v2 = *(*&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image);
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage];
  }

  v3 = objc_allocWithZone(UIImageView);
  v4 = v1;
  v5 = [v3 initWithImage:v2];

  v6 = OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView;
  v7 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView] = v5;
  v8 = v5;

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v0[v6];
  if (!v9)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v9 setContentMode:1];
  v10 = *&v0[v6];
  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = [v10 layer];
  [v11 setAllowsEdgeAntialiasing:1];

  v12 = *&v0[v6];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = [v12 layer];
  [v13 setShouldRasterize:1];

  v14 = *&v0[v6];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = [v14 layer];
  v16 = [v0 traitCollection];
  [v16 displayScale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  v19 = objc_opt_self();
  v20 = [v19 configurationWithPointSize:4 weight:100.0];
  v21 = [objc_opt_self() systemBlueColor];
  v22 = [v19 configurationWithHierarchicalColor:v21];

  v23 = [v20 configurationByApplyingConfiguration:v22];
  v24 = *&v0[v6];
  if (!v24)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v24 setPreferredSymbolConfiguration:v23];
  if (!*&v0[v6])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v0 addSubview:?];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10005C4D0;
  v26 = *&v0[v6];
  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = [v26 widthAnchor];
  v28 = *&v0[v6];
  if (!v28)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = [v28 image];
  if (!v29)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = v29;
  [v29 size];
  v32 = v31;
  [v30 size];
  v34 = v33;

  v35 = 180.0;
  if (v32 / v34 <= 1.5)
  {
    v35 = v32 / v34 * 120.0;
  }

  v36 = [v27 constraintEqualToConstant:v35];

  *(v25 + 32) = v36;
  v37 = *&v0[v6];
  if (!v37)
  {
    goto LABEL_34;
  }

  v38 = [v37 heightAnchor];
  v39 = *&v0[v6];
  if (!v39)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = [v39 image];
  if (!v40)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v41 = v40;
  [v40 size];
  v43 = v42;
  [v41 size];
  v45 = v44;

  v46 = 120.0;
  if (v43 / v45 > 1.5)
  {
    v46 = 180.0 / (v43 / v45);
  }

  v47 = [v38 constraintEqualToConstant:v46];

  *(v25 + 40) = v47;
  v48 = *&v0[v6];
  if (!v48)
  {
    goto LABEL_37;
  }

  v49 = [v48 centerXAnchor];
  v50 = [v0 centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v25 + 48) = v51;
  v52 = *&v0[v6];
  if (!v52)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v53 = objc_opt_self();
  v54 = [v52 centerYAnchor];
  v55 = [v0 centerYAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v25 + 56) = v56;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints:isa];
}

void sub_1000386E4(void *a1)
{
  [v1 bounds];
  [a1 convertRect:v1 fromCoordinateSpace:?];
  x = v23.origin.x;
  Width = CGRectGetWidth(v23);
  if (Width == 0.0)
  {
    return;
  }

  if (Width < 0.0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView;
  v6 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = Width;
  [v6 center];
  v9 = *&v1[v5];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v8;
  v11 = [v9 image];
  if (!v11)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = (x + v7 + x + v7) / (v7 + v7) + -1.0;
  [v11 size];
  v15 = v14;
  [v12 size];
  v17 = v16;

  v18 = 90.0;
  if (v15 / v17 <= 1.5)
  {
    v18 = v15 / v17 * 120.0 * 0.5;
  }

  CGAffineTransformMakeTranslation(&v22, -(v13 * (v10 - v18 + 40.0)), 0.0);
  v19 = *&v1[v5];
  if (!v19)
  {
    goto LABEL_18;
  }

  [v19 setTransform:&v22];
  v20 = *&v1[v5];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v21 = 1.0 - fabs(v13);
  if (v21 <= 0.3)
  {
    v21 = 0.3;
  }

  [v20 setAlpha:v21];
}

id sub_1000388D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIProductPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000389DC(void *a1)
{
  v3 = [a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    swift_beginAccess();
    v8 = v1[20];
    v9 = v1[21];
    v10 = v1[22];

    v11 = sub_100038BF8(v5, v7, v8, v9, v10);

    if (!v11)
    {
      swift_beginAccess();
      v21 = a1;
      sub_100038CF0(a1, v5, v7);
      swift_endAccess();
LABEL_11:
      sub_100039044();
      return;
    }

    v12 = [v11 bluetoothAdvertisementData];
    if (v12)
    {
      v13 = v12;
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = [a1 bluetoothAdvertisementData];
      if (v15)
      {
        v16 = v15;
        v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = *(v14 + 16);

        v19 = *(v17 + 16);

        if (v18 < v19)
        {
          swift_beginAccess();
          v20 = a1;
          sub_100038CF0(a1, v5, v7);
          swift_endAccess();
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    goto LABEL_10;
  }
}

uint64_t sub_100038BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = sub_10003A820(a1, a2, a4 + 32, v9, (a3 + 16));
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = *(a5 + 8 * v11 + 32);
    v16 = v15;
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100038CF0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_10003A820(a2, a3, v8 + 32, v9, (v7 + 16));
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_25;
      }

LABEL_19:
      v22 = v3[2];
      v20 = v3 + 2;
      v21 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_100039A80(v21);
        *v20 = v21;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *(v21 + 16))
      {
        v24 = v21 + 8 * v11;
        v25 = *(v24 + 32);
        *(v24 + 32) = a1;

        specialized ContiguousArray._endMutation()();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v9)
  {
    v11 = 0;
    v16 = (v8 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a2 && *v16 == a3;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v11;
      v16 += 2;
      if (v9 == v11)
      {
        goto LABEL_13;
      }
    }

    if (!a1)
    {
      v15 = 0;
LABEL_25:
      sub_100039CA0(v11, v15);

      v19 = sub_100039E08(v11);
      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (a1)
  {
    sub_100039B28(a2, a3);

    v26 = a1;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v18 = *(v3[2] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v19 = v26;
LABEL_26:

    return;
  }
}

id sub_100038F14(void *a1)
{
  v3 = sub_100038988();
  if (*v4)
  {
    result = [a1 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_10003A96C(v7, v9);

    (v3)(v14, 0);
  }

  else
  {
    (v3)(v14, 0);
  }

  result = swift_beginAccess();
  v10 = v1[23];
  if (v10)
  {
    v11 = v1[28];
    if (v11)
    {
      v12 = v1[29];
      v13 = *(v10 + 16) != 0;

      v11(v13);
      return sub_100002E6C(v11);
    }
  }

  return result;
}

void sub_100039044()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0;
    v3 = v0[27];
    v44 = _swiftEmptyArrayStorage;

    swift_beginAccess();
    if (v0[25] >= 1)
    {
      while (1)
      {
        v4 = v2[16];
        if (!*(v4 + 16))
        {
          goto LABEL_25;
        }

        v5 = v2[15];
        if (!*(v5 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v8 = *(v5 + 32);
        v7 = v5 + 32;
        v6 = v8;
        v10 = (v7 + 8);
        v9 = *(v7 + 8);
        v11 = *(v4 + 32);
        swift_beginAccess();
        v12 = v2[14];
        v13 = *(v7 - 16);
        if (!v12)
        {
          break;
        }

        swift_bridgeObjectRetain_n();
        v14 = v11;

        v15 = sub_10003A820(v6, v9, v7, v13, (v12 + 16));
        v17 = v16;
        v19 = v18;

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_19:
        swift_endAccess();
        swift_beginAccess();

        v23 = v11;
        sub_100038CF0(v11, v6, v9);
        swift_endAccess();
        v24 = v2[25];
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v2[25] = v26;
        v27 = sub_100038988();
        if (*v28)
        {
          sub_10003B260(&v43, v6, v9);
        }

        (v27)(v42, 0);
        v29 = v23;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v2[25] <= 0)
        {
          goto LABEL_25;
        }
      }

      if (!v13)
      {
LABEL_16:
        swift_bridgeObjectRetain_n();
        v21 = v11;
        goto LABEL_19;
      }

      v15 = 0;
      while (1)
      {
        v20 = *(v10 - 1) == v6 && *v10 == v9;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v15;
        v10 += 2;
        if (v13 == v15)
        {
          goto LABEL_16;
        }
      }

      swift_bridgeObjectRetain_n();
      v22 = v11;
      v19 = 0;
LABEL_18:
      sub_100039CA0(v15, v19);

      goto LABEL_19;
    }

LABEL_25:
    swift_beginAccess();
    v31 = v2[17];
    v32 = v2[18];
    v33 = v2[19];

    sub_100039428(v31, v32, v33);
    v35 = v2[17];
    v34 = v2[18];
    v2[17] = 0;
    v2[18] = _swiftEmptyArrayStorage;
    v36 = v2[19];
    v2[19] = _swiftEmptyArrayStorage;

    v1(v44);

    swift_beginAccess();
    v37 = v2[23];
    if (v37 && (v38 = v2[28]) != 0)
    {
      v39 = v2[29];
      v40 = *(v37 + 16) != 0;

      v38(v40);
      sub_100002E6C(v1);
      v41 = v38;
    }

    else
    {
      v41 = v1;
    }

    sub_100002E6C(v41);
  }
}

uint64_t sub_100039428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a3 + 16);
  v10 = *v3;
  if (!(*v3 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < 0)
  {
    v18 = *v3;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_100020AD8();
  v4 = *v3;
  v5 = *v3 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v5 + 0x10);
  v15 = (*(v5 + 0x18) >> 1) - v14;
  result = sub_10003B6B0(&v33, v5 + 8 * v14 + 32, v15, a1, a2, a3);
  if (result < v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v16 = *(v5 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
LABEL_28:
      *(v32 + 16) = v9;
      goto LABEL_8;
    }

    *(v5 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_8:

    *v3 = v4;
    return result;
  }

LABEL_15:
  v20 = v34;
  v21 = *(v34 + 16);
  if (v35 == v21)
  {
    goto LABEL_8;
  }

  if (v35 < v21)
  {
    v22 = *(v5 + 16);
    v23 = v35 + 1;
    v24 = *(v34 + 32 + 8 * v35);
    v25 = v24;
    result = v24;
    while (1)
    {
LABEL_19:
      if (v22 + 1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = result;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        result = v31;
      }

      v4 = *v3;
      v26 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v27 = v26 - v22;
      if (v26 > v22)
      {
        break;
      }

      *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v22;
    }

    v32 = *v3 & 0xFFFFFFFFFFFFFF8;
    v28 = (v32 + 8 * v22 + 32);
    v9 = v22 + 1;
    while (1)
    {
      *v28 = result;
      v29 = *(v20 + 16);
      if (v23 == v29)
      {
        goto LABEL_28;
      }

      if (v23 >= v29)
      {
        __break(1u);
        break;
      }

      v30 = v23 + 1;
      result = *(v20 + 32 + 8 * v23);
      ++v28;
      ++v9;
      ++v23;
      if (!--v27)
      {
        v22 = v26;
        v23 = v30;
        *(v32 + 16) = v26;
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100039630()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];

  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[19];

  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[22];

  v10 = v0[23];

  v11 = v0[27];
  sub_100002E6C(v0[26]);
  v12 = v0[29];
  sub_100002E6C(v0[28]);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100039700()
{
  swift_defaultActor_initialize();
  v1 = sub_100039A94(_swiftEmptyArrayStorage);
  *(v0 + 112) = 0;
  *(v0 + 120) = _swiftEmptyArrayStorage;
  *(v0 + 128) = v1;
  v2 = sub_100039A94(_swiftEmptyArrayStorage);
  *(v0 + 136) = 0;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = v2;
  v3 = sub_100039A94(_swiftEmptyArrayStorage);
  *(v0 + 160) = 0;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = v3;
  *(v0 + 184) = xmmword_10005CFB0;
  *(v0 + 200) = 3;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return v0;
}

void *sub_100039788(uint64_t a1, uint64_t a2)
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

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

char *sub_100039810(char *a1, int64_t a2, char a3)
{
  result = sub_100039850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100039830(char *a1, int64_t a2, char a3)
{
  result = sub_10003995C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100039850(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009894(&qword_10007F2A8, &qword_10005D050);
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

char *sub_10003995C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009894(&qword_1000800A0, &qword_10005D058);
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

void *sub_100039A94(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100039788(v3, 0);
  sub_10003B530((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100039B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_100039810(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_100039810((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
    {
      v15 = *v3;
      result = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v3;
        v18 = _HashTable.copy()();

        *v3 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v6 + 16) + ~(*(v16 + 24) >> 6);
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_100039F1C();
}

unint64_t sub_100039CA0(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_100039E94(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    v13 = sub_100039E94(a1);
    sub_100039F1C();
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = _HashTable.copy()();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_100039FBC(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10003A1B4(a1, a1 + 1, v4, (v10 + 16));

      return sub_100039E94(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100039E08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_100039A80(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

uint64_t sub_100039E94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100039A6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100039F1C()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10003A620(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

unint64_t sub_100039FBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v23)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = _HashTable.BucketIterator.currentValue.getter();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_5:
      _HashTable.BucketIterator.advance()();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void sub_10003A1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      v10 = *a4;
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v11 = a3;

        if (a1)
        {
          v12 = 0;
          while (1)
          {
            v13 = (v11 + 32 + 16 * v12);
            v14 = *v13;
            v15 = v13[1];
            v16 = *a4;
            Hasher.init(_seed:)();

            String.hash(into:)();
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v17 = _HashTable.BucketIterator.currentValue.getter();
                if ((v18 & 1) == 0 && v17 == v12)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v12, v5))
            {
              goto LABEL_55;
            }

            ++v12;
            _HashTable.BucketIterator.currentValue.setter();

            if (v12 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v25 = _HashTable.BucketIterator.currentValue.getter();
      if ((v26 & 1) != 0 || v25 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v19 = a4[1];
        if (__OFSUB__(v19 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v20 = 1 << *a4;
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v21)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v23 = (v22 & (((v19 >> 6) - v5) >> 63)) + (v19 >> 6) - v5;
        if (v23 < v22)
        {
          v22 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v23 - v22) << 6);
        return;
      }

      if (!__OFADD__(v25, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v27 = _HashTable.BucketIterator.currentValue.getter();
      if ((v28 & 1) == 0 && v27 >= v4)
      {
        if (__OFSUB__(v27, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v24 = *a4;
    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      do
      {
        v29 = (a3 + 32 + 16 * v4);
        v30 = *v29;
        v31 = v29[1];
        v32 = *a4;
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v33 = _HashTable.BucketIterator.currentValue.getter();
            if ((v34 & 1) == 0 && v33 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v4 != v9);
    }
  }
}

uint64_t sub_10003A620(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = _HashTable.init(scale:reservedScale:)();
    sub_10003A6A0(a1, (v10 + 16));
    return v10;
  }

  return result;
}

Swift::Int sub_10003A6F0(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v10)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10003A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_10003A96C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10003AAA8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10003B09C(v9);
  *v2 = v20;
  return v13;
}

void *sub_10003AAA8()
{
  v1 = v0;
  sub_100009894(&qword_100080098, &qword_10005D048);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10003AC04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100009894(&qword_100080098, &qword_10005D048);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10003AE3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100009894(&qword_100080098, &qword_10005D048);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10003B09C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10003B260(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10003B3B0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10003B3B0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10003AE3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10003AAA8();
      goto LABEL_16;
    }

    sub_10003AC04(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10003B530(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10003B7E0();
          for (i = 0; i != v6; ++i)
          {
            sub_100009894(&qword_1000800A8, &unk_10005D060);
            v9 = sub_10002157C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10003B794();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10003B6B0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a6 + 16);
    if (v6)
    {
      v8 = a4;
      v9 = result;
      v10 = a5;
      v11 = 0;
      v12 = a6;
      v13 = a6 + 32;
      v14 = a3;
      v15 = a3 - 1;
      while (1)
      {
        v16 = *(v13 + 8 * v11);
        *(a2 + 8 * v11) = v16;
        if (v15 == v11)
        {
          break;
        }

        v17 = v16;
        if (v6 == ++v11)
        {
          a3 = v6;
          a6 = v12;
          a5 = v10;
          result = v9;
          a4 = v8;
          goto LABEL_12;
        }
      }

      v18 = v16;
      a6 = v12;
      a5 = v10;
      result = v9;
      a4 = v8;
      a3 = v14;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003B794()
{
  result = qword_100080420;
  if (!qword_100080420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100080420);
  }

  return result;
}

unint64_t sub_10003B7E0()
{
  result = qword_1000800B0;
  if (!qword_1000800B0)
  {
    sub_10001F924(&qword_1000800A8, &unk_10005D060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800B0);
  }

  return result;
}

uint64_t sub_10003B844(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10003B898()
{
  v3 = v0;
  v4 = [(SEL *)v0 bottomTray];
  v5 = [v4 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_55:

    __break(1u);
    goto LABEL_56;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_55;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_56:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v7 = *(v6 + 32);
LABEL_6:
  v8 = v7;

  v9 = String._bridgeToObjectiveC()();
  [v8 setTitle:v9 forState:0];

  v10 = [(SEL *)v3 bottomTray];
  v11 = [v10 actionButtons];

  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_58:

    __break(1u);
    goto LABEL_59;
  }

LABEL_8:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_60:
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13 = *(v12 + 32);
LABEL_11:
  v14 = v13;

  [v14 setEnabled:0];

  v15 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v12 = objc_opt_self();
  v16 = [v12 systemGrayColor];
  [v15 setColor:v16];

  v65 = v15;
  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v65 startAnimating];
  v17 = [(SEL *)v3 bottomTray];
  v18 = [v17 actionButtons];

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_62:

    __break(1u);
    goto LABEL_63;
  }

LABEL_13:
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_64:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v20 = *(v19 + 32);
LABEL_16:
  v21 = v20;

  [v21 addSubview:v65];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10005C420;
  p_ivars = &ASUIPresenter.ivars;
  v18 = [v65 centerXAnchor];
  v22 = [(SEL *)v3 bottomTray];
  v23 = [v22 actionButtons];

  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_66:

    __break(1u);
    goto LABEL_67;
  }

LABEL_18:
  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_68:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v25 = *(v24 + 32);
LABEL_21:
  v26 = v25;

  v27 = [v26 p_ivars[175]];

  v28 = [v18 constraintEqualToAnchor:v27];
  *(v19 + 32) = v28;
  v2 = &ASUIPresenter.ivars;
  v18 = [v65 centerYAnchor];

  v29 = [(SEL *)v3 bottomTray];
  v30 = [v29 actionButtons];

  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_70:

    __break(1u);
    goto LABEL_71;
  }

LABEL_23:
  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_72:
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_75;
  }

  v32 = *(v31 + 32);
LABEL_26:
  v33 = v32;

  v34 = objc_opt_self();
  v35 = [v33 v2[320]];

  v36 = [v18 constraintEqualToAnchor:v35];
  *(v19 + 40) = v36;
  sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  v31 = &ASUIPresenter.ivars;
  v38 = v3;
  v39 = [(SEL *)v3 bottomTray];
  v3 = &ASUIPresenter.ivars;
  v40 = [v39 actionButtons];

  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 >= 2)
  {
    v19 = [(SEL *)v38 bottomTray];
    v43 = [(SEL *)v38 bottomTray];
    v44 = [v43 actionButtons];

    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (!(v45 >> 62))
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_31;
    }

LABEL_75:
    v46 = _CocoaArrayWrapper.endIndex.getter();
LABEL_31:

    if (v46 < 1)
    {
      __break(1u);
    }

    else
    {
      v47 = [v19 v3[401]];

      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v19 >> 62;
      if (!(v19 >> 62))
      {
        v48 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v49 = &ASUIPresenter.ivars;
        if (!v48)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if (v48 >= v46)
        {
LABEL_35:
          if ((v19 & 0xC000000000000001) != 0)
          {

            if (v46 != 1)
            {
              v50 = 1;
              do
              {
                v51 = v50 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v50);
                v50 = v51;
              }

              while (v46 != v51);
            }
          }

          else
          {
          }

          if (v31)
          {
            _CocoaArrayWrapper.subscript.getter();
            v52 = v56;
            v53 = v57;
            v59 = v58;

            v59 >>= 1;
            v55 = v59 - v53;
            v54 = v59 <= v53;
            if (v59 == v53)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v52 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
            v53 = 1;
            v55 = v46 - 1;
            v54 = v46 <= 1;
            if (v46 == 1)
            {
              goto LABEL_51;
            }
          }

          if (!v54)
          {
            v60 = (v52 + 8 * v53);
            do
            {
              v61 = *v60++;
              v62 = v61;
              [v62 setEnabled:0];
              v63 = v62;
              v64 = [v12 v49[409]];
              [v63 setTintColor:v64];

              --v55;
            }

            while (v55);
LABEL_51:

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_81;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v49 = (&ASUIPresenter + 48);
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
LABEL_82:
      __break(1u);
      return;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v46)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }
}

double sub_10003C1EC()
{
  result = PRXMainContentMargin + 14.0;
  *&qword_1000800C0 = PRXMainContentMargin + 14.0;
  return result;
}

void sub_10003C20C(uint64_t *a1)
{
  v3 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  v4 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel;
  v5 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel] = v3;
  v6 = v3;

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v1[v4];
  if (!v7)
  {
    __break(1u);
    goto LABEL_28;
  }

  [v7 setAlpha:0.0];
  v8 = *&v1[v4];
  if (!v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = v8;
  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = [v1 contentView];
  if (!*&v1[v4])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v13;
  [v13 addSubview:?];

  v15 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v16 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel;
  v17 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel] = v15;
  v18 = v15;

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = *&v1[v16];
  if (!v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v19 setAlpha:0.0];
  v20 = *&v1[v16];
  if (!v20)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v20 setNumberOfLines:0];
  v21 = *&v1[v16];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = a1[2];
  v22 = a1[3];
  v24 = v21;
  v25 = String._bridgeToObjectiveC()();
  [v24 setText:v25];

  v26 = [v1 contentView];
  if (!*&v1[v16])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = v26;
  [v26 addSubview:?];

  v28 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v29 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner;
  v30 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner] = v28;
  v31 = v28;

  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *&v1[v29];
  if (!v32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v32 startAnimating];
  v33 = [v1 contentView];
  if (!*&v1[v29])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v33;
  [v33 addSubview:?];

  v35 = [v1 contentView];
  v36 = [v35 mainContentGuide];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10005D070;
  v38 = *&v1[v4];
  if (!v38)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = [v38 topAnchor];
  v40 = [v36 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v37 + 32) = v41;
  v42 = *&v1[v4];
  if (!v42)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v43 = [v42 centerXAnchor];
  v44 = [v36 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v37 + 40) = v45;
  v46 = *&v1[v4];
  if (!v46)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = [v46 widthAnchor];
  v48 = [v36 widthAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-96.0];

  *(v37 + 48) = v49;
  v50 = *&v1[v16];
  if (!v50)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v51 = [v50 topAnchor];
  v52 = *&v1[v4];
  if (!v52)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v53 = [v52 bottomAnchor];
  if (qword_10007EC08 != -1)
  {
    swift_once();
  }

  v54 = [v51 constraintEqualToAnchor:v53 constant:*&qword_1000814C8];

  *(v37 + 56) = v54;
  v55 = *&v1[v16];
  if (!v55)
  {
    goto LABEL_41;
  }

  v56 = [v55 centerXAnchor];
  v57 = [v36 centerXAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v37 + 64) = v58;
  v59 = *&v1[v16];
  if (!v59)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = [v59 widthAnchor];
  v61 = [v36 widthAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v37 + 72) = v62;
  v63 = *&v1[v29];
  if (!v63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v64 = [v63 topAnchor];
  v65 = *&v1[v16];
  if (!v65)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v66 = [v65 bottomAnchor];
  if (qword_10007EC40 != -1)
  {
    swift_once();
  }

  v67 = [v64 constraintGreaterThanOrEqualToAnchor:v66 constant:*&qword_1000800C0];

  *(v37 + 80) = v67;
  v68 = *&v1[v29];
  if (!v68)
  {
    goto LABEL_45;
  }

  v69 = [v68 bottomAnchor];
  v70 = [v36 bottomAnchor];
  v71 = [v69 constraintLessThanOrEqualToAnchor:v70];

  *(v37 + 88) = v71;
  v72 = *&v1[v29];
  if (!v72)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v73 = [v72 centerXAnchor];
  v74 = [v36 centerXAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v37 + 96) = v75;
  v76 = *&v1[v29];
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = [v76 centerYAnchor];
    v79 = [v36 centerYAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v37 + 104) = v80;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v77 activateConstraints:isa];

    v82 = objc_opt_self();
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86[4] = sub_100042A00;
    v86[5] = v83;
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 1107296256;
    v86[2] = sub_100022FBC;
    v86[3] = &unk_1000735D0;
    v84 = _Block_copy(v86);

    v85 = [v82 scheduledTimerWithTimeInterval:0 repeats:v84 block:0.7];
    _Block_release(v84);

    return;
  }

LABEL_47:
  __break(1u);
}