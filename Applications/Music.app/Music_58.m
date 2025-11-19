uint64_t sub_100673C5C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_1011814D0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_1011814D0);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_1011814D0);
}

uint64_t sub_100673D8C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100673E0C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100673E88(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V17RootPlaylistsViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100673EEC()
{
  _s14descr101092F61V17RootPlaylistsViewVMa();

  return sub_100671FDC();
}

void sub_100673F4C(uint64_t a1, uint64_t a2)
{
  v5 = *(_s14descr101092F61V17RootPlaylistsViewVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100672184(a1, a2, v6);
}

uint64_t sub_100673FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100502564(a1, v4, v5, v6);
}

uint64_t sub_100674080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006740E8()
{
  result = qword_10119CBD8;
  if (!qword_10119CBD8)
  {
    sub_1001109D0(&qword_10119CBB0);
    sub_1001109D0(&qword_10119CBB8);
    type metadata accessor for MultimodalListStyle();
    sub_100020674(&qword_10119CBC8, &qword_10119CBB8);
    swift_getOpaqueTypeConformance2();
    sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CBD8);
  }

  return result;
}

uint64_t sub_10067423C()
{
  v1 = *(_s14descr101092F61V17RootPlaylistsViewVMa() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10010FC20(&unk_101193FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_1000D8FC4();
  sub_1000D8FC4();

  return swift_deallocObject();
}

uint64_t sub_1006743DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100674424()
{
  result = qword_10119CC30;
  if (!qword_10119CC30)
  {
    sub_1001109D0(&qword_10119CC28);
    sub_100597D0C();
    sub_100020674(&qword_1011A16F0, &qword_101185680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CC30);
  }

  return result;
}

uint64_t sub_1006744DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10067453C()
{
  result = qword_10119CC40;
  if (!qword_10119CC40)
  {
    sub_1001109D0(&qword_10119CB90);
    sub_100020674(&qword_10119CC48, &qword_10119CC50);
    sub_100020674(&qword_10119CC58, &qword_10119CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CC40);
  }

  return result;
}

uint64_t sub_100674620@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v5 = &enum case for MusicTabID.browse(_:);
      }

      else
      {
        v5 = &enum case for MusicTabID.radio(_:);
      }
    }

    else if (a1)
    {
      v5 = &enum case for MusicTabID.listenNow(_:);
    }

    else
    {
      v5 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v5 = &enum case for MusicTabID.search(_:);
    }

    else
    {
      v5 = &enum case for MusicTabID.videos(_:);
    }
  }

  else
  {
    if (a1 == 6)
    {
      v3 = 0x7473696C79616C70;
      v4 = 0xE900000000000073;
    }

    else if (a1 == 7)
    {
      v3 = 0x79616C50696E696DLL;
      v4 = 0xEA00000000007265;
    }

    else
    {
      v3 = 0x6669636570736E75;
      v4 = 0xEB00000000646569;
    }

    *a2 = v3;
    a2[1] = v4;
    v5 = &enum case for MusicTabID.other(_:);
  }

  v6 = *v5;
  v7 = type metadata accessor for MusicTabID();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

void sub_100674774(uint64_t a1, char a2)
{
  if (a2 == 7)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (a2 == 8)
  {
    v2 = 2;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  Hasher._combine(_:)(0);
  String.hash(into:)();
}

uint64_t sub_1006748BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100675840(a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1006748EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100674774(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10067493C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100674774(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100674980(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 8)
  {
    return v3 == 8;
  }

  if ((v3 - 7) >= 2u)
  {
    return sub_100017984(v2, v3);
  }

  return 0;
}

uint64_t sub_1006749CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10117FB10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101219298);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_unknownObjectRetain();
    sub_10010FC20(&qword_10119CD88);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing new authority with provider: %{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_100674B64()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = [*(v0 + 16) selectedTab];
  if (!v1 || (v2 = v1, v3 = sub_10003F0FC(), v2, v3 == 7))
  {
    v3 = 1;
  }

  return sub_1006BD694(v3);
}

uint64_t sub_100674BE4(char a1)
{
  if (*(v1 + 16) && (v2 = sub_1006BD694(a1)) != 0)
  {
    v3 = v2;
    if (qword_10117FB10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_101219298);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v7 = 136446466;
      type metadata accessor for MusicStackAuthority();

      v8 = String.init<A>(describing:)();
      v10 = sub_1000105AC(v8, v9, &v23);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      v11 = String.init<A>(describing:)();
      v13 = sub_1000105AC(v11, v12, &v23);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Returning stack authority=%{public}s for tab=%{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_10117FB10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101219298);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      v19 = String.init<A>(describing:)();
      v21 = sub_1000105AC(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to retrieve stack authority for tab=%{public}s", v17, 0xCu);
      sub_10000959C(v18);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100674EDC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MusicTabsAuthority.TabID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 7)
  {
    v8 = v7 - 6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100674FD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100674FEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

unint64_t sub_100675010()
{
  result = qword_10119CD68;
  if (!qword_10119CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD68);
  }

  return result;
}

unint64_t sub_100675068()
{
  result = qword_10119CD70;
  if (!qword_10119CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD70);
  }

  return result;
}

unint64_t sub_1006750C0()
{
  result = qword_10119CD78;
  if (!qword_10119CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD78);
  }

  return result;
}

unint64_t sub_100675118()
{
  result = qword_10119CD80;
  if (!qword_10119CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD80);
  }

  return result;
}

void *sub_10067516C()
{
  if (*(v0 + 16))
  {
    return sub_1006BD21C();
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1006751A0()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1006751FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    if (a1)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
    v6 = *(v3 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
    *v5 = a1;
    v5[1] = v4;
    a1 = v6;
  }

  return sub_100020438(a1);
}

uint64_t (*sub_10067522C(uint64_t *a1))(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
    v5 = *v4;
    v6 = v4[1];
    sub_100030444(*v4);
    if (v5)
    {
      *a1 = v5;
      a1[1] = v6;
      return sub_100675BC4;
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      return sub_1006752E8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_1006752DC;
  }
}

uint64_t sub_1006752EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (!*a1)
  {
    v2 = 0;
  }

  v3 = (a1[2] + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  return sub_100020438(v4);
}

void sub_100675318(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = [v3 selectedTab];
    if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7))
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 8;
  }

  *a1 = v6;
}

void sub_100675390(unsigned __int8 *a1)
{
  if (*(v1 + 16))
  {
    sub_1006BD30C(*a1);
  }
}

void (*sub_1006753BC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  if (v3)
  {
    v4 = [v3 selectedTab];
    if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7))
    {
      v6 = 1;
    }

    *(a1 + 8) = v6;
    return sub_100675478;
  }

  else
  {
    *(a1 + 8) = 8;
    return UIScreen.Dimensions.size.getter;
  }
}

uint64_t (*sub_1006754A0())(unsigned __int8 *)
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = v2[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  return sub_100675BC8;
}

uint64_t sub_100675530(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_100675BC0;
    v7 = *(v2 + 16);
    if (v7)
    {
LABEL_3:
      v8 = (v7 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
      v9 = *v8;
      *v8 = v6;
      v8[1] = v5;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = *(v2 + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = v6;
LABEL_6:

  return sub_100020438(v9);
}

uint64_t (*sub_1006755D8(uint64_t (**a1)(unsigned __int8 *a1)))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  if (v3 && (v4 = (v3 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged), v5 = *v4, v6 = v4[1], sub_100030444(*v4), v5))
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1006757A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_100675684;
}

uint64_t sub_100675684(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = a1[1];
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_10067576C;
LABEL_6:
      v8 = v6;
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v7 = a1[1];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v7;
    v6 = sub_100675BC0;
    goto LABEL_6;
  }

  v8 = 0;
  v5 = 0;
LABEL_8:
  v9 = a1[2];
  if (v9)
  {
    v10 = (v9 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
    v11 = *v10;
    *v10 = v8;
    v10[1] = v5;
    v8 = v11;
  }

  return sub_100020438(v8);
}

uint64_t sub_10067576C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1006757D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219298);
  sub_1000060E4(v0, qword_101219298);
  return static Logger.music(_:)();
}

uint64_t sub_100675840(uint64_t a1)
{
  v2 = type metadata accessor for MusicTabID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = *(v3 + 16);
  v10(&v22 - v8, a1, v2, v7);
  v11 = *(v3 + 88);
  v12 = v11(v9, v2);
  if (v12 == enum case for MusicTabID.listenNow(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 1;
  }

  if (v12 == enum case for MusicTabID.browse(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  if (v12 == enum case for MusicTabID.videos(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 5;
  }

  if (v12 == enum case for MusicTabID.radio(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 3;
  }

  if (v12 == enum case for MusicTabID.library(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  v14 = *(v3 + 8);
  if (v12 == enum case for MusicTabID.search(_:))
  {
    v14(a1, v2);
    return 4;
  }

  v15 = v9;
  v16 = *(v3 + 8);
  v14(v15, v2);
  (v10)(v5, a1, v2);
  if (v11(v5, v2) != enum case for MusicTabID.other(_:))
  {
    v16(a1, v2);
    v16(v5, v2);
    return 9;
  }

  v17 = v16;
  (*(v3 + 96))(v5, v2);
  v18 = *v5;
  v19 = *(v5 + 1);
  if (v18 != 0x79616C50696E696DLL || v19 != 0xEA00000000007265)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17(a1, v2);
    if (v21)
    {
      return 7;
    }

    return 9;
  }

  v16(a1, v2);
  return 7;
}

uint64_t sub_100675BF8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1012192B0 = result;
  *algn_1012192B8 = v3;
  return result;
}

void sub_100675D08(char *a1)
{
  v3 = OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session;
  v4 = *&a1[OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session];
  v5 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSessionManagementViewController(0));
  *&v1[OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController] = sub_10074B30C(v4);
  v20.receiver = v1;
  v20.super_class = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  v6 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
  v7 = OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController;
  v8 = *&v6[OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController];
  v9 = v6;
  [v9 addChildViewController:v8];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = [*&v6[v7] view];
  if (v14)
  {
    v15 = v14;
    [v13 addSubview:v14];

    sub_100676468();
    v16 = *&a1[v3];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *((swift_isaMask & *v16) + 0x360);
    v19 = v16;

    v18(sub_1006769E4, v17);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100675F48(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960);
  v11 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1006769EC;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B9CE0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002473C();
  sub_10010FC20(&qword_101182970);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1006761C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated:1];
    }
  }
}

void sub_1006762E0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame:{v6, v8, v10, v12}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100676468()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  v5 = UIView.forAutolayout.getter();

  sub_100009F78(0, &qword_101183A00);
  v6 = static UIFont.preferredFont(forTextStyle:weight:)();
  v7 = objc_opt_self();
  v8 = [v7 configurationWithFont:v6];

  v9 = [v7 configurationWithScale:3];
  v10 = [v8 configurationByApplyingConfiguration:v9];

  sub_10010FC20(&qword_101183990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6D0;
  v12 = objc_opt_self();
  *(v11 + 32) = [v12 labelColor];
  *(v11 + 40) = [v12 tintColor];
  sub_100009F78(0, &qword_101180C98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v7 configurationWithPaletteColors:isa];

  v15 = [v10 configurationByApplyingConfiguration:v14];
  [v5 setSymbolConfiguration:v15];

  v16 = v5;
  [v16 setContentMode:1];
  v17 = [objc_allocWithZone(UILabel) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  v19 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v17 setFont:v19];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6D0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  v21 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  v22 = v17;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v21 initWithArrangedSubviews:v23];

  [v24 setAxis:0];
  [v24 setSpacing:3.0];
  v25 = [v26 navigationItem];
  [v25 setTitleView:v24];
}

id sub_10067697C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006769F4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

NSString sub_100676BC4()
{
  result = String._bridgeToObjectiveC()();
  qword_1012192C0 = result;
  return result;
}

uint64_t sub_100676CF4()
{
  v4.receiver = v0;
  v4.super_class = _s13TracklistCellCMa();
  v1 = objc_msgSendSuper2(&v4, "_bridgedConfigurationState");
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_10117FB20 != -1)
  {
    swift_once();
  }

  v2 = qword_1012192C0;
  AnyHashable.init<A>(_:)();
  return UICellConfigurationState.subscript.setter();
}

uint64_t sub_100676DD0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  static UIBackgroundConfiguration.listPlainCell()();
  v12 = type metadata accessor for UICellConfigurationState();
  v23 = v12;
  v24 = &protocol witness table for UICellConfigurationState;
  v13 = sub_10001C8B8(v22);
  (*(*(v12 - 8) + 16))(v13, a1, v12);
  UIBackgroundConfiguration.updated(for:)();
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_10000959C(v22);
  if (qword_10117FB20 != -1)
  {
    swift_once();
  }

  UICellConfigurationState.subscript.getter();
  if (v23)
  {
    if (swift_dynamicCast() & 1) != 0 && (v21[7])
    {
      v15 = [*HI.Color.prominentBackgroundColor.unsafeMutableAddressor() colorWithAlphaComponent:0.22];
      UIBackgroundConfiguration.backgroundColor.setter();
      v16 = UICellConfigurationState.traitCollection.getter();
      v17 = [v16 userInterfaceIdiom];

      if (v17 == 1)
      {
        v18 = UICellConfigurationState.traitCollection.getter();
        v19 = [v18 horizontalSizeClass];

        if (v19 == 2)
        {
          UIBackgroundConfiguration.cornerRadius.setter();
          UIBackgroundConfiguration.backgroundInsets.setter();
        }
      }
    }
  }

  else
  {
    sub_1000095E8(v22, &qword_10118E0A0);
  }

  (*(v6 + 16))(v4, v11, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (v14)(v11, v5);
}

id sub_1006772D8(void *a1)
{
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data] = xmmword_100EDB9A0;
  v3 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0x20000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  *(v3 + 6) = 0;
  v3[56] = 0;
  v1[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = 0;
  v6.receiver = v1;
  v6.super_class = _s13TracklistCellCMa();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1006773AC()
{
  v2.receiver = v0;
  v2.super_class = _s13TracklistCellCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100677418(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100677434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100677490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1006774F0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Tracklist.LeadingNumberState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Tracklist.LeadingNumberState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_100677664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v168 = *(v3 - 8);
  v169 = v3;
  __chkstk_darwin(v3);
  v167 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v165 = *(v5 - 8);
  v166 = v5;
  __chkstk_darwin(v5);
  v164 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DynamicTypeSize();
  v161 = *(v7 - 8);
  v162 = v7;
  __chkstk_darwin(v7);
  v118 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v9 - 8);
  v163 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v160 = &v113 - v12;
  v13 = type metadata accessor for Tracklist.LeadingIcon(255);
  v209 = v13;
  v210 = sub_1001109D0(&qword_10119D110);
  v211 = sub_1001109D0(&qword_10119D118);
  v212 = sub_1001109D0(&qword_10119D120);
  v213 = &type metadata for Spacer;
  v159 = a1;
  v15 = a1[2];
  v14 = a1[3];
  v16 = a1[4];
  v178 = a1[5];
  v17 = a1[6];
  v204 = v15;
  v205 = v14;
  v18 = v14;
  v173 = v17;
  v174 = v14;
  v206 = v16;
  v207 = v178;
  v208 = v17;
  v214 = type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Tracklist.VerticalTextStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v209 = v13;
  v210 = sub_1001109D0(&qword_10119D128);
  v211 = sub_1001109D0(&qword_10119D130);
  sub_1001109D0(&qword_10119D138);
  v175 = v16;
  v176 = v15;
  type metadata accessor for Tracklist.HorizontalTextStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&unk_101184E90);
  v212 = type metadata accessor for ModifiedContent();
  v213 = sub_1001109D0(&qword_101199330);
  v204 = v15;
  v205 = v18;
  v206 = v16;
  v207 = v178;
  v208 = v17;
  v214 = type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  v117 = type metadata accessor for _ConditionalContent();
  v19 = type metadata accessor for Group();
  v120 = *(v19 - 8);
  __chkstk_darwin(v19);
  v119 = &v113 - v20;
  v116 = v19;
  v21 = type metadata accessor for ModifiedContent();
  v140 = *(v21 - 8);
  __chkstk_darwin(v21);
  v172 = &v113 - v22;
  v23 = type metadata accessor for ModifiedContent();
  v152 = *(v23 - 8);
  __chkstk_darwin(v23);
  v147 = &v113 - v24;
  v25 = type metadata accessor for ModifiedContent();
  v153 = *(v25 - 8);
  __chkstk_darwin(v25);
  v149 = &v113 - v26;
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v202 = WitnessTable;
  v203 = v28;
  v115 = swift_getWitnessTable();
  v201 = v115;
  v114 = swift_getWitnessTable();
  v199 = v114;
  v200 = &protocol witness table for _PaddingLayout;
  v142 = v21;
  v123 = swift_getWitnessTable();
  v197 = v123;
  v198 = &protocol witness table for _PaddingLayout;
  v155 = v23;
  v124 = swift_getWitnessTable();
  v195 = v124;
  v196 = &protocol witness table for _FlexFrameLayout;
  v29 = swift_getWitnessTable();
  v209 = v25;
  v210 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v126 = &v113 - v31;
  type metadata accessor for AccessibilityAttachmentModifier();
  v131 = OpaqueTypeMetadata2;
  v32 = type metadata accessor for ModifiedContent();
  v134 = *(v32 - 8);
  __chkstk_darwin(v32);
  v130 = &v113 - v33;
  v34 = type metadata accessor for ModifiedContent();
  v138 = *(v34 - 8);
  __chkstk_darwin(v34);
  v137 = &v113 - v35;
  v36 = _s17ContextMenuButtonVMa(255);
  v156 = v25;
  v209 = v25;
  v210 = v29;
  v125 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
  v121 = OpaqueTypeConformance2;
  v193 = OpaqueTypeConformance2;
  v194 = v38;
  v136 = v32;
  v122 = swift_getWitnessTable();
  v191 = v122;
  v154 = v38;
  v192 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_10068DDB4(&qword_101198C40, _s17ContextMenuButtonVMa);
  v145 = v34;
  v209 = v34;
  v210 = v36;
  v127 = v36;
  v128 = v40;
  v132 = v39;
  v211 = v39;
  v212 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v133 = *(v41 - 8);
  __chkstk_darwin(v41);
  v171 = &v113 - v42;
  v135 = v43;
  v44 = type metadata accessor for ModifiedContent();
  v141 = *(v44 - 8);
  __chkstk_darwin(v44);
  v139 = &v113 - v45;
  sub_1001109D0(&qword_1011879E8);
  v143 = v44;
  v46 = type metadata accessor for ModifiedContent();
  v148 = *(v46 - 8);
  __chkstk_darwin(v46);
  v144 = &v113 - v47;
  sub_1001109D0(&qword_101184D00);
  v151 = v46;
  v48 = type metadata accessor for ModifiedContent();
  v157 = *(v48 - 8);
  v158 = v48;
  __chkstk_darwin(v48);
  v146 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v150 = &v113 - v51;
  v52 = v175;
  v53 = v176;
  v179 = v176;
  v180 = v174;
  v181 = v175;
  v182 = v178;
  v183 = v173;
  v184 = v177;
  v54 = v119;
  Group<A>.init(content:)();
  static Edge.Set.trailing.getter();
  v55 = v116;
  View.padding(_:_:)();
  (*(v120 + 1))(v54, v55);
  static Edge.Set.vertical.getter();
  v56 = v52;
  v57 = *(v52 + 24);
  swift_unknownObjectRetain();
  v58 = v160;
  v120 = v57;
  (v57)(v53, v56);
  swift_unknownObjectRelease();
  v59 = type metadata accessor for ArtworkImage.Info(0);
  v119 = *(*(v59 - 8) + 48);
  (v119)(v58, 1, v59);
  sub_1000095E8(v58, &unk_10119F000);
  v60 = v118;
  sub_10056CABC(v118);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v161 + 8))(v60, v162);
  v61 = v147;
  v62 = v142;
  v63 = v172;
  View.padding(_:_:)();
  (*(v140 + 8))(v63, v62);
  swift_unknownObjectRetain();
  v64 = v163;
  v65 = v175;
  v66 = v176;
  v120();
  swift_unknownObjectRelease();
  (v119)(v64, 1, v59);
  sub_1000095E8(v64, &unk_10119F000);
  static Alignment.center.getter();
  v67 = v155;
  v68 = v149;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v152 + 8))(v61, v67);
  v69 = v164;
  static AccessibilityChildBehavior.combine.getter();
  v70 = v126;
  v71 = v156;
  View.accessibilityElement(children:)();
  (*(v165 + 8))(v69, v166);
  (*(v153 + 8))(v68, v71);
  v72 = v167;
  static AccessibilityTraits.isButton.getter();
  v74 = v130;
  v73 = v131;
  View.accessibilityAddTraits(_:)();
  (*(v168 + 8))(v72, v169);
  (*(v129 + 8))(v70, v73);
  v75 = AccessibilityIdentifier.trackListCell.unsafeMutableAddressor();
  v76 = *v75;
  v77 = v75[1];
  v78 = v75[2];
  v79 = v75[3];

  v80 = v136;
  v81 = v137;
  View.accessibilityIdentifier(_:)(v76, v77, v78, v79, v136, v122);

  v82 = (*(v134 + 8))(v74, v80);
  __chkstk_darwin(v82);
  v83 = v66;
  v84 = v65;
  v178 = swift_checkMetadataState();
  v85 = v145;
  v86 = v132;
  v87 = v128;
  View.accessibilityActions<A>(_:)();
  (*(v138 + 8))(v81, v85);
  sub_10010FC20(&unk_101181640);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100EBC6B0;
  v89 = v84;
  v90 = *(v84 + 48);
  swift_unknownObjectRetain();
  v91 = v90(v83, v84);
  v93 = v92;
  swift_unknownObjectRelease();
  *(v88 + 32) = v91;
  *(v88 + 40) = v93;
  v209 = v85;
  v210 = v178;
  v211 = v86;
  v212 = v87;
  v94 = swift_getOpaqueTypeConformance2();
  sub_100009838();
  v95 = v139;
  v96 = v135;
  v97 = v171;
  View.accessibilityInputLabels<A>(_:)();

  (*(v133 + 8))(v97, v96);
  static Animation.linear(duration:)();
  v98 = v89;
  v99 = *(v89 + 120);
  swift_unknownObjectRetain();
  LOBYTE(v88) = v99(v176, v98);
  swift_unknownObjectRelease();
  LOBYTE(v209) = v88 & 1;
  v189 = v94;
  v190 = v154;
  v100 = v143;
  v101 = swift_getWitnessTable();
  v102 = v144;
  View.animation<A>(_:value:)();

  (*(v141 + 8))(v95, v100);
  if (qword_10117FBD0 != -1)
  {
    swift_once();
  }

  v103 = sub_100020674(&qword_1011879E0, &qword_1011879E8);
  v187 = v101;
  v188 = v103;
  v104 = v151;
  v105 = swift_getWitnessTable();
  v106 = v146;
  View.font(_:)();
  (*(v148 + 8))(v102, v104);
  v107 = sub_100020674(&unk_1011914B0, &qword_101184D00);
  v185 = v105;
  v186 = v107;
  v108 = v158;
  v109 = swift_getWitnessTable();
  v110 = v150;
  sub_100663950(v106, v108, v109);
  v111 = *(v157 + 8);
  v111(v106, v108);
  sub_100663950(v110, v108, v109);
  return (v111)(v110, v108);
}

