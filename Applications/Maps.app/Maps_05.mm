id sub_1000FC840(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_contextType) == 1)
  {
    *&v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v14 + 1) = v3;

    AnyHashable.init<A>(_:)();
    v15 = &type metadata for Bool;
    LOBYTE(v14) = 1;
    sub_1000D2BE0(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10012AC14(v13, v16, isUniquelyReferenced_nonNull_native);
    sub_10005BF8C(v16);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1;
  }

  v6 = Strong;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    return a1;
  }

  v8 = v7;
  *&v14 = 0xD000000000000018;
  *(&v14 + 1) = 0x800000010121B930;
  AnyHashable.init<A>(_:)();
  result = [v8 appCoordinator];
  if (result)
  {
    v10 = result;
    v11 = [result isRoutePlanningPresented];

    v15 = &type metadata for Bool;
    LOBYTE(v14) = v11;
    sub_1000D2BE0(&v14, v13);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_10012AC14(v13, v16, v12);

    sub_10005BF8C(v16);
    return a1;
  }

  __break(1u);
  return result;
}

id sub_1000FCA48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsLogicController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000FCC78(const char *a1, void (*a2)(id))
{
  v5 = [*(v2 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchSessionManager) currentSearchSession];
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101960018);
  v7 = static os_log_type_t.info.getter();
  v8 = v5;
  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, v7, a1, v10, 0xCu);
    sub_1000DCD10(v11);
  }

  a2(v8);
  v13 = v8;
  sub_1002451E0(v8);
}

void sub_1000FCE98()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_101960018);
  v1 = static os_log_type_t.info.getter();

  v2 = Logger.logObject.getter();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    sub_100014C84(0, &qword_10190E160);
    v5 = Array.description.getter();
    v7 = sub_10004DEB8(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v1, "[SearchResultContext] searchSessionManagerReceiveEVChargersUpdate for \n%s", v3, 0xCu);
    sub_10004E3D0(v4);
  }

  sub_1003FA35C();
}

void sub_1000FD110(char a1, char a2)
{
  if (a1 == 1 && a2 == 2)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960018);
    v3 = static os_log_type_t.info.getter();
    v4 = Logger.logObject.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, v3, "[SearchResultContext] Router is unloading, clear search and inform context to get popped.", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1000FBE30();
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler);
      v10 = v8;
      sub_1000CD9D4(v9);

      if (v9)
      {
        v9();
        sub_1000588AC(v9);
      }
    }
  }
}

void sub_1000FD294()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_101960018);
  v1 = static os_log_type_t.info.getter();
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, v1, "[SearchResultContext] logicControllerSearchRefreshHandler", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000FBFF4();
  }
}

void sub_1000FD3A0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem;
    if (([*(Strong + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem) isEqualToSearchFieldItem:a1] & 1) == 0)
    {
      v9 = *&v7[v8];
      *&v7[v8] = a1;

      v10 = a1;
    }

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_101960018);
    v12 = static os_log_type_t.debug.getter();
    v13 = Logger.logObject.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, v12, "[SearchResultContext] logicControllerSearchHandler", v14, 2u);
    }

    sub_1000FB9E8(a2, a3);
  }
}

unint64_t sub_1000FD514()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_100100D84(v1);
  return v1;
}

unint64_t sub_1000FD5C0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  sub_100100D84(a2);
  return sub_100100D94(v2);
}

uint64_t sub_1000FD5FC()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t sub_1000FD69C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1000FD744(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FD854()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000FD8F4(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FD9F8()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FDAF8()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FDBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FDC24()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FDD24()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FDDD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
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

uint64_t sub_1000FDEC4(uint64_t *a1)
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
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000FE020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FE06C()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FE120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
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

uint64_t sub_1000FE20C(uint64_t *a1)
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
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000FE368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FE3B4()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 128);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FE468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
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

uint64_t sub_1000FE554(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100EB8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000FE6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FE6FC()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 144);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FE7B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012D0;
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

uint64_t sub_1000FE89C(uint64_t *a1)
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
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000FE9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 144);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FEA44()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 160);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FEAF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 160);
  v5 = *(v3 + 168);
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

uint64_t sub_1000FEBE4(uint64_t *a1)
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
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000FED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FED8C()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 176);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FEE40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100100E3C;
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

uint64_t sub_1000FEF2C(uint64_t *a1)
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
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000FF088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FF0D4()
{
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 192);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000FF188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 192);
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000FF1D4()
{
  *(v0 + 24) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  ObservationRegistrar.init()();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for PlaceItemsController()) init];
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000FF2F8();
  return v0;
}

uint64_t sub_1000FF2F8()
{
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100100D94(v5);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000FF4C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AccessoryType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) != enum case for AccessoryType.note(_:))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11 = *(a2 + OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_placeItem);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  v14 = sub_100124F70(v12, v13);

  if (v14)
  {
    swift_getKeyPath();
    v17[1] = v3;
    sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v3 + 160);
    if (v16)
    {

      v16(v14);
      sub_1000588AC(v16);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000FF6C4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  v6 = 0;
  v23 = v4 & 0xC000000000000001;
  v21 = v5;
  v22 = v4;
  do
  {
    v7 = v6;
    while (1)
    {
      if (v23)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = v3;
      v11 = *(v3 + 40);
      v12 = *&v8[OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_placeItem];
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      swift_getKeyPath();
      sub_100100DA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById;
      swift_beginAccess();
      if (*(*(v11 + v15) + 16))
      {
        break;
      }

LABEL_6:
      v3 = v10;
      ++v7;
      v4 = v22;
      if (v6 == v21)
      {
        goto LABEL_23;
      }
    }

    sub_100297040(v14, v13);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      goto LABEL_6;
    }

    swift_unknownObjectRetain();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v3 = v10;
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v22;
  }

  while (v6 != v21);
LABEL_23:
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v3 + 144);
  if (v18)
  {

    v18(_swiftEmptyArrayStorage, a2);
    sub_1000588AC(v18);
  }
}

uint64_t sub_1000FFA0C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_22:
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  v6 = 0;
  v23 = v4 & 0xC000000000000001;
  v21 = v5;
  v22 = v4;
  do
  {
    v7 = v6;
    while (1)
    {
      if (v23)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = v3;
      v11 = *(v3 + 40);
      v12 = *&v8[OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_placeItem];
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      swift_getKeyPath();
      sub_100100DA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById;
      swift_beginAccess();
      if (*(*(v11 + v15) + 16))
      {
        break;
      }

LABEL_6:
      v3 = v10;
      ++v7;
      v4 = v22;
      if (v6 == v21)
      {
        goto LABEL_23;
      }
    }

    sub_100297040(v14, v13);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      goto LABEL_6;
    }

    swift_unknownObjectRetain();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v3 = v10;
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v22;
  }

  while (v6 != v21);
LABEL_23:
  swift_getKeyPath();
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v3 + 176);
  if (v18)
  {

    v18(_swiftEmptyArrayStorage, a2);
    sub_1000588AC(v18);
  }
}

uint64_t sub_1000FFD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  if (!a2 || (String._mapsui_nilIfEmpty.getter(), !v9))
  {
    v11 = 0;
    if (*(v3 + 24))
    {
      goto LABEL_4;
    }

LABEL_6:
    *(v3 + 24) = v11;
    goto LABEL_7;
  }

  v10 = *(v2 + 24);
  v11 = 1;
  if (v10 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v19[-2] = v3;
  LOBYTE(v19[-1]) = v11;
  v19[1] = v3;
  sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  v13 = *(v3 + 40);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = v13;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  sub_10020AAE4(0, 0, v8, &unk_1011E5F50, v17);
}

uint64_t sub_1000FFFAC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  result = sub_100124F70(*(a2 + 16), *(a2 + 24));
  if (result)
  {
    if (a1 <= 3u)
    {
      if (a1 <= 1u)
      {
        if (a1)
        {
          v9 = result;
          swift_getKeyPath();
          sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = v3[14];
          if (!v10)
          {
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          v9 = result;
          swift_getKeyPath();
          sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = v3[12];
          if (!v10)
          {
            return swift_unknownObjectRelease();
          }
        }

        v10(v9);
        sub_1000588AC(v10);
        return swift_unknownObjectRelease();
      }

      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v11 = result;
          swift_getKeyPath();
          sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v12 = v3[18];
          if (v12)
          {
            sub_1000CE6B8(&qword_101908400);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_1011E47B0;
            *(v13 + 32) = v11;
            sub_1000CD9D4(v12);
            swift_unknownObjectRetain();
LABEL_19:
            v12(v13, a3);
            swift_unknownObjectRelease();
            sub_1000588AC(v12);
          }

          return swift_unknownObjectRelease();
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (a1 <= 9u)
      {
        if (a1 - 4 < 2)
        {
          v7 = result;
          swift_getKeyPath();
          sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v8 = v3[20];
          if (v8)
          {

            v8(v7);
            swift_unknownObjectRelease();
            return sub_1000588AC(v8);
          }

          return swift_unknownObjectRelease();
        }

        if (a1 != 8)
        {
          goto LABEL_24;
        }

LABEL_17:
        v14 = result;
        swift_getKeyPath();
        sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v12 = v3[22];
        if (v12)
        {
          sub_1000CE6B8(&qword_101908400);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_1011E47B0;
          *(v13 + 32) = v14;
          swift_unknownObjectRetain();
          sub_1000CD9D4(v12);
          goto LABEL_19;
        }

        return swift_unknownObjectRelease();
      }

      if (a1 != 10)
      {
        if (a1 == 11)
        {
          goto LABEL_17;
        }

LABEL_24:

        return swift_unknownObjectRelease();
      }
    }

    v15 = result;
    swift_getKeyPath();
    sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = v3[16];
    if (v16)
    {

      v16(v15, a3);
      sub_1000588AC(v16);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001004B0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  swift_getKeyPath();
  v19 = v3;
  sub_100100DA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps20PlaceItemsController__placeItems);
  v19 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v15 = v3;
    v16 = a2;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v4 + 8 * v3 + 32);

        a2 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      v9 = type metadata accessor for PlaceItemRowViewModel();
      v10 = objc_allocWithZone(v9);

      ObservationRegistrar.init()();
      *&v10[OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_placeItem] = v6;

      *&v10[OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_viewModel] = sub_1004D6894(v11, sub_1001011B0, v8);
      v18.receiver = v10;
      v18.super_class = v9;
      objc_msgSendSuper2(&v18, "init");

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
      if (a2 == v5)
      {
        v12 = v19;
        v3 = v15;
        a2 = v16;
        goto LABEL_16;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_16:

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_18;
    }

LABEL_23:
    if (*(*(v3 + OBJC_IVAR____TtC4Maps20PlaceItemsController_placesDataProvider) + 24) == 1)
    {
      swift_getKeyPath();
      v19 = a1;
      sub_100100DA4(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(a1 + 24))
      {
        goto LABEL_18;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_28;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_18:
  v14 = v12;
LABEL_28:
  *a2 = v14;
  return result;
}

uint64_t sub_100100848(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000FFFAC(a2, a4, a1);
  }

  return result;
}

uint64_t sub_1001008C4()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_1011E5FD8, v6);
}

uint64_t sub_100100A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100AB0, v6, v5);
}

uint64_t sub_100100AB0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000FF2F8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100B40()
{
  sub_100100D94(*(v0 + 16));

  sub_1000588AC(*(v0 + 48));
  sub_1000588AC(*(v0 + 64));
  sub_1000588AC(*(v0 + 80));
  sub_1000588AC(*(v0 + 96));
  sub_1000588AC(*(v0 + 112));
  sub_1000588AC(*(v0 + 128));
  sub_1000588AC(*(v0 + 144));
  sub_1000588AC(*(v0 + 160));
  sub_1000588AC(*(v0 + 176));
  sub_1000588AC(*(v0 + 192));
  v1 = OBJC_IVAR____TtC4Maps19PlaceItemsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100100C00()
{
  sub_100100B40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaceItemsViewModel()
{
  result = qword_10190A918;
  if (!qword_10190A918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100CAC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_100100D84(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100100D94(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100100DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100100DEC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 176);
  *(v2 + 176) = v1;
  *(v2 + 184) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100100E6C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 144);
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100100EB8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_100100F04(uint64_t a1)
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

  return sub_100125A0C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100100FD8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 160);
  *(v2 + 160) = v1;
  *(v2 + 168) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100101024()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 48);
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

unint64_t sub_1001010B8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_100100D84(v1);
  return sub_100100D94(v3);
}

uint64_t sub_1001010FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100100A18(a1, v4, v5, v6);
}

uint64_t sub_1001011B8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 96);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100101204()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 112);
  *(v2 + 112) = v1;
  *(v2 + 120) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100101250()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 128);
  *(v2 + 128) = v1;
  *(v2 + 136) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

void sub_10010136C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps17GuidesHomeContext_containees;
  swift_beginAccess();
  v5 = sub_1003989D0();
  swift_endAccess();

  v6 = *&v2[v4];
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
LABEL_3:
      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v6 + 8 * v8 + 32);
LABEL_8:
          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (!v9)
          {
LABEL_19:

            return;
          }

          [v9 setGuideLocation:a1];
LABEL_17:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v17 = Strong;
            [Strong setNeedsUpdateComponent:@"cards" animated:1];
          }

          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_24;
      }

      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_8;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [v2 iosChromeViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 currentTraits];

    goto LABEL_15;
  }

  v13 = [objc_opt_self() sharedService];
  if (v13)
  {
    v14 = v13;
    v12 = [v13 defaultTraits];

    if (v12)
    {
LABEL_15:
      v15 = [objc_allocWithZone(GuidesHomeViewController) initWithGuideLocation:a1 withTraits:v12];

      [v15 setContaineeDelegate:v2];
      [v15 setActionDelegate:v2];
      swift_beginAccess();
      v8 = v15;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_16:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        goto LABEL_17;
      }

LABEL_24:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100101634(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v11 = a2;
  v10 = a5;
  v9(a2, a3, a4, a5);
}

void *sub_100101700(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1001017BC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_100101880(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001018D4(v1, &OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage);
}

void sub_1001018D4(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000F1178();
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

void sub_100101A58(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage);
  *(a1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage) = a2;
  v3 = a2;
}

uint64_t sub_100101A94()
{
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_100101B40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem);
  return swift_unknownObjectRetain();
}

uint64_t sub_100101BF4()
{
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100101CC0(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_100101D04(void *a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v52 = a1;
  v5 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v3;
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v3 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__image);
  if (v15)
  {
    v16 = v15;
    v50(v15);
  }

  else
  {
    v48 = v10;
    v49 = v12;
    v46 = v7;
    v47 = v14;
    swift_getKeyPath();
    aBlock[0] = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = v4;
    v17 = *(v4 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem);
    if (v17)
    {
      v18 = [v17 _photos];
      if (v18)
      {
        v19 = v18;
        v44 = v11;
        sub_1000CE6B8(&qword_10190ABA0);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = [objc_opt_self() defaultPhotoOptionsWithAllowSmaller:1];
        if (v20 >> 62)
        {
          goto LABEL_27;
        }

        v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
        v23 = 0;
        do
        {
          if (v22 == v23)
          {

            v26 = v48;
            (*(v49 + 56))(v48, 1, 1, v44);
LABEL_23:
            sub_1000FA5D4(v26);
            return;
          }

          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v24 = *(v20 + 8 * v23 + 32);
            swift_unknownObjectRetain();
          }

          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v22 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_8;
          }

          ImageProvidingSpecs.preferredSize.getter();
          v25 = [v24 bestPhotoForSize:v21 options:?];
          swift_unknownObjectRelease();
          ++v23;
        }

        while (!v25);
        v52 = v21;

        v27 = [v25 url];
        if (v27)
        {
          v28 = v46;
          v29 = v27;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
          v31 = v44;
          v26 = v48;
          v32 = v49;
        }

        else
        {
          v30 = 1;
          v31 = v44;
          v26 = v48;
          v32 = v49;
          v28 = v46;
        }

        v33 = v47;
        v34 = v45;
        (*(v32 + 56))(v28, v30, 1, v31);
        sub_100102C34(v28, v26);
        if ((*(v32 + 48))(v26, 1, v31) == 1)
        {

          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        (*(v32 + 32))(v33, v26, v31);
        v35 = [objc_opt_self() sharedVisitedPlacesContainerImageManager];
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        v39 = swift_allocObject();
        v40 = v50;
        v41 = v51;
        v39[2] = v34;
        v39[3] = v40;
        v39[4] = v41;
        aBlock[4] = sub_100102CA4;
        aBlock[5] = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100101634;
        aBlock[3] = &unk_1016037A0;
        v42 = _Block_copy(aBlock);

        [v35 loadAppImageAtURL:v38 completionHandler:v42];

        _Block_release(v42);
        swift_unknownObjectRelease();

        (*(v32 + 8))(v33, v31);
      }
    }
  }
}

uint64_t sub_100102294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();
  v15 = a1;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = a1;
  v17[6] = a6;
  v17[7] = a7;

  sub_10020AAE4(0, 0, v12, &unk_1011E6258, v17);
}

