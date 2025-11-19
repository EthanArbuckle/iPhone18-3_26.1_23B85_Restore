uint64_t HGHeadGesturePart.eventUsage.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 6;
      }

      return 0;
    }

    return 5;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }
}

uint64_t sub_100123BF8()
{
  v1 = *v0;
  v2 = 0x656B616873;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 6582126;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_100123C6C()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 0x676952656B616873;
      }

      goto LABEL_8;
    }

    return 0x66654C656B616873;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v2 = 1147432814;
        return v2 | 0x6E776F00000000;
      }

LABEL_8:
      v2 = 1852534389;
      return v2 | 0x6E776F00000000;
    }

    return 0x7055646F6ELL;
  }
}

uint64_t sub_100123D0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&unk_100218610);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_100123F98()
{
  v1 = v0;
  sub_1000F40B0(&unk_100218610);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1001240F4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F40B0(&unk_100218610);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_10010CD08(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_10010CD08(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void _s15assistivetouchd17SCATAirPodsSourceC6update12withSwitches6recipeyShySo8AXSwitchCGSg_So0I6RecipeCSgtF_0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001240F4(&_swiftEmptyArrayStorage);
  if (!a1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    type metadata accessor for AXHeadGesturesEventUsage(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v54 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000FB560(0, &qword_100218300);
    sub_10010F138();
    Set.Iterator.init(_cocoa:)();
    a1 = v55[1];
    v5 = v55[2];
    v6 = v55[3];
    v7 = v55[4];
    v8 = v55[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v13 = v7;
      v14 = v8;
      if (!v8)
      {
        while (1)
        {
          v7 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v7 >= v12)
          {
            goto LABEL_35;
          }

          v14 = *(v5 + 8 * v7);
          ++v13;
          if (v14)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_14:
      v8 = (v14 - 1) & v14;
      v15 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v15)
      {
        break;
      }

      goto LABEL_18;
    }

    if (!__CocoaSet.Iterator.next()())
    {
      break;
    }

    sub_1000FB560(0, &qword_100218300);
    swift_dynamicCast();
    v15 = v55[0];
    if (!v55[0])
    {
      break;
    }

LABEL_18:
    v16 = [v15 source];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {

LABEL_25:
      v23 = [v15 accessibilityEventUsage];
      v24 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v54;
      v53 = v23;
      v27 = sub_10010CD08(v23);
      v28 = *(v54 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v31 = v26;
      if (*(v54 + 24) >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100123F98();
        }
      }

      else
      {
        sub_100123D0C(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_10010CD08(v53);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_44;
        }

        v27 = v32;
      }

      v34 = v24;
      v35 = v55[0];
      v54 = v55[0];
      if (v31)
      {
        v36 = *(v55[0] + 56);
        v37 = *(v36 + 8 * v27);
        *(v36 + 8 * v27) = v34;

        v2 = v52;
      }

      else
      {
        *(v55[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v35[6] + 8 * v27) = v53;
        *(v35[7] + 8 * v27) = v24;

        v38 = v35[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_42;
        }

        v35[2] = v40;
        v2 = v52;
      }
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  sub_10010F1A0();
  if (qword_10021C1D0 == -1)
  {
    goto LABEL_36;
  }

LABEL_40:
  swift_once();
LABEL_36:
  v41 = type metadata accessor for Logger();
  sub_1000F4758(v41, qword_10021C950);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v44 = 136315138;
    type metadata accessor for AXHeadGesturesEventUsage(0);
    sub_1000FB560(0, &qword_100218300);
    sub_100124EB4(&unk_1002185F8, type metadata accessor for AXHeadGesturesEventUsage);

    v46 = Dictionary.description.getter();
    v48 = v47;

    v49 = sub_1000F9228(v46, v48, v55);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "Updated Actions: %s", v44, 0xCu);
    sub_1000FA500(v45);
  }

  sub_100121244(v50);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 setActions:isa];
}

uint64_t sub_1001247B4(uint64_t a1)
{
  v2 = sub_1000F40B0(&qword_100217528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s15assistivetouchd17SCATAirPodsSourceC17_didReceiveAction14withIdentifier5start15ignoreInputHoldySo14SCATActionItemC_S2btF_0(void *a1)
{
  v2 = v1;
  if ([v2 delegate])
  {
    v33 = &OBJC_PROTOCOL____TtP15assistivetouchd30SCATAirPodsInputSourceDelegate__0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4 && (v5 = v4, (v6 = [v2 queue]) != 0))
    {
      v7 = v6;
      if ([v5 respondsToSelector:"airPodsInputSource:didReceiveActionWithIdentifier:start:"])
      {
        if (qword_10021C1D0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000F4758(v8, qword_10021C950);
        v9 = a1;
        swift_unknownObjectRetain();
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v30 = v7;
          aBlock[0] = swift_slowAlloc();
          v13 = aBlock[0];
          *v12 = 134218242;
          *(v12 + 4) = [v9 action];

          *(v12 + 12) = 2080;
          v32 = v5;
          swift_unknownObjectRetain();
          sub_1000F40B0(&qword_100218608);
          v14 = String.init<A>(describing:)();
          v16 = sub_1000F9228(v14, v15, aBlock);

          *(v12 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v10, v11, "Sending action: %ld to delegate: %s", v12, 0x16u);
          sub_1000FA500(v13);
          v7 = v30;
        }

        else
        {
        }

        v26 = swift_allocObject();
        v26[2] = v5;
        v26[3] = v2;
        v26[4] = v9;
        aBlock[4] = sub_100124F44;
        aBlock[5] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D9918;
        v27 = _Block_copy(aBlock);
        v28 = v9;
        swift_unknownObjectRetain();
        v29 = v2;

        [v7 performAsynchronousWritingBlock:v27];
        swift_unknownObjectRelease();

        _Block_release(v27);
      }

      else
      {
        if (qword_10021C1D0 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000F4758(v17, qword_10021C950);
        v18 = a1;
        swift_unknownObjectRetain();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          aBlock[0] = v22;
          *v21 = 134218242;
          *(v21 + 4) = [v18 action];

          *(v21 + 12) = 2080;
          v32 = v5;
          swift_unknownObjectRetain();
          sub_1000F40B0(&qword_100218608);
          v23 = String.init<A>(describing:)();
          v25 = sub_1000F9228(v23, v24, aBlock);

          *(v21 + 14) = v25;
          _os_log_impl(&_mh_execute_header, v19, v20, "Failed to send action: %ld to delegate: %s", v21, 0x16u);
          sub_1000FA500(v22);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_100124DA4()
{
  result = qword_1002184C8;
  if (!qword_1002184C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002184C8);
  }

  return result;
}

uint64_t sub_100124E30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100124E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100124EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100124EFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100124F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 32) action];

  return [v1 airPodsInputSource:v2 didReceiveActionWithIdentifier:v3 start:1];
}

uint64_t sub_100124FA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100124FE4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000F4758(v3, qword_10021C950);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v4 action];

    _os_log_impl(&_mh_execute_header, v5, v6, "sending switch control action: %ld", v7, 0xCu);
  }

  else
  {

    v5 = v4;
  }

  return [v1 _didReceiveActionWithIdentifier:v4 start:1 ignoreInputHold:1];
}

uint64_t sub_100125124()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012515C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;
  return sub_100120308(v3);
}

uint64_t sub_100125260()
{
  v1 = OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001252F8(char a1)
{
  v3 = OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1001253DC(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___HNDEyeTrackingCoordinator_displayManager] = a1;
  v3 = a1;
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  *&v2[OBJC_IVAR___HNDEyeTrackingCoordinator_rootViewController] = v5;
  type metadata accessor for AXSettings();
  v6 = static AXSettings.shared.getter();
  LOBYTE(v5) = [v6 assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled];

  v2[OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance] = v5;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for EyeTrackingCoordinator();
  v7 = objc_msgSendSuper2(&v15, "init");
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_100125614;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000F55D8;
  v14[3] = &unk_1001D9A28;
  v12 = _Block_copy(v14);

  [v10 registerUpdateBlock:v12 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled" withListener:v9];

  _Block_release(v12);
  return v9;
}

uint64_t sub_1001255DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100125614()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for AXSettings();
    v2 = static AXSettings.shared.getter();
    v3 = [v2 assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled];

    (*((swift_isaMask & *v1) + 0x70))(v3);
  }
}

uint64_t sub_1001256CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10012570C()
{
  v1 = [*(v0 + OBJC_IVAR___HNDEyeTrackingCoordinator_displayManager) willShowCalibrationUI];
  if ((*((swift_isaMask & *v0) + 0x68))(v1))
  {
    v2 = sub_100125BB8();
  }

  else
  {
    v2 = sub_100125A74();
  }

  v3 = v2;
  [v2 setModalPresentationStyle:0];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v0 + OBJC_IVAR___HNDEyeTrackingCoordinator_rootViewController);
  if (v5)
  {
    v7[4] = sub_100125BAC;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000F55D8;
    v7[3] = &unk_1001D9A50;
    v6 = _Block_copy(v7);
    swift_retain_n();

    [v5 presentViewController:v3 animated:1 completion:v6];
    _Block_release(v6);
  }

  else
  {
  }
}