uint64_t sub_100678C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a1;
  v80 = a7;
  v12 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v12 - 8);
  v73 = v64 - v13;
  v14 = type metadata accessor for Tracklist.LeadingIcon(255);
  v89 = v14;
  v90 = sub_1001109D0(&qword_10119D128);
  v91 = sub_1001109D0(&qword_10119D130);
  sub_1001109D0(&qword_10119D138);
  type metadata accessor for Tracklist.VerticalTextStack();
  type metadata accessor for Tracklist.HorizontalTextStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&unk_101184E90);
  v92 = type metadata accessor for ModifiedContent();
  v93 = sub_1001109D0(&qword_101199330);
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v88 = a6;
  v15 = a6;
  v74 = a6;
  v94 = type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  v16 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v69 = v16;
  v68 = WitnessTable;
  v18 = type metadata accessor for HStack();
  v72 = *(v18 - 8);
  __chkstk_darwin(v18);
  v71 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v67 = v64 - v21;
  __chkstk_darwin(v22);
  v70 = v64 - v23;
  v89 = v14;
  v90 = sub_1001109D0(&qword_10119D110);
  v91 = sub_1001109D0(&qword_10119D118);
  v92 = sub_1001109D0(&qword_10119D120);
  v93 = &type metadata for Spacer;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v88 = v15;
  v94 = type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for TupleView();
  v25 = swift_getWitnessTable();
  v64[2] = v24;
  v64[1] = v25;
  v26 = type metadata accessor for VStack();
  v66 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v65 = v64 - v30;
  v79 = v18;
  v31 = type metadata accessor for _ConditionalContent();
  v76 = *(v31 - 8);
  v77 = v31;
  __chkstk_darwin(v31);
  v75 = v64 - v32;
  v81 = a2;
  v89 = a2;
  v90 = a3;
  v33 = a4;
  v91 = a4;
  v92 = a5;
  v34 = a5;
  v35 = v74;
  v93 = v74;
  type metadata accessor for Tracklist.Cell();
  v36 = v78;

  v37 = sub_1006796C0();

  v38 = v36;
  if (sub_100679A18())
  {
    v39 = static HorizontalAlignment.leading.getter();
    __chkstk_darwin(v39);
    v64[-8] = v81;
    v64[-7] = a3;
    v64[-6] = v33;
    v64[-5] = v34;
    v64[-4] = v35;
    v64[-3] = v36;
    LOBYTE(v64[-2]) = v37 & 1;
    VStack.init(alignment:spacing:content:)();
    v40 = swift_getWitnessTable();
    v41 = v65;
    sub_100663950(v28, v26, v40);
    v42 = *(v66 + 8);
    v42(v28, v26);
    sub_100663950(v41, v26, v40);
    swift_getWitnessTable();
    v43 = v75;
    sub_100653878(v28, v26);
    v42(v28, v26);
    v42(v41, v26);
  }

  else
  {
    v44 = v26;
    v66 = v34;
    v45 = *(v33 + 24);
    swift_unknownObjectRetain();
    v46 = v73;
    v45(v81, v33);
    swift_unknownObjectRelease();
    v47 = type metadata accessor for ArtworkImage.Info(0);
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
    sub_1000095E8(v46, &unk_10119F000);
    if (qword_10117FB28 != -1)
    {
      swift_once();
    }

    v49 = v38;
    v50 = v66;
    v51 = v81;
    if (byte_10119CDC0 == 1 || v48 != 1)
    {
      v52 = static VerticalAlignment.center.getter();
    }

    else
    {
      v52 = static VerticalAlignment.firstTextLineCenter.getter();
    }

    __chkstk_darwin(v52);
    v64[-8] = v51;
    v64[-7] = a3;
    v64[-6] = v33;
    v64[-5] = v50;
    v64[-4] = v35;
    v64[-3] = v49;
    LOBYTE(v64[-2]) = v37 & 1;
    v53 = v67;
    HStack.init(alignment:spacing:content:)();
    v54 = v79;
    v55 = swift_getWitnessTable();
    v56 = v70;
    sub_100663950(v53, v54, v55);
    v57 = *(v72 + 8);
    v57(v53, v54);
    v58 = v71;
    sub_100663950(v56, v54, v55);
    swift_getWitnessTable();
    v43 = v75;
    sub_100653970(v58, v44, v54);
    v57(v58, v54);
    v57(v56, v54);
  }

  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v82 = v59;
  v83 = v60;
  v61 = v77;
  v62 = swift_getWitnessTable();
  sub_100663950(v43, v61, v62);
  return (*(v76 + 8))(v43, v61);
}

uint64_t sub_1006796C0()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = &v27 - v4;
  v5 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = *(*v0 + 256);
  v15(v12);
  (*(v6 + 104))(v10, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v16 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v10, v5);
  v18 = (v17)(v14, v5);
  if (v16)
  {
    return 1;
  }

  v20 = v32;
  (v15)(v18);
  if ((*(v6 + 88))(v20, v5) == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v6 + 96))(v20, v5);
    v22 = v30;
    v21 = v31;
    v23 = v28;
    (*(v30 + 32))(v28, v20, v31);
    v24 = v29;
    (*(v22 + 104))(v29, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v21);
    v25 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v26 = *(v22 + 8);
    v26(v24, v21);
    v26(v23, v21);
    if (v25)
    {
      return 1;
    }
  }

  else
  {
    v17(v20, v5);
  }

  return 0;
}

uint64_t sub_100679A18()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10056CAE4(&v9 - v5);
  sub_10056CABC(v3);
  v7 = sub_10068D7BC(v6);
  (*(v1 + 8))(v3, v0);
  sub_1000095E8(v6, &unk_101184290);
  return v7 & 1;
}

uint64_t sub_100679B88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v84 = a2;
  v83 = a8;
  v85 = a5;
  v14 = type metadata accessor for Tracklist.VerticalTextStack();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v76 = &v61 - v15;
  v78 = v16;
  v82 = type metadata accessor for ModifiedContent();
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v80 = &v61 - v19;
  v71 = type metadata accessor for DynamicTypeSize();
  v70 = *(v71 - 1);
  __chkstk_darwin(v71);
  v62 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v63 = &v61 - v22;
  v107 = type metadata accessor for Tracklist.LeadingIcon(255);
  v108 = sub_1001109D0(&qword_10119D110);
  v109 = sub_1001109D0(&qword_10119D118);
  v110 = sub_1001109D0(&qword_10119D120);
  v111 = &type metadata for Spacer;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v105 = a6;
  v106 = a7;
  v112 = type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v23 = type metadata accessor for HStack();
  v66 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  v26 = type metadata accessor for ModifiedContent();
  v69 = *(v26 - 8);
  __chkstk_darwin(v26);
  v68 = &v61 - v27;
  v64 = v28;
  v74 = type metadata accessor for ModifiedContent();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v67 = &v61 - v31;
  __chkstk_darwin(v32);
  v86 = &v61 - v33;
  static VerticalAlignment.center.getter();
  v87 = a3;
  v88 = a4;
  v34 = v85;
  v89 = v85;
  v90 = a6;
  v91 = a7;
  v92 = a1;
  v93 = v84;
  v65 = v25;
  HStack.init(alignment:spacing:content:)();
  v75 = a3;
  v107 = a3;
  v108 = a4;
  v109 = v34;
  v110 = a6;
  v111 = a7;
  type metadata accessor for Tracklist.Cell();
  v35 = v63;
  sub_10056CABC(v63);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v70 + 8))(v35, v71);
  }

  else
  {
    v36 = v70;
    v37 = v62;
    v38 = v71;
    (*(v70 + 104))(v62, enum case for DynamicTypeSize.accessibility3(_:), v71);
    static DynamicTypeSize.< infix(_:_:)();
    v39 = *(v36 + 8);
    v39(v37, v38);
    v39(v35, v38);
  }

  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v41 = v68;
  v42 = v65;
  View.frame(width:height:alignment:)();
  (*(v66 + 8))(v42, v23);
  static Edge.Set.bottom.getter();
  if (qword_10117FBA0 != -1)
  {
    swift_once();
  }

  v100 = WitnessTable;
  v101 = &protocol witness table for _FrameLayout;
  v43 = v64;
  v44 = swift_getWitnessTable();
  v45 = v67;
  View.padding(_:_:)();
  (*(v69 + 8))(v41, v43);
  v98 = v44;
  v99 = &protocol witness table for _PaddingLayout;
  v46 = v74;
  v69 = swift_getWitnessTable();
  sub_100663950(v45, v46, v69);
  v47 = v72;
  v48 = *(v72 + 8);
  v70 = v72 + 8;
  v71 = v48;
  (v48)(v45, v46);
  swift_unknownObjectRetain();
  v49 = v76;
  sub_10067BAC8(v84 & 1, v76);
  static Edge.Set.leading.getter();
  v50 = v78;
  v51 = swift_getWitnessTable();
  v52 = v81;
  View.padding(_:_:)();
  (*(v77 + 8))(v49, v50);
  v96 = v51;
  v97 = &protocol witness table for _PaddingLayout;
  v53 = v82;
  v54 = swift_getWitnessTable();
  v55 = v80;
  sub_100663950(v52, v53, v54);
  v56 = v79;
  v57 = *(v79 + 8);
  v57(v52, v53);
  v58 = v73;
  (*(v47 + 16))(v73, v86, v46);
  v107 = v58;
  (*(v56 + 16))(v52, v55, v53);
  v108 = v52;
  v102 = v46;
  v103 = v53;
  v94 = v69;
  v95 = v54;
  sub_1006769F4(&v107, 2uLL, &v102);
  v57(v55, v53);
  v59 = v71;
  (v71)(v86, v46);
  v57(v52, v53);
  return v59(v58, v46);
}

uint64_t sub_10067A600@<X0>(_OWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a4;
  LODWORD(v135) = a2;
  v143 = a1;
  v129 = a8;
  *&v155 = a3;
  *(&v155 + 1) = a4;
  *&v156 = a5;
  *(&v156 + 1) = a6;
  *v157 = a7;
  v131 = type metadata accessor for Tracklist.TrailingIcons();
  v126 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = v109 - v15;
  v132 = type metadata accessor for Tracklist.LeadingNumber(0);
  v123 = *(v132 - 8);
  __chkstk_darwin(v132);
  v112 = (v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_10010FC20(&qword_10119D118);
  __chkstk_darwin(v125);
  v127 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v133 = v109 - v19;
  v121 = type metadata accessor for Tracklist.Artwork(0);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v111 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for ArtworkImage.Info(0);
  v138 = *(v134 - 8);
  __chkstk_darwin(v134);
  v110 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10010FC20(&qword_10119D110);
  __chkstk_darwin(v124);
  v137 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v140 = v109 - v24;
  v122 = type metadata accessor for Font.TextStyle();
  v117 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v26 - 8);
  v28 = v109 - v27;
  v29 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v29 - 8);
  v119 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v109 - v32;
  v34 = type metadata accessor for Tracklist.LeadingIcon(0);
  __chkstk_darwin(v34);
  v136 = v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v109 - v37;
  __chkstk_darwin(v39);
  v139 = v109 - v40;
  *&v155 = a3;
  *(&v155 + 1) = v10;
  v41 = a5;
  *&v156 = a5;
  *(&v156 + 1) = a6;
  *v157 = a7;
  v42 = type metadata accessor for Tracklist.Cell();
  v43 = v143;
  v113 = sub_10067B730(v42);
  v115 = v41[3];
  v44 = v115;
  v116 = v41 + 3;
  swift_unknownObjectRetain();
  v141 = a3;
  v44(a3, v41);
  swift_unknownObjectRelease();
  v45 = *(v138 + 48);
  v138 += 48;
  v114 = v45;
  LOBYTE(v44) = v45(v33, 1, v134) != 1;
  sub_1000095E8(v33, &unk_10119F000);
  v142 = v41;
  v46 = v41[12];
  swift_unknownObjectRetain();
  v109[1] = v41 + 12;
  v109[0] = v46;
  v46(a3, v41);
  swift_unknownObjectRelease();
  v47 = type metadata accessor for SocialProfile();
  LOBYTE(v10) = (*(*(v47 - 8) + 48))(v28, 1, v47) != 1;
  sub_1000095E8(v28, &qword_101186E00);
  v48 = v43[4];
  *(v38 + 24) = v43[5];
  *(v38 + 40) = v43[6];
  *(v38 + 49) = *(v43 + 105);
  *v38 = v113;
  v38[1] = v44;
  v38[2] = v10;
  v38[3] = v135;
  *(v38 + 8) = v48;
  v49 = v34;
  *&v155 = 0x4020000000000000;
  v50 = enum case for Font.TextStyle.largeTitle(_:);
  v51 = *(v117 + 104);
  v52 = v118;
  v53 = v122;
  v51(v118, enum case for Font.TextStyle.largeTitle(_:), v122);
  v54 = sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v155 = 0x4018000000000000;
  v51(v52, v50, v53);
  v118 = v54;
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v122 = v49;
  v55 = *(v49 + 44);
  *&v38[v55] = swift_getKeyPath();
  v56 = sub_10010FC20(&qword_10118A610);
  v57 = v119;
  swift_storeEnumTagMultiPayload();
  sub_10068DF34(v38, v139, type metadata accessor for Tracklist.LeadingIcon);
  swift_unknownObjectRetain();
  v115(v141, v142);
  swift_unknownObjectRelease();
  if (v114(v57, 1, v134) == 1)
  {
    sub_1000095E8(v57, &unk_10119F000);
    (*(v120 + 56))(v140, 1, 1, v121);
  }

  else
  {
    v58 = v110;
    sub_10068DF34(v57, v110, type metadata accessor for ArtworkImage.Info);
    v59 = v111;
    sub_10068DF9C(v58, v111, type metadata accessor for ArtworkImage.Info);
    v60 = v143;
    v61 = v121;
    swift_unknownObjectRetain();
    v62 = v141;
    v63 = v142;
    (v109[0])(v141, v142);
    swift_unknownObjectRelease();
    v64 = v63[11];
    swift_unknownObjectRetain();
    v65 = v64(v62, v63);
    v67 = v66;
    swift_unknownObjectRelease();
    sub_10068E244(v58, type metadata accessor for ArtworkImage.Info);
    v68 = *(v60 + 7);
    v69 = (v59 + v61[6]);
    *v69 = v65;
    v69[1] = v67;
    *(v59 + v61[7]) = v68;
    v70 = v61[8];
    *(v59 + v70) = swift_getKeyPath();
    sub_10010FC20(&qword_101194F38);
    swift_storeEnumTagMultiPayload();
    v71 = v61[9];
    *(v59 + v71) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v72 = v140;
    sub_10068DF34(v59, v140, type metadata accessor for Tracklist.Artwork);
    (*(v120 + 56))(v72, 0, 1, v61);
  }

  v73 = v135 & 1;
  v74 = v142;
  v75 = v142[4];
  swift_unknownObjectRetain();
  v76 = v75(v141, v74);
  v78 = v77;
  LODWORD(v74) = v77;
  swift_unknownObjectRelease();
  if (v74 <= 0xFD)
  {
    v79 = v142;
    v135 = v76;
    v80 = v73;
    v81 = v141;
    v138 = v56;
    v82 = v142[11];
    swift_unknownObjectRetain();
    v83 = v82(v81, v79);
    v85 = v84;
    swift_unknownObjectRelease();
    v86 = v79[15];
    swift_unknownObjectRetain();
    v87 = v81;
    v73 = v80;
    LOBYTE(v82) = v86(v87, v79);
    swift_unknownObjectRelease();
    v88 = v112;
    *v112 = v135;
    *(v88 + 8) = v78;
    *(v88 + 9) = v80;
    *(v88 + 16) = v83;
    *(v88 + 24) = v85;
    *(v88 + 32) = v82 & 1;
    *(v88 + 40) = 0;
    v89 = v132;
    *&v155 = 0x4044000000000000;
    ScaledMetric.init(wrappedValue:)();
    *&v155 = 0x4036000000000000;
    ScaledMetric.init(wrappedValue:)();
    v90 = *(v89 + 44);
    *(v88 + v90) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v91 = *(v89 + 48);
    *(v88 + v91) = swift_getKeyPath();
    sub_10010FC20(&unk_101184840);
    swift_storeEnumTagMultiPayload();
    sub_10068DF34(v88, v133, type metadata accessor for Tracklist.LeadingNumber);
  }

  v92 = v133;
  (*(v123 + 56))();
  v93 = v143;
  v94 = v142;
  v95 = v142[5];
  swift_unknownObjectRetain();
  v96 = v95(v141, v94);
  swift_unknownObjectRelease();
  if (v96)
  {
    v97 = v73;
  }

  else
  {
    v97 = 2;
  }

  LODWORD(v138) = v97;
  v98 = v93[5];
  v155 = v93[4];
  v156 = v98;
  *v157 = v93[6];
  *&v157[9] = *(v93 + 105);
  swift_unknownObjectRetain();

  v99 = v130;
  sub_10067B8DC(&v155, v130);
  v100 = v131;
  WitnessTable = swift_getWitnessTable();
  v102 = v128;
  sub_100663950(v99, v100, WitnessTable);
  v103 = v126;
  v104 = *(v126 + 8);
  v104(v99, v100);
  v105 = v136;
  sub_10068DF9C(v139, v136, type metadata accessor for Tracklist.LeadingIcon);
  v154[0] = v105;
  v106 = v137;
  sub_1000089F8(v140, v137, &qword_10119D110);
  v154[1] = v106;
  v107 = v127;
  sub_1000089F8(v92, v127, &qword_10119D118);
  v153 = v138;
  v154[2] = v107;
  v154[3] = &v153;
  v151 = 0;
  v152 = 1;
  v154[4] = &v151;
  (*(v103 + 16))(v99, v102, v100);
  v154[5] = v99;
  v150[0] = v122;
  v150[1] = v124;
  v150[2] = v125;
  v150[3] = sub_10010FC20(&qword_10119D120);
  v150[4] = &type metadata for Spacer;
  v150[5] = v100;
  v144 = sub_10068DDB4(&qword_10119D140, type metadata accessor for Tracklist.LeadingIcon);
  v145 = sub_10068E004();
  v146 = sub_10068E0B8();
  v147 = sub_10068E16C();
  v148 = &protocol witness table for Spacer;
  v149 = WitnessTable;
  sub_1006769F4(v154, 6uLL, v150);
  v104(v102, v100);
  sub_1000095E8(v92, &qword_10119D118);
  sub_1000095E8(v140, &qword_10119D110);
  sub_10068E244(v139, type metadata accessor for Tracklist.LeadingIcon);
  v104(v99, v100);
  sub_1000095E8(v107, &qword_10119D118);
  sub_1000095E8(v137, &qword_10119D110);
  return sub_10068E244(v136, type metadata accessor for Tracklist.LeadingIcon);
}

uint64_t sub_10067B730(uint64_t a1)
{
  v2 = type metadata accessor for MusicFavoriteStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;

  dispatch thunk of MusicLibrary.ItemState.favoriteStatus.getter();

  (*(v3 + 104))(v5, enum case for MusicFavoriteStatus.favorited(_:), v2);
  v9 = static MusicFavoriteStatus.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  v14 = *(a1 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v14) = v13(v14, v12);
  swift_unknownObjectRelease();
  if (v14)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10067B8DC@<X0>(_OWORD *a1@<X3>, uint64_t a2@<X8>)
{
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v4;
  *(a2 + 16) = sub_10060CECC();
  *(a2 + 24) = v5;
  *(a2 + 32) = sub_10060CE3C();
  *(a2 + 40) = v6;
  v7 = a1[1];
  *(a2 + 48) = *a1;
  *(a2 + 64) = v7;
  *(a2 + 80) = a1[2];
  *(a2 + 89) = *(a1 + 41);
  v8 = type metadata accessor for Tracklist.TrailingIcons();
  v9 = *(v8 + 72);
  *(a2 + v9) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 76);
  *(a2 + v10) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();
  if (qword_10117FBE8 != -1)
  {
    swift_once();
  }

  sub_100363C0C();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_10067BAC8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v4;
  *(a2 + 16) = a1;
  v5 = *(type metadata accessor for Tracklist.VerticalTextStack() + 40);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10067BB64@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v130 = a6;
  v131 = a7;
  v121 = a4;
  LODWORD(v120) = a2;
  v118 = a8;
  v155 = a3;
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v119 = type metadata accessor for Tracklist.TrailingIcons();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v116 = &v97 - v13;
  sub_1001109D0(&qword_10119D138);
  type metadata accessor for Tracklist.VerticalTextStack();
  type metadata accessor for Tracklist.HorizontalTextStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v107 = type metadata accessor for TupleView();
  v14 = type metadata accessor for Group();
  v109 = *(v14 - 8);
  __chkstk_darwin(v14);
  v108 = &v97 - v15;
  v110 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v112 = *(v17 - 8);
  __chkstk_darwin(v17);
  v122 = &v97 - v18;
  sub_1001109D0(&unk_101184E90);
  v113 = v17;
  v128 = type metadata accessor for ModifiedContent();
  v114 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = &v97 - v21;
  __chkstk_darwin(v22);
  v136 = &v97 - v23;
  v124 = sub_10010FC20(&qword_10119D128);
  __chkstk_darwin(v124);
  v126 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v135 = &v97 - v26;
  v106 = type metadata accessor for Font.TextStyle();
  v129 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v28 - 8);
  v30 = &v97 - v29;
  v31 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v31 - 8);
  v33 = &v97 - v32;
  v123 = type metadata accessor for Tracklist.LeadingIcon(0);
  __chkstk_darwin(v123);
  v125 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v97 - v36;
  __chkstk_darwin(v38);
  v134 = &v97 - v39;
  v155 = a3;
  v156 = v121;
  v157 = a5;
  v158 = v130;
  v159 = v131;
  v97 = type metadata accessor for Tracklist.Cell();
  LODWORD(v104) = sub_10067B730(v97);
  v40 = *(a5 + 24);
  swift_unknownObjectRetain();
  v133 = a3;
  v40(a3, a5);
  swift_unknownObjectRelease();
  v41 = type metadata accessor for ArtworkImage.Info(0);
  LOBYTE(v40) = (*(*(v41 - 8) + 48))(v33, 1, v41) != 1;
  sub_1000095E8(v33, &unk_10119F000);
  v132 = a5;
  v42 = *(a5 + 96);
  swift_unknownObjectRetain();
  v42(a3, a5);
  swift_unknownObjectRelease();
  v43 = type metadata accessor for SocialProfile();
  LOBYTE(v17) = (*(*(v43 - 8) + 48))(v30, 1, v43) != 1;
  sub_1000095E8(v30, &qword_101186E00);
  v44 = *(a1 + 64);
  *(v37 + 24) = *(a1 + 80);
  *(v37 + 40) = *(a1 + 96);
  *(v37 + 49) = *(a1 + 105);
  *v37 = v104;
  v37[1] = v40;
  v37[2] = v17;
  v99 = v120 & 1;
  v37[3] = v120;
  *(v37 + 8) = v44;
  v45 = v123;
  v155 = 0x4020000000000000;
  v46 = enum case for Font.TextStyle.largeTitle(_:);
  v47 = *(v129 + 104);
  v129 += 104;
  v49 = v105;
  v48 = v106;
  v47(v105, enum case for Font.TextStyle.largeTitle(_:), v106);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v155 = 0x4018000000000000;
  v47(v49, v46, v48);
  v50 = v132;
  v51 = v133;
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v52 = *(v45 + 44);
  v53 = v97;
  *&v37[v52] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v54 = v37;
  v55 = v121;
  sub_10068DF34(v54, v134, type metadata accessor for Tracklist.LeadingIcon);
  v56 = v135;
  sub_10067CB9C(a1, v120, v51, v55, v50, v130, v131, v135);
  LODWORD(v45) = *(a1 + 16);
  v57 = sub_10067D68C(v53);
  v58 = v56 + *(v124 + 36);
  v98 = v45;
  *v58 = v45;
  *(v58 + 1) = 1;
  *(v58 + 8) = v57;
  *(v58 + 16) = v59 & 1;
  v129 = a1;
  v60 = v50[5];
  swift_unknownObjectRetain();
  LOBYTE(v56) = v60(v51, v50);
  v61 = swift_unknownObjectRelease();
  if (v56)
  {
    v120 = 0;
    v104 = 0;
    v105 = 0;
    v102 = 0;
    v103 = 0;
    v100 = 0;
    v101 = 0;
    LODWORD(v106) = 1;
  }

  else
  {
    sub_10067D8B0(v53);
    static Alignment.center.getter();
    v61 = _FrameLayout.init(width:height:alignment:)();
    LODWORD(v106) = 0;
    v120 = v172;
    v104 = v176;
    v105 = v174;
    LOBYTE(v144) = 1;
    LOBYTE(v184[0]) = v173;
    LOBYTE(v178) = v175;
    v100 = 1;
    v101 = v173;
    v102 = v175;
    v103 = v177;
    LOBYTE(v155) = 0;
  }

  __chkstk_darwin(v61);
  v62 = v133;
  *(&v97 - 8) = v133;
  *(&v97 - 7) = v55;
  v63 = v132;
  v65 = v130;
  v64 = v131;
  *(&v97 - 6) = v132;
  *(&v97 - 5) = v65;
  v66 = v129;
  *(&v97 - 4) = v64;
  *(&v97 - 3) = v66;
  *(&v97 - 16) = v99;
  WitnessTable = swift_getWitnessTable();
  v68 = v108;
  Group<A>.init(content:)();
  v69 = sub_10067E828(v53);
  v71 = v70;
  v171 = WitnessTable;
  v72 = v110;
  v73 = swift_getWitnessTable();
  LOWORD(v155) = v98;
  v156 = v69;
  LOBYTE(v157) = v71 & 1;
  View.modifier<A>(_:)();
  (*(v109 + 8))(v68, v72);
  v74 = *(v63 + 120);
  swift_unknownObjectRetain();
  v75 = v74(v62, v63);
  swift_unknownObjectRelease();
  v76 = v128;
  if (v75)
  {
    if (qword_10117FBE0 != -1)
    {
      swift_once();
    }
  }

  v77 = sub_10068E2BC();
  v164[8] = v73;
  v164[9] = v77;
  v78 = v113;
  v79 = swift_getWitnessTable();
  v80 = v111;
  v81 = v122;
  View.foregroundColor(_:)();

  (*(v112 + 8))(v81, v78);
  v82 = sub_100020674(&unk_1011914C0, &unk_101184E90);
  v164[6] = v79;
  v164[7] = v82;
  v131 = swift_getWitnessTable();
  sub_100663950(v80, v76, v131);
  v83 = v114;
  v84 = *(v114 + 8);
  v130 = v114 + 8;
  v122 = v84;
  (v84)(v80, v76);
  if (qword_10117FBC0 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v111 = v178;
  v112 = v180;
  v121 = v182;
  v113 = v183;
  v170 = 1;
  v168 = v179;
  v166 = v181;
  v85 = *(v129 + 80);
  v184[0] = *(v129 + 64);
  v184[1] = v85;
  *v185 = *(v129 + 96);
  *&v185[9] = *(v129 + 105);
  swift_unknownObjectRetain();

  v86 = v117;
  sub_10067B8DC(v184, v117);
  v87 = v119;
  v132 = swift_getWitnessTable();
  v88 = v116;
  sub_100663950(v86, v87, v132);
  v89 = v115;
  v133 = *(v115 + 8);
  v133(v86, v87);
  v90 = v125;
  sub_10068DF9C(v134, v125, type metadata accessor for Tracklist.LeadingIcon);
  v164[0] = v90;
  v91 = v126;
  sub_1000089F8(v135, v126, &qword_10119D128);
  v155 = 0;
  v156 = v100;
  v157 = v120;
  v158 = v101;
  v159 = v105;
  v160 = v102;
  v161 = v104;
  v162 = v103;
  v163 = v106;
  v164[1] = v91;
  v164[2] = &v155;
  v93 = v127;
  v92 = v128;
  (*(v83 + 16))(v127, v136, v128);
  v144 = 0;
  v145 = v170;
  *v146 = *v169;
  *&v146[3] = *&v169[3];
  v147 = v111;
  v148 = v168;
  *v149 = *v167;
  *&v149[3] = *&v167[3];
  v150 = v112;
  v151 = v166;
  *v152 = *v165;
  *&v152[3] = *&v165[3];
  v153 = v121;
  v154 = v113;
  v164[3] = v93;
  v164[4] = &v144;
  (*(v89 + 16))(v86, v88, v87);
  v164[5] = v86;
  v143[0] = v123;
  v143[1] = v124;
  v143[2] = sub_10010FC20(&qword_10119D130);
  v143[3] = v92;
  v143[4] = sub_10010FC20(&qword_101199330);
  v143[5] = v87;
  v137 = sub_10068DDB4(&qword_10119D140, type metadata accessor for Tracklist.LeadingIcon);
  v138 = sub_10068E310();
  v139 = sub_10068E44C();
  v140 = v131;
  v141 = sub_100617DA4();
  v142 = v132;
  sub_1006769F4(v164, 6uLL, v143);
  v94 = v133;
  v133(v88, v87);
  v95 = v122;
  (v122)(v136, v92);
  sub_1000095E8(v135, &qword_10119D128);
  sub_10068E244(v134, type metadata accessor for Tracklist.LeadingIcon);
  v94(v86, v87);
  v95(v127, v92);
  sub_1000095E8(v126, &qword_10119D128);
  return sub_10068E244(v125, type metadata accessor for Tracklist.LeadingIcon);
}