uint64_t sub_100102414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001024B0, v9, v8);
}

uint64_t sub_1001024B0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 48);
    v2 = v1;
    sub_1001018D4(v1, &OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__image);
  }

  (*(v0 + 56))(*(v0 + 48));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100102584()
{
  v1 = OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitedPlacesPOIImageProvider()
{
  result = qword_10190AAC8;
  if (!qword_10190AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001026E4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_100102828()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage);
  v3 = v2;
  return v2;
}

uint64_t sub_1001028D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1001029A0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem);
  if (v2)
  {
    Hasher._combine(_:)(v2);
  }
}

Swift::Int sub_100102A58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem);
  if (v2)
  {
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_100102BAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100102BF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage);
  *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage) = v2;
  v4 = v2;
}

uint64_t sub_100102C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101909B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102CB0(uint64_t a1)
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
  v10[1] = sub_10003AC4C;

  return sub_100102414(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100102D84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__image);
  *(v1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__image) = v2;
  v4 = v2;
}

uint64_t sub_100102DC4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

BOOL sub_100102E08(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100102BAC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem);
  if (v4)
  {
    swift_getKeyPath();
    swift_unknownObjectRetain();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v4 isEqualToMapItem:*(a2 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem)];
    swift_unknownObjectRelease();
  }

  return v4 != 0;
}

uint64_t sub_100102F30()
{
  v0 = type metadata accessor for AudioPickerViewModel.AudioOption();
  sub_100021578(v0, qword_10190ABA8);
  sub_100021540(v0, qword_10190ABA8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010121BEA0;
  v1._countAndFlagsBits = 0x797420646574754DLL;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0xEA00000000006570;
  v2._countAndFlagsBits = 0x646574754DLL;
  v2._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v2, v4);
  return AudioPickerViewModel.AudioOption.init(name:symbol:axID:)();
}

uint64_t sub_100103038()
{
  v0 = type metadata accessor for AudioPickerViewModel.AudioOption();
  sub_100021578(v0, qword_10190ABC0);
  sub_100021540(v0, qword_10190ABC0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010121BE20;
  v1._countAndFlagsBits = 0x4F20737472656C41;
  v1._object = 0xEB00000000796C6ELL;
  v2._object = 0x800000010121BE00;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v1, v4);
  _UISolariumEnabled();
  return AudioPickerViewModel.AudioOption.init(name:symbol:axID:)();
}

uint64_t sub_100103190()
{
  v0 = type metadata accessor for AudioPickerViewModel.AudioOption();
  sub_100021578(v0, qword_10190ABD8);
  sub_100021540(v0, qword_10190ABD8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010121BF20;
  v1._countAndFlagsBits = 0x20646574756D6E55;
  v1._object = 0xEC00000065707974;
  v4._countAndFlagsBits = 0xD000000000000019;
  v2._countAndFlagsBits = 0x646574756D6E55;
  v2._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v2, v4);
  return AudioPickerViewModel.AudioOption.init(name:symbol:axID:)();
}

uint64_t sub_1001032C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100103338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001033AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100103420()
{
  v1 = OBJC_IVAR____TtC4Maps24NavAudioControlViewModel__audioPickerModel;
  v2 = sub_1000CE6B8(&qword_10190AF28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps24NavAudioControlViewModel__selectedAudioOption;
  v4 = sub_1000CE6B8(&qword_10190AF30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Maps24NavAudioControlViewModel__volumeLevels;
  v6 = sub_1000CE6B8(&qword_10190AF38);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC4Maps24NavAudioControlViewModel__selectedVolumeLevel;
  v8 = sub_1000CE6B8(&qword_10190AF40);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NavAudioControlViewModel()
{
  result = qword_10190AC38;
  if (!qword_10190AC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100103600()
{
  sub_1001037F8(319, &qword_10190AC48, &type metadata accessor for AudioPickerViewModel);
  if (v0 <= 0x3F)
  {
    sub_1001037F8(319, &qword_10190AC50, &type metadata accessor for AudioPickerViewModel.AudioOption);
    if (v1 <= 0x3F)
    {
      sub_100103794();
      if (v2 <= 0x3F)
      {
        sub_1001037F8(319, &unk_10190AC68, type metadata accessor for NavSpokenDirectionVoiceVolume);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100103794()
{
  if (!qword_10190AC58)
  {
    sub_1000D6664(&qword_10190AC60);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10190AC58);
    }
  }
}

void sub_1001037F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10010384C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NavAudioControlViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10010388C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for MapsDesignAccessibilityString();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000CE6B8(&qword_10190AF48);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1000CE6B8(&qword_10190AF50);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = sub_1000CE6B8(&qword_10190AF58);
  sub_100103CBC(v1, &v7[*(v12 + 44)]);
  v13 = *v1;
  v37 = v1[3];
  v38 = v13;
  v14 = swift_allocObject();
  v15 = v1[1];
  *(v14 + 1) = *v1;
  *(v14 + 2) = v15;
  v16 = v1[3];
  *(v14 + 3) = v1[2];
  *(v14 + 4) = v16;
  v17 = &v7[*(v5 + 36)];
  *v17 = sub_1001095D8;
  v17[1] = v14;
  v17[2] = 0;
  v17[3] = 0;
  v33 = v1[3];
  sub_1000D2DFC(&v38, v36, &qword_10190AF60);

  sub_1000D2DFC(&v37, v36, &qword_10190AF68);
  sub_1000CE6B8(&qword_10190AF68);
  State.wrappedValue.getter();
  v18 = swift_allocObject();
  v19 = v1[1];
  v18[1] = *v1;
  v18[2] = v19;
  v20 = v1[3];
  v18[3] = v1[2];
  v18[4] = v20;
  sub_1000D2DFC(&v38, &v33, &qword_10190AF60);

  sub_1000D2DFC(&v37, &v33, &qword_10190AF68);
  v21 = sub_1001095E8();
  v22 = v27;
  View.onChange<A>(of:initial:_:)();

  sub_100024F64(v7, &qword_10190AF48);
  *v4 = 0xD000000000000015;
  v4[1] = 0x800000010121BCF0;
  v24 = v30;
  v23 = v31;
  (*(v30 + 104))(v4, enum case for MapsDesignAccessibilityString.custom(_:), v31);
  *&v33 = v22;
  *(&v33 + 1) = &type metadata for Int;
  v34 = v21;
  v35 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.mapsDesignAXID(_:)();
  (*(v24 + 8))(v4, v23);
  return (*(v29 + 8))(v11, v25);
}

uint64_t sub_100103CBC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_1000CE6B8(&qword_10190AF88);
  __chkstk_darwin(v46);
  v45 = &v41 - v3;
  v4 = sub_1000CE6B8(&qword_10190AF90);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v41 - v7;
  v42 = type metadata accessor for AudioPickerViewModel.AudioOption();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioPickerViewModel();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CE6B8(&qword_10190AF98);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v53 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = a1[3];
  v18 = swift_allocObject();
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  sub_1000D2DFC(&v53, v51, &qword_10190AF60);

  sub_1000D2DFC(&v52, v51, &qword_10190AF68);
  AudioPickerView.init(model:currentAudioOption:audioTypeChangeHandler:)();
  v21 = static Edge.Set.horizontal.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v22 = &v17[*(v13 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (qword_101906540 != -1)
  {
    swift_once();
  }

  v27 = v42;
  sub_100021540(v42, qword_10190ABA8);
  v28 = static AudioPickerViewModel.AudioOption.== infix(_:_:)();
  v29 = (*(v8 + 8))(v10, v27);
  __chkstk_darwin(v29);
  *(&v41 - 2) = a1;
  *(&v41 - 8) = v28 & 1;
  sub_1000CE6B8(&qword_10190AFA0);
  sub_1001096D4();
  v30 = v45;
  List<>.init(content:)();
  sub_100109B44();
  v31 = v44;
  View.listHasStackBehavior()();
  sub_100024F64(v30, &qword_10190AF88);
  v32 = v43;
  sub_1000D2DFC(v17, v43, &qword_10190AF98);
  v34 = v47;
  v33 = v48;
  v35 = *(v48 + 16);
  v36 = v49;
  v35(v47, v31, v49);
  v46 = v17;
  v37 = v50;
  sub_1000D2DFC(v32, v50, &qword_10190AF98);
  v38 = sub_1000CE6B8(&qword_10190B030);
  v35((v37 + *(v38 + 48)), v34, v36);
  v39 = *(v33 + 8);
  v39(v31, v36);
  sub_100024F64(v46, &qword_10190AF98);
  v39(v34, v36);
  return sub_100024F64(v32, &qword_10190AF98);
}

uint64_t sub_1001042F4(uint64_t a1, char a2)
{
  v4 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for SectionHeaderViewModel.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CE6B8(&qword_10190AFC8);
  __chkstk_darwin(v12);
  v18 = a1;
  v19 = a2;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v20._object = 0x800000010121BF90;
  v13._countAndFlagsBits = 0x656D756C6F56;
  v14._object = 0x800000010121BF70;
  v20._countAndFlagsBits = 0xD000000000000049;
  v14._countAndFlagsBits = 0xD000000000000015;
  v13._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v13, v20);
  (*(v8 + 104))(v10, enum case for SectionHeaderViewModel.Size.nav(_:), v7);
  v15 = type metadata accessor for SectionHeaderViewModel.ActionType();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  SectionHeader.init(model:)();
  sub_1000CE6B8(&qword_10190AFE8);
  sub_1001097F8();
  sub_100109908();
  return Section<>.init(header:content:)();
}

uint64_t sub_100104630@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v28 = a3;
  v4 = type metadata accessor for InlinePickerStyle();
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10190B000);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - v10;
  v12 = sub_1000CE6B8(&qword_10190AFF0);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v24[0] = v16;
  v24[1] = v15;
  v31 = *(a1 + 48);
  sub_1000CE6B8(&qword_10190AF68);
  State.projectedValue.getter();
  v29 = a1;
  LOBYTE(a1) = v25;
  v30 = v25;
  sub_1000CE6B8(&qword_10190B040);
  sub_100109C68();
  Picker<>.init(_:selection:content:)();
  InlinePickerStyle.init()();
  sub_1000414C8(&qword_10190B008, &qword_10190B000);
  v17 = v26;
  View.pickerStyle<A>(_:)();
  (*(v27 + 8))(v7, v17);
  (*(v9 + 8))(v11, v8);
  v18 = &v14[*(v12 + 36)];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0x4034000000000000;
  v18[32] = 0;
  sub_1001099FC();
  v19 = v28;
  View.labelsHidden()();
  sub_100024F64(v14, &qword_10190AFF0);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  result = sub_1000CE6B8(&qword_10190AFE8);
  v23 = (v19 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_100109DD8;
  v23[2] = v21;
  return result;
}

uint64_t sub_1001049D0(__int128 *a1, char a2)
{
  v11 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v10;
  swift_getKeyPath();
  v10 = a1[3];
  v4 = swift_allocObject();
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  v6 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v6;
  *(v4 + 80) = a2;
  sub_1000D2DFC(&v11, v8, &qword_10190AF60);

  sub_1000D2DFC(&v10, v8, &qword_10190AF68);
  sub_1000CE6B8(&qword_10190AC60);
  sub_1000CE6B8(&qword_10190B058);
  sub_1000414C8(&qword_10190B060, &qword_10190AC60);
  sub_100109CEC();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100104BAC@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v4 = type metadata accessor for NavigationCell();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = sub_100176B38(v15);
  v37 = v17;
  v38 = v16;
  if (_UISolariumEnabled())
  {
    if (!v15)
    {
      v18 = 2003790894;
      goto LABEL_12;
    }

    if (v15 == 1)
    {
      v18 = 1684630830;
LABEL_12:
      v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v15)
    {
      v19 = 0xE900000000000070;
      v20 = 0x752E332E65766177;
      goto LABEL_14;
    }

    if (v15 == 1)
    {
      v19 = 0xEB00000000746665;
      v20 = 0x6C2E332E65766177;
      goto LABEL_14;
    }
  }

  if (v15 == 2)
  {
    v19 = 0xE800000000000000;
LABEL_13:
    v20 = 0x6D726F6665766177;
    goto LABEL_14;
  }

  v20 = 0;
  v19 = 0xE000000000000000;
LABEL_14:
  v36 = sub_100176B38(v15);
  v35 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v48 == v15;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  *v14 = v20;
  *(v14 + 1) = v19;
  v14[16] = v22;
  (*(v12 + 104))(v14, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.volume(_:), v11);
  LeadingAccessoryViewModel.init(type:)();
  v23 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  UUID.init()();
  v24 = type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v25 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  *(&v49 + 1) = v24;
  v50 = sub_100109E48(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  *&v48 = v25;

  v26 = v42;
  NavigationCell.init(model:tapHandler:)();
  *&v48 = v36;
  *(&v48 + 1) = v35;
  sub_1000E5580();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  sub_100109E48(&qword_10190A030, &type metadata accessor for NavigationCell);
  v32 = v44;
  View.accessibilityLabel(_:)();
  sub_1000F0A40(v27, v29, v31 & 1);

  return (*(v43 + 8))(v26, v32);
}

uint64_t sub_10010516C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000CE6B8(&qword_10190AF68);
  return State.wrappedValue.setter();
}

uint64_t sub_100105218(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != v6)
  {
    return (*(a3 + 32))(v4);
  }

  return result;
}

id sub_1001052F4()
{
  v1 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences);
  }

  else
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [objc_allocWithZone(AudioPreferences) initWithDefaults:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100105468(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1001056DC()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AudioPickerViewModel.AudioOption();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = v79 - v7;
  __chkstk_darwin(v8);
  v92 = v79 - v9;
  __chkstk_darwin(v10);
  v12 = v79 - v11;
  v84 = type metadata accessor for AudioPickerViewModel();
  v13 = *(v84 - 8);
  __chkstk_darwin(v84);
  v86 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v85 = v79 - v16;
  __chkstk_darwin(v17);
  v19 = v79 - v18;
  __chkstk_darwin(v20);
  v22 = v79 - v21;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_autoDismissDelay] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_analyticsTarget] = 611;
  v23 = &v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_navAudioControlViewModel] = 0;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences] = 0;
  v25 = &v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_geoConfigListener];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer] = 0;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_contentHeight] = 0;
  *&v0[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_contentHeaderHeight] = 0;
  v96.receiver = v0;
  v96.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v96, "initWithNibName:bundle:", 0, 0);
  v27 = [v26 cardPresentationController];
  if (!v27)
  {
    __break(1u);
    goto LABEL_34;
  }

  v28 = v27;
  [v27 setBlurInCardView:0];

  v29 = [v26 cardPresentationController];
  v91 = v26;

  if (!v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v83 = v5;
  v88 = v22;
  v89 = v19;
  v93 = v13;
  v90 = v12;
  [v29 setMaximumLayoutForEdgeInsetUpdate:0];

  v30 = [objc_opt_self() sharedService];
  if (!v30)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = NavigationConfig_SpokenGuidanceVolumeUserChoice;
  v33 = *(&NavigationConfig_SpokenGuidanceVolumeUserChoice + 1);
  sub_100109428();
  v34 = static OS_dispatch_queue.main.getter();
  v35 = swift_allocObject();
  v36 = v91;
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v31;
  aBlock[4] = sub_10010947C;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054183C;
  aBlock[3] = &unk_101603890;
  v38 = _Block_copy(aBlock);
  v39 = v31;

  v79[1] = v32;
  v80 = v33;
  v40 = _GEOConfigAddBlockListenerForKey();
  _Block_release(v38);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v41 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController_geoConfigListener;
  swift_beginAccess();
  sub_100109484(aBlock, &v36[v41]);
  swift_endAccess();
  v42 = [v39 route];
  v43 = v42;
  v44 = v42 == 0;
  if (!v42)
  {
    v42 = v39;
  }

  v45 = &selRef_desiredTransportType;
  if (!v44)
  {
    v45 = &selRef_transportType;
  }

  v46 = [v42 *v45];
  sub_1000CE6B8(&qword_10190AF20);
  v47 = *(v3 + 72);
  v48 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v82 = v39;
  if (v46)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1011E1D60;
    v50 = v49 + v48;
    if (qword_101906540 != -1)
    {
      swift_once();
    }

    v51 = sub_100021540(v2, qword_10190ABA8);
    v52 = *(v3 + 16);
    v52(v50, v51, v2);
    if (qword_101906550 != -1)
    {
      swift_once();
    }

    v53 = sub_100021540(v2, qword_10190ABD8);
    v54 = v50 + v47;
  }

  else
  {
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1011E1D40;
    v56 = v55 + v48;
    if (qword_101906540 != -1)
    {
      swift_once();
    }

    v57 = sub_100021540(v2, qword_10190ABA8);
    v52 = *(v3 + 16);
    v52(v56, v57, v2);
    if (qword_101906548 != -1)
    {
      swift_once();
    }

    v58 = sub_100021540(v2, qword_10190ABC0);
    v52(v56 + v47, v58, v2);
    v59 = v56 + 2 * v47;
    if (qword_101906550 != -1)
    {
      swift_once();
    }

    v53 = sub_100021540(v2, qword_10190ABD8);
    v54 = v59;
  }

  v52(v54, v53, v2);
  v60 = v88;
  AudioPickerViewModel.init(options:)();
  Integer = GEOConfigGetInteger();
  v62 = sub_1001052F4();
  v63 = [v62 guidanceLevelForTransportType:v46];

  v81 = v43;
  v80 = Integer;
  if (v63 + 1 >= 2)
  {
    if (v63 == 1)
    {
      v64 = v92;
      if (qword_101906548 != -1)
      {
        swift_once();
      }

      v65 = qword_10190ABC0;
    }

    else
    {
      v64 = v92;
      if (qword_101906550 != -1)
      {
        swift_once();
      }

      v65 = qword_10190ABD8;
    }
  }

  else
  {
    v64 = v92;
    if (qword_101906540 != -1)
    {
      swift_once();
    }

    v65 = qword_10190ABA8;
  }

  v66 = sub_100021540(v2, v65);
  v79[0] = v3;
  v67 = v90;
  v52(v90, v66, v2);
  v68 = *(v93 + 16);
  v69 = v89;
  v70 = v84;
  v68(v89, v60, v84);
  v52(v64, v67, v2);
  type metadata accessor for NavAudioControlViewModel();
  v71 = swift_allocObject();
  v72 = v52;
  v73 = v85;
  v68(v85, v69, v70);
  swift_beginAccess();
  v68(v86, v73, v70);
  Published.init(initialValue:)();
  v74 = *(v93 + 8);
  v93 += 8;
  v86 = v74;
  (v74)(v73, v70);
  swift_endAccess();
  v75 = v87;
  v72(v87, v92, v2);
  swift_beginAccess();
  v72(v83, v75, v2);
  Published.init(initialValue:)();
  v76 = *(v79[0] + 8);
  v76(v75, v2);
  swift_endAccess();
  swift_beginAccess();
  v94 = &off_101600320;
  sub_1000CE6B8(&qword_10190AC60);
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v94 = v80;
  type metadata accessor for NavSpokenDirectionVoiceVolume(0);
  Published.init(initialValue:)();
  swift_endAccess();

  v76(v92, v2);
  v77 = v86;
  (v86)(v89, v70);
  v76(v90, v2);
  v77(v88, v70);
  v78 = v91;
  *&v91[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_navAudioControlViewModel] = v71;
}