void sub_1001258E8()
{
  v1 = *(v0 + OBJC_IVAR___HNDEyeTrackingCoordinator_rootViewController);
  if (v1)
  {
    v4 = [v1 presentedViewController];
    if (v4)
    {
      type metadata accessor for CalibrationNavigationViewController();
      if (swift_dynamicCastClass())
      {
        v2 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100125D2C;
        aBlock[5] = v2;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D9A78;
        v3 = _Block_copy(aBlock);

        [v4 dismissViewControllerAnimated:1 completion:v3];

        _Block_release(v3);
      }

      else
      {
      }
    }
  }
}

id sub_100125A74()
{
  v1 = *(v0 + OBJC_IVAR___HNDEyeTrackingCoordinator_displayManager);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for CalibrationViewController());
  v2 = v1;
  v3 = CalibrationViewController.init(delegate:dismissCompletion:)();
  if (((*((swift_isaMask & *v0) + 0x68))() & 1) == 0)
  {
    v4 = [objc_allocWithZone(type metadata accessor for CalibrationNavigationViewController()) initWithRootViewController:v3];
    goto LABEL_5;
  }

  v4 = v3;
  result = [v4 view];
  if (result)
  {
    v3 = result;
    [result setUserInteractionEnabled:1];

LABEL_5:
    return v4;
  }

  __break(1u);
  return result;
}