uint64_t sub_10067CB9C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v84 = a2;
  v98 = a8;
  v14 = type metadata accessor for Tracklist.LeadingNumber(0);
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v86 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_10010FC20(&qword_10119D1C8);
  v93 = *(v16 - 8);
  v94 = v16;
  __chkstk_darwin(v16);
  v85 = &v83[-v17];
  v18 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v18 - 8);
  v89 = &v83[-v19];
  v88 = type metadata accessor for ArtworkImage.Info(0);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v99 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10010FC20(&qword_10119D1D0);
  __chkstk_darwin(v21 - 8);
  v97 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v96 = &v83[-v24];
  v25 = sub_10010FC20(&qword_10119D118);
  __chkstk_darwin(v25 - 8);
  v95 = &v83[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v90 = &v83[-v28];
  __chkstk_darwin(v29);
  v91 = &v83[-v30];
  __chkstk_darwin(v31);
  v33 = &v83[-v32];
  v103 = a3;
  v104 = a4;
  v105 = a5;
  v106 = a6;
  v107 = a7;
  type metadata accessor for Tracklist.Cell();
  v34 = a5[4];
  swift_unknownObjectRetain();
  v100 = a3;
  v35 = v34(a3, a5);
  v37 = v36;
  LODWORD(a3) = v36;
  swift_unknownObjectRelease();
  v92 = v33;
  if (a3 <= 0xFD)
  {
    v103 = v35;
    LOBYTE(v104) = v37;
    sub_10067D4AC(&v103, v84 & 1, a1, v100, a5, v33);
    v38 = *(v101 + 56);
    v38(v33, 0, 1, v102);
  }

  else
  {
    v38 = *(v101 + 56);
    v38(v33, 1, 1, v102);
  }

  v39 = a5[3];
  swift_unknownObjectRetain();
  v40 = v89;
  v39(v100, a5);
  swift_unknownObjectRelease();
  v41 = (*(v87 + 48))(v40, 1, v88);
  v42 = v99;
  if (v41 == 1)
  {
    sub_1000095E8(v40, &unk_10119F000);
    v43 = 1;
    v45 = v101;
    v44 = v102;
    v46 = v96;
    v47 = v94;
    v48 = v92;
    v49 = v91;
  }

  else
  {
    sub_10068DF34(v40, v99, type metadata accessor for ArtworkImage.Info);
    v50 = v85;
    sub_10068DF9C(v42, v85, type metadata accessor for ArtworkImage.Info);
    v51 = a5[12];
    v52 = type metadata accessor for Tracklist.Artwork(0);
    swift_unknownObjectRetain();
    v53 = v100;
    v51(v100, a5);
    swift_unknownObjectRelease();
    v54 = a5[11];
    swift_unknownObjectRetain();
    v55 = v53;
    v56 = v50;
    v57 = v54(v55, a5);
    v59 = v58;
    swift_unknownObjectRelease();
    v60 = *(a1 + 56);
    v61 = &v50[v52[6]];
    *v61 = v57;
    v61[1] = v59;
    *&v50[v52[7]] = v60;
    v62 = v52[8];
    *&v50[v62] = swift_getKeyPath();
    sub_10010FC20(&qword_101194F38);
    swift_storeEnumTagMultiPayload();
    v63 = v52[9];
    *&v50[v63] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610);
    swift_storeEnumTagMultiPayload();

    v64 = static Edge.Set.leading.getter();
    v49 = v91;
    if (qword_10117FB98 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    sub_10068E244(v99, type metadata accessor for ArtworkImage.Info);
    v47 = v94;
    v73 = v56 + *(v94 + 36);
    *v73 = v64;
    *(v73 + 8) = v66;
    *(v73 + 16) = v68;
    *(v73 + 24) = v70;
    *(v73 + 32) = v72;
    *(v73 + 40) = 0;
    v46 = v96;
    sub_10003D17C(v56, v96, &qword_10119D1C8);
    v43 = 0;
    v45 = v101;
    v44 = v102;
    v48 = v92;
  }

  (*(v93 + 56))(v46, v43, 1, v47);
  v74 = v90;
  sub_1000089F8(v48, v90, &qword_10119D118);
  if ((*(v45 + 48))(v74, 1, v44) == 1)
  {
    sub_1000095E8(v74, &qword_10119D118);
    v75 = 1;
  }

  else
  {
    v76 = v74;
    v77 = v86;
    sub_10068DF34(v76, v86, type metadata accessor for Tracklist.LeadingNumber);
    sub_10068DF34(v77, v49, type metadata accessor for Tracklist.LeadingNumber);
    v75 = 0;
  }

  v38(v49, v75, 1, v44);
  v78 = v97;
  sub_1000089F8(v46, v97, &qword_10119D1D0);
  v79 = v95;
  sub_1000089F8(v49, v95, &qword_10119D118);
  v80 = v98;
  sub_1000089F8(v78, v98, &qword_10119D1D0);
  v81 = sub_10010FC20(qword_10119D1D8);
  sub_1000089F8(v79, v80 + *(v81 + 48), &qword_10119D118);
  sub_1000095E8(v49, &qword_10119D118);
  sub_1000095E8(v46, &qword_10119D1D0);
  sub_1000095E8(v48, &qword_10119D118);
  sub_1000095E8(v79, &qword_10119D118);
  return sub_1000095E8(v78, &qword_10119D1D0);
}

uint64_t sub_10067D4AC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = *a1;
  v10 = *(a1 + 8);
  type metadata accessor for Tracklist.Cell();
  v11 = *(a5 + 88);
  swift_unknownObjectRetain();
  v12 = v11(a4, a5);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = *(a5 + 120);
  swift_unknownObjectRetain();
  LOBYTE(a5) = v15(a4, a5);
  swift_unknownObjectRelease();
  v16 = *(a3 + 56);
  *a6 = v21;
  *(a6 + 8) = v10;
  *(a6 + 9) = a2;
  *(a6 + 16) = v12;
  *(a6 + 24) = v14;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = v16;
  v17 = type metadata accessor for Tracklist.LeadingNumber(0);
  sub_100363C0C();

  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  v18 = *(v17 + 44);
  *(a6 + v18) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v19 = *(v17 + 48);
  *(a6 + v19) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10067D68C(uint64_t a1)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  if (sub_10067EA04(a1) && (*(v1 + 16) & 1) == 0)
  {
    if (qword_10117FC10 != -1)
    {
      swift_once();
    }

    v11 = *&qword_1012193B8;
    sub_10056CABC(v9);
    if (qword_10117FB28 != -1)
    {
      swift_once();
    }

    if (byte_10119CDC0)
    {
      (*(v4 + 8))(v9, v3);
      v12 = 48.0;
    }

    else
    {
      (*(v4 + 104))(v6, enum case for DynamicTypeSize.accessibility3(_:), v3);
      v13 = static DynamicTypeSize.< infix(_:_:)();
      v14 = *(v4 + 8);
      v14(v6, v3);
      v14(v9, v3);
      v12 = 72.0;
      if (v13)
      {
        v12 = 48.0;
      }
    }

    *&result = v11 + v12;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

double sub_10067D8B0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = *(a1 + 32);
  v6 = v5[4];
  v7 = *(a1 + 16);
  swift_unknownObjectRetain();
  v6(v7, v5);
  v9 = v8;
  swift_unknownObjectRelease();
  result = 0.0;
  if (v9 >= -2)
  {
    v11 = v5[5];
    swift_unknownObjectRetain();
    v12 = v11(v7, v5);
    swift_unknownObjectRelease();
    if (v12)
    {
      if (qword_10117FB70 != -1)
      {
        swift_once();
      }

      return *&qword_101219308;
    }

    else
    {
      v13 = v5[3];
      swift_unknownObjectRetain();
      v13(v7, v5);
      swift_unknownObjectRelease();
      v14 = type metadata accessor for ArtworkImage.Info(0);
      v15 = (*(*(v14 - 8) + 48))(v4, 1, v14);
      sub_1000095E8(v4, &unk_10119F000);
      result = 12.0;
      if (v15 == 1)
      {
        if (qword_10117FBB0 != -1)
        {
          swift_once();
        }

        return *&qword_101219358;
      }
    }
  }

  return result;
}

uint64_t sub_10067DAB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v42 = a1;
  v55 = a7;
  v46 = type metadata accessor for Tracklist.VerticalTextStack();
  v47 = type metadata accessor for Tracklist.HorizontalTextStack();
  v51 = type metadata accessor for _ConditionalContent();
  v12 = type metadata accessor for Group();
  v52 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v35 - v13;
  v41 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v54 = &v35 - v19;
  v59 = a2;
  v48 = a3;
  v60 = a3;
  v61 = a4;
  v49 = a5;
  v62 = a5;
  v63 = a6;
  v50 = a6;
  v20 = type metadata accessor for Tracklist.Cell();
  v21 = *(a4 + 40);
  swift_unknownObjectRetain();
  LOBYTE(a5) = v21(a2, a4);
  v22 = swift_unknownObjectRelease();
  if (a5)
  {
    sub_10067D8B0(v20);
    static Alignment.center.getter();
    v22 = _FrameLayout.init(width:height:alignment:)();
    v45 = v68[7];
    v44 = v70;
    v43 = v72;
    v39 = v73;
    LOBYTE(v59) = 1;
    LOBYTE(v68[0]) = v69;
    LOBYTE(v58[0]) = v71;
    v38 = 1;
    v37 = v69;
    v36 = v71;
    v23 = v42 & 1;
  }

  else
  {
    v38 = 0;
    v45 = 0;
    v37 = 0;
    v44 = 0;
    v36 = 0;
    v43 = 0;
    v39 = 0;
    v23 = 2;
  }

  __chkstk_darwin(v22);
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v68[5] = WitnessTable;
  v68[6] = v25;
  v26 = swift_getWitnessTable();
  v27 = v40;
  Group<A>.init(content:)();
  static Alignment.center.getter();
  v68[4] = v26;
  v33 = v41;
  v34 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v52 + 8))(v27, v33);
  v68[2] = v34;
  v68[3] = &protocol witness table for _FlexFrameLayout;
  v28 = swift_getWitnessTable();
  v29 = v54;
  sub_100663950(v17, v15, v28);
  v30 = v53;
  v31 = *(v53 + 8);
  v31(v17, v15);
  v59 = v23;
  v60 = 0;
  v61 = v38;
  v62 = v45;
  v63 = v37;
  v64 = v44;
  v65 = v36;
  v66 = v43;
  v67 = v39;
  v68[0] = &v59;
  (*(v30 + 16))(v17, v29, v15);
  v68[1] = v17;
  v58[0] = sub_10010FC20(&qword_10119D138);
  v58[1] = v15;
  v56 = sub_10068E504();
  v57 = v28;
  sub_1006769F4(v68, 2uLL, v58);
  v31(v29, v15);
  return (v31)(v17, v15);
}

uint64_t sub_10067E128@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v50 = a6;
  v54 = a4;
  v52 = a2;
  v58 = a8;
  v11 = type metadata accessor for Tracklist.HorizontalTextStack();
  v49 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v45 - v14;
  v15 = type metadata accessor for Tracklist.VerticalTextStack();
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v45 = &v45 - v19;
  v20 = type metadata accessor for DynamicTypeSize();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v24 - 8);
  v26 = &v45 - v25;
  v27 = type metadata accessor for _ConditionalContent();
  v56 = *(v27 - 8);
  v57 = v27;
  __chkstk_darwin(v27);
  v55 = &v45 - v28;
  v29 = *(a1 + 96);
  *&v61 = a3;
  *(&v61 + 1) = v54;
  v53 = a3;
  v54 = a5;
  *&v62 = a5;
  *(&v62 + 1) = v50;
  *&v63[0] = v51;
  type metadata accessor for Tracklist.Cell();
  sub_10056CAE4(v26);
  sub_10056CABC(v23);
  LOBYTE(a3) = sub_10068D124(v26, v23, v29);
  (*(v21 + 8))(v23, v20);
  sub_1000095E8(v26, &unk_101184290);
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_10067BAC8(v52 & 1, v17);
    WitnessTable = swift_getWitnessTable();
    v31 = v45;
    sub_100663950(v17, v15, WitnessTable);
    v32 = *(v46 + 8);
    v32(v17, v15);
    sub_100663950(v31, v15, WitnessTable);
    swift_getWitnessTable();
    v33 = v55;
    sub_100653878(v17, v15);
    v32(v17, v15);
    v34 = v31;
    v35 = v15;
  }

  else
  {
    v36 = *(a1 + 80);
    v61 = *(a1 + 64);
    v62 = v36;
    v63[0] = *(a1 + 96);
    *(v63 + 9) = *(a1 + 105);
    swift_unknownObjectRetain();
    v37 = v48;
    sub_10067E764(v52 & 1, &v61, v48);
    v38 = swift_getWitnessTable();
    v39 = v47;
    sub_100663950(v37, v11, v38);
    v32 = *(v49 + 8);
    v32(v37, v11);
    sub_100663950(v39, v11, v38);
    swift_getWitnessTable();
    v33 = v55;
    sub_100653970(v37, v15, v11);
    v32(v37, v11);
    v34 = v39;
    v35 = v11;
  }

  v32(v34, v35);
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v59 = v40;
  v60 = v41;
  v42 = v57;
  v43 = swift_getWitnessTable();
  sub_100663950(v33, v42, v43);
  return (*(v56 + 8))(v33, v42);
}

uint64_t sub_10067E764@<X0>(char a1@<W1>, _OWORD *a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v6;
  *(a3 + 16) = a1;
  v7 = a2[1];
  *(a3 + 24) = *a2;
  *(a3 + 40) = v7;
  *(a3 + 56) = a2[2];
  *(a3 + 65) = *(a2 + 41);
  v8 = *(type metadata accessor for Tracklist.HorizontalTextStack() + 44);
  *(a3 + v8) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10067E828(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = *(a1 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v3(v4, v2);
  swift_unknownObjectRelease();
  if ((v2 & 1) != 0 && (*(v1 + 16) & 1) == 0)
  {
    if (qword_10117FC18 != -1)
    {
      swift_once();
    }

    return qword_1012193C0;
  }

  else if (sub_100679A18())
  {
    return *(v1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067E910@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for Tracklist.Cell();
  v6 = *(a2 + 104);
  swift_unknownObjectRetain();
  v7 = v6(a1, a2);
  v9 = v8;
  swift_unknownObjectRelease();
  *a3 = v7;
  a3[1] = v9;
  _s17ContextMenuButtonVMa(0);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

BOOL sub_10067EA04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = *(a1 + 16);
  swift_unknownObjectRetain();
  v2(v3, v1);
  LODWORD(v1) = v4;
  swift_unknownObjectRelease();
  return v1 < -2;
}

uint64_t sub_10067EA78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10119D650);
  __chkstk_darwin(v4);
  v6 = v72 - v5;
  v82 = type metadata accessor for DynamicTypeSize();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v72 - v9;
  __chkstk_darwin(v10);
  v84 = v72 - v11;
  v12 = sub_10010FC20(&qword_10119D658);
  __chkstk_darwin(v12 - 8);
  v14 = v72 - v13;
  v15 = sub_10010FC20(&qword_10119D660);
  __chkstk_darwin(v15);
  v17 = v72 - v16;
  v18 = sub_10010FC20(&qword_10119D668);
  __chkstk_darwin(v18);
  v87 = v72 - v19;
  v85 = sub_10010FC20(&qword_10119D670);
  __chkstk_darwin(v85);
  v86 = v72 - v20;
  v21 = sub_10010FC20(&qword_10119D678);
  __chkstk_darwin(v21);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = *v2;
  if (v26 == 2)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v27 = v91;
    v28 = BYTE8(v91);
    v29 = v92;
    v30 = BYTE8(v92);
    v90 = 1;
    v89 = BYTE8(v91);
    v88 = BYTE8(v92);
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 2) = v27;
    v6[24] = v28;
    *(v6 + 4) = v29;
    v6[40] = v30;
    *(v6 + 3) = v93;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330);
    sub_10068F5F4();
    sub_100617DA4();
    return _ConditionalContent<>.init(storage:)();
  }

  v76 = v72 - v25;
  v78 = v21;
  v79 = v4;
  sub_10067F3C4(v26 & 1, v14);
  v32 = v2[3];
  if (qword_10117FB40 != -1)
  {
    swift_once();
  }

  v83 = a1;
  v33 = *&qword_1012192D8;
  if (v32 >= *&qword_1012192D8 && qword_10117FB28 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v14, v17, &qword_10119D658);
  v34 = &v17[*(v15 + 36)];
  v35 = v92;
  *v34 = v91;
  *(v34 + 1) = v35;
  *(v34 + 2) = v93;
  v36 = static Edge.Set.leading.getter();
  if (v32 >= v33 && qword_10117FB28 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v17;
  v46 = v87;
  sub_10003D17C(v45, v87, &qword_10119D660);
  v47 = v46 + *(v18 + 36);
  *v47 = v36;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  v48 = static Edge.Set.bottom.getter();
  v49 = v48;
  v50 = v78;
  if (*(v2 + 2) == 1)
  {
    v75 = v48;
    type metadata accessor for Tracklist.LeadingIcon(0);
    sub_10056CABC(v84);
    if (qword_10117FB28 == -1)
    {
      if (byte_10119CDC0)
      {
LABEL_14:
        v51 = *(v81 + 8);
        v52 = v82;
        v51(v84, v82);
        v53 = v80;
        sub_10056CABC(v80);
        v51(v53, v52);
LABEL_17:
        v49 = v75;
        goto LABEL_18;
      }
    }

    else
    {
      swift_once();
      if (byte_10119CDC0)
      {
        goto LABEL_14;
      }
    }

    v74 = enum case for DynamicTypeSize.accessibility3(_:);
    v54 = v81;
    v73 = *(v81 + 104);
    v55 = v77;
    v56 = v82;
    v73(v77);
    v57 = v84;
    v72[3] = static DynamicTypeSize.< infix(_:_:)();
    v58 = *(v54 + 8);
    v58(v55, v56);
    v58(v57, v56);
    v59 = v80;
    sub_10056CABC(v80);
    (v73)(v55, v74, v56);
    v50 = v78;
    static DynamicTypeSize.< infix(_:_:)();
    v58(v55, v56);
    v58(v59, v56);
    goto LABEL_17;
  }

LABEL_18:
  EdgeInsets.init(_all:)();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v86;
  sub_10003D17C(v87, v86, &qword_10119D668);
  v69 = v68 + *(v85 + 36);
  *v69 = v49;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  if (*(v2 + 3))
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.5;
  }

  sub_10003D17C(v68, v23, &qword_10119D670);
  *&v23[*(v50 + 36)] = v70;
  v71 = v76;
  sub_10003D17C(v23, v76, &qword_10119D678);
  sub_1000089F8(v71, v6, &qword_10119D678);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_101199330);
  sub_10068F5F4();
  sub_100617DA4();
  _ConditionalContent<>.init(storage:)();
  return sub_1000095E8(v71, &qword_10119D678);
}

uint64_t sub_10067F3C4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = sub_10010FC20(&qword_10119D6E8);
  __chkstk_darwin(v43);
  v4 = &v39 - v3;
  v5 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v41 = sub_10010FC20(&qword_10119D6D0);
  __chkstk_darwin(v41);
  v9 = &v39 - v8;
  v42 = sub_10010FC20(&qword_10119D6C0);
  __chkstk_darwin(v42);
  v11 = &v39 - v10;
  if (a1)
  {
    v40 = &v39 - v10;
    v12 = Image.init(systemName:)();
    type metadata accessor for Tracklist.LeadingIcon(0);
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.bold.getter();
    v13 = type metadata accessor for Font.Design();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = static Font.system(size:weight:design:)();
    sub_1000095E8(v7, &qword_101188610);
    KeyPath = swift_getKeyPath();
    if (qword_10117FB50 != -1)
    {
      v37 = KeyPath;
      swift_once();
      KeyPath = v37;
    }

    v45 = v12;
    v46 = KeyPath;
    v47 = v14;
    v48 = qword_1012192E8;

    v16 = AccessibilityString.popularBadgeLabel.unsafeMutableAddressor();
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_10010FC20(&qword_10119D6E0);
    v20 = sub_10068FAA4();
    View.accessibilityLabel(_:)(v17, v18, v19, v20);

    v21 = AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor();
    v11 = v40;
  }

  else
  {
    v40 = v4;
    v22 = Image.init(systemName:)();
    type metadata accessor for Tracklist.LeadingIcon(0);
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.bold.getter();
    v23 = type metadata accessor for Font.Design();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = static Font.system(size:weight:design:)();
    sub_1000095E8(v7, &qword_101188610);
    v25 = swift_getKeyPath();
    if (qword_10117FB48 != -1)
    {
      v38 = v25;
      swift_once();
      v25 = v38;
    }

    v45 = v22;
    v46 = v25;
    v47 = v24;
    v48 = qword_1012192E0;

    v26 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
    v27 = *v26;
    v28 = v26[1];

    v29 = sub_10010FC20(&qword_10119D6E0);
    v30 = sub_10068FAA4();
    View.accessibilityLabel(_:)(v27, v28, v29, v30);

    v21 = AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor();
    v4 = v40;
  }

  v31 = *v21;
  v32 = v21[1];
  v33 = v21[2];
  v34 = v21[3];
  v35 = sub_10068F9E8();

  View.accessibilityIdentifier(_:)(v31, v32, v33, v34, v41, v35);

  sub_1000095E8(v9, &qword_10119D6D0);
  sub_1000089F8(v11, v4, &qword_10119D6C0);
  swift_storeEnumTagMultiPayload();
  sub_10068F92C();
  _ConditionalContent<>.init(storage:)();
  return sub_1000095E8(v11, &qword_10119D6C0);
}

