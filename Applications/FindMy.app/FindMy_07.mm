uint64_t sub_1000C0850(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = dispatch thunk of FMFAlert.debugDescription.getter();
    v11 = sub_100005B4C(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: did receive server alert: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = *(v1 + 32);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v13 + 8 * i + 32);
    }

    v20 = v19 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 88))(v2, a1, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

uint64_t sub_1000C0ADC(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v3 - 8);
  __chkstk_darwin(v3);
  v51 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v50 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B04D8);
  v42 = *(v6 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v6 - 8);
  v44 = &v38 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v40 = v11;
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = *(v9 + 16);
  v46 = a2;
  v15(v13, a2, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v15;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v22 = URL.absoluteString.getter();
    v23 = v8;
    v25 = v24;
    (*(v9 + 8))(v13, v23);
    v26 = sub_100005B4C(v22, v25, aBlock);
    v8 = v23;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMPeopleProvider: did receive action URL: %s", v19, 0xCu);
    sub_100006060(v21);
    v15 = v38;

    v3 = v39;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = v41;
  v15(v41, v46, v8);
  v29 = v8;
  v30 = v44;
  sub_100007204(v47, v44, &qword_1006B04D8);
  v31 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v32 = (v40 + *(v42 + 80) + v31) & ~*(v42 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v48;
  (*(v9 + 32))(v33 + v31, v28, v29);
  sub_1000C133C(v30, v33 + v32);
  aBlock[4] = sub_1000C13AC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624DD0;
  v34 = _Block_copy(aBlock);

  v35 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009E80(&qword_1006AEDE0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v36 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v52 + 8))(v36, v3);
  return (*(v50 + 8))(v35, v45);
}

uint64_t sub_1000C1110(char a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: restrictions changes to: %{BOOL}d", v7, 8u);
  }

  v8 = *(v2 + 32);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v9 + 8 * i + 32);
    }

    v16 = v15 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 96))(v2, a1 & 1, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

uint64_t sub_1000C133C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B04D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C13AC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10007EBC0(&qword_1006B04D8) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000BF25C(v5, v0 + v2, v6);
}

unint64_t sub_1000C1488(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1000C159C(unint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  result = sub_1000C1488(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v9 = static UUID.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v12)
          {
            goto LABEL_45;
          }

          if (v7 >= v12)
          {
            goto LABEL_46;
          }

          v10 = *(v3 + 32 + 8 * v6);
          v11 = *(v3 + 32 + 8 * v7);
        }

        v13 = v2;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1000BF5B0(v3);
          v14 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v11;

        if ((v3 & 0x8000000000000000) != 0 || v14)
        {
          v3 = sub_1000BF5B0(v3);
          v15 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_43;
        }

        v2 = v13;
        *(v15 + 8 * v7 + 32) = v10;

        *v13 = v3;
      }

      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_42;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void *sub_1000C1824(uint64_t a1, void *a2)
{
  v51 = a1;
  v3 = type metadata accessor for FMFFriend();
  v46 = *(v3 - 1);
  v4 = __chkstk_darwin(v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = v40 - v7;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    sub_1000C1DD0(a2, v53);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_1000C1E2C(a2);
    v11 = os_log_type_enabled(v9, v10);
    v50 = v3;
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v53[0] = v13;
      *v12 = 136315138;
      v14 = sub_100109DEC();
      v16 = sub_100005B4C(v14, v15, v53);

      *(v12 + 4) = v16;
      v3 = v50;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMPersonProvider: didLoadImage for request %s", v12, 0xCu);
      sub_100006060(v13);
    }

    v17 = *(v52 + 32);

    os_unfair_lock_lock((v17 + 24));
    v18 = *(v17 + 16);

    os_unfair_lock_unlock((v17 + 24));

    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (!v19)
      {
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
      }
    }

    v20 = dispatch thunk of FMFManager.friends.getter();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *a2;
      v47 = a2[1];
      v48 = v22;
      v44 = *(v46 + 16);
      v23 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v40[1] = v20;
      v43 = v23;
      v24 = v20 + v23;
      v25 = *(v46 + 72);
      v41 = (v46 + 8);
      v45 = v46 + 16;
      v42 = (v46 + 32);
      v26 = _swiftEmptyArrayStorage;
      (v44)(v49, v20 + v23, v3);
      while (1)
      {
        if (FMFFriend.identifier.getter() == v48 && v27 == v47)
        {
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            (*v41)(v49, v3);
            goto LABEL_9;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = v26;
        }

        else
        {
          v29 = sub_10008BB54(0, v26[2] + 1, 1, v26);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_10008BB54(v30 > 1, v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        v26 = v29;
        v32 = v29 + v43 + v31 * v25;
        v3 = v50;
        (*v42)(v32, v49, v50);
LABEL_9:
        v24 += v25;
        if (!--v21)
        {

          result = v26;
          goto LABEL_23;
        }

        (v44)(v49, v24, v3);
      }
    }

    result = _swiftEmptyArrayStorage;
LABEL_23:
    v49 = result[2];
    if (!v49)
    {
      break;
    }

    if (v19 < 1)
    {
      __break(1u);
      return result;
    }

    v34 = 0;
    v47 = result + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    a2 = (v18 & 0xC000000000000001);
    v45 = v46 + 16;
    v44 = (v46 + 8);
    v3 = &OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    v48 = result;
    while (v34 < result[2])
    {
      (*(v46 + 16))(v6, &v47[*(v46 + 72) * v34], v50);
      for (i = 0; i != v19; ++i)
      {
        if (a2)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v38 = *(v18 + 8 * i + 32);
        }

        v39 = v38 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v36 = *(v39 + 8);
          ObjectType = swift_getObjectType();
          (*(v36 + 56))(v52, v51, v6, ObjectType, v36);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      ++v34;
      (*v44)(v6, v50);
      result = v48;
      if (v34 == v49)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_36:
}

uint64_t sub_1000C1E80()
{
  v1 = *(v0 + 24);
  v2 = dispatch thunk of FMFManager.stopRefreshing()();
  return v1(v2);
}

void sub_1000C1EEC(uint64_t a1)
{
  v2 = type metadata accessor for FMIPActionStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_1000C3D4C(&unk_1006B0580, &type metadata accessor for FMIPActionStatus);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100005B4C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMAppDelegate: played a sound with error? %s", v9, 0xCu);
    sub_100006060(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1000C21DC(void *a1)
{
  v2 = sub_10007EBC0(&qword_1006B0570);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for URLComponents();
  v43 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for URL();
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 activityType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = [a1 webpageURL];
  if (!v21)
  {
LABEL_11:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMAppDelegate: Universal Link invalid URL, not handling", v27, 2u);
    }

    return 0;
  }

  v22 = v21;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v23 = v43;
  if ((*(v43 + 48))(v4, 1, v5) == 1)
  {
    (*(v42 + 8))(v13, v11);
    sub_100012DF0(v4, &qword_1006B0570);
    goto LABEL_11;
  }

  (*(v23 + 32))(v10, v4, v5);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  (*(v23 + 16))(v8, v10, v5);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v44[0] = v41;
    *v32 = 136315138;
    sub_1000C3D4C(&qword_1006B0578, &type metadata accessor for URLComponents);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = v8;
    v37 = *(v43 + 8);
    v37(v36, v5);
    v38 = sub_100005B4C(v33, v35, v44);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMAppDelegate: Did receive Universal Link with components %s", v32, 0xCu);
    sub_100006060(v41);
  }

  else
  {

    v39 = v8;
    v37 = *(v23 + 8);
    v37(v39, v5);
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  memset(v44, 0, sizeof(v44));
  sub_100111350(v13, v44);
  sub_100012DF0(v44, &unk_1006B8740);
  v37(v10, v5);
  (*(v42 + 8))(v13, v11);
  return 1;
}

uint64_t sub_1000C27E8(void *a1)
{
  v160 = type metadata accessor for FMIPPlaySoundMethod();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v163 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v165 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v166 = &v158 - v7;
  v8 = type metadata accessor for FMIPDevice();
  v175 = *(v8 - 8);
  v176 = v8;
  v9 = __chkstk_darwin(v8);
  v161 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v168 = &v158 - v12;
  __chkstk_darwin(v11);
  v167 = &v158 - v13;
  v173 = type metadata accessor for FMSelectedSection();
  v14 = __chkstk_darwin(v173);
  v162 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v164 = &v158 - v17;
  v18 = __chkstk_darwin(v16);
  v169 = &v158 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v158 - v21;
  __chkstk_darwin(v20);
  v24 = &v158 - v23;
  v25 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v25 - 8);
  v27 = &v158 - v26;
  v28 = type metadata accessor for FMFFriend();
  v171 = *(v28 - 8);
  v172 = v28;
  __chkstk_darwin(v28);
  v30 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100005B14(v31, qword_1006D4630);
  v33 = v1;
  v174 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v170 = v22;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v178[0] = swift_slowAlloc();
    *v37 = 136446466;
    ObjectType = swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920);
    v38 = String.init<A>(describing:)();
    v40 = sub_100005B4C(v38, v39, v178);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_100005B4C(0xD00000000000002BLL, 0x800000010057BD60, v178);
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s %{public}s", v37, 0x16u);
    swift_arrayDestroy();
  }

  v41 = [a1 activityType];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {

LABEL_9:
    LOBYTE(v47) = sub_1000C21DC(a1);
    return v47 & 1;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_9;
  }

  v49 = [a1 interaction];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 intent];

    if (v51)
    {
      type metadata accessor for LocateIntent();
      v52 = swift_dynamicCastClass();
      if (v52 && (v53 = [v52 person]) != 0 && (v54 = v53, v55 = objc_msgSend(v53, "customIdentifier"), v54, v55))
      {
        v158 = v51;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        if (qword_1006AEC80 != -1)
        {
          swift_once();
        }

        v59 = off_1006BE550;

        sub_1000BD300(v56, v58, v27);

        v61 = v171;
        v60 = v172;
        if ((*(v171 + 48))(v27, 1, v172) != 1)
        {
          (*(v61 + 32))(v30, v27, v60);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "FMAppDelegate: Will select friend and show detail", v91, 2u);
          }

          v92 = v59[7];
          v93 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          sub_100062074(v92 + v93, v24);
          LODWORD(v92) = swift_getEnumCaseMultiPayload();
          sub_10005D4E4(v24);
          v95 = v169;
          v94 = v170;
          if (v92 == 2)
          {
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "FMURLHandler: ignoring currentSelection", v98, 2u);
            }
          }

          else
          {
            v131 = v59[7];
            swift_storeEnumTagMultiPayload();
            v132 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
            swift_beginAccess();
            sub_100062074(v131 + v132, v95);
            swift_beginAccess();

            sub_100058530(v94, v131 + v132);
            swift_endAccess();
            sub_100058594(v95);

            sub_10005D4E4(v95);
            sub_10005D4E4(v94);
          }

          v133 = v59[7];
          v135 = v171;
          v134 = v172;
          (*(v171 + 16))(v94, v30, v172);
          swift_storeEnumTagMultiPayload();
          v136 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          sub_100062074(v133 + v136, v95);
          swift_beginAccess();

          sub_100058530(v94, v133 + v136);
          swift_endAccess();
          sub_100058594(v95);

          sub_10005D4E4(v95);
          sub_10005D4E4(v94);
          (*(v135 + 8))(v30, v134);
          LOBYTE(v47) = 1;
          return v47 & 1;
        }

        sub_100012DF0(v27, &qword_1006B0050);
      }

      else
      {
      }
    }
  }

  v62 = [a1 interaction];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 intent];

    if (v64)
    {
      type metadata accessor for LocateDeviceIntent();
      v65 = swift_dynamicCastClass();
      if (v65 && (v66 = [v65 device]) != 0 && (v67 = v66, v68 = objc_msgSend(v66, "identifier"), v67, v68))
      {
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        if (qword_1006AEC80 != -1)
        {
          swift_once();
        }

        v72 = off_1006BE550;

        v73 = v166;
        sub_1000E512C(v69, v71, v166);

        v75 = v175;
        v74 = v176;
        if ((*(v175 + 48))(v73, 1, v176) != 1)
        {
          (*(v75 + 32))(v167, v73, v74);
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v99, v100, "FMAppDelegate: Will select device and show detail", v101, 2u);
          }

          v102 = v72[7];
          v103 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          v104 = v102 + v103;
          v105 = v164;
          sub_100062074(v104, v164);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v108 = v169;
          v107 = v170;
          if (EnumCaseMultiPayload)
          {
            sub_10005D4E4(v105);
            v109 = v72[7];
            swift_storeEnumTagMultiPayload();
            v110 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
            swift_beginAccess();
            sub_100062074(v109 + v110, v108);
            swift_beginAccess();

            sub_100058530(v107, v109 + v110);
            swift_endAccess();
            sub_100058594(v108);

            sub_10005D4E4(v108);
            sub_10005D4E4(v107);
          }

          else
          {
            v137 = sub_10007EBC0(&qword_1006BEEE0);
            sub_100012DF0(v105 + *(v137 + 48), &qword_1006B07D0);
            (*(v175 + 8))(v105, v176);
            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              *v140 = 0;
              _os_log_impl(&_mh_execute_header, v138, v139, "FMURLHandler: ignoring currentSelection", v140, 2u);
            }
          }

          v141 = v72[7];
          v142 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
          v144 = v175;
          v143 = v176;
          v145 = v167;
          (*(v175 + 16))(v107, v167, v176);
          v146 = type metadata accessor for FMIPItem();
          (*(*(v146 - 8) + 56))(v107 + v142, 1, 1, v146);
          swift_storeEnumTagMultiPayload();
          v147 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          sub_100062074(v141 + v147, v108);
          swift_beginAccess();

          sub_100058530(v107, v141 + v147);
          swift_endAccess();
          sub_100058594(v108);

          sub_10005D4E4(v108);
          sub_10005D4E4(v107);
          (*(v144 + 8))(v145, v143);
          LOBYTE(v47) = 1;
          return v47 & 1;
        }

        sub_100012DF0(v73, &unk_1006BBCE0);
      }

      else
      {
      }
    }
  }

  v47 = [a1 interaction];
  if (!v47)
  {
    return v47 & 1;
  }

  v76 = v47;
  v77 = [v47 intent];

  if (!v77)
  {
LABEL_41:
    LOBYTE(v47) = 0;
    return v47 & 1;
  }

  type metadata accessor for PlaySoundIntent();
  v78 = swift_dynamicCastClass();
  if (!v78 || (v79 = [v78 device]) == 0 || (v80 = v79, v81 = objc_msgSend(v79, "identifier"), v80, !v81))
  {

    goto LABEL_41;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v85 = off_1006BE550;

  v86 = v165;
  sub_1000E512C(v82, v84, v165);

  v88 = v175;
  v87 = v176;
  if ((*(v175 + 48))(v86, 1, v176) == 1)
  {

    sub_100012DF0(v86, &unk_1006BBCE0);
    goto LABEL_41;
  }

  (*(v88 + 32))(v168, v86, v87);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v111, v112, "FMAppDelegate: Will select device and play a sound", v113, 2u);
  }

  v171 = *(v88 + 16);
  v172 = v88 + 16;
  (v171)(v161, v168, v87);
  (*(v159 + 104))(v163, enum case for FMIPPlaySoundMethod.classic(_:), v160);
  sub_10007EBC0(&qword_1006AF788);
  v114 = type metadata accessor for FMIPPlaySoundChannels();
  v115 = *(v114 - 8);
  v116 = *(v115 + 72);
  v117 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_100552210;
  v119 = v118 + v117;
  v120 = *(v115 + 104);
  v120(v119, enum case for FMIPPlaySoundChannels.left(_:), v114);
  v120(v119 + v116, enum case for FMIPPlaySoundChannels.right(_:), v114);
  type metadata accessor for FMIPPlaySoundDeviceAction();
  swift_allocObject();
  v121 = FMIPPlaySoundDeviceAction.init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)();

  sub_1000D7218(v121, sub_1000C1EEC, 0);

  v122 = v85[7];
  v123 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v124 = v122 + v123;
  v125 = v162;
  sub_100062074(v124, v162);
  v126 = swift_getEnumCaseMultiPayload();
  v167 = v121;
  if (v126)
  {
    sub_10005D4E4(v125);
    v127 = v85[7];
    v128 = v170;
    swift_storeEnumTagMultiPayload();
    v129 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v130 = v169;
    sub_100062074(v127 + v129, v169);
    swift_beginAccess();

    sub_100058530(v128, v127 + v129);
    swift_endAccess();
    sub_100058594(v130);

    sub_10005D4E4(v130);
    sub_10005D4E4(v128);
  }

  else
  {
    v148 = sub_10007EBC0(&qword_1006BEEE0);
    sub_100012DF0(v125 + *(v148 + 48), &qword_1006B07D0);
    (*(v175 + 8))(v125, v176);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&_mh_execute_header, v149, v150, "FMURLHandler: ignoring currentSelection", v151, 2u);
    }

    v130 = v169;
    v128 = v170;
  }

  v152 = v85[7];
  v153 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
  v154 = v168;
  v155 = v176;
  (v171)(v128, v168, v176);
  v156 = type metadata accessor for FMIPItem();
  (*(*(v156 - 8) + 56))(v128 + v153, 1, 1, v156);
  swift_storeEnumTagMultiPayload();
  v157 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v152 + v157, v130);
  swift_beginAccess();

  sub_100058530(v128, v152 + v157);
  swift_endAccess();
  sub_100058594(v130);

  sub_10005D4E4(v130);
  sub_10005D4E4(v128);
  (*(v175 + 8))(v154, v155);
  LOBYTE(v47) = 1;
  return v47 & 1;
}

uint64_t sub_1000C3D4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000C3D94(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = static os_log_type_t.error.getter();

  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    v8 = sub_100005B4C(v1, v3, &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s", v6, 0xCu);
    sub_100006060(v7);
  }

  else
  {
  }
}

uint64_t sub_1000C3F10()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EBC0(&qword_1006B0650);
  v4 = method lookup function for FMImageCache();
  v4();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1000C402C()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_1006B0598 = result;
  return result;
}

void sub_1000C4060(void *a1@<X8>)
{
  v2 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithData:isa];

  *a1 = v4;
}

uint64_t sub_1000C40D0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1000C4F10();
}