id sub_100125BB8()
{
  type metadata accessor for FaceGuidanceViewController();
  v1 = *(v0 + OBJC_IVAR___HNDEyeTrackingCoordinator_displayManager);
  v2 = sub_100103304();
  result = [v2 view];
  if (result)
  {
    v4 = result;
    [result setUserInteractionEnabled:1];

    v5 = [objc_allocWithZone(type metadata accessor for CalibrationNavigationViewController()) initWithRootViewController:v2];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = *((swift_isaMask & *v2) + 0x120);

    v9 = v5;
    v8(sub_100125E28, v7);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100125D68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EyeTrackingCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100125DE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100125E28()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR___HNDEyeTrackingCoordinator_displayManager) didCompleteFaceGuidance];
    v4 = sub_100125A74();
    [v1 pushViewController:v4 animated:1];
  }
}

void sub_100125EBC(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___HNDEyeTrackingCoordinator_displayManager);

    [v4 *a1];
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  sub_100126018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for ApplicationDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

unint64_t sub_100126018()
{
  result = qword_100217918;
  if (!qword_100217918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100217918);
  }

  return result;
}

id sub_10012628C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001262D0()
{
  static os_log_type_t.default.getter();
  v1 = AXLogCommon();
  if (v1)
  {
    v2 = v1;
    sub_1000F40B0(&qword_100217900);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1001BD7E0;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100112498();
    *(v3 + 32) = 0x2928706F7473;
    *(v3 + 40) = 0xE600000000000000;
    os_log(_:dso:log:_:_:)();

    [v0 setKeepAlive:0];
    [*&v0[OBJC_IVAR____TtC15assistivetouchd19ApplicationDelegate_runtimeManager] cleanupRuntime];
    v4 = [objc_opt_self() sharedApplication];
    [v4 terminateWithSuccess];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1001264AC()
{
  v1 = OBJC_IVAR___HNDSpringAnimationFactory_timingFunction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100126558(uint64_t a1)
{
  v3 = OBJC_IVAR___HNDSpringAnimationFactory_timingFunction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100126610()
{
  v1 = OBJC_IVAR___HNDSpringAnimationFactory____lazy_storage___springAnimation;
  v2 = *(v0 + OBJC_IVAR___HNDSpringAnimationFactory____lazy_storage___springAnimation);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HNDSpringAnimationFactory____lazy_storage___springAnimation);
  }

  else
  {
    v4 = [objc_allocWithZone(CASpringAnimation) init];
    [v4 setMass:*(v0 + OBJC_IVAR___HNDSpringAnimationFactory_mass)];
    [v4 setStiffness:*(v0 + OBJC_IVAR___HNDSpringAnimationFactory_stiffness)];
    [v4 setDamping:*(v0 + OBJC_IVAR___HNDSpringAnimationFactory_damping)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001267F0()
{
  result = (*((swift_isaMask & *v0) + 0xC0))();
  if (!result)
  {
    static os_log_type_t.info.getter();
    result = ASTLogCommon();
    if (result)
    {
      v2 = result;
      os_log(_:dso:log:_:_:)();

      return [objc_allocWithZone(CAMediaTimingFunction) init];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1001269C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpringAnimationFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100126A44()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(CAReplicatorLayer) init];
    [v4 setAllowsHitTesting:0];
    [v4 setInstanceCount:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100126AE0()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(CABackdropLayer) init];
    [v4 setEnabled:1];
    v5 = v4;
    [v5 setAllowsHitTesting:1];
    [v5 setMasksToBounds:1];

    v6 = String._bridgeToObjectiveC()();
    [v5 setGroupName:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100126BC8(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *sub_100126C2C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomStatus] = 0;
  v9 = &v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_lookAtPoint];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_replicatorView] = 0;
  *&v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomFactor] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer] = 0;
  *&v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer] = 0;
  v10 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomLayerView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = [v12 orangeColor];
  v14 = [v13 colorWithAlphaComponent:0.5];

  [v11 setBackgroundColor:v14];
  *&v4[v10] = v11;
  v15 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_backdropLayerView;
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = [v12 blueColor];
  v18 = [v17 colorWithAlphaComponent:0.5];

  [v16 setBackgroundColor:v18];
  *&v4[v15] = v16;
  v19 = [objc_allocWithZone(UIView) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_sourceViewBeingReplicated] = v19;
  v20 = [objc_allocWithZone(UIView) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomView] = v20;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v12 clearColor];
  [v21 setBackgroundColor:v22];

  [v21 setClipsToBounds:1];
  v23 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomView;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomView]];
  v24 = sub_100126A44();
  [*&v21[v23] frame];
  [v24 frame];
  [v24 setFrame:?];

  v25 = [*&v21[v23] layer];
  v26 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer;
  [v25 addSublayer:*&v21[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer]];

  v27 = sub_100126AE0();
  [*&v21[v23] frame];
  [v27 frame];
  [v27 setFrame:?];

  [*&v21[v26] addSublayer:*&v21[OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer]];
  return v21;
}