void sub_10010623C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a4 route];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 transportType];
    }

    else
    {
      v9 = [a4 desiredTransportType];
    }

    v10 = v9;
    v11 = sub_1001052F4();
    v12 = [v11 guidanceLevelForTransportType:v10];

    if (v12 != 2)
    {
      v13 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences;
      [*&v6[OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences] setGuidanceLevel:2 forTransportType:v10];
      [*&v6[v13] synchronize];
    }

    [a4 stopCurrentGuidancePrompt];
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v12;
    *(v14 + 32) = v10;
    aBlock[4] = sub_1001094F4;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002ABAC8;
    aBlock[3] = &unk_1016038E0;
    v15 = _Block_copy(aBlock);
    v16 = v6;

    [a4 repeatCurrentGuidance:v15];
    _Block_release(v15);
  }
}

id sub_100106400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_101906700 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100021540(v7, qword_10195FFA0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "repeatCurrentGuidance", v10, 2u);
  }

  v11 = sub_1001052F4();
  [v11 setGuidanceLevel:a3 forTransportType:a4];

  v12 = *(a2 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences);

  return [v12 synchronize];
}

id sub_100106558(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_autoDismissDelay] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_analyticsTarget] = 611;
  v4 = &v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_navAudioControlViewModel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences] = 0;
  v6 = &v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_geoConfigListener];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer] = 0;
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_contentHeight] = 0;
  *&v1[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_contentHeaderHeight] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100106794()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_100109428();
  v3 = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_100109474;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100271778;
  v8[3] = &unk_101603840;
  v5 = _Block_copy(v8);

  v6 = [v2 scheduledTimerWithTimeInterval:v3 queue:0 repeating:v5 block:10.0];
  _Block_release(v5);

  v7 = *(v1 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer);
  *(v1 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer) = v6;
}

void sub_100106928()
{
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler));

  sub_100024F64(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_geoConfigListener, &unk_101908380);
  v1 = *(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer);
}

id sub_1001069C0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController_geoConfigListener;
  swift_beginAccess();
  sub_1000D2DFC(v0 + v2, &v5, &unk_101908380);
  if (*(&v6 + 1))
  {
    sub_1000D2BE0(&v5, &v7);
    sub_10005E838(&v7, v8);
    _bridgeAnythingToObjectiveC<A>(_:)();
    GEOConfigRemoveBlockListener();
    swift_unknownObjectRelease();
    sub_10004E3D0(&v7);
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    sub_100109484(&v5, v0 + v2);
    swift_endAccess();
  }

  else
  {
    sub_100024F64(&v5, &unk_101908380);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100106BA0(uint64_t a1)
{
  if (a1 == 2)
  {
    v4 = [v1 cardPresentationController];
    if (v4)
    {
      v3 = v4;
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    v2 = [v1 cardPresentationController];
    if (v2)
    {
      v3 = v2;
LABEL_7:
      [v3 bottomSafeOffset];

      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

int *sub_100106CB8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIHostingControllerSizingOptions();
  sub_100109E48(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 0;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 1;
  return result;
}

uint64_t sub_100106DD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_10190AE38);
  __chkstk_darwin(v4);
  v6 = v52 - v5;
  v7 = type metadata accessor for MapsDesignAccessibilityString();
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = (v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ScrollBounceBehavior();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v63 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_10190AE40);
  __chkstk_darwin(v11 - 8);
  v13 = v52 - v12;
  v69 = sub_1000CE6B8(&qword_10190AE48);
  __chkstk_darwin(v69);
  v15 = v52 - v14;
  v16 = sub_1000CE6B8(&qword_10190AE50);
  __chkstk_darwin(v16);
  v18 = v52 - v17;
  v59 = sub_1000CE6B8(&qword_10190AE58);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v71 = v52 - v19;
  v62 = sub_1000CE6B8(&qword_10190AE60);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = v52 - v20;
  v21 = sub_1000CE6B8(&qword_10190AE68);
  __chkstk_darwin(v21);
  v61 = v52 - v22;
  v70 = sub_1000CE6B8(&qword_10190AE70);
  __chkstk_darwin(v70);
  v24 = v52 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_navAudioControlViewModel);
  if (!v25)
  {
    swift_storeEnumTagMultiPayload();
    sub_100108910();
    _ConditionalContent<>.init(storage:)();
LABEL_11:
    a1[3] = v70;
    a1[4] = sub_100108B90();
    v51 = sub_10001A848(a1);
    return sub_1000A2244(v24, v51);
  }

  v52[1] = v21;
  v53 = v52 - v23;
  v54 = v4;
  v55 = v6;
  v56 = a1;
  __chkstk_darwin(v25);
  v52[-2] = v26;
  v52[-1] = v27;
  v28 = v27;
  v52[0] = v26;

  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_10190AEB8);
  sub_100108C24();
  ScrollView.init(_:showsIndicators:content:)();
  v29 = v16;
  v30 = &v18[*(v16 + 36)];
  sub_100108028(v28, v30);
  *(v30 + *(sub_1000CE6B8(&qword_10190AEA0) + 36)) = 1;
  v31 = UIContentSizeCategoryAccessibilityLarge;
  DynamicTypeSize.init(_:)();
  v32 = type metadata accessor for DynamicTypeSize();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v13, 1, v32) == 1)
  {
    (*(v33 + 104))(v15, enum case for DynamicTypeSize.accessibility1(_:), v32);
    v35 = v34(v13, 1, v32);
    v36 = v69;
    if (v35 != 1)
    {
      sub_100024F64(v13, &qword_10190AE40);
    }
  }

  else
  {
    (*(v33 + 32))(v15, v13, v32);
    v36 = v69;
  }

  sub_100109E48(&qword_10190AEE0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v38 = sub_100108AAC();
    v39 = sub_1000414C8(&qword_10190AEA8, &qword_10190AE48);
    View.dynamicTypeSize<A>(_:)();
    sub_100024F64(v15, &qword_10190AE48);
    sub_100024F64(v18, &qword_10190AE50);
    v40 = v63;
    static ScrollBounceBehavior.basedOnSize.getter();
    v41 = static Axis.Set.vertical.getter();
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v41)
    {
      Axis.Set.init(rawValue:)();
    }

    v72 = v29;
    v73 = v36;
    v74 = v38;
    v75 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v58;
    v43 = v59;
    v45 = v71;
    View.scrollBounceBehavior(_:axes:)();
    (*(v64 + 8))(v40, v65);
    (*(v57 + 8))(v45, v43);
    v47 = v66;
    v46 = v67;
    *v66 = 0xD000000000000015;
    v47[1] = 0x800000010121BCF0;
    v48 = v68;
    (*(v46 + 104))(v47, enum case for MapsDesignAccessibilityString.custom(_:), v68);
    v72 = v43;
    v73 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v50 = v61;
    v49 = v62;
    View.mapsDesignAXID(_:)();
    (*(v46 + 8))(v47, v48);
    (*(v60 + 8))(v44, v49);
    sub_1000A22B4(v50, v55);
    swift_storeEnumTagMultiPayload();
    sub_100108910();
    v24 = v53;
    _ConditionalContent<>.init(storage:)();

    sub_100024F64(v50, &qword_10190AE68);
    a1 = v56;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010773C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NavAudioControlViewModel();
  sub_100109E48(&qword_10190AF18, type metadata accessor for NavAudioControlViewModel);

  v4 = ObservedObject.init(wrappedValue:)();
  v6 = v5;
  State.init(wrappedValue:)();

  v7 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = sub_1001093F4;
  a1[3] = v2;
  a1[4] = sub_1001093FC;
  a1[5] = v3;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = sub_100109FBC;
  a1[9] = 0;
  a1[10] = sub_100109404;
  a1[11] = v7;
  return result;
}

void sub_1001078EC(uint64_t a1)
{
  v2 = type metadata accessor for AudioPickerViewModel.AudioOption();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &KeyPath - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*&Strong[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_navAudioControlViewModel])
    {

      v11 = *(v3 + 16);
      v11(v8, a1, v2);
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v11(v5, v8, v2);
      static Published.subscript.setter();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
    }
  }

  if (qword_101906540 != -1)
  {
    swift_once();
  }

  sub_100021540(v2, qword_10190ABA8);
  if (static AudioPickerViewModel.AudioOption.== infix(_:_:)())
  {
    v12 = 2;
  }

  else
  {
    if (qword_101906548 != -1)
    {
      swift_once();
    }

    sub_100021540(v2, qword_10190ABC0);
    v12 = static AudioPickerViewModel.AudioOption.== infix(_:_:)() & 1;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100107BDC(v12);
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer;
    v18 = *(v15 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer);
    if (v18)
    {
      [v18 invalidate];
      v19 = *&v16[v17];
    }

    else
    {
      v19 = 0;
    }

    *&v16[v17] = 0;

    sub_100106794();
  }
}

