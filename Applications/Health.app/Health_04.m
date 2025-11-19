uint64_t sub_1000669F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100066A64()
{
  if (!qword_1000DCEB8)
  {
    sub_100066ACC(255);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCEB8);
    }
  }
}

void sub_100066B08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100066B84()
{
  if (!qword_1000DCED0)
  {
    sub_100066BE0();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCED0);
    }
  }
}

unint64_t sub_100066BE0()
{
  result = qword_1000DCED8;
  if (!qword_1000DCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCED8);
  }

  return result;
}

void sub_100066C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100066CCC()
{
  if (!qword_1000DCEE8)
  {
    sub_100066D30();
    sub_100066D90();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCEE8);
    }
  }
}

void sub_100066D30()
{
  if (!qword_1000DCEF0)
  {
    sub_10005CFD0();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCEF0);
    }
  }
}

unint64_t sub_100066D90()
{
  result = qword_1000DCEF8;
  if (!qword_1000DCEF8)
  {
    sub_100066D30();
    sub_100066198(&qword_1000DC938, sub_10005CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCEF8);
  }

  return result;
}

void sub_100066E40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100066E90()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_100066E40(0, &qword_1000DCF00, &type metadata for String, &type metadata accessor for Binding);
  return Binding.wrappedValue.setter();
}

void sub_100066F08()
{
  if (!qword_1000DCF10)
  {
    sub_100066ACC(255);
    sub_100066198(&qword_1000DCF18, sub_100066ACC);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCF10);
    }
  }
}

uint64_t sub_1000670D8(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for DeepLinkContentKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler);
  if (v20)
  {
    *v19 = a1;
    v19[8] = a2;
    swift_storeEnumTagMultiPayload();
    sub_10002E3B4(v19, v14);
    (*(v16 + 56))(v14, 0, 1, v15);
    v21 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
    swift_beginAccess();

    v22 = a1;
    sub_10002E474(v14, v20 + v21);
    swift_endAccess();
    sub_10000CC50();

    return sub_10002E418(v19);
  }

  else
  {
    v32 = v6;
    v24 = ObjectType;
    static Logger.general.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136446210;
      v34 = v24;
      swift_getMetatypeMetadata();
      v29 = String.init<A>(describing:)();
      v31 = sub_1000036D0(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s]: Unable to handleUserActivity: deepLinkHandler is nil", v27, 0xCu);
      sub_100003B90(v28);
    }

    return (*(v7 + 8))(v10, v32);
  }
}

uint64_t sub_100067440(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v31 - v12;
  v14 = type metadata accessor for DeepLinkContentKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler);
  if (v19)
  {
    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    sub_10002E3B4(v18, v13);
    (*(v15 + 56))(v13, 0, 1, v14);
    v20 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
    swift_beginAccess();

    v21 = a1;
    sub_10002E474(v13, v19 + v20);
    swift_endAccess();
    v22 = sub_10000CC50();

    sub_10002E418(v18);
  }

  else
  {
    static Logger.general.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136446210;
      v31[0] = ObjectType;
      swift_getMetatypeMetadata();
      v27 = String.init<A>(describing:)();
      v29 = sub_1000036D0(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s]: Unable to performShortcutItem: deepLinkHandler is nil", v25, 0xCu);
      sub_100003B90(v26);
    }

    (*(v6 + 8))(v9, v5);
    v22 = 0;
  }

  return v22 & 1;
}

id sub_1000678D4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = [a1 userActivity];
  if (v13)
  {
    static Logger.general.getter();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v44 = v14;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v43 = v10;
      v19 = v18;
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v19 = 136446466;
      v45 = ObjectType;
      swift_getMetatypeMetadata();
      v20 = String.init<A>(describing:)();
      v41 = v2;
      v22 = sub_1000036D0(v20, v21, v47);
      v42 = ObjectType;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v45 = v14;
      sub_100003DDC(0, &qword_1000DC650, NSUserActivity_ptr);
      v24 = v14;
      v2 = v41;
      v25 = String.init<A>(reflecting:)();
      v27 = sub_1000036D0(v25, v26, v47);

      *(v19 + 14) = v27;
      ObjectType = v42;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s]: saving user activity for stateRestoration: %s", v19, 0x16u);
      swift_arrayDestroy();

      v10 = v43;
    }

    v28 = *(v6 + 8);
    v28(v12, v5);
    if (*(v2 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler))
    {
      sub_10006873C();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AE100;

      v45 = static HAUserActivity.dateSavedRestorationKey.getter();
      v46 = v30;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = type metadata accessor for Date();
      sub_10000AD4C((inited + 72));
      Date.init()();
      sub_1000687A4(inited);
      swift_setDeallocating();
      sub_1000688E8(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v44 addUserInfoEntriesFromDictionary:isa];
    }

    else
    {
      static Logger.general.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v47[0] = v35;
        *v34 = 136446210;
        v45 = ObjectType;
        swift_getMetatypeMetadata();
        v36 = String.init<A>(describing:)();
        v38 = sub_1000036D0(v36, v37, v47);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}s]: Unable to createRestorationActivity: deepLinkHandler is nil", v34, 0xCu);
        sub_100003B90(v35);
      }

      else
      {
      }

      v28(v10, v5);
      return 0;
    }
  }

  return v13;
}

uint64_t sub_100067E04(uint64_t a1, void *a2)
{
  v3 = v2;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for DeepLinkContentKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler);
  if (v20)
  {
    sub_10000C61C();
    v22 = *(v21 + 48);
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 16))(v19, v35, v23);
    *&v19[v22] = a2;
    swift_storeEnumTagMultiPayload();
    sub_10002E3B4(v19, v14);
    (*(v16 + 56))(v14, 0, 1, v15);
    v24 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
    swift_beginAccess();
    v25 = a2;

    sub_10002E474(v14, v20 + v24);
    swift_endAccess();
    sub_10000CC50();

    return sub_10002E418(v19);
  }

  else
  {
    v35 = v6;
    static Logger.general.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136446210;
      v36 = ObjectType;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = sub_1000036D0(v31, v32, &v37);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s]: Unable to open URL: deepLinkHandler is nil", v29, 0xCu);
      sub_100003B90(v30);
    }

    return (*(v7 + 8))(v10, v35);
  }
}

uint64_t sub_10006822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100068320, v9, v8);
}

uint64_t sub_100068320()
{
  v1 = v0[11];

  static Tips.configure(_:)();
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

id sub_100068544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000685F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100068670(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1000686E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003DDC(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10006873C()
{
  if (!qword_1000DBB70)
  {
    sub_100069460(255, &qword_1000DD0B0);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBB70);
    }
  }
}

unint64_t sub_1000687A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100069404(0, &qword_1000DD0C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100068954(v4, v13, &qword_1000DD0B0);
      result = sub_100033344(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10004EB2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1000688E8(uint64_t a1)
{
  sub_100069460(0, &qword_1000DD0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068954(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_100069460(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000689C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100069404(0, &qword_1000DD170);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100068954(v4, &v13, &qword_1000DD178);
      v5 = v13;
      v6 = v14;
      result = sub_100033388(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004EB2C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100068AF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000694C4();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_100033400(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_100033400(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100068C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000695D8();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100033388(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100068D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100018D6C;

  return sub_10006822C(a1, v4, v5, v6);
}

uint64_t sub_100068DD4()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    v13[1] = ObjectType;
    *v8 = 136446466;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_1000036D0(v9, v10, v13);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1000036D0(0xD000000000000019, 0x80000001000A8870, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Lifecycle: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100068FC8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    v13[1] = ObjectType;
    *v8 = 136446466;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_1000036D0(v9, v10, v13);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1000036D0(0xD00000000000001BLL, 0x80000001000A8830, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Lifecycle: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1000691BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = v2;
    v14 = v13;
    v24 = swift_slowAlloc();
    v25 = ObjectType;
    *v14 = 136446466;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_1000036D0(v15, v16, &v24);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v25 = v10;
    sub_100003DDC(0, &qword_1000DC650, NSUserActivity_ptr);
    v18 = v10;
    v19 = String.init<A>(reflecting:)();
    v21 = sub_1000036D0(v19, v20, &v24);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: continuing userActivity: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v9, v5);
  return sub_1000670D8(v10, 1);
}

void sub_100069404(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _DictionaryStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100069460(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000694C4()
{
  if (!qword_1000DD180)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_100069570();
    sub_100006A10(&qword_1000DD190, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD180);
    }
  }
}

unint64_t sub_100069570()
{
  result = qword_1000DD188;
  if (!qword_1000DD188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD188);
  }

  return result;
}

void sub_1000695D8()
{
  if (!qword_1000DD198)
  {
    sub_100003DDC(255, &qword_1000DD140, NSObject_ptr);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD198);
    }
  }
}

void sub_100069650(uint64_t a1@<X8>)
{
  sub_10006986C();
  if (!v2)
  {
LABEL_14:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = v2;
  v4 = [v2 windows];

  sub_100003DDC(0, &qword_1000DD210, UIWindow_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    v7 = 0;
LABEL_10:

    v8 = [v7 rootViewController];

    if (v8)
    {
      v9 = type metadata accessor for TabBarController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        *(a1 + 24) = v9;
        *(a1 + 32) = sub_10006A1B4();
        *a1 = v11;
        return;
      }
    }

    goto LABEL_14;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:
    v7 = v6;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_10006986C()
{
  v1 = [v0 connectedScenes];
  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while ([v16 activationState])
      {

        v6 = v14;
        v7 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v16 = v17;
          v14 = v6;
          v15 = v7;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_10000F754();

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }

    else
    {
LABEL_19:
      sub_10000F754();
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100069AC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  if (!a3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = sub_100041430();
  if (v17 == 43)
  {
    v52 = v8;
    v51 = v16;
    v18 = a1;
    v19 = a4;
    v20 = v9;

    v21 = a2;
    v22 = sub_1000345E0(a2, a3);
    if (v22)
    {
      v26 = v22;
      v27 = v23;
      v28 = v24;
      v29 = v25;
      v22 = swift_allocObject();
      v22[2] = v26;
      v22[3] = v27;
      v22[4] = v28;
      v22[5] = v29;
      v30 = &off_1000CDAA8;
      v31 = &type metadata for PluginPPT;
    }

    else
    {
      v31 = 0;
      v30 = 0;
      *(&v57 + 1) = 0;
      *&v58 = 0;
    }

    *&v57 = v22;
    *(&v58 + 1) = v31;
    v59 = v30;
    a2 = v21;
    v9 = v20;
    a4 = v19;
    a1 = v18;
    v16 = v51;
    v8 = v52;
  }

  else
  {
    *(&v61 + 1) = &type metadata for HealthAppPPT;
    v62 = &off_1000CDDE0;
    LOBYTE(v60) = v17;
    sub_100014D24(&v60, &v57);
  }

  v60 = v57;
  v61 = v58;
  v62 = v59;
  sub_10006A150(&v60, &v55);
  if (!v56)
  {
    sub_10006A038(&v55);
    static Logger.general.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v57 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1000036D0(a2, a3, &v57);
      _os_log_impl(&_mh_execute_header, v42, v43, "No test configured by name %s", v44, 0xCu);
      sub_100003B90(v45);
    }

    (*(v9 + 8))(v13, v8);
    sub_10006A038(&v60);
    v46 = 0;
    return v46 & 1;
  }

  sub_100014D24(&v55, &v57);
  static Logger.general.getter();
  sub_10000ACE8(&v57, &v55);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v32, v33))
  {

    sub_100003B90(&v55);
    (*(v9 + 8))(v16, v8);
LABEL_16:
    v47 = *(&v58 + 1);
    v48 = v59;
    result = sub_10000BFFC(&v57, *(&v58 + 1));
    if (a1)
    {
      if (a4)
      {
        v46 = (v48[2])(a1, a2, a3, a4, v47, v48);
        sub_10006A038(&v60);
        sub_100003B90(&v57);
        return v46 & 1;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v16;
  v49 = a1;
  v50 = a2;
  v52 = v8;
  v34 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  *v34 = 136315394;
  sub_10000ACE8(&v55, v53);
  sub_10006A0EC();
  v35 = String.init<A>(describing:)();
  v37 = v36;
  sub_100003B90(&v55);
  v38 = sub_1000036D0(v35, v37, &v54);

  *(v34 + 4) = v38;
  *(v34 + 12) = 2080;
  if (a4)
  {

    v39 = Dictionary.description.getter();
    v41 = sub_1000036D0(v39, v40, &v54);

    *(v34 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Executing Test %s with options %s", v34, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v51, v52);
    a2 = v50;
    a1 = v49;
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10006A038(uint64_t a1)
{
  sub_10006A094();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006A094()
{
  if (!qword_1000DD200)
  {
    sub_10006A0EC();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD200);
    }
  }
}

unint64_t sub_10006A0EC()
{
  result = qword_1000DD208;
  if (!qword_1000DD208)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD208);
  }

  return result;
}

uint64_t sub_10006A150(uint64_t a1, uint64_t a2)
{
  sub_10006A094();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A1B4()
{
  result = qword_1000DD218;
  if (!qword_1000DD218)
  {
    type metadata accessor for TabBarController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD218);
  }

  return result;
}

uint64_t type metadata accessor for FeatureAvailabilityDataSource()
{
  result = qword_1000DD228;
  if (!qword_1000DD228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A298()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v66 = *(v0 - 8);
  v67 = v0;
  v1 = *(v66 + 64);
  __chkstk_darwin(v0);
  v65 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v64 = v54 - v5;
  v59 = type metadata accessor for CellDeselectionBehavior();
  v58 = *(v59 - 8);
  v6 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v54 - v10;
  v56 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v55 = *(v56 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v56);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICellAccessory.DisplayedState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v60 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ContentConfigurationItem();
  v63 = *(v70 - 8);
  v25 = *(v63 + 64);
  __chkstk_darwin(v70);
  v69 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v54[1] = UUID.uuidString.getter();
  v54[0] = v27;
  v28 = *(v21 + 8);
  v61 = v21 + 8;
  v62 = v28;
  v28(v24, v20);
  v72[3] = type metadata accessor for UIListContentConfiguration();
  v72[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v72);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v29 = [objc_opt_self() labelColor];
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v30(v71, 0);
  sub_10006AE8C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v31 = *(type metadata accessor for UICellAccessory() - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v68 = xmmword_1000AE100;
  *(v34 + 16) = xmmword_1000AE100;
  (*(v16 + 104))(v19, enum case for UICellAccessory.DisplayedState.always(_:), v15);
  v35 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v55 + 8))(v14, v56);
  (*(v16 + 8))(v19, v15);
  (*(v58 + 104))(v57, enum case for CellDeselectionBehavior.default(_:), v59);
  v36 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v36 - 8) + 56))(v64, 1, 1, v36);
  (*(v66 + 104))(v65, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v67);
  v37 = v69;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_10006AE8C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v38 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = v68;
  v67 = "ailabilityDataSource";
  sub_10006AE8C(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v41 = swift_allocObject();
  *(v41 + 16) = v68;
  v42 = v70;
  *(v41 + 56) = v70;
  *(v41 + 64) = sub_10006AEF0(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v43 = sub_10000AD4C((v41 + 32));
  v44 = v63;
  (*(v63 + 16))(v43, v37, v42);
  UUID.init()();
  UUID.uuidString.getter();
  v45 = v60;
  v46 = v62;
  v62(v24, v60);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v72[0] = 0x3C53447961727241;
  v72[1] = 0xE800000000000000;
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v49 = v48;
  v46(v24, v45);
  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 62;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v44 + 8))(v69, v70);
  return v52;
}

void sub_10006AC50(void *a1)
{
  type metadata accessor for InternalSettingsFeatureStateListViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 showViewController:v2 sender:0];
}

unint64_t sub_10006AD2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10006ADA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10006AE08(uint64_t a1)
{
  *(a1 + 8) = sub_10006AEF0(&qword_1000DD278, type metadata accessor for FeatureAvailabilityDataSource);
  result = sub_10006AEF0(&qword_1000DD280, type metadata accessor for FeatureAvailabilityDataSource);
  *(a1 + 24) = result;
  return result;
}

void sub_10006AE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10006AEF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10006B088()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health16NoHealthDataView_label);
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x80000001000A8980;
  v3._countAndFlagsBits = 0x5F617461645F6F6ELL;
  v3._object = 0xEC00000074786574;
  v4._countAndFlagsBits = 0x61746144206F4ELL;
  v4._object = 0xE700000000000000;
  v9._countAndFlagsBits = 0xD000000000000039;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = String._bridgeToObjectiveC()();

  [v1 setText:v5];

  sub_100003DDC(0, &qword_1000DD2B8, UIFont_ptr);
  v6 = static UIFont.createFont(with:weight:traits:rounded:maximumContentSizeCategory:respectsDynamicType:)();
  [v1 setFont:v6];

  v7 = [objc_opt_self() tertiaryLabelColor];
  [v1 setTextColor:v7];

  [v1 setNumberOfLines:0];
  [v1 setTextAlignment:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10006B274(v1);
}

void sub_10006B274(void *a1)
{
  [v1 addSubview:a1];
  v3 = objc_opt_self();
  sub_1000157F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B02F0;
  v5 = [a1 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [a1 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [a1 leadingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v4 + 48) = v14;
  v15 = [a1 trailingAnchor];
  v16 = [v1 layoutMarginsGuide];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v4 + 56) = v18;
  sub_100003DDC(0, &qword_1000DD2C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_10006B508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoHealthDataView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WelcomePrivacyInformationViewController()
{
  result = qword_1000DD350;
  if (!qword_1000DD350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B608()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2C8 = result;
  unk_1000DD2D0 = v5;
  return result;
}

uint64_t sub_10006B70C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2D8 = result;
  unk_1000DD2E0 = v5;
  return result;
}

uint64_t sub_10006B810()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2E8 = result;
  unk_1000DD2F0 = v5;
  return result;
}

uint64_t sub_10006B914()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2F8 = result;
  unk_1000DD300 = v5;
  return result;
}

uint64_t sub_10006BA18()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD308 = result;
  unk_1000DD310 = v5;
  return result;
}

uint64_t sub_10006BB1C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD318 = result;
  unk_1000DD320 = v5;
  return result;
}

uint64_t sub_10006BC20()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD328 = result;
  unk_1000DD330 = v5;
  return result;
}

uint64_t sub_10006BD24()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD338 = result;
  unk_1000DD340 = v5;
  return result;
}

void sub_10006BE28(char a1)
{
  *(v1 + qword_1000DD348 + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 isPasscodeSet];

  if (a1)
  {
    if (v5)
    {
      if (qword_1000DA558 != -1)
      {
        swift_once();
      }

      v6 = qword_1000DA570;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = &qword_1000DD308;
    }

    else
    {
      if (qword_1000DA560 != -1)
      {
        swift_once();
      }

      v9 = qword_1000DA580;

      if (v9 != -1)
      {
        swift_once();
      }

      v7 = &qword_1000DD328;
    }
  }

  else if (v5)
  {
    if (qword_1000DA558 != -1)
    {
      swift_once();
    }

    v8 = qword_1000DA578;

    if (v8 != -1)
    {
      swift_once();
    }

    v7 = &qword_1000DD318;
  }

  else
  {
    if (qword_1000DA560 != -1)
    {
      swift_once();
    }

    v10 = qword_1000DA588;

    if (v10 != -1)
    {
      swift_once();
    }

    v7 = &qword_1000DD338;
  }

  v11 = *v7;
  v12 = v7[1];

  static OnboardingImageHeight.iconDefaultHeight.getter();
  v14 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:v13];
  if (qword_1000DA540 != -1)
  {
    swift_once();
  }

  v15 = qword_1000E3DF0;
  v16 = v14;
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() imageNamed:v17 inBundle:v15 withConfiguration:v16];

  if (!v18)
  {
    goto LABEL_34;
  }

  if (qword_1000DA568 != -1)
  {
    swift_once();
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v20 = HKUIJoinStringsForAutomationIdentifier();

  if (v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OnboardingIconSmallPaddingViewController.init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();
}

void sub_10006C2A8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 setAccessibilityIdentifier:v3];

    if (qword_1000DA550 != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v6 = HKUIJoinStringsForAutomationIdentifier();
  }

  else
  {
    __break(1u);
  }
}

void sub_10006C3EC(void *a1)
{
  v1 = a1;
  sub_10006C2A8();
}

void sub_10006C434()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

    if (v3)
    {
      [v3 setPresentingViewController:v1];
    }

    [v3 present];
    swift_unknownObjectRelease();
  }
}