uint64_t sub_10067F99C@<X0>(uint64_t a1@<X8>)
{
  v215 = a1;
  v213 = sub_10010FC20(&qword_10119D6F8);
  __chkstk_darwin(v213);
  v214 = &v152 - v2;
  v3 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v3 - 8);
  v159 = &v152 - v4;
  v165 = sub_10010FC20(&qword_10119D700);
  v161 = *(v165 - 8);
  __chkstk_darwin(v165);
  v160 = &v152 - v5;
  v167 = sub_10010FC20(&qword_10119D708);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v162 = &v152 - v6;
  v164 = sub_10010FC20(&qword_10119D710);
  __chkstk_darwin(v164);
  v163 = &v152 - v7;
  v168 = sub_10010FC20(&qword_10119D718);
  __chkstk_darwin(v168);
  v172 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v171 = &v152 - v10;
  v158 = sub_10010FC20(&qword_10119D720);
  __chkstk_darwin(v158);
  v170 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v169 = &v152 - v13;
  v212 = sub_10010FC20(&qword_10119D728);
  __chkstk_darwin(v212);
  v210 = (&v152 - v14);
  v223 = type metadata accessor for SocialProfile();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v209 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_10119D730);
  __chkstk_darwin(v16 - 8);
  v211 = &v152 - v17;
  v207 = type metadata accessor for AccessibilityTraits();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for AccessibilityChildBehavior();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for WaveformState();
  v198 = *(v200 - 8);
  __chkstk_darwin(v200);
  v194 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_10010FC20(&qword_101198E68);
  __chkstk_darwin(v190);
  v193 = &v152 - v21;
  v22 = sub_10010FC20(&qword_101188100);
  __chkstk_darwin(v22 - 8);
  v177 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v183 = &v152 - v25;
  v217 = type metadata accessor for ArtworkImage.ReusePolicy();
  v224 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10010FC20(&unk_1011A1400);
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v220 = &v152 - v27;
  v173 = sub_10010FC20(&qword_101186168);
  __chkstk_darwin(v173);
  v221 = &v152 - v28;
  v182 = sub_10010FC20(&qword_10119D738);
  __chkstk_darwin(v182);
  v176 = &v152 - v29;
  v186 = sub_10010FC20(&qword_10119D740);
  v184 = *(v186 - 8);
  __chkstk_darwin(v186);
  v181 = &v152 - v30;
  v189 = sub_10010FC20(&qword_10119D748);
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v185 = &v152 - v31;
  v192 = sub_10010FC20(&qword_10119D750);
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v188 = &v152 - v32;
  v195 = sub_10010FC20(&qword_10119D758);
  __chkstk_darwin(v195);
  v196 = &v152 - v33;
  v197 = sub_10010FC20(&qword_10119D760);
  __chkstk_darwin(v197);
  v199 = &v152 - v34;
  v208 = sub_10010FC20(&qword_10119D768);
  __chkstk_darwin(v208);
  v218 = &v152 - v35;
  v36 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v36 - 8);
  v201 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v152 - v39;
  v41 = type metadata accessor for DynamicTypeSize();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v152 - v46;
  __chkstk_darwin(v48);
  v50 = &v152 - v49;
  v51 = type metadata accessor for Tracklist.Artwork(0);
  sub_10056CABC(v50);
  v219 = v51;
  v52 = *(v51 + 20);
  v225 = v1;
  v178 = v52;
  sub_1000089F8(v1 + v52, v40, &qword_101186E00);
  v53 = *(v222 + 48);
  v180 = v222 + 48;
  v179 = v53;
  v54 = v53(v40, 1, v223);
  sub_1000095E8(v40, &qword_101186E00);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    v55 = *(v42 + 8);
    v55(v50, v41);
    v157 = 0x4048000000000000;
    if (v54 == 1)
    {
      v56 = 0x4048000000000000;
    }

    else
    {
      v56 = 0x4040000000000000;
    }

    v57 = v225;
    sub_10056CABC(v44);
    v55(v44, v41);
    goto LABEL_17;
  }

  v58 = *(v42 + 104);
  LODWORD(v157) = enum case for DynamicTypeSize.accessibility3(_:);
  v156 = v58;
  v58(v47);
  v59 = static DynamicTypeSize.< infix(_:_:)();
  v60 = *(v42 + 8);
  v60(v47, v41);
  v60(v50, v41);
  if ((v59 & 1) == 0)
  {
    if (v54 == 1)
    {
      v61 = 0x4052000000000000;
      goto LABEL_14;
    }

LABEL_13:
    v61 = 0x4048000000000000;
    goto LABEL_14;
  }

  if (v54 == 1)
  {
    goto LABEL_13;
  }

  v61 = 0x4040000000000000;
LABEL_14:
  v57 = v225;
  sub_10056CABC(v44);
  (v156)(v47, v157, v41);
  v62 = static DynamicTypeSize.< infix(_:_:)();
  v60(v47, v41);
  v60(v44, v41);
  v63 = 0x4052000000000000;
  if (v62)
  {
    v63 = 0x4048000000000000;
  }

  v157 = v63;
  v56 = v61;
LABEL_17:
  v64 = v183;
  v65 = v221;
  v66 = type metadata accessor for ArtworkImage.Info(0);
  v67 = *(v66 + 20);
  v68 = v57 + *(v66 + 24);
  v69 = *v68;
  if (*(v68 + 8))
  {
    v69 = 1.0;
  }

  ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)(v56, 0, 0.0, 1, v226, v69);
  v70 = v224;
  v71 = *(v224 + 104);
  v72 = v216;
  v154 = enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:);
  v73 = v217;
  v155 = v224 + 104;
  v153 = v71;
  v71(v216);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v57, v57 + v67, v226, v72, v220);
  v156 = *(v70 + 8);
  v224 = v70 + 8;
  v156(v72, v73);
  v74 = (v57 + *(v219 + 24));
  v76 = *v74;
  v75 = v74[1];
  v77 = qword_10117F1F8;

  v78 = v57;
  v79 = v177;
  if (v77 != -1)
  {
    swift_once();
  }

  v80 = v65 + *(v173 + 36);
  *v80 = v76;
  *(v80 + 8) = v75;
  *(v80 + 16) = 2;
  v81 = qword_10117F5F8;

  if (v81 != -1)
  {
    swift_once();
  }

  *(v80 + 24) = (*(*qword_101218AC8 + 408))();
  type metadata accessor for PreviewPlaybackController(0);
  sub_10068DDB4(&qword_101185730, type metadata accessor for PreviewPlaybackController);
  *(v80 + 32) = ObservedObject.init(wrappedValue:)();
  *(v80 + 40) = v82;
  v83 = *(type metadata accessor for PreviewOverlay.ArtworkVariant(0) + 36);
  *(v80 + v83) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  (*(v174 + 32))(v65, v220, v175);
  v84 = *(v78 + *(v219 + 28));
  v85 = v198;
  if (v84)
  {
    swift_getKeyPath();
    *&v228 = v84;
    sub_10068DDB4(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v86 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
    swift_beginAccess();
    sub_1000089F8(v84 + v86, v64, &qword_101188100);
    v87 = v200;
  }

  else
  {
    v87 = v200;
    (*(v198 + 56))(v64, 1, 1, v200);
  }

  sub_1000089F8(v64, v79, &qword_101188100);
  v88 = *(v85 + 48);
  v89 = v88(v79, 1, v87);
  v183 = v56;
  if (v89 == 1)
  {
    v90 = v194;
    (*(v85 + 104))(v194, enum case for WaveformState.hidden(_:), v87);
    if (v88(v79, 1, v87) != 1)
    {
      sub_1000095E8(v79, &qword_101188100);
    }
  }

  else
  {
    v90 = v194;
    (*(v85 + 32))(v194, v79, v87);
  }

  static Color.black.getter();
  v91 = Color.opacity(_:)();

  sub_1000095E8(v64, &qword_101188100);
  v92 = v193;
  *&v193[*(v190 + 36)] = v91;
  (*(v85 + 32))(v92, v90, v87);
  v93 = v176;
  sub_10003D17C(v221, v176, &qword_101186168);
  v94 = v182;
  sub_10003D17C(v92, v93 + *(v182 + 36), &qword_101198E68);
  v95 = sub_10068FBB0();
  v96 = v181;
  View.corner(_:)();
  sub_1000095E8(v93, &qword_10119D738);
  Border.artwork.unsafeMutableAddressor();

  *&v228 = v94;
  *(&v228 + 1) = v95;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = v185;
  v99 = v186;
  View.border(_:corner:)();

  (*(v184 + 8))(v96, v99);
  v100 = v202;
  static AccessibilityChildBehavior.ignore.getter();
  *&v228 = v99;
  *(&v228 + 1) = OpaqueTypeConformance2;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = v188;
  v103 = v189;
  View.accessibilityElement(children:)();
  (*(v203 + 8))(v100, v204);
  (*(v187 + 8))(v98, v103);
  v104 = AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor();
  v105 = *v104;
  v106 = v104[1];
  v107 = v104[2];
  v108 = v104[3];

  *&v228 = v103;
  *(&v228 + 1) = v101;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = v196;
  v111 = v192;
  View.accessibilityIdentifier(_:)(v105, v106, v107, v108, v192, v109);

  (*(v191 + 8))(v102, v111);
  if (v84)
  {
    v112 = sub_1002743BC();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v115 = v223;
  v116 = sub_10068FC68();
  v117 = v199;
  View.accessibilityLabel(_:)(v112, v114, v195, v116);

  sub_1000095E8(v110, &qword_10119D758);
  v118 = v205;
  static AccessibilityTraits.updatesFrequently.getter();
  sub_10068FDE0();
  v119 = v218;
  View.accessibilityAddTraits(_:)();
  (*(v206 + 8))(v118, v207);
  sub_1000095E8(v117, &qword_10119D760);
  v120 = v201;
  sub_1000089F8(v225 + v178, v201, &qword_101186E00);
  if (v179(v120, 1, v115) == 1)
  {
    sub_1000095E8(v120, &qword_101186E00);
    sub_1000089F8(v119, v214, &qword_10119D768);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119D788, &qword_10119D728);
    sub_10068FE9C();
    v121 = v211;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v222 + 32))();
    v122 = static Alignment.center.getter();
    v123 = v210;
    *v210 = v122;
    v123[1] = v124;
    v221 = v123 + *(sub_10010FC20(&qword_10119D798) + 44);
    v125 = v169;
    sub_1000089F8(v119, v169, &qword_10119D768);
    *(v125 + *(sub_10010FC20(&qword_10119D7A0) + 36)) = 256;
    sub_100681870();
    static Alignment.topLeading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v126 = (v125 + *(v158 + 36));
    v127 = v226[4];
    *v126 = v226[3];
    v126[1] = v127;
    v126[2] = v226[5];
    v128 = v159;
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v115, &protocol witness table for SocialProfile, v159);
    v129 = SocialProfile.name.getter();
    v131 = v130;
    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v183, 0, v183, 0, 0, 1, 2, v227);
    v132 = v216;
    v133 = v217;
    v153(v216, v154, v217);
    v134 = v160;
    static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)(v128, v129, v131, v227, v132, v160);

    v156(v132, v133);
    sub_1000095E8(v128, &unk_10118A5E0);
    v135 = sub_10068FF58();
    *&v228 = &type metadata for CNSwiftUIAvatarView;
    *(&v228 + 1) = v135;
    v136 = swift_getOpaqueTypeConformance2();
    v137 = v162;
    v138 = v165;
    View.corner(_:)();
    (*(v161 + 8))(v134, v138);

    *&v228 = v138;
    *(&v228 + 1) = v136;
    swift_getOpaqueTypeConformance2();
    v139 = v163;
    v140 = v167;
    View.border(_:corner:)();

    (*(v166 + 8))(v137, v140);
    v141 = v139 + *(v164 + 36);
    *v141 = 0x3FF0000000000000;
    *(v141 + 8) = 0;
    sub_10068FFAC();
    v142 = v171;
    View.accessibilityHidden(_:)();
    sub_1000095E8(v139, &qword_10119D710);
    sub_100681870();
    static Alignment.bottomTrailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v143 = (v142 + *(v168 + 36));
    v144 = v229;
    *v143 = v228;
    v143[1] = v144;
    v143[2] = v230;
    v145 = v170;
    sub_1000089F8(v125, v170, &qword_10119D720);
    v146 = v115;
    v147 = v172;
    sub_1000089F8(v142, v172, &qword_10119D718);
    v148 = v221;
    sub_1000089F8(v145, v221, &qword_10119D720);
    v149 = sub_10010FC20(&qword_10119D7B8);
    sub_1000089F8(v147, v148 + *(v149 + 48), &qword_10119D718);
    sub_1000095E8(v142, &qword_10119D718);
    sub_1000095E8(v125, &qword_10119D720);
    sub_1000095E8(v147, &qword_10119D718);
    sub_1000095E8(v145, &qword_10119D720);
    v150 = v210;
    sub_1000089F8(v210, v214, &qword_10119D728);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119D788, &qword_10119D728);
    sub_10068FE9C();
    v121 = v211;
    v119 = v218;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v150, &qword_10119D728);
    (*(v222 + 8))(v209, v146);
  }

  sub_10003D17C(v121, v215, &qword_10119D730);
  return sub_1000095E8(v119, &qword_10119D768);
}

double sub_100681870()
{
  v1 = type metadata accessor for EnvironmentValues();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118A610);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = v0 + *(type metadata accessor for ArtworkImage.Info(0) + 24);
  v15 = *v14;
  v27 = *(v14 + 8);
  v16 = type metadata accessor for Tracklist.Artwork(0);
  sub_1000089F8(v0 + *(v16 + 36), v6, &qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v3, v26);
  }

  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v8 + 8))(v13, v7);
    v18 = 16.0;
    v19 = 32.0;
  }

  else
  {
    (*(v8 + 104))(v10, enum case for DynamicTypeSize.accessibility3(_:), v7);
    v20 = static DynamicTypeSize.< infix(_:_:)();
    v21 = *(v8 + 8);
    v21(v10, v7);
    v21(v13, v7);
    v19 = 48.0;
    if (v20)
    {
      v19 = 32.0;
    }

    v18 = 24.0;
    if (v20)
    {
      v18 = 16.0;
    }
  }

  v22 = 1.0;
  if (!v27)
  {
    v22 = v15;
  }

  return v18 + v22 * v19;
}

uint64_t sub_100681C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v104 = sub_10010FC20(&qword_101198FC8);
  __chkstk_darwin(v104);
  v4 = &v90 - v3;
  v102 = sub_10010FC20(&qword_10119D7D0);
  __chkstk_darwin(v102);
  v103 = &v90 - v5;
  v6 = type metadata accessor for AccessibilityTraits();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WaveformState();
  v97 = *(v9 - 8);
  v98 = v9;
  __chkstk_darwin(v9);
  v95 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DancingPlaybackBarsConditionalModifier();
  __chkstk_darwin(v11 - 8);
  v96 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_101188100);
  __chkstk_darwin(v13 - 8);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  v19 = sub_10010FC20(&qword_10119D7D8);
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  v94 = sub_10010FC20(&qword_10119D7E0);
  __chkstk_darwin(v94);
  v23 = &v90 - v22;
  v101 = sub_10010FC20(&qword_10119D7E8);
  __chkstk_darwin(v101);
  __chkstk_darwin(v24);
  v27 = *a1;
  v28 = *(a1 + 8);
  v100 = a1;
  if (v28 < 0)
  {
    v99 = v4;
    *&v117[0] = v27;
    sub_1005C2A58();
    v117[0] = BinaryInteger.formatted()();
    sub_100009838();
    v41 = Text.init<A>(_:)();
    v43 = v42;
    v45 = v44;
    LODWORD(v117[0]) = static HierarchicalShapeStyle.primary.getter();
    v46 = Text.playableForegroundStyle<A>(_:isPlayable:)(v117, *(a1 + 9));
    v48 = v47;
    v50 = v49;
    sub_10011895C(v41, v43, v45 & 1);

    if (qword_10117FB60 != -1)
    {
      swift_once();
    }

    v51 = Text.font(_:)();
    v53 = v52;
    v55 = v54;
    sub_10011895C(v46, v48, v50 & 1);

    if (qword_10117FB68 != -1)
    {
      swift_once();
    }

    v56 = Text.fontWeight(_:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_10011895C(v51, v53, v55 & 1);

    type metadata accessor for Tracklist.LeadingNumber(0);
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v63 = v60 & 1;
    v119 = v63;
    v64 = static Edge.Set.trailing.getter();
    if (qword_10117FB58 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v120 = 0;
    *&v106 = v56;
    *(&v106 + 1) = v58;
    LOBYTE(v107) = v63;
    *(&v107 + 1) = v62;
    v112 = v116[6];
    v113 = v116[7];
    v114 = v116[8];
    v108 = v116[2];
    v109 = v116[3];
    v110 = v116[4];
    v111 = v116[5];
    LOBYTE(v115) = v64;
    *(&v115 + 1) = v65;
    *&v116[0] = v66;
    *(&v116[0] + 1) = v67;
    *&v116[1] = v68;
    BYTE8(v116[1]) = 0;
    v69 = AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor();
    v70 = *v69;
    v71 = v69[1];
    v72 = v69[2];
    v73 = v69[3];

    v74 = sub_10010FC20(&qword_101181120);
    v75 = sub_100119518();
    v76 = v99;
    View.accessibilityIdentifier(_:)(v70, v71, v72, v73, v74, v75);

    v117[8] = v114;
    v117[9] = v115;
    v118[0] = v116[0];
    *(v118 + 9) = *(v116 + 9);
    v117[4] = v110;
    v117[5] = v111;
    v117[6] = v112;
    v117[7] = v113;
    v117[0] = v106;
    v117[1] = v107;
    v117[2] = v108;
    v117[3] = v109;
    sub_1000095E8(v117, &qword_101181120);
    v77 = &qword_101198FC8;
    sub_1000089F8(v76, v103, &qword_101198FC8);
    swift_storeEnumTagMultiPayload();
    sub_1006900E4();
    sub_10068F538();
    _ConditionalContent<>.init(storage:)();
    v78 = v76;
  }

  else
  {
    v90 = v26;
    v91 = &v90 - v25;
    v92 = v7;
    v93 = v6;
    sub_100682900(v27, v28 & 1, a1, v21);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v31 = qword_10117F1F8;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = &v21[*(v19 + 36)];
    *v32 = v29;
    *(v32 + 1) = v30;
    v32[16] = 2;
    v33 = qword_10117F5F8;

    if (v33 != -1)
    {
      swift_once();
    }

    *(v32 + 3) = (*(*qword_101218AC8 + 408))();
    type metadata accessor for PreviewPlaybackController(0);
    sub_10068DDB4(&qword_101185730, type metadata accessor for PreviewPlaybackController);
    *(v32 + 4) = ObservedObject.init(wrappedValue:)();
    *(v32 + 5) = v34;
    v35 = *(type metadata accessor for PreviewOverlay.TrackNumberVariant(0) + 32);
    *&v32[v35] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610);
    swift_storeEnumTagMultiPayload();
    v36 = *(v100 + 40);
    if (v36)
    {
      swift_getKeyPath();
      *&v117[0] = v36;
      sub_10068DDB4(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
      swift_beginAccess();
      sub_1000089F8(v36 + v37, v18, &qword_101188100);
      v38 = v92;
      v40 = v97;
      v39 = v98;
    }

    else
    {
      v40 = v97;
      v39 = v98;
      (*(v97 + 56))(v18, 1, 1, v98);
      v38 = v92;
    }

    v98 = v23;
    sub_10003D17C(v18, v15, &qword_101188100);
    v79 = *(v40 + 48);
    if (v79(v15, 1, v39) == 1)
    {
      v80 = v95;
      (*(v40 + 104))(v95, enum case for WaveformState.hidden(_:), v39);
      v81 = v79(v15, 1, v39);
      v82 = v80;
      if (v81 != 1)
      {
        sub_1000095E8(v15, &qword_101188100);
      }
    }

    else
    {
      v82 = v95;
      (*(v40 + 32))(v95, v15, v39);
    }

    v83 = v96;
    (*(v40 + 32))(v96, v82, v39);
    v84 = v98;
    sub_10003D17C(v21, v98, &qword_10119D7D8);
    sub_10068DF34(v83, v84 + *(v94 + 36), type metadata accessor for DancingPlaybackBarsConditionalModifier);
    *&v106 = sub_100682F04();
    *(&v106 + 1) = v85;
    sub_1006901A0();
    sub_100009838();
    v86 = v90;
    View.accessibilityLabel<A>(_:)();

    sub_1000095E8(v84, &qword_10119D7E0);
    v87 = v99;
    static AccessibilityTraits.updatesFrequently.getter();
    v88 = v91;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v38 + 8))(v87, v93);
    v77 = &qword_10119D7E8;
    sub_1000095E8(v86, &qword_10119D7E8);
    sub_1000089F8(v88, v103, &qword_10119D7E8);
    swift_storeEnumTagMultiPayload();
    sub_1006900E4();
    sub_10068F538();
    _ConditionalContent<>.init(storage:)();
    v78 = v88;
  }

  return sub_1000095E8(v78, v77);
}

uint64_t sub_100682900@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v47 = type metadata accessor for DynamicTypeSize();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v10 - 8);
  v12 = &v40[-v11];
  v13 = sub_10010FC20(&qword_10119D830);
  __chkstk_darwin(v13);
  v48 = &v40[-v14];
  v15 = sub_10010FC20(&qword_10119D848);
  __chkstk_darwin(v15);
  v17 = &v40[-v16];
  if (a2)
  {
    type metadata accessor for Tracklist.LeadingNumber(0);
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    countAndFlagsBits = v59._countAndFlagsBits;
    object = v59._object;
    v20 = v60;
    v21 = BYTE8(v60);
    LOBYTE(v50._countAndFlagsBits) = 1;
    v69 = v59._object;
    v68 = BYTE8(v60);
    *v17 = 0;
    v17[8] = 1;
    *(v17 + 2) = countAndFlagsBits;
    v17[24] = object;
    *(v17 + 4) = v20;
    v17[40] = v21;
    *(v17 + 3) = v61;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330);
    sub_100690428();
    sub_100617DA4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v45 = v15;
    v46 = v13;
    v59._countAndFlagsBits = a1;
    sub_1005C2A58();
    v59 = BinaryInteger.formatted()();
    sub_100009838();
    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    LODWORD(v59._countAndFlagsBits) = static HierarchicalShapeStyle.secondary.getter();
    v28 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v59, *(a3 + 9));
    v43 = v29;
    v44 = v28;
    v41 = v30;
    v42 = v31;
    sub_10011895C(v23, v25, v27 & 1);

    type metadata accessor for Tracklist.LeadingNumber(0);
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    sub_10056CAE4(v12);
    sub_10056CABC(v9);
    LOBYTE(v23) = sub_10068D7BC(v12);
    (*(v7 + 8))(v9, v47);
    sub_1000095E8(v12, &unk_101184290);
    if (v23)
    {
      static Alignment.leading.getter();
    }

    else
    {
      static Alignment.center.getter();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v69 = v41 & 1;
    v50._countAndFlagsBits = v44;
    v50._object = v43;
    LOBYTE(v51) = v41 & 1;
    *(&v51 + 1) = v42;
    v32 = AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor();
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v36 = v32[3];

    v37 = sub_10010FC20(&qword_101181130);
    v38 = sub_1001195A4();
    v39 = v48;
    View.accessibilityIdentifier(_:)(v33, v34, v35, v36, v37, v38);

    v65 = v56;
    v66 = v57;
    v67 = v58;
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v64 = v55;
    v59 = v50;
    v60 = v51;
    sub_1000095E8(&v59, &qword_101181130);
    sub_1000089F8(v39, v17, &qword_10119D830);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330);
    sub_100690428();
    sub_100617DA4();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v39, &qword_10119D830);
  }
}