void sub_100107BDC(unint64_t a1)
{
  v3 = 1;
  if (a1 != 1)
  {
    v3 = 2;
  }

  if (a1 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedService];
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [v6 route];

  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = [v8 transportType];

  v10 = sub_1001052F4();
  v11 = [v10 guidanceLevelForTransportType:v9];

  if (v4 == v11)
  {
    return;
  }

  v12 = [v5 sharedService];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  v16 = [v12 route];

  if (v16)
  {
    v14 = [v16 transportType];
    v15 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences;
    [*(v1 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController____lazy_storage___audioPreferences) setGuidanceLevel:v4 forTransportType:v14];
    [*(v1 + v15) synchronize];
    sub_100108E40(a1);
  }
}

void sub_100107D84(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*&Strong[OBJC_IVAR____TtC4Maps29NavAudioControlViewController_navAudioControlViewModel])
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_100107EC4(a1);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer;
    v9 = *(v6 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer);
    if (v9)
    {
      [v9 invalidate];
      v10 = *&v7[v8];
    }

    else
    {
      v10 = 0;
    }

    *&v7[v8] = 0;

    sub_100106794();
  }
}

uint64_t sub_100107EC4(uint64_t a1)
{
  v2 = v1;
  if (qword_101906700 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_10195FFA0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "User setting volume %ld", v7, 0xCu);
  }

  result = GEOConfigSetSyncInteger();
  v9 = *(v2 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler);
  if (v9)
  {

    v9(a1);

    return sub_1000588AC(v9);
  }

  return result;
}

uint64_t sub_100108028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v31 = sub_1000CE6B8(&qword_10190AEE8);
  __chkstk_darwin(v31);
  v3 = v28 - v2;
  v29 = type metadata accessor for CardHeaderSize();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v7 - 8);
  v9 = v28 - v8;
  v30 = type metadata accessor for LeadingCardHeaderViewModel();
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v37._object = 0x800000010121BD30;
  v16._countAndFlagsBits = 0x6F43206563696F56;
  v16._object = 0xEE00736C6F72746ELL;
  v17._object = 0x800000010121BD10;
  v37._countAndFlagsBits = 0xD000000000000047;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v16, v37);
  v28[1] = v18._object;
  v28[2] = v18._countAndFlagsBits;
  v19 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v20 = type metadata accessor for MapsDesignAccessibilityString();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v9, v19, v20);
  (*(v21 + 56))(v9, 0, 1, v20);
  (*(v4 + 104))(v6, enum case for CardHeaderSize.large(_:), v29);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v22 = v30;
  (*(v10 + 16))(v12, v15, v30);
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v23 = &v3[*(v31 + 36)];
  sub_1000CE6B8(&qword_10190AEF0);
  static ContentShapeKinds.interaction.getter();
  *v23 = 0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100108F0C();

  v24 = v33;
  View.onTapGesture(count:perform:)();

  sub_100024F64(v3, &qword_10190AEE8);
  (*(v10 + 8))(v15, v22);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_1000CE6B8(&qword_10190AF10);
  v27 = (v24 + *(result + 36));
  *v27 = sub_100109FBC;
  v27[1] = 0;
  v27[2] = sub_100108FF4;
  v27[3] = v25;
  return result;
}

void sub_10010861C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100108670();
  }
}

void sub_100108670()
{
  v1 = OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler);
  if (v4)
  {

    v4(v5);

    sub_1000588AC(v4);
  }
}

void sub_100108708()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 cardPresentationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 containeeLayout];

      v5 = [v1 cardPresentationController];
      if (v4 != 1)
      {
        if (v5)
        {
          v6 = 1;
          goto LABEL_8;
        }

LABEL_12:
        __break(1u);
        return;
      }

      if (v5)
      {
        v6 = 2;
LABEL_8:
        [v5 wantsLayout:v6];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_1001087EC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[*a3] = v4;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 cardPresentationController];

    if (v8)
    {
      [v8 updateHeightForCurrentLayoutAnimated:0];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100108910()
{
  result = qword_10190AE78;
  if (!qword_10190AE78)
  {
    sub_1000D6664(&qword_10190AE68);
    sub_1000D6664(&qword_10190AE58);
    sub_1000D6664(&qword_10190AE50);
    sub_1000D6664(&qword_10190AE48);
    sub_100108AAC();
    sub_1000414C8(&qword_10190AEA8, &qword_10190AE48);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100109E48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AE78);
  }

  return result;
}

unint64_t sub_100108AAC()
{
  result = qword_10190AE80;
  if (!qword_10190AE80)
  {
    sub_1000D6664(&qword_10190AE50);
    sub_1000414C8(&qword_10190AE88, &qword_10190AE90);
    sub_1000414C8(&qword_10190AE98, &qword_10190AEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AE80);
  }

  return result;
}

unint64_t sub_100108B90()
{
  result = qword_10190AEB0;
  if (!qword_10190AEB0)
  {
    sub_1000D6664(&qword_10190AE70);
    sub_100108910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AEB0);
  }

  return result;
}

unint64_t sub_100108C24()
{
  result = qword_10190AEC0;
  if (!qword_10190AEC0)
  {
    sub_1000D6664(&qword_10190AEB8);
    sub_100108CDC();
    sub_1000414C8(&qword_10190AED0, &qword_10190AED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AEC0);
  }

  return result;
}

unint64_t sub_100108CDC()
{
  result = qword_10190AEC8;
  if (!qword_10190AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AEC8);
  }

  return result;
}

void sub_100108D30()
{
  if (qword_101906700 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_10195FFA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Automatically dismissing VoiceVolumeControl in NavAudioControlViewController", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100108670();
  }
}

id sub_100108E40(unint64_t a1)
{
  if (a1 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = dword_1011E667C[a1];
    v3 = objc_opt_self();
    v4 = *(v1 + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_analyticsTarget);

    return [v3 captureUserAction:v2 target:v4 value:0];
  }

  return result;
}

unint64_t sub_100108F0C()
{
  result = qword_10190AEF8;
  if (!qword_10190AEF8)
  {
    sub_1000D6664(&qword_10190AEE8);
    sub_100109E48(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
    sub_1000414C8(&qword_10190AF08, &qword_10190AEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AEF8);
  }

  return result;
}

uint64_t sub_100109018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100109090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  (v14)(v9, v13, v6);

  static Published.subscript.setter();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_100109204@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100109284()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100109300@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100109380()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100109428()
{
  result = qword_10190B4F0;
  if (!qword_10190B4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190B4F0);
  }

  return result;
}

uint64_t sub_100109484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101908380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_100109500(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100109514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10010955C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001095E8()
{
  result = qword_10190AF70;
  if (!qword_10190AF70)
  {
    sub_1000D6664(&qword_10190AF48);
    sub_1000414C8(&qword_10190AF78, &qword_10190AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AF70);
  }

  return result;
}

unint64_t sub_1001096D4()
{
  result = qword_10190AFA8;
  if (!qword_10190AFA8)
  {
    sub_1000D6664(&qword_10190AFA0);
    sub_100109760();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AFA8);
  }

  return result;
}

unint64_t sub_100109760()
{
  result = qword_10190AFB0;
  if (!qword_10190AFB0)
  {
    sub_1000D6664(&qword_10190AFB8);
    sub_1001097F8();
    sub_100109908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AFB0);
  }

  return result;
}

unint64_t sub_1001097F8()
{
  result = qword_10190AFC0;
  if (!qword_10190AFC0)
  {
    sub_1000D6664(&qword_10190AFC8);
    sub_100109E48(&qword_10190AFD0, &type metadata accessor for SectionHeader);
    sub_1001098B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AFC0);
  }

  return result;
}

unint64_t sub_1001098B4()
{
  result = qword_10190AFD8;
  if (!qword_10190AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AFD8);
  }

  return result;
}

unint64_t sub_100109908()
{
  result = qword_10190AFE0;
  if (!qword_10190AFE0)
  {
    sub_1000D6664(&qword_10190AFE8);
    sub_1000D6664(&qword_10190AFF0);
    sub_1001099FC();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_10190F410, &qword_101915760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AFE0);
  }

  return result;
}

unint64_t sub_1001099FC()
{
  result = qword_10190AFF8;
  if (!qword_10190AFF8)
  {
    sub_1000D6664(&qword_10190AFF0);
    sub_1000D6664(&qword_10190B000);
    type metadata accessor for InlinePickerStyle();
    sub_1000414C8(&qword_10190B008, &qword_10190B000);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190B010, &qword_10191DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190AFF8);
  }

  return result;
}

unint64_t sub_100109B44()
{
  result = qword_10190B018;
  if (!qword_10190B018)
  {
    sub_1000D6664(&qword_10190AF88);
    sub_1000414C8(&qword_10190B020, &qword_10190B028);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B018);
  }

  return result;
}

unint64_t sub_100109BFC()
{
  result = qword_101911010;
  if (!qword_101911010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911010);
  }

  return result;
}

unint64_t sub_100109C68()
{
  result = qword_10190B048;
  if (!qword_10190B048)
  {
    sub_1000D6664(&qword_10190B040);
    sub_100109CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B048);
  }

  return result;
}

unint64_t sub_100109CEC()
{
  result = qword_10190B050;
  if (!qword_10190B050)
  {
    sub_1000D6664(&qword_10190B058);
    sub_100109E48(&qword_10190A030, &type metadata accessor for NavigationCell);
    sub_100109E48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B050);
  }

  return result;
}

uint64_t sub_100109DE0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100109E48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100109E90()
{
  result = qword_10190B070;
  if (!qword_10190B070)
  {
    sub_1000D6664(qword_10190B078);
    sub_1000D6664(&qword_10190AF48);
    sub_1001095E8();
    swift_getOpaqueTypeConformance2();
    sub_100109E48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B070);
  }

  return result;
}

uint64_t sub_100109FC0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010A038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_10010A1AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_10010A46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a1;
  v60 = a3;
  v4 = sub_1000CE6B8(&qword_10190B100);
  __chkstk_darwin(v4 - 8);
  v6 = v42 - v5;
  swift_getWitnessTable();
  v7 = a2;
  v8 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v64 = v8;
  v65 = WitnessTable;
  v52 = v8;
  v10 = WitnessTable;
  v54 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v53 = v42 - v12;
  v64 = v8;
  v65 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeMetadata2;
  v65 = OpaqueTypeConformance2;
  v14 = OpaqueTypeConformance2;
  v47 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v57 = *(v15 - 8);
  __chkstk_darwin(v15);
  v48 = v42 - v16;
  v45 = v7;
  v49 = *(v7 + 16);
  v17 = type metadata accessor for ModifiedContent();
  v64 = OpaqueTypeMetadata2;
  v65 = v14;
  v18 = swift_getOpaqueTypeConformance2();
  v46 = *(v7 + 24);
  v19 = v46;
  v20 = sub_10010AD34();
  v68 = v19;
  v69 = v20;
  v21 = swift_getWitnessTable();
  v44 = v15;
  v64 = v15;
  v65 = v17;
  v66 = v18;
  v67 = v21;
  v42[1] = v18;
  v22 = v21;
  v42[0] = v21;
  v23 = swift_getOpaqueTypeMetadata2();
  v50 = v23;
  v55 = *(v23 - 8);
  __chkstk_darwin(v23);
  v43 = v42 - v24;
  v64 = v15;
  v65 = v17;
  v66 = v18;
  v67 = v22;
  v51 = swift_getOpaqueTypeConformance2();
  v64 = v23;
  v65 = v51;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v42 - v30;
  static ScrollEdgeEffectStyle.soft.getter();
  v32 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
  static Edge.Set.top.getter();
  swift_checkMetadataState();
  v33 = v53;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_10010AD88(v6);
  v34 = v59;
  v35 = v48;
  View.scrollEdgeEffectDisabled(_:)();
  (*(v56 + 8))(v33, OpaqueTypeMetadata2);
  v61 = v49;
  v62 = v46;
  v63 = v34;
  static HorizontalAlignment.center.getter();
  swift_checkMetadataState();
  v36 = v43;
  v37 = v44;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  (*(v57 + 8))(v35, v37);
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  v38 = v50;
  View.toolbarVisibility(_:for:)();

  (*(v55 + 8))(v36, v38);
  v39 = *(v26 + 16);
  v39(v31, v28, v25);
  v40 = *(v26 + 8);
  v40(v28, v25);
  v39(v60, v31, v25);
  return (v40)(v31, v25);
}

uint64_t sub_10010ABA4@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  sub_100119400();
  v11 = sub_10010AD34();
  v15[0] = a1;
  v15[1] = v11;
  swift_getWitnessTable();
  v12 = *(v5 + 16);
  v12(v10, v7, v4);
  v13 = *(v5 + 8);
  v13(v7, v4);
  v12(a2, v10, v4);
  return (v13)(v10, v4);
}

unint64_t sub_10010AD34()
{
  result = qword_10190B108;
  if (!qword_10190B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B108);
  }

  return result;
}