void sub_100127018(void (*a1)(void), double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  *(v7 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomStatus) = 1;
  sub_10012709C(1, a2, a3, a4, a5, a6, a7, 3.0);
  v9 = *(v7 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_sourceViewBeingReplicated);
  a1();
}

uint64_t sub_10012709C(char a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v9 = v8;
  v17 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomFactor;
  v91 = *(v8 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomFactor);
  *(v8 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomFactor) = a8;
  AX_CGRectGetCenter();
  v99 = v19;
  v100 = v18;
  v20 = a2 - v18;
  v21 = a3 - v19;
  v22 = *(v8 + v17);
  v23 = a6 / v22;
  v97 = a7 / v22;
  v109.origin.x = a4;
  v109.origin.y = a5;
  v109.size.width = a6;
  v109.size.height = a7;
  v24 = CGRectGetWidth(v109) - v23;
  v95 = a4;
  v96 = a5;
  v110.origin.x = a4;
  v110.origin.y = a5;
  v110.size.width = a6;
  v101 = a7;
  v110.size.height = a7;
  v25 = CGRectGetHeight(v110) - v97;
  v26 = v25 * 0.5;
  v27 = -(v24 * 0.5);
  if (v20 >= v27)
  {
    v27 = v20;
  }

  if (v24 * 0.5 >= v20)
  {
    v28 = v27;
  }

  else
  {
    v28 = v24 * 0.5;
  }

  v29 = -(v25 * 0.5);
  if (v21 >= v29)
  {
    v29 = v21;
  }

  if (v26 >= v21)
  {
    v30 = v29;
  }

  else
  {
    v30 = v26;
  }

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = a8 <= 1.0;

  if ((a1 & 1) == 0)
  {
    v33 = sub_100126A44();
    [v33 removeAllAnimations];
  }

  v34 = objc_opt_self();
  [v34 begin];
  [v34 setDisableActions:1];
  *&aBlock.m21 = sub_100127DDC;
  *&aBlock.m22 = v32;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_1000F55D8;
  *&aBlock.m14 = &unk_1001D9B18;
  v35 = _Block_copy(&aBlock);

  [v34 setCompletionBlock:v35];
  _Block_release(v35);
  if (a8 > 1.0)
  {
    v36 = sub_100126AE0();
    [v36 setEnabled:1];
  }

  v37 = *(v9 + v17);
  v94 = a6;
  v38 = a6 / v37;
  v39 = v99 + v30;
  v92 = v99 + v30;
  v40 = v101 / v37;
  v111.origin.x = 0.0;
  v111.origin.y = 0.0;
  v111.size.width = v38;
  v111.size.height = v40;
  v41 = CGRectGetWidth(v111) * 0.5;
  v93 = v30;
  v42 = v100 + v28 - v41;
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = v38;
  v112.size.height = v40;
  v43 = CGRectGetHeight(v112) * 0.5;
  v44 = v39 - v43;
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v113.size.width = v38;
  v113.size.height = v40;
  Width = CGRectGetWidth(v113);
  v114.origin.x = 0.0;
  v114.origin.y = 0.0;
  v114.size.width = v38;
  v114.size.height = v40;
  Height = CGRectGetHeight(v114);
  v47 = v28 + vabdd_f64(v100 + v28, v41);
  if (v42 >= v95)
  {
    v47 = v28;
  }

  if (v42 + Width > v94)
  {
    v47 = v47 - (v42 - Width - v94);
  }

  v48 = v93 + vabdd_f64(v92, v43);
  if (v44 >= v96)
  {
    v48 = v93;
  }

  v49 = v44 + Height;
  v50 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v50;
  v51 = *&CATransform3DIdentity.m43;
  if (v49 > v101)
  {
    v48 = v48 - (v49 - v101);
  }

  v52 = v100 + v47;
  v53 = v99 + v48;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v51;
  v54 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v54;
  v55 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v55;
  CATransform3DTranslate(&v105, &aBlock, -v47, -v48, 0.0);
  CATransform3DScale(&v104, &v105, *(v9 + v17), *(v9 + v17), 1.0);
  v105 = v104;
  if (a1)
  {
    v102 = a1;
    v56 = String._bridgeToObjectiveC()();
    v57 = objc_opt_self();
    v58 = [v57 animationWithKeyPath:v56];

    v59 = sub_100126A44();
    [v59 instanceTransform];

    isa = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v58 setFromValue:isa];

    v61 = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v58 setToValue:v61];

    v62 = v58;
    [v62 setDuration:0.2];
    [v62 setDelegate:v9];

    [v62 setCumulative:1];
    v63 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer;
    v64 = *(v9 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer);
    v65 = String._bridgeToObjectiveC()();
    [v64 addAnimation:v62 forKey:v65];

    v66 = *(v9 + v17);
    if (v66 >= v91)
    {
      if (v66 != v91)
      {
        goto LABEL_30;
      }

      [*(v9 + v63) position];
      v108.x = v52;
      v108.y = v53;
      if (CGPointEqualToPoint(v107, v108))
      {
        goto LABEL_30;
      }

      usleep(0x3E8u);
      v70 = String._bridgeToObjectiveC()();
      v68 = [v57 animationWithKeyPath:v70];

      [*(v9 + v63) position];
      v71 = CGPoint._bridgeToObjectiveC()().super.isa;
      [v68 setFromValue:v71];
    }

    else
    {
      v67 = String._bridgeToObjectiveC()();
      v68 = [v57 animationWithKeyPath:v67];

      [*(v9 + v63) position];
      v69 = CGPoint._bridgeToObjectiveC()().super.isa;
      [v68 setFromValue:v69];

      [*(v9 + v63) position];
    }

    v72 = CGPoint._bridgeToObjectiveC()().super.isa;
    [v68 setToValue:v72];

    [v68 setDuration:0.2];
    v73 = *(v9 + v63);
    v74 = String._bridgeToObjectiveC()();
    [v73 addAnimation:v68 forKey:v74];