uint64_t sub_100682F04()
{
  if (!*(v0 + 40))
  {
LABEL_8:
    v5 = _swiftEmptyArrayStorage;
    v9 = *(v0 + 8);
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v1 = sub_1002743BC();
  if (!v2)
  {

    goto LABEL_8;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_100498B7C(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100498B7C((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  v9 = *(v0 + 8);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v9 & 1) == 0)
    {
      sub_1005C2A58();
      v10 = BinaryInteger.formatted()();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100498B7C(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100498B7C((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[16 * v12 + 32] = v10;
    }
  }

LABEL_15:
  sub_10010FC20(&qword_101183BC8);
  sub_100020674(&unk_101183BD0, &qword_101183BC8);
  v13 = BidirectionalCollection<>.joined(separator:)();

  return v13;
}

uint64_t sub_1006830F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10119D7C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_100681C1C(v2, &v11 - v5);
  if (*(v2 + 32) == 1)
  {
    if (qword_10117FBE0 != -1)
    {
      swift_once();
    }

    v7 = qword_101219388;
  }

  else
  {
    v7 = 0;
  }

  KeyPath = swift_getKeyPath();
  sub_10003D17C(v6, a1, &qword_10119D7C0);
  result = sub_10010FC20(&qword_10119D7C8);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_100683220(char a1)
{
  v2 = sub_10010FC20(&qword_10119D850);
  __chkstk_darwin(v2);
  v4 = &v32[-v3];
  v5 = sub_10010FC20(&qword_10119D858);
  __chkstk_darwin(v5);
  v7 = &v32[-v6];
  v8 = sub_10010FC20(&qword_10119D860);
  __chkstk_darwin(v8);
  v10 = &v32[-v9];
  *&v34 = Image.init(systemName:)();
  v33 = static HierarchicalShapeStyle.secondary.getter();
  View.playableForegroundStyle<A>(_:isPlayable:)(&v33, a1, &type metadata for Image, &type metadata for HierarchicalShapeStyle, &protocol witness table for Image);

  if (qword_10117FB88 != -1)
  {
    swift_once();
  }

  v11 = qword_101219320;
  KeyPath = swift_getKeyPath();
  v13 = &v4[*(v2 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = qword_10117FB90;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1006904E4();
  View.fontWeight(_:)();
  sub_1000095E8(v4, &qword_10119D850);
  v15 = static Edge.Set.trailing.getter();
  if (qword_10117FB78 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v16 = &v7[*(v5 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  if (qword_10117FB80 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, v10, &qword_10119D858);
  v21 = &v10[*(v8 + 36)];
  v22 = v39;
  v21[4] = v38;
  v21[5] = v22;
  v21[6] = v40;
  v23 = v35;
  *v21 = v34;
  v21[1] = v23;
  v24 = v37;
  v21[2] = v36;
  v21[3] = v24;
  v25 = AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v30 = sub_1006905E0();

  View.accessibilityIdentifier(_:)(v26, v27, v28, v29, v8, v30);

  return sub_1000095E8(v10, &qword_10119D860);
}

__n128 sub_1006836A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10119D578);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_10010FC20(&qword_10119D580);
  sub_100683808(v2, *(a1 + 16), *(a1 + 24), &v7[*(v8 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, a2, &qword_10119D578);
  v9 = a2 + *(sub_10010FC20(&qword_10119D588) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_100683808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v130 = a2;
  v129 = a4;
  v110 = type metadata accessor for DynamicTypeSize();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v7 - 8);
  v113 = &v107 - v8;
  v116 = sub_10010FC20(&qword_101186080);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v107 - v9;
  v118 = sub_10010FC20(&qword_10119D590);
  __chkstk_darwin(v118);
  v119 = &v107 - v10;
  v128 = sub_10010FC20(&qword_10119D598);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v117 = &v107 - v11;
  v12 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v12 - 8);
  v121 = &v107 - v13;
  v133 = type metadata accessor for AttributedString();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v112 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v124 = &v107 - v16;
  v17 = sub_10010FC20(&qword_10119D5A0);
  __chkstk_darwin(v17 - 8);
  v126 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = &v107 - v20;
  v21 = sub_10010FC20(&qword_10119D5A8);
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v122 = sub_10010FC20(&qword_10119D5B0);
  v24 = *(v122 - 1);
  __chkstk_darwin(v122);
  v26 = &v107 - v25;
  v27 = sub_10010FC20(&qword_10119D5B8);
  __chkstk_darwin(v27);
  v29 = &v107 - v28;
  v30 = sub_10010FC20(&qword_10119D5C0);
  __chkstk_darwin(v30 - 8);
  v123 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  v120 = a1;
  v35 = a2;
  v36 = v131;
  sub_10068460C(v35, v131, v23);
  LODWORD(v141) = static HierarchicalShapeStyle.primary.getter();
  v37 = *(a1 + 16);
  v38 = sub_10068F0F0();
  v111 = v37;
  View.playableForegroundStyle<A>(_:isPlayable:)(&v141, v37, v21, &type metadata for HierarchicalShapeStyle, v38);
  sub_1000095E8(v23, &qword_10119D5A8);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v24 + 32))(v29, v26, v122);
  v39 = &v29[*(v27 + 36)];
  v40 = v139;
  *(v39 + 4) = v138;
  *(v39 + 5) = v40;
  *(v39 + 6) = v140;
  v41 = v135;
  *v39 = v134;
  *(v39 + 1) = v41;
  v42 = v137;
  *(v39 + 2) = v136;
  *(v39 + 3) = v42;
  v43 = AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor();
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v47 = v43[3];
  v48 = sub_10068F200();

  v122 = v34;
  View.accessibilityIdentifier(_:)(v44, v45, v46, v47, v27, v48);

  sub_1000095E8(v29, &qword_10119D5B8);
  v49 = v130;
  v50 = type metadata accessor for Tracklist.VerticalTextStack();
  v51 = v36;
  v52 = v36[7];
  swift_unknownObjectRetain();
  v53 = v121;
  v52(v49, v51);
  v54 = v132;
  swift_unknownObjectRelease();
  if ((*(v54 + 48))(v53, 1, v133) == 1)
  {
    sub_1000095E8(v53, &qword_101180C90);
    v55 = 1;
    v56 = v125;
  }

  else
  {
    v107 = v50;
    v57 = v124;
    v58 = v133;
    (*(v54 + 32))(v124, v53, v133);
    (*(v54 + 16))(v112, v57, v58);
    v59 = Text.init(_:)();
    v61 = v60;
    v63 = v62;
    LODWORD(v141) = static HierarchicalShapeStyle.secondary.getter();
    v64 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v141, v111);
    v66 = v65;
    v68 = v67;
    sub_10011895C(v59, v61, v63 & 1);

    if (qword_10117FBD8 != -1)
    {
      swift_once();
    }

    v69 = Text.font(_:)();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_10011895C(v64, v66, v68 & 1);

    v76 = v131;
    v77 = v131[3];
    swift_unknownObjectRetain();
    v78 = v113;
    v77(v130, v76);
    swift_unknownObjectRelease();
    v79 = type metadata accessor for ArtworkImage.Info(0);
    LOBYTE(v80) = 1;
    v81 = (*(*(v79 - 8) + 48))(v78, 1, v79);
    sub_1000095E8(v78, &unk_10119F000);
    if (v81 == 1)
    {
      v82 = 0;
    }

    else
    {
      v83 = v108;
      sub_10056CABC(v108);
      v80 = DynamicTypeSize.isAccessibilitySize.getter();
      (*(v109 + 8))(v83, v110);
      v82 = ~v80 & 1;
    }

    v84 = v124;
    KeyPath = swift_getKeyPath();
    *&v141 = v69;
    *(&v141 + 1) = v71;
    v86 = v73 & 1;
    LOBYTE(v142) = v86;
    *(&v142 + 1) = v75;
    *&v143 = KeyPath;
    *(&v143 + 1) = v82;
    LOBYTE(v144) = v80 & 1;
    if (qword_10117FBC8 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_1011860D0);
    sub_10023BB90();
    v87 = v114;
    View.minimumLineHeight(_:)();
    sub_10011895C(v69, v71, v86);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v88 = v119;
    (*(v115 + 32))(v119, v87, v116);
    v89 = v118;
    v90 = (v88 + *(v118 + 36));
    v91 = v146;
    v90[4] = v145;
    v90[5] = v91;
    v90[6] = v147;
    v92 = v142;
    *v90 = v141;
    v90[1] = v92;
    v93 = v144;
    v90[2] = v143;
    v90[3] = v93;
    v94 = AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor();
    v95 = *v94;
    v96 = v94[1];
    v97 = v94[2];
    v98 = v94[3];
    v99 = sub_10068F470();

    v100 = v117;
    View.accessibilityIdentifier(_:)(v95, v96, v97, v98, v89, v99);

    sub_1000095E8(v88, &qword_10119D590);
    (*(v132 + 8))(v84, v133);
    v56 = v125;
    sub_10003D17C(v100, v125, &qword_10119D598);
    v55 = 0;
  }

  (*(v127 + 56))(v56, v55, 1, v128);
  v101 = v122;
  v102 = v123;
  sub_1000089F8(v122, v123, &qword_10119D5C0);
  v103 = v126;
  sub_1000089F8(v56, v126, &qword_10119D5A0);
  v104 = v129;
  sub_1000089F8(v102, v129, &qword_10119D5C0);
  v105 = sub_10010FC20(&qword_10119D5E8);
  sub_1000089F8(v103, v104 + *(v105 + 48), &qword_10119D5A0);
  sub_1000095E8(v56, &qword_10119D5A0);
  sub_1000095E8(v101, &qword_10119D5C0);
  sub_1000095E8(v103, &qword_10119D5A0);
  return sub_1000095E8(v102, &qword_10119D5C0);
}

uint64_t sub_10068460C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = type metadata accessor for Text.Suffix();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10010FC20(&qword_101186090);
  __chkstk_darwin(v73);
  v68 = &v64 - v7;
  v71 = sub_10010FC20(&qword_10119D5F8);
  __chkstk_darwin(v71);
  v72 = (&v64 - v8);
  v69 = type metadata accessor for DynamicTypeSize();
  v9 = *(v69 - 8);
  __chkstk_darwin(v69);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  type metadata accessor for Tracklist.VerticalTextStack();
  v15 = a2[3];
  swift_unknownObjectRetain();
  v70 = a1;
  v15(a1, a2);
  swift_unknownObjectRelease();
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    sub_1000095E8(v14, &unk_10119F000);
LABEL_4:
    v18 = a2[6];
    swift_unknownObjectRetain();
    v19 = v70;
    v20 = v18(v70, a2);
    v22 = v21;
    swift_unknownObjectRelease();
    v75 = v20;
    v76 = v22;
    sub_100009838();
    v23 = Text.init<A>(_:)();
    v68 = v24;
    v69 = v23;
    LODWORD(v67) = v25;
    v66 = v26;
    v27 = a2[10];
    swift_unknownObjectRetain();
    v28 = v27(v19, a2);
    swift_unknownObjectRelease();
    v29 = TextBadge.view.getter(v28);
    v31 = v30;
    v33 = v32;
    v34 = v68;
    v35 = v69;
    v36 = static Text.+ infix(_:_:)();
    v38 = v37;
    LOBYTE(v20) = v39;
    v41 = v40;
    sub_10011895C(v29, v31, v33 & 1);

    sub_10011895C(v35, v34, v67 & 1);

    v42 = v72;
    *v72 = v36;
    v42[1] = v38;
    *(v42 + 16) = v20 & 1;
    v42[3] = v41;
    swift_storeEnumTagMultiPayload();
    sub_10023B9EC();
    return _ConditionalContent<>.init(storage:)();
  }

  sub_1000095E8(v14, &unk_10119F000);
  sub_10056CABC(v11);
  v17 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v9 + 8))(v11, v69);
  if (v17)
  {
    goto LABEL_4;
  }

  v44 = a2[6];
  swift_unknownObjectRetain();
  v45 = v70;
  v46 = v44(v70, a2);
  v48 = v47;
  swift_unknownObjectRelease();
  v75 = v46;
  v76 = v48;
  sub_100009838();
  v49 = Text.init<A>(_:)();
  v51 = v50;
  v69 = v52;
  v75 = v49;
  v76 = v50;
  LOBYTE(v46) = v53 & 1;
  v77 = v53 & 1;
  v78 = v52;
  v54 = a2[10];
  swift_unknownObjectRetain();
  LOBYTE(v54) = v54(v45, a2);
  swift_unknownObjectRelease();
  v55 = TextBadge.view.getter(v54);
  v57 = v56;
  LOBYTE(v45) = v58;
  v59 = v65;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v55, v57, v45 & 1);

  v60 = v68;
  View.textSuffix(_:)();
  (*(v66 + 8))(v59, v67);
  sub_10011895C(v49, v51, v46);

  KeyPath = swift_getKeyPath();
  v62 = v72;
  v63 = v60 + *(v73 + 36);
  *v63 = KeyPath;
  *(v63 + 8) = 1;
  *(v63 + 16) = 0;
  sub_1000089F8(v60, v62, &qword_101186090);
  swift_storeEnumTagMultiPayload();
  sub_10023B9EC();
  _ConditionalContent<>.init(storage:)();
  return sub_1000095E8(v60, &qword_101186090);
}

uint64_t sub_100684C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v5 - 8);
  v62 = &v57 - v6;
  v7 = sub_10010FC20(&qword_10119D8C0);
  __chkstk_darwin(v7 - 8);
  v64 = (&v57 - v8);
  v9 = sub_10010FC20(&qword_10119D5A8);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v58 = sub_10010FC20(&qword_10119D5B0);
  v12 = *(v58 - 8);
  __chkstk_darwin(v58);
  v14 = &v57 - v13;
  v15 = sub_10010FC20(&qword_10119D5B8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v59 = sub_10010FC20(&qword_10119D8C8);
  __chkstk_darwin(v59);
  v20 = &v57 - v19;
  v21 = sub_10010FC20(&qword_10119D8D0);
  __chkstk_darwin(v21 - 8);
  v61 = &v57 - v22;
  v23 = *(a1 + 24);
  v60 = *(a1 + 16);
  sub_1006852D8(v60, v23, v11);
  LODWORD(v66[0]) = static HierarchicalShapeStyle.primary.getter();
  v63 = v3;
  LOBYTE(a1) = *(v3 + 16);
  v24 = sub_10068F0F0();
  View.playableForegroundStyle<A>(_:isPlayable:)(v66, a1, v9, &type metadata for HierarchicalShapeStyle, v24);
  sub_1000095E8(v11, &qword_10119D5A8);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v12 + 32))(v18, v14, v58);
  v25 = &v18[*(v16 + 44)];
  v26 = v66[5];
  *(v25 + 4) = v66[4];
  *(v25 + 5) = v26;
  *(v25 + 6) = v66[6];
  v27 = v66[1];
  *v25 = v66[0];
  *(v25 + 1) = v27;
  v28 = v66[3];
  *(v25 + 2) = v66[2];
  *(v25 + 3) = v28;
  v29 = static Edge.Set.trailing.getter();
  if (qword_10117FBB8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10003D17C(v18, v20, &qword_10119D5B8);
  v38 = v59;
  v39 = &v20[*(v59 + 36)];
  *v39 = v29;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  v40 = AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  v45 = sub_10069093C();

  v46 = v61;
  View.accessibilityIdentifier(_:)(v41, v42, v43, v44, v38, v45);

  sub_1000095E8(v20, &qword_10119D8C8);
  v47 = v63;
  v48 = v23[3];
  swift_unknownObjectRetain();
  v49 = v62;
  v50 = v60;
  v48(v60, v23);
  swift_unknownObjectRelease();
  v51 = type metadata accessor for ArtworkImage.Info(0);
  v52 = (*(*(v51 - 8) + 48))(v49, 1, v51);
  sub_1000095E8(v49, &unk_10119F000);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1 || v52 != 1)
  {
    v53 = static VerticalAlignment.center.getter();
  }

  else
  {
    v53 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  v54 = v64;
  *v64 = v53;
  *(v54 + 8) = 0;
  *(v54 + 16) = 0;
  v55 = sub_10010FC20(&qword_10119D8E0);
  sub_100685840(v47, v46, v50, v23, v54 + *(v55 + 44));
  sub_10003D17C(v54, v65, &qword_10119D8C0);
  return sub_1000095E8(v46, &qword_10119D8D0);
}

uint64_t sub_1006852D8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = type metadata accessor for Text.Suffix();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10010FC20(&qword_101186090);
  __chkstk_darwin(v63);
  v8 = v57 - v7;
  v62 = sub_10010FC20(&qword_10119D5F8);
  __chkstk_darwin(v62);
  v61 = v57 - v9;
  v10 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v10 - 8);
  v12 = v57 - v11;
  type metadata accessor for Tracklist.HorizontalTextStack();
  v13 = a2[3];
  swift_unknownObjectRetain();
  v13(a1, a2);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for ArtworkImage.Info(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_1000095E8(v12, &unk_10119F000);
  v16 = a2[6];
  swift_unknownObjectRetain();
  v17 = v16(a1, a2);
  v19 = v18;
  swift_unknownObjectRelease();
  v65 = v17;
  v66 = v19;
  sub_100009838();
  if (v15 == 1)
  {
    v20 = Text.init<A>(_:)();
    v21 = a1;
    v23 = v22;
    LODWORD(v60) = v24;
    v59 = v25;
    v26 = a2[10];
    swift_unknownObjectRetain();
    LOBYTE(v21) = v26(v21, a2);
    swift_unknownObjectRelease();
    v27 = TextBadge.view.getter(v21);
    v29 = v28;
    v31 = v30;
    v32 = v23;
    v33 = v61;
    v34 = static Text.+ infix(_:_:)();
    v36 = v35;
    LOBYTE(v26) = v37;
    v58 = v38;
    sub_10011895C(v27, v29, v31 & 1);

    sub_10011895C(v20, v32, v60 & 1);

    *v33 = v34;
    *(v33 + 8) = v36;
    *(v33 + 16) = v26 & 1;
    *(v33 + 24) = v58;
    swift_storeEnumTagMultiPayload();
    sub_10023B9EC();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v40 = Text.init<A>(_:)();
    v42 = v41;
    v57[1] = v43;
    v65 = v40;
    v66 = v41;
    v45 = v44 & 1;
    v67 = v44 & 1;
    v68 = v43;
    v46 = v8;
    v47 = a2[10];
    swift_unknownObjectRetain();
    v48 = v47(a1, a2);
    swift_unknownObjectRelease();
    v49 = TextBadge.view.getter(v48);
    v51 = v50;
    v53 = v52;
    v54 = v58;
    static Text.Suffix.alwaysVisible(_:)();
    sub_10011895C(v49, v51, v53 & 1);

    View.textSuffix(_:)();
    (*(v59 + 8))(v54, v60);
    sub_10011895C(v40, v42, v45);

    KeyPath = swift_getKeyPath();
    v56 = v46 + *(v63 + 36);
    *v56 = KeyPath;
    *(v56 + 8) = 1;
    *(v56 + 16) = 0;
    sub_1000089F8(v46, v61, &qword_101186090);
    swift_storeEnumTagMultiPayload();
    sub_10023B9EC();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v46, &qword_101186090);
  }
}

uint64_t sub_100685840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v185 = a2;
  v189 = a5;
  v180 = sub_10010FC20(&qword_10119D8E8);
  __chkstk_darwin(v180);
  v165 = &v149[-v8];
  v161 = sub_10010FC20(&qword_10119D8F0);
  __chkstk_darwin(v161);
  v163 = &v149[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v162 = &v149[-v11];
  __chkstk_darwin(v12);
  v164 = &v149[-v13];
  v177 = sub_10010FC20(&qword_10119D8F8);
  __chkstk_darwin(v177);
  v179 = &v149[-v14];
  v178 = sub_10010FC20(&qword_10119D900);
  __chkstk_darwin(v178);
  v160 = &v149[-v15];
  v16 = sub_10010FC20(&qword_10119D908);
  __chkstk_darwin(v16 - 8);
  v159 = &v149[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v168 = &v149[-v19];
  v154 = sub_10010FC20(&qword_10119D910);
  __chkstk_darwin(v154);
  v157 = &v149[-v20];
  v156 = sub_10010FC20(&qword_10119D918);
  __chkstk_darwin(v156);
  v158 = &v149[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v155 = &v149[-v23];
  __chkstk_darwin(v24);
  v167 = &v149[-v25];
  v174 = sub_10010FC20(&qword_10119D920);
  __chkstk_darwin(v174);
  v181 = &v149[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v175 = &v149[-v28];
  __chkstk_darwin(v29);
  v166 = &v149[-v30];
  v190 = sub_10010FC20(&qword_10119D928);
  __chkstk_darwin(v190);
  v176 = &v149[-v31];
  v32 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v32 - 8);
  v172 = &v149[-v33];
  v34 = sub_10010FC20(&qword_10119D930);
  __chkstk_darwin(v34 - 8);
  v191 = &v149[-v35];
  v186 = sub_10010FC20(&qword_10119D938);
  __chkstk_darwin(v186);
  v188 = &v149[-v36];
  v187 = sub_10010FC20(&qword_10119D940);
  __chkstk_darwin(v187);
  v170 = &v149[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v171 = &v149[-v39];
  v40 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v40 - 8);
  v42 = &v149[-v41];
  v43 = type metadata accessor for AttributedString();
  v44 = *(v43 - 1);
  __chkstk_darwin(v43);
  v169 = &v149[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v48 = &v149[-v47];
  v173 = type metadata accessor for Tracklist.HorizontalTextStack();
  v184 = a1;
  v49 = *(a4 + 56);
  swift_unknownObjectRetain();
  v182 = a3;
  v183 = a4;
  v49(a3, a4);
  swift_unknownObjectRelease();
  if ((*(v44 + 6))(v42, 1, v43) == 1)
  {
    sub_1000095E8(v42, &qword_101180C90);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v50 = v170;
    sub_1000089F8(v185, v170, &qword_10119D8D0);
    v51 = &v50[*(v187 + 36)];
    v52 = v199;
    v53 = v201;
    v51[4] = v200;
    v51[5] = v53;
    v51[6] = v202;
    v54 = v197;
    *v51 = v196;
    v51[1] = v54;
    v51[2] = v198;
    v51[3] = v52;
    v55 = v171;
    sub_10003D17C(v50, v171, &qword_10119D940);
    sub_1000089F8(v55, v188, &qword_10119D940);
    swift_storeEnumTagMultiPayload();
    sub_1006909C8();
    sub_100690AA8();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v55, &qword_10119D940);
  }

  else
  {
    (*(v44 + 4))(v48, v42, v43);
    v170 = v44;
    v171 = v43;
    v57 = *(v44 + 2);
    v153 = v48;
    v57(v169, v48, v43);
    v58 = Text.init(_:)();
    v60 = v59;
    v62 = v61;
    LODWORD(v196) = static HierarchicalShapeStyle.secondary.getter();
    v150 = *(v184 + 16);
    v63 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v196, v150);
    v151 = v64;
    v152 = v63;
    v65 = v64;
    LODWORD(v169) = v66;
    v68 = v67;
    sub_10011895C(v58, v60, v62 & 1);

    v69 = v183;
    v70 = *(v183 + 24);
    swift_unknownObjectRetain();
    v71 = v172;
    v70(v182, v69);
    swift_unknownObjectRelease();
    v72 = type metadata accessor for ArtworkImage.Info(0);
    v73 = (*(*(v72 - 8) + 48))(v71, 1, v72);
    LOBYTE(v58) = v73 == 1;
    v74 = v73 != 1;
    sub_1000095E8(v71, &unk_10119F000);
    KeyPath = swift_getKeyPath();
    *&v196 = v63;
    *(&v196 + 1) = v65;
    LOBYTE(v63) = v169 & 1;
    LOBYTE(v197) = v169 & 1;
    *(&v197 + 1) = v68;
    *&v198 = KeyPath;
    *(&v198 + 1) = v74;
    LOBYTE(v199) = v58;
    v76 = AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor();
    v77 = *v76;
    v78 = v76[1];
    v80 = v76[2];
    v79 = v76[3];

    v81 = sub_10010FC20(&qword_1011860D0);
    v82 = sub_10023BB90();
    View.accessibilityIdentifier(_:)(v77, v78, v80, v79, v81, v82);

    sub_10011895C(v152, v151, v63);

    v83 = *(v184 + 56);
    if (qword_10117FB38 != -1)
    {
      swift_once();
    }

    v84 = v185;
    if (*&qword_1012192D0 <= v83 && (v85 = v183, v86 = *(v183 + 64), swift_unknownObjectRetain(), v87 = v86(v182, v85), v89 = v88, swift_unknownObjectRelease(), v89))
    {
      sub_100686D94(1, v173);
      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v90 = v166;
      sub_1000089F8(v84, v166, &qword_10119D8D0);
      v91 = &v90[*(v174 + 36)];
      v92 = v211;
      *v91 = v210;
      v91[1] = v92;
      v91[2] = v212;
      v93 = static Edge.Set.trailing.getter();
      v94 = v191;
      if (qword_10117FBB8 != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v102 = v101;
      v103 = v94;
      v104 = v157;
      sub_1000089F8(v103, v157, &qword_10119D930);
      v105 = &v104[*(v154 + 36)];
      *v105 = v93;
      *(v105 + 1) = v96;
      *(v105 + 2) = v98;
      *(v105 + 3) = v100;
      *(v105 + 4) = v102;
      v105[40] = 0;
      if (qword_10117FB28 != -1)
      {
        swift_once();
      }

      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v106 = v155;
      sub_10003D17C(v104, v155, &qword_10119D910);
      v107 = &v106[*(v156 + 36)];
      v108 = v214;
      *v107 = v213;
      v107[1] = v108;
      v107[2] = v215;
      sub_10003D17C(v106, v167, &qword_10119D918);
      *&v196 = v87;
      *(&v196 + 1) = v89;
      sub_100009838();
      v109 = Text.init<A>(_:)();
      v111 = v110;
      v113 = v112;
      LODWORD(v196) = static HierarchicalShapeStyle.secondary.getter();
      v114 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v196, v150);
      v185 = v115;
      v117 = v116;
      v119 = v118;
      sub_10011895C(v109, v111, v113 & 1);

      v120 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v207[55] = v219;
      *&v207[71] = v220;
      *&v207[87] = v221;
      *&v207[103] = v222;
      *&v207[7] = v216;
      *&v207[23] = v217;
      *&v207[39] = v218;
      *&v195[65] = *&v207[64];
      *&v195[81] = *&v207[80];
      *&v195[97] = *&v207[96];
      *&v195[1] = *v207;
      *&v195[17] = *&v207[16];
      *&v195[33] = *&v207[32];
      v209 = v117 & 1;
      v208 = 0;
      *&v192 = v114;
      *(&v192 + 1) = v185;
      LOBYTE(v193) = v117 & 1;
      *(&v193 + 1) = v119;
      *&v194 = v120;
      *(&v194 + 1) = 1;
      v195[0] = 0;
      *&v195[112] = *(&v222 + 1);
      *&v195[49] = *&v207[48];
      v121 = AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor();
      v122 = *v121;
      v123 = v121[1];
      v124 = v121[2];
      v125 = v121[3];

      v126 = sub_10010FC20(&qword_10119D978);
      v127 = sub_100690BF0();
      View.accessibilityIdentifier(_:)(v122, v123, v124, v125, v126, v127);

      v204 = *&v195[80];
      v205 = *&v195[96];
      v206 = *&v195[112];
      v200 = *&v195[16];
      v201 = *&v195[32];
      v202 = *&v195[48];
      v203 = *&v195[64];
      v196 = v192;
      v197 = v193;
      v198 = v194;
      v199 = *v195;
      sub_1000095E8(&v196, &qword_10119D978);
      v128 = v175;
      sub_1000089F8(v166, v175, &qword_10119D920);
      v129 = v158;
      sub_1000089F8(v167, v158, &qword_10119D918);
      v130 = v159;
      sub_1000089F8(v168, v159, &qword_10119D908);
      v131 = v160;
      sub_1000089F8(v128, v160, &qword_10119D920);
      v132 = sub_10010FC20(&qword_10119D988);
      sub_1000089F8(v129, &v131[*(v132 + 48)], &qword_10119D918);
      sub_1000089F8(v130, &v131[*(v132 + 64)], &qword_10119D908);
      sub_1000095E8(v130, &qword_10119D908);
      sub_1000095E8(v129, &qword_10119D918);
      sub_1000095E8(v128, &qword_10119D920);
      sub_1000089F8(v131, v179, &qword_10119D900);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_10119D950, &qword_10119D900);
      sub_100020674(&qword_10119D958, &qword_10119D8E8);
      v133 = v176;
      _ConditionalContent<>.init(storage:)();
      v134 = v133;
      sub_1000095E8(v131, &qword_10119D900);
      sub_1000095E8(v168, &qword_10119D908);
      sub_1000095E8(v167, &qword_10119D918);
      sub_1000095E8(v166, &qword_10119D920);
      v135 = v191;
    }

    else
    {
      sub_100686D94(0, v173);
      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v136 = v181;
      sub_1000089F8(v84, v181, &qword_10119D8D0);
      v137 = &v136[*(v174 + 36)];
      v138 = v193;
      *v137 = v192;
      v137[1] = v138;
      v137[2] = v194;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v139 = v162;
      sub_1000089F8(v191, v162, &qword_10119D930);
      v140 = &v139[*(v161 + 36)];
      v141 = v201;
      v140[4] = v200;
      v140[5] = v141;
      v140[6] = v202;
      v142 = v197;
      *v140 = v196;
      v140[1] = v142;
      v143 = v199;
      v140[2] = v198;
      v140[3] = v143;
      v144 = v164;
      sub_10003D17C(v139, v164, &qword_10119D8F0);
      v145 = v175;
      sub_1000089F8(v136, v175, &qword_10119D920);
      v146 = v163;
      sub_1000089F8(v144, v163, &qword_10119D8F0);
      v147 = v165;
      sub_1000089F8(v145, v165, &qword_10119D920);
      v148 = sub_10010FC20(&qword_10119D970);
      sub_1000089F8(v146, &v147[*(v148 + 48)], &qword_10119D8F0);
      sub_1000095E8(v146, &qword_10119D8F0);
      sub_1000095E8(v145, &qword_10119D920);
      sub_1000089F8(v147, v179, &qword_10119D8E8);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_10119D950, &qword_10119D900);
      sub_100020674(&qword_10119D958, &qword_10119D8E8);
      v134 = v176;
      _ConditionalContent<>.init(storage:)();
      v135 = v191;
      sub_1000095E8(v147, &qword_10119D8E8);
      sub_1000095E8(v144, &qword_10119D8F0);
      sub_1000095E8(v181, &qword_10119D920);
    }

    sub_1000089F8(v134, v188, &qword_10119D928);
    swift_storeEnumTagMultiPayload();
    sub_1006909C8();
    sub_100690AA8();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v134, &qword_10119D928);
    sub_1000095E8(v135, &qword_10119D930);
    return (*(v170 + 1))(v153, v171);
  }
}