uint64_t sub_10010AD88(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190B100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10010AE00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10010BADC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10010AEFC(uint64_t a1)
{
  v3 = sub_1000CE6B8(&qword_10190B138);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - v4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v9 = v25 - v8;
  v10 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NavTrayButtonCell();
  v36.receiver = v1;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithStyle:reuseIdentifier:", 0, 0);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v26 = v15;
  v16 = sub_10010B478(a1);
  v25[0] = v17;
  v25[1] = v16;
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v18 = 0x800000010121A3F0;
        v19 = static Color.pink.getter();
        v20 = 0xD00000000000001BLL;
        goto LABEL_15;
      case 4:
        v20 = 0xD000000000000013;
        v18 = 0x800000010121BF40;
        break;
      case 5:
        v18 = 0xEB0000000074656CLL;
        v20 = 0x6C75622E7473696CLL;
        break;
      default:
        goto LABEL_16;
    }

    v19 = static Color.gray.getter();
    goto LABEL_15;
  }

  switch(a1)
  {
    case 0:
      v18 = 0xE400000000000000;
      v20 = 1937075312;
      v19 = static Color.blue.getter();
      goto LABEL_15;
    case 1:
      v18 = 0x800000010121A2D0;
      v19 = static Color.green.getter();
      v20 = 0xD00000000000001DLL;
LABEL_15:
      *v13 = v20;
      v13[1] = v18;
      v13[2] = v19;
      (*(v11 + 104))(v13, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.symbol(_:), v10);
      LeadingAccessoryViewModel.init(type:)();
      v21 = type metadata accessor for BottomAccessoryViewModel();
      (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
      UUID.init()();
      type metadata accessor for ListCellViewModel();
      swift_allocObject();
      ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
      type metadata accessor for NavigationCell();
      sub_10010BA2C(&qword_10190A030, &type metadata accessor for NavigationCell);
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v22 = v28;
      *(&v34 + 1) = v28;
      v35 = sub_10010B9C8();
      sub_10001A848(&v33);
      UIHostingConfiguration.margins(_:_:)();
      (*(v27 + 8))(v5, v22);
      v23 = v26;
      UITableViewCell.contentConfiguration.setter();

      return v23;
    case 2:
      v18 = 0x800000010121A350;
      v19 = static Color.green.getter();
      v20 = 0xD000000000000022;
      goto LABEL_15;
  }

LABEL_16:
  v29 = a1;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10010B478(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v8 = 0x800000010121C110;
        v3 = 0xD00000000000001CLL;
        v4 = 0x800000010121C0D0;
        v6 = 0x800000010121C0F0;
        v5 = 0xD000000000000029;
        v2 = 0xD000000000000012;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
      case 4:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v8 = 0x800000010121C090;
        v2 = 0x6F43206563696F56;
        v6 = 0xEE00736C6F72746ELL;
        v3 = 0xD000000000000018;
        v4 = 0x800000010121C070;
        v5 = 0xD000000000000038;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
      case 5:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v3 = 0xD000000000000011;
        v8 = 0x800000010121C040;
        v2 = 0x736C6961746544;
        v4 = 0x800000010121C020;
        v5 = 0xD00000000000002ALL;
        v6 = 0xE700000000000000;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v8 = 0x800000010121C210;
        v2 = 0x706F745320646441;
        v4 = 0x800000010121C1F0;
        v5 = 0xD000000000000022;
        v3 = 0xD000000000000012;
        v6 = 0xE800000000000000;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
      case 1:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v8 = 0x800000010121C1C0;
        v2 = 0x5445206572616853;
        v3 = 0xD000000000000013;
        v4 = 0x800000010121C1A0;
        v5 = 0xD00000000000002FLL;
        v6 = 0xE900000000000041;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
      case 2:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v8 = 0x800000010121C160;
        v2 = 0x20676E6972616853;
        v6 = 0xEB00000000415445;
        v3 = 0xD000000000000015;
        v4 = 0x800000010121C140;
        v5 = 0xD00000000000003BLL;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10010B8B0()
{
  type metadata accessor for ListCellViewModel();
  sub_10010BA2C(&qword_10190B068, &type metadata accessor for ListCellViewModel);

  return NavigationCell.init(model:tapHandler:)();
}

id sub_10010B968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavTrayButtonCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10010B9C8()
{
  result = qword_10190B140;
  if (!qword_10190B140)
  {
    sub_1000D6664(&qword_10190B138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B140);
  }

  return result;
}

uint64_t sub_10010BA2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10010BA88()
{
  result = qword_10190B148;
  if (!qword_10190B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B148);
  }

  return result;
}

unint64_t sub_10010BADC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

id sub_10010BE44()
{
  v1 = OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController);
    if (v3)
    {
      v3 = [objc_allocWithZone(MapsWebLinkPresenter) initWithPresentingViewController:v3];
      v4 = *(v0 + v1);
    }

    else
    {
      v4 = 1;
    }

    *(v0 + v1) = v3;
    v5 = v3;
    sub_10005D280(v4);
  }

  sub_10005D270(v2);
  return v3;
}

id sub_10010BF40(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController] = 0;
  *&v1[OBJC_IVAR____TtC4Maps23ClusteredResultsContext_routingContainees] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC4Maps23ClusteredResultsContext____lazy_storage___webLinkPresenter] = 1;
  *&v1[OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_10010C00C(v5, v4);

  return v5;
}

void sub_10010C00C(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(SimpleResultsViewController) initWithShareDelegate:a1];
  if (v4)
  {
    v5 = v4;
    [v4 setResultsDelegate:a1];
    [v5 setContaineeDelegate:a1];
    [v5 setEnableQuickActionMenu:1];
    v6 = OBJC_IVAR____TtC4Maps23ClusteredResultsContext_routingContainees;
    swift_beginAccess();
    v7 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v8 = *(a1 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController);
    *(a1 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController) = v7;
    v9 = v7;

    sub_10010C178(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10010C178(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration);
  *(v1 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration) = a1;
  v3 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_simpleResultsViewController);
  if (v4)
  {
    v5 = v3[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance];
    v6 = v4;
    [v6 setDisplayDistance:v5];
    [v6 updateCurrentLocation:*&v3[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation] isClusterResult:1];
    [v6 setCluster:*&v3[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_labelMarker] sortAlphabetically:v3[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically] originalSearchInfo:*&v3[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo]];
  }
}

void sub_10010C2D8(unint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 | a2)
    {
      v28 = Strong;
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_101960018);
      v6 = static os_log_type_t.info.getter();
      v7 = a2;
      v8 = a1;
      v9 = Logger.logObject.getter();

      if (os_log_type_enabled(v9, v6))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v29 = v12;
        *v10 = 138412546;
        *(v10 + 4) = v8;
        *v11 = a1;
        *(v10 + 12) = 2080;
        v13 = v8;
        sub_1000CE6B8(&unk_10190B250);
        v14 = Optional.debugDescription.getter();
        v16 = sub_10004DEB8(v14, v15, &v29);

        *(v10 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v9, v6, "[ClusteredResultsContext] Pushing placecard context for %@ or %s", v10, 0x16u);
        sub_100024F64(v11, &qword_1019144F0);

        sub_10004E3D0(v12);
      }

      v17 = objc_allocWithZone(PlaceCardItem);
      if (a1)
      {
        v18 = v8;
      }

      else
      {
        v18 = v7;
      }

      v19 = &selRef_initWithSearchResult_;
      if (a1)
      {
        v19 = &selRef_initWithMapItem_;
      }

      v20 = [v17 *v19];
      if (v20)
      {
        v21 = v20;
        v22 = type metadata accessor for PlaceCardContextConfiguration();
        v23 = objc_allocWithZone(v22);
        v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
        *&v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v21;
        v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
        *&v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
        v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
        v30.receiver = v23;
        v30.super_class = v22;
        v24 = v21;
        v25 = objc_msgSendSuper2(&v30, "init");
        objc_allocWithZone(type metadata accessor for PlaceCardContext());
        v26 = v25;
        v27 = sub_100504630(v26);
        [v28 pushContext:v27 animated:1 completion:0];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

Class sub_10010C6EC()
{
  swift_beginAccess();

  sub_1000CE6B8(&unk_10190B260);
  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

void sub_10010C784(void *a1, void *a2)
{
  v3 = [a1 mapSelectionManager];
  if (v3)
  {
    [v3 clearSelectionAnimated:{objc_msgSend(a2, "isAnimated")}];
  }

  else
  {
    __break(1u);
  }
}

void sub_10010C904()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (!v2)
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = [v2 searchResultsItemSource];

    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 searchPinsManager];

  if (!v7)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = [v7 droppedPinsItemSource];

  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

uint64_t sub_10010CCB4(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960018);
  v3 = static os_log_type_t.info.getter();
  v4 = a1;
  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = [v4 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10004DEB8(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v3, "[ClusteredResultsContext] chromeDidSelectMarker: %s", v6, 0xCu);
    sub_10004E3D0(v7);
  }

  sub_10010C2D8(v4, 0);
  return 1;
}

BOOL sub_10010CEA4(void *a1)
{
  v1 = [a1 searchResult];
  if (v1)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960018);
    v3 = static os_log_type_t.info.getter();
    v4 = v1;
    v5 = Logger.logObject.getter();

    if (os_log_type_enabled(v5, v3))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = [v4 debugDescription];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_10004DEB8(v9, v11, &v15);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v3, "[ClusteredResultsContext] chromeDidSelect customPOIAnnotation: %s", v6, 0xCu);
      sub_10004E3D0(v7);
    }

    v13 = v4;
    sub_10010C2D8(0, v1);
  }

  return v1 != 0;
}

uint64_t sub_10010D0C8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration);
  v4 = *(v3 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance);
  v6 = *(v3 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo);
  v7 = *(v3 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation);
  v8 = type metadata accessor for ClusteredResultsContextConfiguration();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_labelMarker] = a1;
  v9[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically] = v4;
  v9[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance] = v5;
  *&v9[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo] = v6;
  *&v9[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v10 = v6;
  v11 = v7;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_10010C178(v13);

  return 1;
}

uint64_t sub_10010D208()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isTopContext:v0])
    {
      v3 = v0;
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100021540(v4, qword_101960018);
      v5 = static os_log_type_t.default.getter();
      v6 = Logger.logObject.getter();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, v5, "[ClusteredResultsContext] chromeDidClearMapSelection: popping self off stack", v7, 2u);
      }

      [v2 popContext:v3 animated:1 completion:0];
    }
  }

  return 0;
}

id sub_10010D640(uint64_t a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 *a3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10010D6D0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
LABEL_10:

      goto LABEL_11;
    }

    v5 = v4;
    v6 = OBJC_IVAR____TtC4Maps23ClusteredResultsContext_routingContainees;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:
        v8 = sub_1003FD07C();
        if (v8)
        {
LABEL_9:

          swift_endAccess();
          [v5 setNeedsUpdateComponent:@"cards" animated:1];
          goto LABEL_10;
        }

        v9 = *(v0 + v6);
        if (v9 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          v11 = __OFSUB__(v21, 1);
          v12 = v21 - 1;
          if (!v11)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v11 = __OFSUB__(v10, 1);
          v12 = v10 - 1;
          if (!v11)
          {
LABEL_8:
            v8 = sub_1003FA524(v12);
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_14;
  }

LABEL_11:
  v13 = OBJC_IVAR____TtC4Maps23ClusteredResultsContext_routingContainees;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (qword_101906728 != -1)
  {
    goto LABEL_23;
  }

LABEL_14:
  v15 = type metadata accessor for Logger();
  sub_100021540(v15, qword_101960018);
  v16 = static os_log_type_t.info.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v17, v16, "[ClusteredResultsContext] Router is unloading, clear search and inform context to get popped.", v18, 2u);
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v19 popContext:v1 animated:1 completion:0];
  }
}

void sub_10010D934(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = [v6 appCoordinator]) != 0)
    {
      v13 = v7;
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100021540(v8, qword_101960018);
      v9 = static os_log_type_t.default.getter();
      v10 = Logger.logObject.getter();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, v9, "[SearchResultContext] Presenting share sheet.", v11, 2u);
      }

      [v13 shareItem:a1 presentationOptions:a2 completion:0];
      v12 = v13;
    }

    else
    {
      v12 = v5;
    }
  }
}

void sub_10010DAC4(void *a1)
{
  v2 = v1;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960018);
  v5 = static os_log_type_t.default.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    if (a1)
    {
      v10 = v9;

      v11 = [v6 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10004DEB8(v12, v14, &v27);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v5, "[ClusteredResultsContext] selectClusteredLabelMarker:: %s", v8, 0xCu);
      sub_10004E3D0(v10);

LABEL_7:
      v16 = *(v2 + OBJC_IVAR____TtC4Maps23ClusteredResultsContext_configuration);
      v17 = *(v16 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically);
      v18 = *(v16 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance);
      v19 = *(v16 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo);
      v20 = *(v16 + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation);
      v21 = type metadata accessor for ClusteredResultsContextConfiguration();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_labelMarker] = v6;
      v22[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically] = v17;
      v22[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance] = v18;
      *&v22[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo] = v19;
      *&v22[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation] = v20;
      v28.receiver = v22;
      v28.super_class = v21;
      v23 = v6;
      v24 = v19;
      v25 = v20;
      v26 = objc_msgSendSuper2(&v28, "init");
      sub_10010C178(v26);

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10010DD14(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960018);
  v3 = static os_log_type_t.default.getter();
  v4 = a1;
  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    sub_1000CE6B8(&unk_10190B250);
    v8 = Optional.debugDescription.getter();
    v10 = sub_10004DEB8(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v3, "[ClusteredResultsContext] searchResult:: %s", v6, 0xCu);
    sub_10004E3D0(v7);
  }

  sub_10010C2D8(0, a1);
}

void sub_10010DE94(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = [a1 mapItem];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 url];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101960018);
    v11 = static os_log_type_t.default.getter();
    v12 = a1;
    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = a1;
      v25 = v15;
      *v14 = 136315138;
      sub_1000CE6B8(&unk_10190B250);
      v16 = Optional.debugDescription.getter();
      v18 = sub_10004DEB8(v16, v17, &v25);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v11, "[SearchResultContext] Opening website for %s", v14, 0xCu);
      sub_10004E3D0(v15);
    }

    v19 = sub_10010BE44();
    if (v19)
    {
      v21 = v19;
      URL._bridgeToObjectiveC()(v20);
      v23 = v22;
      [v21 presentWebURL:v22];
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_10010E130(void *a1)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = [a1 mapItem];
  if (!v2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 phoneNumber];

  if (v4)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_101960018);
    v6 = static os_log_type_t.default.getter();
    v7 = a1;
    v8 = Logger.logObject.getter();

    if (os_log_type_enabled(v8, v6))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      sub_1000CE6B8(&unk_10190B250);
      v11 = Optional.debugDescription.getter();
      v13 = sub_10004DEB8(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v8, v6, "[ClusteredResultsContext] Invoking call for %s", v9, 0xCu);
      sub_10004E3D0(v10);
    }

    v14 = [objc_opt_self() sharedApplication];
    [v14 callPhoneNumber:v4 completion:0];
  }
}

void sub_10010E324(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = [v4 appCoordinator]) != 0)
    {
      v11 = v5;
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100021540(v6, qword_101960018);
      v7 = static os_log_type_t.default.getter();
      v8 = Logger.logObject.getter();
      if (os_log_type_enabled(v8, v7))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, v7, "[SearchResultContext] Presenting share sheet.", v9, 2u);
      }

      [v11 shareItem:a1 presentationOptions:0 completion:0];
      v10 = v11;
    }

    else
    {
      v10 = v3;
    }
  }
}