void sub_10006C514(void *a1)
{
  v1 = a1;
  sub_10006C434();
}

uint64_t sub_10006C55C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100074FCC();
    swift_unknownObjectRelease();
  }

  v2 = 1;
  v1[3] = type metadata accessor for AnalyticsSender();
  v1[4] = &protocol witness table for AnalyticsSender;
  v1[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(v1);
}

void sub_10006C5F0(void *a1)
{
  v1 = a1;
  sub_10006C55C();
}

void sub_10006C6C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v41 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = a3;
    aBlock[0] = v13;
    *v12 = 136446466;
    v42 = &type metadata for HealthAppPPT;
    sub_10006D374();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000036D0(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = Array.description.getter();
    v19 = sub_1000036D0(v17, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s]: Setting overrideRelevanceForFeedItemIdentifiers to: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    a3 = v39;
  }

  (*(v6 + 8))(v9, v5);
  v20 = objc_allocWithZone(NSUserDefaults);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithSuiteName:v21];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 arrayForKey:v23];

    if (v24)
    {
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = sub_10006CBD4(v25);
    }

    v26 = objc_allocWithZone(NSUserDefaults);
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 initWithSuiteName:v27];

    if (v28)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;
      v30 = String._bridgeToObjectiveC()();
      [v28 setObject:isa forKey:v30];

      sub_10006D208(0);
      LOBYTE(isa) = v31;
      static Feed.Kind.relevanceRankedFeeds.getter();
      v32 = objc_allocWithZone(type metadata accessor for PopulateDiscoverFeedOperation());
      v33 = PopulateDiscoverFeedOperation.init(feedKinds:)();
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      *(v34 + 17) = isa & 1;
      v35 = v41;
      *(v34 + 24) = v24;
      *(v34 + 32) = v35;
      *(v34 + 40) = a3;
      aBlock[4] = sub_10006D360;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008310;
      aBlock[3] = &unk_1000CF728;
      v36 = _Block_copy(aBlock);
      v37 = v33;

      sub_10001EC44(sub_10006D360);

      [v37 setCompletionBlock:v36];
      _Block_release(v36);

      sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
      v38 = static NSOperationQueue.userInitiated.getter();
      [v38 addOperation:v37];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_10006CB9C(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  if (result)
  {
    return result(a3);
  }

  return result;
}

void *sub_10006CBD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10007C57C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100003B34(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007C57C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10006CCE8(char a1, char a2, uint64_t a3, void (*a4)(void (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 17) = a2;
  *(v8 + 24) = a3;

  a4(sub_10006D3BC, v8);
}

void sub_10006CD88(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  sub_10006D208(a2);
  if (a3)
  {
    static Logger.general.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v15 = 136446466;
      v36 = &type metadata for HealthAppPPT;
      sub_10006D374();
      v16 = String.init<A>(describing:)();
      v18 = sub_1000036D0(v16, v17, &v37);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = Array.description.getter();
      v21 = sub_1000036D0(v19, v20, &v37);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s]: Populate feed complete, resetting overrideRelevanceForFeedItemIdentifiers to previous value: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v12, v5);
    v22 = objc_allocWithZone(NSUserDefaults);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 initWithSuiteName:v23];

    if (v24)
    {
      v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v26 = String._bridgeToObjectiveC()();
      [v24 setObject:v25.super.isa forKey:v26];

LABEL_10:
      return;
    }

    __break(1u);
  }

  else
  {
    static Logger.general.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136446210;
      v36 = &type metadata for HealthAppPPT;
      sub_10006D374();
      v31 = String.init<A>(describing:)();
      v33 = sub_1000036D0(v31, v32, &v37);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s]: Populate feed complete, removing overrideRelevanceForFeedItemIdentifiers", v29, 0xCu);
      sub_100003B90(v30);
    }

    (*(v6 + 8))(v10, v5);
    v34 = objc_allocWithZone(NSUserDefaults);
    v35 = String._bridgeToObjectiveC()();
    v25.super.isa = [v34 initWithSuiteName:v35];

    if (v25.super.isa)
    {
      v26 = String._bridgeToObjectiveC()();
      [(objc_class *)v25.super.isa removeObjectForKey:v26];
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10006D208(char a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 BOOLForKey:v5];

  if (v6 == (a1 & 1))
  {
    return;
  }

  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:a1 & 1 forKey:v10];
}

unint64_t sub_10006D374()
{
  result = qword_1000DD3A0;
  if (!qword_1000DD3A0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000DD3A0);
  }

  return result;
}

id sub_10006D3CC(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v70 = a5;
  v67 = type metadata accessor for Logger();
  v66 = *(v67 - 8);
  v8 = *(v66 + 64);
  __chkstk_darwin(v67);
  v9 = type metadata accessor for DeepLinkActivityType();
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v64 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006ECF8();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DataTypeDetailConfiguration.Context();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v69 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for HKTDataTypeDetailFactory();
  v68 = *(v20 - 8);
  v21 = *(v68 + 64);
  __chkstk_darwin(v20);
  v71 = &v55[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [objc_opt_self() dataTypeWithCode:a2];
  if (result)
  {
    v24 = result;
    sub_100069650(&aBlock);
    if (v74)
    {
      v56 = a3;
      v57 = v9;
      v61 = a4;
      v62 = v17;
      v63 = v20;
      sub_1000091BC(&aBlock, &v81);
      HKTDataTypeDetailFactory.init()();
      v25 = *sub_10000BFFC(&v81, v82);
      UIViewController.resolvedHealthExperienceStore.getter();
      v26 = [objc_allocWithZone(HKHealthStore) init];
      v27 = type metadata accessor for PinnedContentManager();
      v28 = v26;
      v29 = PinnedContentManager.__allocating_init(healthStore:domain:)();
      sub_10000ACE8(v80, &aBlock);
      v30 = v28;
      v31 = [v30 profileIdentifier];
      v32 = type metadata accessor for Presentation();
      (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
      static DataTypeDetailMode.defaultMode(for:presentation:)();

      sub_10006EDB8(v15, sub_10006ECF8);
      v78 = v27;
      v79 = &protocol witness table for PinnedContentManager;
      v77 = v29;
      v59 = v29;

      v33 = v24;
      v34 = v69;
      v58 = v30;
      DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)();
      v60 = v33;
      v35 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)();
      type metadata accessor for CompoundDataSourceCollectionViewController();
      v36 = swift_dynamicCastClass();
      v37 = v61;
      if (!v36)
      {

        if (v37)
        {
          v37(0);
        }

        (*(v62 + 8))(v34, v16);
        sub_100003B90(v80);
        (*(v68 + 8))(v71, v63);
        return sub_100003B90(&v81);
      }

      v38 = v36;
      v67 = v16;
      (*(v65 + 104))(v64, enum case for DeepLinkActivityType.dataTypeDetail(_:), v57);
      v39 = v70;
      if (!v37)
      {
        v39 = 0;
      }

      v66 = v39;
      v40 = objc_opt_self();
      v41 = v35;
      [v40 begin];
      v42 = v83;
      sub_10000BFFC(&v81, v82);
      v43 = *(v42 + 8);
      dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
      [v40 commit];
      v44 = [*sub_10000BFFC(&v81 v82)];
      if (v44)
      {
        v45 = v44;
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          v47 = v46;
          [v40 begin];
          v48 = swift_allocObject();
          v49 = v66;
          v48[2] = v37;
          v48[3] = v49;
          v48[4] = v38;
          v75 = sub_10006EE18;
          v76 = v48;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v73 = sub_100008310;
          v74 = &unk_1000CF7A0;
          v50 = _Block_copy(&aBlock);
          v51 = v41;
          sub_10001EC44(v37);

          [v40 setCompletionBlock:v50];
          _Block_release(v50);
          [v47 pushViewController:v38 animated:v56 & 1];
          [v40 commit];

          (*(v65 + 8))(v64, v57);
          v52 = v67;
          v53 = v63;
          v54 = v62;
LABEL_4:
          (*(v54 + 8))(v34, v52);
          sub_100003B90(v80);
          (*(v68 + 8))(v71, v53);
          return sub_100003B90(&v81);
        }
      }

      v52 = v67;
      v53 = v63;
      v54 = v62;
      if (v37)
      {
        v37(0);
      }

      (*(v65 + 8))(v64, v57);
      goto LABEL_4;
    }

    result = sub_10006EDB8(&aBlock, sub_10006ED50);
  }

  if (a4)
  {
    return (a4)(0);
  }

  return result;
}

