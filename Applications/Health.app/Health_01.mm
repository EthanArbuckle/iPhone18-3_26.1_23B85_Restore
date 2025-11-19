uint64_t sub_10001C4B8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C4F8(uint64_t a1)
{
  v3 = qword_1000DCBB8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10001C550()
{
  sub_1000091E4(0, &qword_1000DB658, sub_10000BF7C);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000AE100;
  *(v0 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  return v0;
}

uint64_t sub_10001C5C4(void *a1, uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for PlatformTabCollectionViewController();
  v7 = method lookup function for CompoundDataSourceCollectionViewController();
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  v7(a3, v8);
  v10 = [a3 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 != [v8 horizontalSizeClass])
  {
    sub_100018B30();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10001C6AC(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_10001BC98();
  Date.init()();
  dispatch thunk of PersonalizedFeedTrainer.visibleFeedItemsDidChange(at:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10001C800()
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
    *(v8 + 14) = sub_1000036D0(0xD000000000000018, 0x80000001000A8890, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Lifecycle: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10001C9F4()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_projectBox();
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = ListLayoutConfiguration.layout(for:)();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_10001CB30()
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

uint64_t sub_10001CC90()
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
    *(v8 + 14) = sub_1000036D0(0xD000000000000027, 0x80000001000A79D0, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Lifecycle: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_10001CE84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10001CE8C();
}

void sub_10001CE8C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_1000036D0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] starting interactive generation listener", v7, 0xCu);
    sub_100003B90(v8);
  }

  (*(v1 + 8))(v4, v0);
  v12 = sub_10001D04C();
  dispatch thunk of InteractiveGenerationListener.start()();
}

id sub_10001D04C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = [objc_allocWithZone(type metadata accessor for InteractiveGenerationListener()) init];
    v5 = [objc_opt_self() sharedApplication];
    sub_10001D0F4();
    dispatch thunk of InteractiveGenerationListener.applicationStateProvider.setter();
    v6 = *(v3 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

unint64_t sub_10001D0F4()
{
  result = qword_1000DDE88;
  if (!qword_1000DDE88)
  {
    sub_100003DDC(255, &qword_1000DDE90, UIApplication_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDE88);
  }

  return result;
}

uint64_t sub_10001D16C(uint64_t a1)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for CloudSyncRestoreState();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState;
    swift_beginAccess();
    sub_10001D308(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10001D308(uint64_t a1, uint64_t a2)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D39C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10001D490()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001D4F0();
  }

  return result;
}

uint64_t sub_10001D4F0()
{
  v1 = type metadata accessor for Logger();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  v3 = __chkstk_darwin(v1);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v45 - v5;
  v6 = type metadata accessor for CloudSyncRestoreState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DAC4();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v48 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v45 - v20;
  __chkstk_darwin(v19);
  v23 = &v45 - v22;
  v24 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState;
  swift_beginAccess();
  (*(v7 + 104))(v23, enum case for CloudSyncRestoreState.failed(_:), v6);
  (*(v7 + 56))(v23, 0, 1, v6);
  v25 = *(v11 + 56);
  v26 = v0;
  v46 = v24;
  sub_10001DB58(v0 + v24, v14);
  sub_10001DB58(v23, &v14[v25]);
  v27 = *(v7 + 48);
  if (v27(v14, 1, v6) == 1)
  {
    sub_10001DC44(v23);
    if (v27(&v14[v25], 1, v6) == 1)
    {
      sub_10001DC44(v14);
LABEL_11:
      v40 = v49;
      static Logger.cloudSync.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Starting first restore since last first restore has failed", v43, 2u);
      }

      (*(v51 + 8))(v40, v52);
      v44 = *(v26 + 16);
      return dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();
    }

    goto LABEL_6;
  }

  sub_10001DB58(v14, v21);
  if (v27(&v14[v25], 1, v6) == 1)
  {
    sub_10001DC44(v23);
    (*(v7 + 8))(v21, v6);
LABEL_6:
    sub_100024650(v14);
    goto LABEL_7;
  }

  v37 = v45;
  (*(v7 + 32))(v45, &v14[v25], v6);
  sub_10001DBEC();
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v7 + 8);
  v39(v37, v6);
  sub_10001DC44(v23);
  v39(v21, v6);
  sub_10001DC44(v14);
  if (v38)
  {
    goto LABEL_11;
  }

LABEL_7:
  v28 = v50;
  static Logger.cloudSync.getter();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = 136446210;
    sub_10001DB58(v26 + v46, v47);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000036D0(v33, v34, &v53);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Skipping start first restore since last known first restore state did not fail: %{public}s", v31, 0xCu);
    sub_100003B90(v32);
  }

  return (*(v51 + 8))(v28, v52);
}

void sub_10001DAC4()
{
  if (!qword_1000DAAE0)
  {
    sub_1000062CC(255, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DAAE0);
    }
  }
}

uint64_t sub_10001DB58(uint64_t a1, uint64_t a2)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001DBEC()
{
  result = qword_1000DAAE8;
  if (!qword_1000DAAE8)
  {
    type metadata accessor for CloudSyncRestoreState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAE8);
  }

  return result;
}