uint64_t sub_1000C411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v87 = a4;
  v88 = a5;
  v89 = a6;
  v11 = 0x7465756F686C6973;
  v12 = type metadata accessor for Insecure.MD5();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Insecure.MD5Digest();
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin(v15);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1006B05B0;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
LABEL_8:
    if (v88)
    {
      v80 = a1;
      v81 = a3;
      if (qword_1006AEA68 != -1)
      {
        swift_once();
      }

      v34 = qword_1006B0598;
      v35 = String._bridgeToObjectiveC()();
      sub_10007EBC0(&qword_1006AFC30);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1005528C0;
      *(v36 + 32) = [objc_opt_self() descriptorForRequiredKeys];
      sub_10007EBC0(&qword_1006AF180);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v92 = 0;
      v38 = [v34 unifiedContactWithIdentifier:v35 keysToFetch:isa error:&v92];

      if (v38)
      {
        v82 = v13;
        v77 = v12;
        v88 = v7;
        v79 = a2;
        v39 = v92;
        v40 = [v38 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v78 = sub_10047BEA4(2);
        v87 = v38;

        v41 = [v38 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = sub_10047BEA4(2);
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v92 = v42;
        v93 = v44;
        v94 = v46;
        v95 = v48;
        v49 = static String._fromSubstring(_:)();
        v51 = v50;

        v90 = v49;
        v91 = v51;
        sub_1000C52F8();
        String.append<A>(contentsOf:)();
        Substring.init(_:)();

        v52 = static String._fromSubstring(_:)();
        v54 = v53;

        v55 = [v87 thumbnailImageData];
        if (v55)
        {
          v76 = v52;
          v56 = v55;
          v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          sub_100003F24(&unk_1006B06F0, &type metadata accessor for Insecure.MD5);
          v60 = v84;
          v61 = v77;
          dispatch thunk of HashFunction.init()();
          sub_10005B930(v57, v59);
          v62 = v88;
          sub_1004F2018(v57, v59);
          sub_10000A858(v57, v59);
          v78 = v54;
          v63 = v83;
          dispatch thunk of HashFunction.finalize()();
          sub_10000A858(v57, v59);
          (*(v82 + 8))(v60, v61);
          v64 = sub_1000C496C(v63);
          v88 = v62;
          v65 = v63;
          v54 = v78;
          (*(v85 + 8))(v65, v86);
          v92 = v64;
          sub_10007EBC0(&qword_1006C0C10);
          sub_100004098(&qword_1006B0700, &qword_1006C0C10);
          v66 = BidirectionalCollection<>.joined(separator:)();
          v52 = v76;
          v67 = v66;
          v69 = v68;
        }

        else
        {
          v69 = 0xE600000000000000;
          v67 = 0x617461646F6ELL;
        }

        a3 = v81;
        a2 = v79;
        v92 = v52;
        v93 = v54;

        v71._countAndFlagsBits = 45;
        v71._object = 0xE100000000000000;
        String.append(_:)(v71);

        v72._countAndFlagsBits = v67;
        v72._object = v69;
        String.append(_:)(v72);

        v11 = v92;
        v32 = v93;
        a1 = v80;
        goto LABEL_18;
      }

      v70 = v92;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      a1 = v80;
      a3 = v81;
      v11 = 0x7465756F686C6973;
    }

    v32 = 0xEA00000000006574;
LABEL_18:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(a1 + v17);
    *(a1 + v17) = 0x8000000000000000;
    sub_1001BBA68(v11, v32, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + v17) = v90;
    result = swift_endAccess();
    goto LABEL_19;
  }

  v19 = sub_10000726C(a2, a3);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v21 = *(v18 + 56) + 16 * v19;
  v82 = v13;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = *v21;
  v26 = *(v21 + 8);

  v92 = v25;
  v93 = v26;
  a3 = v24;
  a2 = v23;
  a1 = v22;
  v7 = v6;
  v13 = v82;
  v90 = 0x7465756F686C6973;
  v91 = 0xEA00000000006574;
  sub_100035F3C();
  v27 = StringProtocol.contains<A>(_:)();
  v11 = 0x7465756F686C6973;

  if (v27)
  {
    goto LABEL_8;
  }

  v28 = *(a1 + v17);
  if (!*(v28 + 16))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v29 = sub_10000726C(a2, a3);
  if ((v30 & 1) == 0)
  {
    goto LABEL_21;
  }

  v31 = (*(v28 + 56) + 16 * v29);
  v11 = *v31;
  v32 = v31[1];

LABEL_19:
  v74 = v89;
  *v89 = v11;
  v74[1] = v32;
  return result;
}

uint64_t sub_1000C496C(uint64_t a1)
{
  v2 = type metadata accessor for Insecure.MD5Digest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F24(&unk_1006B0710, &type metadata accessor for Insecure.MD5Digest);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10016715C(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_100552220;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        sub_10007EBC0(&unk_1006B20B0);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = &type metadata for UInt8;
        *(v13 + 64) = &protocol witness table for UInt8;
        *(v13 + 32) = v12;
        result = String.init(format:_:)();
        v34 = v7;
        v16 = v7[2];
        v15 = v7[3];
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_10016715C((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        v7[2] = v16 + 1;
        v17 = &v7[2 * v16];
        v17[4] = result;
        v17[5] = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_100552220;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        sub_10007EBC0(&unk_1006B20B0);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = &type metadata for UInt8;
        *(v22 + 64) = &protocol witness table for UInt8;
        *(v22 + 32) = v21;
        result = String.init(format:_:)();
        v34 = v7;
        v25 = v7[2];
        v24 = v7[3];
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_10016715C((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        v7[2] = v25 + 1;
        v26 = &v7[2 * v25];
        v26[4] = result;
        v26[5] = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C4D0C()
{

  v1 = v0 + qword_1006B05C0;

  return sub_10005CD20(v1);
}

uint64_t sub_1000C4D80()
{
  v0 = FMImageCache.deinit();
  v1 = *(v0 + qword_1006B05A0);

  sub_10005CD20(v0 + qword_1006B05C0);

  return swift_deallocClassInstance();
}

void sub_1000C4E20()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1000C4E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v6[4] = *(a1 + 64);
  v6[5] = v2;
  v7 = *(a1 + 96);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v4;
  if ((*(a2 + 8) & 1) == 0)
  {
    v5 = *a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C5220(v5, 0);
      sub_1000C1824(v5, v6);
      swift_unknownObjectRelease();

      sub_1000C522C(v5, 0);
    }
  }
}

uint64_t sub_1000C4F10()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + qword_1006B05A0);
  aBlock[4] = sub_1000C51CC;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624E70;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100003F24(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_1000C51CC()
{
  v1 = qword_1006B05B0;
  swift_beginAccess();
  *(v0 + v1) = &_swiftEmptyDictionarySingleton;
}

id sub_1000C5220(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000C522C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1000C5238()
{
  result = qword_1006B0658;
  if (!qword_1006B0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0658);
  }

  return result;
}

unint64_t sub_1000C528C()
{
  result = qword_1006B0660;
  if (!qword_1006B0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0660);
  }

  return result;
}

unint64_t sub_1000C52F8()
{
  result = qword_1006B06E8;
  if (!qword_1006B06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B06E8);
  }

  return result;
}

void sub_1000C5388(void *a1, void *a2, void *a3)
{
  v5 = [a1 authorizationStatus];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  v9[4] = sub_10004FD0C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100017328;
  v9[3] = &unk_100625078;
  v7 = _Block_copy(v9);
  v8 = a3;

  [a2 getNotificationSettingsWithCompletionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_1000C5474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v59 - 8);
  __chkstk_darwin(v59);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v58 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentNotificationCenter];
  v15 = [v14 notificationSettings];

  v16 = [v15 authorizationStatus];
  if ((v16 | 2) == 3)
  {
    v53 = v13;
    v55 = v11;
    v56 = v8;
    v17 = objc_opt_self();
    v52 = a4;
    v18 = [v17 mainBundle];
    v66._object = 0x800000010057BEA0;
    v19._object = 0x800000010057BE80;
    v66._countAndFlagsBits = 0xD000000000000027;
    v19._countAndFlagsBits = 0xD000000000000015;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v66);

    v21 = [v17 mainBundle];
    v67._object = 0x800000010057BF00;
    v22._countAndFlagsBits = 0xD000000000000021;
    v22._object = 0x800000010057BED0;
    v67._countAndFlagsBits = 0xD000000000000033;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v67);

    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    v27 = v52;
    v28 = [v17 mainBundle];
    v68._object = 0x800000010057BF40;
    v29._countAndFlagsBits = 0x574F4E5F544F4ELL;
    v68._countAndFlagsBits = 0xD000000000000019;
    v29._object = 0xE700000000000000;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v68);

    sub_100062900(a3);
    v31 = String._bridgeToObjectiveC()();

    v54 = v10;
    if (a3)
    {
      v64 = a3;
      v65 = v27;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_100017328;
      v63 = &unk_100624FD8;
      v32 = _Block_copy(&aBlock);
    }

    else
    {
      v32 = 0;
    }

    v13 = v53;
    v37 = objc_opt_self();
    v38 = [v37 actionWithTitle:v31 style:1 handler:v32];
    _Block_release(v32);

    [v26 addAction:v38];
    v39 = [v17 mainBundle];
    v69._object = 0x800000010057BF60;
    v40._countAndFlagsBits = 0x45535F4F545F4F47;
    v40._object = 0xEE0053474E495454;
    v69._countAndFlagsBits = 0xD000000000000020;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v69);

    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    *(v42 + 24) = v27;
    sub_100062900(a3);
    v43 = String._bridgeToObjectiveC()();

    v64 = sub_1000C5F40;
    v65 = v42;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100017328;
    v63 = &unk_100624F60;
    v44 = _Block_copy(&aBlock);

    v45 = [v37 actionWithTitle:v43 style:0 handler:v44];
    _Block_release(v44);

    [v26 addAction:v45];
    sub_10000905C(0, &qword_1006AEDC0);
    v33 = static OS_dispatch_queue.main.getter();
    v46 = swift_allocObject();
    v47 = v57;
    *(v46 + 16) = v57;
    *(v46 + 24) = v26;
    v64 = sub_1000C5F48;
    v65 = v46;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100004AE4;
    v63 = &unk_100624FB0;
    v48 = _Block_copy(&aBlock);
    v49 = v47;
    v50 = v26;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v10 = v54;
    v36 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    v11 = v55;
    v8 = v56;
  }

  else
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v33 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = a2;
    v64 = sub_1000C5F0C;
    v65 = v34;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100004AE4;
    v63 = &unk_100624F10;
    v35 = _Block_copy(&aBlock);
    sub_100062900(a1);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v36 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
  }

  (*(v8 + 8))(v10, v36);
  return (*(v58 + 8))(v13, v11);
}

id sub_1000C5D08(uint64_t a1, void (*a2)(void))
{
  v3 = sub_10007EBC0(&unk_1006B0120);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    sub_1000C5F60(v8, v6);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v14 = 0;
    if ((*(v12 + 48))(v6, 1, v11) != 1)
    {
      URL._bridgeToObjectiveC()(v13);
      v14 = v15;
      (*(v12 + 8))(v6, v11);
    }

    sub_1000070D4(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 openSensitiveURL:v14 withOptions:isa];

    if (a2)
    {
      a2(0);
    }

    return sub_1000BD1D4(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C5F0C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_1000C5F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C6170(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMRenameItemViewController();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v4 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_devicesSubscription;
  if (*&v2[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_devicesSubscription])
  {
    v5 = *(*(*&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 24) + 16);

    os_unfair_lock_lock((v5 + 24));
    sub_10008FB6C((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));
  }

  sub_1000C6E2C();
  *&v2[v4] = 0;
}

void sub_1000C62A8()
{
  v1 = v0;
  v55 = type metadata accessor for FMIPItemRole();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003436C8();
  v59 = &type metadata for SolariumFeatureFlag;
  v56 = sub_10000BD04();
  v60 = v56;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v58);
  if (v3)
  {
    v4 = 0x80000001005799E0;
    v5 = 0x8000000100579A00;
    v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"saveRole"];
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v52 = 0x8000000100579A00;
    v61._object = 0x8000000100579A00;
    v8._countAndFlagsBits = 0xD000000000000017;
    v8._object = 0x800000010057C7D0;
    v61._countAndFlagsBits = 0xD000000000000018;
    v9.value._countAndFlagsBits = 0xD000000000000013;
    v53 = 0x80000001005799E0;
    v9.value._object = 0x80000001005799E0;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v61);

    v59 = type metadata accessor for FMRenameItemViewController();
    v58[0] = v0;
    v11 = v0;
    v12 = String._bridgeToObjectiveC()();

    v13 = v59;
    if (v59)
    {
      v14 = sub_1000244BC(v58, v59);
      Description = v13[-1].Description;
      __chkstk_darwin(v14);
      v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      Description[2](v17);
      v18 = _bridgeAnythingToObjectiveC<A>(_:)();
      (Description[1])(v17, v13);
      sub_100006060(v58);
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v12 style:2 target:v18 action:"saveRole"];

    swift_unknownObjectRelease();
    v20 = objc_allocWithZone(UIActivityIndicatorView);
    v6 = v19;
    v21 = [v20 initWithFrame:{0.0, 0.0, 20.0, 20.0}];
    v22 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v21];
    v23 = [objc_opt_self() grayColor];
    [v21 setColor:v23];

    v5 = v52;
    v4 = v53;
  }

  v24 = v6;
  [v24 setEnabled:0];
  v25 = [v0 navigationItem];
  sub_10007EBC0(&qword_1006AFC30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1005528C0;
  *(v26 + 32) = v24;
  sub_10000905C(0, &qword_1006B0160);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 setRightBarButtonItems:isa animated:0];

  v28 = [objc_opt_self() mainBundle];
  v29._countAndFlagsBits = 0xD000000000000011;
  v62._object = v5;
  v29._object = 0x800000010057C7F0;
  v62._countAndFlagsBits = 0xD000000000000018;
  v30.value._countAndFlagsBits = 0xD000000000000013;
  v30.value._object = v4;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v62);

  v32 = String._bridgeToObjectiveC()();

  [v0 setTitle:v32];

  v33 = *&v0[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_rolePicker];
  v34 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v33 setBackgroundColor:v34];

  v35 = [v33 layer];
  [v35 setCornerCurve:kCACornerCurveContinuous];

  v36 = [v33 layer];
  v37 = [v0 view];
  if (v37)
  {

    v59 = &type metadata for SolariumFeatureFlag;
    v60 = v56;
    v38 = isFeatureEnabled(_:)();
    sub_100006060(v58);
    v39 = _UISheetCornerRadius;
    if (v38)
    {
      v39 = 26.0;
    }

    [v36 setCornerRadius:v39];

    v40 = [v33 layer];
    [v40 setMasksToBounds:1];

    [v33 reloadAllComponents];
    v41 = *&v1[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView];
    v42 = v54;
    FMIPItem.role.getter();
    v43 = FMIPItemRole.emoji.getter();
    v45 = v44;
    (*(v57 + 8))(v42, v55);
    sub_1002EB140(v43, v45);
    v46 = FMIPItem.name.getter();
    sub_1002EB03C(v46, v47);
    *(v41 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_delegate + 8) = &off_1006250C8;
    swift_unknownObjectWeakAssign();
    [*&v1[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView] setDelegate:v1];
    v48 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView;
    [*&v1[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView] setSpacing:30.0];
    [*&v1[v48] addArrangedSubview:v33];
    v49 = *&v1[v48];
    [v49 addArrangedSubview:v41];

    v50 = *&v1[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem];
    *&v1[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem] = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C6A4C()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"dismissKeyboard"];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 addGestureRecognizer:v1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000C6AE8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v17 = sub_1000C959C;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_1006252A8;
  v4 = _Block_copy(&v13);
  v5 = v0;

  v6 = [v2 addObserverForName:UIKeyboardWillShowNotification object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *&v5[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillShowObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v17 = sub_1000C95C0;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_1006252F8;
  v9 = _Block_copy(&v13);
  v10 = v5;

  v11 = [v7 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  *&v10[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillHideObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_1000C6D30(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardHeightScrollViewPadding;
  if ((*(a2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardHeightScrollViewPadding + 8) & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
    v5 = *(a2 + OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView);
    [v5 contentSize];
    [v5 setContentSize:?];

    [*(a2 + v4) contentSize];
    v7 = v6;
    [*(a2 + v4) bounds];
    if (v7 - v8 < 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v7 - v8;
    }

    [*(a2 + v4) contentOffset];
    if (v9 < v10)
    {
      [*(a2 + v4) setContentOffset:1 animated:{0.0, v9}];
    }
  }

  *v2 = 0;
  *(v2 + 8) = 1;
}

void sub_1000C6E2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillHideObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillShowObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

void sub_1000C6F3C()
{
  v1 = v0;
  v2 = [v0 view];
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 delegate];

    if (v6)
    {
      type metadata accessor for FMAppDelegate();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_window);
        v9 = v8;
        swift_unknownObjectRelease();
        if (v8)
        {
          v10 = [v9 rootViewController];
          v11 = [v10 view];

          v2 = v11;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v12 = *&v0[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView];
  [v12 bounds];
  [v12 convertRect:v2 toView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = Notification.userInfo.getter();
  if (!v21)
  {

    v46 = 0u;
    v47 = 0u;
    goto LABEL_24;
  }

  v22 = v21;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v23 = sub_10004CC50(v45), (v24 & 1) == 0))
  {

    sub_10004CDB8(v45);
    v46 = 0u;
    v47 = 0u;

LABEL_24:
    sub_100012DF0(&v46, &unk_1006B8740);
    return;
  }

  sub_100006004(*(v22 + 56) + 32 * v23, &v46);
  sub_10004CDB8(v45);

  if (!*(&v47 + 1))
  {

    goto LABEL_24;
  }

  type metadata accessor for CGRect(0);
  if (!swift_dynamicCast())
  {
LABEL_26:

    return;
  }

  if (v2)
  {
    v25 = *v45;
    v26 = *&v45[1];
    v27 = *&v45[2];
    v28 = *&v45[3];
    v48.origin.x = v14;
    v48.origin.y = v16;
    v48.size.width = v18;
    v48.size.height = v20;
    [v2 convertPoint:v2 toCoordinateSpace:{0.0, CGRectGetMaxY(v48)}];
    v30 = v29;
    [v2 frame];
    v32 = v31;
    v49.origin.x = v25;
    v49.origin.y = v26;
    v49.size.width = v27;
    v49.size.height = v28;
    v33 = v30 - (v32 - CGRectGetHeight(v49));
    if (v33 < 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v33;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100005B14(v35, qword_1006D4630);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v36, v37, "FMRenameItemViewController: keyboardWillShow %f", v38, 0xCu);
    }

    if (v34 > 0.0)
    {
      v39 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
      [*&v1[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView] contentOffset];
      v41 = v34 + v40;
      v42 = *&v1[v39];
      [v42 contentSize];
      [v42 setContentSize:?];

      [*&v1[v39] setContentOffset:1 animated:{0.0, v41}];
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v27;
      v50.size.height = v28;
      Height = CGRectGetHeight(v50);

      v44 = &v1[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardHeightScrollViewPadding];
      *v44 = Height;
      v44[8] = 0;
      return;
    }

    goto LABEL_26;
  }
}

id sub_1000C73E4()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMRenameItemViewController: dismissKeyboard", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView);
  [*(v6 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView) resignFirstResponder];
  v7 = *(v6 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput);

  return [v7 resignFirstResponder];
}

uint64_t sub_1000C75F4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v35 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v8 - 8);
  v39 = &v33 - v9;
  v42 = v0;

  v10 = FMIPManager.items.getter();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v40 = v5 + 16;
    v41 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_item;
    while (v12 < *(v10 + 16))
    {
      (*(v5 + 16))(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v4);
      v13 = FMIPItem.identifier.getter();
      v15 = v14;
      if (v13 == FMIPItem.identifier.getter() && v15 == v16)
      {

LABEL_13:

        v32 = v39;
        (*(v5 + 32))(v39, v7, v4);
        (*(v5 + 56))(v32, 0, 1, v4);
        return sub_100012DF0(v32, &qword_1006B07D0);
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_13;
      }

      ++v12;
      (*(v5 + 8))(v7, v4);
      if (v11 == v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_8:

  v18 = v39;
  (*(v5 + 56))(v39, 1, 1, v4);
  sub_100012DF0(v18, &qword_1006B07D0);
  if (qword_1006AEBE0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMRenameItemViewController: dimissing because item doesn't exist anymore", v22, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  v25 = v42;
  *(v24 + 16) = v42;
  aBlock[4] = sub_1000C9584;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100625258;
  v26 = _Block_copy(aBlock);
  v27 = v25;

  v28 = v33;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v29 = v35;
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v29, v30);
  return (*(v34 + 8))(v28, v36);
}

void sub_1000C7BFC()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v31[1] = sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMRenameItemViewController: Done button pressed", v9, 2u);
  }

  v10 = *&v1[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView];
  v11 = [*(v10 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView) text];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = *(v10 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName);
    v15 = *(v10 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName + 8);
  }

  v31[2] = v13;
  v31[3] = v15;
  static CharacterSet.whitespaces.getter();
  sub_100035F3C();
  v16 = StringProtocol.trimmingCharacters(in:)();
  v18 = v17;
  (*(v3 + 8))(v5, v2);

  v19 = [*(v10 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel) text];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = *(v10 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji);
    v23 = *(v10 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji + 8);
  }

  v24 = (v18 >> 56) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v24 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "FMRenameItemViewController: Cannot save empty name";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

    goto LABEL_23;
  }

  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "FMRenameItemViewController: Cannot save empty emoji";
    goto LABEL_22;
  }

  sub_100437A74(0);
  v26 = *&v1[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_dataSource];
  v27 = v1;
  sub_1001038CC(v16, v18, v21, v23, v26, v27);