uint64_t sub_10006DE7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(void), void (*a6)(char *, unint64_t, uint64_t))
{
  v64 = a6;
  v65 = a5;
  v62 = a4;
  v8 = type metadata accessor for DeepLinkActivityType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HKTypeGroup();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v57 - v20;
  __chkstk_darwin(v19);
  v63 = &v57 - v22;
  sub_100069650(&aBlock);
  if (!v68)
  {
    result = sub_10006EDB8(&aBlock, sub_10006ED50);
    v56 = v65;
    if (!v65)
    {
      return result;
    }

    return v56(0);
  }

  sub_1000091BC(&aBlock, v72);
  v23 = static HKTypeGroup.groupsByKeyword.getter();
  if (*(v23 + 16))
  {
    v24 = sub_100033388(a2, a3);
    if (v25)
    {
      v26 = *(v23 + 56) + *(v14 + 72) * v24;
      v58 = *(v14 + 16);
      v58(v21, v26, v13);

      v60 = v14;
      v27 = v63;
      (*(v14 + 32))(v63, v21, v13);
      v59 = *(*sub_10000BFFC(v72, v73) + OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore);
      v57 = *sub_10000BFFC(v72, v73);
      v28 = v12;
      v29 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore;
      v30 = *sub_10000BFFC(v72, v73);
      v31 = v9;
      v32 = v8;
      v33 = OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManager;
      v61 = v13;
      v58(v18, v27, v13);
      v34 = v57 + v29;
      v35 = v28;
      sub_10000ACE8(v34, &aBlock);
      v36 = v30 + v33;
      v37 = v32;
      v38 = v31;
      sub_10000ACE8(v36, v71);
      v39 = objc_allocWithZone(type metadata accessor for CategoryViewController());
      v59 = v59;
      v40 = CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)();
      (*(v31 + 104))(v28, enum case for DeepLinkActivityType.category(_:), v37);
      v41 = v64;
      v42 = v65;
      if (!v65)
      {
        v41 = 0;
      }

      v58 = v41;
      v43 = objc_opt_self();
      v44 = v40;
      [v43 begin];
      v45 = v74;
      sub_10000BFFC(v72, v73);
      v46 = *(v45 + 8);
      dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
      [v43 commit];
      v47 = [*sub_10000BFFC(v72 v73)];
      if (v47)
      {
        v48 = v47;
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v50 = v49;
          [v43 begin];
          v51 = swift_allocObject();
          v52 = v58;
          v51[2] = v42;
          v51[3] = v52;
          v51[4] = v44;
          v69 = sub_10006F0A4;
          v70 = v51;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v67 = sub_100008310;
          v68 = &unk_1000CF7F0;
          v53 = _Block_copy(&aBlock);
          v54 = v44;
          sub_10001EC44(v42);

          [v43 setCompletionBlock:v53];
          _Block_release(v53);
          [v50 pushViewController:v54 animated:v62 & 1];
          [v43 commit];

LABEL_17:
          (*(v38 + 8))(v35, v37);
          (*(v60 + 8))(v63, v61);
          return sub_100003B90(v72);
        }
      }

      if (v42)
      {
        v42(0);
      }

      goto LABEL_17;
    }
  }

  result = sub_100003B90(v72);
  v56 = v65;
  if (v65)
  {
    return v56(0);
  }

  return result;
}

void sub_10006E474(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), void *a5)
{
  v9 = type metadata accessor for DeepLinkActivityType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() dataTypeWithCode:a2];
  if (!v14)
  {
LABEL_11:
    if (a4)
    {
      a4(0);
    }

    return;
  }

  v15 = v14;
  v37 = a3;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 createListViewController:v15];

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_11;
  }

  v19 = v18;
  sub_100069650(&aBlock);
  if (v40)
  {
    sub_1000091BC(&aBlock, v43);
    v36 = v10;
    (*(v10 + 104))(v13, enum case for DeepLinkActivityType.summary(_:), v9);
    if (a4)
    {
      v20 = a5;
    }

    else
    {
      v20 = 0;
    }

    v34 = v20;
    v21 = objc_opt_self();
    v35 = v17;
    [v21 begin];
    v22 = v45;
    sub_10000BFFC(v43, v44);
    v23 = *(v22 + 8);
    dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
    [v21 commit];
    v24 = [*sub_10000BFFC(v43 v44)];
    if (v24)
    {
      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v33 = v26;
        [v21 begin];
        v27 = swift_allocObject();
        v28 = v34;
        v27[2] = a4;
        v27[3] = v28;
        v27[4] = v19;
        v41 = sub_10006F0A4;
        v42 = v27;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v39 = sub_100008310;
        v40 = &unk_1000CF840;
        v29 = _Block_copy(&aBlock);
        v34 = v25;
        v30 = v29;
        v31 = v35;
        sub_10001EC44(a4);

        [v21 setCompletionBlock:v30];
        _Block_release(v30);
        [v33 pushViewController:v19 animated:v37 & 1];
        [v21 commit];

LABEL_20:
        (*(v36 + 8))(v13, v9);
        sub_100003B90(v43);
        return;
      }
    }

    if (a4)
    {
      a4(0);
    }

    v32 = v35;

    goto LABEL_20;
  }

  sub_10006EDB8(&aBlock, sub_10006ED50);
  if (a4)
  {
    a4(0);
  }
}

uint64_t sub_10006E8A4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_100069650(&v23);
  if (!v25)
  {
    result = sub_10006EDB8(&v23, sub_10006ED50);
    if (!a4)
    {
      return result;
    }

    return a4(0);
  }

  sub_1000091BC(&v23, v29);
  v8 = *sub_10000BFFC(v29, v30);
  v9 = UIViewController.resolvedHealthStore.getter();
  if (!v9)
  {
    result = sub_100003B90(v29);
    if (!a4)
    {
      return result;
    }

    return a4(0);
  }

  v10 = *sub_10000BFFC(v29, v30);
  v11 = UIViewController.resolvedHealthStore.getter();
  if (!v11)
  {
    v11 = [objc_allocWithZone(HKHealthStore) init];
  }

  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for InternalSettingsViewController());
  v14 = sub_10002BCE4(v12);

  v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];
  v16 = objc_allocWithZone(type metadata accessor for InternalFeedItemListViewController());

  v17 = InternalFeedItemListViewController.init(contentKinds:)();
  [v15 pushViewController:v17 animated:a3 & 1];
  sub_10000ACE8(v29, &v23);
  sub_100009630(0, &qword_1000DBAB8);
  type metadata accessor for TabBarController();
  if (swift_dynamicCast())
  {
    v18 = v28;
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = v17;
    v26 = sub_10006F0A4;
    v27 = v19;
    *&v23 = _NSConcreteStackBlock;
    *(&v23 + 1) = 1107296256;
    v24 = sub_100008310;
    v25 = &unk_1000CF890;
    v20 = _Block_copy(&v23);
    sub_10001EC44(a4);
    v21 = v17;

    [v18 presentViewController:v15 animated:a3 & 1 completion:v20];

    _Block_release(v20);
    v15 = v18;
  }

  else
  {
    if (a4)
    {
      a4(0);
    }
  }

  return sub_100003B90(v29);
}

id sub_10006EB68(id result)
{
  if (!result)
  {
    return result;
  }

  result = [result collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = [result visibleCells];

  sub_100003DDC(0, &qword_1000DCCE0, UICollectionViewCell_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_5:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    type metadata accessor for DataTypeDetailChartCell();
    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_20;
    }
  }

  v9 = dispatch thunk of DataTypeDetailChartCell.chartViewController.getter();

  if (!v9)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_10006ECF8()
{
  if (!qword_1000DBB80)
  {
    type metadata accessor for Presentation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBB80);
    }
  }
}

void sub_10006ED50()
{
  if (!qword_1000DBAB0)
  {
    sub_100009630(255, &qword_1000DBAB8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBAB0);
    }
  }
}

uint64_t sub_10006EDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10006EE1C(id result)
{
  if (result)
  {
    result = [result collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v1 = result;
    v2 = [result visibleCells];

    sub_100003DDC(0, &qword_1000DCCE0, UICollectionViewCell_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
LABEL_25:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
LABEL_5:
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          type metadata accessor for DataTypeDetailChartCell();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v5;
          if (v8 == v4)
          {
            goto LABEL_26;
          }
        }

        v9 = dispatch thunk of DataTypeDetailChartCell.chartViewController.getter();
        if (v9)
        {
          v10 = v9;
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            v12 = v11;

            return v12;
          }
        }

        v13 = dispatch thunk of DataTypeDetailChartCell.chartViewController.getter();
        if (v13)
        {
          v14 = v13;
          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = [v15 chartController];

            return v16;
          }
        }

        else
        {
        }

        return 0;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

LABEL_26:

    return 0;
  }

  return result;
}

uint64_t sub_10006F020()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006F068()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

uint64_t sub_10006F0B8()
{
  sub_10007488C(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = v0;
  sub_1000749DC(v0, qword_1000E3EA0);
  sub_10005A254(v1, qword_1000E3EA0);
  return URL.init(string:)();
}

uint64_t sub_10006F14C()
{
  v1 = OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider;
  if (*(v0 + OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for HealthWelcomeFlowSignalProvider();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = HealthWelcomeFlowSignalProvider.init()();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10006F1C8()
{
  sub_1000039F4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  v1 = v0;
  sub_1000749DC(v0, qword_1000DD3B0);
  sub_10005A254(v1, qword_1000DD3B0);
  sub_100003DDC(0, &qword_1000DD4E0, NSUserDefaults_ptr);
  static NSUserDefaults.healthAppShared.getter();
  return UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
}

char *sub_10006F2C4(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for PluginAdvertisableFeatureSourceContext.DeviceSource();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScaleMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MicaAnimationView.Animation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC6Health21WelcomeViewController_animationView;
  if (qword_1000DA5A0 != -1)
  {
    swift_once();
  }

  v21 = sub_10005A254(v15, qword_1000E3EB8);
  (*(v16 + 16))(v19, v21, v15);
  (*(v11 + 104))(v14, enum case for ScaleMode.fit(_:), v10);
  v22 = objc_allocWithZone(type metadata accessor for MicaAnimationView());
  *&v2[v20] = MicaAnimationView.init(animation:inset:scaleMode:)();
  v23 = &v2[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler];
  *v23 = 0;
  v23[1] = 0;
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider] = 0;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] = 0;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged] = 0;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer] = 0;
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_cancellables] = &_swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] = 0;
  v24 = [objc_allocWithZone(HKHealthStore) init];
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore] = v24;
  v25 = type metadata accessor for CountryOracle();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v67 = v24;
  v28 = CountryOracle.init(mobileCountryCodeManagerProvider:)();
  v74 = v25;
  v75 = sub_100074E1C(&qword_1000DD4E8, 255, &type metadata accessor for CountryOracle);
  v73[0] = v28;
  (*(v64 + 104))(v66, enum case for PluginAdvertisableFeatureSourceContext.DeviceSource.activePairedDevice(_:), v65);
  v29 = type metadata accessor for HealthPluginAdvertisableFeatureManagerFactory();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = HealthPluginAdvertisableFeatureManagerFactory.init(healthStore:countryProvider:activeDeviceSource:queue:)();
  v33 = type metadata accessor for HealthAppNotificationManager();
  v34 = HealthAppNotificationManager.__allocating_init()();
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_notificationManager] = v34;
  v74 = v33;
  v75 = &off_1000CE550;
  v73[0] = v34;
  v66 = v34;
  v71 = v29;
  v72 = &protocol witness table for HealthPluginAdvertisableFeatureManagerFactory;
  *&v70 = v32;
  v65 = v32;
  type metadata accessor for HealthNotificationsWelcomeViewModel();
  v35 = swift_allocObject();
  v36 = sub_1000190A0(v73, v33);
  v37 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v39;
  *(v35 + 40) = v33;
  *(v35 + 48) = &off_1000CE550;
  *(v35 + 16) = v41;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 112) = 0;
  sub_100014D24(&v70, v35 + 56);
  swift_retain_n();

  sub_100003B90(v73);
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel] = v35;
  sub_1000748FC(v68, &v2[OBJC_IVAR____TtC6Health21WelcomeViewController_deepLinkCanceler], &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42 = String.init(localized:table:bundle:locale:comment:)();
  v44 = v43;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v46;
  v48 = String._bridgeToObjectiveC()();

  v73[0] = v42;
  v73[1] = v44;
  v49._countAndFlagsBits = 2570;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v50._countAndFlagsBits = v45;
  v50._object = v47;
  String.append(_:)(v50);

  v51 = String._bridgeToObjectiveC()();

  v52 = type metadata accessor for WelcomeViewController();
  v69.receiver = v2;
  v69.super_class = v52;
  v53 = objc_msgSendSuper2(&v69, "initWithTitle:detailText:icon:contentLayout:", v48, v51, 0, 1);

  v54 = v53;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v55 = [objc_opt_self() boldButton];
  [v55 addTarget:v54 action:"didTapNext:" forControlEvents:64];
  v56 = String._bridgeToObjectiveC()();

  [v55 setTitle:v56 forState:0];

  v57 = [v54 buttonTray];
  [v57 addButton:v55];

  v58 = v55;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v60 = HKUIJoinStringsForAutomationIdentifier();

  [v58 setAccessibilityIdentifier:v60];
  sub_100003DDC(0, &qword_1000DD4F0, HKCloudSyncObserver_ptr);
  v61 = *&v54[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
  v73[0] = static HKCloudSyncObserver.statusPublisher(for:)();
  *(swift_allocObject() + 16) = v54;
  sub_100074A8C();
  sub_100074E1C(&qword_1000DD518, 255, sub_100074A8C);
  v62 = v54;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_10007488C(0, &qword_1000DD520, &type metadata accessor for AnyCancellable, &type metadata accessor for Array);
  sub_100074B84(&qword_1000DD528, &qword_1000DD520, &type metadata accessor for AnyCancellable);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  sub_10000EFB4(v68, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
  return v62;
}

void sub_10006FE6C(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for WelcomeViewController();
  v8 = *a4;
  v9 = v12.receiver;
  v10 = objc_msgSendSuper2(&v12, v8, a3);
  v11 = *&v9[OBJC_IVAR____TtC6Health21WelcomeViewController_animationView];
  a5(v10);
}

void sub_10006FF80(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 showsBusyIndicator];
  v8 = UIViewController.resolvedHealthStore.getter();
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for CloudSyncStateObserver();
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v11 = objc_allocWithZone(v10);
    v12 = v9;
    v13 = CloudSyncStateObserver.init(healthStore:store:)();
    v14 = objc_allocWithZone(ACAccountStore);
    v15 = v13;
    v16 = [v14 init];
    type metadata accessor for CloudSyncBuddyAvailabilityProvider();
    swift_allocObject();
    v17 = sub_100057294(v15, v16);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100057524(v17, v18, a1, ObjectType);
  }

  else
  {
    static Logger.view.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      *&v26[0] = ObjectType;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = sub_1000036D0(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s]: Failed to resolve HKHealthStore", v21, 0xCu);
      sub_100003B90(v22);
    }

    (*(v4 + 8))(v7, v3);
    sub_100071A74();
  }
}