LABEL_30:
    a1 = v102;
  }

  v115.origin.x = 0.0;
  v115.origin.y = 0.0;
  v115.size.width = v38;
  v115.size.height = v40;
  if (!CGRectIsEmpty(v115))
  {
    v75 = sub_100126A44();
    [v75 setPosition:{v52, v53}];

    v76 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer;
    [*(v9 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer) setBounds:{0.0, 0.0, v38, v40}];
    v77 = sub_100126AE0();
    [v77 setBounds:{0.0, 0.0, v38, v40}];

    v78 = *(v9 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer);
    v116.origin.x = 0.0;
    v116.origin.y = 0.0;
    v116.size.width = v38;
    v116.size.height = v40;
    MidX = CGRectGetMidX(v116);
    v117.origin.x = 0.0;
    v117.origin.y = 0.0;
    v117.size.width = v38;
    v117.size.height = v40;
    v80.n128_u64[0] = CGRectGetMidY(v117);
    v81.n128_f64[0] = MidX;
    [v78 setPosition:{HeadTrackerAvailabilityDetail.rawValue.getter(v81, v80, v82, v83)}];

    v84 = *(v9 + v76);
    v103 = v104;
    [v84 setInstanceTransform:&v103];
    v85 = *(v9 + v76);
    v86 = *(v9 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_sourceViewBeingReplicated);
    [v85 frame];
    [v86 setFrame:?];
  }

  [v34 commit];
  if ((a1 & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
  }

  else
  {
    v88 = Strong;
    v89 = sub_100126AE0();
    [v89 setEnabled:a8 > 1.0];
  }
}