LABEL_23:
}

void sub_1000C7FD0(char a1, char *a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMRenameItemViewController: Save finished successfully? %{BOOL}d", v7, 8u);
  }

  sub_1003EB538(0);
  if (a1)
  {

    [a2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v8 = [a2 navigationItem];
    v9 = [v8 leftBarButtonItem];

    if (v9)
    {
      [v9 setEnabled:1];
    }

    v10 = [a2 navigationItem];
    sub_10007EBC0(&qword_1006AFC30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1005528C0;
    v12 = *&a2[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem];
    *(v11 + 32) = v12;
    sub_10000905C(0, &qword_1006B0160);
    v13 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setRightBarButtonItems:isa animated:0];
  }
}

id sub_1000C8278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a2;
  v22[1] = a3;
  static CharacterSet.whitespaces.getter();
  sub_100035F3C();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = [*(a1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel) text];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
      goto LABEL_7;
    }
  }

  else
  {
    v19 = *(a1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji + 8);
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(a1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji) & 0xFFFFFFFFFFFFLL;
      goto LABEL_7;
    }
  }

  v20 = HIBYTE(v19) & 0xF;
LABEL_7:
  if (v20)
  {
    [*(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem) setEnabled:1];
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v14 & 0xF00000000000000) != 0)
    {
      return result;
    }
  }

  else if ((v12 & 0xFFFFFFFFFFFFLL) != 0)
  {
    return result;
  }

  return [*(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem) setEnabled:0];
}

id sub_1000C844C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(a1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView) text];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v17 = a1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName;
    v14 = *(a1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName);
    v16 = *(v17 + 8);
  }

  v24[0] = v14;
  v24[1] = v16;
  static CharacterSet.whitespaces.getter();
  sub_100035F3C();
  v18 = StringProtocol.trimmingCharacters(in:)();
  v20 = v19;
  (*(v9 + 8))(v11, v8);

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    result = [*(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem) setEnabled:1];
  }

  v23 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v23 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    return [*(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem) setEnabled:0];
  }

  return result;
}

uint64_t sub_1000C8620()
{
  sub_10001835C(*(v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler));
  v1 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_item;
  v2 = type metadata accessor for FMIPItem();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id sub_1000C870C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRenameItemViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMRenameItemViewController()
{
  result = qword_1006B07B8;
  if (!qword_1006B07B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C8888()
{
  result = type metadata accessor for FMIPItem();
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

uint64_t sub_1000C895C(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4);
}

char *sub_1000C8980(uint64_t a1, char *a2)
{
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v31 = v4;
  v32 = v5;
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_rolePicker;
  *(v2 + v9) = [objc_allocWithZone(UIPickerView) init];
  v10 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView;
  *(v2 + v10) = [objc_allocWithZone(type metadata accessor for FMCustomRoleView()) init];
  *(v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_devicesSubscription) = 0;
  v11 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem;
  *(v2 + v11) = [objc_allocWithZone(UIBarButtonItem) init];
  v12 = v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardHeightScrollViewPadding;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillShowObserver) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillHideObserver) = 0;
  v13 = *(v2 + v9);
  v14 = *(v5 + 16);
  v14(v7, a2, v4);
  v15 = type metadata accessor for FMRenameItemDataSource();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconManager;
  v18 = objc_allocWithZone(SPBeaconManager);
  v19 = v13;
  *&v16[v17] = [v18 init];
  *&v16[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles] = _swiftEmptyArrayStorage;
  *&v16[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_initialIndex] = 0;
  *&v16[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_rolePicker] = v19;
  v20 = v31;
  v14(&v16[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_item], v7, v31);
  v35.receiver = v16;
  v35.super_class = v15;
  v21 = objc_msgSendSuper2(&v35, "init");
  v22 = *(v32 + 8);
  v22(v7, v20);
  *(v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_dataSource) = v21;
  v23 = v33;
  v14((v2 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_item), v33, v20);

  v25 = sub_1003435AC(v24, 1);
  v26 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_dataSource;
  *(*&v25[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_delegate + 8) = &off_1006250E0;
  swift_unknownObjectWeakAssign();
  v27 = *&v25[v26];
  v28 = v25;
  v29 = v27;
  sub_1001023E8();

  v22(v23, v20);
  return v28;
}

void sub_1000C8CA8()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_rolePicker;
  *(v0 + v2) = [objc_allocWithZone(UIPickerView) init];
  v3 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for FMCustomRoleView()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_devicesSubscription) = 0;
  v4 = OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem;
  *(v0 + v4) = [objc_allocWithZone(UIBarButtonItem) init];
  v5 = v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardHeightScrollViewPadding;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillShowObserver) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_keyboardWillHideObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000C8DBC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000C95D8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100625208;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C9050()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000C92E4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006251B8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_1000C9308(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005B4C(a2, a3, &v21);
    _os_log_impl(&_mh_execute_header, v9, v10, "FMRenameItemViewController:renameItemDidUpdateName %s", v11, 0xCu);
    sub_100006060(v12);
  }

  v13 = [a1 roleId];
  v14 = *(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView);
  if (v13 == SPBeaconRoleIdOther)
  {
    sub_1002EB03C(0, 0xE000000000000000);
    sub_1002EB140(0, 0xE000000000000000);
    [*(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem) setEnabled:0];
    return sub_1002ECA8C();
  }

  else
  {

    sub_1002EB03C(a2, a3);
    v16 = [a1 roleEmoji];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_1002EB140(v17, v19);
    [*(v4 + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_doneButtonItem) setEnabled:1];
    [*(v14 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView) resignFirstResponder];
    v20 = *(v14 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput);

    return [v20 resignFirstResponder];
  }
}

uint64_t sub_1000C95EC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = type metadata accessor for Calendar.SearchDirection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v21 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar.MatchingPolicy();
  v18 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Calendar();
  v19 = *(v12 - 8);
  v20 = v12;
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 104))(v11, enum case for Calendar.MatchingPolicy.nextTime(_:), v8);
  (*(v5 + 104))(v7, enum case for Calendar.RepeatedTimePolicy.first(_:), v4);
  v16 = v21;
  (*(v2 + 104))(v21, enum case for Calendar.SearchDirection.forward(_:), v1);
  Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v2 + 8))(v16, v1);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v18);
  return (*(v19 + 8))(v14, v20);
}

uint64_t sub_1000C9954@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Calendar();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C95EC(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000CAE48(v10);
    return (*(v12 + 56))(v18, 1, 1, v11);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_opt_self() currentCalendar];
    static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 104))(v4, enum case for Calendar.Component.day(_:), v1);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v2 + 8))(v4, v1);
    (*(v5 + 8))(v7, v17);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t Date.locationShareRemaining.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.timeIntervalSinceNow.getter();
  v5 = v4;
  Date.init()();
  Date.timeIntervalSinceNow.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = 0;
  v9 = v5 - v7;
  if (v5 - v7 <= 0.0)
  {
    return result;
  }

  v10 = v9 / 60.0;
  if (v9 / 60.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*&v10 >> 52 > 0x7FEuLL)
  {
    goto LABEL_21;
  }

  v11 = v9 / 3600.0;
  if (COERCE_UNSIGNED_INT64(v9 / 3600.0) >> 52 > 0x7FE)
  {
    goto LABEL_21;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v9 >= 3600.0)
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0xD000000000000017;
  }

  if (v9 >= 3600.0)
  {
    v13 = "temViewController.swift";
  }

  else
  {
    v13 = "SHARE_HOURS_REMAINING";
  }

  if (v9 >= 3600.0)
  {
    v14 = v9 / 3600.0;
  }

  else
  {
    v14 = v9 / 60.0;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
  v18 = [v16 localizedStringFromNumber:v17 numberStyle:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v30 = 0xD000000000000012;
  v31 = 0x800000010057A180;
  v22._object = (v13 | 0x8000000000000000);
  v22._countAndFlagsBits = v12;
  String.append(_:)(v22);
  v23 = v30;
  v24 = v31;
  v25 = [objc_opt_self() mainBundle];
  v32._object = v24;
  v26._object = (v13 | 0x8000000000000000);
  v26._countAndFlagsBits = v12;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v32._countAndFlagsBits = v23;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v32);

  sub_10007EBC0(&unk_1006B20B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100552220;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_10008EE84();
  *(v28 + 32) = v19;
  *(v28 + 40) = v21;
  v29 = String.init(format:_:)();

  return v29;
}

uint64_t Date.locationShareRemainingFull.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.timeIntervalSinceNow.getter();
  v5 = v4;
  Date.init()();
  Date.timeIntervalSinceNow.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = 0;
  v9 = v5 - v7;
  if (v5 - v7 <= 0.0)
  {
    return result;
  }

  v10 = v9 / 60.0;
  if (v9 / 60.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*&v10 >> 52 > 0x7FEuLL)
  {
    goto LABEL_27;
  }

  v11 = v9 / 3600.0;
  if (COERCE_UNSIGNED_INT64(v9 / 3600.0) >> 52 > 0x7FE)
  {
    goto LABEL_27;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v12 = 0xD000000000000019;
  if (v11 == 1)
  {
    v13 = "SHARE_HOURS_REMAINING_FULL";
  }

  else
  {
    v12 = 0xD00000000000001ALL;
    v13 = "SHARE_MINUTES_REMAINING";
  }

  v14 = 0xD00000000000001BLL;
  if (v10 == 1)
  {
    v15 = "SHARE_MINUTES_REMAINING_FULL";
  }

  else
  {
    v14 = 0xD00000000000001CLL;
    v15 = "SHARE_HOUR_REMAINING_FULL";
  }

  if (v9 < 3600.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  if (v9 < 3600.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  if (v9 < 3600.0)
  {
    v18 = v10;
  }

  else
  {
    v18 = v11;
  }

  v19 = objc_opt_self();
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:v18];
  v21 = [v19 localizedStringFromNumber:v20 numberStyle:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v33 = 0xD000000000000012;
  v34 = 0x800000010057A180;
  v25._object = (v17 | 0x8000000000000000);
  v25._countAndFlagsBits = v16;
  String.append(_:)(v25);
  v26 = v33;
  v27 = v34;
  v28 = [objc_opt_self() mainBundle];
  v35._object = v27;
  v29._object = (v17 | 0x8000000000000000);
  v29._countAndFlagsBits = v16;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v35._countAndFlagsBits = v26;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v35);

  sub_10007EBC0(&unk_1006B20B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100552220;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_10008EE84();
  *(v31 + 32) = v22;
  *(v31 + 40) = v24;
  v32 = String.init(format:_:)();

  return v32;
}

uint64_t sub_1000CA3A0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v45 = type metadata accessor for Calendar.Component();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v3 - 8);
  v42 = &v32 - v4;
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = __chkstk_darwin(v9);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = objc_opt_self();
  v15 = [v14 currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  Calendar.startOfDay(for:)();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v35 = v14;
  v17 = [v14 currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v41;
  v19 = v45;
  v34 = *(v41 + 104);
  v34(v2, enum case for Calendar.Component.day(_:), v45);
  v20 = v42;
  v43 = v13;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v21 = *(v18 + 8);
  v36 = v2;
  v22 = v2;
  v24 = v39;
  v23 = v40;
  v21(v22, v19);
  v41 = v5;
  v37 = v16;
  v16(v8, v5);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    (*(v24 + 8))(v43, v23);
    sub_1000CAE48(v20);
    return (*(v24 + 56))(v44, 1, 1, v23);
  }

  else
  {
    v26 = *(v24 + 32);
    v33 = v21;
    v27 = v38;
    v26(v38, v20, v23);
    v28 = [v35 currentCalendar];
    static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v36;
    v30 = v45;
    v34(v36, enum case for Calendar.Component.minute(_:), v45);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v33(v29, v30);
    v37(v8, v41);
    v31 = *(v24 + 8);
    v31(v27, v23);
    return (v31)(v43, v23);
  }
}

uint64_t sub_1000CA850(uint64_t a1, unsigned int *a2)
{
  v43 = a2;
  v44 = a1;
  v3 = v2;
  v4 = type metadata accessor for Calendar();
  __chkstk_darwin(v4 - 8);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B07D8);
  __chkstk_darwin(v8 - 8);
  v40 = &v38 - v9;
  v10 = type metadata accessor for FormatStyleCapitalizationContext();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyRelativeDateFormat = type metadata accessor for FindMyRelativeDateFormatStyle.DisplayStyle();
  v14 = *(MyRelativeDateFormat - 8);
  __chkstk_darwin(MyRelativeDateFormat);
  v47 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  v41 = *(MyRelativeDateFormatStyle - 8);
  v42 = MyRelativeDateFormatStyle;
  __chkstk_darwin(MyRelativeDateFormatStyle);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v38 - v24;
  static Date.now.getter();
  v26 = v3;
  v27 = static Date.< infix(_:_:)();
  v28 = (v14 + 104);
  v29 = (v38 + 16);
  if (v27)
  {
    v30 = v23;
    v31 = v26;
  }

  else
  {
    v30 = v23;
    v31 = v25;
  }

  (*(v20 + 16))(v30, v31, v19);
  (*v28)(v47, *v43, MyRelativeDateFormat);
  (*v29)(v12, v44, v39);
  if (qword_1006AEA70 != -1)
  {
    swift_once();
  }

  MyRelative = type metadata accessor for FindMyRelativeDate.RecencyKey();
  v33 = sub_100005B14(MyRelative, qword_1006D3CC0);
  v34 = *(MyRelative - 8);
  v35 = v40;
  (*(v34 + 16))(v40, v33, MyRelative);
  (*(v34 + 56))(v35, 0, 1, MyRelative);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  FindMyRelativeDateFormatStyle.init(anchor:displayStyle:capitalizationContext:recencyKey:locale:calendar:)();
  v36 = FindMyRelativeDateFormatStyle.format(_:)();
  (*(v41 + 8))(v18, v42);
  (*(v20 + 8))(v25, v19);
  return v36;
}

uint64_t sub_1000CADA8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  MyRelative = type metadata accessor for FindMyRelativeDate.RecencyKey();
  sub_100005AB0(MyRelative, a2);
  sub_100005B14(MyRelative, a2);
  v8 = a3();
  v10 = v9;
  IsNew = static PublishedLocation.Constants.generalTimestampIsNewThreshold.getter();
  v13 = v12;
  IsOld = static PublishedLocation.Constants.generalTimestampIsOldThreshold.getter();
  return a4(v8, v10, IsNew, v13, IsOld, v15);
}