double sub_100686D94(int a1, uint64_t a2)
{
  v29 = a1;
  v4 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v28[-v5];
  v7 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v7 - 8);
  v9 = &v28[-v8];
  v30 = type metadata accessor for DynamicTypeSize();
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 56);
  sub_10056CABC(v12);
  v16 = a2 + 16;
  v15 = *(a2 + 16);
  v14 = *(v16 + 8);
  v17 = *(v14 + 24);
  swift_unknownObjectRetain();
  v17(v15, v14);
  swift_unknownObjectRelease();
  v18 = type metadata accessor for ArtworkImage.Info(0);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_1000095E8(v9, &unk_10119F000);
  }

  else
  {
    sub_10068E244(v9, type metadata accessor for ArtworkImage.Info);
  }

  v19 = *(v14 + 96);
  swift_unknownObjectRetain();
  v19(v15, v14);
  swift_unknownObjectRelease();
  v20 = type metadata accessor for SocialProfile();
  (*(*(v20 - 8) + 48))(v6, 1, v20);
  sub_1000095E8(v6, &qword_101186E00);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    (*(v10 + 8))(v12, v30);
  }

  else
  {
    v21 = 0.45;
    if (v29)
    {
      v21 = 0.3;
    }

    v22 = v21 * v13;
    sub_10068F2DC();
    v24 = v23;
    sub_10068F2DC();
    v26 = v25;
    (*(v10 + 8))(v12, v30);
    return v22 - (v24 - v26);
  }

  return v13;
}

uint64_t sub_100687154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v257 = a2;
  v252 = _s17ContextMenuButtonVMa(0);
  __chkstk_darwin(v252);
  v263 = (&v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_10010FC20(&qword_10119D600);
  __chkstk_darwin(v255);
  v256 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v254 = &v207 - v7;
  __chkstk_darwin(v8);
  v264 = &v207 - v9;
  v10 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v219 = *(v10 - 8);
  v220 = v10;
  __chkstk_darwin(v10);
  v217 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v212 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v211 = *(v213 - 8);
  __chkstk_darwin(v213);
  v209 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.UnitsFormatStyle();
  v214 = *(v14 - 8);
  v215 = v14;
  __chkstk_darwin(v14);
  v210 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_10010FC20(&qword_101198FC8);
  __chkstk_darwin(v221);
  v222 = &v207 - v16;
  v17 = sub_10010FC20(&qword_10119D608);
  __chkstk_darwin(v17 - 8);
  v225 = &v207 - v18;
  v19 = sub_10010FC20(&qword_10119D610);
  v250 = *(v19 - 8);
  v251 = v19;
  __chkstk_darwin(v19);
  v224 = &v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v223 = &v207 - v22;
  v23 = sub_10010FC20(&qword_10119D618);
  __chkstk_darwin(v23 - 8);
  v253 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v262 = &v207 - v26;
  v259 = type metadata accessor for DynamicTypeSize();
  v249 = *(v259 - 8);
  __chkstk_darwin(v259);
  v248 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v235 = &v207 - v29;
  v30 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v30 - 8);
  v247 = &v207 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v234 = &v207 - v33;
  v246 = _s27DownloadStatusIndicatorViewVMa(0);
  __chkstk_darwin(v246);
  v236 = &v207 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_10010FC20(&qword_101198C50);
  __chkstk_darwin(v244);
  v245 = &v207 - v35;
  v36 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v240 = *(v36 - 8);
  v241 = v36;
  __chkstk_darwin(v36);
  v239 = &v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v243 = *(v232 - 8);
  __chkstk_darwin(v232);
  v231 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v242 = &v207 - v40;
  v41 = sub_10010FC20(&qword_101198CC8);
  __chkstk_darwin(v41 - 8);
  v261 = &v207 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v269 = &v207 - v44;
  v227 = sub_10010FC20(&qword_10119D620);
  __chkstk_darwin(v227);
  v226 = &v207 - v45;
  v228 = sub_10010FC20(&qword_10119D628);
  __chkstk_darwin(v228);
  v233 = &v207 - v46;
  v47 = sub_10010FC20(&qword_10119D630);
  v237 = *(v47 - 8);
  v238 = v47;
  __chkstk_darwin(v47);
  v230 = &v207 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v229 = &v207 - v50;
  v51 = sub_10010FC20(&qword_1011A4740);
  __chkstk_darwin(v51 - 8);
  v53 = &v207 - v52;
  v54 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = (&v207 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_10010FC20(&qword_10119D638);
  __chkstk_darwin(v58 - 8);
  v260 = &v207 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v267 = v2;
  v268 = &v207 - v61;
  v62 = *(a1 + 32);
  v63 = v62[14];
  v258 = a1;
  v64 = *(a1 + 16);
  swift_unknownObjectRetain();
  v265 = v64;
  v266 = v62;
  v63(v64, v62);
  swift_unknownObjectRelease();
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    sub_1000095E8(v53, &qword_1011A4740);
    (*(v237 + 56))(v268, 1, 1, v238);
    v65 = v267;
    v66 = v242;
    v67 = v243;
    goto LABEL_13;
  }

  sub_10068DF34(v53, v57, type metadata accessor for Tracklist.ReactionsConfiguration);
  v68 = *v57;
  v69 = *(v54 + 20);
  v208 = v57;
  v70 = v57 + v69;
  v71 = _s6ButtonVMa(0);
  v72 = v226;
  sub_10068DF9C(v70, &v226[*(v71 + 20)], _s7ContextVMa);
  *v72 = v68;
  v73 = v72;
  *(v72 + *(v227 + 36)) = 257;
  v74 = v70 + *(_s7ContextVMa(0) + 20);
  v75 = *(v74 + 8);
  v65 = v267;
  v76 = v268;
  v66 = v242;
  v67 = v243;
  v77 = v237;
  v78 = v233;
  if (v75 == 255)
  {
    goto LABEL_9;
  }

  v79 = *v74;
  if (v75)
  {
    if (v79 >> 62)
    {
      v206 = _CocoaArrayWrapper.endIndex.getter();
      v78 = v233;
      v80 = 1.0;
      if (v206)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v80 = 1.0;
    if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      v80 = 0.0;
    }
  }

  else
  {
    v80 = 1.0;
    if (!*(v79 + 16))
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  sub_10003D17C(v73, v78, &qword_10119D620);
  *(v78 + *(v228 + 36)) = v80;

  v81 = static Edge.Set.trailing.getter();
  if (qword_10117FBF8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v230;
  sub_10003D17C(v78, v230, &qword_10119D628);
  v91 = v238;
  v92 = v90 + *(v238 + 36);
  *v92 = v81;
  *(v92 + 8) = v83;
  *(v92 + 16) = v85;
  *(v92 + 24) = v87;
  *(v92 + 32) = v89;
  *(v92 + 40) = 0;
  v93 = v90;
  v94 = v229;
  sub_10003D17C(v93, v229, &qword_10119D630);
  sub_10003D17C(v94, v76, &qword_10119D630);
  (*(v77 + 56))(v76, 0, 1, v91);
  sub_10068E244(v208, type metadata accessor for Tracklist.ReactionsConfiguration);
LABEL_13:
  v95 = *(**(v65 + 40) + 256);

  v97 = v239;
  v95(v96);

  v99 = v240;
  v98 = v241;
  if ((*(v240 + 88))(v97, v241) == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v99 + 96))(v97, v98);
    v100 = v97;
    v101 = v232;
    (*(v67 + 32))(v66, v100, v232);
    v102 = v231;
    (*(v67 + 104))(v231, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:), v101);
    v103 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v104 = *(v67 + 8);
    v104(v102, v101);
    if (v103)
    {
      swift_storeEnumTagMultiPayload();
      sub_1006160EC();
      sub_10068DDB4(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa);
      _ConditionalContent<>.init(storage:)();
      v104(v66, v101);
      v105 = v247;
      v106 = v249;
      goto LABEL_19;
    }

    v104(v66, v101);
  }

  else
  {
    (*(v99 + 8))(v97, v98);
  }

  v106 = v249;

  v107 = v236;
  dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();

  v108 = type metadata accessor for MusicLibrary.DownloadStatus();
  (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
  v109 = *(v65 + 80);
  v110 = v234;
  sub_10056CAE4(v234);
  v111 = v235;
  sub_10056CABC(v235);
  v112 = sub_10068D124(v110, v111, v109);
  (*(v106 + 8))(v111, v259);
  sub_1000095E8(v110, &unk_101184290);
  v113 = v246;
  *&v282 = 0x4000000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  *&v282 = 0x3FF0000000000000;
  ScaledMetric.init(wrappedValue:)();
  *(v107 + *(v113 + 20)) = (v112 & 1) == 0;
  sub_10068DF9C(v107, v245, _s27DownloadStatusIndicatorViewVMa);
  swift_storeEnumTagMultiPayload();
  sub_1006160EC();
  sub_10068DDB4(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa);
  _ConditionalContent<>.init(storage:)();
  sub_10068E244(v107, _s27DownloadStatusIndicatorViewVMa);
  v105 = v247;
LABEL_19:
  v114 = *(v65 + 80);
  sub_10056CAE4(v105);
  v115 = v248;
  sub_10056CABC(v248);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    (*(v106 + 8))(v115, v259);
    sub_1000095E8(v105, &unk_101184290);
  }

  else
  {
    v116 = sub_10068D124(v105, v115, v114);
    (*(v106 + 8))(v115, v259);
    sub_1000095E8(v105, &unk_101184290);
    if (v116)
    {
LABEL_25:
      (*(v250 + 56))(v262, 1, 1, v251);
      goto LABEL_35;
    }
  }

  v117 = v266;
  v118 = v266[9];
  swift_unknownObjectRetain();
  v119 = COERCE_DOUBLE(v118(v265, v117));
  v121 = v120;
  swift_unknownObjectRelease();
  if (v121)
  {
    goto LABEL_25;
  }

  if (qword_10117F720 != -1)
  {
    swift_once();
  }

  v122 = [qword_101218CE8 stringFromSeconds:v119];
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  *&v282 = v123;
  *(&v282 + 1) = v125;
  v259 = sub_100009838();
  v126 = Text.init<A>(_:)();
  v128 = v127;
  v130 = v129;
  LODWORD(v282) = static HierarchicalShapeStyle.secondary.getter();

  v131 = sub_1006796C0();

  v132 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v282, v131 & 1);
  v134 = v133;
  v136 = v135;
  sub_10011895C(v126, v128, v130 & 1);

  v137 = Text.monospacedDigit()();
  v139 = v138;
  v141 = v140;
  v143 = v142;
  sub_10011895C(v132, v134, v136 & 1);

  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v144 = v141 & 1;
  v293 = v144;
  v145 = static Edge.Set.trailing.getter();
  if (qword_10117FBF0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v294 = 0;
  *&v271 = v137;
  *(&v271 + 1) = v139;
  LOBYTE(v272) = v144;
  *(&v272 + 1) = v143;
  v278 = v281[7];
  v279 = v281[8];
  v273 = v281[2];
  v274 = v281[3];
  v276 = v281[5];
  v277 = v281[6];
  v275 = v281[4];
  LOBYTE(v280) = v145;
  *(&v280 + 1) = v146;
  *&v281[0] = v147;
  *(&v281[0] + 1) = v148;
  *&v281[1] = v149;
  BYTE8(v281[1]) = 0;
  static Duration.seconds(_:)();
  sub_10010FC20(&unk_1011A38F0);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_100EBE260;
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_10011064C(v150);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v151 = v209;
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  v152 = v212;
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  v153 = v217;
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  v154 = v210;
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v219 + 8))(v153, v220);
  (*(v216 + 8))(v152, v218);
  (*(v211 + 8))(v151, v213);
  sub_10068DDB4(&qword_10119D648, &type metadata accessor for Duration.UnitsFormatStyle);
  v155 = v215;
  Duration.formatted<A>(_:)();
  (*(v214 + 8))(v154, v155);
  v270 = v282;
  v156 = Text.init<A>(_:)();
  v158 = v157;
  LOBYTE(v154) = v159;
  sub_10010FC20(&qword_101181120);
  sub_100119518();
  v160 = v222;
  View.accessibility(label:)();
  sub_10011895C(v156, v158, v154 & 1);

  v290 = v279;
  v291 = v280;
  v292[0] = v281[0];
  *(v292 + 9) = *(v281 + 9);
  v286 = v275;
  v287 = v276;
  v288 = v277;
  v289 = v278;
  v282 = v271;
  v283 = v272;
  v284 = v273;
  v285 = v274;
  sub_1000095E8(&v282, &qword_101181120);
  v161 = AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor();
  v162 = *v161;
  v163 = v161[1];
  v164 = v161[2];
  v165 = v161[3];
  v166 = sub_10068F538();

  v167 = v225;
  View.accessibilityIdentifier(_:)(v162, v163, v164, v165, v221, v166);

  sub_1000095E8(v160, &qword_101198FC8);
  v168 = v266;
  v169 = v266[15];
  swift_unknownObjectRetain();
  LOBYTE(v163) = v169(v265, v168);
  swift_unknownObjectRelease();
  v170 = 0;
  if (v163)
  {
    if (qword_10117FBE0 != -1)
    {
      swift_once();
    }

    v170 = qword_101219388;
  }

  KeyPath = swift_getKeyPath();
  v172 = v224;
  sub_10003D17C(v167, v224, &qword_10119D608);
  v173 = v251;
  v174 = (v172 + *(v251 + 36));
  *v174 = KeyPath;
  v174[1] = v170;
  v175 = v172;
  v176 = v223;
  sub_10003D17C(v175, v223, &qword_10119D610);
  v177 = v176;
  v178 = v262;
  sub_10003D17C(v177, v262, &qword_10119D610);
  (*(v250 + 56))(v178, 0, 1, v173);
LABEL_35:
  v179 = v266;
  v180 = v266[13];
  swift_unknownObjectRetain();
  v181 = v265;
  v182 = v180(v265, v179);
  v184 = v183;
  swift_unknownObjectRelease();
  v185 = v263;
  *v263 = v182;
  v185[1] = v184;
  *&v282 = 0x4046000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  *&v282 = 0x403C000000000000;
  ScaledMetric.init(wrappedValue:)();
  swift_unknownObjectRetain();
  v186 = v180(v181, v179);
  swift_unknownObjectRelease();
  if (v186)
  {
    sub_100020438(v186);
  }

  v187 = v186 == 0;
  v188 = swift_getKeyPath();
  v189 = swift_allocObject();
  *(v189 + 16) = v187;
  v190 = v254;
  sub_10068DF34(v263, v254, _s17ContextMenuButtonVMa);
  v191 = (v190 + *(v255 + 36));
  *v191 = v188;
  v191[1] = sub_100239940;
  v191[2] = v189;
  v192 = v264;
  sub_10003D17C(v190, v264, &qword_10119D600);
  v193 = v268;
  if (qword_10117FC08 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v266 = v283;
  v267 = v282;
  v263 = *(&v284 + 1);
  v265 = v284;
  LOBYTE(v271) = 1;
  LOBYTE(v270) = BYTE8(v282);
  v294 = BYTE8(v283);
  v194 = v260;
  sub_1000089F8(v193, v260, &qword_10119D638);
  v195 = v261;
  sub_1000089F8(v269, v261, &qword_101198CC8);
  v196 = v262;
  v197 = v253;
  sub_1000089F8(v262, v253, &qword_10119D618);
  v198 = v256;
  sub_1000089F8(v192, v256, &qword_10119D600);
  v199 = v271;
  LODWORD(v258) = v270;
  LODWORD(v259) = v294;
  v200 = v257;
  sub_1000089F8(v194, v257, &qword_10119D638);
  v201 = sub_10010FC20(&qword_10119D640);
  sub_1000089F8(v195, v200 + v201[12], &qword_101198CC8);
  sub_1000089F8(v197, v200 + v201[16], &qword_10119D618);
  sub_1000089F8(v198, v200 + v201[20], &qword_10119D600);
  v202 = v200 + v201[24];
  *v202 = 0;
  *(v202 + 8) = v199;
  *(v202 + 16) = v267;
  *(v202 + 24) = v258;
  *(v202 + 32) = v266;
  *(v202 + 40) = v259;
  v203 = v264;
  v204 = v263;
  *(v202 + 48) = v265;
  *(v202 + 56) = v204;
  sub_1000095E8(v203, &qword_10119D600);
  sub_1000095E8(v196, &qword_10119D618);
  sub_1000095E8(v269, &qword_101198CC8);
  sub_1000095E8(v268, &qword_10119D638);
  sub_1000095E8(v198, &qword_10119D600);
  sub_1000095E8(v197, &qword_10119D618);
  sub_1000095E8(v261, &qword_101198CC8);
  return sub_1000095E8(v260, &qword_10119D638);
}

void sub_100688FB0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10119CDC0 = v1 == 6;
}

uint64_t sub_10068905C()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 20.0;
  if (byte_10119CDC0)
  {
    v0 = 28.0;
  }

  qword_1012192D8 = *&v0;
  return result;
}

uint64_t sub_1006890C4()
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    static Color.accentColor.getter();
  }

  result = AnyShapeStyle.init<A>(_:)();
  qword_1012192E0 = result;
  return result;
}

uint64_t sub_100689168()
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    sub_10068FB5C();
  }

  result = AnyShapeStyle.init<A>(_:)();
  qword_1012192E8 = result;
  return result;
}

uint64_t sub_100689200()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 4.0;
  }

  qword_1012192F0 = *&v0;
  return result;
}

uint64_t sub_1006892A8()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 12.0;
  }

  qword_101219308 = *&v0;
  return result;
}

uint64_t sub_100689310()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 2.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_101219310 = *&v0;
  return result;
}

uint64_t sub_100689378()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 39.0;
  if (byte_10119CDC0)
  {
    v0 = 34.0;
  }

  qword_101219318 = *&v0;
  return result;
}

uint64_t sub_10068942C(uint64_t a1, void *a2)
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    result = static Font.Weight.regular.getter();
  }

  else
  {
    result = static Font.Weight.semibold.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t sub_10068949C()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 10.0;
  }

  qword_101219330 = *&v0;
  return result;
}

__n128 sub_100689510()
{
  v0 = Corner.small.unsafeMutableAddressor();
  v1 = v0[1].n128_i8[0];
  result = *v0;
  xmmword_101219340 = *v0;
  byte_101219350 = v1;
  return result;
}

uint64_t sub_100689540()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 9.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_101219358 = *&v0;
  return result;
}

uint64_t sub_1006895A8()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_101219360 = *&v0;
  return result;
}

uint64_t sub_10068961C(uint64_t a1, double *a2)
{
  if (qword_10117FB28 != -1)
  {
    v3 = a2;
    result = swift_once();
    a2 = v3;
  }

  v2 = 10.0;
  if (byte_10119CDC0)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100689690()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 17.0;
  if (byte_10119CDC0)
  {
    v0 = 20.0;
  }

  qword_101219370 = *&v0;
  return result;
}

uint64_t sub_100689760(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_10117FB28 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_10119CDC0 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_1006897F0()
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    result = 0;
  }

  else
  {
    v1 = *HI.Color.prominentTextColor.unsafeMutableAddressor();
    result = Color.init(_:)();
  }

  qword_101219388 = result;
  return result;
}

uint64_t sub_100689860()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 44.0;
  if (byte_10119CDC0)
  {
    v0 = 57.0;
  }

  qword_101219390 = *&v0;
  return result;
}

uint64_t sub_1006898D4()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 16.0;
  if (byte_10119CDC0)
  {
    v0 = 9.0;
  }

  qword_101219398 = *&v0;
  return result;
}

uint64_t sub_100689960()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 44.0;
  if (!byte_10119CDC0)
  {
    v0 = 28.0;
  }

  qword_1012193A8 = *&v0;
  return result;
}

uint64_t sub_1006899CC()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 8.0;
  }

  qword_1012193B0 = *&v0;
  return result;
}

uint64_t sub_100689A58()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_1012193C0 = *&v0;
  return result;
}