void sub_100127B98()
{
  *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomStatus) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_lookAtPoint);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_replicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomFactor) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomReplicatorLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd12ZoomLensView____lazy_storage___zoomBackdropLayer) = 0;
  v2 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_zoomLayerView;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = objc_opt_self();
  v5 = [v4 orangeColor];
  v6 = [v5 colorWithAlphaComponent:0.5];

  [v3 setBackgroundColor:v6];
  *(v0 + v2) = v3;
  v7 = OBJC_IVAR____TtC15assistivetouchd12ZoomLensView_backdropLayerView;
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = [v4 blueColor];
  v10 = [v9 colorWithAlphaComponent:0.5];

  [v8 setBackgroundColor:v10];
  *(v0 + v7) = v8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100127D6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127DA4()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100127DDC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100126AE0();
    [v4 setEnabled:v1 ^ 1u];
  }
}

uint64_t sub_100127E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100127E70()
{
  result = qword_1002188D0;
  if (!qword_1002188D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002188D0);
  }

  return result;
}

void sub_100127F3C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Removing devices: %@", &v2, 0xCu);
}

void sub_100127FB4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Device: %@,\ndidPostEvent: %@", &v3, 0x16u);
}

void sub_100128080(uint64_t a1, NSObject *a2)
{
  v3 = NSStringFromBOOL();
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "MotionTrackingInput isTrackingInputActive: %@", &v4, 0xCu);
}

void sub_10012811C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HNDDeviceManager _updateMotionTrackerExpressionConfig]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: motion tracker is nil", &v1, 0xCu);
}

void sub_1001281B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error initializing IPC Service with error: %@", &v2, 0xCu);
}

void sub_100128370(NSObject *a1, double a2, double a3)
{
  v4 = NSStringFromPoint(*&a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Cannot move bubble notification to pos: %@ because it is not presented.", &v5, 0xCu);
}

void sub_100128470(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting gaze point manager to: %@", &v2, 0xCu);
}

void sub_1001284E8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Using gaze point manager: %@", &v3, 0xCu);
}