uint64_t sub_1000CAE48(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B0000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CAEB0(double a1)
{
  v2 = 1.0;
  if (a1 <= 1.0)
  {
    v2 = a1;
  }

  if (a1 < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 1.0 / (v5 + -1.0);
  v7 = v3 / v6;
  if (COERCE__INT64(fabs(v3 / v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v7;
  v9 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 > v8)
      {
        if (v9 < v10)
        {
          v11 = *(v4 + 32 + 8 * v8);
          v12 = *(v4 + 32 + 8 * v9);
          v13 = v11;
          v14 = v12;
          goto LABEL_17;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_31:
  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v15 = v14;
  v16 = [v13 CGColor];
  v17 = CGColorRef.components.getter();

  if (!v17)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = [v15 CGColor];
  v19 = CGColorRef.components.getter();

  if (v19)
  {
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = *(v19 + 16);
      if (v21)
      {
        if (v20 != 1)
        {
          if (v21 != 1)
          {
            if (v20 >= 3)
            {
              v22 = *(v17 + 32);
              v23 = *(v17 + 40);
              v24 = *(v19 + 32);
              v25 = *(v19 + 40);
              v26 = *(v17 + 48);

              if (*(v19 + 16) >= 3uLL)
              {
                v27 = (v3 - v6) / v6;
                v28 = (1.0 - v27) * v22 + v27 * v24;
                v29 = *(v19 + 48);

                [objc_allocWithZone(UIColor) initWithRed:v28 green:(1.0 - v27) * v23 + v27 * v25 blue:(1.0 - v27) * v26 + v27 * v29 alpha:1.0];

                return;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1000CB148()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000CB1A4(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_locationLabel;
  *&v2[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_confidenceLabel;
  *&v2[v5] = [objc_allocWithZone(UIButton) init];
  v6 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_uiidLabel;
  *&v2[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_infoLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_separator;
  *&v2[v8] = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_mainStack;
  *&v2[v9] = [objc_allocWithZone(UIStackView) init];
  sub_10007EBC0(&qword_1006AFC30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552EF0;
  *(v10 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.76 green:0.07 blue:0.07 alpha:1.0];
  *(v10 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.855 green:0.76 blue:0.02 alpha:1.0];
  v11 = objc_opt_self();
  *(v10 + 48) = [v11 systemDarkGreenColor];
  type metadata accessor for ColorRange();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1uLL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_palette] = v12;
    v127.receiver = v2;
    v127.super_class = type metadata accessor for FMPISDebugLocationRow();
    v13 = objc_msgSendSuper2(&v127, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

    v123 = a1;
    [a1 confidence];
    sub_1000CAEB0(v14);
    v16 = v15;

    v17 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_confidenceLabel;
    [*&v13[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_confidenceLabel] setTitleColor:v16 forState:0];
    v18 = [*&v13[v17] layer];
    [v18 setCornerRadius:6.0];

    v19 = [*&v13[v17] layer];
    v116 = v16;
    v20 = [v16 CGColor];
    [v19 setBorderColor:v20];

    v21 = [*&v13[v17] layer];
    [v21 setBorderWidth:2.0];

    [*&v13[v17] setContentEdgeInsets:{1.0, 8.0, 1.0, 8.0}];
    v121 = v17;
    [*&v13[v17] setUserInteractionEnabled:0];
    v119 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_uiidLabel;
    v22 = *&v13[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_uiidLabel];
    v23 = [v11 grayColor];
    [v22 setTextColor:v23];

    v118 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_infoLabel;
    v24 = *&v13[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_infoLabel];
    v25 = [v11 grayColor];
    [v24 setTextColor:v25];

    v26 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_mainStack;
    v27 = *&v13[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_mainStack];
    v28 = v13;
    [v28 addSubview:v27];
    v29 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_separator;
    v30 = *&v28[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_separator];
    v31 = [v11 tertiaryLabelColor];
    [v30 setBackgroundColor:v31];

    [v28 addSubview:*&v28[v29]];
    [*&v28[v29] setHidden:(a2 & 1) == 0];
    [*&v28[v29] setTranslatesAutoresizingMaskIntoConstraints:0];
    v120 = v26;
    [*&v13[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1005521F0;
    v33 = [*&v28[v29] leadingAnchor];
    v34 = [v28 leadingAnchor];

    v35 = [v33 constraintEqualToAnchor:v34];
    *(v32 + 32) = v35;
    v36 = [*&v28[v29] trailingAnchor];
    v37 = [v28 trailingAnchor];

    v125 = &type metadata for SolariumFeatureFlag;
    v126 = sub_10000BD04();
    LOBYTE(v33) = isFeatureEnabled(_:)();
    sub_100006060(v124);
    v38 = 16.0;
    if ((v33 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v38 = *&qword_1006D4798;
    }

    v115 = objc_opt_self();
    v39 = [v36 constraintEqualToAnchor:v37 constant:v38];

    *(v32 + 40) = v39;
    v40 = [*&v28[v29] bottomAnchor];
    v41 = [v28 bottomAnchor];

    v42 = [v40 constraintEqualToAnchor:v41 constant:0.0];
    *(v32 + 48) = v42;
    v43 = [*&v28[v29] heightAnchor];
    v44 = [objc_opt_self() mainScreen];
    [v44 scale];
    v46 = v45;

    v47 = [v43 constraintEqualToConstant:1.0 / v46];
    *(v32 + 56) = v47;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v115 activateConstraints:isa];

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1005521F0;
    v50 = [*&v13[v120] leadingAnchor];
    v51 = [v28 leadingAnchor];

    v52 = [v50 constraintEqualToAnchor:v51];
    *(v49 + 32) = v52;
    v53 = [*&v13[v120] trailingAnchor];
    v54 = [v28 trailingAnchor];

    v55 = [v53 constraintEqualToAnchor:v54];
    *(v49 + 40) = v55;
    v56 = [v28 bottomAnchor];

    v57 = [*&v13[v120] bottomAnchor];
    v58 = [v56 constraintEqualToSystemSpacingBelowAnchor:v57 multiplier:1.0];

    *(v49 + 48) = v58;
    v59 = [*&v13[v120] topAnchor];
    v60 = [v28 topAnchor];

    v61 = [v59 constraintEqualToSystemSpacingBelowAnchor:v60 multiplier:1.0];
    *(v49 + 56) = v61;
    v62 = Array._bridgeToObjectiveC()().super.isa;

    [v115 activateConstraints:v62];

    v117 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_locationLabel;
    v63 = *&v28[OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_locationLabel];
    v64 = [v123 preferredName];
    [v63 setText:v64];

    v65 = *&v13[v119];
    strcpy(v124, "Place type: ");
    HIBYTE(v124[6]) = 0;
    v124[7] = -5120;
    v66 = v65;
    v67 = [v123 placeType];
    if (v67 == 2)
    {
      v72 = 0xE700000000000000;
      v71 = 0x73736572646461;
    }

    else
    {
      v68 = 0xEE00747365726574;
      v69 = 0x6E49664F61657261;
      if (v67)
      {
        v69 = 0xD000000000000012;
        v68 = 0x800000010057C9C0;
      }

      v70 = v67 == 1;
      if (v67 == 1)
      {
        v71 = 0x49664F746E696F70;
      }

      else
      {
        v71 = v69;
      }

      if (v70)
      {
        v72 = 0xEF7473657265746ELL;
      }

      else
      {
        v72 = v68;
      }
    }

    v73 = v72;
    String.append(_:)(*&v71);

    v74 = String._bridgeToObjectiveC()();

    [v66 setText:v74];

    v75 = *&v13[v118];
    v76 = [v123 placemark];
    if (v76)
    {
      v77 = v76;
      v78 = [v76 name];

      if (v78)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    String.init(format:_:)();

    v79 = String._bridgeToObjectiveC()();

    [v75 setText:v79];

    v80 = *&v13[v121];
    sub_10007EBC0(&unk_1006B20B0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100552220;
    v82 = v80;
    [v123 confidence];
    *(v81 + 56) = &type metadata for Double;
    *(v81 + 64) = &protocol witness table for Double;
    *(v81 + 32) = v83;
    String.init(format:_:)();
    v84 = String._bridgeToObjectiveC()();

    [v82 setTitle:v84 forState:0];

    v85 = *&v28[v117];
    v86 = objc_opt_self();
    v87 = v85;
    v88 = [v86 _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightBold];
    [v87 setFont:v88];

    v89 = [*&v13[v121] titleLabel];
    if (v89)
    {
      v90 = v89;
      v91 = [v86 _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightBold];
      [v90 setFont:v91];
    }

    v92 = *&v13[v119];
    v93 = [v86 _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightRegular];
    [v92 setFont:v93];

    v94 = *&v13[v118];
    v95 = [v86 _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightRegular];
    [v94 setFont:v95];

    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_100552EF0;
    v97 = *&v28[v117];
    *(v96 + 32) = v97;
    v98 = *&v13[v118];
    *(v96 + 40) = v98;
    v99 = *&v13[v119];
    *(v96 + 48) = v99;
    v100 = objc_allocWithZone(UIStackView);
    sub_10000905C(0, &qword_1006BA410);
    v101 = v97;
    v102 = v98;
    v103 = v99;
    v104 = Array._bridgeToObjectiveC()().super.isa;

    v105 = [v100 initWithArrangedSubviews:v104];

    [v105 setAxis:1];
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_100552EF0;
    *(v106 + 32) = v105;
    v107 = objc_allocWithZone(UIView);
    v108 = v105;
    *(v106 + 40) = [v107 init];
    v109 = *&v13[v121];
    *(v106 + 48) = v109;
    v110 = objc_allocWithZone(UIStackView);
    v111 = v109;
    v112 = Array._bridgeToObjectiveC()().super.isa;

    v113 = [v110 initWithArrangedSubviews:v112];

    [v113 setAlignment:3];
    [v113 setAxis:0];
    [v113 setSpacing:8.0];
    [*&v13[v120] setAxis:1];
    [*&v13[v120] insertArrangedSubview:v113 atIndex:0];

    return v28;
  }

  return result;
}

id sub_1000CC1E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPISDebugLocationRow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000CC2D8()
{
  v1 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_locationLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_confidenceLabel;
  *(v0 + v2) = [objc_allocWithZone(UIButton) init];
  v3 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_uiidLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_infoLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_separator;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_mainStack;
  *(v0 + v6) = [objc_allocWithZone(UIStackView) init];
  sub_10007EBC0(&qword_1006AFC30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100552EF0;
  *(v7 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.76 green:0.07 blue:0.07 alpha:1.0];
  *(v7 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.855 green:0.76 blue:0.02 alpha:1.0];
  *(v7 + 48) = [objc_opt_self() systemDarkGreenColor];
  type metadata accessor for ColorRange();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
  {
    *(v0 + OBJC_IVAR____TtC6FindMy21FMPISDebugLocationRow_palette) = v8;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000CC510(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityIndicator;
  *&v2[v6] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v7 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityBarButton;
  *&v2[v7] = [objc_allocWithZone(UIBarButtonItem) init];
  v2[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_rightBarButtonItems] = _swiftEmptyArrayStorage;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  v8 = objc_msgSendSuper2(&v15, "initWithRootViewController:", a1);
  [v8 setModalPresentationStyle:a2];
  v9 = [v8 presentationController];
  if (v9)
  {
    v10 = v9;
    [v9 setDelegate:v8];
  }

  v11 = [v8 interactivePopGestureRecognizer];
  if (v11)
  {
    v12 = v11;
    [v11 setDelegate:v8];
  }

  v13 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v13];

  sub_1000CCA18();
  return v8;
}

id sub_1000CC6B4(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityIndicator;
  *&v1[v4] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v5 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityBarButton;
  *&v1[v5] = [objc_allocWithZone(UIBarButtonItem) init];
  v1[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_rightBarButtonItems] = _swiftEmptyArrayStorage;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  v6 = objc_msgSendSuper2(&v13, "initWithRootViewController:", a1);
  v7 = [v6 presentationController];
  if (v7)
  {
    v8 = v7;
    [v7 setDelegate:v6];
  }

  v9 = [v6 interactivePopGestureRecognizer];
  if (v9)
  {
    v10 = v9;
    [v9 setDelegate:v6];
  }

  v11 = String._bridgeToObjectiveC()();
  [v6 setAccessibilityIdentifier:v11];

  sub_1000CCA18();
  return v6;
}

id sub_1000CC860(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityIndicator;
  *&v1[v4] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v5 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityBarButton;
  *&v1[v5] = [objc_allocWithZone(UIBarButtonItem) init];
  v1[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_rightBarButtonItems] = _swiftEmptyArrayStorage;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  v6 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [v8 presentationController];
    if (v9)
    {
      v10 = v9;
      [v9 setDelegate:v8];
    }

    v11 = [v8 interactivePopGestureRecognizer];
    if (v11)
    {
      v12 = v11;
      [v11 setDelegate:v8];
    }

    v13 = String._bridgeToObjectiveC()();
    [v8 setAccessibilityIdentifier:v13];

    sub_1000CCA18();
  }

  return v7;
}

void sub_1000CCA18()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay];
  [v1 setHidden:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityBarButton] setCustomView:*&v0[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityIndicator]];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 addSubview:v1];

  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v1 topAnchor];
  v6 = [v0 navigationBar];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [v1 bottomAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 bottomAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v4 + 40) = v13;
  v14 = [v1 trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v4 + 48) = v18;
  v19 = [v1 leadingAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v21 leadingAnchor];

  v24 = [v19 constraintEqualToAnchor:v23];
  *(v4 + 56) = v24;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];
}

void sub_1000CCE4C()
{
  v1 = [v0 topViewController];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 backgroundColor];

  if (!v4)
  {
LABEL_4:
    v4 = [objc_opt_self() systemBackgroundColor];
  }

  v5 = *&v0[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay];
  v6 = [v4 colorWithAlphaComponent:0.6];
  [v5 setBackgroundColor:v6];
}

void sub_1000CCF64(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    v28 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v28, v13, "FMAsyncOperationNavigationController: Unbalanced calls to startActivity()", v14, 2u);
    }

    v15 = v28;
  }

  else
  {
    v28 = v9;
    v16 = [v1 topViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationItem];

      if (v18)
      {
        v27 = v4;
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        v20[2] = v19;
        v20[3] = a1;
        v20[4] = v18;
        v21 = objc_opt_self();
        v22 = a1;
        v23 = v18;

        if ([v21 isMainThread])
        {
          sub_1000CD42C(v19, a1, v23);
        }

        else
        {

          sub_10000905C(0, &qword_1006AEDC0);
          v24 = static OS_dispatch_queue.main.getter();
          v25 = swift_allocObject();
          *(v25 + 16) = sub_1000CE0D8;
          *(v25 + 24) = v20;
          aBlock[4] = sub_1000CE0E8;
          aBlock[5] = v25;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004AE4;
          aBlock[3] = &unk_100625410;
          v26 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100037918();
          sub_10007EBC0(&unk_1006B0640);
          sub_100037970();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v26);

          (*(v27 + 8))(v6, v3);
          (*(v8 + 8))(v11, v28);
        }
      }
    }
  }
}

void sub_1000CD42C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 endEditing:1];

      if (a2)
      {
        [a2 showsBusyIndicator];
      }

      else
      {
        v9 = [a3 rightBarButtonItems];
        if (v9)
        {
          v10 = v9;
          sub_10000905C(0, &qword_1006B0160);
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v11 = _swiftEmptyArrayStorage;
        }

        *&v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_rightBarButtonItems] = v11;

        sub_10007EBC0(&qword_1006AFC30);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1005528C0;
        v13 = *&v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityBarButton];
        *(v12 + 32) = v13;
        sub_10000905C(0, &qword_1006B0160);
        v14 = v13;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [a3 setRightBarButtonItems:isa];

        [*&v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityIndicator] startAnimating];
      }

      v16 = [a3 leftBarButtonItems];
      if (v16)
      {
        v17 = v16;
        sub_10000905C(0, &qword_1006B0160);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v18 >> 62)
        {
          goto LABEL_22;
        }

        for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v20 = 0;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v21 = *(v18 + 8 * v20 + 32);
            }

            v22 = v21;
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            [v21 setEnabled:0];

            ++v20;
            if (v23 == i)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          ;
        }

LABEL_23:
      }

      [a3 setHidesBackButton:1];
      sub_1000CCE4C();
      v24 = OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay;
      [*&v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay] setHidden:0];
      v25 = [v6 view];

      if (v25)
      {
        [v25 bringSubviewToFront:*&v6[v24]];

        v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress] = 1;
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

void sub_1000CD77C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress) == 1)
  {
    v28 = v9;
    v12 = [v1 topViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 navigationItem];

      if (v14)
      {
        v27 = v4;
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = a1;
        v16[4] = v14;
        v17 = objc_opt_self();
        v18 = a1;
        v19 = v14;

        if ([v17 isMainThread])
        {
          sub_1000CDC48(v15, a1, v19);
        }

        else
        {

          sub_10000905C(0, &qword_1006AEDC0);
          v24 = static OS_dispatch_queue.main.getter();
          v25 = swift_allocObject();
          *(v25 + 16) = sub_1000CE084;
          *(v25 + 24) = v16;
          aBlock[4] = sub_100009624;
          aBlock[5] = v25;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004AE4;
          aBlock[3] = &unk_100625398;
          v26 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100037918();
          sub_10007EBC0(&unk_1006B0640);
          sub_100037970();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v26);

          (*(v27 + 8))(v6, v3);
          (*(v8 + 8))(v11, v28);
        }
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v28 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v28, v21, "FMAsyncOperationNavigationController: Unbalanced calls to stopActivity()", v22, 2u);
    }

    v23 = v28;
  }
}

void sub_1000CDC48(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      [a2 hidesBusyIndicator];
    }

    else
    {
      sub_10000905C(0, &qword_1006B0160);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [a3 setRightBarButtonItems:isa];

      [*&v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_activityIndicator] stopAnimating];
    }

    v8 = [a3 leftBarButtonItems];
    if (v8)
    {
      v9 = v8;
      sub_10000905C(0, &qword_1006B0160);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v13 setEnabled:1];

          ++v12;
          if (v15 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
    }

    [a3 setHidesBackButton:0];
    [*&v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_inactiveOverlay] setHidden:1];
    v6[OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress] = 0;
  }
}

id sub_1000CDED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CE090()
{

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int SolariumFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000CE15C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000CE1A8()
{
  if (qword_1006AEAF0 != -1)
  {
    swift_once();
  }

  v3 = *(qword_1006D4038 + 16);
  v4 = *(qword_1006D4038 + 24);
  swift_bridgeObjectRetain_n();

  v0._countAndFlagsBits = 0x7365686361432FLL;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);

  v1._object = 0x800000010057CC50;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v1);

  qword_1006B0A08 = v3;
  unk_1006B0A10 = v4;
  return result;
}

id sub_1000CE29C(uint64_t a1)
{
  v2 = v1;
  v88 = type metadata accessor for FMAccessoryProductImageRequest();
  v85 = *(v88 - 8);
  v4 = *(v85 + 64);
  v5 = __chkstk_darwin(v88);
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v84 = &v81 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v81 - v9;
  v11 = __chkstk_darwin(v8);
  v86 = &v81 - v12;
  __chkstk_darwin(v11);
  v14 = &v81 - v13;
  sub_1000D0420(a1, &v81 - v13);
  v15 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v18 = swift_slowAlloc();
    v82 = a1;
    v83 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v93 = v20;
    *v19 = 136315138;
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v21._countAndFlagsBits = 0xD000000000000015;
    v21._object = 0x800000010057CE80;
    String.append(_:)(v21);
    _print_unlocked<A, B>(_:_:)();
    v22 = sub_100005B4C(v95, v96, &v93);

    *(v19 + 4) = v22;
    v2 = v1;
    _os_log_impl(&_mh_execute_header, v17, v15, "FMDiscoveredAccessoryImageCache: %s", v19, 0xCu);
    sub_100006060(v20);

    a1 = v82;
    v10 = v83;
  }

  sub_1000D0484(v14);
  swift_beginAccess();
  v23 = *(v2 + 16);
  v24 = v86;
  v25 = v87;
  if (*(v23 + 16))
  {

    v26 = sub_1001B3C04(a1);
    if (v27)
    {
      v87 = *(*(v23 + 56) + 8 * v26);

      sub_1000D0420(a1, v24);
      v28 = static os_log_type_t.default.getter();
      v29 = v24;
      v30 = Logger.logObject.getter();
      if (os_log_type_enabled(v30, v28))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v84 = v2;
        v33 = v32;
        v92 = v32;
        v93 = 0;
        *v31 = 136315138;
        v94 = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        v34._countAndFlagsBits = 0xD00000000000001FLL;
        v34._object = 0x800000010057CE30;
        String.append(_:)(v34);
        _print_unlocked<A, B>(_:_:)();
        v35._object = 0x800000010057CE50;
        v35._countAndFlagsBits = 0xD000000000000020;
        String.append(_:)(v35);
        v36 = sub_100005B4C(v93, v94, &v92);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v28, "FMDiscoveredAccessoryImageCache: %s", v31, 0xCu);
        sub_100006060(v33);
      }

      sub_1000D0484(v29);
      v37 = swift_allocObject();
      swift_weakInit();
      sub_1000D0420(a1, v10);
      v38 = (*(v85 + 80) + 24) & ~*(v85 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      sub_1000D0CE4(v10, v39 + v38);
      Operation = type metadata accessor for FMAccessoryProductImageCacheFetchOperation();
      v41 = objc_allocWithZone(Operation);
      v42 = &v41[qword_1006B1528];
      *v42 = sub_1000D1114;
      *(v42 + 1) = v39;
      v89.receiver = v41;
      v89.super_class = Operation;
      v43 = objc_msgSendSuper2(&v89, "init");
      v44 = v87;
      [v43 addDependency:v87];

      return v43;
    }
  }

  v45 = sub_1000CF318(a1);
  if (!v45)
  {
    sub_1000D0420(a1, v25);
    v60 = static os_log_type_t.default.getter();
    v61 = Logger.logObject.getter();
    if (os_log_type_enabled(v61, v60))
    {
      v62 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v92 = v86;
      v93 = 0;
      *v62 = 136315138;
      v94 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v63._countAndFlagsBits = 0xD000000000000024;
      v63._object = 0x800000010057CD90;
      String.append(_:)(v63);
      _print_unlocked<A, B>(_:_:)();
      v64._countAndFlagsBits = 0xD000000000000017;
      v64._object = 0x800000010057CDC0;
      String.append(_:)(v64);
      v65 = sub_100005B4C(v93, v94, &v92);

      *(v62 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v61, v60, "FMDiscoveredAccessoryImageCache: %s", v62, 0xCu);
      sub_100006060(v86);
    }

    sub_1000D0484(v25);
    sub_1000D0420(a1, v10);
    v66 = objc_allocWithZone(type metadata accessor for FMAccessoryProductImageDownloadOperation());
    v67 = sub_100275748(v10);
    v68 = swift_allocObject();
    swift_weakInit();
    sub_1000D0420(a1, v10);
    v69 = (*(v85 + 80) + 24) & ~*(v85 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v68;
    sub_1000D0CE4(v10, v70 + v69);
    v71 = &v67[qword_1006B1E58];
    v72 = *&v67[qword_1006B1E58];
    *v71 = sub_1000D0D48;
    v71[1] = v70;
    v73 = v67;
    sub_10001835C(v72);

    swift_beginAccess();
    v74 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_1001BB700(v74, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v92;
    swift_endAccess();
    [*(v2 + 40) addOperation:v74];
    v76 = swift_allocObject();
    swift_weakInit();
    sub_1000D0420(a1, v10);
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    sub_1000D0CE4(v10, v77 + v69);
    v78 = type metadata accessor for FMAccessoryProductImageCacheFetchOperation();
    v79 = objc_allocWithZone(v78);
    v80 = &v79[qword_1006B1528];
    *v80 = sub_1000D0DBC;
    *(v80 + 1) = v77;
    v91.receiver = v79;
    v91.super_class = v78;
    v43 = objc_msgSendSuper2(&v91, "init");
    [v43 addDependency:v74];

    return v43;
  }

  v46 = v45;
  v47 = v84;
  sub_1000D0420(a1, v84);
  v48 = static os_log_type_t.default.getter();
  v49 = Logger.logObject.getter();
  if (os_log_type_enabled(v49, v48))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v92 = v51;
    v93 = 0;
    *v50 = 136315138;
    v94 = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v52._object = 0x800000010057CDE0;
    v52._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v52);
    _print_unlocked<A, B>(_:_:)();
    v53._countAndFlagsBits = 0xD00000000000001DLL;
    v53._object = 0x800000010057CE10;
    String.append(_:)(v53);
    v54 = sub_100005B4C(v93, v94, &v92);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v49, v48, "FMDiscoveredAccessoryImageCache: %s", v50, 0xCu);
    sub_100006060(v51);
  }

  sub_1000D0484(v47);
  v55 = swift_allocObject();
  *(v55 + 16) = v46;
  v56 = type metadata accessor for FMAccessoryProductImageCacheFetchOperation();
  v57 = objc_allocWithZone(v56);
  v58 = &v57[qword_1006B1528];
  *v58 = sub_1000D0DC0;
  v58[1] = v55;
  v90.receiver = v57;
  v90.super_class = v56;
  return objc_msgSendSuper2(&v90, "init");
}