uint64_t sub_100689AC0()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_10119CFC0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_10010FC20(&qword_10119CFC8);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = sub_10010FC20(&qword_10119CFD0);
  sub_100689DF4(v0, &v8[*(v12 + 44)]);
  v13 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v14 = &v8[*(v6 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v19 = static Edge.Set.vertical.getter();
  type metadata accessor for Tracklist.EmptyCell(0);
  sub_10056CABC(v4);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v2 + 8))(v4, v1);
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10003D17C(v8, v11, &qword_10119CFC0);
  v28 = &v11[*(v9 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = sub_10068D5A0();

  View.accessibilityIdentifier(_:)(v30, v31, v32, v33, v9, v34);

  return sub_1000095E8(v11, &qword_10119CFC8);
}

uint64_t sub_100689DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v337 = a1;
  v317 = a2;
  v2 = sub_10010FC20(&qword_10119CFF8);
  __chkstk_darwin(v2 - 8);
  v318 = &v263 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v316 = &v263 - v5;
  v315 = sub_10010FC20(&qword_10119D000);
  __chkstk_darwin(v315);
  v284 = &v263 - v6;
  v7 = sub_10010FC20(&qword_10119D008);
  __chkstk_darwin(v7 - 8);
  v274 = &v263 - v8;
  v273 = sub_10010FC20(&qword_10119D010);
  __chkstk_darwin(v273);
  v282 = &v263 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v275 = &v263 - v11;
  __chkstk_darwin(v12);
  v283 = &v263 - v13;
  v14 = sub_10010FC20(&qword_10119D018);
  __chkstk_darwin(v14 - 8);
  v305 = &v263 - v15;
  v270 = sub_10010FC20(&qword_10119D020);
  __chkstk_darwin(v270);
  v276 = &v263 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v269 = &v263 - v18;
  __chkstk_darwin(v19);
  v281 = &v263 - v20;
  v311 = sub_10010FC20(&qword_10119D028);
  __chkstk_darwin(v311);
  v313 = &v263 - v21;
  v308 = sub_10010FC20(&qword_10119D030);
  __chkstk_darwin(v308);
  v280 = &v263 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v277 = &v263 - v24;
  v306 = sub_10010FC20(&qword_10119D038);
  __chkstk_darwin(v306);
  v278 = &v263 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v307 = &v263 - v27;
  v285 = sub_10010FC20(&qword_10119D040);
  v268 = *(v285 - 8);
  __chkstk_darwin(v285);
  v266 = (&v263 - v28);
  v29 = sub_10010FC20(&qword_10119D048);
  __chkstk_darwin(v29 - 8);
  v271 = &v263 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v320 = &v263 - v32;
  v33 = sub_10010FC20(&qword_10119D050);
  __chkstk_darwin(v33 - 8);
  v319 = (&v263 - v34);
  v310 = sub_10010FC20(&qword_10119D058);
  __chkstk_darwin(v310);
  v272 = &v263 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v279 = &v263 - v37;
  v38 = sub_10010FC20(&qword_10119D060);
  __chkstk_darwin(v38 - 8);
  v314 = &v263 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v327 = &v263 - v41;
  v42 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v42 - 8);
  v325 = &v263 - v43;
  v44 = sub_10010FC20(&qword_10119D068);
  __chkstk_darwin(v44 - 8);
  v312 = &v263 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v326 = &v263 - v47;
  v302 = sub_10010FC20(&qword_10119D070);
  __chkstk_darwin(v302);
  v329 = &v263 - v48;
  v303 = sub_10010FC20(&qword_10119D078);
  __chkstk_darwin(v303);
  v304 = &v263 - v49;
  v324 = sub_10010FC20(&qword_10119D080);
  v309 = *(v324 - 8);
  __chkstk_darwin(v324);
  v265 = &v263 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v336 = &v263 - v52;
  v300 = sub_10010FC20(&qword_10119D088);
  __chkstk_darwin(v300);
  v334 = &v263 - v53;
  v335 = type metadata accessor for Tracklist.EmptyCell(0);
  v296 = *(v335 - 8);
  __chkstk_darwin(v335);
  v298 = v54;
  v299 = &v263 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_10010FC20(&qword_10119D090);
  __chkstk_darwin(v297);
  v333 = &v263 - v55;
  v338 = type metadata accessor for DynamicTypeSize();
  v328 = *(v338 - 8);
  __chkstk_darwin(v338);
  v267 = &v263 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v289 = &v263 - v58;
  __chkstk_darwin(v59);
  v332 = &v263 - v60;
  __chkstk_darwin(v61);
  v287 = &v263 - v62;
  v293 = sub_10010FC20(&qword_10119D098);
  v286 = *(v293 - 1);
  __chkstk_darwin(v293);
  v64 = &v263 - v63;
  v330 = sub_10010FC20(&qword_10119D0A0);
  __chkstk_darwin(v330);
  v66 = &v263 - v65;
  v288 = sub_10010FC20(&qword_10119D0A8);
  __chkstk_darwin(v288);
  v291 = &v263 - v67;
  v290 = sub_10010FC20(&qword_10119D0B0);
  __chkstk_darwin(v290);
  v292 = &v263 - v68;
  v322 = sub_10010FC20(&qword_10119D0B8);
  v301 = *(v322 - 8);
  __chkstk_darwin(v322);
  v264 = &v263 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v331 = &v263 - v71;
  if (qword_10117FBA8 != -1)
  {
    swift_once();
  }

  v72 = xmmword_101219340;
  v73 = byte_101219350;
  v74 = sub_10068D6E4();
  View.corner(_:)();
  Border.artwork.unsafeMutableAddressor();

  *&v361 = &type metadata for Rectangle;
  *(&v361 + 1) = v74;
  v321 = v74;
  swift_getOpaqueTypeConformance2();
  v323 = *(&v72 + 1);
  v295 = v72;
  v294 = v73;
  v75 = v293;
  View.border(_:corner:)();

  (*(v286 + 1))(v64, v75);
  v293 = objc_opt_self();
  v76 = [v293 tertiarySystemFillColor];
  v77 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v79 = &v66[*(v330 + 36)];
  *v79 = KeyPath;
  v79[1] = v77;
  v80 = *(v335 + 40);
  v81 = v337;
  v82 = v287;
  sub_10056CABC(v287);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  v83 = v338;
  v330 = v80;
  LODWORD(v287) = byte_10119CDC0;
  if (byte_10119CDC0)
  {
    v84 = *(v328 + 8);
    v84(v82, v338);
    v85 = v289;
    sub_10056CABC(v289);
    v84(v85, v83);
  }

  else
  {
    v86 = enum case for DynamicTypeSize.accessibility3(_:);
    v87 = v328;
    v286 = v66;
    v88 = *(v328 + 104);
    v89 = v332;
    v88(v332, enum case for DynamicTypeSize.accessibility3(_:), v338);
    v90 = static DynamicTypeSize.< infix(_:_:)();
    v91 = *(v87 + 8);
    v91(v89, v83);
    v91(v82, v83);
    v92 = 0x4052000000000000;
    if (v90)
    {
      v92 = 0x4048000000000000;
    }

    v263 = v92;
    v93 = v289;
    sub_10056CABC(v289);
    v88(v89, v86, v83);
    static DynamicTypeSize.< infix(_:_:)();
    v91(v89, v83);
    v66 = v286;
    v91(v93, v83);
    v81 = v337;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v94 = v291;
  sub_10003D17C(v66, v291, &qword_10119D0A0);
  v95 = (v94 + *(v288 + 36));
  v96 = v343;
  *v95 = v342;
  v95[1] = v96;
  v95[2] = v344;
  v97 = static Edge.Set.leading.getter();
  if (qword_10117FB98 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v94;
  v107 = v292;
  sub_10003D17C(v106, v292, &qword_10119D0A8);
  v108 = v107 + *(v290 + 36);
  *v108 = v97;
  *(v108 + 8) = v99;
  *(v108 + 16) = v101;
  *(v108 + 24) = v103;
  *(v108 + 32) = v105;
  *(v108 + 40) = 0;
  v109 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v118 = v107;
  v119 = v331;
  sub_10003D17C(v118, v331, &qword_10119D0B0);
  v120 = v119 + *(v322 + 36);
  *v120 = v109;
  *(v120 + 8) = v111;
  *(v120 + 16) = v113;
  *(v120 + 24) = v115;
  *(v120 + 32) = v117;
  *(v120 + 40) = 0;
  v121 = v333;
  View.corner(_:)();
  v122 = v293;
  v123 = [v293 tertiarySystemFillColor];
  v124 = Color.init(_:)();
  v125 = swift_getKeyPath();
  v126 = v300;
  v127 = (v121 + *(v300 + 36));
  *v127 = v125;
  v127[1] = v124;
  v128 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v129 = v81;
  v130 = v299;
  sub_10068DF9C(v129, v299, type metadata accessor for Tracklist.EmptyCell);
  v131 = (*(v296 + 80) + 16) & ~*(v296 + 80);
  v132 = swift_allocObject();
  sub_10068DF34(v130, v132 + v131, type metadata accessor for Tracklist.EmptyCell);
  v133 = (v121 + *(v297 + 36));
  *v133 = v128;
  v133[1] = sub_10068D738;
  v133[2] = v132;
  v134 = v334;
  View.corner(_:)();
  v135 = [v122 tertiarySystemFillColor];
  v136 = Color.init(_:)();
  v137 = swift_getKeyPath();
  v138 = (v134 + *(v126 + 36));
  *v138 = v137;
  v138[1] = v136;
  v139 = Image.init(systemName:)();
  v140 = [v122 tertiarySystemFillColor];
  v141 = Color.init(_:)();
  v142 = swift_getKeyPath();
  v143 = static Font.callout.getter();
  v144 = swift_getKeyPath();
  *&v361 = v139;
  *(&v361 + 1) = v142;
  *&v362 = v141;
  *(&v362 + 1) = v144;
  *&v363 = v143;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&qword_101196750);
  sub_1005963C0();
  v145 = v329;
  View.fontWeight(_:)();

  v146 = &v145[*(v302 + 36)];
  v147 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v148 = enum case for Image.Scale.medium(_:);
  v149 = type metadata accessor for Image.Scale();
  (*(*(v149 - 8) + 104))(v146 + v147, v148, v149);
  *v146 = swift_getKeyPath();
  if (qword_10117FC00 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  v150 = v336;
  v151 = v325;
  v152 = v332;
  v153 = v335;
  v154 = v304;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v329, v154, &qword_10119D070);
  v155 = (v154 + *(v303 + 36));
  v156 = v350;
  v155[4] = v349;
  v155[5] = v156;
  v155[6] = v351;
  v157 = v346;
  *v155 = v345;
  v155[1] = v157;
  v158 = v348;
  v155[2] = v347;
  v155[3] = v158;
  v159 = static Edge.Set.trailing.getter();
  v160 = v337;
  if (qword_10117FC08 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v162 = v161;
  v164 = v163;
  v166 = v165;
  v168 = v167;
  sub_10003D17C(v154, v150, &qword_10119D078);
  v169 = v150 + *(v324 + 36);
  *v169 = v159;
  *(v169 + 8) = v162;
  *(v169 + 16) = v164;
  *(v169 + 24) = v166;
  *(v169 + 32) = v168;
  *(v169 + 40) = 0;
  v323 = *(v153 + 44);
  sub_10056CAE4(v151);
  sub_10056CABC(v152);
  v170 = sub_10068D7BC(v151);
  v171 = v328 + 8;
  v329 = *(v328 + 8);
  (v329)(v152, v338);
  sub_1000095E8(v151, &unk_101184290);
  if (v170)
  {
    v172 = 1;
    v173 = v326;
  }

  else
  {
    v173 = v326;
    sub_1000089F8(v331, v326, &qword_10119D0B8);
    v172 = 0;
  }

  (*(v301 + 56))(v173, v172, 1, v322);
  v174 = *(v160 + 40);
  sub_10056CAE4(v151);
  sub_10056CABC(v152);
  v175 = sub_10068D124(v151, v152, v174);
  v176 = v338;
  v177 = v329;
  (v329)(v152, v338);
  sub_1000095E8(v151, &unk_101184290);
  v321 = v171;
  if (v175)
  {
    v178 = static HorizontalAlignment.leading.getter();
    v179 = v319;
    *v319 = v178;
    v179[1] = 0;
    *(v179 + 16) = 0;
    sub_10056CAE4(v151);
    sub_10056CABC(v152);
    v180 = sub_10068D7BC(v151);
    (v177)(v152, v176);
    sub_1000095E8(v151, &unk_101184290);
    v181 = 1;
    v182 = v285;
    if (v180)
    {
      v183 = static VerticalAlignment.center.getter();
      v184 = v266;
      *v266 = v183;
      *(v184 + 8) = 0;
      *(v184 + 16) = 0;
      v185 = v184 + *(sub_10010FC20(&qword_10119D100) + 44);
      v186 = v264;
      sub_1000089F8(v331, v264, &qword_10119D0B8);
      v187 = v265;
      sub_1000089F8(v336, v265, &qword_10119D080);
      sub_1000089F8(v186, v185, &qword_10119D0B8);
      v188 = sub_10010FC20(&qword_10119D108);
      v189 = v185 + *(v188 + 48);
      *v189 = 0;
      *(v189 + 8) = 1;
      sub_1000089F8(v187, v185 + *(v188 + 64), &qword_10119D080);
      sub_1000095E8(v187, &qword_10119D080);
      sub_1000095E8(v186, &qword_10119D0B8);
      v190 = static Edge.Set.bottom.getter();
      if (qword_10117FBA0 != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v182 = v285;
      v191 = v184 + *(v285 + 36);
      *v191 = v190;
      *(v191 + 8) = v192;
      *(v191 + 16) = v193;
      *(v191 + 24) = v194;
      *(v191 + 32) = v195;
      *(v191 + 40) = 0;
      sub_10003D17C(v184, v320, &qword_10119D040);
      v181 = 0;
    }

    (*(v268 + 56))(v320, v181, 1, v182);
    v196 = sub_10010FC20(&qword_10119D0F0);
    v328 = v319 + *(v196 + 44);
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v197 = v307;
    sub_1000089F8(v333, v307, &qword_10119D090);
    v198 = (v197 + *(v306 + 36));
    v199 = v353;
    *v198 = v352;
    v198[1] = v199;
    v198[2] = v354;
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v322 = v355;
    v305 = v357;
    v306 = v356;
    v304 = *(&v357 + 1);
    v341 = 1;
    v340 = BYTE8(v355);
    v339 = BYTE8(v356);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v200 = v277;
    sub_1000089F8(v334, v277, &qword_10119D088);
    v201 = (v200 + *(v308 + 36));
    v202 = v359;
    *v201 = v358;
    v201[1] = v202;
    v201[2] = v360;
    v203 = v271;
    sub_1000089F8(v320, v271, &qword_10119D048);
    v204 = v197;
    v205 = v278;
    sub_1000089F8(v204, v278, &qword_10119D038);
    v206 = v341;
    v207 = v340;
    v208 = v339;
    v209 = v280;
    sub_1000089F8(v200, v280, &qword_10119D030);
    v210 = v328;
    sub_1000089F8(v203, v328, &qword_10119D048);
    v211 = sub_10010FC20(&qword_10119D0F8);
    sub_1000089F8(v205, v210 + v211[12], &qword_10119D038);
    v212 = v210 + v211[16];
    *v212 = 0;
    *(v212 + 8) = v206;
    *(v212 + 16) = v322;
    *(v212 + 24) = v207;
    v213 = v305;
    *(v212 + 32) = v306;
    *(v212 + 40) = v208;
    v214 = v304;
    *(v212 + 48) = v213;
    *(v212 + 56) = v214;
    sub_1000089F8(v209, v210 + v211[20], &qword_10119D030);
    sub_1000095E8(v200, &qword_10119D030);
    sub_1000095E8(v307, &qword_10119D038);
    sub_1000095E8(v320, &qword_10119D048);
    sub_1000095E8(v209, &qword_10119D030);
    sub_1000095E8(v205, &qword_10119D038);
    sub_1000095E8(v203, &qword_10119D048);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v215 = v272;
    sub_10003D17C(v319, v272, &qword_10119D050);
    v216 = (v215 + *(v310 + 36));
    v217 = v366;
    v216[4] = v365;
    v216[5] = v217;
    v216[6] = v367;
    v218 = v362;
    *v216 = v361;
    v216[1] = v218;
    v219 = v364;
    v216[2] = v363;
    v216[3] = v219;
    v220 = v279;
    sub_10003D17C(v215, v279, &qword_10119D058);
    sub_1000089F8(v220, v313, &qword_10119D058);
    swift_storeEnumTagMultiPayload();
    sub_10068DCFC();
    sub_100020674(&qword_10119D0E0, &qword_10119D000);
    _ConditionalContent<>.init(storage:)();
    v221 = v220;
    v222 = &qword_10119D058;
  }

  else
  {
    v223 = v160 + *(v335 + 32);
    v322 = sub_10010FC20(&qword_10119A070);
    v335 = v223;
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v224 = v305;
    sub_1000089F8(v333, v305, &qword_10119D090);
    v225 = (v224 + *(v306 + 36));
    v226 = v353;
    *v225 = v352;
    v225[1] = v226;
    v225[2] = v354;
    v227 = v267;
    sub_10056CABC(v267);
    if (v287)
    {
      (v329)(v227, v338);
    }

    else
    {
      v228 = enum case for DynamicTypeSize.accessibility3(_:);
      v229 = *(v328 + 104);
      v230 = v332;
      v231 = v338;
      v229(v332, enum case for DynamicTypeSize.accessibility3(_:), v338);
      static DynamicTypeSize.< infix(_:_:)();
      v232 = v329;
      (v329)(v230, v231);
      v229(v230, v228, v231);
      static DynamicTypeSize.< infix(_:_:)();
      (v232)(v230, v231);
      (v232)(v227, v231);
    }

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v233 = v269;
    sub_10003D17C(v305, v269, &qword_10119D018);
    v234 = (v233 + *(v270 + 36));
    v235 = v356;
    *v234 = v355;
    v234[1] = v235;
    v234[2] = v357;
    v236 = v281;
    sub_10003D17C(v233, v281, &qword_10119D020);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v237 = v274;
    sub_1000089F8(v334, v274, &qword_10119D088);
    v238 = (v237 + *(v308 + 36));
    v239 = v359;
    *v238 = v358;
    v238[1] = v239;
    v238[2] = v360;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v240 = v275;
    sub_10003D17C(v237, v275, &qword_10119D008);
    v241 = (v240 + *(v273 + 36));
    v242 = v366;
    v241[4] = v365;
    v241[5] = v242;
    v241[6] = v367;
    v243 = v362;
    *v241 = v361;
    v241[1] = v243;
    v244 = v364;
    v241[2] = v363;
    v241[3] = v244;
    v245 = v283;
    sub_10003D17C(v240, v283, &qword_10119D010);
    v246 = v276;
    sub_1000089F8(v236, v276, &qword_10119D020);
    v247 = v282;
    sub_1000089F8(v245, v282, &qword_10119D010);
    v248 = v284;
    sub_1000089F8(v246, v284, &qword_10119D020);
    v249 = sub_10010FC20(&qword_10119D0C8);
    sub_1000089F8(v247, v248 + *(v249 + 48), &qword_10119D010);
    sub_1000095E8(v247, &qword_10119D010);
    sub_1000095E8(v246, &qword_10119D020);
    sub_1000089F8(v248, v313, &qword_10119D000);
    swift_storeEnumTagMultiPayload();
    sub_10068DCFC();
    sub_100020674(&qword_10119D0E0, &qword_10119D000);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v248, &qword_10119D000);
    sub_1000095E8(v245, &qword_10119D010);
    v221 = v236;
    v222 = &qword_10119D020;
  }

  sub_1000095E8(v221, v222);
  v250 = v325;
  sub_10056CAE4(v325);
  v251 = v332;
  sub_10056CABC(v332);
  v252 = sub_10068D7BC(v250);
  (v329)(v251, v338);
  sub_1000095E8(v250, &unk_101184290);
  if (v252)
  {
    v253 = 1;
    v254 = v316;
  }

  else
  {
    v254 = v316;
    sub_1000089F8(v336, v316, &qword_10119D080);
    v253 = 0;
  }

  (*(v309 + 56))(v254, v253, 1, v324);
  v255 = v326;
  v256 = v312;
  sub_1000089F8(v326, v312, &qword_10119D068);
  v257 = v327;
  v258 = v314;
  sub_1000089F8(v327, v314, &qword_10119D060);
  v259 = v318;
  sub_1000089F8(v254, v318, &qword_10119CFF8);
  v260 = v317;
  sub_1000089F8(v256, v317, &qword_10119D068);
  v261 = sub_10010FC20(&qword_10119D0E8);
  sub_1000089F8(v258, v260 + *(v261 + 48), &qword_10119D060);
  sub_1000089F8(v259, v260 + *(v261 + 64), &qword_10119CFF8);
  sub_1000095E8(v254, &qword_10119CFF8);
  sub_1000095E8(v257, &qword_10119D060);
  sub_1000095E8(v255, &qword_10119D068);
  sub_1000095E8(v259, &qword_10119CFF8);
  sub_1000095E8(v258, &qword_10119D060);
  sub_1000095E8(v256, &qword_10119D068);
  sub_1000095E8(v336, &qword_10119D080);
  sub_1000095E8(v334, &qword_10119D088);
  sub_1000095E8(v333, &qword_10119D090);
  return sub_1000095E8(v331, &qword_10119D0B8);
}

double sub_10068C390()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = 0.0;
  if (*v0 == 1)
  {
    type metadata accessor for Tracklist.EmptyCell(0);
    sub_10056CAE4(v10);
    sub_10056CABC(v7);
    v12 = sub_10068D7BC(v10);
    v13 = *(v2 + 8);
    v13(v7, v1);
    sub_1000095E8(v10, &unk_101184290);
    if ((v12 & 1) == 0)
    {
      sub_10056CABC(v4);
      if (qword_10117FB28 != -1)
      {
        swift_once();
      }

      if (byte_10119CDC0)
      {
        v13(v4, v1);
        v14 = 48.0;
      }

      else
      {
        (*(v2 + 104))(v7, enum case for DynamicTypeSize.accessibility3(_:), v1);
        v15 = static DynamicTypeSize.< infix(_:_:)();
        v13(v7, v1);
        v13(v4, v1);
        v14 = 72.0;
        if (v15)
        {
          v14 = 48.0;
        }
      }

      return -12.0 - v14;
    }
  }

  return v11;
}

uint64_t sub_10068C630@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v35 = a1;
  v36 = a5;
  v7 = a2 & 0x100;
  v33 = sub_10010FC20(&qword_10119D880);
  __chkstk_darwin(v33);
  v9 = v32 - v8;
  v10 = sub_10010FC20(&qword_10119D888);
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = sub_10010FC20(&qword_10119D890);
  __chkstk_darwin(v13);
  v15 = v32 - v14;
  v16 = sub_10010FC20(&qword_10119D898);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  if ((a2 ^ (v7 >> 8)))
  {
    v32[1] = v10;
    if (v34)
    {
      v19 = sub_10010FC20(&qword_10119D8A0);
      (*(*(v19 - 8) + 16))(v9, v35, v19);
      swift_storeEnumTagMultiPayload();
      sub_100690790();
      sub_100020674(&qword_10119D8B0, &qword_10119D8A0);
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v26 = a3;
      v27 = static HorizontalAlignment.listRowSeparatorLeading.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v29 = sub_10010FC20(&qword_10119D8A0);
      (*(*(v29 - 8) + 16))(v18, v35, v29);
      v30 = &v18[*(v16 + 36)];
      *v30 = v27;
      v30[1] = sub_100690900;
      v30[2] = v28;
      sub_1000089F8(v18, v9, &qword_10119D898);
      swift_storeEnumTagMultiPayload();
      sub_100690790();
      sub_100020674(&qword_10119D8B0, &qword_10119D8A0);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v18, &qword_10119D898);
    }

    sub_1000089F8(v12, v15, &qword_10119D888);
    swift_storeEnumTagMultiPayload();
    sub_100690790();
    sub_100690848();
    _ConditionalContent<>.init(storage:)();
    v24 = v12;
    v25 = &qword_10119D888;
  }

  else
  {
    v20 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = a2 & 1;
    *(v21 + 17) = BYTE1(v7);
    *(v21 + 24) = a3;
    *(v21 + 32) = v34 & 1;
    v22 = sub_10010FC20(&qword_10119D8A0);
    (*(*(v22 - 8) + 16))(v18, v35, v22);
    v23 = &v18[*(v16 + 36)];
    *v23 = v20;
    v23[1] = sub_100690734;
    v23[2] = v21;
    sub_1000089F8(v18, v15, &qword_10119D898);
    swift_storeEnumTagMultiPayload();
    sub_100690790();
    sub_100690848();
    _ConditionalContent<>.init(storage:)();
    v24 = v18;
    v25 = &qword_10119D898;
  }

  return sub_1000095E8(v24, v25);
}

uint64_t sub_10068CB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10068C630(a1, v3 | *v2, *(v2 + 1), v2[16], a2);
}

uint64_t sub_10068CB78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  EnvironmentValues.colorScheme.getter();
  (*(v7 + 104))(v9, enum case for ColorScheme.light(_:), v6);
  static ColorScheme.== infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  result = Color.init(_:red:green:blue:opacity:)();
  *a1 = result;
  return result;
}

void sub_10068CDA4()
{
  type metadata accessor for ObservedObject();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MusicLibrary.ItemState();
    swift_getWitnessTable();
    type metadata accessor for ObservedObject();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MusicItemState();
      swift_getWitnessTable();
      type metadata accessor for ObservedObject();
      if (v2 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100237820();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10068D008()
{
  sub_100402A50();
  if (v0 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100237820();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10068D124(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101185768);
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  v13 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v13 - 8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v25 - v17;
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    goto LABEL_15;
  }

  v25[1] = a2;
  (*(v7 + 104))(v18, enum case for UserInterfaceSizeClass.compact(_:), v6);
  (*(v7 + 56))(v18, 0, 1, v6);
  v19 = *(v10 + 48);
  sub_1000089F8(a1, v12, &unk_101184290);
  sub_1000089F8(v18, &v12[v19], &unk_101184290);
  v20 = *(v7 + 48);
  if (v20(v12, 1, v6) == 1)
  {
    sub_1000095E8(v18, &unk_101184290);
    if (v20(&v12[v19], 1, v6) == 1)
    {
      sub_1000095E8(v12, &unk_101184290);
LABEL_15:
      v21 = 1;
      return v21 & 1;
    }

    goto LABEL_9;
  }

  sub_1000089F8(v12, v15, &unk_101184290);
  if (v20(&v12[v19], 1, v6) == 1)
  {
    sub_1000095E8(v18, &unk_101184290);
    (*(v7 + 8))(v15, v6);
LABEL_9:
    sub_1000095E8(v12, &qword_101185768);
    goto LABEL_10;
  }

  (*(v7 + 32))(v9, &v12[v19], v6);
  sub_10068DDB4(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v7 + 8);
  v23(v9, v6);
  sub_1000095E8(v18, &unk_101184290);
  v23(v15, v6);
  sub_1000095E8(v12, &unk_101184290);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (qword_10117FB30 != -1)
  {
    swift_once();
  }

  if (*&qword_1012192C8 > a3)
  {
    goto LABEL_15;
  }

  v21 = DynamicTypeSize.isAccessibilitySize.getter();
  return v21 & 1;
}

unint64_t sub_10068D5A0()
{
  result = qword_10119CFD8;
  if (!qword_10119CFD8)
  {
    sub_1001109D0(&qword_10119CFC8);
    sub_10068D62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CFD8);
  }

  return result;
}

unint64_t sub_10068D62C()
{
  result = qword_10119CFE0;
  if (!qword_10119CFE0)
  {
    sub_1001109D0(&qword_10119CFC0);
    sub_100020674(&qword_10119CFE8, &qword_10119CFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CFE0);
  }

  return result;
}

unint64_t sub_10068D6E4()
{
  result = qword_10119D0C0;
  if (!qword_10119D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D0C0);
  }

  return result;
}