void sub_1001285F8(void *a1)
{
  v1 = [a1 elemLog];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100128684(void *a1)
{
  v1 = [a1 elemLog];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100128744(void *a1)
{
  v1 = [a1 elemLog];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001287D0(void *a1)
{
  v1 = [a1 elementManager];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100128A00()
{
  sub_100020494();
  sub_100039EA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100128A3C()
{
  sub_100020494();
  sub_100039EA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100128A8C(id *a1, NSObject *a2)
{
  v4 = [*a1 fingerController];
  v5 = [*a1 fingerController];
  v6 = [v5 fingerModels];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Finger models should not be 0: %@ - %@", &v7, 0x16u);
}

void sub_100128BCC()
{
  sub_100020494();
  sub_100039EA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100128C08(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "handleButtonEvent=%@", &v2, 0xCu);
}

void sub_100128D64(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Can't open device: %@, result: %d", &v4, 0x12u);
}

void sub_100128E38(void *a1, const char *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = v6;
  v8 = 138413058;
  v9 = v6;
  v10 = 2080;
  Name = sel_getName(a2);
  v12 = 1024;
  v13 = [a1 _sessionState];
  v14 = 1024;
  v15 = [a1 _desiredSessionState];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[%@ %s]: current state: %d, desired: %d", &v8, 0x22u);
}

void sub_100128F2C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BTLocalDeviceGetConnectedDevices failed: %d", v2, 8u);
}

void sub_10012904C(const char *a1, NSObject *a2)
{
  v3 = 136315138;
  Name = sel_getName(a1);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BTDeviceGetAddressString failed in %s", &v3, 0xCu);
}

void sub_1001290D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 1024;
  v8 = v2;
  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Attempting to send custom message to device %@ type %d data %@", &v5, 0x1Cu);
}

void sub_1001291D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  v5 = 138412802;
  v6 = v2;
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Attempting to send configuration message to device %@ type %d value %u", &v5, 0x18u);
}

void sub_1001292D8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HNDEventManager.m" lineNumber:348 description:@"Make sure we don't start this on main thread"];
}

void sub_10012934C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to query Local Auth Storage: %@", &v2, 0xCu);
}

void sub_1001293C4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"BOOL soft_AXWatchRemoteScreenIsPairedGizmoSupported(void)"];
  [v0 handleFailureInFunction:v1 file:@"HNDUtilities.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10012943C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"BOOL soft_AXWatchRemoteScreenIsTwiceFeatureOn(void)"];
  [v0 handleFailureInFunction:v1 file:@"HNDUtilities.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1001294C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Only expected 0 or 1 up button: %@", &v2, 0xCu);
}

void sub_100129540(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Only expected 0 or 1 down button: %@", &v2, 0xCu);
}

void sub_1001295B8(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "unexpected no changes in up/down buttons! _lastButtonMask=%u, pointerButtonMask=%u", v3, 0xEu);
}

void sub_100129640(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AXWatchRemoteScreenServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HNDUtilities.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1001296C0(NSObject *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v14 = NSStringFromCGRect(*&a2);
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  v15 = NSStringFromCGRect(v20);
  v16 = 138412546;
  v17 = v14;
  v18 = 2112;
  v19 = v15;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "HNDRocker (frame: %@) is out of bounds from screen: %@", &v16, 0x16u);
}

void sub_100129884(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 72);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No image found for imageName: %@", &v3, 0xCu);
}

void sub_10012990C(void *a1, NSObject *a2)
{
  v3 = [a1 keyInfo];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "received HID event with keyInfo: %@", &v4, 0xCu);
}

void sub_1001299A4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getGCControllerDidBecomeCurrentNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"HNDGamePadDevice.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100129A1C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getGCControllerDidConnectNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"HNDGamePadDevice.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100129A94(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *GameControllerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HNDGamePadDevice.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100129B14()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getGCControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HNDGamePadDevice.m" lineNumber:19 description:{@"Unable to find class %s", "GCController"}];

  __break(1u);
}

void sub_100129BE8(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Actions are still being ignored after time: %@. Will stop ignoring actions.", &v4, 0xCu);
}

void sub_100129D5C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Attempted to repost multiple events with the same button mask and timestamp: %@", &v2, 0xCu);
}

void sub_100129DD4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[HNDSystemPointerController _accessibilityShouldIgnoreEventRep:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: hidServiceClientRegistryIDNum is not NSNumber: %@", &v2, 0x16u);
}

void sub_100129E60(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening device: %d", v2, 8u);
}

void sub_100129F14(char a1, NSObject *a2, double a3, double a4)
{
  v6 = NSStringFromCGPoint(*&a3);
  v7 = 138543618;
  v8 = v6;
  v9 = 1024;
  v10 = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Long press at point %{public}@ down %i", &v7, 0x12u);
}

void sub_10012A00C(void *a1, NSObject *a2)
{
  [a1 currentHoldPoint];
  v3 = NSStringFromCGPoint(v6);
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Interrupting existing long press at point %{public}@", &v4, 0xCu);
}