uint64_t sub_1000CECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CED80(v4, v5, v6, a3);
  }

  return result;
}

uint64_t sub_1000CED80(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v48 = a3;
  v7 = type metadata accessor for FMAccessoryProductImageRequest();
  v8 = __chkstk_darwin(v7);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v43[-v12];
  __chkstk_darwin(v11);
  v15 = &v43[-v14];
  sub_1000D0420(a4, &v43[-v14]);
  v16 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v47 = sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v16))
  {
    v19 = v16;
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v13;
    v50 = v45;
    v51 = 0;
    *v20 = 136315138;
    v52 = 0xE000000000000000;
    v44 = v19;
    _StringGuts.grow(_:)(42);
    v21._object = 0x800000010057CCC0;
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v21);
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0x6573206D6F726620;
    v22._object = 0xED00002E72657672;
    String.append(_:)(v22);
    v23 = v10;
    v24 = a4;
    v25 = sub_100005B4C(v51, v52, &v50);

    *(v20 + 4) = v25;
    a4 = v24;
    v10 = v23;
    _os_log_impl(&_mh_execute_header, v18, v44, "FMDiscoveredAccessoryImageCache: %s", v20, 0xCu);
    sub_100006060(v45);
    v13 = v46;
  }

  sub_1000D0484(v15);
  if ((v48 & 1) == 0)
  {
    v26 = objc_allocWithZone(UIImage);
    sub_10005B930(a1, a2);
    sub_10005B930(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = [v26 initWithData:isa];

    v29 = sub_1000D051C(a1, a2, 0);
    if (v28)
    {
      v30 = v49;
      __chkstk_darwin(v29);
      *&v43[-32] = v30;
      *&v43[-24] = a4;
      *&v43[-16] = v28;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      sub_1000D0528(v28, a4);

      sub_1000D051C(a1, a2, 0);
      sub_1000D0420(a4, v13);
      swift_beginAccess();
      goto LABEL_13;
    }

    sub_1000D051C(a1, a2, 0);
  }

  sub_1000D0420(a4, v10);
  v31 = static os_log_type_t.default.getter();
  v32 = Logger.logObject.getter();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = v10;
    v35 = v13;
    v36 = swift_slowAlloc();
    v50 = v36;
    v51 = 0;
    *v33 = 136315138;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v37._countAndFlagsBits = 0xD000000000000028;
    v37._object = 0x800000010057CC90;
    String.append(_:)(v37);
    _print_unlocked<A, B>(_:_:)();
    v38._countAndFlagsBits = 0x6573206D6F726620;
    v38._object = 0xED00002E72657672;
    String.append(_:)(v38);
    v39 = a4;
    v40 = sub_100005B4C(v51, v52, &v50);

    *(v33 + 4) = v40;
    a4 = v39;
    _os_log_impl(&_mh_execute_header, v32, v31, "FMDiscoveredAccessoryImageCache: %s", v33, 0xCu);
    sub_100006060(v36);
    v13 = v35;

    v41 = v34;
  }

  else
  {

    v41 = v10;
  }

  sub_1000D0484(v41);
  sub_1000D0420(a4, v13);
  swift_beginAccess();
LABEL_13:
  sub_1001AED48(0, v13);
  return swift_endAccess();
}

void (*sub_1000CF318(uint64_t a1))(char *, uint64_t)
{
  v3 = type metadata accessor for FMAccessoryProductImageRequest();
  v4 = __chkstk_darwin(v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v28[-v7];
  v29 = v1;
  v30 = a1;
  sub_10007EBC0(&unk_1006B0720);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v9 = v31;
  if (v31)
  {
    sub_1000D0420(a1, v8);
    v10 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v10))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315138;
      v31 = 0;
      v32 = 0xE000000000000000;
      v33[0] = v14;
      _StringGuts.grow(_:)(45);
      v15._object = 0x800000010057CC70;
      v15._countAndFlagsBits = 0xD00000000000001ELL;
      String.append(_:)(v15);
      _print_unlocked<A, B>(_:_:)();
      v16._countAndFlagsBits = 0x656D206D6F726620;
      v16._object = 0xED00002E79726F6DLL;
      String.append(_:)(v16);
      v17 = sub_100005B4C(v31, v32, v33);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v12, v10, "FMDiscoveredAccessoryImageCache: %s", v13, 0xCu);
      sub_100006060(v14);
    }

    v18 = v8;
LABEL_13:
    sub_1000D0484(v18);
    return v9;
  }

  v9 = sub_1000CF7F8(a1, 1);
  if (v9)
  {
    sub_1000D0420(a1, v6);
    v19 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, v19))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v31 = 0;
      v32 = 0xE000000000000000;
      v33[0] = v23;
      _StringGuts.grow(_:)(43);
      v24._object = 0x800000010057CC70;
      v24._countAndFlagsBits = 0xD00000000000001ELL;
      String.append(_:)(v24);
      _print_unlocked<A, B>(_:_:)();
      v25._countAndFlagsBits = 0x6964206D6F726620;
      v25._object = 0xEB000000002E6B73;
      String.append(_:)(v25);
      v26 = sub_100005B4C(v31, v32, v33);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v19, "FMDiscoveredAccessoryImageCache: %s", v22, 0xCu);
      sub_100006060(v23);
    }

    v18 = v6;
    goto LABEL_13;
  }

  return v9;
}

uint64_t sub_1000CF75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_1001B3C04(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

void (*sub_1000CF7F8(uint64_t a1, int a2))(char *, uint64_t)
{
  v36 = a2;
  v3 = type metadata accessor for FMAccessoryProductImageRequest();
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  if (qword_1006AEA88 != -1)
  {
    swift_once();
  }

  URL.init(fileURLWithPath:)();
  URL.appendingPathComponent(_:)();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v25 = Data.init(contentsOf:options:)();
  v27 = v26;
  v35 = v13;
  v37 = v6;
  v28 = objc_allocWithZone(UIImage);
  sub_10005B930(v25, v27);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30 = [v28 initWithData:isa];

  v31 = sub_10000A858(v25, v27);
  if (v30)
  {
    if (v36)
    {
      __chkstk_darwin(v31);
      *(&v35 - 4) = v32;
      *(&v35 - 3) = a1;
      *(&v35 - 2) = v30;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      sub_10000A858(v25, v27);
      v35(v12, v37);
    }

    else
    {
      v35(v12, v37);
      sub_10000A858(v25, v27);
    }
  }

  else
  {
    sub_10000A858(v25, v27);
    v33 = v37;
    v34 = v35;
    sub_1000D0420(a1, v5);
    v14 = static os_log_type_t.error.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v14))
    {
      v17 = swift_slowAlloc();
      v37 = v33;
      v18 = v17;
      v19 = v34;
      v20 = swift_slowAlloc();
      *v18 = 136315138;
      v38 = 0;
      v39 = 0xE000000000000000;
      v40 = v20;
      _StringGuts.grow(_:)(63);
      v21._object = 0x800000010057CBF0;
      v21._countAndFlagsBits = 0xD00000000000002ELL;
      String.append(_:)(v21);
      _print_unlocked<A, B>(_:_:)();
      v22._countAndFlagsBits = 0x6320746F6E202D20;
      v22._object = 0xEF2E676E69686361;
      String.append(_:)(v22);
      v23 = sub_100005B4C(v38, v39, &v40);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v14, "FMDiscoveredAccessoryImageCache: %s", v18, 0xCu);
      sub_100006060(v20);

      sub_1000D0484(v5);
      v19(v12, v37);
    }

    else
    {

      sub_1000D0484(v5);
      v34(v12, v33);
    }

    return 0;
  }

  return v30;
}

uint64_t sub_1000CFCCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMAccessoryProductImageRequest();
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_1001BBBF0(v9, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v20;
  swift_endAccess();
  sub_1000D0420(a2, v8);
  v11 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    v21 = 0;
    *v14 = 136315138;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v16._object = 0x800000010057CC20;
    v16._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17._countAndFlagsBits = 0x6F6D656D206E6920;
    v17._object = 0xEB000000002E7972;
    String.append(_:)(v17);
    v18 = sub_100005B4C(v21, v22, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v13, v11, "FMDiscoveredAccessoryImageCache: %s", v14, 0xCu);
    sub_100006060(v15);
  }

  return sub_1000D0484(v8);
}

uint64_t sub_1000CFF50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMAccessoryProductImageRequest();
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v9 = sub_1000CF318(a2), , v9))
  {
    v10 = v9;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1000D0420(a2, v8);
      v11 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100005B14(v12, qword_1006D4630);
      v13 = Logger.logObject.getter();
      if (os_log_type_enabled(v13, v11))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 136315138;
        v29 = 0;
        v30 = 0xE000000000000000;
        v31 = v15;
        _StringGuts.grow(_:)(53);
        v16._countAndFlagsBits = 0xD00000000000001ELL;
        v16._object = 0x800000010057CF00;
        String.append(_:)(v16);
        _print_unlocked<A, B>(_:_:)();
        v17._object = 0x800000010057CF20;
        v17._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v17);
        v18 = sub_100005B4C(v29, v30, &v31);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v13, v11, "FMDiscoveredAccessoryImageCache: %s", v14, 0xCu);
        sub_100006060(v15);
      }

      sub_1000D0484(v8);
    }

    return v10;
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1000D0420(a2, v6);
      v20 = static os_log_type_t.error.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100005B14(v21, qword_1006D4630);
      v22 = Logger.logObject.getter();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 136315138;
        v29 = 0;
        v30 = 0xE000000000000000;
        v31 = v24;
        _StringGuts.grow(_:)(80);
        v25._countAndFlagsBits = 0xD000000000000020;
        v25._object = 0x800000010057CEA0;
        String.append(_:)(v25);
        _print_unlocked<A, B>(_:_:)();
        v26._countAndFlagsBits = 0xD00000000000002ELL;
        v26._object = 0x800000010057CED0;
        String.append(_:)(v26);
        v27 = sub_100005B4C(v29, v30, &v31);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v22, v20, "FMDiscoveredAccessoryImageCache: %s", v23, 0xCu);
        sub_100006060(v24);
      }

      sub_1000D0484(v6);
    }

    sub_1000D0F88();
    return swift_allocError();
  }
}

uint64_t sub_1000D03D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D0420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryProductImageRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D0484(uint64_t a1)
{
  v2 = type metadata accessor for FMAccessoryProductImageRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D051C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10000A858(a1, a2);
  }
}

uint64_t sub_1000D0528(UIImage *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryProductImageRequest();
  v5 = __chkstk_darwin(v4);
  v6 = __chkstk_darwin(v5);
  v8 = &v45 - v7;
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  if (qword_1006AEA88 != -1)
  {
    swift_once();
  }

  URL.init(fileURLWithPath:)();
  URL.appendingPathComponent(_:)();
  v48 = *(v12 + 8);
  v48(v15, v11);
  v18 = UIImagePNGRepresentation(a1);
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v46 = v20;
    Data.write(to:options:)();
    sub_1000D0420(a2, v10);
    v32 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v34 = Logger.logObject.getter();
    if (!os_log_type_enabled(v34, v32))
    {
      sub_10000A858(v46, v22);

      sub_1000D0484(v10);
      v42 = v17;
      v43 = v11;
      return (v48)(v42, v43);
    }

    v35 = v22;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47 = v11;
    v38 = v37;
    *v36 = 136315138;
    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = v37;
    _StringGuts.grow(_:)(55);
    v39._countAndFlagsBits = 0xD00000000000002CLL;
    v39._object = 0x800000010057CD60;
    String.append(_:)(v39);
    _print_unlocked<A, B>(_:_:)();
    v40._countAndFlagsBits = 0x6B736964206F7420;
    v40._object = 0xE90000000000002ELL;
    String.append(_:)(v40);
    v41 = sub_100005B4C(v49, v50, &v51);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v32, "FMDiscoveredAccessoryImageCache: %s", v36, 0xCu);
    sub_100006060(v38);

    sub_10000A858(v46, v35);

    v31 = v10;
  }

  else
  {
    v47 = v11;
    sub_1000D0420(a2, v8);
    v23 = static os_log_type_t.error.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315138;
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v27;
      _StringGuts.grow(_:)(56);
      v28._countAndFlagsBits = 0xD000000000000028;
      v28._object = 0x800000010057CCE0;
      String.append(_:)(v28);
      _print_unlocked<A, B>(_:_:)();
      v29._countAndFlagsBits = 0x7320746F6E202D20;
      v29._object = 0xEE002E676E697661;
      String.append(_:)(v29);
      v30 = sub_100005B4C(v49, v50, &v51);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v25, v23, "FMDiscoveredAccessoryImageCache: %s", v26, 0xCu);
      sub_100006060(v27);
    }

    v31 = v8;
  }

  sub_1000D0484(v31);
  v42 = v17;
  v43 = v47;
  return (v48)(v42, v43);
}

uint64_t sub_1000D0CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryProductImageRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D0D48(uint64_t a1)
{
  v3 = *(type metadata accessor for FMAccessoryProductImageRequest() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000CECF8(a1, v4, v5);
}

void *sub_1000D0DC0()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1000D0DEC()
{
  v1 = (type metadata accessor for FMAccessoryProductImageRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000D0F24()
{
  v1 = *(type metadata accessor for FMAccessoryProductImageRequest() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000CFF50(v2, v3);
}

unint64_t sub_1000D0F88()
{
  result = qword_1006B0B60;
  if (!qword_1006B0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMProductAssetProvider.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FMProductAssetProvider.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000D10C0()
{
  result = qword_1006B0B68;
  if (!qword_1006B0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0B68);
  }

  return result;
}

uint64_t sub_1000D1148()
{
  String.hash(into:)();
}

unint64_t sub_1000D1250@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D59A8(*a1);
  *a2 = result;
  return result;
}

void sub_1000D1280(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746553746F6ELL;
  v5 = 0xE800000000000000;
  v6 = 0x64656C6261736964;
  if (v2 != 5)
  {
    v6 = 0x646575657571;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E69646E6570;
  if (v2 != 3)
  {
    v8 = 0x676E6970706F7473;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6C616D726F6ELL;
  if (v2 != 1)
  {
    v9 = 0x657669746361;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

void sub_1000D1350()
{
  if (*(v0 + 40) >= 4u)
  {
    v1 = 0;
    v2 = *(v0 + 32);
    v3 = *(v2 + 16);
    v4 = v2 + 40;
    v5 = _swiftEmptyArrayStorage;
LABEL_4:
    v6 = (v4 + 16 * v1);
    while (v3 != v1)
    {
      if (v1 >= v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_15;
      }

      v9 = *v6;
      v6 += 2;
      v8 = v9;
      ++v1;
      if (v9)
      {
        v10 = *(v6 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10008B9E4(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_10008B9E4((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v13 = &v5[16 * v12];
        *(v13 + 4) = v10;
        *(v13 + 5) = v8;
        v1 = v7;
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_1000D1460@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3 <= 1)
  {
    if (*(v1 + 40))
    {
      v4 = type metadata accessor for FMLocalizerB389();
      v5 = &off_1006303A0;
    }

    else
    {
      v4 = type metadata accessor for FMLocalizer();
      v5 = &off_1006303B8;
    }
  }

  else if (v3 == 2)
  {
    v4 = type metadata accessor for FMLocalizerHawkeye();
    v5 = &off_100630388;
  }

  else if (v3 == 3)
  {
    v4 = type metadata accessor for FMLocalizerRedStripe();
    v5 = &off_100630358;
  }

  else
  {
    v4 = type metadata accessor for FMLocalizerLocalFindable();
    v5 = &off_100630370;
  }

  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = v5;
  *a1 = result;
  return result;
}

uint64_t sub_1000D1530()
{
  v7 = *v0;

  v1._object = 0x800000010057D150;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);
  v2 = v0[3];
  if (*(v0 + 40) < 4u || v2 == 0)
  {
    v4 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v4 = v0[2];
  }

  v5._countAndFlagsBits = v4;
  v5._object = v2;
  String.append(_:)(v5);

  return v7;
}

void sub_1000D15EC()
{
  if (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] == 1)
  {
    v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    sub_1000D3C9C();
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = 0;
    v13 = sub_1000D5E8C;
    v14 = v2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100004AE4;
    v12 = &unk_100625818;
    v3 = _Block_copy(&v9);
    v4 = v0;

    [v1 animateWithDuration:v3 animations:0.35];
    _Block_release(v3);
    v4[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    sub_1000D17E8();
  }

  else
  {
    sub_1000D3C9C();
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    *(v6 + 24) = 0;
    v13 = sub_1000D5E8C;
    v14 = v6;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100004AE4;
    v12 = &unk_1006257C8;
    v7 = _Block_copy(&v9);
    v8 = v0;

    [v5 animateWithDuration:v7 animations:0.35];
    _Block_release(v7);
  }
}

void sub_1000D17E8()
{
  if (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] == 1)
  {
    v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    sub_1000D3C9C();
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = 0;
    v11 = sub_1000D5E8C;
    v12 = v2;
    v7 = _NSConcreteStackBlock;
    v8 = 1107296256;
    v3 = &unk_100625728;
  }

  else
  {
    sub_1000D3C9C();
    v1 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = 0;
    v11 = sub_1000D59F4;
    v12 = v4;
    v7 = _NSConcreteStackBlock;
    v8 = 1107296256;
    v3 = &unk_1006256D8;
  }

  v9 = sub_100004AE4;
  v10 = v3;
  v5 = _Block_copy(&v7);
  v6 = v0;

  [v1 animateWithDuration:v5 animations:{0.35, v7, v8}];
  _Block_release(v5);
}

id sub_1000D1988(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator);
  if (*(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator) == 1)
  {
    [*(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator) setAlpha:1.0];
    v3 = *(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView);
    [v3 setAlpha:0.0];
    [v3 transform3D];
    CATransform3DScale(&v11, &v12, 0.5, 0.5, 1.0);
    [v3 setTransform3D:&v11];
    v4 = &selRef_startAnimating;
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator) setAlpha:0.0];
    v5 = *(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView);
    [v5 setAlpha:1.0];
    v6 = *&CATransform3DIdentity.m33;
    *&v12.m31 = *&CATransform3DIdentity.m31;
    *&v12.m33 = v6;
    v7 = *&CATransform3DIdentity.m43;
    *&v12.m41 = *&CATransform3DIdentity.m41;
    *&v12.m43 = v7;
    v8 = *&CATransform3DIdentity.m13;
    *&v12.m11 = *&CATransform3DIdentity.m11;
    *&v12.m13 = v8;
    v9 = *&CATransform3DIdentity.m23;
    *&v12.m21 = *&CATransform3DIdentity.m21;
    *&v12.m23 = v9;
    [v5 setTransform3D:&v12];
    v4 = &selRef_stopAnimating;
  }

  return [v2 *v4];
}

void sub_1000D1ACC(char a1)
{
  v3 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled;
  [v1 setUserInteractionEnabled:(v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] & 1) == 0];
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (v4)
  {
    v5 = v1[v3];
    sub_1000D3C9C();
    if (v5 != (a1 & 1))
    {
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      *(v7 + 24) = 0;
      v12 = sub_1000D5E8C;
      v13 = v7;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100004AE4;
      v11 = &unk_100625778;
      v8 = _Block_copy(v10);
      v9 = v1;

      [v6 animateWithDuration:v8 animations:0.35];
      _Block_release(v8);
      return;
    }
  }

  else
  {
    sub_1000D3C9C();
  }

  sub_1000D4030(0);
  sub_1000D2C80();
}

id sub_1000D1CDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel) text];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7._countAndFlagsBits = 44;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);

      v8 = v4;
      sub_100035F3C();
      v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      String.append(_:)(v12);

      return v8;
    }
  }

  result = [v1 text];
  if (result)
  {
    v14 = result;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v15;
  }

  return result;
}

id sub_1000D1E94()
{
  v1 = v0;
  v2 = [v0 layer];
  v31 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v32 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v30);
  v5 = _UISheetCornerRadius;
  if (v4)
  {
    v5 = 26.0;
  }

  [v2 setCornerRadius:v5];

  v6 = [v1 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v7 = [v1 layer];
  [v7 setMasksToBounds:0];

  v31 = &type metadata for SolariumFeatureFlag;
  v32 = v3;
  v8 = isFeatureEnabled(_:)();
  sub_100006060(v30);
  if (v8)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView]];
  }

  else
  {
    v9 = [v1 layer];
    [v9 setShouldRasterize:1];

    v10 = [v1 layer];
    v11 = [objc_opt_self() mainScreen];
    [v11 scale];
    v13 = v12;

    [v10 setRasterizationScale:v13];
    v14 = [v1 layer];
    [v14 setShadowOffset:{0.0, 0.0}];
  }

  sub_1000391A0();
  v15 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
  [v15 setTintAdjustmentMode:1];
  v16 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator];
  [v16 setHidden:1];
  v17 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontForTextStyle:UIFontTextStyleBody];
  v20 = sub_100039388(0x8000);

  v21 = sub_100039388(2);
  [v17 setFont:v21];

  [v17 setNumberOfLines:0];
  [v17 setAdjustsFontForContentSizeCategory:1];
  v22 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
  v23 = [v18 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v24 = sub_100039388(0x8000);

  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v26 = UIFontWeightTrait;
  v27 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v28 = sub_10002ACDC(v27);

  [v22 setFont:v28];

  [v22 setNumberOfLines:0];
  [v22 setAdjustsFontForContentSizeCategory:1];
  [v1 addSubview:v16];
  [v1 addSubview:v15];
  [v1 addSubview:v17];
  return [v1 addSubview:v22];
}