uint64_t sub_10001DC44(uint64_t a1)
{
  sub_1000062CC(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DCD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_10009F37C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10001DE34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_10009F37C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_10001E048@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001E0BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10001E0EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E1EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100026CBC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001E234()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E26C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E2A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E2DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001E314(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CellDeselectionBehavior();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001E3C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CellDeselectionBehavior();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001E464()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E49C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E4D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E528()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E560(uint64_t a1)
{
  sub_100036FF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E5CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E608()
{
  sub_100036FF4();
  sub_100037254();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E660()
{
  sub_10003997C();
  type metadata accessor for InsetGroupedListStyle();
  sub_100039E88(&qword_1000DB8F8, sub_10003997C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E704()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E73C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E8D8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E918()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E968()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001E9B4()
{
  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10001E9F4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001EA3C()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EA84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EACC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EB14()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001EB4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EBBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EBF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EC44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001EC84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001ECBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ECF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001ED34()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001ED74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EDB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EE4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001EE9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EEDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EF34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EFAC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EFEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F02C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F064()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F0AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F0F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F12C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001F174(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10005CC74(0, &qword_1000DC998, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10001F254(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10005CC74(0, &qword_1000DC998, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_10001F354@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001F380(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10001F3BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F3F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F42C()
{
  v1 = type metadata accessor for EmergencyAccessBuddyFlow();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001F4CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001F538()
{
  sub_1000662E4();
  sub_1000661E0();
  sub_1000660C4();
  sub_100065BB8();
  type metadata accessor for InsetGroupedListStyle();
  sub_100066198(&qword_1000DCE58, sub_100065BB8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F678()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F71C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F75C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F79C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F7E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F820()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F8A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F8D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F920()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F958()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA40()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FA88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001FAC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001FB20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FB58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FB90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001FBCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FC9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FCD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FD10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FD48()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FD80()
{
  v1 = *(v0 + 16);

  sub_1000489F0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001FDC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FDFC()
{
  sub_100003B90((v0 + 16));

  sub_100003B90((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001FE44()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FE7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FEC4()
{
  v1 = type metadata accessor for ContentConfigurationItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10001FFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100020074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020118(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10002029C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_100020424(uint64_t a1)
{
  sub_100098CCC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020480(uint64_t a1, uint64_t a2)
{
  sub_100098CCC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000204FC()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for SampleExporter(0);
  v4 = *(*(v3 - 1) + 80);
  v34 = *(*(v3 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v35 = v0;
  v6 = v0 + ((v2 + 32) & ~v2);

  if (*(v6 + 8))
  {
    v7 = *(v6 + 16);
  }

  v8 = *(v6 + 24);

  v9 = *(v6 + 32);

  v10 = v6 + v1[7];
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
  v14 = v13;
  v15 = *(v10 + *(v13 + 28));

  v16 = v6 + v1[8];
  v12(v16, v11);
  v17 = *(v16 + *(v14 + 28));

  v18 = (v6 + v1[9]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v6 + v1[10] + 8);

  v22 = *(v6 + v1[11] + 8);

  v23 = v6 + v1[12];
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    (*(v25 + 8))(v23, v24);
  }

  v26 = (((v2 + 32) & ~v2) + v33 + v4) & ~v4;
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  v28 = *(v23 + *(v27 + 28));

  v29 = *(v35 + v26);

  v30 = v3[5];
  v31 = type metadata accessor for DateInterval();
  (*(*(v31 - 8) + 8))(v35 + v26 + v30, v31);

  return _swift_deallocObject(v35, v26 + v34, v2 | v4 | 7);
}

uint64_t sub_100020870()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v28 = *(*(v1 - 1) + 64);
  v4 = (v0 + v3);

  if (*(v0 + v3 + 8))
  {
    v5 = v4[2];
  }

  v6 = v4[3];

  v7 = v4[4];

  v8 = v4 + v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
  v12 = v11;
  v13 = *&v8[*(v11 + 28)];

  v14 = v4 + v1[8];
  v10(v14, v9);
  v15 = *&v14[*(v12 + 28)];

  v16 = (v4 + v1[9]);
  v17 = *v16;

  v18 = v16[1];

  v19 = *(v4 + v1[10] + 8);

  v20 = *(v4 + v1[11] + 8);

  v21 = v4 + v1[12];
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  v24 = (v28 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  v26 = *&v21[*(v25 + 28)];

  return _swift_deallocObject(v0, v24 + 9, v2 | 7);
}

uint64_t sub_100020B1C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100020B48(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_100020B74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100020C20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020D48(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v23 = *a1;
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  v24 = v23;
  v25 = v1;
  v26 = v2;
  type metadata accessor for SearchableListSection(255, &v24);
  v3 = type metadata accessor for Array();
  v4 = type metadata accessor for UUID();
  v5 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID);
  *&v24 = v3;
  *(&v24 + 1) = v4;
  v25 = v5;
  v26 = WitnessTable;
  AssociatedConformanceWitness = v7;
  type metadata accessor for ForEach();
  v8 = type metadata accessor for _ConditionalContent();
  *&v24 = &type metadata for Text;
  *(&v24 + 1) = v23;
  v25 = &protocol witness table for Text;
  v26 = v1;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  *&v24 = v23;
  *(&v24 + 1) = v8;
  v25 = v1;
  v26 = v9;
  v10 = type metadata accessor for List();
  v11 = swift_getWitnessTable();
  v12 = sub_100039898();
  *&v24 = v10;
  *(&v24 + 1) = &type metadata for String;
  v25 = v11;
  v26 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v24 = v10;
  *(&v24 + 1) = &type metadata for String;
  v25 = v11;
  v26 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v24 = OpaqueTypeMetadata2;
  *(&v24 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_10009A154(255);
  v15 = type metadata accessor for ModifiedContent();
  sub_10009A1F0(255);
  v17 = v16;
  *&v24 = OpaqueTypeMetadata2;
  *(&v24 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10009A2EC(&qword_1000DE580, sub_10009A154);
  v18 = swift_getWitnessTable();
  v19 = sub_10009A2EC(&qword_1000DE588, sub_10009A1F0);
  *&v24 = v15;
  *(&v24 + 1) = v17;
  v25 = v18;
  v26 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  *&v24 = v15;
  *(&v24 + 1) = v17;
  v25 = v18;
  v26 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  *&v24 = v20;
  *(&v24 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  *&v24 = v20;
  *(&v24 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationView();
  return swift_getWitnessTable();
}

uint64_t sub_1000212D4()
{
  v1 = type metadata accessor for ContentKind();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002136C()
{
  swift_getKeyPath();
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model);
}

uint64_t sub_100021418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model);
}

uint64_t sub_1000214CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000216B8()
{
  v1 = v0;
  sub_10002292C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v2);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v19[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v19[-v13];
  __chkstk_darwin(v12);
  v16 = &v19[-v15];
  v20 = v1;
  sub_1000229DC(0, &qword_1000DA6A8, type metadata accessor for TipTileForLoggingHeaderView, &type metadata accessor for Optional);
  sub_100022A40();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.top.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17 = *(v4 + 8);
  v17(v8, v3);
  static Edge.Set.bottom.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17(v11, v3);
  static Edge.Set.leading.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17(v14, v3);
  static Edge.Set.trailing.getter();
  v21[3] = v3;
  v21[4] = sub_100022B18(&qword_1000DA6C0, sub_10002292C);
  sub_10000AD4C(v21);
  UIHostingConfiguration.margins(_:_:)();
  v17(v16, v3);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_100021944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipTileForLoggingHeaderView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v17 = a1;
  sub_100022B18(&qword_1000DA6C8, type metadata accessor for TipTileForLoggingHeaderViewCell);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a1 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model);
  if (v9)
  {
    v16 = 0;

    State.init(wrappedValue:)();
    v10 = v18;
    v8[2] = v17;
    v8[3] = v10;
    v11 = *(v4 + 24);
    *(v8 + v11) = swift_getKeyPath();
    sub_1000229DC(0, &qword_1000DA5D8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v16 = v9;
    type metadata accessor for TipTileForLoggingHeaderViewModel();
    State.init(wrappedValue:)();
    v12 = v18;
    *v8 = v17;
    v8[1] = v12;
    sub_100022B68(v8, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

id sub_100021C44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of TipTileForLoggingHeaderView._textSize@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1000229DC(0, &qword_1000DA5D8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment.Content);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100021DA8(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_100021E70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _TagTraitWritingModifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v18 - v15;
  (*(v8 + 16))(v11, a1, a4);
  (*(v8 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_100022028(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000220A0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100022120@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_100022164()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000221AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000221F0(uint64_t a1)
{
  v2 = sub_100022B18(&unk_1000DC670, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100022B18(&qword_1000DA750, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000222AC(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA758, type metadata accessor for OpenURLOptionsKey);
  v3 = sub_100022B18(&qword_1000DA760, type metadata accessor for OpenURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100022368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000223B0(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA768, type metadata accessor for Mode);
  v3 = sub_100022B18(&qword_1000DA770, type metadata accessor for Mode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002246C(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA7D8, type metadata accessor for HKCategoryTypeIdentifier);
  v3 = sub_100022B18(&qword_1000DA7E0, type metadata accessor for HKCategoryTypeIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100022528(uint64_t a1)
{
  v2 = sub_100022B18(&qword_1000DA7C8, type metadata accessor for HKQuantityTypeIdentifier);
  v3 = sub_100022B18(&qword_1000DA7D0, type metadata accessor for HKQuantityTypeIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000225E4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100022620()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100022674()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000226E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t type metadata accessor for TipTileForLoggingHeaderViewCell()
{
  result = qword_1000DA618;
  if (!qword_1000DA618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000227C4()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100022864(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100022870(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022890(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_10002292C()
{
  if (!qword_1000DA6A0)
  {
    sub_1000229DC(255, &qword_1000DA6A8, type metadata accessor for TipTileForLoggingHeaderView, &type metadata accessor for Optional);
    sub_100022A40();
    v0 = type metadata accessor for UIHostingConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DA6A0);
    }
  }
}

void sub_1000229DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100022A40()
{
  result = qword_1000DA6B0;
  if (!qword_1000DA6B0)
  {
    sub_1000229DC(255, &qword_1000DA6A8, type metadata accessor for TipTileForLoggingHeaderView, &type metadata accessor for Optional);
    sub_100022B18(&qword_1000DA6B8, type metadata accessor for TipTileForLoggingHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6B0);
  }

  return result;
}

uint64_t sub_100022B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipTileForLoggingHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model);
  *(v1 + OBJC_IVAR____TtC6Health31TipTileForLoggingHeaderViewCell__model) = *(v0 + 24);
}

void sub_100022FA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10002320C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002327C(uint64_t a1, uint64_t a2, void *a3)
{
  v24[1] = a1;
  sub_100023ED8(0, &qword_1000DA858, sub_100023F2C);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = v24 - v9;
  sub_100023ED8(0, &qword_1000DA838, sub_100023DD4);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = v24 - v15;
  v17 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__mostRecentSentInstruction;
  v25 = 0;
  v26 = 0;
  sub_100023DD4();
  Published.init(initialValue:)();
  (*(v13 + 32))(v3 + v17, v16, v12);
  v18 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__instructionsQueryResult;
  v25 = _swiftEmptyArrayStorage;
  v26 = 0;
  sub_100023F2C();
  Published.init(initialValue:)();
  (*(v7 + 32))(v3 + v18, v10, v6);
  *(v3 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationInstructionQuery) = 0;
  *(v3 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_healthStore) = a3;
  v19 = objc_allocWithZone(HKNotificationSyncStore);
  v20 = a3;
  v21 = String._bridgeToObjectiveC()();

  v22 = [v19 initWithClientIdentifier:v21 healthStore:v20];

  *(v3 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationSyncStore) = v22;
  return v3;
}

uint64_t sub_1000234F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_10002351C, 0, 0);
}

uint64_t sub_10002351C()
{
  v1 = v0[21];
  v2 = sub_100024270(v0[18], v0[19], v0[20]);
  v0[22] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationSyncStore);
  v0[2] = v0;
  v0[3] = sub_10002364C;
  v4 = swift_continuation_init();
  sub_10002444C();
  v0[17] = v5;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024754;
  v0[13] = &unk_1000CD5D0;
  v0[14] = v4;
  [v3 sendNotificationInstruction:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002364C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100023810;
  }

  else
  {
    v3 = sub_10002375C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002375C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;

  static Published.subscript.setter();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100023810()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  swift_willThrow();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v1;
  *(v0 + 88) = 1;

  static Published.subscript.setter();
  v4 = *(v0 + 8);

  return v4();
}

void sub_1000238D8()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = objc_allocWithZone(HKNotificationInstructionDiagnosticQuery);
  v6[4] = sub_100024014;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002401C;
  v6[3] = &unk_1000CD5A8;
  v3 = _Block_copy(v6);

  v4 = [v2 initWithResultsHandler:v3];
  _Block_release(v3);

  [*(v0 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_healthStore) executeQuery:v4];
  v5 = *(v0 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationInstructionQuery);
  *(v0 + OBJC_IVAR____TtC6Health26NotificationSyncStoreModel_notificationInstructionQuery) = v4;
}

uint64_t sub_100023A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_errorRetain();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
  }

  return static Published.subscript.setter();
}

uint64_t sub_100023B24()
{
  v1 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__mostRecentSentInstruction;
  sub_100023ED8(0, &qword_1000DA838, sub_100023DD4);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6Health26NotificationSyncStoreModel__instructionsQueryResult;
  sub_100023ED8(0, &qword_1000DA858, sub_100023F2C);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationSyncStoreModel()
{
  result = qword_1000DA828;
  if (!qword_1000DA828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023CBC()
{
  sub_100023ED8(319, &qword_1000DA838, sub_100023DD4);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100023ED8(319, &qword_1000DA858, sub_100023F2C);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100023DD4()
{
  if (!qword_1000DA840)
  {
    sub_100023E70(255, &qword_1000DA848, &qword_1000DA850, HKNotificationInstruction_ptr, &type metadata accessor for Optional);
    sub_100008C14();
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DA840);
    }
  }
}

void sub_100023E70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003DDC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100023ED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100023F2C()
{
  if (!qword_1000DA860)
  {
    sub_100023E70(255, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr, &type metadata accessor for Array);
    sub_100008C14();
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DA860);
    }
  }
}

uint64_t sub_100023FD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NotificationSyncStoreModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002401C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_100003DDC(0, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_100024124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1000241D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  a7(v8, v9);
  return static Published.subscript.setter();
}

uint64_t sub_100024264(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

id sub_100024270(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  if (a3)
  {
    v14 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v14 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }
  }

  Date.init()();
  Date.addingTimeInterval(_:)();
  v15 = objc_allocWithZone(HKNotificationInstruction);
  v16 = String._bridgeToObjectiveC()();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v18 = [v15 initWithAction:a1 categoryIdentifier:v16 expirationDate:isa];

  v19 = *(v7 + 8);
  v19(v11, v6);
  v19(v13, v6);
  return v18;
}

void sub_10002444C()
{
  if (!qword_1000DAC40)
  {
    sub_100008C14();
    v0 = type metadata accessor for UnsafeContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC40);
    }
  }
}

id sub_1000244D0(void *a1, char a2)
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

uint64_t sub_1000244DC()
{
  v1 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver;
  v2 = *(v0 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v4 = [v3 defaultCenter];
    [v4 removeObserver:v2];
    swift_unknownObjectRelease_n();
  }

  v5 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_observable;
  sub_1000062CC(0, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10001DC44(v0 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState);

  v7 = *(v0 + v1);
  swift_unknownObjectRelease();
  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_100024650(uint64_t a1)
{
  sub_10001DAC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ImportExportDataSource()
{
  result = qword_1000DAB00;
  if (!qword_1000DAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024754(uint64_t a1, int a2, void *a3)
{
  v5 = sub_10000BFFC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_100009630(0, &qword_1000DB730);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

void sub_100024810(void *a1)
{
  sub_100026508(0, &unk_1000DAC60, &type metadata accessor for UTType, &type metadata accessor for _ContiguousArrayStorage);
  v3 = *(type metadata accessor for UTType() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  static UTType.commaSeparatedText.getter();
  v6 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initForOpeningContentTypes:isa asCopy:1];

  v9 = *(v1 + qword_1000DAAF8);
  v10 = type metadata accessor for ImportExportDataSourceDocumentPickerDelegate();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC6HealthP33_9FDE690F091037398242CA42A360B38544ImportExportDataSourceDocumentPickerDelegate_healthStore] = v9;
  v18.receiver = v11;
  v18.super_class = v10;
  v12 = v9;
  v13 = objc_msgSendSuper2(&v18, "init");
  v14 = *(v1 + qword_1000DAAF0);
  *(v1 + qword_1000DAAF0) = v13;
  v15 = v13;

  [v8 setDelegate:{v15, v18.receiver, v18.super_class}];
  v16 = [a1 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t sub_100024A08(void *a1)
{
  v3 = type metadata accessor for ExportDatasetView(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  sub_10008C658(*(v1 + qword_1000DAAF8), (&v20 - v8));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = a1;
  sub_10001A394(v11);
  *(v9 + 1) = sub_100026DE4;
  *(v9 + 2) = v10;
  sub_100026DEC(v9, v7);
  sub_100026E50();
  v15 = objc_allocWithZone(v14);
  v16 = UIHostingController.init(rootView:)();
  v17 = [v13 navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 presentViewController:v16 animated:1 completion:0];
  }

  return sub_100026F2C(v9, type metadata accessor for ExportDatasetView);
}

void sub_100024B84(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentedViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100024C54()
{
  v1 = *(v0 + qword_1000DAAF8);
}

uint64_t sub_100024C94()
{
  v0 = MutableArrayDataSource.deinit();
  v1 = *(v0 + qword_1000DAAF0);

  v2 = *(v0 + qword_1000DAAF8);

  return swift_deallocClassInstance();
}

unint64_t sub_100024D08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_1000290CC(a1);
}

uint64_t sub_100024D84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_100024DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = type metadata accessor for Calendar.Identifier();
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Calendar() - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  sub_100026508(0, &qword_1000DAC30, &type metadata accessor for DateComponents, &type metadata accessor for Optional);
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[27] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[28] = v14;
  v15 = *(v14 - 8);
  v7[29] = v15;
  v16 = *(v15 + 64) + 15;
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v17 = type metadata accessor for SampleDataDecoder();
  v7[32] = v17;
  v18 = *(v17 - 8);
  v7[33] = v18;
  v19 = *(v18 + 64) + 15;
  v7[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[35] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[36] = v21;
  v7[37] = v20;

  return _swift_task_switch(sub_100025028, v21, v20);
}

uint64_t sub_100025028()
{
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  sub_100026C68(v0[19], v0[20]);
  static Logger.general.getter();
  v8 = type metadata accessor for DateComponents();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  (*(v6 + 104))(v5, enum case for Calendar.Identifier.gregorian(_:), v7);
  Calendar.init(identifier:)();
  (*(v6 + 8))(v5, v7);
  SampleDataDecoder.init(fileData:logger:calendar:dateShift:)();
  v9 = SampleDataDecoder.decodeSamples()();
  v10 = *(v0[21] + OBJC_IVAR____TtC6HealthP33_9FDE690F091037398242CA42A360B38544ImportExportDataSourceDocumentPickerDelegate_healthStore);
  if (v9 >> 62)
  {
    sub_100003DDC(0, &qword_1000DAC38, HKObject_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003DDC(0, &qword_1000DAC38, HKObject_ptr);
  }

  sub_100003DDC(0, &qword_1000DAC38, HKObject_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[38] = isa;

  v0[2] = v0;
  v0[3] = sub_100025530;
  v12 = swift_continuation_init();
  sub_10002444C();
  v0[17] = v13;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024754;
  v0[13] = &unk_1000CD6B8;
  v0[14] = v12;
  [v10 saveObjects:isa withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100025530()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 296);
  v5 = *(v1 + 288);
  if (v3)
  {
    v6 = sub_100025730;
  }

  else
  {
    v6 = sub_100025660;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100025660()
{
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v5 = v0[33];

  (*(v5 + 8))(v3, v4);

  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[31];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100025730()
{
  v34 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v6 = v0[33];

  swift_willThrow();
  (*(v6 + 8))(v4, v5);

  v7 = v0[39];
  v8 = v0[30];
  static Logger.general.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[29];
    v31 = v0[28];
    v32 = v0[30];
    v12 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v13 = 136446466;
    v0[18] = v12;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_1000036D0(v16, v17, &v33);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v14 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s]: Failed at some point trying to open CSV or write. Error: %@", v13, 0x16u);
    sub_100026F2C(v14, sub_100026C00);

    sub_100003B90(v15);

    (*(v11 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[28];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[34];
  v24 = v0[30];
  v25 = v0[31];
  v27 = v0[26];
  v26 = v0[27];
  v28 = v0[25];

  v29 = v0[1];

  return v29();
}

id sub_100025A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportExportDataSourceDocumentPickerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100025AF4(uint64_t a1)
{
  *(a1 + 8) = sub_100026EE4(&qword_1000DABE0, type metadata accessor for ImportExportDataSource);
  result = sub_100026EE4(&qword_1000DABE8, type metadata accessor for ImportExportDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100025B78(void *a1)
{
  v2 = v1;
  v71 = type metadata accessor for SectionedDataSourceContainerViewType();
  v82 = *(v71 - 8);
  v4 = *(v82 + 64);
  __chkstk_darwin(v71);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026508(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v76 = &v59 - v8;
  v77 = type metadata accessor for CellDeselectionBehavior();
  v9 = *(v77 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v77);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContentConfigurationItem();
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v72 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = &v59 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1000DAAF0) = 0;
  *(v2 + qword_1000DAAF8) = a1;
  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  v24 = a1;
  _StringGuts.grow(_:)(16);

  strcpy(v84, "MutableArray<");
  HIWORD(v84[1]) = -4864;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = *(v20 + 8);
  v78 = v19;
  v28(v23, v19);
  v79 = v28;
  v80 = v20 + 8;
  v29._countAndFlagsBits = v25;
  v29._object = v27;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 62;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v75 = MutableArrayDataSource.init(arrangedSections:identifier:)();
  swift_retain_n();
  UUID.init()();
  v69 = UUID.uuidString.getter();
  v68 = v31;
  v28(v23, v19);
  v64 = type metadata accessor for UIListContentConfiguration();
  v85 = v64;
  v86 = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v84);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v32 = objc_opt_self();
  v33 = [v32 tintColor];
  v34 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v34(v83, 0);
  v35 = v12;
  *v12 = 1;
  v65 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v36 = *(v9 + 104);
  v66 = v9 + 104;
  v67 = v36;
  v36(v12);
  v37 = type metadata accessor for UIBackgroundConfiguration();
  v38 = *(v37 - 8);
  v62 = *(v38 + 56);
  v63 = v38 + 56;
  v62(v76, 1, 1, v37);
  v61 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v39 = *(v82 + 104);
  v82 += 104;
  v60 = v39;
  v40 = v70;
  v41 = v71;
  v39(v70);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  UUID.init()();
  UUID.uuidString.getter();
  v69 = v42;
  v79(v23, v78);
  v85 = v64;
  v86 = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v84);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v43 = [v32 tintColor];
  v44 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v44(v83, 0);
  *v35 = 1;
  v67(v35, v65, v77);
  v62(v76, 1, 1, v37);
  v60(v40, v61, v41);
  v45 = v72;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_100026508(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v46 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v47 = *(v46 + 72);
  v82 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  sub_10002656C();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1000AE110;
  v49 = v73;
  *(v48 + 56) = v73;
  v50 = sub_100026EE4(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  *(v48 + 64) = v50;
  v51 = sub_10000AD4C((v48 + 32));
  v52 = v74;
  v53 = *(v74 + 16);
  v54 = v81;
  v53(v51, v81, v49);
  *(v48 + 96) = v49;
  *(v48 + 104) = v50;
  v55 = sub_10000AD4C((v48 + 72));
  v53(v55, v45, v49);
  UUID.init()();
  UUID.uuidString.getter();
  v79(v23, v78);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v56 = v75;
  dispatch thunk of MutableArrayDataSource.replaceAllSections(with:reconfigureOrReloadExistingItems:)();

  v57 = *(v52 + 8);
  v57(v45, v49);
  v57(v54, v49);
  return v56;
}

void sub_100026508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10002656C()
{
  if (!qword_1000DAC00)
  {
    sub_100009630(255, &qword_1000DAC08);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC00);
    }
  }
}

uint64_t sub_1000265D4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  sub_100026508(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v40 = v5;
  (*(v15 + 16))(v18, a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
  if (URL.pathExtension.getter() == 7762787 && v19 == 0xE300000000000000)
  {

    goto LABEL_11;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_11:
    v31 = Data.init(contentsOf:options:)();
    v33 = v32;
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
    type metadata accessor for MainActor();
    sub_100026C68(v31, v33);
    v35 = v2;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v31;
    v37[5] = v33;
    v38 = ObjectType;
    v37[6] = v35;
    v37[7] = v38;
    sub_100084B64(0, 0, v13, &unk_1000AE230, v37);

    sub_100026CBC(v31, v33);
    return (*(v15 + 8))(v18, v14);
  }

  (*(v15 + 8))(v18, v14);
  v5 = v40;
LABEL_8:
  static Logger.general.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = v5;
    v26 = swift_slowAlloc();
    v42[0] = v26;
    *v24 = 136446210;
    v42[1] = ObjectType;
    swift_getMetatypeMetadata();
    v27 = String.init<A>(describing:)();
    v29 = sub_1000036D0(v27, v28, v42);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s]: No URLs found, or file selected does not have csv file extension.", v24, 0xCu);
    sub_100003B90(v26);

    return (*(v25 + 8))(v9, v4);
  }

  else
  {

    return (*(v5 + 8))(v9, v4);
  }
}

void sub_100026C00()
{
  if (!qword_1000DAC20)
  {
    sub_100003DDC(255, &qword_1000DD140, NSObject_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC20);
    }
  }
}

uint64_t sub_100026C68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100026CBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100026D10(uint64_t a1)
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
  v10[1] = sub_100018D6C;

  return sub_100024DE4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100026DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportDatasetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100026E50()
{
  if (!qword_1000DAC50)
  {
    type metadata accessor for ExportDatasetView(255);
    sub_100026EE4(&qword_1000DAC58, type metadata accessor for ExportDatasetView);
    v0 = type metadata accessor for UIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC50);
    }
  }
}

uint64_t sub_100026EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100027008(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  return v3(a2);
}

uint64_t sub_100027034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CellDeselectionBehavior();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1000270AC()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_1000E3CF0 = result;
  return result;
}

void *sub_1000270E0(int a1)
{
  v56 = type metadata accessor for SectionedDataSourceContainerViewType();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v56);
  v55 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015DD8(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v54 = &v37 - v7;
  v53 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v53);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ContentConfigurationItem();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v52);
  v50 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = _swiftEmptyArrayStorage;
  sub_10007C53C(0, 3, 0);
  v15 = 0;
  v49 = (v8 + 16);
  v57 = a1;
  v48 = (a1 & 1) == 0;
  v16 = v60;
  v47 = (v2 + 104);
  v46 = (v8 + 8);
  v45 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v51 = v12;
  v44 = v12 + 32;
  v43 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v42 = "Trigger Relevance Engine";
  v41 = "FeedItemGenerationButton";
  v40 = "progress for profile";
  v39 = "RelevanceEngineButton";
  v38 = "TriggerSyncButton";
  v37 = "Trigger Cloud Sync";
  v17 = v53;
  do
  {
    v18 = *(&off_1000CC190 + v15 + 32);
    static UIListContentConfiguration.cell()();
    UIListContentConfiguration.text.setter();
    v19 = objc_opt_self();
    v20 = &selRef_lightGrayColor;
    if ((v57 & 1) == 0)
    {
      v20 = &selRef_tintColor;
    }

    v21 = [v19 *v20];
    v22 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v22(v59, 0);
    if (v18)
    {
      if (v18 == 1)
      {
        v23 = &v61;
      }

      else
      {
        v23 = &v60;
      }
    }

    else
    {
      v23 = &v62;
    }

    v24 = *(v23 - 32);
    v59[3] = v17;
    v59[4] = &protocol witness table for UIListContentConfiguration;
    v25 = sub_10000AD4C(v59);
    (*v49)(v25, v11, v17);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v18;
    v28 = type metadata accessor for ManualTriggerSelectionHandling(0);
    v58[3] = v28;
    v58[4] = sub_100028B2C(&qword_1000DAD38, type metadata accessor for ManualTriggerSelectionHandling);
    v29 = sub_10000AD4C(v58);
    v30 = *(v28 + 20);
    *(v29 + v30) = 1;
    v31 = type metadata accessor for CellDeselectionBehavior();
    (*(*(v31 - 8) + 104))(v29 + v30, v45, v31);
    *v29 = sub_1000286A0;
    v29[1] = v27;
    *(v29 + *(v28 + 24)) = v48;
    v32 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
    (*v47)(v55, v43, v56);
    v33 = v50;
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    (*v46)(v11, v17);
    v60 = v16;
    v35 = v16[2];
    v34 = v16[3];
    if (v35 >= v34 >> 1)
    {
      sub_10007C53C(v34 > 1, v35 + 1, 1);
      v16 = v60;
    }

    ++v15;
    v16[2] = v35 + 1;
    (*(v51 + 32))(v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v35, v33, v52);
  }

  while (v15 != 3);
  return v16;
}

uint64_t sub_1000277B8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_100028914();
      }

      else
      {
        sub_100027BA0();
      }
    }

    else
    {
      sub_1000286CC();
    }
  }

  return result;
}

uint64_t sub_100027834()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v12 = static OS_dispatch_queue.main.getter();
    v15 = v5;
    v13 = v12;
    aBlock[4] = sub_100028B24;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000CD7F0;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100028B2C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100015DD8(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100028B74();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_100027B38()
{
  v0 = sub_1000270E0(0);
  sub_10009C004(v0);

  dispatch thunk of MutableArrayDataSource.replaceItemsForSection(at:newItems:reconfigureAndReloadItems:)();
}

void sub_100027BA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v27 = v2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_1000036D0(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Triggering cloud sync", v11, 0xCu);
    sub_100003B90(v12);
  }

  (*(v4 + 8))(v7, v3);
  if (qword_1000DA520 != -1)
  {
    swift_once();
  }

  v16 = qword_1000E3CD8;
  v17 = *(v1 + qword_1000DACD0);
  v18 = objc_allocWithZone(HKCloudSyncControl);
  v19 = v16;
  v20 = [v18 initWithHealthStore:v17];
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  aBlock[4] = sub_10002863C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  aBlock[3] = &unk_1000CD750;
  v24 = _Block_copy(aBlock);
  v25 = v20;

  [v25 syncWithRequest:v19 reason:v21 completion:v24];
  _Block_release(v24);
}

uint64_t sub_100027ECC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Logger.general.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136315394;
      v14 = _typeName(_:qualified:)();
      v16 = sub_1000036D0(v14, v15, &v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v12 + 14) = v17;
      *v13 = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Failed to request cloud sync: %@", v12, 0x16u);
      sub_100028644(v13);

      sub_100003B90(v19);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_10002812C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100028184@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_1000290CC(a1);
}

uint64_t sub_100028200(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_100028260(uint64_t a1)
{
  *(a1 + 8) = sub_100028B2C(&qword_1000DAD28, type metadata accessor for ManualTriggerDataSource);
  result = sub_100028B2C(&qword_1000DAD30, type metadata accessor for ManualTriggerDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000282E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ArrayDataSourceSection();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = v31;
  v6 = *(v31 + 64);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1000DACD0) = a1;
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  v13 = a1;
  _StringGuts.grow(_:)(16);

  strcpy(v33, "MutableArray<");
  HIWORD(v33[1]) = -4864;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v12, v8);
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = MutableArrayDataSource.init(arrangedSections:identifier:)();

  v21 = sub_1000270E0(0);
  sub_10009C004(v21);

  UUID.init()();
  UUID.uuidString.getter();
  v17(v12, v8);
  v22 = v30;
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  sub_100015DD8(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v23 = *(v31 + 72);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000AE100;
  v26 = v25 + v24;
  v27 = v32;
  (*(v5 + 16))(v26, v22, v32);
  dispatch thunk of MutableArrayDataSource.replaceAllSections(with:reconfigureOrReloadExistingItems:)();

  (*(v5 + 8))(v22, v27);
  return v20;
}

uint64_t sub_10002863C(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100027ECC(a1, a2);
}

uint64_t sub_100028644(uint64_t a1)
{
  sub_100026C00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000286CC()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000270E0(1);
  sub_10009C004(v2);

  dispatch thunk of MutableArrayDataSource.replaceItemsForSection(at:newItems:reconfigureAndReloadItems:)();

  if (qword_1000DA528 != -1)
  {
    swift_once();
  }

  v3 = qword_1000E3CF0;
  [qword_1000E3CF0 setSuspended:1];
  v4 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100028B1C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CD7C8;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 blockOperationWithBlock:v5];
  _Block_release(v5);

  [v3 addOperation:v7];
  static DateInterval.allTimeInterval.getter();
  v8 = objc_allocWithZone(type metadata accessor for FeedItemGenerationOperation());
  v9 = FeedItemGenerationOperation.init(dateRange:)();
  [v3 addOperation:v9];
  [v7 addDependency:v9];
  [v3 setSuspended:0];
}

void sub_100028914()
{
  v0 = sub_1000270E0(1);
  sub_10009C004(v0);

  dispatch thunk of MutableArrayDataSource.replaceItemsForSection(at:newItems:reconfigureAndReloadItems:)();

  if (qword_1000DA528 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E3CF0;
  [qword_1000E3CF0 setSuspended:1];
  v2 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_100028D0C;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008310;
  v8[3] = &unk_1000CD818;
  v3 = _Block_copy(v8);
  v4 = objc_opt_self();

  v5 = [v4 blockOperationWithBlock:v3];
  _Block_release(v3);

  [v1 addOperation:v5];
  static Feed.Kind.relevanceRankedFeeds.getter();
  v6 = objc_allocWithZone(type metadata accessor for PopulateDiscoverFeedOperation());
  v7 = PopulateDiscoverFeedOperation.init(feedKinds:)();
  [v5 addDependency:v7];
  [v1 addOperation:v7];
  [v1 setSuspended:0];
}

uint64_t sub_100028B2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100028B74()
{
  result = qword_1000DAD48;
  if (!qword_1000DAD48)
  {
    sub_100015DD8(255, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD48);
  }

  return result;
}

unint64_t sub_100028C24()
{
  result = sub_100028CB0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CellDeselectionBehavior();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100028CB0()
{
  result = qword_1000DADB8;
  if (!qword_1000DADB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000DADB8);
  }

  return result;
}

void sub_100028D78()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v1];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image]];
  [v2 setContentMode:1];
  [v0 addSubview:v2];
  [v2 hk_alignConstraintsWithView:v0 insets:{12.0, 12.0, 12.0, 12.0}];
  v3 = [v0 heightAnchor];
  v4 = [v0 widthAnchor];
  v6 = [v3 constraintEqualToAnchor:v4];

  LODWORD(v5) = 1148846080;
  [v6 setPriority:v5];
  [v6 setActive:1];
}

id sub_100028FD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageWithCircleBackground();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InternalSettingsViewController()
{
  result = qword_1000DAE20;
  if (!qword_1000DAE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000290E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v23 = a1;
  v24 = type metadata accessor for ListLayoutConfiguration();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LayoutConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002ACA0();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  dispatch thunk of SnapshotDataSource.snapshot.getter();
  v20 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  (*(v15 + 8))(v18, v14);
  if (v20)
  {
    static ListLayoutConfiguration.withHeader.getter();
    CollectionViewLayoutContext.environment.getter();
    v21 = ListLayoutConfiguration.layout(for:)();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v7, v24);
  }

  else
  {
    static LayoutConfiguration.empty.getter();
    v21 = LayoutConfiguration.layoutSection.getter();
    (*(v9 + 8))(v12, v8);
  }

  return v21;
}

unint64_t sub_10002936C@<X0>(uint64_t (*a1)(uint64_t)@<X5>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for ArrayDataSourceSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1(v9);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v12 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v7 + 16))(v11, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v6);

  ArrayDataSourceSection.title.getter();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  if (v15)
  {
    String.uppercased()();

    static UIListContentConfiguration.header()();
    v16 = [objc_opt_self() grayColor];
    v17 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v17(v22, 0);
    v18 = type metadata accessor for HeaderItem();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
    a2[3] = v18;
    result = sub_10002C3D8(&qword_1000DAE78, &type metadata accessor for HeaderItem);
    a2[4] = result;
    *a2 = v21;
  }

  else
  {
    a2[3] = type metadata accessor for FallbackHeaderItem();
    a2[4] = sub_10002C3D8(&qword_1000DAE70, &type metadata accessor for FallbackHeaderItem);
    sub_10000AD4C(a2);
    return FallbackHeaderItem.init()();
  }

  return result;
}

void sub_1000296C0(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for InternalSettingsViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor:v4];

    sub_100029784();
  }

  else
  {
    __break(1u);
  }
}

void sub_100029784()
{
  v1 = [v0 navigationItem];
  v2 = String._bridgeToObjectiveC()();
  [v1 setTitle:v2];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"doneButtonTapped"];
  [v4 setRightBarButtonItem:v5];
}

uint64_t sub_1000298BC(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = type metadata accessor for InternalSettingsViewController();
  v16.receiver = v11;
  v16.super_class = v13;
  objc_msgSendSuper2(&v16, "collectionView:didSelectItemAtIndexPath:", v10, isa);

  v14 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v10 deselectItemAtIndexPath:v14 animated:1];

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100029A04@<X0>(uint64_t *a1@<X8>)
{
  sub_10002C040();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = Future.init(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100029A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_10002C1C4();
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.userInteractive(_:), v12);

  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10002C390;
  *(v19 + 24) = v17;
  aBlock[4] = sub_10002C3D0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CD890;
  v20 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10002C3D8(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015E3C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_100029E28(void (*a1)(uint64_t, void), uint64_t a2)
{
  v67[1] = a2;
  v91 = type metadata accessor for SectionedDataSourceContainerViewType();
  v3 = *(v91 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v91);
  v90 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015E3C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v89 = v67 - v8;
  v88 = type metadata accessor for CellDeselectionBehavior();
  v9 = *(v88 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v88);
  v87 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015E3C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v86 = v67 - v14;
  v85 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v85);
  v84 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for UICellAccessory.DisplayedState();
  v18 = *(v83 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v83);
  v82 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for UUID();
  v69 = *(v95 - 8);
  v21 = *(v69 + 64);
  __chkstk_darwin(v95);
  v94 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ContentConfigurationItem();
  v93 = *(v104 - 8);
  v23 = *(v93 + 64);
  v24 = __chkstk_darwin(v104);
  v81 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = v67 - v26;
  v92 = type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  v27 = dispatch thunk of PluginBundleProvider.allPluginBundleNames()();

  v108[0] = v27;

  sub_10002AD0C(v108);
  v68 = a1;

  v28 = v108[0];
  v106 = *(v108[0] + 2);
  if (v106)
  {
    v29 = 0;
    v79 = (v69 + 8);
    v78 = enum case for UICellAccessory.DisplayedState.always(_:);
    v77 = (v18 + 104);
    v76 = (v15 + 8);
    v75 = (v18 + 8);
    v74 = enum case for CellDeselectionBehavior.default(_:);
    v73 = (v9 + 104);
    v72 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
    v71 = (v3 + 104);
    v102 = (v93 + 32);
    v30 = v108[0] + 40;
    v31 = _swiftEmptyArrayStorage;
    v70 = xmmword_1000AE100;
    v80 = v108[0];
    while (v29 < *(v28 + 2))
    {
      v32 = *(v30 - 1);
      v33 = *v30;

      static FoundationPluginBundleProvider.sharedInstance.getter();
      v34 = dispatch thunk of PluginBundleProvider.loadPluginBundle(named:)();

      sub_10002C420(0, &qword_1000DAEF8);
      v105 = v34;
      NSBundle.getPluginAppDelegateObject<A>(as:)();
      v35 = v108[0];
      if (v108[0])
      {
        v36 = v108[1];
        v37 = String._bridgeToObjectiveC()();
        v38 = [v37 stringByDeletingPathExtension];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v31;
        v40 = v39;

        v41 = swift_allocObject();
        v98 = v41;
        *(v41 + 16) = v35;
        *(v41 + 24) = v36;
        swift_unknownObjectRetain();
        v42 = v94;
        UUID.init()();
        v43 = UUID.uuidString.getter();
        v99 = v44;
        v100 = v43;
        (*v79)(v42, v95);
        v108[3] = type metadata accessor for UIListContentConfiguration();
        v108[4] = &protocol witness table for UIListContentConfiguration;
        sub_10000AD4C(v108);
        static UIListContentConfiguration.cell()();
        v97 = v40;

        UIListContentConfiguration.text.setter();
        v45 = [objc_opt_self() labelColor];
        v46 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.color.setter();
        v46(v107, 0);
        sub_100015E3C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
        v47 = *(type metadata accessor for UICellAccessory() - 8);
        v48 = *(v47 + 72);
        v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        *(swift_allocObject() + 16) = v70;
        v50 = *v77;
        v96 = v35;
        v51 = v82;
        v52 = v83;
        v50(v82, v78, v83);
        v53 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v53 - 8) + 56))(v86, 1, 1, v53);
        v54 = v84;
        UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
        static UICellAccessory.disclosureIndicator(displayed:options:)();
        (*v76)(v54, v85);
        (*v75)(v51, v52);

        (*v73)(v87, v74, v88);
        v55 = type metadata accessor for UIBackgroundConfiguration();
        (*(*(v55 - 8) + 56))(v89, 1, 1, v55);
        (*v71)(v90, v72, v91);

        v56 = v81;
        v31 = v101;
        ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

        swift_unknownObjectRelease();

        v57 = *v102;
        (*v102)(v103, v56, v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100031774(0, v31[2] + 1, 1, v31);
        }

        v59 = v31[2];
        v58 = v31[3];
        v28 = v80;
        if (v59 >= v58 >> 1)
        {
          v31 = sub_100031774(v58 > 1, v59 + 1, 1, v31);
        }

        v31[2] = v59 + 1;
        v57(v31 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v59, v103, v104);
      }

      else
      {
      }

      ++v29;
      v30 += 16;
      if (v106 == v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_13:

    sub_100015E3C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
    v60 = *(type metadata accessor for ArrayDataSourceSection() - 8);
    v61 = *(v60 + 72);
    v62 = v31;
    v63 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000AE100;
    sub_10009C004(v62);

    v65 = v94;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v69 + 8))(v65, v95);
    ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
    v68(v64, 0);
  }

  return result;
}

uint64_t sub_10002AB0C()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withHeader.getter();
  CollectionViewLayoutContext.environment.getter();
  v5 = ListLayoutConfiguration.layout(for:)();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id sub_10002AC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002ACA0()
{
  if (!qword_1000DAE80)
  {
    v0 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAE80);
    }
  }
}

Swift::Int sub_10002AD0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100033BA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10002AD78(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002AD78(uint64_t *a1)
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002AF40(v7, v8, a1, v4);
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
    return sub_10002AE70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002AE70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002AF40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100033330(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10002B51C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100031644(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100031644((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10002B51C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100033330(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000332A4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10002B51C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10002B744()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v29 = &v30[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015E3C(0, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30[-1] - v5;
  sub_10002BFAC();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0D8();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C040();
  sub_10002C3D8(&qword_1000DAEB0, sub_10002C040);
  Deferred.init(createPublisher:)();
  sub_10002C1C4();
  v19 = static OS_dispatch_queue.main.getter();
  v30[0] = v19;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_10002C3D8(&qword_1000DAEC0, sub_10002BFAC);
  sub_10002C3D8(&qword_1000DD570, sub_10002C1C4);
  Publisher.receive<A>(on:options:)();
  sub_10002C210(v6);

  (*(v9 + 8))(v12, v8);
  sub_10002C3D8(&qword_1000DAEC8, sub_10002C0D8);
  Publisher<>.asDataSource()();
  (*(v15 + 8))(v18, v14);
  static UIListContentConfiguration.header()();
  v21 = [objc_opt_self() grayColor];
  v22 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v22(v30, 0);
  v23 = type metadata accessor for HeaderItem();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  v30[3] = v23;
  v30[4] = sub_10002C3D8(&qword_1000DAE78, &type metadata accessor for HeaderItem);
  v30[0] = v26;
  type metadata accessor for SectionsPublisherDataSource();
  SnapshotDataSource.withSupplementaryItem(_:)();

  sub_100003B90(v30);
  sub_10002C29C();
  sub_10002C3D8(&qword_1000DAED8, sub_10002C29C);
  v27 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();

  sub_10002C3D8(&qword_1000DAEE0, sub_10002C2FC);
  return v27;
}

uint64_t sub_10002BCE4(void *a1)
{
  sub_100013E70();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000AE380;
  v3 = type metadata accessor for ManualTriggerDataSource(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = a1;
  v7 = sub_1000282E4(v6);

  *(v2 + 32) = v7;
  *(v2 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v2 + 48) = sub_10002B744();
  *(v2 + 56) = v8;
  v9 = type metadata accessor for ImportExportDataSource();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v6;
  v13 = sub_100025B78(v12);

  *(v2 + 64) = v13;
  *(v2 + 72) = &protocol witness table for MutableArrayDataSource;
  v14 = type metadata accessor for AllFeedItemsDataSource();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v2 + 80) = sub_10009D658();
  *(v2 + 88) = &protocol witness table for ArrayDataSource;
  v17 = type metadata accessor for ProfileDataSource();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v2 + 96) = sub_100075AF8();
  *(v2 + 104) = &protocol witness table for ArrayDataSource;
  v20 = type metadata accessor for FeatureAvailabilityDataSource();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v2 + 112) = sub_10006A298();
  *(v2 + 120) = &protocol witness table for ArrayDataSource;
  v23 = type metadata accessor for BuddyDataSource();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v2 + 128) = sub_10007E160();
  *(v2 + 136) = &protocol witness table for MutableArrayDataSource;
  v26 = type metadata accessor for InternalNotificationsDataSource();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v2 + 144) = sub_100080BE4();
  *(v2 + 152) = &protocol witness table for ArrayDataSource;
  v29 = type metadata accessor for PersistenceDataSource();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v2 + 160) = sub_10002F264();
  *(v2 + 168) = &protocol witness table for ArrayDataSource;
  v32 = type metadata accessor for MiscellaneousItemsDataSource();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v2 + 176) = sub_10004FEEC();
  *(v2 + 184) = &protocol witness table for ArrayDataSource;
  v35 = type metadata accessor for UserDefaultsDataSource();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(v2 + 192) = sub_10009E378();
  *(v2 + 200) = &protocol witness table for ArrayDataSource;
  v38 = type metadata accessor for HKKeyValueDataSource();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v2 + 208) = sub_10004DCA0();
  *(v2 + 216) = &protocol witness table for ArrayDataSource;
  v41 = type metadata accessor for MedicalIDEmergencyBuddyDataSource();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  *(v2 + 224) = sub_1000619D0();
  *(v2 + 232) = &protocol witness table for ArrayDataSource;
  v44 = type metadata accessor for AuxiliaryProfilesDataSource();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *(v2 + 240) = sub_10003A5B0(v12);
  *(v2 + 248) = &protocol witness table for MutableArrayDataSource;
  v47 = type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *(v2 + 256) = sub_100076A84();
  *(v2 + 264) = &protocol witness table for ArrayDataSource;
  v50 = type metadata accessor for CategoryDataSource();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *(v2 + 272) = sub_10009AEB8();
  *(v2 + 280) = &protocol witness table for ArrayDataSource;
  v53 = type metadata accessor for ContentKindDataSource();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  *(v2 + 288) = sub_10009C3DC();
  *(v2 + 296) = &protocol witness table for ArrayDataSource;
  v56 = type metadata accessor for CompoundSectionedDataSource();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  CompoundSectionedDataSource.init(_:)();

  return CompoundDataSourceCollectionViewController.init(dataSource:)();
}

void sub_10002BFAC()
{
  if (!qword_1000DAE98)
  {
    sub_10002C040();
    sub_10002C3D8(&qword_1000DAEB0, sub_10002C040);
    v0 = type metadata accessor for Deferred();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAE98);
    }
  }
}

void sub_10002C040()
{
  if (!qword_1000DAEA0)
  {
    sub_100015E3C(255, &qword_1000DAEA8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for Array);
    v0 = type metadata accessor for Future();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAEA0);
    }
  }
}

void sub_10002C0D8()
{
  if (!qword_1000DAEB8)
  {
    sub_10002BFAC();
    sub_10002C1C4();
    sub_10002C3D8(&qword_1000DAEC0, sub_10002BFAC);
    sub_10002C3D8(&qword_1000DD570, sub_10002C1C4);
    v0 = type metadata accessor for Publishers.ReceiveOn();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAEB8);
    }
  }
}

unint64_t sub_10002C1C4()
{
  result = qword_1000DBAE0;
  if (!qword_1000DBAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBAE0);
  }

  return result;
}

uint64_t sub_10002C210(uint64_t a1)
{
  sub_100015E3C(0, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002C29C()
{
  if (!qword_1000DAED0)
  {
    type metadata accessor for SectionsPublisherDataSource();
    v0 = type metadata accessor for Supplementary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAED0);
    }
  }
}

void sub_10002C2FC()
{
  if (!qword_1000DAEE8)
  {
    sub_10002C29C();
    sub_10002C3D8(&qword_1000DAED8, sub_10002C29C);
    v0 = type metadata accessor for DataSourceWithLayout();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAEE8);
    }
  }
}

uint64_t sub_10002C390(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_10002C3D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C420(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10002C478(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10009BEE0(a1);
}

Swift::Int sub_10002C494()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002C508()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10002C54C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeepLinkContentKind(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E3B4(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = *v11;
    v19 = sub_10002C720(*v11);
LABEL_6:
    v17 = v19;

    return v17 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v18 = *v11;
    v19 = sub_10002CBB4(*v11, v11[8]);
    goto LABEL_6;
  }

  sub_10000C61C();
  v14 = *&v11[*(v13 + 48)];
  (*(v4 + 32))(v7, v11, v3);
  v15 = *(v1 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 32);
  v16 = *(v1 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 16);
  v21[0] = *(v1 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController);
  v21[1] = v16;
  v22 = v15;
  v17 = static URLRouter.handleURL(_:options:rootViewController:)();

  (*(v4 + 8))(v7, v3);
  return v17 & 1;
}

BOOL sub_10002C720(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v4 = type metadata accessor for Logger();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F2C(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for DeepLinkActivityType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkActivityType.init(_:)();
  v18 = (*(v13 + 48))(v11, 1, v12);
  if (v18 == 1)
  {
    sub_10000D4E4(v11, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional, sub_100005F2C);
    static Logger.general.getter();
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v25 = 136446466;
      v42[1] = v36;
      swift_getMetatypeMetadata();
      v26 = String.init<A>(describing:)();
      v28 = sub_1000036D0(v26, v27, v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      v29 = [v22 type];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_1000036D0(v30, v32, v42);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s]: bad shortcut item type passed to application %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    (*(v37 + 8))(v7, v38);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v19 = static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)();
    v20 = *(v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 32);
    v21 = *(v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 16);
    v39 = *(v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController);
    v40 = v21;
    v41 = v20;
    static UserActivityRouter.handleUserActivity(rootViewController:userActivity:)();

    (*(v13 + 8))(v16, v12);
  }

  return v18 != 1;
}

uint64_t sub_10002CBB4(void *a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.view.getter();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v37 = v7;
    v38 = a2;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v15 = 136446722;
    v39 = v6;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_1000036D0(v16, v17, &v41);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = [v12 title];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v39 = v21;
    v40 = v23;
    sub_1000039A4(0, &qword_1000DB150, &type metadata for String, &type metadata accessor for Optional);
    v24 = String.init<A>(describing:)();
    v26 = sub_1000036D0(v24, v25, &v41);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2082;
    v27 = [v12 activityType];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_1000036D0(v28, v30, &v41);

    *(v15 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s]: handling user activity “%{public}s” of type %{public}s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v11, v37);
    if (v38)
    {
      goto LABEL_9;
    }
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    if (a2)
    {
      goto LABEL_9;
    }
  }

  if ((sub_10002D268(v12) & 1) == 0)
  {
    v34 = 0;
    return v34 & 1;
  }

LABEL_9:
  v32 = *(v3 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 32);
  v33 = *(v3 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController + 16);
  v42 = *(v3 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController);
  v43 = v33;
  v44 = v32;
  v34 = static UserActivityRouter.handleUserActivity(rootViewController:userActivity:)();
  return v34 & 1;
}

uint64_t sub_10002CF28()
{
  sub_10000D4E4(v0 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional, sub_100005F2C);
  v1 = *(v0 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable);

  v2 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler__skipStateRestoration;
  sub_1000039A4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SceneUserActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneUserActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002D214()
{
  result = qword_1000DB140;
  if (!qword_1000DB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB140);
  }

  return result;
}

uint64_t sub_10002D268(void *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for Calendar();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F2C(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v55 = &v48 - v19;
  sub_1000039A4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  v25 = &v48 - v24;
  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 launchedToTest];

  if (v27)
  {
    return 0;
  }

  (*(v22 + 16))(v25, v2 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler__skipStateRestoration, v21);
  UserDefault.wrappedValue.getter();
  (*(v22 + 8))(v25, v21);
  if (v59[0])
  {
    return 0;
  }

  v28 = [v56 userInfo];
  if (v28)
  {
    v29 = v28;
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = static HAUserActivity.dateSavedRestorationKey.getter();
    v58 = v31;
    AnyHashable.init<A>(_:)();
    v32 = v13;
    if (*(v30 + 16) && (v33 = sub_100033344(v59), (v34 & 1) != 0))
    {
      sub_100003B34(*(v30 + 56) + 32 * v33, &v60);
      sub_10002E508(v59);

      if (*(&v61 + 1))
      {
        v35 = swift_dynamicCast();
        (*(v14 + 56))(v12, v35 ^ 1u, 1, v13);
        if ((*(v14 + 48))(v12, 1, v13) != 1)
        {
          (*(v14 + 32))(v55, v12, v13);
          v36 = v50;
          static Calendar.current.getter();
          sub_100005F2C(0, &qword_1000DB168, &type metadata accessor for Calendar.Component, &type metadata accessor for _ContiguousArrayStorage);
          v37 = type metadata accessor for Calendar.Component();
          v38 = *(v37 - 8);
          v39 = *(v38 + 72);
          v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1000AE100;
          (*(v38 + 104))(v41 + v40, enum case for Calendar.Component.minute(_:), v37);
          sub_10002E55C(v41);
          swift_setDeallocating();
          (*(v38 + 8))(v41 + v40, v37);
          swift_deallocClassInstance();
          Date.init()();
          v42 = v49;
          v43 = v55;
          Calendar.dateComponents(_:from:to:)();

          v44 = *(v14 + 8);
          v44(v18, v32);
          (*(v53 + 8))(v36, v54);
          v45 = DateComponents.minute.getter();
          LODWORD(v37) = v46;
          (*(v51 + 8))(v42, v52);
          v44(v43, v32);
          return (v45 < 10) & ~v37;
        }

        goto LABEL_12;
      }
    }

    else
    {

      sub_10002E508(v59);
      v60 = 0u;
      v61 = 0u;
    }
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v32 = v13;
  }

  sub_10000D4E4(&v60, &qword_1000DB160, &type metadata for Any + 8, &type metadata accessor for Optional, sub_1000039A4);
  (*(v14 + 56))(v12, 1, 1, v32);
LABEL_12:
  sub_10000D4E4(v12, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional, sub_100005F2C);
  return 0;
}

uint64_t sub_10002D9B0(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v72 = *v1;
  v3 = type metadata accessor for Logger();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  v5 = __chkstk_darwin(v3);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v70 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v70 - v14;
  v15 = __chkstk_darwin(v13);
  v74 = &v70 - v16;
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v71 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v70 - v23;
  v25 = type metadata accessor for DeepLinkContentKind(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v70 - v31;
  v33 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
  swift_beginAccess();
  sub_10000D450(v2 + v33, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000D4E4(v24, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional, sub_100005F2C);
    static Logger.view.getter();
    v34 = *(v9 + 16);
    v34(v78, v79, v8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = v8;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = v79;
      *v38 = 136446466;
      v81 = v72;
      swift_getMetatypeMetadata();
      v39 = String.init<A>(describing:)();
      v41 = sub_1000036D0(v39, v40, &v82);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      v42 = v78;
      v34(v73, v78, v37);
      v43 = String.init<A>(describingSensitive:)();
      v45 = v44;
      (*(v9 + 8))(v42, v37);
      v46 = sub_1000036D0(v43, v45, &v82);

      *(v38 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] Tried to cancel pending deep link of %{public}s but no pending deep link present", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v78, v8);
    }

    (*(v76 + 8))(v80, v77);
  }

  else
  {
    sub_10002E350(v24, v32);
    sub_10002E3B4(v32, v30);
    v47 = v32;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10000C61C();

      v49 = v30;
      v50 = v9;
      (*(v9 + 32))(v18, v49, v8);
      v51 = v79;
      v52 = static URL.== infix(_:_:)();
      (*(v50 + 8))(v18, v8);
      if (v52)
      {
        sub_10002E418(v47);
        v53 = v71;
        (*(v26 + 56))(v71, 1, 1, v25);
        swift_beginAccess();
        sub_10002E474(v53, v2 + v33);
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      sub_10002E418(v30);
      v50 = v9;
      v51 = v79;
    }

    v80 = v47;
    v55 = v75;
    static Logger.view.getter();
    v56 = *(v50 + 16);
    v57 = v74;
    v56(v74, v51, v8);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v50;
      v79 = swift_slowAlloc();
      v82 = v79;
      *v60 = 136446466;
      v81 = v72;
      swift_getMetatypeMetadata();
      v62 = String.init<A>(describing:)();
      v64 = sub_1000036D0(v62, v63, &v82);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2082;
      v65 = v74;
      v56(v73, v74, v8);
      v66 = String.init<A>(describingSensitive:)();
      v68 = v67;
      (*(v61 + 8))(v65, v8);
      v69 = sub_1000036D0(v66, v68, &v82);

      *(v60 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "[%{public}s] Tried to cancel pending deep link of %{public}s but different deep link present", v60, 0x16u);
      swift_arrayDestroy();

      (*(v76 + 8))(v75, v77);
    }

    else
    {

      (*(v50 + 8))(v57, v8);
      (*(v76 + 8))(v55, v77);
    }

    sub_10002E418(v80);
  }

  return 0;
}

char *sub_10002E244(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039A4(0, &qword_1000DB148, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_10002E350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeepLinkContentKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeepLinkContentKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E418(uint64_t a1)
{
  v2 = type metadata accessor for DeepLinkContentKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E474(uint64_t a1, uint64_t a2)
{
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10002E55C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10002E870();
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10000CB7C(&qword_1000DB178, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10000CB7C(&qword_1000DB180, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10002E870()
{
  if (!qword_1000DB170)
  {
    type metadata accessor for Calendar.Component();
    sub_10000CB7C(&qword_1000DB178, &type metadata accessor for Calendar.Component);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB170);
    }
  }
}

uint64_t sub_10002E964(uint64_t a1)
{
  v18[1] = a1;
  v1 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:), v6);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  if (CollectionViewLayoutContext.section.getter())
  {
    (*(v2 + 104))(v5, enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:), v1);
    UICollectionLayoutListConfiguration.headerMode.setter();
  }

  sub_10002EEB8();
  CollectionViewLayoutContext.environment.getter();
  v16 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);
  return v16;
}

uint64_t sub_10002EC18()
{
  CompoundSectionedDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10002EC50()
{
  sub_100003B90((v0 + 24));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_10002ECDC()
{
  result = type metadata accessor for SidebarSection();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002EDA4()
{
  v1 = qword_1000DB2F8;
  v2 = type metadata accessor for SidebarSection();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_10002EE0C()
{
  v0 = AdditionalItemsDataSource.deinit();
  v1 = qword_1000DB2F8;
  v2 = type metadata accessor for SidebarSection();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_10002EEB8()
{
  result = qword_1000DB350;
  if (!qword_1000DB350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DB350);
  }

  return result;
}

void sub_10002EF04(id *a1)
{
  v1 = [*a1 dateUpdated];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10002EF94()
{
  v1 = v0 + qword_1000E3D50;

  return sub_100015978(v1);
}

id sub_10002EFD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedObjectDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002F00C(uint64_t a1)
{
  v2 = a1 + qword_1000E3D50;

  return sub_100015978(v2);
}

uint64_t sub_10002F060()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LayoutConfiguration.empty.getter();
  v5 = LayoutConfiguration.layoutSection.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_10002F13C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for EmptyHeaderItem();
  a1[4] = sub_10002F180();
  sub_10000AD4C(a1);
  return EmptyHeaderItem.init()();
}

unint64_t sub_10002F180()
{
  result = qword_1000DB3B8;
  if (!qword_1000DB3B8)
  {
    type metadata accessor for EmptyHeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB3B8);
  }

  return result;
}

uint64_t type metadata accessor for PersistenceDataSource()
{
  result = qword_1000DB3F8;
  if (!qword_1000DB3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F264()
{
  *&v47 = type metadata accessor for SectionedDataSourceContainerViewType();
  v43 = *(v47 - 8);
  v0 = *(v43 + 64);
  __chkstk_darwin(v47);
  v42 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FCC4(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v41 - v4;
  v6 = type metadata accessor for CellDeselectionBehavior();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v44 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ContentConfigurationItem();
  v48 = *(v50 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v50);
  v49 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v41[2] = UUID.uuidString.getter();
  v41[1] = v18;
  v19 = *(v12 + 8);
  v45 = v12 + 8;
  v46 = v19;
  v19(v15, v11);
  v52[3] = type metadata accessor for UIListContentConfiguration();
  v52[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v52);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v20 = [objc_opt_self() tintColor];
  v21 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v21(v51, 0);
  *v10 = 1;
  (*(v7 + 104))(v10, enum case for CellDeselectionBehavior.deselectOnDidSelect(_:), v6);
  v22 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  (*(v43 + 104))(v42, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v47);
  v23 = v49;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_10002FCC4(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v24 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v47 = xmmword_1000AE100;
  *(v27 + 16) = xmmword_1000AE100;
  sub_10002656C();
  v28 = swift_allocObject();
  *(v28 + 16) = v47;
  v29 = v50;
  *(v28 + 56) = v50;
  *(v28 + 64) = sub_10002FD28(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v30 = sub_10000AD4C((v28 + 32));
  v31 = v48;
  (*(v48 + 16))(v30, v23, v29);
  UUID.init()();
  UUID.uuidString.getter();
  v32 = v44;
  v33 = v46;
  v46(v15, v44);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v52[0] = 0x3C53447961727241;
  v52[1] = 0xE800000000000000;
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  v33(v15, v32);
  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 62;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v31 + 8))(v49, v50);
  return v39;
}

uint64_t sub_10002F900()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIViewController.resolvedHealthExperienceStore.getter();
  sub_100009630(0, &qword_1000DB458);
  type metadata accessor for DiskHealthExperienceStore();
  if (swift_dynamicCast())
  {

    dispatch thunk of DiskHealthExperienceStore.deleteAllObjects()();
  }

  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "All Objects deleted!", v7, 2u);
  }

  else
  {
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10002FB2C()
{
  ArrayDataSource.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_10002FB64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10002FBE0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10002FC40(uint64_t a1)
{
  *(a1 + 8) = sub_10002FD28(&qword_1000DB448, type metadata accessor for PersistenceDataSource);
  result = sub_10002FD28(&qword_1000DB450, type metadata accessor for PersistenceDataSource);
  *(a1 + 24) = result;
  return result;
}

void sub_10002FCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002FD28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002FD90()
{
  sub_1000106FC(319, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_10002FE74@<X0>(uint64_t a1@<X8>)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = qword_1000DB460;
  swift_beginAccess();
  sub_1000314A8(v1 + v10, v9);
  sub_10001093C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v9, 1, v11) != 1)
  {
    return (*(v13 + 32))(a1, v9, v12);
  }

  sub_10003141C(v9);
  type metadata accessor for CloudSyncRestoreState();
  static LegacyObservable.create()();
  v14 = *(v1 + qword_1000E3D78);

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();

  (*(v13 + 16))(v7, a1, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_10003153C(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000300B4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100030114(a1);
  }

  return result;
}

uint64_t sub_100030114(uint64_t a1)
{
  v2 = v1;
  sub_100031220(0, &qword_1000DB518, &type metadata accessor for HideableDataSource.Visibility);
  v26 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  sub_1000312BC(0, &qword_1000DB510, &type metadata accessor for HideableDataSource.Visibility);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = type metadata accessor for CloudSyncRestoreState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  if (CloudSyncRestoreState.isOngoing.getter())
  {
    v20 = *(v2 + qword_1000E3D88);
    (*(v11 + 104))(v14, enum case for HideableDataSource.Visibility.visible<A>(_:), v10);
    dispatch thunk of HideableDataSource.visibility.setter();
    v21 = *(v2 + qword_1000E3D80);
    (*(v5 + 104))(v8, enum case for HideableDataSource.Visibility.hidden<A>(_:), v26);
    dispatch thunk of HideableDataSource.visibility.setter();
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    v23 = *(v2 + qword_1000E3D88);
    (*(v11 + 104))(v14, enum case for HideableDataSource.Visibility.hidden<A>(_:), v10);
    dispatch thunk of HideableDataSource.visibility.setter();
    v24 = *(v2 + qword_1000E3D80);
    (*(v5 + 104))(v8, enum case for HideableDataSource.Visibility.visible<A>(_:), v26);
    return dispatch thunk of HideableDataSource.visibility.setter();
  }
}

uint64_t sub_10003045C()
{
  sub_10003141C(v0 + qword_1000DB460);

  v1 = *(v0 + qword_1000E3D80);

  v2 = *(v0 + qword_1000E3D88);
}

uint64_t sub_1000304BC()
{
  v0 = CompoundSectionedDataSource.deinit();
  v1 = qword_1000DB460;

  sub_10003141C(v2 + v1);

  v3 = *(v0 + qword_1000E3D80);

  v4 = *(v0 + qword_1000E3D88);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000305D8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EmptyStateCollectionViewCellItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001000A6110;
  v11._countAndFlagsBits = 0xD00000000000002ALL;
  v11._object = 0x80000001000A60B0;
  v12._object = 0x80000001000A60E0;
  v26._countAndFlagsBits = 0xD000000000000052;
  v12._countAndFlagsBits = 0xD000000000000028;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v26);

  EmptyStateCollectionViewCellItem.init(title:showSpinner:)();
  sub_1000106FC(0, &qword_1000DB550, sub_1000313A0, &type metadata accessor for _ContiguousArrayStorage);
  v13 = swift_allocObject();
  v23 = xmmword_1000AE100;
  *(v13 + 16) = xmmword_1000AE100;
  sub_1000106FC(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v14 = swift_allocObject();
  *(v14 + 16) = v23;
  *(v14 + 56) = v5;
  *(v14 + 64) = sub_1000313D4(&qword_1000DB560, &type metadata accessor for EmptyStateCollectionViewCellItem);
  v15 = sub_10000AD4C((v14 + 32));
  (*(v6 + 16))(v15, v9, v5);
  *(v13 + 32) = v14;
  v24 = 0x3C53447961727241;
  v25 = 0xE800000000000000;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v1 + 8))(v4, v0);
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = ArrayDataSource.init(_:identifier:)();
  (*(v6 + 8))(v9, v5);
  return v21;
}

uint64_t sub_1000309EC()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  CollectionViewLayoutContext.environment.getter();
  static LayoutConfiguration.pill(environment:)();
  swift_unknownObjectRelease();
  LayoutConfiguration.withoutHeader.getter();
  v8 = *(v1 + 8);
  v8(v7, v0);
  v9 = LayoutConfiguration.layoutSection.getter();
  v8(v5, v0);
  return v9;
}

uint64_t sub_100030B28(void *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001093C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v6);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v61 - v12;
  sub_1000312BC(0, &qword_1000DB510, &type metadata accessor for HideableDataSource.Visibility);
  v62 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  sub_100031220(0, &qword_1000DB518, &type metadata accessor for HideableDataSource.Visibility);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v23 = &v61 - v22;
  v65 = v8;
  v24 = *(v8 + 56);
  v67 = v7;
  v24(v3 + qword_1000DB460, 1, 1, v7);
  v25 = [objc_opt_self() standardUserDefaults];
  v68[3] = type metadata accessor for DefaultCloudSyncStateStore();
  v68[4] = &protocol witness table for DefaultCloudSyncStateStore;
  sub_10000AD4C(v68);
  DefaultCloudSyncStateStore.init(userDefaults:)();
  objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  v26 = a1;
  *(v3 + qword_1000E3D78) = CloudSyncStateObserver.init(healthStore:store:)();
  v66 = a2;
  sub_10000ACE8(a2, v68);
  v27 = v26;
  static AllDataSummarySection.Identifier.defaultAllDataSummarySections.getter();
  v28 = type metadata accessor for SnippetAllDataDataSource();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  SnippetAllDataDataSource.init(healthStore:healthExperienceStore:allDataSummarySections:additionalPredicates:)();
  type metadata accessor for NoDataDataSource();

  static NoDataDataSource.makeNoDataDataSource()();
  sub_10003117C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  PrimarySecondaryDataSource.init(primaryDataSource:secondaryDataSource:)();
  (*(v20 + 104))(v23, enum case for HideableDataSource.Visibility.visible<A>(_:), v19);
  sub_100031200(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = HideableDataSource.init(source:visibility:)();
  *(v3 + qword_1000E3D80) = v37;

  v38 = sub_100012F74(0, 1, 1, &_swiftEmptyArrayStorage);
  v40 = v38[2];
  v39 = v38[3];
  if (v40 >= v39 >> 1)
  {
    v38 = sub_100012F74((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = sub_1000313D4(&qword_1000DB538, sub_100031200);
  v38[2] = v40 + 1;
  v42 = &v38[2 * v40];
  v42[4] = v37;
  v42[5] = v41;
  v43 = type metadata accessor for CloudSyncAllHealthDataDataSource(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1000305D8();
  (*(v14 + 104))(v17, enum case for HideableDataSource.Visibility.hidden<A>(_:), v62);
  sub_1000312BC(0, &qword_1000DB540, &type metadata accessor for HideableDataSource);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = HideableDataSource.init(source:visibility:)();
  *(v3 + qword_1000E3D88) = v49;
  v50 = v38[2];
  v51 = v38[3];

  if (v50 >= v51 >> 1)
  {
    v38 = sub_100012F74((v51 > 1), v50 + 1, 1, v38);
  }

  v52 = sub_100031324();
  v38[2] = v50 + 1;
  v53 = &v38[2 * v50];
  v53[4] = v49;
  v53[5] = v52;
  v54 = CompoundSectionedDataSource.init(_:)();

  v55 = v64;
  sub_10002FE74(v64);
  v56 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_1000313D4(&qword_1000DAAD8, sub_10001093C);
  v57 = v63;
  v58 = v67;
  ObservableConvertible.afterChange(on:_:)();

  sub_100003B90(v66);
  v59 = *(v65 + 8);
  v59(v55, v58);
  v59(v57, v58);
  return v54;
}

void sub_10003117C()
{
  if (!qword_1000DB520)
  {
    type metadata accessor for SnippetAllDataDataSource();
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB520);
    }
  }
}

void sub_100031220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10003117C();
    v7 = v6;
    v8 = sub_1000313D4(&qword_1000DB528, sub_10003117C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000312BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CloudSyncAllHealthDataDataSource(255);
    v7 = a3(a1, v6, &protocol witness table for ArrayDataSource);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100031324()
{
  result = qword_1000DB548;
  if (!qword_1000DB548)
  {
    sub_1000312BC(255, &qword_1000DB540, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB548);
  }

  return result;
}

uint64_t sub_1000313D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003141C(uint64_t a1)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000314A8(uint64_t a1, uint64_t a2)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003153C(uint64_t a1, uint64_t a2)
{
  sub_1000106FC(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000315D8()
{
  v1 = v0[2];

  sub_100003B90(v0 + 3);
  v2 = v0[8];

  return swift_deallocClassInstance();
}

char *sub_100031644(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000091E4(0, &qword_1000DB698, sub_100033F30);
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

size_t sub_100031774(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000091E4(0, &qword_1000DB6C0, &type metadata accessor for ContentConfigurationItem);
  v10 = *(type metadata accessor for ContentConfigurationItem() - 8);
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
  v15 = *(type metadata accessor for ContentConfigurationItem() - 8);
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

char *sub_10003195C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB6B8);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100031A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB6B0);
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

char *sub_100031B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB700);
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

void *sub_100031CA8(uint64_t a1, uint64_t a2)
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

  sub_100033FE4(0, &qword_1000DBB00);
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

void *sub_100031D60(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100033FE4(0, a3);
  v5 = swift_allocObject();
  v6 = j__malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void sub_100031DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_100003DDC(0, &qword_1000DB670, UIColor_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100033FE4(0, &qword_1000DBB00);
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

char *sub_100031EDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB700);
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

void *sub_100032020(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009704(0, &qword_1000DAC00, &qword_1000DAC08);
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
    sub_10000968C(0, &qword_1000DAC08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100032180(char *result, int64_t a2, char a3, char *a4)
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
    sub_100033FE4(0, &qword_1000DB6B0);
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

void *sub_100032290(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000091E4(0, &qword_1000DB6A8, sub_10001B4A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001B4A8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000323C8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100034030();
  sub_1000340B4(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1000340B4(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

void sub_1000325EC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      v134 = v5;
      if (v5 + 1 < v4)
      {
        v130 = v6;
        v9 = *a3;
        v10 = *a3 + 16 * v8;
        v11 = *(v10 + 8);
        v12 = *a3 + 16 * v5;
        v13 = *(v12 + 8);
        v137 = v4;
        if (v11 == v13)
        {
          v14 = *v12;
          v15 = *v10;
          v16 = v14;
          v17 = [v15 categoryName];
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v21 = [v16 categoryName];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          if (v18 == v5 && v20 == v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v7 = v134;
          v4 = v137;
          v26 = v25;
        }

        else
        {
          v26 = v13 < v11;
        }

        v27 = 0;
        v28 = v7 + 2;
        v29 = 16 * v7;
        v30 = (v9 + 16 * v7 + 40);
        v31 = 16 * v7;
        v135 = v26;
        do
        {
          v8 = v28;
          v32 = v27;
          v33 = v31;
          if (v28 >= v4)
          {
            break;
          }

          v34 = *(v30 - 2);
          if (*v30 == v34)
          {
            v140 = v8;
            v35 = *(v30 - 3);
            v36 = *(v30 - 1);
            v37 = v35;
            v145 = v36;
            v38 = [v36 categoryName];
            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v143 = v37;
            v42 = [v37 categoryName];
            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v46 = v39 == v43 && v41 == v45;
            v5 = v46 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
            v8 = v140;
            v7 = v134;

            v4 = v137;
            v26 = v135;
          }

          else
          {
            v5 = v34 < *v30;
          }

          v28 = v8 + 1;
          v30 += 2;
          v27 = v32 + 1;
          v31 = v33 + 16;
        }

        while (((v26 ^ v5) & 1) == 0);
        if (v26)
        {
          v6 = v130;
          if (v8 < v7)
          {
            goto LABEL_141;
          }

          if (v7 < v8)
          {
            v47 = 0;
            do
            {
              if (v7 + v47 != v7 + v32 + 1)
              {
                v52 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v48 = (v52 + v29);
                v49 = v52 + v33;
                v50 = *v48;
                v51 = v48[1];
                *v48 = *(v49 + 16);
                *(v49 + 16) = v50;
                *(v49 + 24) = v51;
              }

              --v32;
              ++v47;
              v33 -= 16;
              v29 += 16;
            }

            while (v47 + v7 < v7 + v32 + 2);
          }
        }

        else
        {
          v6 = v130;
        }
      }

      v53 = a3[1];
      if (v8 >= v53)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v8, v7))
      {
        goto LABEL_140;
      }

      if (v8 - v7 >= a4)
      {
        goto LABEL_61;
      }

      v54 = v7 + a4;
      if (__OFADD__(v7, a4))
      {
        goto LABEL_142;
      }

      if (v54 >= v53)
      {
        v54 = a3[1];
      }

      if (v54 < v7)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v8 == v54)
      {
        goto LABEL_61;
      }

      v131 = v6;
      v55 = *a3;
      v56 = *a3 + 16 * v8;
      v57 = v7 - v8;
      v133 = v54;
      v144 = *a3;
LABEL_47:
      v141 = v8;
      v58 = v55 + 16 * v8;
      v59 = *v58;
      v60 = *(v58 + 8);
      v136 = v57;
      v138 = v56;
      while (1)
      {
        v62 = *(v56 - 16);
        v61 = *(v56 - 8);
        if (v60 == v61)
        {
          break;
        }

        if (v61 >= v60)
        {
          goto LABEL_46;
        }

LABEL_56:
        if (!v55)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v59 = *v56;
        v60 = *(v56 + 8);
        *v56 = *(v56 - 16);
        *(v56 - 8) = v60;
        *(v56 - 16) = v59;
        v56 -= 16;
        if (__CFADD__(v57++, 1))
        {
          goto LABEL_46;
        }
      }

      v63 = v59;
      v64 = v62;
      v146 = v63;
      v65 = [v63 categoryName];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = v64;
      v70 = [v64 categoryName];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      if (v66 != v5 || v68 != v72)
      {
        break;
      }

      v55 = v144;
LABEL_46:
      v8 = v141 + 1;
      v56 = v138 + 16;
      v57 = v136 - 1;
      if (v141 + 1 != v133)
      {
        goto LABEL_47;
      }

      v8 = v133;
      v6 = v131;
      v7 = v134;
LABEL_61:
      if (v8 < v7)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100031644(0, *(v6 + 16) + 1, 1, v6);
      }

      v77 = *(v6 + 16);
      v76 = *(v6 + 24);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v6 = sub_100031644((v76 > 1), v77 + 1, 1, v6);
      }

      *(v6 + 16) = v78;
      v79 = v6 + 16 * v77;
      *(v79 + 32) = v7;
      *(v79 + 40) = v8;
      v80 = *a1;
      if (!*a1)
      {
        goto LABEL_149;
      }

      v5 = v8;
      if (v77)
      {
        while (2)
        {
          v81 = v78 - 1;
          if (v78 >= 4)
          {
            v86 = v6 + 32 + 16 * v78;
            v87 = *(v86 - 64);
            v88 = *(v86 - 56);
            v92 = __OFSUB__(v88, v87);
            v89 = v88 - v87;
            if (v92)
            {
              goto LABEL_126;
            }

            v91 = *(v86 - 48);
            v90 = *(v86 - 40);
            v92 = __OFSUB__(v90, v91);
            v84 = v90 - v91;
            v85 = v92;
            if (v92)
            {
              goto LABEL_127;
            }

            v93 = (v6 + 16 * v78);
            v95 = *v93;
            v94 = v93[1];
            v92 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v92)
            {
              goto LABEL_129;
            }

            v92 = __OFADD__(v84, v96);
            v97 = v84 + v96;
            if (v92)
            {
              goto LABEL_132;
            }

            if (v97 >= v89)
            {
              v115 = (v6 + 32 + 16 * v81);
              v117 = *v115;
              v116 = v115[1];
              v92 = __OFSUB__(v116, v117);
              v118 = v116 - v117;
              if (v92)
              {
                goto LABEL_136;
              }

              if (v84 < v118)
              {
                v81 = v78 - 2;
              }
            }

            else
            {
LABEL_81:
              if (v85)
              {
                goto LABEL_128;
              }

              v98 = (v6 + 16 * v78);
              v100 = *v98;
              v99 = v98[1];
              v101 = __OFSUB__(v99, v100);
              v102 = v99 - v100;
              v103 = v101;
              if (v101)
              {
                goto LABEL_131;
              }

              v104 = (v6 + 32 + 16 * v81);
              v106 = *v104;
              v105 = v104[1];
              v92 = __OFSUB__(v105, v106);
              v107 = v105 - v106;
              if (v92)
              {
                goto LABEL_134;
              }

              if (__OFADD__(v102, v107))
              {
                goto LABEL_135;
              }

              if (v102 + v107 < v84)
              {
                goto LABEL_95;
              }

              if (v84 < v107)
              {
                v81 = v78 - 2;
              }
            }
          }

          else
          {
            if (v78 == 3)
            {
              v82 = *(v6 + 32);
              v83 = *(v6 + 40);
              v92 = __OFSUB__(v83, v82);
              v84 = v83 - v82;
              v85 = v92;
              goto LABEL_81;
            }

            v108 = (v6 + 16 * v78);
            v110 = *v108;
            v109 = v108[1];
            v92 = __OFSUB__(v109, v110);
            v102 = v109 - v110;
            v103 = v92;
LABEL_95:
            if (v103)
            {
              goto LABEL_130;
            }

            v111 = v6 + 16 * v81;
            v113 = *(v111 + 32);
            v112 = *(v111 + 40);
            v92 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v92)
            {
              goto LABEL_133;
            }

            if (v114 < v102)
            {
              break;
            }
          }

          v119 = v81 - 1;
          if (v81 - 1 >= v78)
          {
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v120 = v6;
          v121 = v6 + 32;
          v6 = *(v6 + 32 + 16 * v119);
          v122 = *(v121 + 16 * v81 + 8);
          sub_100032E88((*a3 + 16 * v6), (*a3 + 16 * *(v121 + 16 * v81)), (*a3 + 16 * v122), v80);
          if (v142)
          {
            goto LABEL_122;
          }

          if (v122 < v6)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_100033330(v120);
          }

          if (v119 >= *(v120 + 2))
          {
            goto LABEL_125;
          }

          v123 = &v120[16 * v119];
          *(v123 + 4) = v6;
          *(v123 + 5) = v122;
          sub_1000332A4(v81);
          v6 = v120;
          v78 = *(v120 + 2);
          if (v78 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_112;
      }
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v55 = v144;
    if ((v74 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_56;
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_150;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_144:
    v6 = sub_100033330(v6);
  }

  v124 = *(v6 + 16);
  if (v124 < 2)
  {
LABEL_122:

    return;
  }

  while (*a3)
  {
    v125 = v6;
    v6 = *(v6 + 16 * v124);
    v126 = v125;
    v127 = *&v125[16 * v124 + 24];
    sub_100032E88((*a3 + 16 * v6), (*a3 + 16 * *&v125[16 * v124 + 16]), (*a3 + 16 * v127), v5);
    if (v142)
    {
      goto LABEL_122;
    }

    if (v127 < v6)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_100033330(v126);
    }

    if (v124 - 2 >= *(v126 + 2))
    {
      goto LABEL_138;
    }

    v128 = &v126[16 * v124];
    *v128 = v6;
    v128[1] = v127;
    sub_1000332A4(v124 - 1);
    v6 = v126;
    v124 = *(v126 + 2);
    if (v124 <= 1)
    {
      goto LABEL_122;
    }
  }

LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_100032E88(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 < 16 || v6 <= v7)
    {
      goto LABEL_55;
    }

    v55 = v4;
    while (2)
    {
      v50 = v6 - 16;
      v31 = v5;
      v32 = v14;
      v57 = v6;
      while (1)
      {
        v33 = *(v32 - 2);
        v34 = *(v32 - 1);
        v32 -= 16;
        v35 = *(v6 - 1);
        if (v34 != v35)
        {
          break;
        }

        v53 = v14;
        v36 = *(v6 - 2);
        v37 = v33;
        v38 = v36;
        v39 = [v37 categoryName];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v51 = v38;
        v43 = [v38 categoryName];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        if (v40 != v44 || v42 != v46)
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v31 - 16;
          v14 = v53;
          v4 = v55;
          v6 = v57;
          if (v48)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v5 = v31 - 16;
        v4 = v55;
        v6 = v57;
        if (v53 != v31)
        {
          goto LABEL_48;
        }

LABEL_36:
        v14 = v32;
        v31 = v5;
        if (v32 <= v4)
        {
          v14 = v32;
          goto LABEL_55;
        }
      }

      v5 = v31 - 16;
      if (v35 < v34)
      {
LABEL_49:
        if (v31 != v6)
        {
          *v5 = *v50;
        }

        if (v14 <= v4 || (v6 = v50, v50 <= v7))
        {
          v6 = v50;
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

LABEL_45:
    if (v14 == v31)
    {
      goto LABEL_36;
    }

LABEL_48:
    *v5 = *v32;
    goto LABEL_36;
  }

  if (a4 != __dst || &__dst[16 * v10] <= a4)
  {
    memmove(a4, __dst, 16 * v10);
  }

  v14 = &v4[16 * v10];
  if (v8 >= 16 && v6 < v5)
  {
    v52 = &v4[16 * v10];
    do
    {
      v15 = *(v6 + 1);
      v16 = *(v4 + 1);
      if (v15 == v16)
      {
        v56 = v6;
        v54 = v4;
        v17 = *v4;
        v18 = *v6;
        v19 = v17;
        v20 = [v18 categoryName];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = [v19 categoryName];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v21 == v25 && v23 == v27;
        if (v28)
        {

          v14 = v52;
          v4 = v54;
          v6 = v56;
LABEL_24:
          v30 = v4;
          v28 = v7 == v4;
          v4 += 16;
          if (v28)
          {
            goto LABEL_26;
          }

LABEL_25:
          *v7 = *v30;
          goto LABEL_26;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v52;
        v4 = v54;
        v6 = v56;
        if ((v29 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v16 >= v15)
      {
        goto LABEL_24;
      }

      v30 = v6;
      v28 = v7 == v6;
      v6 += 16;
      if (!v28)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 += 16;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v7;
LABEL_55:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000332A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100033330(v3);
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

unint64_t sub_100033344(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003346C(a1, v4);
}

unint64_t sub_100033388(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100033534(a1, a2, v6);
}

unint64_t sub_100033400(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_1000335EC(a1, v4);
}

unint64_t sub_10003346C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100033F88(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002E508(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100033534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000335EC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100033658(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10003411C();
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_1000338F4()
{
  v1 = v0;
  sub_10001A6A8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
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

void *sub_100033A44()
{
  v1 = v0;
  sub_10003411C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_100033BD0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100033D28(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      v11 += 16;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100033E88()
{
  v1 = v0[2];
  v2 = *(*sub_10000BFFC(v0 + 3, v0[6]) + qword_1000DB9E0);

  CurrentValueSubject.value.getter();

  sub_100019D4C(v4);

  CurrentValueSubject.send(_:)();
}

void sub_100033F30()
{
  if (!qword_1000DB6A0)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB6A0);
    }
  }
}

void sub_100033FE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _ContiguousArrayStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100034030()
{
  if (!qword_1000DB708)
  {
    sub_1000340B4(255, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB708);
    }
  }
}

void sub_1000340B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003DDC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10003411C()
{
  if (!qword_1000DB720)
  {
    sub_1000340B4(255, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr, &type metadata accessor for Array);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB720);
    }
  }
}

id sub_1000341B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  return sub_100034AAC(a1, a4, *v4, v4[1]);
}

void *sub_1000341C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10003195C(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10003195C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10003195C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10003195C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10003195C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}