uint64_t sub_100070280(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a1;
  sub_10007488C(0, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  sub_100074C3C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100074CD4();
  v17 = v16;
  v35 = *(v16 - 8);
  v18 = *(v35 + 64);
  __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_100003DDC(0, &qword_1000DD4F0, HKCloudSyncObserver_ptr);
    v23 = *&v22[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
    v34 = a3;
    v24 = v23;
    v25 = static HKCloudSyncObserver.statusPublisher(for:)();
    v33 = a4;
    v26 = v25;

    v37 = v26;
    sub_100074A8C();
    sub_100074E1C(&qword_1000DD518, 255, sub_100074A8C);
    Publisher.first()();

    sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v37 = v27;
    v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    sub_100074E1C(&qword_1000DD568, 255, sub_100074C3C);
    sub_100074DA4();
    Publisher.receive<A>(on:options:)();
    sub_10000EFB4(v9, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional, sub_10007488C);

    (*(v12 + 8))(v15, v11);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v31 = v34;
    *(v30 + 16) = v34;
    *(v30 + 24) = v29;
    *(v30 + 32) = v36;
    *(v30 + 40) = v33;
    sub_100074E1C(&qword_1000DD578, 255, sub_100074CD4);
    v32 = v31;
    Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v20, v17);
    swift_beginAccess();
    sub_10007488C(0, &qword_1000DD520, &type metadata accessor for AnyCancellable, &type metadata accessor for Array);
    sub_100074B84(&qword_1000DD528, &qword_1000DD520, &type metadata accessor for AnyCancellable);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  return result;
}

void sub_1000707C4(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  [a2 hidesBusyIndicator];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = [v14 accountSupportsSecureContainer];
    }

    if ((a4 & 0xFE) == 2)
    {
      v17[OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged] = 1;
      v19 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController());
      sub_10006BE28(v18);
      v21 = v20;
      *&v20[qword_1000DD348 + 8] = &off_1000CF900;
      swift_unknownObjectWeakAssign();
      v22 = [v17 navigationController];
      if (!v22)
      {
LABEL_8:

        return;
      }

LABEL_7:
      v23 = v22;
      [v22 pushViewController:v21 animated:1];

      goto LABEL_8;
    }

    v17[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] = a4 & 1;
    if (a4)
    {
      if ((v15 & 1) == 0)
      {
        if (([v14 accountSupportsSecureContainer] & 1) == 0)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v17;
          *(v48 + 24) = a5;
          v49 = v17;
          sub_1000711E4(sub_100074FC4, v48);

          sub_10006644C(v14, 0);
          return;
        }

        sub_10006644C(v14, 0);
      }

      v24 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController());
      sub_10006BE28(v18);
      v21 = v25;
      *&v25[qword_1000DD348 + 8] = &off_1000CF900;
      swift_unknownObjectWeakAssign();
      v22 = [v17 navigationController];
      if (!v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    static Logger.view.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136315138;
      v30 = _typeName(_:qualified:)();
      v32 = sub_1000036D0(v30, v31, &v50);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Sync is disabled. Proceed to ask user if they want to turn on sync", v28, 0xCu);
      sub_100003B90(v29);
    }

    (*(v10 + 8))(v13, v9);
    v33 = *&v17[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
    v34 = objc_allocWithZone(_HKBehavior);
    v35 = v33;
    v36 = [v34 init];
    v37 = [v36 isiPad];

    if (v37)
    {
      v38 = objc_allocWithZone(type metadata accessor for WelcomeiPadHealthKitSyncViewController());
      v39 = v35;
      v40 = v17;
      sub_100059E48(v39, v17, &off_1000CF8C8, 0);
      v42 = v41;
    }

    else
    {
      v43 = objc_allocWithZone(type metadata accessor for CloudSyncWelcomeViewController());
      v44 = v35;
      v45 = v17;
      v42 = sub_10007CAB8(v44, v17, &off_1000CF8F0);
    }

    v46 = [v17 navigationController];
    if (v46)
    {
      v47 = v46;
      [v46 pushViewController:v42 animated:1];
    }

    else
    {
    }
  }
}

void sub_100070C88(int a1, void *a2, id a3, uint64_t a4)
{
  v51 = a4;
  LODWORD(v6) = a1;
  v7 = type metadata accessor for Logger();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  if (!a2 || (v55 = a2, swift_errorRetain(), sub_100009630(0, &qword_1000DB730), sub_100003DDC(0, &unk_1000DD530, NSError_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    static Logger.view.getter();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_1000036D0(v25, v26, &v55);
      v50 = v13;
      v28 = v6;
      v6 = v27;

      *(v24 + 4) = v6;
      *(v24 + 12) = 2080;
      v54 = a2;
      swift_errorRetain();
      sub_100055124(0, &qword_1000DD580, &qword_1000DB730);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000036D0(v29, v30, &v55);
      LOBYTE(v6) = v28;

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] Failed to repair device to device end to end encryption state with error: %s", v24, 0x16u);
      swift_arrayDestroy();

      (*(v52 + 8))(v50, v53);
    }

    else
    {

      (*(v52 + 8))(v13, v53);
    }

    goto LABEL_12;
  }

  v49 = a3;
  v50 = v13;
  v48 = v6;
  v47 = v54;
  v14 = [v54 underlyingErrors];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = 0;
  v17 = *(v15 + 16);
  while (v17 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      return;
    }

    v18 = v16 + 1;
    v19 = *(v15 + 8 * v16 + 32);
    swift_errorRetain();
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 code];

    v16 = v18;
    if (v21 == -7003)
    {

      a3 = v49;
      v13 = v50;
      LOBYTE(v6) = v48;
      goto LABEL_8;
    }
  }

  a3 = v49;
  v44 = [v49 navigationController];
  LOBYTE(v6) = v48;
  v13 = v50;
  if (v44)
  {
    v45 = v44;
    [v44 dismissViewControllerAnimated:1 completion:0];
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  static Logger.view.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = v6;
    v6 = swift_slowAlloc();
    v55 = v6;
    *v34 = 136315138;
    v36 = _typeName(_:qualified:)();
    v38 = sub_1000036D0(v36, v37, &v55);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%s] Account upgrade flow completed. Continuing to privacy info screen", v34, 0xCu);
    sub_100003B90(v6);
    LOBYTE(v6) = v35;
  }

  (*(v52 + 8))(v11, v53);
  v39 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController());
  sub_10006BE28(v6 & 1);
  v41 = v40;
  *&v40[qword_1000DD348 + 8] = &off_1000CF900;
  swift_unknownObjectWeakAssign();
  v42 = [a3 navigationController];
  if (v42)
  {
    v43 = v42;
    [v42 pushViewController:v41 animated:1];
  }
}

void sub_1000711E4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 primaryAccountAltDSID];

  if (!v7)
  {
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [objc_allocWithZone(UINavigationController) init];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [objc_opt_self() systemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = a1;
  v15[6] = a2;
  v18[4] = sub_100074C04;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100008310;
  v18[3] = &unk_1000CFB58;
  v16 = _Block_copy(v18);
  v17 = v11;

  [v2 presentViewController:v17 animated:1 completion:v16];
  _Block_release(v16);
}

void sub_1000713CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithAltDSID:v13];

  v15 = AKSecurityUpgradeContextGeneric;
  [v14 setSecurityUpgradeContext:AKSecurityUpgradeContextGeneric];
  [v14 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
  [v14 setDeviceToDeviceEncryptionUpgradeType:0];
  [v14 setSecurityUpgradeContext:v15];
  [v14 setForceInlinePresentation:1];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  [v14 setFeatureName:v16];

  [v14 setPresentingViewController:a3];
  v17 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:v14];
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  aBlock[4] = sub_100074C14;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  aBlock[3] = &unk_1000CFBA8;
  v19 = _Block_copy(aBlock);

  [v17 performDeviceToDeviceEncryptionStateRepairWithCompletion:v19];
  _Block_release(v19);
}

void sub_1000716AC(void *a1)
{
  v3 = [v1 contentView];
  [v3 addSubview:a1];

  v4 = [v1 contentView];
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  v7 = [v1 contentView];
  [v7 setClipsToBounds:1];

  v8 = [v5 systemBackgroundColor];
  [a1 setBackgroundColor:v8];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = objc_opt_self();
  sub_1000039F4(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000B02F0;
  v11 = [a1 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v10 + 32) = v14;
  v15 = [a1 leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v10 + 40) = v18;
  v19 = [a1 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v10 + 48) = v22;
  v23 = [a1 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v10 + 56) = v26;
  sub_100003DDC(0, &qword_1000DD2C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];
}

void sub_100071A74()
{
  v1 = [*&v0[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore] viewControllerFactory];
  v4 = [v1 createBuddyViewControllerWithHealthDetailsLast:0];

  [v4 setDelegate:v0];
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 pushViewController:v4 animated:1];
  }
}

uint64_t sub_100071B3C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a1;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = sub_1000749CC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CF9C8;
  v19 = _Block_copy(aBlock);
  sub_100044630(a2, a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074E1C(&qword_1000DAD40, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007488C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100074B84(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v24);
}

void sub_100071E80(void (*a1)(void), uint64_t a2, char a3, uint64_t a4)
{
  v31 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.view.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = a4;
    v17 = v16;
    v32[0] = v16;
    *v15 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_1000036D0(v18, v19, v32);

    *(v15 + 4) = v20;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] [TCC] Presenting notification authorization onboarding: %{BOOL}d", v15, 0x12u);
    sub_100003B90(v17);

    a1 = v30;
  }

  (*(v8 + 8))(v11, v7);
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v22 = Strong;
    v23 = *(Strong + OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel);
    v24 = *(Strong + OBJC_IVAR____TtC6Health21WelcomeViewController_notificationManager);
    objc_allocWithZone(type metadata accessor for HealthNotificationsWelcomeViewController());

    v25 = sub_100087A20(v23, v24);
    *&v25[qword_1000DDF88 + 8] = &off_1000CF8B8;
    swift_unknownObjectWeakAssign();
    v26 = [v22 navigationController];
    if (v26)
    {
      v27 = v26;
      [v26 pushViewController:v25 animated:1];
    }
  }

  else
  {
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (!v28)
    {
      goto LABEL_11;
    }

    v22 = v28;
    sub_100072160();
  }

LABEL_11:
  if (a1)
  {
    a1();
  }
}

uint64_t sub_100072160()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007488C(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = objc_opt_self();
  [v14 setHasCompletedBuddyWithVersion:kHKHAKeyCurrentBuddyVersion];
  if (v0[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] == 1)
  {
    sub_100003DDC(0, &qword_1000DD4E0, NSUserDefaults_ptr);
    v15 = static NSUserDefaults.healthAppShared.getter();
    [v15 setBool:1 forKey:kHKHealthShowHealthDetailsTile];
  }

  [v14 setForceBuddy:{0, v23}];
  sub_10006F14C();
  Date.init()();
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  dispatch thunk of HealthWelcomeFlowSignalProvider.healthWelcomeFlowCompletionDate.setter();

  v17 = *&v1[OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider];

  dispatch thunk of HealthWelcomeFlowSignalProvider.shouldShowHealthWelcomeFlowOnNextLaunch.setter();

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  aBlock[4] = sub_100074BF4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CFAB8;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074E1C(&qword_1000DAD40, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007488C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100074B84(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v23);
}

void sub_100072608(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_100074BFC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100008310;
  v5[3] = &unk_1000CFB08;
  v3 = _Block_copy(v5);
  v4 = a1;

  [v4 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_1000726E8(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler + 8);

    v1(v3);

    return sub_10001A394(v1);
  }

  return result;
}

id sub_100072780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000728B4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v11 = 2;
  v10[3] = type metadata accessor for AnalyticsSender();
  v10[4] = &protocol witness table for AnalyticsSender;
  v10[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v10);
  v6 = *(v2 + OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v8[5] = ObjectType;

  sub_100044CD0(sub_1000756F8, v8);
}

void sub_100072A64(void *a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 profileIdentifier];
  v8 = [v7 type];

  if (v8 == 1)
  {
    static Logger.view.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_1000036D0(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] Sending notification that the primary profile name was updated", v11, 0xCu);
      sub_100003B90(v12);
    }

    (*(v3 + 8))(v6, v2);
    static NSNotificationName.primaryProfileNameWasUpdated.getter();
    v16 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
    v17 = PostNotificationOperation.init(name:userInfo:)();
    sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
    v18 = static NSOperationQueue.userInitiated.getter();
    [v18 addOperation:v17];
  }
}