void sub_1000D22F0()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v66 = *&v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  v67 = *&v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = *&v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
  [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
  v71 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v72 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  v4 = 16.0;
  if ((v3 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1006D4798;
  }

  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v2;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005521F0;
    v8 = [v6 topAnchor];
    v9 = [v0 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    *(v7 + 32) = v10;
    v11 = [v6 bottomAnchor];
    v12 = [v0 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v7 + 40) = v13;
    v14 = [v6 leadingAnchor];
    v15 = [v0 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v7 + 48) = v16;
    v17 = [v6 trailingAnchor];
    v18 = [v0 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v7 + 56) = v19;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v69 activateConstraints:isa];
  }

  v65 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100552EE0;
  v22 = [v1 centerXAnchor];
  v23 = [v66 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v21 + 32) = v24;
  v25 = [v1 centerYAnchor];
  v26 = [v66 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v21 + 40) = v27;
  sub_10000905C(0, &qword_1006B3A70);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v28];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100552EF0;
  v30 = [v66 topAnchor];
  v31 = [v0 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v4];

  *(v29 + 32) = v32;
  v33 = [v66 leadingAnchor];
  v34 = [v0 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:14.0];

  *(v29 + 40) = v35;
  v36 = [v66 trailingAnchor];
  v37 = [v0 trailingAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:-v4];

  *(v29 + 48) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v39];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100552EF0;
  v41 = [v67 topAnchor];
  v42 = [v66 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:10.0];

  *(v40 + 32) = v43;
  v44 = [v67 leadingAnchor];
  v45 = [v0 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:v4];

  *(v40 + 40) = v46;
  v47 = [v67 trailingAnchor];
  v48 = [v0 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-v4];

  *(v40 + 48) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v50];

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1005521F0;
  v52 = [v68 topAnchor];
  v53 = [v67 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:0.0];

  *(v51 + 32) = v54;
  v55 = [v68 leadingAnchor];
  v56 = [v0 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:v4];

  *(v51 + 40) = v57;
  v58 = [v68 trailingAnchor];
  v59 = [v0 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:-v4];

  *(v51 + 48) = v60;
  v61 = [v68 bottomAnchor];
  v62 = [v0 bottomAnchor];
  v63 = [v61 constraintLessThanOrEqualToAnchor:v62 constant:-15.0];

  *(v51 + 56) = v63;
  v64 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v64];
}

void sub_1000D2C80()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v2 - 8);
  v4 = &v126[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10003A318();
  sub_1000D3C9C();
  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v127 = &type metadata for SolariumFeatureFlag;
  v7 = sub_10000BD04();
  v128 = v7;
  LOBYTE(v5) = isFeatureEnabled(_:)();
  sub_100006060(v126);
  if ((v5 & 1) == 0 && qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v8 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView];
  v9 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled;
  v8[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = (v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] & 1) == 0;
  sub_100246368();
  [v8 setHidden:0];
  v127 = &type metadata for SolariumFeatureFlag;
  v128 = v7;
  v10 = isFeatureEnabled(_:)();
  sub_100006060(v126);
  if ((v10 & 1) == 0)
  {
    if (v1[v9])
    {
      v27 = [v1 traitCollection];
      v28 = sub_100356E0C(v27);

      v29 = *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
      *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v28;

      v30 = [v1 traitCollection];
      v31 = sub_100356E0C(v30);

      [v1 setBackgroundColor:v31];
      v32 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
      v33 = objc_opt_self();
      v34 = [v33 labelColor];
      [v32 setTextColor:v34];

      v35 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
      v36 = [v33 secondaryLabelColor];
      [v35 setTextColor:v36];

      [v35 setAlpha:0.35];
      [v32 setAlpha:0.35];
      v37 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
      v38 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
      swift_beginAccess();
      sub_1000D5AC4(&v1[v38], v4);
      v39 = sub_10043B9F4(v4, 2);
      sub_1000D59F8(v4);
      [v37 setImage:v39];

      v40 = [v1 layer];
      v41 = [v33 blackColor];
      v42 = [v41 CGColor];

      [v40 setShadowColor:v42];
      v43 = [v1 layer];
      LODWORD(v44) = 1031127695;
      [v43 setShadowOpacity:v44];

      v45 = [v1 layer];
    }

    else
    {
      if ((v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] & 1) != 0 || (v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] & 1) != 0 || v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] == 1 && v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] == 1)
      {
        v70 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor;
        v71 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor];
        v72 = *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
        *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v71;
        v73 = v71;

        [v1 setBackgroundColor:*&v1[v70]];
        v74 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
        v75 = objc_opt_self();
        v76 = [v75 whiteColor];
        [v74 setTextColor:v76];

        v125 = v6;
        [v74 setAlpha:1.0];
        v77 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
        v78 = [v75 whiteColor];
        v79 = [v78 colorWithAlphaComponent:0.7];

        [v77 setTextColor:v79];
        [v77 setAlpha:1.0];
        v80 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
        v81 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
        swift_beginAccess();
        sub_1000D5AC4(&v1[v81], v4);
        v82 = sub_10043B9F4(v4, 1);
        sub_1000D59F8(v4);
        [v80 setImage:v82];

        v83 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator];
        v84 = [v75 whiteColor];
        [v83 setColor:v84];

        v85 = [v1 layer];
        v86 = [*&v1[v70] CGColor];
        [v85 setShadowColor:v86];

        v87 = [v1 layer];
        LODWORD(v88) = 1060320051;
        [v87 setShadowOpacity:v88];

        v89 = [v1 layer];
        v46 = v89;
        v90 = 23.0;
        if (v125 == 2)
        {
          v90 = 16.0;
        }

        [v89 setShadowRadius:v90];
        goto LABEL_24;
      }

      v107 = [v1 traitCollection];
      v108 = sub_100356E0C(v107);

      v109 = *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
      *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v108;

      v110 = [v1 traitCollection];
      v111 = sub_100356E0C(v110);

      [v1 setBackgroundColor:v111];
      v112 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
      v113 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
      swift_beginAccess();
      sub_1000D5AC4(&v1[v113], v4);
      v114 = sub_10043B9F4(v4, 0);
      sub_1000D59F8(v4);
      [v112 setImage:v114];

      v115 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
      v116 = objc_opt_self();
      v117 = [v116 labelColor];
      [v115 setTextColor:v117];

      [v115 setAlpha:1.0];
      v118 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
      v119 = [v116 secondaryLabelColor];
      [v118 setTextColor:v119];

      [v118 setAlpha:1.0];
      [*&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator] setColor:0];
      v120 = [v1 layer];
      v121 = [v116 blackColor];
      v122 = [v121 CGColor];

      [v120 setShadowColor:v122];
      v123 = [v1 layer];
      LODWORD(v124) = 1031127695;
      [v123 setShadowOpacity:v124];

      v45 = [v1 layer];
    }

    v46 = v45;
    [v46 setShadowRadius:16.0];
    goto LABEL_24;
  }

  if (v1[v9])
  {
    v11 = objc_opt_self();
    v12 = [v11 clearColor];
    v13 = *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v12;

    v14 = [v11 clearColor];
    [v1 setBackgroundColor:v14];

    v15 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
    v16 = [v11 labelColor];
    v17 = [v16 colorWithAlphaComponent:0.2];

    [v15 setTextColor:v17];
    v18 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
    v19 = [v11 secondaryLabelColor];
    v20 = [v19 colorWithAlphaComponent:0.2];

    [v18 setTextColor:v20];
    v21 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
    swift_beginAccess();
    sub_1000D5AC4(&v1[v21], v4);
    v22 = sub_100438138(0);
    v24 = v23;
    sub_1000D59F8(v4);
    v25 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
    [v25 setImage:v22];
    if (v24)
    {
      v26 = [v24 colorWithAlphaComponent:0.2];
    }

    else
    {
      v26 = 0;
    }

    [v25 setTintColor:v26];

    v91 = [v1 layer];
    [v91 setShadowColor:0];

    v92 = [v1 layer];
    goto LABEL_23;
  }

  if ((v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] & 1) == 0 && (v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] & 1) == 0 && (v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] != 1 || v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] != 1))
  {
    v93 = [v1 traitCollection];
    v94 = sub_100356E0C(v93);

    v95 = *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v94;

    v96 = [v1 traitCollection];
    v97 = sub_100356E0C(v96);

    [v1 setBackgroundColor:v97];
    v98 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
    swift_beginAccess();
    sub_1000D5AC4(&v1[v98], v4);
    v22 = sub_100438138(0);
    v24 = v99;
    sub_1000D59F8(v4);
    v100 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
    [v100 setImage:v22];
    [v100 setTintColor:v24];
    v101 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
    v102 = objc_opt_self();
    v103 = [v102 labelColor];
    [v101 setTextColor:v103];

    v104 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
    v105 = [v102 secondaryLabelColor];
    [v104 setTextColor:v105];

    [*&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator] setColor:0];
    v106 = [v1 layer];
    [v106 setShadowColor:0];

    v92 = [v1 layer];
LABEL_23:
    v46 = v92;
    [v46 setShadowOpacity:0.0];

    goto LABEL_24;
  }

  v125 = v6;
  v47 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor;
  v48 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor];
  v49 = *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
  *&v1[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v48;
  v50 = v48;

  [v1 setBackgroundColor:*&v1[v47]];
  v51 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel];
  v52 = objc_opt_self();
  v53 = [v52 whiteColor];
  [v51 setTextColor:v53];

  v54 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel];
  v55 = [v52 whiteColor];
  v56 = [v55 colorWithAlphaComponent:0.7];

  [v54 setTextColor:v56];
  v57 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
  swift_beginAccess();
  sub_1000D5AC4(&v1[v57], v4);
  v58 = sub_100438138(1);
  v46 = v59;
  sub_1000D59F8(v4);
  v60 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
  [v60 setImage:v58];
  [v60 setTintColor:v46];
  v61 = *&v1[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator];
  v62 = [v52 whiteColor];
  [v61 setColor:v62];

  v63 = [v1 layer];
  v64 = [*&v1[v47] CGColor];
  [v63 setShadowColor:v64];

  v65 = [v1 layer];
  LODWORD(v66) = 1060320051;
  [v65 setShadowOpacity:v66];

  v67 = [v1 layer];
  v68 = v67;
  v69 = 23.0;
  if (v125 == 2)
  {
    v69 = 16.0;
  }

  [v67 setShadowRadius:v69];

  [v8 setHidden:1];
LABEL_24:
}

void sub_1000D3C9C()
{
  v1 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled])
  {
    v4 = 2;
  }

  else
  {
    v4 = (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] & 1) != 0 || (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] & 1) != 0 || v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] == 1 && (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] & 1) != 0;
  }

  v18 = &type metadata for SolariumFeatureFlag;
  v19 = sub_10000BD04();
  v5 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (v5)
  {
    if (v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] != v4)
    {
      v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = v4;
      v6 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
      swift_beginAccess();
      sub_1000D5AC4(&v0[v6], v3);
      v7 = v0;
      v8 = sub_100438138(v4);
      v10 = v9;
      sub_1000D59F8(v3);
      v11 = *&v7[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
      [v11 setImage:v8];
      [v11 setTintColor:v10];
      [v11 setUserInteractionEnabled:0];
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = *&v0[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView];
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    *(v14 + 24) = v4;
    v19 = sub_1000D5B90;
    v20 = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    v18 = &unk_100625868;
    v15 = _Block_copy(aBlock);
    v16 = v0;

    [v12 transitionWithView:v13 duration:5242884 options:v15 animations:0 completion:0.25];
    _Block_release(v15);
  }
}

id sub_1000D3F38(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView);
  v8 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
  swift_beginAccess();
  sub_1000D5AC4(a1 + v8, v6);
  v9 = sub_10043B9F4(v6, a2);
  sub_1000D59F8(v6);
  [v7 setImage:v9];

  return [v7 setUserInteractionEnabled:0];
}

void sub_1000D4030(char a1)
{
  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  v92 = sub_100039388(2);

  v91 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v5 = (v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext);
  v6 = *(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16);
  v107 = *(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext);
  v108[0] = v6;
  *(v108 + 9) = *(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 25);
  sub_1000D1460(&v103);
  v7 = *&v104[8];
  v8 = *&v104[16];
  sub_1000244BC(&v103, *&v104[8]);
  v101 = v107;

  sub_1000D5B28(&v107, &v105);
  v9._countAndFlagsBits = 0x454C5449545FLL;
  v9._object = 0xE600000000000000;
  String.append(_:)(v9);
  v93 = (*(v8 + 16))(v101, *(&v101 + 1), v7, v8);
  v11 = v10;

  sub_100006060(&v103);
  sub_1000D5B60(&v107);
  v12 = v5[1];
  v105 = *v5;
  v106[0] = v12;
  *(v106 + 9) = *(v5 + 25);
  sub_1000D1460(&v101);
  v13 = *&v102[8];
  v14 = *&v102[16];
  sub_1000244BC(&v101, *&v102[8]);
  v94 = v105;

  sub_1000D5B28(&v105, &v103);
  v15._countAndFlagsBits = 0x4C5449544255535FLL;
  v15._object = 0xE900000000000045;
  String.append(_:)(v15);
  v16 = v2;
  (*(v14 + 16))(v94, *(&v94 + 1), v13, v14);

  sub_100006060(&v101);
  sub_1000D5B60(&v105);
  if (*(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled) != 1)
  {
    if (*(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) == 1)
    {

      v27 = v5[1];
      v103 = *v5;
      *v104 = v27;
      *&v104[9] = *(v5 + 25);
      sub_1000D1460(&v94);
      v28 = v95;
      v29 = v96;
      sub_1000244BC(&v94, v95);
      v98 = v103;

      sub_1000D5B28(&v103, &v101);
      v30._countAndFlagsBits = 0x5F4556495443415FLL;
      v30._object = 0xED0000454C544954;
      String.append(_:)(v30);
      v93 = (*(v29 + 16))(v98, *(&v98 + 1), v28, v29);
      v11 = v31;

      sub_100006060(&v94);
      sub_1000D5B60(&v103);
      v32 = v5[1];
      v101 = *v5;
      *v102 = v32;
      *&v102[9] = *(v5 + 25);
      sub_1000D1460(&v98);
      v33 = v99;
      v34 = v100;
      sub_1000244BC(&v98, v99);
      v97 = v101;
      sub_1000D5B28(&v101, &v94);

      v35._object = 0x800000010057D130;
      v35._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v35);
      (*(v34 + 16))(v97, *(&v97 + 1), v33, v34);

      sub_100006060(&v98);
      sub_1000D5B60(&v101);
      v26 = 2;
      goto LABEL_13;
    }

    if (*(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued) == 1)
    {

      v41 = v5[1];
      v103 = *v5;
      *v104 = v41;
      *&v104[9] = *(v5 + 25);
      sub_1000D1460(&v94);
      v42 = v95;
      v43 = v96;
      sub_1000244BC(&v94, v95);
      v98 = v103;

      sub_1000D5B28(&v103, &v101);
      v44._countAndFlagsBits = 0x5F4445554555515FLL;
      v44._object = 0xED0000454C544954;
      String.append(_:)(v44);
      v93 = (*(v43 + 16))(v98, *(&v98 + 1), v42, v43);
      v11 = v45;

      sub_100006060(&v94);
      sub_1000D5B60(&v103);
      v46 = v5[1];
      v101 = *v5;
      *v102 = v46;
      *&v102[9] = *(v5 + 25);
      sub_1000D1460(&v98);
      v47 = v99;
      v48 = v100;
      sub_1000244BC(&v98, v99);
      v97 = v101;
      sub_1000D5B28(&v101, &v94);

      v49._object = 0x800000010057D110;
      v49._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v49);
      (*(v48 + 16))(v97, *(&v97 + 1), v47, v48);

      sub_100006060(&v98);
      sub_1000D5B60(&v101);
      v26 = 6;
      goto LABEL_13;
    }

    if (*(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending) != 1)
    {
      v26 = 1;
      goto LABEL_13;
    }

    v89 = v2;
    v73 = *(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping);

    v74 = v5[1];
    v103 = *v5;
    *v104 = v74;
    *&v104[9] = *(v5 + 25);
    sub_1000D1460(&v94);
    v75 = v95;
    v76 = v96;
    sub_1000244BC(&v94, v95);
    v98 = v103;

    sub_1000D5B28(&v103, &v101);
    if (v73 == 1)
    {
      v77._countAndFlagsBits = 0xD000000000000013;
      v77._object = 0x800000010057D0D0;
      String.append(_:)(v77);
      v93 = (*(v76 + 16))(v98, *(&v98 + 1), v75, v76);
      v11 = v78;

      sub_100006060(&v94);
      sub_1000D5B60(&v103);
      v79 = v5[1];
      v101 = *v5;
      *v102 = v79;
      *&v102[9] = *(v5 + 25);
      sub_1000D1460(&v98);
      v80 = v99;
      v81 = v100;
      sub_1000244BC(&v98, v99);
      v97 = v101;
      sub_1000D5B28(&v101, &v94);

      v82._countAndFlagsBits = 0xD000000000000016;
      v82._object = 0x800000010057D0F0;
      String.append(_:)(v82);
      (*(v81 + 16))(v97, *(&v97 + 1), v80, v81);

      sub_100006060(&v98);
      sub_1000D5B60(&v101);
      v26 = 4;
    }

    else
    {
      v83._countAndFlagsBits = 0x474E49444E45505FLL;
      v83._object = 0xEE00454C5449545FLL;
      String.append(_:)(v83);
      v93 = (*(v76 + 16))(v98, *(&v98 + 1), v75, v76);
      v11 = v84;

      sub_100006060(&v94);
      sub_1000D5B60(&v103);
      v85 = v5[1];
      v101 = *v5;
      *v102 = v85;
      *&v102[9] = *(v5 + 25);
      sub_1000D1460(&v98);
      v86 = v99;
      v87 = v100;
      sub_1000244BC(&v98, v99);
      v97 = v101;
      sub_1000D5B28(&v101, &v94);

      v88._countAndFlagsBits = 0xD000000000000011;
      v88._object = 0x800000010057D0B0;
      String.append(_:)(v88);
      (*(v87 + 16))(v97, *(&v97 + 1), v86, v87);

      sub_100006060(&v98);
      sub_1000D5B60(&v101);
      v26 = 3;
    }