void sub_10010E4D0(void *a1, uint64_t a2, void *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [objc_allocWithZone(HomeCuratedCollectionsCollectionViewCellModel) initWithResultDataProvider:*a3 delegate:v5];
      [a1 setCellModel:v6];

      v7 = String._bridgeToObjectiveC()();
      [a1 setAccessibilityIdentifier:v7];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

Swift::UInt sub_10010E5F8()
{
  NSObject.hash(into:)();
  if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
  {
    if (*(&v2 + 1))
    {
      v4[0] = v1;
      v4[1] = v2;
      v5 = v3;
      AnyHashable.hash(into:)();
      return sub_10005BF8C(v4);
    }
  }

  else
  {
    v3 = 0;
    v1 = 0u;
    v2 = 0u;
  }

  sub_10010EA94(&v1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Hasher._combine(_:)(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_10010E6D0()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
  {
    if (*(&v3 + 1))
    {
      v5[0] = v2;
      v5[1] = v3;
      v6 = v4;
      AnyHashable.hash(into:)();
      sub_10005BF8C(v5);
      return Hasher._finalize()();
    }
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
  }

  sub_10010EA94(&v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Hasher._combine(_:)(Strong);
    swift_unknownObjectRelease();
  }

  return Hasher._finalize()();
}

uint64_t sub_10010E7B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906558 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10190B2B8);
  v3 = sub_100021540(v2, qword_10195FAB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int sub_10010E870()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
  {
    if (*(&v3 + 1))
    {
      v5[0] = v2;
      v5[1] = v3;
      v6 = v4;
      AnyHashable.hash(into:)();
      sub_10005BF8C(v5);
      return Hasher._finalize()();
    }
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
  }

  sub_10010EA94(&v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Hasher._combine(_:)(Strong);
    swift_unknownObjectRelease();
  }

  return Hasher._finalize()();
}

uint64_t sub_10010E950()
{
  sub_100014C84(0, &qword_10190B2D0);
  if (static NSObject.== infix(_:_:)())
  {
    v0 = sub_10010EAFC();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

unint64_t sub_10010E9C4()
{
  result = qword_10190B270;
  if (!qword_10190B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B270);
  }

  return result;
}

unint64_t sub_10010EA18(uint64_t a1)
{
  result = sub_10010EA40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10010EA40()
{
  result = qword_10190B2B0;
  if (!qword_10190B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B2B0);
  }

  return result;
}

uint64_t sub_10010EA94(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191A570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010EAFC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (*&v7 = Strong, (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  if (!*(&v11 + 1))
  {
LABEL_9:
    v2 = &v10;
    goto LABEL_10;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10005BF8C(v13);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
LABEL_20:
    v2 = &v7;
LABEL_10:
    sub_10010EA94(v2);
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      if (v4)
      {
        v5 = v4;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v1 = v3 == v5;
        return v1 & 1;
      }
    }

    else if (!v4)
    {
      v1 = 1;
      return v1 & 1;
    }

    swift_unknownObjectRelease();
    v1 = 0;
    return v1 & 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_19;
  }

  if (!*(&v8 + 1))
  {
LABEL_19:
    sub_10005BF8C(v13);
    goto LABEL_20;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v1 = static AnyHashable.== infix(_:_:)();
  sub_10005BF8C(&v10);
  sub_10005BF8C(v13);
  return v1 & 1;
}

uint64_t sub_10010EC84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10010ECCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_10010ED3C())(uint64_t a1)
{
  sub_10010F468();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1000F1DB0;
}

uint64_t (*sub_10010EDA8())(uint64_t a1)
{
  sub_10010F414();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1000D882C;
}

uint64_t (*sub_10010EE14())(uint64_t a1, uint64_t a2)
{
  sub_10010F3C0();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_100100EB8;
}

uint64_t (*sub_10010EE80())(uint64_t a1)
{
  sub_10010F36C();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1000D882C;
}

uint64_t (*sub_10010EEEC())(uint64_t)
{
  sub_10010F318();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1001012CC;
}

uint64_t (*sub_10010EF58())(uint64_t a1)
{
  sub_10010F2C4();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1000D882C;
}

uint64_t (*sub_10010EFC4())(uint64_t a1)
{
  sub_10010F270();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1000D882C;
}

uint64_t (*sub_10010F030())(uint64_t)
{
  sub_10010F21C();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1001012CC;
}

uint64_t (*sub_10010F09C())(uint64_t)
{
  sub_10010F1C8();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1001012CC;
}

uint64_t (*sub_10010F108())(uint64_t a1)
{
  sub_10010F174();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_1000D882C;
}

unint64_t sub_10010F174()
{
  result = qword_10190B2E0;
  if (!qword_10190B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B2E0);
  }

  return result;
}

unint64_t sub_10010F1C8()
{
  result = qword_10190B2E8;
  if (!qword_10190B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B2E8);
  }

  return result;
}

unint64_t sub_10010F21C()
{
  result = qword_10190B2F0;
  if (!qword_10190B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B2F0);
  }

  return result;
}

unint64_t sub_10010F270()
{
  result = qword_10190B2F8;
  if (!qword_10190B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B2F8);
  }

  return result;
}

unint64_t sub_10010F2C4()
{
  result = qword_10190B300;
  if (!qword_10190B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B300);
  }

  return result;
}

unint64_t sub_10010F318()
{
  result = qword_10190B308;
  if (!qword_10190B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B308);
  }

  return result;
}

unint64_t sub_10010F36C()
{
  result = qword_10190B310;
  if (!qword_10190B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B310);
  }

  return result;
}

unint64_t sub_10010F3C0()
{
  result = qword_10190B318;
  if (!qword_10190B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B318);
  }

  return result;
}

unint64_t sub_10010F414()
{
  result = qword_10190B320;
  if (!qword_10190B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B320);
  }

  return result;
}

unint64_t sub_10010F468()
{
  result = qword_10190B328;
  if (!qword_10190B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B328);
  }

  return result;
}

id sub_10010F640(char *a1, uint64_t a2, uint64_t a3)
{
  sub_10010F810(a3, v9);
  v4 = OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_viewModel;
  swift_beginAccess();
  sub_1000D2DFC(&a1[v4], v8, &qword_10190B330);
  swift_beginAccess();
  sub_10010F86C(v9, &a1[v4]);
  swift_endAccess();
  sub_1005334E8(v8);
  sub_100024F64(v8, &qword_10190B330);
  sub_100024F64(v9, &qword_10190B330);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (swift_getObjectType(), (Strong = swift_conformsToProtocol2()) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_delegate + 8] = Strong;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v6 = String._bridgeToObjectiveC()();
    [a1 setAccessibilityIdentifier:v6];

    return [a1 setAccessibilityTraits:UIAccessibilityTraitButton];
  }

  return result;
}

uint64_t sub_10010F86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190B330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::UInt sub_10010F8DC()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v9);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v10);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_100024F64(&v6, &qword_10191A570);
  }

  v1 = Hasher._finalize()();
  Hasher._combine(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      v13 = v10;
      v14 = v11;
      v15 = v12;
      AnyHashable.hash(into:)();
      sub_10005BF8C(&v13);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_100024F64(&v10, &qword_10191A570);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    Hasher._combine(_:)(v3);
    swift_unknownObjectRelease();
  }

LABEL_11:
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4 && (v9[0] = v4, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      v13 = v10;
      v14 = v11;
      v15 = v12;
      AnyHashable.hash(into:)();
      return sub_10005BF8C(&v13);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_100024F64(&v10, &qword_10191A570);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Hasher._combine(_:)(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_10010FB20()
{
  Hasher.init(_seed:)();
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v10);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v11);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_100024F64(&v7, &qword_10191A570);
  }

  v1 = Hasher._finalize()();
  Hasher._combine(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      AnyHashable.hash(into:)();
      sub_10005BF8C(&v14);
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_100024F64(&v11, &qword_10191A570);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    Hasher._combine(_:)(v3);
    swift_unknownObjectRelease();
  }

LABEL_11:
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4 && (v10[0] = v4, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      AnyHashable.hash(into:)();
      sub_10005BF8C(&v14);
      return Hasher._finalize()();
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_100024F64(&v11, &qword_10191A570);
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    Hasher._combine(_:)(v5);
    swift_unknownObjectRelease();
  }

  return Hasher._finalize()();
}

uint64_t sub_10010FD70@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906560 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&unk_10191C2C0);
  v3 = sub_100021540(v2, qword_10195FAC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10010FE24()
{
  sub_1000D2DFC(v0 + 8, v5, &unk_10191C220);
  sub_10005E7BC(v5, v6);
  v1 = v7;
  v2 = v8;
  sub_10005E838(v6, v7);
  v3 = (*(v2 + 32))(v1, v2);
  sub_10004E3D0(v6);
  return v3;
}

uint64_t sub_10010FEB8()
{
  sub_1000D2DFC(v0 + 8, v5, &unk_10191C220);
  sub_10005E7BC(v5, v6);
  v1 = v7;
  v2 = v8;
  sub_10005E838(v6, v7);
  v3 = (*(v2 + 40))(v1, v2);
  sub_10004E3D0(v6);
  return v3;
}

uint64_t sub_10010FF4C()
{
  sub_1000D2DFC(v0 + 8, v5, &unk_10191C220);
  sub_10005E7BC(v5, v6);
  v1 = v7;
  v2 = v8;
  sub_10005E838(v6, v7);
  v3 = (*(v2 + 48))(v1, v2);
  sub_10004E3D0(v6);
  return v3;
}

Swift::Int sub_10010FFE8()
{
  Hasher.init(_seed:)();
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v10);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v11);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_100024F64(&v7, &qword_10191A570);
  }

  v1 = Hasher._finalize()();
  Hasher._combine(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      AnyHashable.hash(into:)();
      sub_10005BF8C(&v14);
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_100024F64(&v11, &qword_10191A570);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    Hasher._combine(_:)(v3);
    swift_unknownObjectRelease();
  }

LABEL_11:
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4 && (v10[0] = v4, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      AnyHashable.hash(into:)();
      sub_10005BF8C(&v14);
      return Hasher._finalize()();
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_100024F64(&v11, &qword_10191A570);
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    Hasher._combine(_:)(v5);
    swift_unknownObjectRelease();
  }

  return Hasher._finalize()();
}

uint64_t sub_100110234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100367750();
  if (v4 != sub_100367750() || (sub_10010ED08(a1 + 48, a2 + 48) & 1) == 0)
  {
    return 0;
  }

  return sub_10010ED08(a1 + 152, a2 + 152);
}

uint64_t sub_1001102B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001102D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100110318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100110384()
{
  result = qword_10190B338;
  if (!qword_10190B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B338);
  }

  return result;
}

unint64_t sub_1001103D8(uint64_t a1)
{
  result = sub_100110400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100110400()
{
  result = qword_10190B378;
  if (!qword_10190B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B378);
  }

  return result;
}

uint64_t sub_100110454(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v11 = 0x800000010121C800;
        v4 = 0x7972617262694C5BLL;
        v5 = 0xEF6572616853205DLL;
        v2 = 0x6572616853;
        v6 = 0xD00000000000002ELL;
        v3 = 0xE500000000000000;
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v11 = 0x800000010121C7D0;
        v2 = 0x6968542065746152;
        v3 = 0xEF6563616C502073;
        v4 = 0xD000000000000015;
        v5 = 0x800000010121C7B0;
        v6 = 0xD00000000000002CLL;
      }
    }

    else if (a1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v11 = 0x800000010121C870;
      v4 = 0xD00000000000001ELL;
      v5 = 0x800000010121C830;
      v3 = 0x800000010121C850;
      v6 = 0xD000000000000040;
      v2 = 0xD000000000000012;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v11 = 0x800000010121C8E0;
      v2 = 0x50206F7420646441;
      v3 = 0xED0000736563616CLL;
      v4 = 0xD000000000000019;
      v5 = 0x800000010121C8C0;
      v6 = 0xD00000000000003CLL;
    }

    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v1, *&v2, *&v6)._countAndFlagsBits;
  }

  if (a1 > 5u)
  {
    if (a1 == 6)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v11 = 0x800000010121C770;
      v2 = 0x6F4C20676E6F7257;
      v3 = 0xEE006E6F69746163;
      v4 = 0xD00000000000001FLL;
      v5 = 0x800000010121C750;
      v6 = 0xD00000000000003BLL;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v11 = 0x800000010121C710;
      v2 = 0x65766F6D6552;
      v4 = 0xD00000000000001DLL;
      v5 = 0x800000010121C6F0;
      v6 = 0xD000000000000030;
      v3 = 0xE600000000000000;
    }

    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v1, *&v2, *&v6)._countAndFlagsBits;
  }

  if (a1 == 4)
  {
    v7 = [objc_opt_self() addANoteTitle];
  }

  else
  {
    v7 = [objc_opt_self() editNoteTitle];
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

unint64_t sub_100110884(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v2 = 0x800000010121C6B0;
        v1 = 0xD000000000000012;
      }

      else
      {
        v1 = 0x65766F6D6552;
        v2 = 0xE600000000000000;
      }
    }

    else
    {
      v1 = 0x696445724F646441;
      v2 = 0xED000065746F4E74;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = 0x6572616853;
      v2 = 0xE500000000000000;
    }

    else
    {
      v1 = 1702125906;
      v2 = 0xE400000000000000;
    }
  }

  else if (a1)
  {
    v1 = 0xD000000000000016;
    v2 = 0x800000010121C6D0;
  }

  else
  {
    v1 = 0x62694C6F54646441;
    v2 = 0xEC00000079726172;
  }

  String.append(_:)(*&v1);
  return 0xD000000000000012;
}

__n128 sub_1001109C8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  sub_1001124A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 80);
  v14 = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 64);
  v15[0] = v3;
  *(v15 + 14) = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 94);
  v4 = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 16);
  v10 = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state);
  v11 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 48);
  v12 = *(v1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 32);
  v13 = v5;
  sub_10011243C(&v10, v9);
  v6 = v15[0];
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 94) = *(v15 + 14);
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100110A9C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state;
  v3 = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 80);
  v13[4] = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 64);
  v14[0] = v3;
  *(v14 + 14) = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 94);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 16);
  v13[0] = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state);
  v13[1] = v4;
  v5 = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 48);
  v13[2] = *(a1 + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state + 32);
  v13[3] = v5;
  v6 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v6;
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(v2 + 94) = *(a2 + 94);
  *(v2 + 64) = v9;
  *(v2 + 80) = v10;
  *(v2 + 32) = v7;
  *(v2 + 48) = v8;
  sub_10011243C(a2, v12);
  return sub_100112474(v13);
}

uint64_t sub_100110B30()
{
  swift_getKeyPath();
  sub_1001124A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100110BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001124A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100110C58()
{
  swift_getKeyPath();
  sub_1001124A4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100110CF4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

id sub_100110D64()
{
  ObjectType = swift_getObjectType();
  ObservationRegistrar.init()();
  *&v0[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers] = _swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 24) = 257;
  *(v2 + 50) = 256;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_100110EAC();
  sub_10011167C(v6);
  swift_getKeyPath();
  sub_1001124A4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100112474(v6);

  sub_100111BAC();

  return v3;
}

void sub_100110EAC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UserProfileLinkFactory) init];
  if ((MapKitIdiomIsMacCatalyst() & 1) == 0)
  {
    v3 = [v2 linkProviderForType:0];
    swift_getKeyPath();
    sub_1001124A4();
    swift_unknownObjectRetain();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_unknownObjectRelease();
  }

  [v2 linkProviderForType:1];
  swift_getKeyPath();
  sub_1001124A4();
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  [v2 linkProviderForType:5];
  swift_getKeyPath();
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  [v2 linkProviderForType:2];
  swift_getKeyPath();
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v6 = [v2 linkProviderForType:3];
  swift_getKeyPath();
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v7 = [v2 linkProviderForType:4];
  swift_getKeyPath();
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_10011167C(uint64_t a1@<X8>)
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v3 = [objc_opt_self() sharedConfiguration];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 countryCode];

  if (!v5)
  {
    v11 = 1;
    goto LABEL_9;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 != 20035 || v8 != 0xE200000000000000)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
LABEL_9:
    v67 = v11;
    goto LABEL_11;
  }

  v67 = 0;