void sub_100072D1C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "CloudSync buddy continued with enable cloud sync: %{BOOL}d", v11, 8u);
  }

  (*(v5 + 8))(v8, v4);
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] = a1 & 1;
  if (a1)
  {
    v2[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] = 1;
    if ((v2[OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer] & 1) == 0)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v2;
      v13 = v2;
      sub_1000711E4(sub_100074BDC, v12);

      return;
    }
  }

  else
  {
    v14 = [objc_opt_self() sharedBehavior];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [v14 isiPad];

    if (v16)
    {
      v2[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] = 1;
    }
  }

  v17 = v2[OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer];
  v18 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController());
  sub_10006BE28(v17);
  v20 = v19;
  *&v19[qword_1000DD348 + 8] = &off_1000CF900;
  swift_unknownObjectWeakAssign();
  v21 = [v2 navigationController];
  if (v21)
  {
    v22 = v21;
    [v21 pushViewController:v20 animated:1];
  }
}

void sub_100072FCC(char a1, uint64_t a2, void *a3)
{
  v5 = &off_1000D7000;
  if (a2)
  {
    swift_errorRetain();
    sub_100009630(0, &qword_1000DB730);
    sub_100003DDC(0, &unk_1000DD530, NSError_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v21 underlyingErrors];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }

        v10 = v8 + 1;
        v11 = *(v7 + 8 * v8 + 32);
        swift_errorRetain();
        v12 = _convertErrorToNSError(_:)();
        v13 = [v12 code];

        v8 = v10;
        if (v13 == -7003)
        {

          v5 = &off_1000D7000;
          goto LABEL_11;
        }
      }

      v5 = &off_1000D7000;
      v14 = [a3 navigationController];
      if (v14)
      {
        v15 = v14;
        [v14 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

LABEL_11:
  v16 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController());
  sub_10006BE28(a1 & 1);
  v18 = v17;
  *&v17[qword_1000DD348 + 8] = &off_1000CF900;
  swift_unknownObjectWeakAssign();
  v19 = [a3 v5[161]];
  if (v19)
  {
    v20 = v19;
    [v19 pushViewController:v18 animated:1];
  }
}

void sub_1000731F4(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v76 = a1;
  ObjectType = swift_getObjectType();
  sub_1000747EC();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007488C(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v74 - v15;
  v17 = type metadata accessor for CloudSyncRestoreState();
  v18 = *(v17 - 8);
  v78 = v17;
  v79 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v77 = &v74 - v23;
  sub_1000039F4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v29 = &v74 - v28;
  if (qword_1000DA598 != -1)
  {
    swift_once();
  }

  v30 = sub_10005A254(v25, qword_1000DD3B0);
  (*(v26 + 16))(v29, v30, v25);
  UserDefault.wrappedValue.getter();
  (*(v26 + 8))(v29, v25);
  if (v81 != 1)
  {
    goto LABEL_6;
  }

  sub_1000748FC(a2, v16, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
  v32 = v78;
  v31 = v79;
  v33 = *(v79 + 48);
  if (v33(v16, 1, v78) == 1)
  {
    sub_10000EFB4(v16, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
LABEL_6:
    v34 = *&v3[OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v37 = ObjectType;
    v36[4] = v35;
    v36[5] = v37;

    sub_100044CD0(sub_1000748F0, v36);

    return;
  }

  v75 = v3;
  v38 = v77;
  (*(v31 + 32))(v77, v16, v32);
  v39 = *(v6 + 48);
  sub_1000748FC(v76, v9, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
  v76 = *(v31 + 16);
  v76(&v9[v39], v38, v32);
  if (v33(v9, 1, v32) != 1)
  {
    sub_1000748FC(v9, v14, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
    v49 = *(v31 + 88);
    v50 = v49(v14, v32);
    v51 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
    v42 = v75;
    if (v50 == enum case for CloudSyncRestoreState.activelyRestoring(_:))
    {
      v52 = v49(&v9[v39], v32);
      v41 = v32;
      if (v52 != enum case for CloudSyncRestoreState.failed(_:) && v52 != enum case for CloudSyncRestoreState.completed(_:))
      {
        goto LABEL_30;
      }

      sub_10000EFB4(v9, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
      v53 = v77;
      v76(v22, v77, v32);
      v54 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingStateViewController());
      v55 = sub_10005A93C(v22);
      *&v55[qword_1000DC808 + 8] = &off_1000CF8E0;
      swift_unknownObjectWeakAssign();
      v56 = [v42 navigationController];
      if (v56)
      {
        v57 = v56;
        [v56 pushViewController:v55 animated:1];

        (*(v79 + 8))(v53, v41);
        return;
      }

      (*(v79 + 8))(v53, v32);
LABEL_33:

      return;
    }

    if (v50 != enum case for CloudSyncRestoreState.failed(_:) && v50 != enum case for CloudSyncRestoreState.transientFailure(_:))
    {
      v41 = v78;
      (*(v79 + 8))(v14, v78);
      goto LABEL_30;
    }

    v58 = &v9[v39];
    v41 = v78;
    if (v49(v58, v78) != v51)
    {
LABEL_30:
      v70 = *&v42[OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel];
      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = swift_allocObject();
      v72[2] = 0;
      v72[3] = 0;
      v73 = ObjectType;
      v72[4] = v71;
      v72[5] = v73;

      sub_100044CD0(sub_1000756F8, v72);

      (*(v79 + 8))(v77, v41);

      sub_100074970(v9);
      return;
    }

    sub_10000EFB4(v9, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
    v59 = [v42 navigationController];
    if (v59 && (v60 = v59, v61 = [v59 previousViewController], v60, v61) && (type metadata accessor for CloudSyncDownloadingViewController(), v62 = swift_dynamicCastClass(), v61, v62))
    {
      v63 = [v42 navigationController];
      if (v63)
      {
        v64 = v63;
      }
    }

    else
    {
      v65 = *&v42[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
      v66 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingViewController());
      sub_1000861DC(v65);
      v55 = v67;
      *&v67[qword_1000DDEF8 + 8] = &off_1000CF8E0;
      swift_unknownObjectWeakAssign();
      v68 = [v42 navigationController];
      if (!v68)
      {
        (*(v79 + 8))(v77, v41);
        goto LABEL_33;
      }

      v69 = v68;
      [v68 pushViewController:v55 animated:1];
    }

    (*(v79 + 8))(v77, v41);
    return;
  }

  v40 = (*(v31 + 88))(&v9[v39], v32);
  v41 = v32;
  v42 = v75;
  if (v40 != enum case for CloudSyncRestoreState.activelyRestoring(_:))
  {
    goto LABEL_30;
  }

  v43 = *&v75[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
  v44 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingViewController());
  sub_1000861DC(v43);
  v46 = v45;
  *&v45[qword_1000DDEF8 + 8] = &off_1000CF8E0;
  swift_unknownObjectWeakAssign();
  v47 = [v42 navigationController];
  if (v47)
  {
    v48 = v47;
    [v47 pushViewController:v46 animated:1];

    (*(v79 + 8))(v77, v41);
  }

  else
  {
    (*(v79 + 8))(v77, v32);
  }

  sub_10000EFB4(v9, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
}

void sub_100073CE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for Logger();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v77);
  v85 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v91 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v69 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v76 = &v68 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - v18;
  __chkstk_darwin(v17);
  v95 = &v68 - v20;
  v83 = v1;
  v21 = *&v1[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
  v22 = type metadata accessor for AdvertisableFeaturePostCommitWorkItemViewControllerFactory();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = v21;
  v72 = AdvertisableFeaturePostCommitWorkItemViewControllerFactory.init(healthStore:)();
  v27 = *(a1 + 16);
  if (!v27)
  {
    goto LABEL_19;
  }

  v86 = 0;
  v71 = 0;
  v30 = *(v11 + 16);
  v29 = v11 + 16;
  v28 = v30;
  v82 = OBJC_IVAR____TtC6Health21WelcomeViewController_deepLinkCanceler;
  v31 = (a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64)));
  v32 = *(v29 + 56);
  v89 = (v29 + 72);
  v90 = v32;
  v88 = enum case for AdvertisableFeaturePostCommitWorkItem.cancelPendingHealthAppDeepLinkIfPresent(_:);
  v33 = (v29 - 8);
  v74 = (v3 + 8);
  v93 = v29;
  v80 = (v7 + 32);
  v81 = (v29 + 80);
  v79 = (v7 + 8);
  *&v26 = 136315394;
  v68 = v26;
  v87 = v6;
  v34 = v91;
  v35 = v95;
  v75 = v19;
  v92 = v30;
  v94 = v33;
  do
  {
    v36 = v10;
    v37 = v28;
    v28(v35, v31, v10);
    v37(v19, v35, v10);
    v38 = (*v89)(v19, v10);
    if (v38 == v88)
    {
      (*v81)(v19, v10);
      (*v80)(v34, v19, v6);
      v39 = v6;
      sub_1000748FC(v83 + v82, v96, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
      v40 = v97;
      v41 = v94;
      if (v97)
      {
        v42 = v98;
        sub_10000BFFC(v96, v97);
        v43 = *(v42 + 8);
        v44 = v42;
        v39 = v87;
        v43(v91, v40, v44);
        v34 = v91;
        (*v79)(v91, v39);
        v35 = v95;
        (*v41)(v95, v10);
        sub_100003B90(v96);
      }

      else
      {
        (*v79)(v34, v6);
        v35 = v95;
        (*v41)(v95, v10);
        sub_10000EFB4(v96, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
      }

      v6 = v39;
    }

    else
    {
      v45 = v94;
      if (v86)
      {
        v84 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        static Logger.advertisableFeatures.getter();
        v46 = v76;
        v47 = v92;
        v92(v76, v95, v10);
        v48 = Logger.logObject.getter();
        v78 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v48, v78))
        {
          v49 = swift_slowAlloc();
          v73 = v48;
          v50 = v49;
          v96[0] = swift_slowAlloc();
          *v50 = v68;
          v51 = _typeName(_:qualified:)();
          v53 = sub_1000036D0(v51, v52, v96);

          *(v50 + 4) = v53;
          *(v50 + 12) = 2080;
          v47(v69, v46, v36);
          v54 = String.init<A>(describing:)();
          v56 = v55;
          v57 = *v94;
          (*v94)(v46, v36);
          v58 = sub_1000036D0(v54, v56, v96);
          v10 = v36;

          *(v50 + 14) = v58;
          v59 = v73;
          _os_log_impl(&_mh_execute_header, v73, v78, "[%s] Attempted to make view controller for %s but no already created a different view controller", v50, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v57 = *v45;
          (*v45)(v46, v10);
        }

        (*v74)(v85, v77);
        v57(v95, v36);
        v19 = v75;
      }

      else
      {
        v60 = v95;
        v86 = dispatch thunk of AdvertisableFeaturePostCommitWorkItemViewControllerFactory.makeViewController(for:)();
        v71 = v61;
        v57 = *v45;
        v62 = v60;
        v10 = v36;
        (*v45)(v62, v36);
      }

      v57(v19, v10);
      v6 = v87;
      v34 = v91;
      v35 = v95;
    }

    v31 += v90;
    --v27;
    v28 = v92;
  }

  while (v27);
  v63 = v86;
  if (v86)
  {
    swift_getObjectType();
    sub_100074E1C(&unk_1000DD4B0, v64, type metadata accessor for WelcomeViewController);
    v65 = v83;
    swift_unknownObjectRetain();
    dispatch thunk of AdvertisableFeaturePostCommitWorkItemViewController.navigationDelegate.setter();
    v66 = [v65 navigationController];
    if (v66)
    {
      v67 = v66;
      [v66 pushViewController:v63 animated:1];

      return;
    }
  }

  else
  {
LABEL_19:
    sub_100072160();
  }
}

id sub_1000745A0()
{
  v0 = type metadata accessor for MicaAnimationView.Animation();
  sub_1000749DC(v0, qword_1000E3EB8);
  sub_10005A254(v0, qword_1000E3EB8);
  return sub_1000745EC();
}

id sub_1000745EC()
{
  v0 = type metadata accessor for MicaAnimationView.Animation.AnimationStateWithDuration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    [result isiPad];

    type metadata accessor for WelcomeViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    *v4 = xmmword_1000B03D0;
    (*(v1 + 104))(v4, enum case for MicaAnimationView.Animation.AnimationStateWithDuration.one(_:), v0);
    return MicaAnimationView.Animation.init(name:bundle:supportsDarkMode:supportsRightToLeft:supportsNumberingSystems:supportsPad:maxStateWithDurations:maxLoopCount:initialDelay:restartLoopDuration:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000747C0()
{
  v0 = HKPreferredRegulatoryDomainProvider();

  return v0;
}

void sub_1000747EC()
{
  if (!qword_1000DD4C8)
  {
    sub_10007488C(255, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    type metadata accessor for CloudSyncRestoreState();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD4C8);
    }
  }
}

void sub_10007488C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000748FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_100074970(uint64_t a1)
{
  sub_1000747EC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1000749DC(uint64_t a1, uint64_t *a2)
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

id sub_100074A40(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
    result = [*a1 accountSupportsSecureContainer];
  }

  *(v2 + OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer) = result;
  return result;
}

void sub_100074A8C()
{
  if (!qword_1000DD4F8)
  {
    sub_100074AF4();
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD4F8);
    }
  }
}

void sub_100074AF4()
{
  if (!qword_1000DD500)
  {
    sub_100003DDC(255, &unk_1000DD508, HKCloudSyncObserverStatus_ptr);
    sub_100009630(255, &qword_1000DB730);
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD500);
    }
  }
}

uint64_t sub_100074B84(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_10007488C(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100074C14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100074C3C()
{
  if (!qword_1000DD558)
  {
    sub_100074A8C();
    sub_100074E1C(&qword_1000DD518, 255, sub_100074A8C);
    v0 = type metadata accessor for Publishers.First();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD558);
    }
  }
}

void sub_100074CD4()
{
  if (!qword_1000DD560)
  {
    sub_100074C3C();
    sub_100003DDC(255, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    sub_100074E1C(&qword_1000DD568, 255, sub_100074C3C);
    sub_100074DA4();
    v0 = type metadata accessor for Publishers.ReceiveOn();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD560);
    }
  }
}

unint64_t sub_100074DA4()
{
  result = qword_1000DD570;
  if (!qword_1000DD570)
  {
    sub_100003DDC(255, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD570);
  }

  return result;
}

uint64_t sub_100074E1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100074E64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000748FC(a2, v16, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
  v7 = objc_allocWithZone(type metadata accessor for WelcomeViewController());
  v8 = sub_10006F2C4(v16);
  v9 = &v8[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler];
  v10 = *&v8[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler];
  v11 = *&v8[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler + 8];
  *v9 = a3;
  *(v9 + 1) = a4;
  sub_100044630(a3, a4);
  sub_10001A394(v10);
  v12 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v8];
  [v12 setModalInPresentation:1];
  [a1 presentViewController:v12 animated:1 completion:0];
  v13 = type metadata accessor for AnalyticsSender();
  v14 = static AnalyticsSender.shared.getter();
  v16[3] = v13;
  v16[4] = &protocol witness table for AnalyticsSender;
  v16[0] = v14;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();

  return sub_100003B90(v16);
}

void sub_100074FCC()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  if (v0[OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged] == 1 || (v10 = [objc_allocWithZone(_HKBehavior) init], v11 = objc_msgSend(v10, "isiPad"), v10, !v11))
  {

    sub_100071A74();
  }

  else
  {
    v36 = v0;
    if (v0[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] == 1)
    {
      static Logger.view.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v37 = v15;
        *v14 = 136315138;
        v16 = _typeName(_:qualified:)();
        v18 = sub_1000036D0(v16, v17, &v37);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%s] cloudsync is enabled, showing the data downloading vc", v14, 0xCu);
        sub_100003B90(v15);
      }

      (*(v3 + 8))(v9, v2);
      v19 = v36;
      v20 = *&v36[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
      v21 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingViewController());
      sub_1000861DC(v20);
      v23 = v22;
      *&v22[qword_1000DDEF8 + 8] = &off_1000CF8E0;
      swift_unknownObjectWeakAssign();
      v24 = [v19 navigationController];
      if (v24)
      {
        v25 = v24;
        [v24 pushViewController:v23 animated:1];
      }
    }

    else
    {
      static Logger.view.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37 = v29;
        *v28 = 136315138;
        v30 = _typeName(_:qualified:)();
        v32 = sub_1000036D0(v30, v31, &v37);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%s] cloudsync is disabled, skipping to the notifications or complete vc", v28, 0xCu);
        sub_100003B90(v29);
      }

      (*(v3 + 8))(v7, v2);
      v33 = *&v36[OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel];
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v34;
      v35[5] = ObjectType;

      sub_100044CD0(sub_1000756F8, v35);
    }
  }
}