LABEL_12:
    v16 = v89;
    goto LABEL_13;
  }

  v17 = v5[1];
  v103 = *v5;
  *v104 = v17;
  *&v104[9] = *(v5 + 25);
  sub_1000D1460(&v94);
  v18 = v95;
  v19 = v96;
  sub_1000244BC(&v94, v95);
  v98 = v103;

  sub_1000D5B28(&v103, &v101);
  v20._countAndFlagsBits = 0x454C5449545FLL;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v93 = (*(v19 + 16))(v98, *(&v98 + 1), v18, v19);
  v11 = v21;

  sub_100006060(&v94);
  sub_1000D5B60(&v103);
  if (*(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled) != 1)
  {
    v89 = v2;
    v36 = v5[1];
    if (*(v2 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled) == 1)
    {
      v101 = *v5;
      *v102 = v36;
      *&v102[9] = *(v5 + 25);
      sub_1000D1460(&v98);
      v37 = v100;
      sub_1000244BC(&v98, v99);
      sub_1000D5B28(&v101, &v94);
      v38 = sub_1000D1530();
      (*(v37 + 16))(v38);

      sub_1000D1350();
      v40 = v39;
      sub_1000D5B60(&v101);
      sub_10052A6EC(v40);

      String.init(format:arguments:)();

      sub_100006060(&v98);
    }

    else
    {
      v101 = *v5;
      *v102 = v36;
      *&v102[9] = *(v5 + 25);
      sub_1000D1460(&v98);
      v50 = v99;
      v51 = v100;
      sub_1000244BC(&v98, v99);
      v97 = v101;

      sub_1000D5B28(&v101, &v94);
      v52._countAndFlagsBits = 0x4C5449544255535FLL;
      v52._object = 0xE900000000000045;
      String.append(_:)(v52);
      (*(v51 + 16))(v97, *(&v97 + 1), v50, v51);

      sub_100006060(&v98);
      sub_1000D5B60(&v101);
    }

    v26 = 5;
    goto LABEL_12;
  }

  v22 = v5[1];
  v101 = *v5;
  *v102 = v22;
  *&v102[9] = *(v5 + 25);
  sub_1000D1460(&v98);
  v23 = v99;
  v24 = v100;
  sub_1000244BC(&v98, v99);
  v97 = v101;
  sub_1000D5B28(&v101, &v94);

  v25._object = 0x800000010057D110;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  (*(v24 + 16))(v97, *(&v97 + 1), v23, v24);

  sub_100006060(&v98);
  sub_1000D5B60(&v101);
  v26 = 5;
LABEL_13:
  v53 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state;
  if (sub_10024E42C(v26, *(v16 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state)) & 1) == 0 || (a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100005B14(v54, qword_1006D4630);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v89 = v16;
      v57 = swift_slowAlloc();
      *&v94 = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100005B4C(v93, v11, &v94);
      v58 = 0xE600000000000000;
      v59 = 0x6C616D726F6ELL;
      *(v57 + 12) = 2080;
      v60 = 0xE800000000000000;
      v61 = 0x676E6970706F7473;
      v62 = 0xE800000000000000;
      v63 = 0x64656C6261736964;
      if (v26 != 5)
      {
        v63 = 0x646575657571;
        v62 = 0xE600000000000000;
      }

      if (v26 != 4)
      {
        v61 = v63;
        v60 = v62;
      }

      v64 = 0xE600000000000000;
      v65 = 0x657669746361;
      if (v26 != 2)
      {
        v65 = 0x676E69646E6570;
        v64 = 0xE700000000000000;
      }

      if (v26 != 1)
      {
        v59 = v65;
        v58 = v64;
      }

      if (v26 <= 3)
      {
        v66 = v59;
      }

      else
      {
        v66 = v61;
      }

      if (v26 <= 3)
      {
        v67 = v58;
      }

      else
      {
        v67 = v60;
      }

      v68 = sub_100005B4C(v66, v67, &v94);

      *(v57 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v55, v56, "FMIconPlatterButton: update labels %s state: %s", v57, 0x16u);
      swift_arrayDestroy();

      v16 = v89;
    }

    else
    {
    }

    v69 = *(v16 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel);
    [v69 setFont:{v92, v89}];
    v70 = String._bridgeToObjectiveC()();

    [v69 setText:v70];

    sub_1000D5EB8();
    v71 = *(v16 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel);
    [v71 setFont:v91];
    v72 = String._bridgeToObjectiveC()();

    [v71 setText:v72];

    sub_1000D5EB8();
    *(v16 + v53) = v26;
  }

  else
  {
  }
}

id sub_1000D4EEC(void *a1)
{
  [a1 transform3D];
  CATransform3DScale(&v3, &v4, 0.93, 0.93, 1.0);
  return [a1 setTransform3D:&v3];
}

void sub_1000D5148(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v21.receiver = v14;
  v21.super_class = type metadata accessor for FMIconPlatterButton();
  objc_msgSendSuper2(&v21, *a5, isa, v13);

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v20[4] = a7;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100004AE4;
  v20[3] = a8;
  v18 = _Block_copy(v20);
  v19 = v14;

  [v16 animateWithDuration:v18 animations:0.15];

  _Block_release(v18);
}

uint64_t sub_1000D545C()
{
  sub_1000D59F8(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext);
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8);
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32);
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 40);

  return sub_1000D5A54(v1, v2, v3, v4, v5, v6);
}

id sub_1000D550C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIconPlatterButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMIconPlatterButton()
{
  result = qword_1006B0C18;
  if (!qword_1006B0C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D5654()
{
  result = type metadata accessor for FMPlatterIcon();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_1000D573C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D5750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1000D5798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIconPlatterButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIconPlatterButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D5954()
{
  result = qword_1006B0C28;
  if (!qword_1006B0C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0C28);
  }

  return result;
}

unint64_t sub_1000D59A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100621CE8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D59F8(uint64_t a1)
{
  v2 = type metadata accessor for FMPlatterIcon();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D5A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 < 4u)
  {
  }

  if (a6 == 4)
  {
  }

  return result;
}

uint64_t sub_1000D5AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPlatterIcon();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D5BCC()
{
  result = qword_1006B0C38;
  if (!qword_1006B0C38)
  {
    sub_10000905C(255, &qword_1006B0C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0C38);
  }

  return result;
}

id sub_1000D5C34()
{
  v1 = *(v0 + 16);
  v2 = *&CATransform3DIdentity.m33;
  v7[4] = *&CATransform3DIdentity.m31;
  v7[5] = v2;
  v3 = *&CATransform3DIdentity.m43;
  v7[6] = *&CATransform3DIdentity.m41;
  v7[7] = v3;
  v4 = *&CATransform3DIdentity.m13;
  v7[0] = *&CATransform3DIdentity.m11;
  v7[1] = v4;
  v5 = *&CATransform3DIdentity.m23;
  v7[2] = *&CATransform3DIdentity.m21;
  v7[3] = v5;
  return [v1 setTransform3D:v7];
}

void sub_1000D5C94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *(v1 + v5) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v6 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v7 = type metadata accessor for FMPlatterBackgroundView();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v10.receiver = v8;
  v10.super_class = v7;
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v6) = v9;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState) = 3;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000D5EB8()
{
  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    LODWORD(v4) = 0.5;
    [v3 setHyphenationFactor:v4];
    sub_10007EBC0(&qword_1006B0C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_1000D6038();
    *(inited + 40) = v3;
    v6 = NSParagraphStyleAttributeName;
    v7 = v3;
    sub_10001AC8C(inited);
    swift_setDeallocating();
    sub_1000D6084(inited + 32);
    v8 = objc_allocWithZone(NSMutableAttributedString);
    type metadata accessor for Key(0);
    sub_1000D60EC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v8 initWithString:v2 attributes:isa];

    [v0 setAttributedText:v10];
  }
}

unint64_t sub_1000D6038()
{
  result = qword_1006B0C48;
  if (!qword_1006B0C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B0C48);
  }

  return result;
}

uint64_t sub_1000D6084(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B0C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D60EC()
{
  result = qword_1006AF370;
  if (!qword_1006AF370)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF370);
  }

  return result;
}

id sub_1000D6208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000D6258()
{
  v1 = *(v0 + 16);
  result = [v1 isEditing];
  if ((result & 1) == 0)
  {

    return [v1 reloadData];
  }

  return result;
}

uint64_t sub_1000D62B4(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006C2670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D6350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FMIPItemActionStatus();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = v10;
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v42 = a2;
    aBlock[0] = v16;
    *v15 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v17 = String.init<A>(describing:)();
    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMDevicesActionController: perform item action completed with error?: %s", v15, 0xCu);
    sub_100006060(v16);

    a3 = v31;
  }

  sub_100003E90();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = v34;
  v22 = v36;
  (*(v9 + 16))(v34, a1, v36);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = (v33 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = v39;
  (*(v9 + 32))(v25 + v23, v21, v22);
  *(v25 + v24) = a2;
  aBlock[4] = sub_1000E21E4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100625B90;
  v26 = _Block_copy(aBlock);
  swift_errorRetain();

  v27 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v28 = v32;
  v29 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v28, v29);
  return (*(v41 + 8))(v27, v38);
}

uint64_t sub_1000D68A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v22 = a6;
    v15 = v23;
    *v14 = 136315138;
    v16 = FMIPUTItemAction.debugDescription.getter();
    v18 = a5;
    v19 = sub_100005B4C(v16, v17, &v23);

    *(v14 + 4) = v19;
    a5 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMDevicesActionController: perform UT item action %s", v14, 0xCu);
    sub_100006060(v15);
    a6 = v22;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  a6(a1, a5, v20);
}

uint64_t sub_1000D6A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = FMIPItemAction.debugDescription.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform item action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform safe location action", v8, 2u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D6DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v40 = a3;
  v37 = a2;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v19;
    v33 = swift_slowAlloc();
    v41 = a4;
    aBlock[0] = v33;
    *v19 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v20 = String.init<A>(describing:)();
    v34 = v12;
    v35 = v15;
    LOBYTE(v19) = v18;
    v22 = a6;
    v23 = v13;
    v24 = sub_100005B4C(v20, v21, aBlock);
    v12 = v34;
    v15 = v35;

    v25 = v32;
    *(v32 + 1) = v24;
    v13 = v23;
    a6 = v22;
    _os_log_impl(&_mh_execute_header, v17, v19, "FMDevicesActionController: perform safe location action completed with error?: %s", v25, 0xCu);
    sub_100006060(v33);
  }

  sub_100003E90();
  v26 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = a7;
  v28 = v37;
  *(v27 + 32) = a4;
  *(v27 + 40) = v28;
  *(v27 + 48) = v40;
  *(v27 + 56) = a5;
  aBlock[4] = sub_1000E409C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100626568;
  v29 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v38 + 8))(v12, v30);
  return (*(v13 + 8))(v15, v39);
}

uint64_t sub_1000D7218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPDeviceAction();
    sub_100009EC8(&qword_1006B0EE0, &type metadata accessor for FMIPDeviceAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D7420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a6;
  v41 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FMIPActionStatus();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v38);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v37 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = a5;
    v20 = a1;
    v21 = v19;
    v48 = a3;
    aBlock[0] = v19;
    *v18 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v22 = String.init<A>(describing:)();
    v24 = sub_100005B4C(v22, v23, aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDevicesActionController: perform action completed with error?: %s", v18, 0xCu);
    sub_100006060(v21);
    a1 = v20;
    a5 = v36;
  }

  sub_100003E90();
  v25 = static OS_dispatch_queue.main.getter();
  v26 = v38;
  (*(v12 + 16))(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v38);
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v28 = (v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = a5;
  *(v30 + 24) = v40;
  (*(v12 + 32))(v30 + v27, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  *(v30 + v28) = v41;
  *(v30 + v29) = v37;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  aBlock[4] = sub_1000E3FE8;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006264F0;
  v31 = _Block_copy(aBlock);
  swift_errorRetain();

  v32 = v42;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v33 = v44;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v46 + 8))(v33, v34);
  return (*(v43 + 8))(v32, v45);
}

uint64_t sub_1000D7974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPItemGroupAction();
    sub_100009EC8(&qword_1006B0ED8, &type metadata accessor for FMIPItemGroupAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform item group action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D7B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  v46 = a8;
  v50 = a5;
  v48 = a2;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FMIPItemActionStatus();
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = v17;
  v42 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v44 = a9;
  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39[0] = a6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = a4;
    v39[1] = a7;
    v24 = v23;
    v54 = a3;
    aBlock[0] = v23;
    *v22 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v25 = String.init<A>(describing:)();
    v27 = sub_100005B4C(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, v39[0], v22, 0xCu);
    sub_100006060(v24);
    a4 = v40;
  }

  sub_100003E90();
  v28 = static OS_dispatch_queue.main.getter();
  v29 = v42;
  v30 = v45;
  (*(v16 + 16))(v42, a1, v45);
  v31 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v32 = (v41 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = v50;
  (*(v16 + 32))(v33 + v31, v29, v30);
  *(v33 + v32) = v48;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = v46;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v44;
  v34 = _Block_copy(aBlock);
  swift_errorRetain();

  v35 = v51;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v36 = v43;
  v37 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v53 + 8))(v36, v37);
  return (*(v52 + 8))(v35, v49);
}

uint64_t sub_1000D80D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPCreateDelegatedURLShareAction();
    sub_100009EC8(&qword_1006B0ED0, &type metadata accessor for FMIPCreateDelegatedURLShareAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform item create delegated share action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D82D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a8;
  v60 = a5;
  v58 = a4;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v63 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007EBC0(&unk_1006B0120);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v57 = &v49 - v20;
  v56 = type metadata accessor for FMIPItemActionStatus();
  v21 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = v22;
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v55 = a9;
  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4630);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v51 = a6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v52 = a7;
    v50 = v28;
    v67 = a3;
    aBlock[0] = v28;
    *v27 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v29 = String.init<A>(describing:)();
    v31 = sub_100005B4C(v29, v30, aBlock);
    v49 = a3;
    v32 = a1;
    v33 = a2;
    v34 = v31;

    *(v27 + 4) = v34;
    a2 = v33;
    a1 = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, v51, v27, 0xCu);
    sub_100006060(v50);

    v35 = v49;
  }

  else
  {

    v35 = a3;
  }

  sub_100003E90();
  v52 = static OS_dispatch_queue.main.getter();
  v36 = v54;
  v37 = v56;
  (*(v21 + 16))(v54, a1, v56);
  v38 = v57;
  sub_100007204(a2, v57, &unk_1006B0120);
  v39 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v40 = (v53 + *(v18 + 80) + v39) & ~*(v18 + 80);
  v41 = swift_allocObject();
  v42 = v60;
  *(v41 + 16) = v58;
  *(v41 + 24) = v42;
  (*(v21 + 32))(v41 + v39, v36, v37);
  sub_100035318(v38, v41 + v40, &unk_1006B0120);
  *(v41 + ((v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = v59;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v55;
  v43 = _Block_copy(aBlock);
  swift_errorRetain();

  v44 = v61;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v45 = v63;
  v46 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v52;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

  (*(v65 + 8))(v45, v46);
  return (*(v62 + 8))(v44, v64);
}

uint64_t sub_1000D8924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPStopDelegatedURLShareAction();
    sub_100009EC8(&qword_1006B0EC8, &type metadata accessor for FMIPStopDelegatedURLShareAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform item stop delegated share action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D8B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPShareItemAction();
    sub_100009EC8(&qword_1006B0EC0, &type metadata accessor for FMIPShareItemAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform item share action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D8D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B07D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v48 = &v43 - v14;
  v47 = type metadata accessor for FMIPItemActionStatus();
  v15 = *(v47 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v47);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v45 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = a2;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    sub_10007EBC0(&unk_1006AF7B0);
    v25 = Dictionary.description.getter();
    v27 = v12;
    v28 = sub_100005B4C(v25, v26, aBlock);

    *(v22 + 4) = v28;
    v12 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMDevicesActionController: perform item share action completed with error?: %s", v22, 0xCu);
    sub_100006060(v24);
    a2 = v44;

    a1 = v43;
  }

  sub_100003E90();
  v44 = static OS_dispatch_queue.main.getter();
  v29 = v46;
  v30 = v47;
  (*(v15 + 16))(v46, a1, v47);
  v31 = v48;
  sub_100007204(a2, v48, &qword_1006B07D0);
  v32 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v33 = (v16 + *(v12 + 80) + v32) & ~*(v12 + 80);
  v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v50;
  *(v35 + 16) = v49;
  *(v35 + 24) = v36;
  (*(v15 + 32))(v35 + v32, v29, v30);
  sub_100035318(v31, v35 + v33, &qword_1006B07D0);
  *(v35 + v34) = v45;
  aBlock[4] = sub_1000E3C30;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100626310;
  v37 = _Block_copy(aBlock);

  v38 = v51;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v39 = v53;
  v40 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = v44;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  (*(v55 + 8))(v39, v40);
  (*(v52 + 8))(v38, v54);
}

uint64_t sub_1000D9328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPItemSharingAction();
    sub_100009EC8(&unk_1006C01E0, &type metadata accessor for FMIPItemSharingAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform item share action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D9560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v45 = a6;
  v46 = a7;
  v49 = a4;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v50 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FMIPItemActionStatus();
  v14 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = v15;
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a3;
    v37 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v52 = a2;
    aBlock[0] = v21;
    *v20 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v22 = String.init<A>(describing:)();
    v24 = sub_100005B4C(v22, v23, aBlock);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, v37, v20, 0xCu);
    sub_100006060(v21);

    a3 = v38;
  }

  sub_100003E90();
  v25 = static OS_dispatch_queue.main.getter();
  v26 = v41;
  v27 = v43;
  (*(v14 + 16))(v41, a1, v43);
  v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v29 = (v40 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = v49;
  (*(v14 + 32))(v30 + v28, v26, v27);
  *(v30 + v29) = a2;
  aBlock[4] = v46;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v44;
  v31 = _Block_copy(aBlock);
  swift_errorRetain();

  v32 = v50;
  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v33 = v39;
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v47 + 8))(v33, v34);
  (*(v51 + 8))(v32, v48);
}