void sub_10012A0BC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BTDeviceGetAddressString returned %d", v2, 8u);
}

void sub_10012A218(void *a1)
{
  v1 = [a1 elemLog];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012A2A4(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a1 elemLog];
  }

  else
  {
    [a1 description];
  }
  v4 = ;
  if (objc_opt_respondsToSelector())
  {
    [a2 elemLog];
  }

  else
  {
    [a2 description];
  }
  v5 = ;
  sub_10009A6D4();
  sub_100022F68();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10012A39C()
{
  sub_100022F94();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Current element depth %lu, matching element depth %lu", v2, 0x16u);
}

void sub_10012A420(void *a1)
{
  v1 = [a1 elemLog];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012A4AC(void *a1)
{
  v1 = [a1 elemLog];
  sub_100022F94();
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10012A5F8()
{
  sub_100022F94();
  sub_10009A6C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10012A668()
{
  sub_100022F94();
  sub_10009A6C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10012A6D8(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    [a1 elemLog];
  }

  else
  {
    [a1 description];
  }
  v7 = ;
  [a1 scatActivateBehavior];
  sub_100022F68();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10012A7B4(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a1 elemLog];
  }

  else
  {
    [a1 description];
  }
  v4 = ;
  v5 = [a2 elemLog];
  sub_10009A6D4();
  sub_100022F68();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10012A888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unknown Vocie Trigger event: %@", &v2, 0xCu);
}

void sub_10012A900(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_logEventToCoreAnalytics: already logged event in last 24 hours: %ld. Skipping.", &v2, 0xCu);
}

void sub_10012AB2C(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  v3 = NSStringFromBOOL();
  sub_1000AA334();
  sub_1000AA34C(&_mh_execute_header, v4, v5, "handleMovementWithDelta: %@, success: %@", v6, v7, v8, v9, v10);
}

void sub_10012ABD0(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  v3 = NSStringFromBOOL();
  sub_1000AA334();
  sub_1000AA34C(&_mh_execute_header, v4, v5, "handleScrollWithDelta: %@, success: %@", v6, v7, v8, v9, v10);
}

void sub_10012AC9C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AXPIFingerController+HNDAdditions.m" lineNumber:108 description:@"Should have had two fingers when asking for pinch centroid."];
}

void sub_10012AE40(os_log_t log)
{
  v1 = 138412290;
  v2 = qword_100218BC8;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to get serial number for device. Falling back to using generated UUID %@", &v1, 0xCu);
}

void sub_10012AF1C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_100022F94();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed create audio player for sound: %@", v4, 0xCu);
}

void sub_10012B02C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to set static ducking volume with error: %d.", v2, 8u);
}

void sub_10012B19C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Back item has nothing to do. %@ - %@", &v3, 0x16u);
}

void sub_10012B2AC(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SCATMotionTrackerInputSource _setUpPowerAssertionIfNecessary]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to create PM Assertion with error = 0x%x", &v2, 0x12u);
}

void sub_10012B338(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCATMotionTrackerInputSource.m" lineNumber:785 description:@"Should be on main thread!"];
}

void sub_10012B3AC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SCATMotionTrackerInputSource _setUpIdleTimerAssertion]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: idle timer assertion already acquired.", &v1, 0xCu);
}

void sub_10012B430(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SCATMotionTrackerInputSource _cleanUpIdleTimerAssertion]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: idle timer assertion was not acquired. no need to invalidate.", &v1, 0xCu);
}

void sub_10012B4B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getAXUserEventTimerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SCATMotionTrackerInputSource.m" lineNumber:23 description:{@"Unable to find class %s", "AXUserEventTimer"}];

  __break(1u);
}

void sub_10012B530(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCATMotionTrackerInputSource.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10012B5EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting point picker to: %@", &v2, 0xCu);
}

void sub_10012B664(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Invalid SCATAction specified for _handleScrollAction. Action given: %@.", &v4, 0xCu);
}

void sub_10012B790(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to complete sysdiagnose. Error: %{public}@", &v2, 0xCu);
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  EncodedSize = _CVImageBufferGetEncodedSize(imageBuffer);
  height = EncodedSize.height;
  width = EncodedSize.width;
  result.height = height;
  result.width = width;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}