LABEL_11:
  LagunaBeachContributions = GEOCanUserMakeLagunaBeachContributions();
  v12 = [objc_opt_self() sharedInstance];
  v64 = [v12 hasRatings];

  v63 = MapKitIdiomIsMacCatalyst();
  v65 = _MKRAPIsAvailable();
  v13 = sub_100111D38(0);
  if (v13)
  {
    v14 = [v13 createUserProfileLink];
    v15 = [v14 subtitle];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v17;
    v62 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v18 = sub_100111D38(1);
  if (v18)
  {
    v19 = [v18 createUserProfileLink];
    v20 = [v19 subtitle];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v22;
    v60 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  if (sub_100111D38(3))
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = [v23 virtualGarage];
      v26 = [v25 vehicles];

      sub_1001125C8();
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v27 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28 > 0)
      {
        v29 = 1;
      }

      else
      {
        v29 = IsMacCatalyst;
      }

      if (v28 > 0)
      {
        v30 = 1;
      }

      else
      {
        v30 = IsMacCatalyst ^ 1;
      }

      if ((v29 & 1) == 0)
      {
        v30 = [v24 hasUnpairedVehicles];
      }

      IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
      IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
      if (IsMacCatalyst)
      {
        v33 = v30 & (IsEnabled_EVRouting | IsEnabled_Alberta);
      }

      else
      {
        v33 = v30 & IsEnabled_EVRouting | IsEnabled_Alberta;
      }

      v58 = v33;
      v34 = [v24 createUserProfileLink];
      v35 = [v34 subtitle];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v37;
      v57 = v36;

      swift_unknownObjectRelease();
      goto LABEL_35;
    }

    swift_unknownObjectRelease();
  }

  v58 = 0;
  v56 = 0;
  v57 = 0;
LABEL_35:
  v38 = sub_100111D38(5);
  if (v38)
  {
    v39 = [v38 createUserProfileLink];
    v40 = [v39 subtitle];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = sub_100111D38(2);
  if (v44)
  {
    v45 = [v44 createUserProfileLink];
    v46 = [v45 subtitle];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = sub_100111D38(4);
  if (v50)
  {
    v51 = [v50 createUserProfileLink];
    v52 = [v51 subtitle];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  *a1 = v62;
  *(a1 + 8) = v61;
  *(a1 + 16) = v41;
  *(a1 + 24) = v43;
  *(a1 + 32) = v60;
  *(a1 + 40) = v59;
  *(a1 + 48) = v47;
  *(a1 + 56) = v49;
  *(a1 + 64) = v57;
  *(a1 + 72) = v56;
  *(a1 + 80) = v53;
  *(a1 + 88) = v55;
  *(a1 + 96) = v63 ^ 1;
  *(a1 + 97) = 1;
  *(a1 + 98) = v65;
  *(a1 + 99) = v64 & v67 & LagunaBeachContributions;
  *(a1 + 100) = v58 & 1;
  *(a1 + 101) = 1;
}

uint64_t sub_100111BAC()
{
  v1 = v0;
  swift_getKeyPath();
  v9 = v0;
  sub_1001124A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers;
  result = swift_beginAccess();
  v4 = *(v9 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      v8 = [v7 observers];
      [v8 registerObserver:v1];
      swift_unknownObjectRelease();
    }

    while (v5 != v6);
  }

  return result;
}

void *sub_100111D38(id a1)
{
  swift_getKeyPath();
  v10 = v1;
  sub_1001124A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps23UserProfileDataProvider__providers;
  swift_beginAccess();
  v4 = *(v10 + v3);
  if (v4 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if ([v7 userProfileLinkType] == a1)
      {

        return v7;
      }

      swift_unknownObjectRelease();
      ++v6;
    }

    while (v8 != v5);
  }

  return 0;
}

uint64_t type metadata accessor for UserProfileDataProvider()
{
  result = qword_10190B3C0;
  if (!qword_10190B3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100111FB4()
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

uint64_t sub_10011205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = a4;
  type metadata accessor for MainActor();
  *(v4 + 136) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001120F4, v6, v5);
}

uint64_t sub_1001120F4()
{
  v1 = v0[16];

  sub_10011167C((v0 + 2));
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v0[15] = v1;
  sub_1001124A4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100112474((v0 + 2));

  v3 = v0[1];

  return v3();
}

__n128 sub_100112330(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10011235C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 102))
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

uint64_t sub_1001123B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 102) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 102) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1001124A4()
{
  result = qword_10190B430;
  if (!qword_10190B430)
  {
    type metadata accessor for UserProfileDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B430);
  }

  return result;
}

uint64_t sub_1001124FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10011205C(a1, v4, v5, v6);
}

unint64_t sub_1001125C8()
{
  result = qword_10190B440;
  if (!qword_10190B440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190B440);
  }

  return result;
}

uint64_t sub_100112630()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC4Maps23UserProfileDataProvider__state;
  v4 = *(v2 + 16);
  v3 = *(v2 + 32);
  v15[0] = *v2;
  v15[1] = v4;
  v15[2] = v3;
  v6 = *(v2 + 64);
  v5 = *(v2 + 80);
  v7 = *(v2 + 48);
  *(v16 + 14) = *(v2 + 94);
  v15[4] = v6;
  v16[0] = v5;
  v15[3] = v7;
  v9 = *(v1 + 64);
  v8 = *(v1 + 80);
  v10 = *(v1 + 48);
  *(v2 + 94) = *(v1 + 94);
  *(v2 + 64) = v9;
  *(v2 + 80) = v8;
  *(v2 + 48) = v10;
  v11 = *v1;
  v12 = *(v1 + 32);
  *(v2 + 16) = *(v1 + 16);
  *(v2 + 32) = v12;
  *v2 = v11;
  sub_10011243C(v1, v14);
  return sub_100112474(v15);
}

void sub_1001126E8(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = [v3 mapsDisplayName];
  if (v5 || (v5 = sub_100ADA744()) != 0)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v10.super.isa = qword_1019600D8;
  v52._object = 0x800000010121C990;
  v11._countAndFlagsBits = 0x6977206572616853;
  v11._object = 0xED00004025206874;
  v12._countAndFlagsBits = 0xD00000000000002BLL;
  v12._object = 0x800000010121C960;
  v52._countAndFlagsBits = 0xD000000000000063;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v11, v52);
  sub_1000CE6B8(&unk_10190D5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D30;
  if (v9)
  {
    v14 = v13;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000DA61C();
    *(v14 + 32) = v7;
    *(v14 + 40) = v9;
    v42 = String.init(format:_:)();
    v16 = v15;

    v53._object = 0x800000010121CA50;
    v17._countAndFlagsBits = 0xD000000000000027;
    v17._object = 0x800000010121CA00;
    v18._object = 0x800000010121CA30;
    v53._countAndFlagsBits = 0xD00000000000007ELL;
    v18._countAndFlagsBits = 0xD000000000000011;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v10, v18, v53);
    v54._object = 0x800000010121CB40;
    v20._countAndFlagsBits = 0xD00000000000002ALL;
    v20._object = 0x800000010121CAD0;
    v21._object = 0x800000010121CB00;
    v54._countAndFlagsBits = 0xD000000000000081;
    v21._countAndFlagsBits = 0x100000000000003CLL;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v10, v21, v54);
    if (qword_101906568 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100021540(v23, qword_10190B450);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v41 = a3;
      v26 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_10004DEB8(v19._countAndFlagsBits, v19._object, &aBlock);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_10004DEB8(v22._countAndFlagsBits, v22._object, &aBlock);
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_10004DEB8(v42, v16, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "Will present destination handoff alert with title: %s, subtitle: %s, and button title: %s.", v26, 0x20u);
      swift_arrayDestroy();

      a3 = v41;
    }

    else
    {
    }

    v27 = String._bridgeToObjectiveC()();

    v28 = String._bridgeToObjectiveC()();

    v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];

    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = ObjectType;

    v31 = String._bridgeToObjectiveC()();

    v50 = sub_100112FF4;
    v51 = v30;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1001FDE68;
    v49 = &unk_101604100;
    v32 = _Block_copy(&aBlock);

    v33 = objc_opt_self();
    v34 = [v33 actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    [v29 addAction:v34];
    v55._object = 0x800000010121CC20;
    v35._countAndFlagsBits = 0x6C65636E6143;
    v36._countAndFlagsBits = 0xD000000000000029;
    v36._object = 0x800000010121CBF0;
    v55._countAndFlagsBits = 0xD00000000000004ALL;
    v35._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v10, v35, v55);
    v37 = swift_allocObject();
    v37[2] = a2;
    v37[3] = a3;
    v37[4] = ObjectType;

    v38 = String._bridgeToObjectiveC()();

    v50 = sub_100113020;
    v51 = v37;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1001FDE68;
    v49 = &unk_101604150;
    v39 = _Block_copy(&aBlock);

    v40 = [v33 actionWithTitle:v38 style:1 handler:v39];
    _Block_release(v39);

    [v29 addAction:v40];
    [a1 _maps_topMostPresentViewController:v29 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100112DC8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, const char *a5, char a6)
{
  if (qword_101906568 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_10190B450);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a5, v12, 2u);
  }

  return a2(a6 & 1);
}