void sub_100075434()
{
  v1 = v0;
  v2 = type metadata accessor for ScaleMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MicaAnimationView.Animation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6Health21WelcomeViewController_animationView;
  if (qword_1000DA5A0 != -1)
  {
    swift_once();
  }

  v13 = sub_10005A254(v7, qword_1000E3EB8);
  (*(v8 + 16))(v11, v13, v7);
  (*(v3 + 104))(v6, enum case for ScaleMode.fit(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for MicaAnimationView());
  *(v1 + v12) = MicaAnimationView.init(animation:inset:scaleMode:)();
  v15 = (v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_cancellables) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000756A0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t type metadata accessor for ProfileDataSource()
{
  result = qword_1000DD588;
  if (!qword_1000DD588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100075798(void *a1, char a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = v7;
      v11 = objc_opt_self();
      v12 = [v11 healthSettingsMedicalIDSpecifier];
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
      }

      v13 = [v11 internalHealthSettingsURLTo:v12];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = [objc_opt_self() defaultWorkspace];
      if (v14)
      {
        v16 = v14;
        URL._bridgeToObjectiveC()(v15);
        v18 = v17;
        sub_1000689C0(_swiftEmptyArrayStorage);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v16 openSensitiveURL:v18 withOptions:isa];
      }

      (*(v5 + 8))(v9, v10);
    }

    else
    {
      [objc_allocWithZone(HKHealthStore) init];
      v25 = objc_allocWithZone(type metadata accessor for HealthDetailsViewController());
      v26 = HealthDetailsViewController.init(healthStore:inEditMode:)();
      v28 = [objc_allocWithZone(HKModalNavigationController) initWithRootViewController:v26];
      [a1 presentViewController:v28 animated:1 completion:0];

      v27 = v28;
    }
  }

  else
  {
    v20 = [objc_allocWithZone(HKHealthStore) init];
    v21 = type metadata accessor for PinnedContentManager();
    v22 = v20;
    v23 = PinnedContentManager.__allocating_init(healthStore:domain:)();
    type metadata accessor for ProfileViewController();
    v29[3] = v21;
    v29[4] = &protocol witness table for PinnedContentManager;
    v29[0] = v23;

    v24 = static ProfileViewController.makeProfileNavigationController(healthStore:pinnedContentManager:configurator:)();
    sub_100003B90(v29);
    [a1 presentViewController:v24 animated:1 completion:0];
  }
}

uint64_t sub_100075AF8()
{
  v58 = type metadata accessor for SectionedDataSourceContainerViewType();
  v0 = *(v58 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v58);
  v57 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FCC4(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v56 = v41 - v5;
  v55 = type metadata accessor for CellDeselectionBehavior();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v54 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ContentConfigurationItem();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v53);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UUID();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v61);
  v60 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FCC4(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v16 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v17 = *(v16 + 72);
  v41[1] = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000AE100;
  v66 = _swiftEmptyArrayStorage;
  sub_10007C55C(0, 3, 0);
  v18 = v66;
  v19 = objc_opt_self();
  v20 = 0;
  v51 = 0x80000001000A8FB0;
  v52 = v19;
  v50 = 0x80000001000A8FD0;
  v59 = (v13 + 8);
  v49 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v48 = (v6 + 104);
  v47 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v46 = (v0 + 104);
  v45 = (v9 + 16);
  v44 = (v9 + 8);
  do
  {
    v21 = *(&off_1000CC1B8 + v20 + 32);
    *(swift_allocObject() + 16) = v21;
    v22 = v60;
    UUID.init()();
    UUID.uuidString.getter();
    v43 = *v59;
    v43(v22, v61);
    v64 = type metadata accessor for UIListContentConfiguration();
    v65 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&v63);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v23 = [v52 tintColor];
    v24 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v24(v62, 0);

    v26 = v54;
    v25 = v55;
    *v54 = 1;
    (*v48)(v26, v49, v25);
    v27 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v27 - 8) + 56))(v56, 1, 1, v27);
    (*v46)(v57, v47, v58);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v66 = v18;
    v29 = v18[2];
    v28 = v18[3];
    if (v29 >= v28 >> 1)
    {
      sub_10007C55C((v28 > 1), v29 + 1, 1);
    }

    ++v20;
    v30 = v53;
    v64 = v53;
    v65 = sub_100076500(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
    v31 = sub_10000AD4C(&v63);
    (*v45)(v31, v12, v30);
    v18 = v66;
    v66[2] = v29 + 1;
    sub_100014D24(&v63, &v18[5 * v29 + 4]);
    (*v44)(v12, v30);
  }

  while (v20 != 3);
  v32 = v60;
  UUID.init()();
  UUID.uuidString.getter();
  v33 = v61;
  v34 = v43;
  v43(v32, v61);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  *&v63 = 0x3C53447961727241;
  *(&v63 + 1) = 0xE800000000000000;
  UUID.init()();
  v35 = UUID.uuidString.getter();
  v37 = v36;
  v34(v32, v33);
  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 62;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

unint64_t sub_100076398@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_100076414(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_100076474(uint64_t a1)
{
  *(a1 + 8) = sub_100076500(&qword_1000DD5D8, type metadata accessor for ProfileDataSource);
  result = sub_100076500(&qword_1000DD5E0, type metadata accessor for ProfileDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100076500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource()
{
  result = qword_1000DD5E8;
  if (!qword_1000DD5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_1000765D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v49 = type metadata accessor for CellDeselectionBehavior();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v48 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ContentConfigurationItem();
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v47);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v14;
    }

    v56 = _swiftEmptyArrayStorage;
    result = sub_10007C53C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v14 = v56;
    v45 = a2;
    v46 = a1 & 0xC000000000000001;
    v36 = v4;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = (v7 + 8);
    v41 = (v7 + 104);
    v39 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
    v38 = v51 + 32;
    v43 = v12;
    v44 = a1;
    v42 = i;
    v17 = v12;
    while (!__OFADD__(v16, 1))
    {
      v52 = v16 + 1;
      if (v46)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v37 + 16))
        {
          goto LABEL_19;
        }

        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 localization];
      v21 = [v20 displayName];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v54 = v22;
      v55 = v24;
      v25 = *v45;

      v26 = sub_100077B1C(v22, v24, v25);

      if (v26)
      {
        v53._countAndFlagsBits = 10272;
        v53._object = 0xE200000000000000;
        v27 = [v19 displayTypeIdentifierString];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31._countAndFlagsBits = v28;
        v31._object = v30;
        String.append(_:)(v31);

        v32._countAndFlagsBits = 41;
        v32._object = 0xE100000000000000;
        String.append(_:)(v32);
        String.append(_:)(v53);
      }

      else
      {

        sub_10007979C(&v53._countAndFlagsBits, v22, v24);
      }

      a2 = swift_allocObject();
      v33 = v49;
      *(a2 + 16) = v50;
      *(a2 + 24) = v19;
      v12 = v48;
      *v48 = 1;
      (*v41)(v12, v39, v33);
      v34 = v19;
      static ContentConfigurationItem.makeDisclosureItem(text:automationIdentifier:cellSelectionHandler:deselectionBehavior:)();

      (*v40)(v12, v33);

      v56 = v14;
      v4 = v14[2];
      v35 = v14[3];
      v7 = v4 + 1;
      a1 = v44;
      if (v4 >= v35 >> 1)
      {
        sub_10007C53C(v35 > 1, v4 + 1, 1);
        v14 = v56;
      }

      v14[2] = v7;
      (*(v51 + 32))(v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v4, v17, v47);
      ++v16;
      if (v52 == v42)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_100076A84()
{
  v1 = *v0;
  v76 = v0;
  *&v77 = v1;
  v2 = type metadata accessor for SectionedDataSourceContainerViewType();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  __chkstk_darwin(v2);
  v73 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100078720(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v72 = v60 - v7;
  v71 = type metadata accessor for CellDeselectionBehavior();
  v67 = *(v71 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v71);
  v63 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100078720(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v60 - v12;
  v64 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v62 = *(v64 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v64);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v68 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v26;
  v79 = type metadata accessor for ContentConfigurationItem();
  v65 = *(v79 - 8);
  v80 = v65;
  v27 = *(v65 + 64);
  __chkstk_darwin(v79);
  v78 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_allocObject();
  *(v61 + 16) = v77;
  UUID.init()();
  v60[1] = UUID.uuidString.getter();
  v60[0] = v29;
  v30 = *(v23 + 8);
  v69 = v23 + 8;
  v70 = v30;
  v30(v26, v22);
  v82[3] = type metadata accessor for UIListContentConfiguration();
  v82[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v82);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v31 = [objc_opt_self() labelColor];
  v32 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v32(v81, 0);
  sub_100078720(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v33 = *(type metadata accessor for UICellAccessory() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v77 = xmmword_1000AE100;
  *(v36 + 16) = xmmword_1000AE100;
  (*(v18 + 104))(v21, enum case for UICellAccessory.DisplayedState.always(_:), v17);
  v37 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v62 + 8))(v16, v64);
  (*(v18 + 8))(v21, v17);
  (*(v67 + 104))(v63, enum case for CellDeselectionBehavior.default(_:), v71);
  v38 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v38 - 8) + 56))(v72, 1, 1, v38);
  (*(v74 + 104))(v73, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v75);
  v39 = v78;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_100078720(0, &qword_1000DB6C0, &type metadata accessor for ContentConfigurationItem, &type metadata accessor for _ContiguousArrayStorage);
  v40 = *(v65 + 72);
  v41 = v80;
  v42 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v77;
  v44 = v39;
  v45 = v79;
  (*(v41 + 16))(v43 + v42, v44, v79);
  sub_100078720(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v46 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  *(swift_allocObject() + 16) = v77;
  sub_10009C004(v43);
  swift_setDeallocating();
  v49 = *(v41 + 8);
  v80 = v41 + 8;
  *&v77 = v49;
  v49(v43 + v42, v45);
  swift_deallocClassInstance();
  v50 = v66;
  UUID.init()();
  UUID.uuidString.getter();
  v51 = v68;
  v52 = v70;
  v70(v50, v68);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v82[0] = 0x3C53447961727241;
  v82[1] = 0xE800000000000000;
  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  v52(v50, v51);
  v56._countAndFlagsBits = v53;
  v56._object = v55;
  String.append(_:)(v56);

  v57._countAndFlagsBits = 62;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v58 = ArrayDataSource.init(arrangedSections:identifier:)();
  (v77)(v78, v79);
  return v58;
}

void sub_1000774C4(void *a1)
{
  v4 = sub_100077544();
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 pushViewController:v4 animated:1];
  }
}