double sub_10068D738()
{
  type metadata accessor for Tracklist.EmptyCell(0);
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return v0 + sub_10068C390();
}

uint64_t sub_10068D7BC(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101185768);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for DynamicTypeSize();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if ((byte_10119CDC0 & 1) == 0)
  {
    (*(v14 + 104))(v16, enum case for DynamicTypeSize.accessibility3(_:), v13);
    sub_10068DDB4(&qword_1011810B0, &type metadata accessor for DynamicTypeSize);
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v14 + 8))(v16, v13);
    if ((v17 & 1) == 0)
    {
      v20 = v25;
      (*(v25 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
      (*(v20 + 56))(v12, 0, 1, v1);
      v21 = *(v4 + 48);
      sub_1000089F8(v24, v6, &unk_101184290);
      sub_1000089F8(v12, &v6[v21], &unk_101184290);
      v22 = *(v20 + 48);
      if (v22(v6, 1, v1) == 1)
      {
        sub_1000095E8(v12, &unk_101184290);
        if (v22(&v6[v21], 1, v1) == 1)
        {
          sub_1000095E8(v6, &unk_101184290);
          v18 = 1;
          return v18 & 1;
        }
      }

      else
      {
        sub_1000089F8(v6, v9, &unk_101184290);
        if (v22(&v6[v21], 1, v1) != 1)
        {
          (*(v20 + 32))(v3, &v6[v21], v1);
          sub_10068DDB4(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
          v18 = dispatch thunk of static Equatable.== infix(_:_:)();
          v23 = *(v20 + 8);
          v23(v3, v1);
          sub_1000095E8(v12, &unk_101184290);
          v23(v9, v1);
          sub_1000095E8(v6, &unk_101184290);
          return v18 & 1;
        }

        sub_1000095E8(v12, &unk_101184290);
        (*(v20 + 8))(v9, v1);
      }

      sub_1000095E8(v6, &qword_101185768);
      v18 = 0;
      return v18 & 1;
    }
  }

  v18 = 0;
  return v18 & 1;
}

unint64_t sub_10068DCFC()
{
  result = qword_10119D0D0;
  if (!qword_10119D0D0)
  {
    sub_1001109D0(&qword_10119D058);
    sub_100020674(&qword_10119D0D8, &qword_10119D050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D0D0);
  }

  return result;
}

uint64_t sub_10068DDB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068DF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10068DF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10068E004()
{
  result = qword_10119D148;
  if (!qword_10119D148)
  {
    sub_1001109D0(&qword_10119D110);
    sub_10068DDB4(&qword_10119D150, type metadata accessor for Tracklist.Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D148);
  }

  return result;
}

unint64_t sub_10068E0B8()
{
  result = qword_10119D158;
  if (!qword_10119D158)
  {
    sub_1001109D0(&qword_10119D118);
    sub_10068DDB4(&qword_10119D160, type metadata accessor for Tracklist.LeadingNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D158);
  }

  return result;
}

unint64_t sub_10068E16C()
{
  result = qword_10119D168;
  if (!qword_10119D168)
  {
    sub_1001109D0(&qword_10119D120);
    sub_10068E1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D168);
  }

  return result;
}

unint64_t sub_10068E1F0()
{
  result = qword_10119D170;
  if (!qword_10119D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D170);
  }

  return result;
}

uint64_t sub_10068E244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10068E2BC()
{
  result = qword_10119D178;
  if (!qword_10119D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D178);
  }

  return result;
}

unint64_t sub_10068E310()
{
  result = qword_10119D180;
  if (!qword_10119D180)
  {
    sub_1001109D0(&qword_10119D128);
    sub_10068E39C();
    sub_10068E2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D180);
  }

  return result;
}

unint64_t sub_10068E39C()
{
  result = qword_10119D188;
  if (!qword_10119D188)
  {
    sub_1001109D0(&qword_10119D190);
    sub_100020674(&qword_10119D198, &qword_10119D1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D188);
  }

  return result;
}

unint64_t sub_10068E44C()
{
  result = qword_10119D1A8;
  if (!qword_10119D1A8)
  {
    sub_1001109D0(&qword_10119D130);
    sub_100617DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D1A8);
  }

  return result;
}

unint64_t sub_10068E504()
{
  result = qword_10119D1B0;
  if (!qword_10119D1B0)
  {
    sub_1001109D0(&qword_10119D138);
    sub_100020674(&qword_10119D1B8, &qword_10119D1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D1B0);
  }

  return result;
}

void sub_10068E5B4()
{
  type metadata accessor for ObservedObject();
  if (v0 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10068E6C0()
{
  type metadata accessor for ObservedObject();
  if (v0 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10068E7AC()
{
  type metadata accessor for ObservedObject();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MusicLibrary.ItemState();
    swift_getWitnessTable();
    type metadata accessor for ObservedObject();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MusicItemState();
      swift_getWitnessTable();
      type metadata accessor for ObservedObject();
      if (v2 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100237820();
          if (v4 <= 0x3F)
          {
            sub_100402A50();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10068E9B0()
{
  sub_1000308A0(319, &qword_10118FC40);
  if (v0 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100402A50();
      if (v2 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100237820();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10068EB2C()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_101195CF8, &type metadata accessor for SocialProfile, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10118FC40);
      if (v2 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10068ECE0(319, &unk_1011954D0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10068ECE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10068ED6C()
{
  sub_1000308A0(319, &unk_10119D518);
  if (v0 <= 0x3F)
  {
    sub_100402A50();
    if (v1 <= 0x3F)
    {
      sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10068EE74()
{
  result = qword_10119D560;
  if (!qword_10119D560)
  {
    sub_1001109D0(&qword_10119D568);
    sub_10068D5A0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D560);
  }

  return result;
}

unint64_t sub_10068EF34()
{
  result = qword_10119D570;
  if (!qword_10119D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D570);
  }

  return result;
}

unint64_t sub_10068F0F0()
{
  result = qword_10119D5C8;
  if (!qword_10119D5C8)
  {
    sub_1001109D0(&qword_10119D5A8);
    sub_10068F174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5C8);
  }

  return result;
}

unint64_t sub_10068F174()
{
  result = qword_10119D5D0;
  if (!qword_10119D5D0)
  {
    sub_1001109D0(&qword_10119D5D8);
    sub_10023B9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5D0);
  }

  return result;
}

unint64_t sub_10068F200()
{
  result = qword_10119D5E0;
  if (!qword_10119D5E0)
  {
    sub_1001109D0(&qword_10119D5B8);
    sub_1001109D0(&qword_10119D5A8);
    sub_10068F0F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5E0);
  }

  return result;
}

void sub_10068F2DC()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
    static DynamicTypeSize.< infix(_:_:)();
    (*(v1 + 8))(v3, v0);
  }
}

unint64_t sub_10068F470()
{
  result = qword_10119D5F0;
  if (!qword_10119D5F0)
  {
    sub_1001109D0(&qword_10119D590);
    sub_1001109D0(&qword_1011860D0);
    sub_10023BB90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5F0);
  }

  return result;
}

unint64_t sub_10068F538()
{
  result = qword_101198FD0;
  if (!qword_101198FD0)
  {
    sub_1001109D0(&qword_101198FC8);
    sub_100119518();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FD0);
  }

  return result;
}

unint64_t sub_10068F5F4()
{
  result = qword_10119D680;
  if (!qword_10119D680)
  {
    sub_1001109D0(&qword_10119D678);
    sub_10068F680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D680);
  }

  return result;
}

unint64_t sub_10068F680()
{
  result = qword_10119D688;
  if (!qword_10119D688)
  {
    sub_1001109D0(&qword_10119D670);
    sub_10068F70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D688);
  }

  return result;
}

unint64_t sub_10068F70C()
{
  result = qword_10119D690;
  if (!qword_10119D690)
  {
    sub_1001109D0(&qword_10119D668);
    sub_10068F798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D690);
  }

  return result;
}

unint64_t sub_10068F798()
{
  result = qword_10119D698;
  if (!qword_10119D698)
  {
    sub_1001109D0(&qword_10119D660);
    sub_10068F824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D698);
  }

  return result;
}

unint64_t sub_10068F824()
{
  result = qword_10119D6A0;
  if (!qword_10119D6A0)
  {
    sub_1001109D0(&qword_10119D658);
    sub_10068F8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6A0);
  }

  return result;
}

unint64_t sub_10068F8A8()
{
  result = qword_10119D6A8;
  if (!qword_10119D6A8)
  {
    sub_1001109D0(&qword_10119D6B0);
    sub_10068F92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6A8);
  }

  return result;
}

unint64_t sub_10068F92C()
{
  result = qword_10119D6B8;
  if (!qword_10119D6B8)
  {
    sub_1001109D0(&qword_10119D6C0);
    sub_10068F9E8();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6B8);
  }

  return result;
}

unint64_t sub_10068F9E8()
{
  result = qword_10119D6C8;
  if (!qword_10119D6C8)
  {
    sub_1001109D0(&qword_10119D6D0);
    sub_10068FAA4();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6C8);
  }

  return result;
}

unint64_t sub_10068FAA4()
{
  result = qword_10119D6D8;
  if (!qword_10119D6D8)
  {
    sub_1001109D0(&qword_10119D6E0);
    sub_100238768();
    sub_100020674(&qword_101185BE0, &qword_101185BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6D8);
  }

  return result;
}

unint64_t sub_10068FB5C()
{
  result = qword_10119D6F0;
  if (!qword_10119D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6F0);
  }

  return result;
}

unint64_t sub_10068FBB0()
{
  result = qword_10119D770;
  if (!qword_10119D770)
  {
    sub_1001109D0(&qword_10119D738);
    sub_10023C2D8();
    sub_100020674(&qword_101198EB0, &qword_101198E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D770);
  }

  return result;
}

unint64_t sub_10068FC68()
{
  result = qword_10119D778;
  if (!qword_10119D778)
  {
    sub_1001109D0(&qword_10119D758);
    sub_1001109D0(&qword_10119D748);
    sub_1001109D0(&qword_10119D740);
    sub_1001109D0(&qword_10119D738);
    sub_10068FBB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D778);
  }

  return result;
}

unint64_t sub_10068FDE0()
{
  result = qword_10119D780;
  if (!qword_10119D780)
  {
    sub_1001109D0(&qword_10119D760);
    sub_10068FC68();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D780);
  }

  return result;
}

unint64_t sub_10068FE9C()
{
  result = qword_10119D790;
  if (!qword_10119D790)
  {
    sub_1001109D0(&qword_10119D768);
    sub_10068FDE0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D790);
  }

  return result;
}

unint64_t sub_10068FF58()
{
  result = qword_10119D7A8;
  if (!qword_10119D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7A8);
  }

  return result;
}

unint64_t sub_10068FFAC()
{
  result = qword_10119D7B0;
  if (!qword_10119D7B0)
  {
    sub_1001109D0(&qword_10119D710);
    sub_1001109D0(&qword_10119D708);
    sub_1001109D0(&qword_10119D700);
    sub_10068FF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7B0);
  }

  return result;
}

unint64_t sub_1006900E4()
{
  result = qword_10119D7F0;
  if (!qword_10119D7F0)
  {
    sub_1001109D0(&qword_10119D7E8);
    sub_1006901A0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7F0);
  }

  return result;
}

unint64_t sub_1006901A0()
{
  result = qword_10119D7F8;
  if (!qword_10119D7F8)
  {
    sub_1001109D0(&qword_10119D7E0);
    sub_10069025C();
    sub_10068DDB4(&qword_10119D840, type metadata accessor for DancingPlaybackBarsConditionalModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7F8);
  }

  return result;
}

unint64_t sub_10069025C()
{
  result = qword_10119D800;
  if (!qword_10119D800)
  {
    sub_1001109D0(&qword_10119D7D8);
    sub_100690318();
    sub_10068DDB4(&qword_10119D838, type metadata accessor for PreviewOverlay.TrackNumberVariant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D800);
  }

  return result;
}

unint64_t sub_100690318()
{
  result = qword_10119D808;
  if (!qword_10119D808)
  {
    sub_1001109D0(&qword_10119D810);
    sub_10069039C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D808);
  }

  return result;
}

unint64_t sub_10069039C()
{
  result = qword_10119D818;
  if (!qword_10119D818)
  {
    sub_1001109D0(&qword_10119D820);
    sub_100690428();
    sub_100617DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D818);
  }

  return result;
}

unint64_t sub_100690428()
{
  result = qword_10119D828;
  if (!qword_10119D828)
  {
    sub_1001109D0(&qword_10119D830);
    sub_1001195A4();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D828);
  }

  return result;
}

unint64_t sub_1006904E4()
{
  result = qword_10119D868;
  if (!qword_10119D868)
  {
    sub_1001109D0(&qword_10119D850);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D868);
  }

  return result;
}

unint64_t sub_1006905E0()
{
  result = qword_10119D870;
  if (!qword_10119D870)
  {
    sub_1001109D0(&qword_10119D860);
    sub_10069066C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D870);
  }

  return result;
}

unint64_t sub_10069066C()
{
  result = qword_10119D878;
  if (!qword_10119D878)
  {
    sub_1001109D0(&qword_10119D858);
    sub_1001109D0(&qword_10119D850);
    sub_1006904E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D878);
  }

  return result;
}

double sub_100690734()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  v4 = 0.0;
  if ((v2 & 1) == 0)
  {
    v4 = v1;
  }

  return v4 + v3;
}

unint64_t sub_100690790()
{
  result = qword_10119D8A8;
  if (!qword_10119D8A8)
  {
    sub_1001109D0(&qword_10119D898);
    sub_100020674(&qword_10119D8B0, &qword_10119D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D8A8);
  }

  return result;
}

unint64_t sub_100690848()
{
  result = qword_10119D8B8;
  if (!qword_10119D8B8)
  {
    sub_1001109D0(&qword_10119D888);
    sub_100690790();
    sub_100020674(&qword_10119D8B0, &qword_10119D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D8B8);
  }

  return result;
}

double sub_100690900()
{
  v1 = *(v0 + 16);
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return v1 + v2;
}

unint64_t sub_10069093C()
{
  result = qword_10119D8D8;
  if (!qword_10119D8D8)
  {
    sub_1001109D0(&qword_10119D8C8);
    sub_10068F200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D8D8);
  }

  return result;
}

unint64_t sub_1006909C8()
{
  result = qword_10119D948;
  if (!qword_10119D948)
  {
    sub_1001109D0(&qword_10119D928);
    sub_100020674(&qword_10119D950, &qword_10119D900);
    sub_100020674(&qword_10119D958, &qword_10119D8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D948);
  }

  return result;
}

unint64_t sub_100690AA8()
{
  result = qword_10119D960;
  if (!qword_10119D960)
  {
    sub_1001109D0(&qword_10119D940);
    sub_100690B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D960);
  }

  return result;
}

unint64_t sub_100690B34()
{
  result = qword_10119D968;
  if (!qword_10119D968)
  {
    sub_1001109D0(&qword_10119D8D0);
    sub_10069093C();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D968);
  }

  return result;
}

unint64_t sub_100690BF0()
{
  result = qword_10119D980;
  if (!qword_10119D980)
  {
    sub_1001109D0(&qword_10119D978);
    sub_10023BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D980);
  }

  return result;
}

unint64_t sub_100690C8C()
{
  result = qword_10119D990;
  if (!qword_10119D990)
  {
    sub_1001109D0(&qword_10119D588);
    sub_100020674(&qword_10119D998, &qword_10119D578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D990);
  }

  return result;
}

unint64_t sub_100690D44()
{
  result = qword_10119D9B0;
  if (!qword_10119D9B0)
  {
    sub_1001109D0(&qword_10119D9B8);
    sub_10068F5F4();
    sub_100617DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9B0);
  }

  return result;
}

unint64_t sub_100690DD0()
{
  result = qword_10119D9C0;
  if (!qword_10119D9C0)
  {
    sub_1001109D0(&qword_10119D730);
    sub_100020674(&qword_10119D788, &qword_10119D728);
    sub_10068FE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9C0);
  }

  return result;
}

unint64_t sub_100690E88()
{
  result = qword_10119D9C8;
  if (!qword_10119D9C8)
  {
    sub_1001109D0(&qword_10119D7C8);
    sub_100690F40();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9C8);
  }

  return result;
}

unint64_t sub_100690F40()
{
  result = qword_10119D9D0;
  if (!qword_10119D9D0)
  {
    sub_1001109D0(&qword_10119D7C0);
    sub_100690FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9D0);
  }

  return result;
}

unint64_t sub_100690FC4()
{
  result = qword_10119D9D8;
  if (!qword_10119D9D8)
  {
    sub_1001109D0(&qword_10119D9E0);
    sub_1006900E4();
    sub_10068F538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9D8);
  }

  return result;
}

unint64_t sub_100691050()
{
  result = qword_10119D9E8;
  if (!qword_10119D9E8)
  {
    sub_1001109D0(&qword_10119D9F0);
    sub_1006905E0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9E8);
  }

  return result;
}

unint64_t sub_10069110C()
{
  result = qword_10119D9F8;
  if (!qword_10119D9F8)
  {
    sub_1001109D0(&qword_10119DA00);
    sub_100690790();
    sub_100690848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9F8);
  }

  return result;
}

NSString sub_1006911BC()
{
  result = String._bridgeToObjectiveC()();
  qword_1012193C8 = result;
  return result;
}

NSString sub_1006911F4()
{
  result = String._bridgeToObjectiveC()();
  qword_1012193D0 = result;
  return result;
}

NSString sub_10069122C()
{
  result = String._bridgeToObjectiveC()();
  qword_1012193D8 = result;
  return result;
}

id sub_100691398()
{
  v2.receiver = v0;
  v2.super_class = _s8ActivityCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t TabIdentifier.musicTabID.getter@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v3 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v3 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a2 = 0x7473696C79616C70;
      a2[1] = 0xE900000000000073;
      v3 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (a1 == 3)
  {
    v3 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v3 = &enum case for MusicTabID.search(_:);
  }

  v4 = *v3;
  v5 = type metadata accessor for MusicTabID();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_100691570()
{
  sub_100009838();
  v0 = StringProtocol.capitalized.getter();

  return v0;
}

uint64_t sub_100691690@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO0A0E05musicC2IDACSg0A2UI0acF0O_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t _s9MusicCore13TabIdentifierO0A0E05musicC2IDACSg0A2UI0acF0O_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for MusicTabID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for MusicTabID.listenNow(_:))
  {
    return 1;
  }

  if (v4 == enum case for MusicTabID.browse(_:))
  {
    return 2;
  }

  if (v4 == enum case for MusicTabID.videos(_:))
  {
    return 5;
  }

  if (v4 == enum case for MusicTabID.radio(_:))
  {
    return 3;
  }

  if (v4 == enum case for MusicTabID.library(_:))
  {
    return 0;
  }

  if (v4 == enum case for MusicTabID.search(_:))
  {
    return 4;
  }

  (*(v3 + 8))(a1, v2);
  return 7;
}

uint64_t sub_10069180C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100691878()
{
  result = qword_10119DA88;
  if (!qword_10119DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DA88);
  }

  return result;
}

uint64_t sub_1006918DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  v5 = (a2 + v4[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4[7];
  State.init(wrappedValue:)();
  *v6 = v15;
  *(v6 + 8) = v16;
  v7 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v7 = v15;
  *(v7 + 8) = v16;
  v8 = a2 + v4[9];
  State.init(wrappedValue:)();
  *v8 = v15;
  *(v8 + 8) = v16;
  v9 = a2 + v4[10];
  State.init(wrappedValue:)();
  *v9 = v15;
  *(v9 + 8) = v16;
  sub_10069B540(a1, a2, type metadata accessor for SharePlayProxCard.ViewModel);
  v10 = (a2 + v4[5]);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_100693494();
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  result = sub_10069B35C(a1, type metadata accessor for SharePlayProxCard.ViewModel);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

void sub_100691A64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100691BD4();
  }
}

void sub_100691AB8(uint64_t a1)
{
  v1 = (a1 + qword_10119DAA0);
  *v1 = 0;
  v1[1] = 0;
  v2 = (a1 + qword_10119DAA8);
  *v2 = 0;
  v2[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100691B34(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a3);
  v5 = *&v4[qword_10119DAA8];
  if (v5)
  {

    v5(v6);

    sub_100020438(v5);
  }

  else
  {
  }
}

uint64_t sub_100691BD4()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = &v0[qword_10119DA98];
  if (v0[qword_10119DA98 + 72] == 1)
  {
    v7 = qword_10119DA90;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v9 = v26;
    v8 = v27;

    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v12 = v26;
      v11 = v27;
    }

    else
    {
      v15 = &v6[*(type metadata accessor for SharePlayProxCard.ViewModel(0) + 48)];
      v11 = v15[1];
      if (v11)
      {
        v12 = *v15;
      }

      else
      {
        v12 = 0;
        v11 = 0xE000000000000000;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 1;

    static Published.subscript.setter();
    if (*(*&v1[v7] + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage))
    {
      v16 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v16 = v26;
      if (!v26)
      {
        v16 = *&v6[*(type metadata accessor for SharePlayProxCard.ViewModel(0) + 44)];
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v16 = 1;
        }
      }
    }

    if (qword_10117F6B0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218BD8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating user profile", v21, 2u);
    }

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    type metadata accessor for MainActor();

    sub_10069B3BC(v16);
    v23 = v1;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = &protocol witness table for MainActor;
    *(v25 + 32) = v12;
    *(v25 + 40) = v11;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = v16;
    *(v25 + 72) = 513;
    *(v25 + 80) = v23;
    sub_1001F4CB8(0, 0, v5, &unk_100EDCE30, v25);

    sub_10040DEF8(v16);
  }

  else
  {
    v13 = *&v0[qword_10119DAA0];
    if (v13)
    {
      v14 = v6[*(type metadata accessor for SharePlayProxCard.ViewModel(0) + 56)];

      v13(v0, v14);

      return sub_100020438(v13);
    }
  }

  return result;
}

uint64_t sub_100692080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  type metadata accessor for Locale();
  v5[3] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[4] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1006921DC;

  return sub_10040CEDC(a4, 1);
}

uint64_t sub_1006921DC()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100692464;
  }

  else
  {
    v4 = sub_100692338;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100692338()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_1001F4F78(0, 0, v1, &unk_100EDCE48, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100692464()
{

  if (qword_10117F6B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218BD8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update user profile %{public}@", v4, 0xCu);
    sub_1000095E8(v5, &unk_101183D70);
  }

  v7 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;

  static Published.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v8 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() actionWithTitle:v10 style:0 handler:0];

  [v9 addAction:v11];
  [v7 presentViewController:v9 animated:1 completion:0];

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1006927D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100692870, v6, v5);
}

uint64_t sub_100692870()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + qword_10119DAA0);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = v3 + qword_10119DA98;
    v5 = *(v4 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 56));

    v2(v3, v5);
    sub_100020438(v2);
  }

  **(v0 + 16) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100692978()
{

  sub_10069B35C(v0 + qword_10119DA98, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_100020438(*(v0 + qword_10119DAA0));
  v1 = *(v0 + qword_10119DAA8);

  return sub_100020438(v1);
}

id sub_1006929F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100692A2C(uint64_t a1)
{

  sub_10069B35C(a1 + qword_10119DA98, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_100020438(*(a1 + qword_10119DAA0));
  v2 = *(a1 + qword_10119DAA8);

  return sub_100020438(v2);
}

uint64_t sub_100692AD4()
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100692BA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100692C1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100692C90(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v3 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {

    *(v1 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 0;
  }
}

uint64_t sub_100692D70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100692DE4()
{
  v1 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__name;
  v2 = sub_10010FC20(&qword_101184258);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__image;
  v4 = sub_10010FC20(&unk_101184260);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__isLoading;
  v6 = sub_10010FC20(&unk_101189E60);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_100692F4C()
{
  sub_10000542C(319, &qword_101187AF8, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_100052C90(319, &qword_101192F38, &qword_101184460, &unk_100EDACF0, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_10000542C(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1006930F4()
{
  sub_100693230(319, &qword_1011A4570, &type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_100693230(319, qword_101186C38, sub_1005F049C);
    if (v1 <= 0x3F)
    {
      sub_10000542C(319, &qword_10118F6F0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100693230(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1006932E8()
{
  type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_100693430();
    if (v1 <= 0x3F)
    {
      sub_100052C90(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000542C(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10000542C(319, &unk_10119DEE8, &type metadata for ImagePicker.SourceType, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}