uint64_t sub_100112F6C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10190B450);
  sub_100021540(v0, qword_10190B450);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100113054@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1001130A4()
{
  v1 = OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace);
  }

  else
  {
    v4 = sub_100113150(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100113150(uint64_t a1)
{
  v2 = [objc_allocWithZone(UGCReviewedPlace) initWithMUID:{objc_msgSend(*(a1 + OBJC_IVAR____TtC4Maps9UGCReport_mapItem), "_muid")}];
  v3 = *(a1 + OBJC_IVAR____TtC4Maps9UGCReport_initialForm);
  v4 = [v3 photosForm];
  v5 = [v4 activePhotoList];

  sub_1000CE6B8(&unk_10190B510);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_3:
    [v2 setNumberOfPhotosAdded:v7];
    v8 = [v3 ratingsForm];
    v9 = [v8 overallCategory];

    v10 = [v9 currentState];
    [v2 setRecommendState:v10];
    [v2 setIsDeleted:{objc_msgSend(v3, "actionType") == 2}];
    return v2;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

id sub_1001134A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UGCReport();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100113574(uint64_t a1, void (*a2)(id), uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v11 = [v6 buildSubmissionParameters];
  if (v11)
  {
    v12 = v11;
    aBlock[0] = 0;
    v13 = [objc_opt_self() buildICloudUserCredentialsWithError:aBlock];
    v14 = aBlock[0];
    if (v13)
    {
      v15 = v13;
      v16 = objc_opt_self();
      v17 = v15;
      v18 = v14;
      v19 = [v16 progressWithTotalUnitCount:100];
      v20 = [v16 progressWithTotalUnitCount:100];
      [v20 setCompletedUnitCount:20];
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = v12;
      v21[4] = v6;
      v21[5] = v17;
      v21[6] = a1;
      v21[7] = a4;
      v21[8] = a5;
      v21[9] = v19;
      aBlock[4] = sub_100116300;
      aBlock[5] = v21;
      v33 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10011642C;
      aBlock[3] = &unk_1016045F8;
      v22 = _Block_copy(aBlock);
      v23 = v20;
      v24 = v6;
      v25 = v19;
      v26 = v12;
      sub_1000CD9D4(a4);

      [v24 fetchCoarsenedDeviceLocationWithCompletion:v22];
      _Block_release(v22);
      [v25 addChild:v23 withPendingUnitCount:10];
      if (a2)
      {
        a2(v25);
      }
    }

    else
    {
      v29 = aBlock[0];
      v30 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (a4)
      {
        sub_100116170();
        v31 = swift_allocError();
        *v32 = v30;
        *(v32 + 8) = 0;
        *(v32 + 16) = 1;
        swift_errorRetain();
        a4(0, v31);
      }

      else
      {
      }
    }
  }

  else if (a4)
  {
    sub_100116170();
    v27 = swift_allocError();
    *v28 = 0xD000000000000017;
    *(v28 + 8) = 0x800000010121CF00;
    *(v28 + 16) = 0;
    a4(0, v27);
  }
}

void sub_100113904(uint64_t a1, int a2, id a3, void *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  [a3 setCompletedUnitCount:{objc_msgSend(a3, "totalUnitCount")}];
  v14 = [a4 traits];
  [v14 setDeviceLocation:a1];

  v15 = OBJC_IVAR____TtC4Maps9UGCReport_submitter;
  v16 = *&a5[OBJC_IVAR____TtC4Maps9UGCReport_submitter];
  v17 = [a4 requestParams];
  v18 = [a4 attachedImages];
  v19 = [a4 traits];
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a5;
  aBlock[4] = sub_100116334;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011642C;
  aBlock[3] = &unk_101604648;
  v21 = _Block_copy(aBlock);
  sub_1000CD9D4(a8);
  v22 = a5;

  [v16 submitOrEnqueueFeedback:v17 attachedImages:v18 userInfo:a6 traits:v19 uploadPolicy:a7 feedbackObjectToUpdate:0 completion:v21];
  _Block_release(v21);

  v23 = [*&a5[v15] currentProgress];
  [a10 addChild:v23 withPendingUnitCount:90];
}

void sub_100113B38(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2)
  {
    if (a3)
    {
      a3();
    }
  }

  else
  {
    v9 = sub_1001130A4();
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a1;
    v13[4] = sub_100116388;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1002B0058;
    v13[3] = &unk_101604698;
    v11 = _Block_copy(v13);
    sub_1000CD9D4(a3);
    v12 = a1;

    [a5 persistSubmissionWithUpdatedReviewedPlace:v9 communityIdentifier:0 completion:v11];
    _Block_release(v11);
  }
}

void sub_100113C68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100113E18(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = [v10 progressWithTotalUnitCount:100];
  v12 = [v10 progressWithTotalUnitCount:100];
  [v12 setCompletedUnitCount:20];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v5;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = v13;
  v14[7] = a1;
  v14[8] = v11;
  aBlock[4] = sub_10011613C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011642C;
  aBlock[3] = &unk_101604328;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v5;

  v18 = v11;
  sub_1000CD9D4(a4);

  [v17 fetchCoarsenedDeviceLocationWithCompletion:v15];
  _Block_release(v15);
  [v18 addChild:v16 withPendingUnitCount:10];
  if (a2)
  {
    a2(v18);
  }
}

id sub_100113FFC(void *a1, uint64_t a2, void *a3, char *a4, void (*a5)(void, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v108 = a1;
  v109 = a8;
  v111 = a7;
  v114 = a5;
  v12 = a9;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setCompletedUnitCount:{objc_msgSend(a3, "totalUnitCount", v19)}];
  v21 = *&a4[OBJC_IVAR____TtC4Maps9UGCReport_initialForm];
  result = [v21 isEdited];
  if (result)
  {
    v99 = v17;
    v100 = v14;
    v101 = v13;
    v102 = a6;
    v23 = swift_allocObject();
    v113 = v23;
    *(v23 + 16) = 0;
    v96 = v23 + 16;
    v110 = swift_allocObject();
    *(v110 + 16) = 0;
    v112 = dispatch_group_create();
    v24 = [v21 ratingsForm];
    v25 = [v24 isEdited];

    v26 = &selRef_pathForFeedbackRequestForSubmissionIdentifier_;
    v106 = v16;
    v105 = v18;
    v104 = a9;
    v103 = v21;
    if ((v25 & 1) != 0 || a4[OBJC_IVAR____TtC4Maps9UGCReport_shouldMigrateRatingsWithICloud] == 1)
    {
      v27 = v113;
      v28 = [objc_opt_self() progressWithTotalUnitCount:100];
      v29 = v112;
      dispatch_group_enter(v112);
      v30 = OBJC_IVAR____TtC4Maps9UGCReport_mapItem;
      v98 = [*&a4[OBJC_IVAR____TtC4Maps9UGCReport_mapItem] _muid];
      result = [*&a4[v30] _geoMapItem];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v31 = result;
      v97 = objc_opt_self();
      v32 = [v31 _identifierHistory];
      swift_unknownObjectRelease();
      v33 = swift_allocObject();
      v34 = v110;
      v33[2] = v111;
      v33[3] = a4;
      v35 = a4;
      v37 = v108;
      v36 = v109;
      v33[4] = v108;
      v33[5] = v36;
      v33[6] = v28;
      v33[7] = v34;
      v33[8] = v27;
      v33[9] = v29;
      v120 = sub_1001161FC;
      v121 = v33;
      aBlock = _NSConcreteStackBlock;
      v117 = 1107296256;
      v118 = sub_100271778;
      v119 = &unk_101604490;
      v38 = _Block_copy(&aBlock);
      v39 = v37;
      a4 = v35;
      v40 = v28;

      v41 = v29;

      v42 = v35;

      [v97 fetchCommunityIDWithMUID:v98 identifierHistory:v32 CompletionHandler:v38];
      _Block_release(v38);

      v26 = &selRef_pathForFeedbackRequestForSubmissionIdentifier_;
      v43 = v103;
      v44 = [v103 photosForm];
      v45 = [v44 isEmpty];

      if (v45)
      {
        v46 = 80;
      }

      else
      {
        v46 = 40;
      }

      v12 = v104;
      [v104 addChild:v40 withPendingUnitCount:v46];

      v21 = v43;
      v16 = v106;
      v18 = v105;
    }

    v47 = [v21 v26[197]];
    v48 = [v47 isEdited];

    if ((v48 & 1) != 0 || a4[OBJC_IVAR____TtC4Maps9UGCReport_shouldMigrateRatingsWithICloud] == 1)
    {
      v49 = [objc_opt_self() progressWithTotalUnitCount:100];
      v50 = v112;
      dispatch_group_enter(v112);
      v51 = objc_opt_self();
      aBlock = 0;
      v52 = [v51 buildICloudUserCredentialsWithError:&aBlock];
      v53 = aBlock;
      v54 = v110;
      if (!v52)
      {
        v75 = aBlock;
        v76 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (v114)
        {
          sub_100116170();
          v77 = swift_allocError();
          *v78 = v76;
          *(v78 + 8) = 0;
          *(v78 + 16) = 1;
          swift_errorRetain();
          v114(0, v77);
        }

        else
        {
        }
      }

      v55 = v52;
      v56 = swift_allocObject();
      v56[2] = v49;
      v56[3] = v54;
      v56[4] = v113;
      v56[5] = v50;
      swift_retain_n();
      swift_retain_n();
      v57 = v50;
      v58 = v49;
      v59 = v57;
      v60 = v58;
      v61 = v55;
      v62 = v53;
      v63 = [a4 buildPhotosSubmissionParameters];
      if (v63)
      {
        v64 = v63;

        v65 = [v64 traits];
        [v65 setDeviceLocation:v108];

        v108 = *&a4[OBJC_IVAR____TtC4Maps9UGCReport_submitter];
        v66 = v61;
        v67 = [v64 requestParams];
        v68 = [v64 attachedImages];
        v69 = [v64 traits];
        v70 = swift_allocObject();
        *(v70 + 16) = sub_1001161D8;
        *(v70 + 24) = v56;
        v120 = sub_1001161F8;
        v121 = v70;
        aBlock = _NSConcreteStackBlock;
        v117 = 1107296256;
        v118 = sub_10011642C;
        v119 = &unk_101604440;
        v71 = _Block_copy(&aBlock);

        v72 = v108;
        [v108 submitOrEnqueueFeedback:v67 attachedImages:v68 userInfo:v66 traits:v69 uploadPolicy:v109 feedbackObjectToUpdate:0 completion:v71];

        _Block_release(v71);
        v61 = v66;
      }

      else
      {
        sub_100116170();
        v79 = swift_allocError();
        *v80 = 0xD000000000000017;
        *(v80 + 8) = 0x800000010121CF00;
        *(v80 + 16) = 0;
        [v60 setCompletedUnitCount:{objc_msgSend(v60, "totalUnitCount")}];
        swift_beginAccess();
        *(v113 + 16) = v79;
        swift_errorRetain();

        dispatch_group_leave(v59);
      }

      v18 = v105;
      v81 = [v103 ratingsForm];
      v82 = [v81 isEmpty];

      if (v82)
      {
        v83 = 80;
      }

      else
      {
        v83 = 40;
      }

      v12 = v104;
      [v104 addChild:v60 withPendingUnitCount:v83];

      v16 = v106;
    }

    sub_100014C84(0, &qword_10190B4F0);
    v84 = v18;
    v109 = static OS_dispatch_queue.main.getter();
    v85 = swift_allocObject();
    v87 = v110;
    v86 = v111;
    v85[2] = a4;
    v85[3] = v86;
    v88 = v114;
    v85[4] = v113;
    v85[5] = v88;
    v85[6] = v102;
    v85[7] = v87;
    v85[8] = v12;
    v120 = sub_1001161C4;
    v121 = v85;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_100039C64;
    v119 = &unk_1016043C8;
    v89 = _Block_copy(&aBlock);

    v90 = a4;

    sub_1000CD9D4(v88);
    v91 = v12;
    v92 = v107;
    static DispatchQoS.unspecified.getter();
    v115 = _swiftEmptyArrayStorage;
    sub_1000DB364();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    v93 = v101;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v94 = v109;
    v95 = v112;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v89);

    (*(v100 + 8))(v16, v93);
    (*(v84 + 8))(v92, v99);
  }

  if (v114)
  {
    sub_100116170();
    v73 = swift_allocError();
    *v74 = 0xD00000000000001FLL;
    *(v74 + 8) = 0x800000010121CEE0;
    *(v74 + 16) = 0;
    v114(0, v73);
  }

  return result;
}

void sub_100114C24(id a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v15 = [a1 tdmUserInfo];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 anonymousUserId];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
LABEL_5:
    v18 = 0;
    v20 = 0;
  }

  swift_beginAccess();
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;

  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a9;
  v22 = a6;
  swift_retain_n();
  swift_retain_n();
  v23 = a9;
  v24 = v22;
  v25 = v23;
  v26 = [a3 buildRatingSubmissionParameters];
  if (v26)
  {
    v27 = v26;

    v28 = [v27 traits];
    [v28 setDeviceLocation:a4];

    v29 = *&a3[OBJC_IVAR____TtC4Maps9UGCReport_submitter];
    v30 = [v27 requestParams];
    v31 = [v27 traits];
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1001163FC;
    *(v32 + 24) = v21;
    aBlock[4] = sub_100116430;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011642C;
    aBlock[3] = &unk_101604508;
    v33 = _Block_copy(aBlock);

    [v29 submitOrEnqueueFeedback:v30 attachedImages:0 userInfo:a1 traits:v31 uploadPolicy:a5 feedbackObjectToUpdate:0 completion:v33];

    _Block_release(v33);
  }

  else
  {
    sub_100116170();
    v34 = swift_allocError();
    *v35 = 0xD000000000000017;
    *(v35 + 8) = 0x800000010121CF00;
    *(v35 + 16) = 0;
    [v24 setCompletedUnitCount:{objc_msgSend(v24, "totalUnitCount")}];
    swift_beginAccess();
    *(a8 + 16) = v34;
    swift_errorRetain();

    dispatch_group_leave(v25);
  }
}

void sub_100114FC8(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  [a3 setCompletedUnitCount:{objc_msgSend(a3, "totalUnitCount")}];
  if (a1)
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    *(a4 + 16) = a1;
    v12 = a1;
  }

  if (a2)
  {
    swift_beginAccess();
    *(a5 + 16) = a2;
    swift_errorRetain();
  }

  dispatch_group_leave(a6);
}

void sub_100115098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = [objc_opt_self() progressWithTotalUnitCount:100];
  v14 = sub_1001130A4();
  swift_beginAccess();
  if (*(a2 + 24))
  {

    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  aBlock[4] = sub_1001162F0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B0058;
  aBlock[3] = &unk_101604558;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  sub_1000CD9D4(a4);

  [a1 persistSubmissionWithUpdatedReviewedPlace:v14 communityIdentifier:v15 completion:v17];
  _Block_release(v17);

  [a7 addChild:v18 withPendingUnitCount:10];
}

void sub_10011526C(uint64_t a1, id a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6)
{
  [a2 setCompletedUnitCount:{objc_msgSend(a2, "totalUnitCount")}];
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
    swift_errorRetain();
  }

  if (a4)
  {
    swift_beginAccess();
    v10 = *(a6 + 16);
    swift_beginAccess();
    v11 = *(a3 + 16);
    v12 = v10;
    swift_errorRetain();
    a4(v10, v11);
  }
}

id sub_1001154A8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(UGCSubmissionFields);
  v6 = a1;
  v7 = [v5 init];
  [*&v6[OBJC_IVAR____TtC4Maps9UGCReport_initialForm] *a3];
  v8 = [v6 buildSubmissionParametersWithSubmissionFields:v7];

  return v8;
}

id sub_100115638(void *a1)
{
  result = [objc_allocWithZone(GEORPFeedbackRequestParameters) init];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [objc_allocWithZone(GEORPFeedbackDetails) init];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(GEORPFeedbackSubmissionParameters) init];
  [v4 setSubmissionParameters:v7];

  v8 = [v4 submissionParameters];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 setDetails:v6];

  v10 = [a1 parentSubmissionIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = String.count.getter();

  if (v11 < 1)
  {
    goto LABEL_9;
  }

  v12 = [v4 submissionParameters];
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [a1 parentSubmissionIdentifier];
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [v13 setParentFeedbackId:v14];

LABEL_9:
  v15 = *(v1 + OBJC_IVAR____TtC4Maps9UGCReport_reportType);
  if (v15 != 1)
  {
    if (v15)
    {
LABEL_25:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v20 = [v4 submissionParameters];
    if (v20)
    {
      v17 = v20;
      [v20 setType:10];
      v18 = &selRef_setPoiEnrichmentUpdate_;
      v19 = &selRef_poiEnrichment;
      goto LABEL_16;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = [v4 submissionParameters];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  [v16 setType:11];
  v18 = &selRef_setIncidentFeedback_;
  v19 = &selRef_incidentFeedback;
LABEL_16:

  v21 = [a1 *v19];
  [v6 *v18];

  v22 = [a1 photoList];
  sub_100014C84(0, &qword_10190B4D8);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    sub_1000CE6B8(&qword_10190B4E0);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v24 = objc_allocWithZone(UGCSubmissionParameters);
  sub_1000CE6B8(&qword_10190B4E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithRequestParameters:v4 attachedImages:isa];

  return v26;
}

void sub_100115A54(id a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    a1 = [objc_allocWithZone(GEOLocation) initWithCLLocation:a1];
  }

  v4 = a1;
  a3();
}

unint64_t sub_100115C2C()
{
  result = qword_10190B4D0;
  if (!qword_10190B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B4D0);
  }

  return result;
}

id sub_100115C88(uint64_t a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace] = 0;
  v4[OBJC_IVAR____TtC4Maps9UGCReport_shouldMigrateRatingsWithICloud] = 0;
  *&v4[OBJC_IVAR____TtC4Maps9UGCReport_reportType] = a1;
  *&v4[OBJC_IVAR____TtC4Maps9UGCReport_initialForm] = a2;
  *&v4[OBJC_IVAR____TtC4Maps9UGCReport_mapItem] = a3;
  *&v4[OBJC_IVAR____TtC4Maps9UGCReport_submitter] = a4;
  v8 = objc_opt_self();
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v8 unretainedUGCInstance];
  *&v4[OBJC_IVAR____TtC4Maps9UGCReport_locationManager] = v12;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for UGCReport();
  return objc_msgSendSuper2(&v14, "init");
}

void sub_100115D68(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = objc_opt_self();
  _Block_copy(a2);
  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    a2[2](a2, 0, 0);
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC4Maps9UGCReport_locationManager);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100116118;
    *(v9 + 24) = v4;
    v12[4] = sub_100116134;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100113C68;
    v12[3] = &unk_101604260;
    v10 = _Block_copy(v12);

    v11 = [v8 singleLocationUpdateWithHandler:v10];
    _Block_release(v10);
    if (v11)
    {
      [v11 start];

      swift_unknownObjectRelease();
    }

    else
    {
      _Block_release(a2);
      __break(1u);
    }
  }
}

void sub_100115F58(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && String.count.getter() >= 1)
  {
    v8 = String._bridgeToObjectiveC()();
    [a1 setCommunityIdentifier:v8];
  }

  v9 = [a1 isDeleted];
  v10 = objc_opt_self();
  if (v9)
  {
    v11 = [a1 muid];
    v17 = a4;
    v18 = a5;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1002B0058;
    v16 = &unk_1016041E8;
    v12 = _Block_copy(&v13);

    [v10 removeReviewedPlaceForMUID:v11 completion:v12];
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1002B0058;
    v16 = &unk_1016041C0;
    v12 = _Block_copy(&v13);

    [v10 addOrEditReviewedPlace:a1 completion:v12];
  }

  _Block_release(v12);
}

unint64_t sub_100116170()
{
  result = qword_10190B4E8;
  if (!qword_10190B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B4E8);
  }

  return result;
}

uint64_t sub_100116230()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100116280()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001162C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100116340()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100116388(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(*(v1 + 32), result);
  }

  return result;
}

void sub_1001164D8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v3 = [Strong mapView];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController;
  v6 = *&v0[OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController];
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView);
    if (v7)
    {
      sub_1001167E0();
      v8 = v4;
      v9 = v7;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {

LABEL_7:

        return;
      }
    }
  }

  v11 = [v1 iosChromeViewController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 displayedViewMode];
  }

  else
  {
    v13 = -1;
  }

  *&v1[OBJC_IVAR____TtC4Maps20NearbyTransitContext_initialViewMode] = v13;
  objc_allocWithZone(type metadata accessor for NearbyTransitViewController());
  v14 = v4;
  v15 = sub_1003CC3B0(v14, v13);

  v16 = *&v1[v5];
  *&v1[v5] = v15;

  v17 = *&v1[v5];
  if (v17)
  {
    v18 = v17;
    [v18 setContaineeDelegate:v1];
  }

  if (*&v1[v5])
  {

    swift_unknownObjectWeakAssign();
  }
}

unint64_t sub_1001167E0()
{
  result = qword_10190B570;
  if (!qword_10190B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190B570);
  }

  return result;
}

uint64_t sub_10011682C()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000F0120(v1);
  return v1;
}

uint64_t sub_1001168E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1000F0120(a2);
  return sub_1001187B0(v3);
}

uint64_t sub_10011692C()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1001169CC(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100116AD0()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116B84()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116C38()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116CEC()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116DA0()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116E54()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 128);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116F08()
{
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 144);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100116FBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10011898C;
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