id sub_100077544()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArrayDataSourceSection();
  v42 = *(v7 - 8);
  v8 = v42;
  v43 = v7;
  v9 = *(v42 + 64);
  __chkstk_darwin(v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &_swiftEmptySetSingleton;
  v12 = sub_10007A738();
  v13 = sub_1000765D4(v12, &v47, v1);

  v41[1] = v13;
  sub_10009C004(v13);
  UUID.init()();
  UUID.uuidString.getter();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v15 = v42;
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  sub_100078720(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v16 = *(v8 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v44 = xmmword_1000AE100;
  *(v18 + 16) = xmmword_1000AE100;
  v19 = v18 + v17;
  v20 = v43;
  (*(v15 + 16))(v19, v11, v43);
  v45 = 0x3C53447961727241;
  v46 = 0xE800000000000000;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  v14(v6, v2);
  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 62;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26 = type metadata accessor for ArrayDataSource();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  ArrayDataSource.init(arrangedSections:identifier:)();
  v29 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();

  sub_100013E70();
  v30 = swift_allocObject();
  *(v30 + 16) = v44;
  v31 = sub_10007AA58(&qword_1000DD648, sub_10007AAA0);
  *(v30 + 32) = v29;
  *(v30 + 40) = v31;
  v32 = type metadata accessor for CompoundSectionedDataSource();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  CompoundSectionedDataSource.init(_:)();
  v35 = objc_allocWithZone(type metadata accessor for CompoundDataSourceCollectionViewController());

  v36 = CompoundDataSourceCollectionViewController.init(dataSource:)();
  v37 = String._bridgeToObjectiveC()();
  [v36 setTitle:v37];

  v38 = SnapshotDataSource<>.createCompositionalLayoutFromDataSource(errorHandler:)();
  result = [v36 collectionView];
  if (result)
  {
    v40 = result;

    [v40 setCollectionViewLayout:v38 animated:0];

    (*(v15 + 8))(v11, v20);

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100077A08(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 localization];
  v4 = [v3 displayName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v2 localization];
  v9 = [v8 displayName];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_100077B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100077C14(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DataTypeDetailConfiguration.Context();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 objectType];
  UIViewController.resolvedHealthExperienceStore.getter();
  v12 = UIViewController.resolvedHealthStore.getter();
  if (v12)
  {
    v13 = v12;
    v21[4] = a1;
    v21[5] = v4;
    UIViewController.resolvedPinnedContentManager.getter();
    sub_10000ACE8(v26, v24);
    sub_10000ACE8(v25, v23);
    v14 = v13;
    DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)();
    v15 = type metadata accessor for MainActor();
    __chkstk_darwin(v15);
    v21[-4] = v11;
    v21[-3] = v10;
    v21[-2] = a2;
    sub_10007DF1C(sub_10007AE64, &v21[-6]);

    sub_100003B90(v25);
    sub_100003B90(v26);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v16 = [a1 displayTypeIdentifierString];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_10007AB2C(v17, v19, a2);

    return sub_100003B90(v26);
  }
}

uint64_t sub_1000780F4()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v5 = ListLayoutConfiguration.layout(for:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1000781C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for HKTDataTypeDetailFactory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKTDataTypeDetailFactory.init()();
  v10 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)();
  if (!v3)
  {
    v11 = v10;
    [a3 showViewController:v10 sender:0];
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000782E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v28 = 0xD00000000000001FLL;
  v29 = 0x80000001000A91A0;
  v14._countAndFlagsBits = a2;
  v14._object = a3;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x20726F6620;
  v15._object = 0xE500000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a4;
  v16._object = a5;
  String.append(_:)(v16);
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 hk_tapToHealthRadarURLWithTitle:v18 description:v19 classification:7 reproducibility:0 keywords:0 autoDiagnostics:0 attachments:0];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = [objc_opt_self() defaultWorkspace];
  if (v21)
  {
    v23 = v21;
    URL._bridgeToObjectiveC()(v22);
    v25 = v24;
    sub_1000689C0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 openSensitiveURL:v25 withOptions:isa];
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1000785C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10007863C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10007869C(uint64_t a1)
{
  *(a1 + 8) = sub_10007AA58(&qword_1000DD638, type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource);
  result = sub_10007AA58(&qword_1000DD640, type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource);
  *(a1 + 24) = result;
  return result;
}

void sub_100078720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007878C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000341B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100078808(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100078808(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003DDC(0, &qword_1000DD658, HKDisplayType_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100078AD4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_10007891C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007891C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localization];
      v11 = [v10 displayName];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [v9 localization];
      v16 = [v15 displayName];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100078AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a3 + 8);
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_104:
    v6 = v5;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
LABEL_107:
      v124 = v101;
      v4 = *(v101 + 2);
      if (v4 >= 2)
      {
        while (*v6)
        {
          v102 = *&v101[16 * v4];
          v103 = v101;
          v104 = *&v101[16 * v4 + 24];
          sub_10007930C((*v6 + 8 * v102), (*v6 + 8 * *&v101[16 * v4 + 16]), (*v6 + 8 * v104), v5);
          if (v119)
          {
            goto LABEL_115;
          }

          if (v104 < v102)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_100033330(v103);
          }

          if (v4 - 2 >= *(v103 + 2))
          {
            goto LABEL_133;
          }

          v105 = &v103[16 * v4];
          *v105 = v102;
          *(v105 + 1) = v104;
          v124 = v103;
          sub_1000332A4(v4 - 1);
          v101 = v124;
          v4 = *(v124 + 2);
          if (v4 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_143;
      }

LABEL_115:

      return;
    }

LABEL_139:
    v101 = sub_100033330(v4);
    goto LABEL_107;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v110 = v8;
      v4 = *v5;
      v123 = *(*v5 + 8 * v7);
      v122 = *(v4 + 8 * v9);
      v10 = v122;
      v11 = v123;
      v12 = v10;
      v120 = sub_100077A08(&v123, &v122);
      if (v119)
      {

        return;
      }

      v7 = v9 + 2;
      if (v9 + 2 >= v6)
      {
        v8 = v110;
      }

      else
      {
        v106 = v9;
        v4 += 8 * v9 + 16;
        v115 = v6;
        do
        {
          v117 = v7;
          v14 = *(v4 - 8);
          v15 = *v4;
          v16 = v14;
          v17 = [v15 localization];
          v18 = [v17 displayName];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = [v16 localization];
          v6 = [v22 displayName];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          if (v19 == v23 && v21 == v25)
          {

            v7 = v117;
            if (v120)
            {
              v5 = a3;
              v8 = v110;
              v9 = v106;
              goto LABEL_21;
            }
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v7 = v117;
            if ((v120 ^ v13))
            {
              goto LABEL_19;
            }
          }

          ++v7;
          v4 += 8;
          v6 = v115;
        }

        while (v115 != v7);
        v7 = v115;
LABEL_19:
        v8 = v110;
        v9 = v106;
      }

      v5 = a3;
      if (v120)
      {
LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_136;
        }

        if (v9 < v7)
        {
          v27 = 8 * v7 - 8;
          v28 = 8 * v9;
          v29 = v7;
          v30 = v9;
          do
          {
            if (v30 != --v29)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_142;
              }

              v31 = *(v32 + v28);
              *(v32 + v28) = *(v32 + v27);
              *(v32 + v27) = v31;
            }

            ++v30;
            v27 -= 8;
            v28 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = *(v5 + 8);
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_135;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v7 < v9)
    {
      goto LABEL_134;
    }

    v54 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v54;
    }

    else
    {
      v8 = sub_100031644(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v8 + 2);
    v55 = *(v8 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v8 = sub_100031644((v55 > 1), v4 + 1, 1, v8);
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v4];
    *(v57 + 4) = v9;
    *(v57 + 5) = v7;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_123;
          }

          v75 = &v8[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_130;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v85 = &v8[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_85:
        if (v80)
        {
          goto LABEL_125;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_128;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v5)
        {
          goto LABEL_141;
        }

        v96 = v7;
        v97 = v8;
        v98 = *&v8[16 * v4 + 32];
        v99 = *&v8[16 * v58 + 40];
        sub_10007930C((*v5 + 8 * v98), (*v5 + 8 * *&v8[16 * v58 + 32]), (*v5 + 8 * v99), v6);
        if (v119)
        {
          goto LABEL_115;
        }

        if (v99 < v98)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100033330(v97);
        }

        if (v4 >= *(v97 + 2))
        {
          goto LABEL_120;
        }

        v100 = &v97[16 * v4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v124 = v97;
        sub_1000332A4(v58);
        v8 = v124;
        v56 = *(v124 + 2);
        v7 = v96;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = &v8[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_131;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = *(v5 + 8);
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_137;
  }

  if (v34 >= v33)
  {
    v34 = *(v5 + 8);
  }

  if (v34 < v9)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v7 == v34)
  {
    goto LABEL_51;
  }

  v111 = v8;
  v121 = *v5;
  v4 = *v5 + 8 * v7 - 8;
  v107 = v9;
  v35 = v9 - v7;
  v113 = v34;
LABEL_40:
  v116 = v4;
  v118 = v7;
  v36 = *(v121 + 8 * v7);
  v114 = v35;
  v37 = v35;
  while (1)
  {
    v38 = *v4;
    v39 = v36;
    v6 = v38;
    v40 = [v39 localization];
    v41 = [v40 displayName];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = [v6 localization];
    v46 = [v45 displayName];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

LABEL_39:
      v7 = v118 + 1;
      v4 = v116 + 8;
      v35 = v114 - 1;
      if (v118 + 1 == v113)
      {
        v7 = v113;
        v5 = a3;
        v8 = v111;
        v9 = v107;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v121)
    {
      break;
    }

    v52 = *v4;
    v36 = *(v4 + 8);
    *v4 = v36;
    *(v4 + 8) = v52;
    v4 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_10007930C(void **__dst, void **a2, char *a3, char *__src)
{
  v4 = a3;
  v5 = a2 - __dst;
  v6 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v6 = a2 - __dst;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    if (__src != a2 || &a2[v10] <= __src)
    {
      v32 = a2;
      v33 = __src;
      memmove(__src, a2, 8 * v10);
      __src = v33;
      a2 = v32;
    }

    v62 = &__src[8 * v10];
    v12 = __src;
    if (v8 >= 8 && a2 > __dst)
    {
      v61 = __src;
LABEL_31:
      v59 = a2;
      v34 = a2 - 1;
      v35 = v4;
      v36 = v62;
      v55 = a2 - 1;
      do
      {
        v37 = *(v36 - 1);
        v36 -= 8;
        v38 = *v34;
        v39 = v37;
        v40 = v38;
        v41 = [v39 localization];
        v42 = [v41 displayName];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v57 = v40;
        v46 = [v40 localization];
        v47 = [v46 displayName];

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          v4 = v35 - 8;
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v35 - 8;
          if (v52)
          {
            if (v35 != v59)
            {
              *v4 = *v55;
            }

            v12 = v61;
            if (v62 <= v61 || (a2 = v55, v55 <= __dst))
            {
              a2 = v55;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v34 = v55;
        if (v62 != v35)
        {
          *v4 = *v36;
        }

        v62 = v36;
        v35 = v4;
      }

      while (v36 > v61);
      v62 = v36;
      a2 = v59;
      v12 = v61;
    }
  }

  else
  {
    v11 = a2;
    v12 = __src;
    v13 = __dst;
    if (__src != __dst || &__dst[v7] <= __src)
    {
      memmove(__src, __dst, 8 * v7);
    }

    v62 = &v12[v7];
    if (v5 >= 8 && v11 < v4)
    {
      v14 = v11;
      v56 = v4;
      while (1)
      {
        v58 = v14;
        v60 = v12;
        v15 = *v12;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 localization];
        v19 = [v18 displayName];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = [v17 localization];
        v24 = [v23 displayName];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v20 == v25 && v22 == v27)
        {
          break;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v56;
        v31 = v58;
        v14 = v58 + 1;
        if (v13 != v58)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v13;
        if (v12 >= v62 || v14 >= v30)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v14 = v58;
      v31 = v12++;
      v30 = v56;
      if (v13 == v60)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v13 = *v31;
      goto LABEL_22;
    }

LABEL_24:
    a2 = v13;
  }

LABEL_48:
  if (a2 != v12 || a2 >= (v12 + ((v62 - v12 + (v62 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v12, 8 * ((v62 - v12) / 8));
  }

  return 1;
}

uint64_t sub_10007979C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000798EC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000798EC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100055EB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100079A6C();
      goto LABEL_16;
    }

    sub_100079D14(v8 + 1);
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

void *sub_100079A6C()
{
  v1 = v0;
  sub_10005723C();
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

id sub_100079BBC()
{
  v1 = v0;
  sub_10007AEEC();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
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

uint64_t sub_100079D14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005723C();
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

void *sub_100079F98(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007A068(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10007AE94(0, &qword_1000DD678, &qword_1000DD670, HKQuantityType_ptr);
          sub_10007AF9C(&qword_1000DD680, &qword_1000DD678, &qword_1000DD670, HKQuantityType_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
        sub_100003DDC(0, &qword_1000DD670, HKQuantityType_ptr);
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

uint64_t sub_10007A21C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10007AE94(0, &qword_1000DD690, &qword_1000DD688, HKCategoryType_ptr);
          sub_10007AF9C(&qword_1000DD698, &qword_1000DD690, &qword_1000DD688, HKCategoryType_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
        sub_100003DDC(0, &qword_1000DD688, HKCategoryType_ptr);
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

uint64_t sub_10007A3D0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10007AE94(0, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
          sub_10007AF9C(&qword_1000DD6B0, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
        sub_100003DDC(0, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
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

uint64_t sub_10007A584(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10007AE94(0, &qword_1000DD660, &qword_1000DD658, HKDisplayType_ptr);
          sub_10007AF9C(&qword_1000DD668, &qword_1000DD660, &qword_1000DD658, HKDisplayType_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1000547A4(v13, i, a3);
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
        sub_100003DDC(0, &qword_1000DD658, HKDisplayType_ptr);
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

void *sub_10007A738()
{
  v0 = [objc_opt_self() builtinDisplayTypes];
  sub_100003DDC(0, &qword_1000DD658, HKDisplayType_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [v4 objectType];
        v8 = [v7 enabled];

        if (v8)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v9 = v20[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v10 = v20;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_16:

    v20 = _swiftEmptyArrayStorage;
    if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
    {
      v1 = *(v10 + 16);
      if (!v1)
      {
        break;
      }

      goto LABEL_19;
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      break;
    }

LABEL_19:
    v11 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v10 + 16))
        {
          goto LABEL_33;
        }

        v13 = *(v10 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = [v13 displayCategory];
      v17 = [v16 isMeCategory];

      if (v17)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = v20[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v11;
      if (v15 == v1)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_29:

  v20 = sub_100079F98(v18, sub_1000341B4, sub_10007A584);
  sub_10007878C(&v20);

  return v20;
}

uint64_t sub_10007AA58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10007AAA0()
{
  if (!qword_1000DD650)
  {
    type metadata accessor for ArrayDataSource();
    v0 = type metadata accessor for DataSourceWithLayout();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD650);
    }
  }
}

uint64_t sub_10007AB00(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  return sub_100077C14(v3, a1);
}

void sub_10007AB2C(uint64_t a1, void *a2, void *a3)
{
  _StringGuts.grow(_:)(68);
  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x80000001000A9110;
  String.append(_:)(v5);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000031;
  v7._object = 0x80000001000A9130;
  String.append(_:)(v7);
  _StringGuts.grow(_:)(46);

  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x80000001000A9170;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v12 style:1 handler:0];

  [v11 addAction:v14];
  v15 = swift_allocObject();
  v15[2] = 0xD00000000000001ALL;
  v15[3] = 0x80000001000A90F0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = 0;
  v15[7] = 0xE000000000000000;

  v16 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10007AE84;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100087848;
  aBlock[3] = &unk_1000CFD28;
  v17 = _Block_copy(aBlock);

  v18 = [v13 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v11 addAction:v18];
  [v11 setPreferredAction:v14];
  [a3 presentViewController:v11 animated:1 completion:0];
}

uint64_t sub_10007AE84(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return sub_1000782E4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

void sub_10007AE94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003DDC(255, a3, a4);
    v5 = type metadata accessor for Array();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10007AEEC()
{
  if (!qword_1000DD6A0)
  {
    sub_10007AF48();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD6A0);
    }
  }
}

unint64_t sub_10007AF48()
{
  result = qword_1000DD6A8;
  if (!qword_1000DD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6A8);
  }

  return result;
}

uint64_t sub_10007AF9C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_10007AE94(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingAnalyticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
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
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007B14C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D6F636C6557;
    v6 = 0xD000000000000012;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x6C61654872756F59;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5365766F72706D49;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10007B29C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004BCEC();
  return Hasher._finalize()();
}

Swift::Int sub_10007B2EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004BCEC();
  return Hasher._finalize()();
}

unint64_t sub_10007B330@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007C0BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007B360@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007B14C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10007B394()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007B408()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007B45C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CD128, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_10007B4F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007C108(*a1);
  *a2 = result;
  return result;
}

void sub_10007B528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65756E69746E6F43;
  v5 = 0xED00006E4F206E72;
  v6 = 0x75542074276E6F44;
  if (v2 != 6)
  {
    v6 = 0x7472617453;
    v5 = 0xE500000000000000;
  }

  v7 = 0x80000001000A54C0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0x6E4F206E727554;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000776F6CLL;
  v10 = 0x6C412074276E6F44;
  if (v2 != 2)
  {
    v10 = 0x794D206572616853;
    v9 = 0xED00006174614420;
  }

  if (*v1)
  {
    v4 = 0x776F6C6C41;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10007B644()
{
  sub_10007BACC();
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 16) = xmmword_1000B0650;
  *(inited + 40) = 0xE600000000000000;
  v1 = String._bridgeToObjectiveC()();

  *(inited + 48) = v1;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001000A91E0;
  sub_10007BBD8();
  static AnalyticsTransforming.activeWatchProductTypeString()();
  v2 = String._bridgeToObjectiveC()();

  *(inited + 96) = v2;
  *(inited + 104) = 1885697139;
  *(inited + 112) = 0xE400000000000000;
  v3 = String._bridgeToObjectiveC()();

  *(inited + 120) = v3;
  v4 = sub_100068C20(inited);
  swift_setDeallocating();
  sub_10007BB24();
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_10007B9E4()
{
  v0 = qword_1000DD6B8;

  return v0;
}

unint64_t sub_10007BA20()
{
  result = qword_1000DD6C8;
  if (!qword_1000DD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6C8);
  }

  return result;
}

unint64_t sub_10007BA78()
{
  result = qword_1000DD6D0;
  if (!qword_1000DD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6D0);
  }

  return result;
}

void sub_10007BACC()
{
  if (!qword_1000DD6D8)
  {
    sub_10007BB24();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD6D8);
    }
  }
}

void sub_10007BB24()
{
  if (!qword_1000DD6E0)
  {
    sub_10007BB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD6E0);
    }
  }
}

unint64_t sub_10007BB8C()
{
  result = qword_1000DD140;
  if (!qword_1000DD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DD140);
  }

  return result;
}

unint64_t sub_10007BBD8()
{
  result = qword_1000DD6E8;
  if (!qword_1000DD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingAnalyticsEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent.Step(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingAnalyticsEvent.Step(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent.Context(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OnboardingAnalyticsEvent.Context(_WORD *result, int a2, int a3)
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

unint64_t sub_10007BFB8()
{
  result = qword_1000DD6F0;
  if (!qword_1000DD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6F0);
  }

  return result;
}

unint64_t sub_10007C010()
{
  result = qword_1000DD6F8;
  if (!qword_1000DD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6F8);
  }

  return result;
}

unint64_t sub_10007C068()
{
  result = qword_1000DD700;
  if (!qword_1000DD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD700);
  }

  return result;
}

unint64_t sub_10007C0BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CCF50, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10007C108(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CD048, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_10007C15C()
{
  v1 = v0;
  v29 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  static Logger.general.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Resetting store demo mode pinned content now!", v11, 2u);
  }

  v12 = *(v3 + 8);
  v32 = v3 + 8;
  v33 = v2;
  v31 = v12;
  v12(v8, v2);
  sub_10000ACE8((v1 + 2), v35);
  sub_10000BFFC(v35, v36);
  dispatch thunk of PinnedContentManaging.unpinAll()();
  sub_100003B90(v35);
  sub_10007C5BC();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v13 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_10000ACE8((v1 + 2), v35);
      sub_10000BFFC(v35, v36);

      dispatch thunk of PinnedContentManaging.pin(identifier:)();

      sub_100003B90(v35);
      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v20 = v30;
    static Logger.general.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      v35[0] = v29;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_1000036D0(v25, v26, &v34);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s]: Reset demo mode pinned content completed.", v23, 0xCu);
      sub_100003B90(v24);
    }

    v31(v20, v33);
  }
}

uint64_t sub_10007C4C0()
{
  sub_100003B90((v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_10007C51C(char *a1, int64_t a2, char a3)
{
  result = sub_100031EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10007C53C(size_t a1, int64_t a2, char a3)
{
  result = sub_100031FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007C55C(void *a1, int64_t a2, char a3)
{
  result = sub_100032020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007C57C(char *a1, int64_t a2, char a3)
{
  result = sub_100032180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10007C59C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000323C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10007C5BC()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(HKHealthStore) init];
  v2 = [v0 sharedInstanceForHealthStore:v1];

  if (!v2)
  {
    goto LABEL_40;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = [v2 displayTypeWithIdentifier:isa];

  if (v4)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v5 = Int._bridgeToObjectiveC()().super.super.isa;
  v6 = [v2 displayTypeWithIdentifier:v5];

  if (v6)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v7 = Int._bridgeToObjectiveC()().super.super.isa;
  v8 = [v2 displayTypeWithIdentifier:v7];

  if (v8)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = [v2 displayTypeWithIdentifier:v9];

  if (v10)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v11 = Int._bridgeToObjectiveC()().super.super.isa;
  v12 = [v2 displayTypeWithIdentifier:v11];

  if (v12)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v13 = Int._bridgeToObjectiveC()().super.super.isa;
  v14 = [v2 displayTypeWithIdentifier:v13];

  if (v14)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_38:

    return;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_38;
  }

LABEL_28:
  sub_10007C57C(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v32 = v2;
  v16 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = _swiftEmptyArrayStorage[v16 + 4];
    }

    v18 = v17;
    v19 = [v17 objectType];
    v20 = HKObjectType.pinnedContentIdentifier.getter();
    v22 = v21;

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_10007C57C((v23 > 1), v24 + 1, 1);
    }

    ++v16;
    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
  }

  while (v15 != v16);
}

id sub_10007CAB8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v3[OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_delegate];
  *&v3[OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_allocWithZone(HKCloudSyncControl) initWithHealthStore:a1];
  *&v3[OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_cloudSyncControl] = v11;
  *(v10 + 1) = a3;
  swift_unknownObjectWeakAssign();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v37.receiver = v3;
  v37.super_class = type metadata accessor for CloudSyncWelcomeViewController();
  v14 = objc_msgSendSuper2(&v37, "initWithTitle:detailText:icon:contentLayout:", v12, v13, 0, 2);

  v15 = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = [objc_opt_self() boldButton];
  [v16 addTarget:v15 action:"didTapEnableCloudSync:" forControlEvents:64];
  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17 forState:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = [objc_opt_self() linkButton];
  [v18 addTarget:v15 action:"didTapDisableCloudSync:" forControlEvents:64];

  v19 = String._bridgeToObjectiveC()();

  [v18 setTitle:v19 forState:0];

  sub_1000157F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AED70;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v21 = v16;
  v36 = v18;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v21; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v23 = i;
    v24 = [v15 buttonTray];
    [v24 addButton:v23];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v25 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v26 = v25;
  v27 = [v15 buttonTray];
  [v27 addButton:v26];

  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  v29 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v31 = HKUIJoinStringsForAutomationIdentifier();

  [v29 setAccessibilityIdentifier:v31];
  v32 = v36;
  v33 = Array._bridgeToObjectiveC()().super.isa;
  v34 = HKUIJoinStringsForAutomationIdentifier();

  [v32 setAccessibilityIdentifier:v34];
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_10007D11C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_cloudSyncControl);
  v8 = sub_10007D248;
  v9 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  v7 = &unk_1000CFFC0;
  v2 = _Block_copy(aBlock);
  [v1 enableCloudSyncWithCompletion:v2];
  _Block_release(v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100072D1C(1);
    swift_unknownObjectRelease();
  }

  v3 = type metadata accessor for AnalyticsSender();
  v4 = static AnalyticsSender.shared.getter();
  v7 = v3;
  v8 = &protocol witness table for AnalyticsSender;
  aBlock[0] = v4;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(aBlock);
}

uint64_t sub_10007D26C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_cloudSyncControl);
  v8 = sub_10007D398;
  v9 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  v7 = &unk_1000CFF98;
  v2 = _Block_copy(aBlock);
  [v1 disableCloudSyncWithCompletion:v2];
  _Block_release(v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100072D1C(0);
    swift_unknownObjectRelease();
  }

  v3 = type metadata accessor for AnalyticsSender();
  v4 = static AnalyticsSender.shared.getter();
  v7 = v3;
  v8 = &protocol witness table for AnalyticsSender;
  aBlock[0] = v4;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(aBlock);
}

uint64_t sub_10007D3A4(char a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = a2;
    v20 = v14;
    *v13 = 67109378;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 2082;
    swift_errorRetain();
    sub_10007D710();
    v15 = String.init<A>(describing:)();
    v17 = sub_1000036D0(v15, v16, &v20);

    *(v13 + 10) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 0x12u);
    sub_100003B90(v14);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10007D598(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_100003B90(v9);
}

id sub_10007D66C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncWelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10007D710()
{
  if (!qword_1000DD580)
  {
    sub_100008C14();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD580);
    }
  }
}

uint64_t sub_10007D77C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x75542074276E6F44;
    v10 = 0xED00006E4F206E72;
    if (a1 != 6)
    {
      v9 = 0x7472617453;
      v10 = 0xE500000000000000;
    }

    v11 = 0xD000000000000013;
    v12 = 0x80000001000A54C0;
    if (a1 != 4)
    {
      v11 = 0x6E4F206E727554;
      v12 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C412074276E6F44;
    v5 = 0xEB00000000776F6CLL;
    if (a1 != 2)
    {
      v4 = 0x794D206572616853;
      v5 = 0xED00006174614420;
    }

    v6 = 0x776F6C6C41;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x65756E69746E6F43;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x776F6C6C41)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x65756E69746E6F43)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v13 = 0xEB00000000776F6CLL;
      if (v7 != 0x6C412074276E6F44)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x794D206572616853;
    v15 = 0x6174614420;
LABEL_42:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x80000001000A54C0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6E4F206E727554)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_45;
  }

  if (a2 == 6)
  {
    v14 = 0x75542074276E6F44;
    v15 = 0x6E4F206E72;
    goto LABEL_42;
  }

  v13 = 0xE500000000000000;
  if (v7 != 0x7472617453)
  {
LABEL_47:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_48;
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_10007DA20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x80000001000A53D0;
    if (a1 == 2)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v11 = 0x80000001000A53F0;
    }

    v13 = 0x6C61654872756F59;
    if (a1)
    {
      v10 = 0xEE00617461446874;
    }

    else
    {
      v13 = 0x656D6F636C6557;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x5365766F72706D49;
    v4 = 0x80000001000A5460;
    v5 = 0xD000000000000010;
    if (a1 != 7)
    {
      v5 = 0xD000000000000012;
      v4 = 0x80000001000A5480;
    }

    if (a1 == 6)
    {
      v4 = 0xED00007974656661;
    }

    else
    {
      v3 = v5;
    }

    v6 = 0x80000001000A5410;
    v7 = 0xD000000000000018;
    if (a1 != 4)
    {
      v7 = 0xD000000000000014;
      v6 = 0x80000001000A5430;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v14 = 0xEE00617461446874;
        if (v8 != 0x6C61654872756F59)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        if (v8 != 0x656D6F636C6557)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_54;
    }

    if (a2 != 2)
    {
      v14 = 0x80000001000A53F0;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v15 = "SetUpHealthDetails";
    goto LABEL_51;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v14 = 0xED00007974656661;
      if (v8 != 0x5365766F72706D49)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 == 7)
    {
      v14 = 0x80000001000A5460;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v15 = "CloudSyncTurnedOff";
LABEL_51:
    v14 = (v15 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 == 4)
  {
    v14 = 0x80000001000A5410;
    if (v8 != 0xD000000000000018)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v14 = 0x80000001000A5430;
    if (v8 != 0xD000000000000014)
    {
LABEL_56:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_57;
    }
  }

LABEL_54:
  if (v9 != v14)
  {
    goto LABEL_56;
  }

  v16 = 1;
LABEL_57:

  return v16 & 1;
}