uint64_t sub_1000D9A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPRequestShareAction();
    sub_100009EC8(&qword_1006B0EB8, &type metadata accessor for FMIPRequestShareAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform request share action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D9C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for FMIPStopSharingAction();
    sub_100009EC8(&qword_1006B0EB0, &type metadata accessor for FMIPStopSharingAction);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesActionController: perform stop sharing action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  FMIPManager.perform(action:completion:)();
}

uint64_t sub_1000D9E8C(char a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v72 = *(v15 - 8);
  __chkstk_darwin(v15);
  v70 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v65 - v18;
  if ((a1 & 1) == 0)
  {
    return a3(1);
  }

  v66 = v14;
  v67 = v15;
  v69 = v11;
  v20 = [objc_opt_self() mainBundle];
  v68 = v12;
  if (a2)
  {
    v79._object = 0x800000010057D340;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    v21._object = 0x800000010057D320;
    v79._countAndFlagsBits = 0xD000000000000031;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v79);
    v23 = "AST_TRUSTED_TITLE";
    v24 = 0xD000000000000021;
  }

  else
  {
    v80._object = 0x800000010057D2A0;
    v26._countAndFlagsBits = 0xD00000000000001ALL;
    v26._object = 0x800000010057D280;
    v80._countAndFlagsBits = 0xD00000000000002CLL;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v20, v27, v80);
    v23 = "g DEVICE_ERASE_TRUSTED_TITLE";
    v24 = 0xD00000000000001CLL;
  }

  v28 = type metadata accessor for FMIPDevice();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v19, a5, v28);
  (*(v29 + 56))(v19, 0, 1, v28);
  v30 = sub_10022F104(v24, v23 | 0x8000000000000000, v19);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_10022E0A8(v30, v32, v34, v36, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v19, &unk_1006BBCE0);
  v37 = String._bridgeToObjectiveC()();

  v38 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

  v40 = objc_opt_self();
  v41 = [v40 mainBundle];
  v81._object = 0x800000010057B8F0;
  v42._countAndFlagsBits = 0xD000000000000013;
  v42._object = 0x800000010057B8D0;
  v81._countAndFlagsBits = 0xD000000000000025;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v81);

  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  *(v44 + 24) = a4;

  v45 = String._bridgeToObjectiveC()();

  v77 = sub_1000E218C;
  v78 = v44;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100017328;
  v76 = &unk_100625AA0;
  v46 = _Block_copy(&aBlock);

  v47 = objc_opt_self();
  v48 = [v47 actionWithTitle:v45 style:1 handler:v46];
  _Block_release(v46);

  [v39 addAction:v48];
  v49 = [v40 mainBundle];
  v82._object = 0x800000010057D2F0;
  v50._object = 0x800000010057A130;
  v82._countAndFlagsBits = 0xD000000000000024;
  v50._countAndFlagsBits = 0xD000000000000012;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v82);

  v52 = swift_allocObject();
  *(v52 + 16) = a3;
  *(v52 + 24) = a4;

  v53 = String._bridgeToObjectiveC()();

  v77 = sub_1000E21B8;
  v78 = v52;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100017328;
  v76 = &unk_100625AF0;
  v54 = _Block_copy(&aBlock);

  v55 = [v47 actionWithTitle:v53 style:2 handler:v54];
  _Block_release(v54);

  [v39 addAction:v55];
  sub_100003E90();
  v56 = static OS_dispatch_queue.main.getter();
  v57 = swift_allocObject();
  v58 = v71;
  *(v57 + 16) = v71;
  *(v57 + 24) = v39;
  v77 = sub_1000C5F48;
  v78 = v57;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100004AE4;
  v76 = &unk_100625B40;
  v59 = _Block_copy(&aBlock);
  v60 = v58;
  v61 = v39;

  v62 = v70;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v63 = v66;
  v64 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v59);

  (*(v68 + 8))(v63, v64);
  return (*(v72 + 8))(v62, v67);
}

uint64_t sub_1000DA734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    FMIPPlaySoundDeviceAction.channels.getter();
    type metadata accessor for FMIPPlaySoundChannels();
    v11 = Array.description.getter();
    v13 = v12;

    v14 = sub_100005B4C(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDevicesActionController: Sending playing a sound... channels %s", v9, 0xCu);
    sub_100006060(v10);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_100062900(a2);
  sub_1000D7218(a1, sub_1000E3AA0, v15);
}

void sub_1000DA938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v58 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v61 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for FMIPActionStatus();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v54 = v16;
  v55 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v48[-v17];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  v53 = *(v14 + 16);
  v53(v18, a1, v13);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v56 = a2;
  v57 = a4;
  if (!v22)
  {

    (*(v14 + 8))(v18, v13);
    if (!a5)
    {
      return;
    }

    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v52 = a5;
  v24 = v23;
  v50 = swift_slowAlloc();
  aBlock[0] = v50;
  *v24 = 136315650;
  sub_100009EC8(&unk_1006B0580, &type metadata accessor for FMIPActionStatus);
  v49 = v21;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v51 = a1;
  v27 = v26;
  (*(v14 + 8))(v18, v13);
  v28 = sub_100005B4C(v25, v27, aBlock);

  *(v24 + 4) = v28;
  *(v24 + 12) = 2080;
  v66 = a2;

  sub_10007EBC0(&qword_1006B0EA0);
  v29 = String.init<A>(describing:)();
  v31 = sub_100005B4C(v29, v30, aBlock);

  *(v24 + 14) = v31;
  *(v24 + 22) = 2080;
  a1 = v51;
  v66 = a4;

  sub_10007EBC0(&qword_1006B0EA8);
  v32 = String.init<A>(describing:)();
  v34 = sub_100005B4C(v32, v33, aBlock);

  *(v24 + 24) = v34;
  _os_log_impl(&_mh_execute_header, v20, v49, "FMDevicesActionController: Play sound command finished with status: %s, devices: %s, action: %s", v24, 0x20u);
  swift_arrayDestroy();

  a5 = v52;

  if (a5)
  {
LABEL_7:
    sub_100003E90();
    v35 = v65;

    v52 = static OS_dispatch_queue.main.getter();
    v36 = v55;
    v53(v55, a1, v13);
    v37 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = a5;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v35;
    (*(v14 + 32))(v41 + v37, v36, v13);
    v42 = v57;
    *(v41 + v38) = v56;
    *(v41 + v40) = v58;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    aBlock[4] = sub_1000E3AA8;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100626180;
    v43 = _Block_copy(aBlock);

    sub_100062900(v39);
    swift_errorRetain();

    v44 = v59;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v45 = v61;
    v46 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v52;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    sub_10001835C(v39);
    (*(v63 + 8))(v45, v46);
    (*(v60 + 8))(v44, v62);
  }
}

uint64_t sub_1000DB034(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    type metadata accessor for FMIPPlaySoundDeviceAction();
    v10 = swift_dynamicCastClass();
  }

  else
  {
    v10 = 0;
  }

  return a1(a3, a4, a5, v10);
}

uint64_t sub_1000DB0B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v20[1] = a3;
  v21 = a2;
  v7 = type metadata accessor for FMIPItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMItemsActionController: Sending playing a sound...", v13, 2u);
  }

  v14 = *(v8 + 16);
  v14(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  type metadata accessor for FMIPPlaySoundItemAction();
  swift_allocObject();
  v15 = FMIPPlaySoundItemAction.init(item:context:)();
  v14(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = a4;
  *(v17 + 24) = v18;
  (*(v8 + 32))(v17 + v16, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_100062900(a4);
  sub_1000D6A90(v15, sub_1000E391C, v17);
}

void sub_1000DB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v64 = a4;
  v58 = a3;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v55 - 8);
  __chkstk_darwin(v55);
  v61 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v53 = v11;
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v50 = v15;
  v51 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v49 = *(v13 + 16);
  v49(v17, a1, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v52 = v13;
  if (!v21)
  {

    (*(v13 + 8))(v17, v12);
    if (!v64)
    {
      return;
    }

    goto LABEL_7;
  }

  v22 = swift_slowAlloc();
  v47 = a5;
  v23 = v22;
  v24 = swift_slowAlloc();
  aBlock[0] = v24;
  *v23 = 136315138;
  sub_100009EC8(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = a1;
  v26 = v12;
  v28 = v27;
  (*(v13 + 8))(v17, v26);
  v29 = sub_100005B4C(v25, v28, aBlock);
  v12 = v26;
  a1 = v46;

  *(v23 + 4) = v29;
  _os_log_impl(&_mh_execute_header, v19, v20, "FMDevicesActionController: Play sound command finished with status: %s", v23, 0xCu);
  sub_100006060(v24);

  a5 = v47;

  if (v64)
  {
LABEL_7:
    sub_100003E90();

    v47 = static OS_dispatch_queue.main.getter();
    v30 = v51;
    v49(v51, a1, v12);
    v31 = v56;
    v32 = *(v56 + 16);
    v49 = v12;
    v33 = v54;
    v34 = v57;
    v32(v54, v48, v57);
    v35 = v52;
    v36 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v37 = (v50 + *(v31 + 80) + v36) & ~*(v31 + 80);
    v38 = (v53 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v64;
    *(v39 + 24) = a5;
    (*(v35 + 32))(v39 + v36, v30, v49);
    (*(v31 + 32))(v39 + v37, v33, v34);
    *(v39 + v38) = v58;
    aBlock[4] = sub_1000E39A8;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100626108;
    v40 = _Block_copy(aBlock);
    v41 = v64;
    sub_100062900(v64);
    swift_errorRetain();

    v42 = v59;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009EC8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v43 = v61;
    v44 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = v47;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    sub_10001835C(v41);
    (*(v63 + 8))(v43, v44);
    (*(v60 + 8))(v42, v62);
  }
}

void sub_1000DBA1C(uint64_t a1, id a2, void *a3)
{
  v4 = v3;
  v127 = a2;
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v128 = &v116 - v8;
  v141 = type metadata accessor for FMIPLocation();
  v129 = *(v141 - 1);
  v9 = __chkstk_darwin(v141);
  v122 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v119 = &v116 - v12;
  __chkstk_darwin(v11);
  v123 = &v116 - v13;
  v14 = sub_10007EBC0(&unk_1006C0220);
  v15 = __chkstk_darwin(v14 - 8);
  v125 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v120 = &v116 - v18;
  v19 = __chkstk_darwin(v17);
  v126 = &v116 - v20;
  __chkstk_darwin(v19);
  v139 = &v116 - v21;
  v142 = type metadata accessor for FMIPItem();
  isa = v142[-1].isa;
  v23 = __chkstk_darwin(v142);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v133 = &v116 - v27;
  v28 = __chkstk_darwin(v26);
  v138 = &v116 - v29;
  v121 = v30;
  __chkstk_darwin(v28);
  v32 = &v116 - v31;
  v33 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v33 - 8);
  v35 = &v116 - v34;
  if ((FMIPDevice.hasLocation.getter() & 1) == 0)
  {
    if (qword_1006AEBE0 == -1)
    {
LABEL_5:
      v41 = type metadata accessor for Logger();
      sub_100005B14(v41, qword_1006D4630);
      v142 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v142, v42, "FMDevicesActionController: cannot get direction for no location", v43, 2u);
      }

      v44 = v142;

      return;
    }

LABEL_56:
    swift_once();
    goto LABEL_5;
  }

  v131 = v25;
  v132 = v4;
  v117 = a3;
  v118 = a1;
  FMIPDevice.itemGroup.getter();
  v36 = type metadata accessor for FMIPItemGroup();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v35, 1, v36);
  v140 = isa;
  if (v38 != 1)
  {
    v45 = FMIPItemGroup.items.getter();
    (*(v37 + 8))(v35, v36);
    v137 = *(v45 + 16);
    if (!v137)
    {
      v39 = _swiftEmptyArrayStorage;
      v40 = v142;
LABEL_22:

      goto LABEL_23;
    }

    v46 = 0;
    v136 = isa + 16;
    v134 = isa + 32;
    v135 = (v129 + 6);
    v130 = (isa + 8);
    v39 = _swiftEmptyArrayStorage;
    v40 = v142;
    while (v46 < *(v45 + 16))
    {
      v47 = (*(isa + 80) + 32) & ~*(isa + 80);
      v48 = v45;
      v49 = *(isa + 9);
      (*(isa + 2))(v32, v45 + v47 + v49 * v46, v40);
      v50 = v139;
      FMIPItem.location.getter();
      v51 = (*v135)(v50, 1, v141);
      sub_100012DF0(v50, &unk_1006C0220);
      if (v51 == 1)
      {
        (*v130)(v32, v40);
      }

      else
      {
        v52 = *v134;
        (*v134)(v138, v32, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016704C(0, v39[2] + 1, 1);
          v39 = aBlock[0];
        }

        v55 = v39[2];
        v54 = v39[3];
        if (v55 >= v54 >> 1)
        {
          sub_10016704C(v54 > 1, v55 + 1, 1);
          v39 = aBlock[0];
        }

        v39[2] = v55 + 1;
        v56 = v39 + v47 + v55 * v49;
        v40 = v142;
        v52(v56, v138, v142);
        isa = v140;
      }

      ++v46;
      v45 = v48;
      if (v137 == v46)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  sub_100012DF0(v35, &unk_1006BB1C0);
  v39 = _swiftEmptyArrayStorage;
  v40 = v142;
LABEL_23:
  v124 = v39;
  v57 = v128;
  sub_100007204(v127, v128, &qword_1006B07D0);
  v58 = (*(isa + 6))(v57, 1, v40);
  v59 = v129;
  v60 = v126;
  v61 = v141;
  if (v58 == 1)
  {
    sub_100012DF0(v57, &qword_1006B07D0);
    (v59[7])(v60, 1, 1, v61);
  }

  else
  {
    FMIPItem.location.getter();
    (*(isa + 1))(v57, v40);
    if ((v59[6])(v60, 1, v61) != 1)
    {

      v108 = v123;
      (v59[4])(v123, v60, v61);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100005B14(v109, qword_1006D4630);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v110, v111))
      {
        goto LABEL_50;
      }

      v112 = swift_slowAlloc();
      *v112 = 0;
      v113 = "FMDevicesActionController: Navigating to the primary part location";
      goto LABEL_49;
    }
  }

  sub_100012DF0(v60, &unk_1006C0220);
  if (FMIPDevice.shouldDisplaySeparatedLocation.getter())
  {
    v62 = v124[2];
    if (v62)
    {
      if (v62 != 1)
      {
LABEL_31:
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v128 = v62;
        v65 = type metadata accessor for Logger();
        sub_100005B14(v65, qword_1006D4630);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "FMDevicesActionController: Showing part picker", v68, 2u);
        }

        v69 = objc_opt_self();
        v70 = [v69 mainBundle];
        v146._object = 0x800000010057D660;
        v71._countAndFlagsBits = 0xD000000000000018;
        v71._object = 0x800000010057D620;
        v72.value._object = 0x800000010057D640;
        v146._countAndFlagsBits = 0xD00000000000001BLL;
        v72.value._countAndFlagsBits = 0xD000000000000016;
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v71, v72, v70, v73, v146);

        v74 = [v69 mainBundle];
        v147._object = 0x800000010057D660;
        v75._countAndFlagsBits = 0xD00000000000001ALL;
        v75._object = 0x800000010057D680;
        v76.value._object = 0x800000010057D640;
        v147._countAndFlagsBits = 0xD00000000000001BLL;
        v76.value._countAndFlagsBits = 0xD000000000000016;
        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v147);

        v78 = [v69 mainBundle];
        v148._object = 0x800000010057D660;
        v79._countAndFlagsBits = 0xD000000000000019;
        v79._object = 0x800000010057D6A0;
        v80.value._object = 0x800000010057D640;
        v148._countAndFlagsBits = 0xD00000000000001BLL;
        v80.value._countAndFlagsBits = 0xD000000000000016;
        v81._countAndFlagsBits = 0;
        v81._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, v148);

        v82 = String._bridgeToObjectiveC()();

        v83 = String._bridgeToObjectiveC()();

        v141 = [objc_opt_self() alertControllerWithTitle:v82 message:v83 preferredStyle:1];

        v84 = String._bridgeToObjectiveC()();

        v139 = objc_opt_self();
        v127 = [v139 actionWithTitle:v84 style:1 handler:0];

        v138 = *(v140 + 2);
        v85 = *(v140 + 80);
        v86 = v124 + ((v85 + 32) & ~v85);
        v136 = *(v140 + 9);
        v130 = (v140 + 32);
        v137 = v85;
        v134 = ((v121 + ((v85 + 16) & ~v85) + 7) & 0xFFFFFFFFFFFFFFF8);
        v135 = ((v85 + 16) & ~v85);
        v129 = v144;
        v87 = v128;
        v140 = (v140 + 16);
        v88 = v130;
        do
        {
          v89 = v131;
          v90 = v142;
          (v138)(v131, v86, v142);
          v144[4] = FMIPItem.name.getter();
          v144[5] = v91;
          sub_100035F3C();
          StringProtocol.capitalized.getter();

          v92 = *v88;
          v93 = v133;
          (*v88)(v133, v89, v90);
          v94 = v134;
          v95 = swift_allocObject();
          v92(&v135[v95], v93, v90);
          *&v94[v95] = v132;

          v96 = String._bridgeToObjectiveC()();

          v144[2] = sub_1000E3880;
          v144[3] = v95;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v144[0] = sub_100017328;
          v144[1] = &unk_100626068;
          v97 = _Block_copy(aBlock);

          v98 = [v139 actionWithTitle:v96 style:0 handler:v97];
          _Block_release(v97);

          [v141 addAction:v98];
          v86 = &v136[v86];
          --v87;
        }

        while (v87);

        v99 = v141;
        v100 = v127;
        [v141 addAction:v127];
        [v117 presentViewController:v99 animated:1 completion:0];

        return;
      }

      v63 = v133;
      (*(isa + 2))(v133, v124 + ((*(isa + 80) + 32) & ~*(isa + 80)), v40);
      v64 = v120;
      FMIPItem.location.getter();
      (*(isa + 1))(v63, v40);
      if ((v59[6])(v64, 1, v61) == 1)
      {
        sub_100012DF0(v64, &unk_1006C0220);
        goto LABEL_31;
      }

      v108 = v119;
      (v59[4])(v119, v64, v61);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_100005B14(v115, qword_1006D4630);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v110, v111))
      {
LABEL_50:

        v114 = FMIPLocation.location.getter();
        sub_1000E0F8C(v114);

        (v59[1])(v108, v61);
        return;
      }

      v112 = swift_slowAlloc();
      *v112 = 0;
      v113 = "FMDevicesActionController: Navigating to the first part location";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v110, v111, v113, v112, 2u);

      goto LABEL_50;
    }
  }

  v101 = v125;
  FMIPDevice.bestLocation.getter();
  if ((v59[6])(v101, 1, v61) == 1)
  {
    sub_100012DF0(v101, &unk_1006C0220);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_100005B14(v102, qword_1006D4630);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "FMDevicesActionController: couldn't display any location.", v105, 2u);
    }
  }

  else
  {
    v106 = v122;
    (v59[4])(v122, v101, v61);
    v107 = FMIPLocation.location.getter();
    sub_1000E0F8C(v107);

    (v59[1])(v106, v61);
  }
}