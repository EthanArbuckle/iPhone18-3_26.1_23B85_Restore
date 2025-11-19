uint64_t sub_1005BD824(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext;
  v8 = *(result + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
  v9 = v8 != 2 && (v8 & 1) == 0;
  if (!v9 && (swift_beginAccess(), v10 = *(a1 + 64), *(v10 + 16)) && (v11 = sub_1006CCC5C(1), (v12 & 1) != 0))
  {
    sub_10000DD18(*(v10 + 56) + 32 * v11, &v41);
    sub_10010FC20(&qword_101196F88);
    v13 = swift_dynamicCast();
    v14 = v40[0];
    if (!v13)
    {
      v14 = 0;
    }

    v38 = v14;
  }

  else
  {
    v38 = 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 64);
  if (*(v15 + 16) && (v16 = sub_1006CCC5C(0), (v17 & 1) != 0))
  {
    sub_10000DD18(*(v15 + 56) + 32 * v16, &v41);
    v18 = type metadata accessor for LibraryImport.ViewModel(0);
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v4, v19 ^ 1u, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for LibraryImport.ViewModel(0);
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  }

  v21 = *(a1 + 64);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = sub_1006CCC5C(2);
  if ((v24 & 1) == 0 || (sub_10000DD18(*(v21 + 56) + 32 * v23, v40), !swift_dynamicCast()))
  {
    v22 = 0;
LABEL_21:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_22;
  }

  v22 = v41;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v29 = v45;
  v28 = v46;
LABEL_22:
  v37 = v22;
  v41 = v22;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v29;
  v46 = v28;
  v30 = v6[v7];
  v31 = v30 != 2 && (v30 & 1) == 0;
  if (!v31 && (v32 = *(a1 + 64), *(v32 + 16)) && (v33 = sub_1006CCC5C(3), (v34 & 1) != 0))
  {
    sub_10000DD18(*(v32 + 56) + 32 * v33, v40);
    sub_10010FC20(&qword_101196F80);
    if (swift_dynamicCast())
    {
      v35 = v39;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  sub_1005B52B4(v4, v38, &v41, v35, v6[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges], 0, 0);

  sub_100400B30(v37, v25);

  return sub_1000095E8(v4, &unk_1011A4B90);
}

uint64_t sub_1005BDBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = 0;
  *(v5 + 56) = &_swiftEmptySetSingleton;
  *(v5 + 64) = sub_10010D510(_swiftEmptyArrayStorage);
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_weakInit();
  v17[4] = sub_1005BEF0C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10027D328;
  v17[3] = &unk_1010B4CB8;
  v13 = _Block_copy(v17);

  v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v13 block:a5];

  _Block_release(v13);
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  return v5;
}

uint64_t sub_1005BDD68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, static Logger.libraryView);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Update Coalescer: Timed out", v5, 2u);
    }

    v6 = *(v1 + 48);
    *(v1 + 48) = 0;

    sub_1005BE0F8();
  }

  return result;
}

uint64_t sub_1005BDE8C(uint64_t a1, uint64_t a2)
{
  sub_1000089F8(a1, v14, &unk_101183F30);
  swift_beginAccess();
  sub_100407980(v14, a2);
  swift_endAccess();
  swift_beginAccess();
  sub_1003B48A8(v13, a2);
  swift_endAccess();
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.libraryView);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136446210;
    v13[0] = a2;
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Update Coalescer: did set data for source=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  sub_1005BE0F8();
  return sub_1000095E8(a1, &unk_101183F30);
}

Swift::Int sub_1005BE0B0()
{
  Hasher.init(_seed:)();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void sub_1005BE0F8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 72) & 1) == 0)
  {
    v17 = v8;
    v18 = v3;
    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, static Logger.libraryView);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Update Coalescer: Checking for updates", v14, 2u);
    }

    *(v1 + 72) = 1;
    sub_100009F78(0, &qword_101182960);
    v15 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1005BEEF8;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010B4C18;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100029710(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v18 + 8))(v5, v2);
    (*(v7 + 8))(v10, v17);
  }
}

void sub_1005BE49C()
{
  if (*(v0 + 72) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);

    v3 = v2(v0);

    if (!*(v0 + 48) || (v3 & 1) != 0)
    {
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, static Logger.libraryView);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136446210;
        sub_10010FC20(&qword_101196F70);
        v13 = String.init<A>(describing:)();
        v15 = sub_1000105AC(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "Update Coalescer: Updating with reason=%{public}s", v11, 0xCu);
        sub_10000959C(v12);
      }

      v16 = *(v1 + 32);

      v16(v1);

      v17 = *(v1 + 48);
      *(v1 + 48) = 0;
    }

    else
    {
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000060E4(v4, static Logger.libraryView);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Update Coalescer: Awaiting on more data…", v7, 2u);
      }
    }

    *(v1 + 72) = 0;
  }
}

uint64_t sub_1005BE730()
{

  return v0;
}

uint64_t sub_1005BE770()
{
  sub_1005BE730();

  return swift_deallocClassInstance();
}

void sub_1005BEB74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1005BEC70()
{
  result = qword_101196F30;
  if (!qword_101196F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196F30);
  }

  return result;
}

unint64_t sub_1005BECDC()
{
  result = qword_101196F40;
  if (!qword_101196F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196F40);
  }

  return result;
}

uint64_t sub_1005BEDD0()
{
  type metadata accessor for MusicLibrary();
  result = static MusicLibrary.shared.getter();
  qword_101219050 = result;
  return result;
}

uint64_t sub_1005BEE04@<X0>(void *a1@<X8>)
{
  if (qword_10117F8D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_101219050;
}

uint64_t sub_1005BEE88@<X0>(void *a1@<X8>)
{
  if (qword_10117F8D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_101219058;
}

void sub_1005BEF14()
{
  v1 = *(sub_10010FC20(&qword_101196FA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);

  sub_1005B88C4(v6, v0 + v2, v4, v5);
}

uint64_t sub_1005BEFD4()
{
  v1 = *(sub_10010FC20(&qword_101196FA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005B8E90(v3, v0 + v2, v4);
}

unint64_t sub_1005BF070()
{
  result = qword_1011A3E30;
  if (!qword_1011A3E30)
  {
    sub_1001109D0(&unk_101196FB0);
    sub_100029710(&unk_101196FC0, &type metadata accessor for RecentlyAddedMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3E30);
  }

  return result;
}

unint64_t sub_1005BF174()
{
  result = qword_101196FD8;
  if (!qword_101196FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196FD8);
  }

  return result;
}

uint64_t sub_1005BF1D4()
{

  return swift_deallocObject();
}

uint64_t sub_1005BF228()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1005B7A9C(v2, v3);
}

void sub_1005BF298()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1005B788C(v3, v0 + v2, v4);
}

uint64_t sub_1005BF344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1005BF3BC(unsigned __int8 a1)
{
  v2 = sub_10059B3FC();
  result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2);
  if (result)
  {
    v4 = &off_10109BAD0;
  }

  else
  {
    v4 = &off_10109BAF8;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = 0;
    if (result)
    {
      v7 = &off_10109BAD0;
    }

    else
    {
      v7 = &off_10109BAF8;
    }

    v8 = v7 + 4;
    while ((v5 & ~(v5 >> 63)) != v6)
    {
      if (*(v8 + v6) == a1)
      {
        goto LABEL_14;
      }

      if (v5 == ++v6)
      {
        v6 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_14:

    return v6;
  }

  return result;
}

uint64_t sub_1005BF47C(uint64_t a1)
{
  v2 = sub_10059B3FC();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2))
  {
    v3 = &unk_10109BAE0;
  }

  else
  {
    v3 = &unk_10109BB08;
  }

  v4 = *v3;

  result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2);
  v6 = result;
  if (v4 - 1 < a1)
  {
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2))
    {
      v7 = &unk_10109BAE0;
    }

    else
    {
      v7 = &unk_10109BB08;
    }

    v8 = *v7;

    a1 = v8 - 1;
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v6)
    {
      v9 = &off_10109BAD0;
    }

    else
    {
      v9 = &off_10109BAF8;
    }

    if (a1 < v9[2])
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (a1 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v10 = &off_10109BAD0;
  }

  else
  {
    v10 = &off_10109BAF8;
  }

  if (v10[2] <= a1)
  {
    goto LABEL_24;
  }

LABEL_19:
  v11 = &unk_10109BB18;
  if (v6)
  {
    v11 = &unk_10109BAF0;
  }

  v12 = v11[a1];

  return v12;
}

uint64_t sub_1005BF5A0()
{
  v1 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&unk_101196F90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10059B3FC();
  v9 = (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v8) & 1) == 0;
  v10 = &unk_10109BB08;
  if (!v9)
  {
    v10 = &unk_10109BAE0;
  }

  v11 = *v10;

  v12 = v11 - 1;
  if (!*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {
LABEL_6:
    result = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      return result;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  RequestResponse.Revision.content.getter(v3);

  v13 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    sub_1000095E8(v3, &unk_10118D090);
    goto LABEL_6;
  }

  (*(v5 + 16))(v7, v3, v4);
  sub_1000095E8(v3, &unk_10118D0A0);
  v15 = MusicLibrarySectionedResponse.sections.getter();
  (*(v5 + 8))(v7, v4);
  v16 = *(v15 + 16);

  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  result = v12 + v17;
  if (__OFADD__(v12, v17))
  {
    goto LABEL_13;
  }

  return result;
}

_UNKNOWN **sub_1005BF7FC(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_1011A3E20);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = sub_10010FC20(&unk_101196FB0);
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_10010FC20(&unk_101196F90);
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - v19;
  v21 = sub_1005BF47C(a1);
  if (v21 <= 1)
  {
    if (!v21)
    {
      v22 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
      swift_beginAccess();
      sub_1000089F8(v1 + v22, v20, &unk_1011A4B90);
      v23 = type metadata accessor for LibraryImport.ViewModel(0);
      v24 = (*(*(v23 - 8) + 48))(v20, 1, v23) != 1;
      sub_1000095E8(v20, &unk_1011A4B90);
      return v24;
    }

    v26 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
LABEL_7:
    swift_beginAccess();
    v27 = *(v1 + v26);
    if (v27)
    {
      return *(v27 + 16);
    }

    return 0;
  }

  if (v21 == 2)
  {
    v26 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    goto LABEL_7;
  }

  v28 = sub_10059B3FC();
  v29 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v28);
  if (v29)
  {
    result = &off_10109BAD0;
  }

  else
  {
    result = &off_10109BAF8;
  }

  v30 = &unk_10109BAE0;
  if ((v29 & 1) == 0)
  {
    v30 = &unk_10109BB08;
  }

  v31 = *v30;
  if (!v31)
  {
LABEL_22:

    return 0;
  }

  v32 = 0;
  if (v29)
  {
    v33 = &off_10109BAD0;
  }

  else
  {
    v33 = &off_10109BAF8;
  }

  v34 = v33 + 4;
  while (1)
  {
    if ((v31 & ~(v31 >> 63)) == v32)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*(v34 + v32) == 3)
    {
      break;
    }

    if (v31 == ++v32)
    {
      goto LABEL_22;
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {
    return 0;
  }

  RequestResponse.Revision.content.getter(v11);

  v35 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v35 - 8) + 48))(v11, 1, v35) == 1)
  {
    sub_1000095E8(v11, &unk_10118D090);
    return 0;
  }

  v36 = v44;
  (*(v44 + 16))(v14, v11, v12);
  sub_1000095E8(v11, &unk_10118D0A0);
  (*(v36 + 32))(v17, v14, v12);
  if (MusicLibrarySectionedResponse.totalItemCount.getter() < 1)
  {
    (*(v36 + 8))(v17, v12);
    return 0;
  }

  result = MusicLibrarySectionedResponse.sections.getter();
  v37 = a1 - v32;
  if (__OFSUB__(a1, v32))
  {
    goto LABEL_34;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v37 < result[2])
  {
    v38 = v41;
    (*(v41 + 16))(v8, result + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v41 + 72) * v37, v6);

    MusicLibrarySection.items.getter();
    (*(v38 + 8))(v8, v6);
    sub_100020674(&unk_101197060, &unk_1011A3E20);
    v39 = v43;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v40 = dispatch thunk of Collection.distance(from:to:)();
    (*(v42 + 8))(v5, v39);
    (*(v36 + 8))(v17, v12);
    return v40;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1005BFE68(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState.DragState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v15 = [v14 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    UICellConfigurationState.cellDragState.getter();
    (*(v10 + 8))(v12, v9);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.none(_:), v2);
    v16 = static UICellConfigurationState.DragState.== infix(_:_:)();

    v17 = *(v3 + 8);
    v17(v5, v2);
    v17(v8, v2);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1005C00B0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v76 = (&v71 - v3);
  v4 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - v5;
  v7 = type metadata accessor for RecentlyAddedMusicItem();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v10 - 8);
  v72 = &v71 - v11;
  v12 = type metadata accessor for UITraitOverrides();
  v74 = *(v12 - 8);
  v75 = v12;
  __chkstk_darwin(v12);
  v71 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v71 - v15;
  v16 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v16 - 8);
  v18 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v19 - 8);
  v21 = &v71 - v20;
  v22 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v22 - 8);
  v77 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MusicPin();
  v25 = *(v24 - 1);
  __chkstk_darwin(v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = (&v71 - v29);
  v31 = a1;
  v32 = IndexPath.section.getter();
  v33 = sub_1005BF47C(v32);
  if (v33 <= 1)
  {
    v6 = v80;
    if (!v33)
    {
      return;
    }

    v34 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    v9 = *&v6[v34];
    if (!v9)
    {
      swift_endAccess();
      return;
    }

    v35 = IndexPath.item.getter();
    if ((v35 & 0x8000000000000000) == 0)
    {
      if (v35 < *(v9 + 2))
      {
        (*(v25 + 2))(v27, &v9[((v25[80] + 32) & ~v25[80]) + *(v25 + 9) * v35], v24);
        swift_endAccess();
        (*(v25 + 4))(v30, v27, v24);
        sub_1003408E8(v30, v31);
        (*(v25 + 1))(v30, v24);
        return;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v33 != 2)
  {
    sub_1005A7C20(0, v6);
    v40 = v78;
    v39 = v79;
    if ((*(v78 + 48))(v6, 1, v79) != 1)
    {
      (*(v40 + 32))(v9, v6, v39);
      v43 = type metadata accessor for IndexPath();
      v44 = *(v43 - 8);
      v45 = v76;
      (*(v44 + 16))(v76, a1, v43);
      (*(v44 + 56))(v45, 0, 1, v43);
      v46 = sub_10049CB78();
      sub_1007D5350(v9, v45, v46 & 1);
      sub_1000095E8(v45, &unk_10118BCE0);
      (*(v40 + 8))(v9, v39);
      return;
    }

    v41 = &unk_101197040;
    v42 = v6;
LABEL_29:
    sub_1000095E8(v42, v41);
    return;
  }

  v36 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  v25 = v80;
  swift_beginAccess();
  v24 = *&v25[v36];
  if (!v24)
  {
    return;
  }

  v37 = IndexPath.item.getter();
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (v37 >= v24[2])
  {
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_20;
  }

  LOBYTE(v30) = *(v24 + v37 + 32);

  if (Library.Menu.Identifier.rawValue.getter(v30) == 0xD000000000000026 && 0x8000000100E3C170 == v38)
  {

    v31 = v77;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v31 = v77;
    if ((v47 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v48 = type metadata accessor for URL();
  (*(*(v48 - 8) + 56))(v21, 1, 1, v48);
  sub_10003C9B0(&v25[OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties], v18, type metadata accessor for MetricsPageProperties);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 15, 28, v21, 0, 0, 12, v31, 0, 0, 0xFF00u, v18, 0);
  v24 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v6 = sub_10053771C();
  v9 = v49;
  if (qword_10117F600 != -1)
  {
    goto LABEL_39;
  }

LABEL_20:
  v50 = qword_101218AD0;
  v51 = GroupActivitiesManager.hasJoined.getter();
  v52 = GroupActivitiesManager.participantsCount.getter();
  v53 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v24) + 0xB8))(v31, v6, v9, v51 & 1, v52, *(v50 + v53));

  sub_1005C3434(v31, type metadata accessor for MetricsEvent.Click);
LABEL_21:
  v54 = [v25 tabBarController];
  if (!v54)
  {
LABEL_27:
    v60 = [v25 traitCollection];
    v61 = sub_10066BAEC(v60, v30);

    v62 = [v25 navigationController];
    if (!v62)
    {

      return;
    }

    v63 = v62;
    v64 = v73;
    UIViewController.traitOverrides.getter();
    v65 = v72;
    sub_10066C1EC(v30, v72);
    v67 = v74;
    v66 = v75;
    (*(v74 + 8))(v64, v75);
    (*(v67 + 56))(v65, 0, 1, v66);
    UINavigationController.push(_:traitOverrides:animated:)(v61, v65, 1);

    v41 = &unk_10119F3A0;
    v42 = v65;
    goto LABEL_29;
  }

  v55 = v54;
  v56._countAndFlagsBits = Library.Menu.Identifier.rawValue.getter(v30);
  v81 = 0xD000000000000014;
  v82 = 0x8000000100E3E560;
  String.append(_:)(v56);

  v57 = String._bridgeToObjectiveC()();

  v58 = [v55 tabForIdentifier:v57];

  if (!v58)
  {
    v58 = v55;
    goto LABEL_26;
  }

  v59 = [v25 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  LOBYTE(v59) = sub_10049CB78();

  if (v59)
  {

LABEL_26:
    goto LABEL_27;
  }

  [v55 setSelectedTab:v58];
  v68 = [v58 viewController];
  if (v68)
  {
    v69 = v68;
    v70 = v71;
    UIViewController.traitOverrides.getter();
    sub_10066C1EC(v30, v73);
    (*(v74 + 8))(v70, v75);
    UIViewController.traitOverrides.setter();
  }
}

unint64_t sub_1005C0BA0(uint64_t a1)
{
  v95 = type metadata accessor for MusicPin();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v92 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  isa = (&v77 - v4);
  v5 = sub_10010FC20(&unk_1011838D0);
  v90 = *(v5 - 8);
  v6 = *(v90 + 64);
  __chkstk_darwin(v5 - 8);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v77 - v8;
  v10 = sub_10010FC20(&unk_10118CDB0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  __chkstk_darwin(v10 - 8);
  v89 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v77 - v13;
  v14 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v14 - 8);
  v16 = &v77 - v15;
  v100 = type metadata accessor for RecentlyAddedMusicItem();
  v17 = *(v100 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v100);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  __chkstk_darwin(v22);
  v96 = &v77 - v23;
  v24 = type metadata accessor for IndexPath();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v31 = __chkstk_darwin(v27);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v85 = v30;
  v86 = v9;
  v98 = v25;
  v32 = *(v25 + 16);
  v33 = *(v25 + 80);
  v34 = a1 + ((v33 + 32) & ~v33);
  v35 = &v77 - v28;
  v99 = v29;
  v84 = v32;
  (v32)(&v77 - v28, v34, v29, v31);
  v102 = v35;
  v36 = IndexPath.section.getter();
  v37 = sub_1005BF47C(v36);
  if (v37 > 1)
  {
    if (v37 != 2)
    {
      sub_1005A7C20(0, v16);
      v48 = v100;
      if ((*(v17 + 48))(v16, 1, v100) != 1)
      {
        v92 = ~v33;
        v83 = v17;
        v49 = *(v17 + 32);
        v94 = v17 + 32;
        v95 = v49;
        v50 = v96;
        v49(v96, v16, v48);
        v51 = *(*(v101 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController) + 48);
        swift_beginAccess();
        v52 = *(v51 + 80);
        v109[3] = *(v51 + 64);
        v109[4] = v52;
        v109[5] = *(v51 + 96);
        v110 = *(v51 + 112);
        v53 = *(v51 + 32);
        v109[0] = *(v51 + 16);
        v109[1] = v53;
        v109[2] = *(v51 + 48);
        sub_10003D868(v109, &aBlock);
        sub_100455348(v50, v97);
        sub_10003D90C(v109);
        v54 = v86;
        sub_1005A5B7C(v86);
        v55 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v56 = v83;
        v78 = *(v83 + 16);
        v78(v21, v50, v100);
        v80 = *(v56 + 80);
        v57 = (v80 + 16) & ~v80;
        v81 = v80 | 7;
        v82 = swift_allocObject();
        v58 = v82 + v57;
        v59 = v100;
        v95(v58, v21, v100);
        v79 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v60 = v87;
        v78(v87, v96, v59);
        v61 = v89;
        sub_1000089F8(v97, v89, &unk_10118CDB0);
        v84(v85, v102, v99);
        v62 = v91;
        sub_1000089F8(v86, v91, &unk_1011838D0);
        v63 = (v80 + 24) & ~v80;
        v64 = (v63 + v18 + *(v88 + 80)) & ~*(v88 + 80);
        v65 = (v11 + v33 + v64) & v92;
        v66 = (v26 + *(v90 + 80) + v65) & ~*(v90 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = v79;
        v95(v67 + v63, v60, v100);
        sub_10003D17C(v61, v67 + v64, &unk_10118CDB0);
        v68 = v98;
        (*(v98 + 32))(v67 + v65, v85, v99);
        sub_10003D17C(v62, v67 + v66, &unk_1011838D0);
        v69 = objc_opt_self();
        v107 = sub_1005C27D8;
        v108 = v82;
        aBlock = _NSConcreteStackBlock;
        v104 = 1107296256;
        v105 = sub_100747E6C;
        v106 = &unk_1010B4EC0;
        v70 = _Block_copy(&aBlock);

        v107 = sub_1005C2838;
        v108 = v67;
        aBlock = _NSConcreteStackBlock;
        v104 = 1107296256;
        v105 = sub_100747EBC;
        v106 = &unk_1010B4EE8;
        v71 = _Block_copy(&aBlock);

        v72 = isa;
        v73 = [v69 configurationWithIdentifier:isa previewProvider:v70 actionProvider:v71];

        _Block_release(v71);
        _Block_release(v70);
        sub_1000095E8(v86, &unk_1011838D0);
        sub_1000095E8(v97, &unk_10118CDB0);
        (*(v83 + 8))(v96, v100);
        (*(v68 + 8))(v102, v99);

        return v73;
      }

      (*(v98 + 8))(v102, v99);
      sub_1000095E8(v16, &unk_101197040);
      return 0;
    }

    goto LABEL_16;
  }

  if (!v37)
  {
LABEL_16:
    (*(v98 + 8))(v102, v99);
    return 0;
  }

  v38 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  v39 = v101;
  swift_beginAccess();
  v40 = *(v39 + v38);
  if (!v40)
  {
    swift_endAccess();
    goto LABEL_16;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v42 = v86;
    v43 = v95;
    v44 = v94;
    v45 = isa;
    if (result < *(v40 + 16))
    {
      v46 = v40 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * result;
      v47 = v92;
      (*(v94 + 16))(v92, v46, v95);
      swift_endAccess();
      (*(v44 + 32))(v45, v47, v43);
      if (!UIAccessibilityIsVoiceOverRunning() || (*(v39 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) & 1) == 0)
      {
        sub_1005A5B7C(v42);
        v74 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v74 - 8) + 56))(v42, 0, 1, v74);
        v75 = v102;
        v76 = sub_100343100(v45, v102, v42);
        sub_1000095E8(v42, &unk_1011838D0);
        (*(v44 + 8))(v45, v43);
        (*(v98 + 8))(v75, v99);
        return v76;
      }

      (*(v44 + 8))(v45, v43);
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1005C18BC(void *a1, void *a2)
{
  v40 = a2;
  v3 = type metadata accessor for MusicPin();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for RecentlyAddedMusicItem();
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v17, 1, 1, v18);
    sub_1000095E8(v17, &unk_10118BCE0);
    return [v40 setPreferredCommitStyle:{0, v36, v37}];
  }

  v24(v17, 0, 1, v18);
  (*(v19 + 32))(v22, v17, v18);
  v25 = IndexPath.section.getter();
  v26 = sub_1005BF47C(v25);
  if (v26 == 1)
  {
    v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    v29 = v39;
    swift_beginAccess();
    v30 = *(v29 + v28);
    if (v30)
    {
      result = IndexPath.item.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v30 + 16))
      {
        v32 = v36;
        v33 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * result;
        v34 = v37;
        (*(v36 + 16))(v5, v33, v37);
        swift_endAccess();
        (*(v32 + 32))(v8, v5, v34);
        sub_1003413BC(v8, v22, v40);
        (*(v32 + 8))(v8, v34);
        return (*(v19 + 8))(v22, v18);
      }

      __break(1u);
      return result;
    }

    swift_endAccess();
LABEL_14:
    (*(v19 + 8))(v22, v18);
    return [v40 setPreferredCommitStyle:{0, v36, v37}];
  }

  if (v26 != 3)
  {
    goto LABEL_14;
  }

  sub_1005A7C20(0, v11);
  v27 = v38;
  if ((*(v38 + 48))(v11, 1, v12) != 1)
  {
    (*(v27 + 32))(v14, v11, v12);
    v35 = sub_10049CB78();
    sub_1007D70E4(v14, v40, v35 & 1);
    (*(v27 + 8))(v14, v12);
    return (*(v19 + 8))(v22, v18);
  }

  (*(v19 + 8))(v22, v18);
  sub_1000095E8(v11, &unk_101197040);
  return [v40 setPreferredCommitStyle:{0, v36, v37}];
}

void sub_1005C1E04()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v55 = &v49 - v3;
  v4 = type metadata accessor for MusicMetrics.FeatureName();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MusicMetrics.PageType();
  v50 = *(v12 - 8);
  v51 = v12;
  __chkstk_darwin(v12);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress) = 0;
  v14 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___headerRegistration;
  v15 = sub_10010FC20(&unk_10118A650);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___inlineBubbleTipRegistration;
  v17 = sub_10010FC20(&qword_101196E60);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportCellRegistration;
  v19 = sub_10010FC20(&qword_101196E70);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___pinCellRegistration;
  v21 = sub_10010FC20(&qword_101196E80);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___menuCellRegistration;
  v23 = sub_10010FC20(&qword_101196E90);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___recentCellRegistration;
  v25 = sub_10010FC20(qword_101196EA0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView) = 0;
  v26 = OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController;
  v27 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v26) = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_observers) = &_swiftEmptySetSingleton;
  v28 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsObserver;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0;
  v29 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsControllerToken;
  v30 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController;
  Library.Menu.Request.init()(v57);
  sub_10010FC20(&unk_101197030);
  swift_allocObject();
  *(v1 + v31) = RequestResponse.Controller.init(request:)(v57);
  v32 = OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController;
  type metadata accessor for SharedLibrariesController();
  swift_allocObject();
  *(v1 + v32) = sub_10003C170();
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver) = 0;
  v33 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___actionMetricsReportingContext;
  v34 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) = 2;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner) = 0;
  v35 = OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton;
  v36 = type metadata accessor for AccountButtonWrapper();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
  v37[OBJC_IVAR____TtC5Music20AccountButtonWrapper_location] = 1;
  v56.receiver = v37;
  v56.super_class = v36;
  v38 = objc_msgSendSuper2(&v56, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v38 sizeToFit];
  v39 = AccessibilityIdentifier.accountButton.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v40, v41);

  *(v1 + v35) = v38;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem) = 0;
  v42 = (v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu);
  *v42 = 0u;
  v42[1] = 0u;
  v42[2] = 0u;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pinnedItems) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier) = 13;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision) = 0;
  v43 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  v44 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v44 - 8) + 56))(v1 + v43, 1, 1, v44);
  v45 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
  *v45 = xmmword_100EBCEE0;
  *(v45 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider) = 0;
  (*(v50 + 104))(v49, enum case for MusicMetrics.PageType.library(_:), v51);
  v46 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10003C9B0(v46, v11, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Page.metricsPageProperties.getter(v8);
  sub_1005C3434(v11, type metadata accessor for MetricsEvent.Page);

  sub_1005C3434(v8, type metadata accessor for MetricsPageProperties);
  (*(v53 + 104))(v52, enum case for MusicMetrics.FeatureName.library(_:), v54);
  v47 = type metadata accessor for URL();
  (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
  MusicMetrics.PageFields.init(pageType:pageId:featureName:pageURL:pageContext:searchTerm:pageDetails:)();
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModelsToListenFor) = &off_10109BCB0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView) = 0;
  v48 = OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties;
  sub_10003CD38(0, v11);
  MetricsEvent.Page.metricsPageProperties.getter((v1 + v48));
  sub_1005C3434(v11, type metadata accessor for MetricsEvent.Page);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___editingTrailingBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___standardTrailingBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005C27D8()
{
  v1 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100122C44(v2);
}

unint64_t sub_1005C2838(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10010FC20(&unk_10118CDB0) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v13 = *(v1 + 16);
  v14 = (v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)));

  return sub_1007D7ED4(a1, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t sub_1005C29E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005C2A58()
{
  result = qword_101197088;
  if (!qword_101197088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197088);
  }

  return result;
}

uint64_t sub_1005C2ABC@<X0>(uint64_t a1@<X8>)
{
  sub_10003C9B0(*(v1 + 16), a1, type metadata accessor for LibraryImport.ViewModel);
  result = _s10ImportViewVMa(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_1005C2B14(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MusicPin() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1005B1890(v7, a1, a2, v8, v2 + v6);
}

uint64_t sub_1005C2BD4()
{
  v2 = *(type metadata accessor for MusicPin() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1005B1E40(v4, v0 + v3);
}

unint64_t sub_1005C2CBC()
{
  result = qword_101197128;
  if (!qword_101197128)
  {
    sub_1001109D0(&qword_101197120);
    sub_1005C2D78();
    sub_100029710(&qword_10118DE90, _s8TextCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197128);
  }

  return result;
}

unint64_t sub_1005C2D78()
{
  result = qword_101197130;
  if (!qword_101197130)
  {
    sub_1001109D0(&unk_101197138);
    sub_100029710(&qword_10118DE90, _s8TextCellVMa);
    sub_100029710(&qword_101197148, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197130);
  }

  return result;
}

unint64_t sub_1005C2E78()
{
  result = qword_101197188;
  if (!qword_101197188)
  {
    sub_1001109D0(&qword_101197180);
    _s21RecentlyAddedListCellVMa(255);
    sub_100029710(&qword_101197190, _s21RecentlyAddedListCellVMa);
    swift_getOpaqueTypeConformance2();
    _s21RecentlyAddedGridCellVMa(255);
    sub_100029710(&qword_101197198, _s21RecentlyAddedGridCellVMa);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197188);
  }

  return result;
}

unint64_t sub_1005C2FD4()
{
  result = qword_1011971D0;
  if (!qword_1011971D0)
  {
    sub_1001109D0(&qword_1011971C8);
    sub_1005C3058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011971D0);
  }

  return result;
}

unint64_t sub_1005C3058()
{
  result = qword_1011971D8;
  if (!qword_1011971D8)
  {
    sub_1001109D0(&qword_1011971E0);
    sub_100020674(&qword_1011971E8, &unk_1011971F0);
    sub_100029710(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011971D8);
  }

  return result;
}

unint64_t sub_1005C31E4()
{
  result = qword_1011972D0;
  if (!qword_1011972D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011972D0);
  }

  return result;
}

uint64_t sub_1005C3238()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1005C32FC(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPin() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1005ADCC0(a1, v6, v1 + v5);
}

uint64_t sub_1005C3434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005C3564(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v2 = 1;
LABEL_8:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (a1 > 1u)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_1005C3688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1005C36DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1005C375C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_1005C383C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [*UIColor.MusicTint.normal.unsafeMutableAddressor() colorWithAlphaComponent:0.2];

    return v1;
  }

  else
  {
    sub_100009F78(0, &qword_101180C98);
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 235, 238, 1.0);
  }
}

void sub_1005C3910(double a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() whiteColor];
  v6 = [v5 colorWithAlphaComponent:a1];

  *a3 = v6;
}

id sub_1005C39B4()
{
  v0 = [objc_opt_self() labelColor];
  sub_100050078();
  v1 = UITraitCollection.subscript.getter();
  v2 = 0.7;
  if (v1)
  {
    v2 = 0.08;
  }

  v3 = [v0 colorWithAlphaComponent:v2];

  return v3;
}

uint64_t sub_1005C3A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (v2 != 1)
  {
    v5 = 0x4572616C75676572;
    v4 = 0xEF6465646E657478;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746361706D6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x72616C75676572;
  if (*a2 != 1)
  {
    v8 = 0x4572616C75676572;
    v3 = 0xEF6465646E657478;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746361706D6F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1005C3B8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005C3C3C()
{
  String.hash(into:)();
}

Swift::Int sub_1005C3CD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005C3D84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E9F44(*a1);
  *a2 = result;
  return result;
}

void sub_1005C3DB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (v2 != 1)
  {
    v5 = 0x4572616C75676572;
    v4 = 0xEF6465646E657478;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746361706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1005C3E20(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v2 >> 62 == 2 && v2 == 0x8000000000000000 && (a2[2] | a2[1] | a2[3] | a2[4] | a2[5] | a2[6]) == 0)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

void sub_1005C3E98()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize);
  if ((*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16) & 1) == 0)
  {
    v2 = v0;
    v4 = *v1;
    v3 = v1[1];
    v5 = sub_1005C405C();
    [v5 setFrame:{0.0, 0.0, v4, v3}];

    v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
    v7 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView);
    v8 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage);
    v9 = *&v7[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
    v10 = v8;
    if (v9)
    {
      v11 = v9;
      v12 = v7;
      dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();
    }

    else
    {
      v13 = v7;
    }

    if (v7[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] == 1)
    {
      v14 = *&v7[OBJC_IVAR___MusicLyricsBackgroundView_metalView];
      if (v14)
      {
        v15 = v14;
        [v15 setNeedsDisplay];
      }
    }

    v16 = *(v2 + v6);
    v17 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
    v18 = *&v16[OBJC_IVAR___MusicLyricsBackgroundView_metalView];
    v20 = v16;
    [v18 setPaused:1];
    v19 = *&v16[v17];
    if (v19)
    {
      [v19 setEnableSetNeedsDisplay:0];
    }

    [v20 setNeedsLayout];
    [v20 layoutIfNeeded];
    [*&v16[v17] draw];
  }
}

id sub_1005C405C()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for LyricsBackgroundView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = UIView.forAutolayout.getter();

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1005C40E8(void *a1)
{
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_1012190C8);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying;
    v9 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
    sub_10010FC20(&qword_10118DA00);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000105AC(v10, v11, v95);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = *&v4[v8];
    if (v13)
    {
      v14 = [v13 videoOutput];
    }

    sub_10010FC20(&unk_1011979D0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, v95);

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "New playing response %{public}s with videoOutput %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying;
  v19 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (v19)
  {
    v20 = [v19 tracklist];
    v21 = [v20 playingItem];
  }

  else
  {
    v21 = 0;
  }

  v22 = OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem;
  v23 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem];
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem] = v21;
  v24 = v21;
  sub_1005DA2F4(v23);

  v25 = *&v4[v22];
  if (v25)
  {
    [v25 duration];
    v26 = v96;
  }

  else
  {
    v26 = 0;
  }

  v27 = OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition;
  v28 = v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition];
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition] = v26;
  sub_1005C7780(v28);
  v29 = &unk_101197000;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_43:
    v57 = *&v4[v29[115]];
    if (v57)
    {
      v58 = *&v4[v18];
      v59 = *&v57[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
      *&v57[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying] = v58;
      v60 = v58;
      v61 = v57;
      sub_100198E90(v59);
    }

    if (!a1 || (v62 = [a1 tracklist], v63 = objc_msgSend(v62, "vocalsControlCommand"), v62, !v63) || (v64 = objc_msgSend(v63, "isActive"), swift_unknownObjectRelease(), (v64 & 1) == 0))
    {
      v65 = *&v4[v18];
      if (v65)
      {
        v66 = [v65 tracklist];
        v67 = [v66 vocalsControlCommand];

        if (v67)
        {
          v68 = [v67 isActive];
          swift_unknownObjectRelease();
          if (v68)
          {
            v69 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
            v70 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
            if (v70)
            {
              [v70 invalidate];
              v71 = *&v4[v69];
            }

            else
            {
              v71 = 0;
            }

            *&v4[v69] = 0;

            sub_1005C4F50(5.0);
          }
        }
      }
    }

    v72 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v73 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    if (v73 >> 62 == 1)
    {
      v91 = *(v72 + 5);
      v92 = *(v72 + 6);
      v75 = *(v72 + 3);
      v74 = *(v72 + 4);
      v77 = *(v72 + 1);
      v76 = *(v72 + 2);
      v78 = *&v4[v18];
      v79 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
      *((v73 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying) = v78;
      v80 = v78;
      v94 = v77;
      sub_10012BAC0(v73, v77, v76, v75, v74);

      sub_10029948C();
      v81 = *&v4[v18];
      if (v81 && [v81 state] == 1)
      {
        sub_1005C5388(0);
      }
    }

    LOBYTE(v95[0]) = 11;
    v82 = sub_100025CE0();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v82) & 1) == 0 || (v83 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState]) == 0)
    {
LABEL_65:
      v86 = *&v4[v18];
      if (!v86)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }

    v84 = *&v4[v18];
    if (v84)
    {

      LODWORD(v84) = [v84 state] == 2;
      if ((*(v83 + 41) ^ v84))
      {
LABEL_64:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v95[0] = v83;
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_65;
      }
    }

    else
    {
      v87 = *(v83 + 41);

      if (v87)
      {
        goto LABEL_64;
      }
    }

    *(v83 + 41) = v84;

    v86 = *&v4[v18];
    if (!v86)
    {
      goto LABEL_70;
    }

LABEL_66:
    if ([v86 state] == 2)
    {
      sub_1005C4F50(4.0);
LABEL_74:
      sub_1005C56EC();
      sub_1005C5B40(0, 0, 1, [v4 isViewLoaded]);
      sub_1005C6510();
      sub_1005C6A74(0);
      return;
    }

LABEL_70:
    v88 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v89 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
    if (v89)
    {
      [v89 invalidate];
      v90 = *&v4[v88];
    }

    else
    {
      v90 = 0;
    }

    *&v4[v88] = 0;

    goto LABEL_74;
  }

  v30 = *&v4[v22];
  if (v30 && a1)
  {
    v31 = v30;
    v32 = [a1 tracklist];
    v33 = [v32 playingItem];

    if (v33)
    {
      v93 = v18;
      v34 = [v31 contentItemIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = [v33 contentItemIdentifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v35 == v39 && v37 == v41)
      {

        v42 = 0;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v42 = v43 ^ 1;
      }

      v29 = &unk_101197000;

      v18 = v93;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v44 = [objc_opt_self() standardUserDefaults];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 BOOLForKey:v45];

  if (v46)
  {
    if (!((*&v4[v29[115]] == 0) | v42 & 1))
    {
      sub_1005C4A54();
    }
  }

  else if (v4[v27] != 1)
  {
    goto LABEL_37;
  }

  v47 = *&v4[v29[115]];
  if (!v47)
  {
    goto LABEL_37;
  }

  v48 = *(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
  if (v48 != 3)
  {
    if (v48)
    {
      goto LABEL_37;
    }
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_37;
  }

  v49 = [v4 view];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 window];

    if (v51)
    {
      v52 = [v51 windowScene];

      if (v52)
      {
        v53 = [v52 activationState];

        v54 = UISceneActivationState.isForeground.getter(v53);
LABEL_38:
        v55 = v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition];
        v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] = v54;
        sub_1005C7454(v55);
        if ((v4[v27] & 1) == 0 && ((v42 & 1) != 0 || (v56 = *&v4[v18]) != 0 && [v56 state] == 4))
        {
          sub_1005C4C78();
        }

        goto LABEL_43;
      }
    }

LABEL_37:
    v54 = 0;
    goto LABEL_38;
  }

  __break(1u);
}

void sub_1005C4A54()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData] = 1;
    return;
  }

  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground];
  }

  else if (*&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v3 = sub_1002752B8();
  }

  else
  {
    v3 = 0;
  }

  if (*&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager])
  {

    v4 = sub_1002D9A10();
  }

  else
  {
    v4 = 0;
  }

  v5 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  v6 = (v5 ^ 1) & v4;
  if ((v5 ^ 1) & 1) == 0 && (v4)
  {
    v7 = [v1 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;

    v13 = [v1 traitCollection];
    v6 = sub_1005E7D18(v13, v10, v12);
  }

  if (v6)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  if (v3)
  {
    v15 = v14;
  }

  else
  {
    v15 = v6 & 1;
  }

  if (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v16 = sub_1002752B8();

    if (v16)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
  v19 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] | (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData + 2] << 16);
  *v18 = v15 | v17;
  v18[2] = (v4 & 1) != 0;
  sub_1005C7934(v19);
}

void sub_1005C4C78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask;
  v3 = &unk_101197000;
  if (!*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask))
  {
    v16 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (!v16 || !*(v16 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask))
    {
      return;
    }
  }

  if (qword_10117F5C8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_101218A98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "| 🫥😐 Cancelling artwork transition", v7, 2u);
    }

    v8 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork);
    if (v8)
    {
      [v8 removeFromSuperview];
    }

    if (*&v2[v1])
    {

      sub_1007CDC40();
    }

    v9 = v3[115];
    v10 = *&v9[v1];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = *&v10[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    v2 = "smartTransitionTransformAnimation";
    v3 = &selRef_objectAtIndexedSubscript_;
    v12 = v10;
    if (v11)
    {
      v13 = v11;
      v14 = [v13 layer];
      v15 = String._bridgeToObjectiveC()();
      [v14 removeAnimationForKey:v15];
    }

    if (!*&v10[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask])
    {
      break;
    }

    sub_1007CDC40();

    v17 = *&v9[v1];
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v17 = *&v9[v1];
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_17:
  v18 = v17;
  sub_10019BFA4();

  v19 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (v19)
  {
    v20 = v19;
    v21 = [v20 layer];
    v22 = String._bridgeToObjectiveC()();
    [v21 removeAnimationForKey:v22];
  }
}

void sub_1005C4F50(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType))
  {
    if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
    {

      return;
    }

    v2 = a1;
  }

  else
  {
    v2 = a1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    v4 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
    v5 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
    if (v5 >> 62 != 1)
    {
      goto LABEL_34;
    }

    v6 = v1;
    v7 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
    v8 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = *(v4 + 8);
    v10 = *((swift_isaMask & *v8) + 0x190);
    sub_10012BAC0(v5, v9, *(v4 + 16), *(v4 + 24), *(v4 + 32));
    v11 = v8;
    LOBYTE(v10) = v10();

    v1 = v6;
    if ((v10 & 1) == 0)
    {
LABEL_34:
      v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
      if (!*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer))
      {
        v13 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
        if (v13)
        {
          if ((*(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker) & 1) == 0 && (*(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement) & 1) == 0)
          {
            v14 = *v4;
            if (*v4 >> 62 == 1)
            {
              v15 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
              if (v15[8] == 1 && *v15 != 2)
              {
                v16 = *(v4 + 8);
                v17 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
                v30 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
                if (v17)
                {
                  v18 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
                  v19 = v16;

                  v20 = [v17 play];
                  if (v20)
                  {
                    v30 = v20;

LABEL_27:

                    return;
                  }
                }

                else
                {
                  sub_10012BAC0(v14, v16, *(v4 + 16), *(v4 + 24), *(v4 + 32));
                }

                v21 = v1;
                v22 = [objc_opt_self() standardUserDefaults];
                v23 = sub_1005DF398();

                if ((v23 & 1) == 0 && (*(v21 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) & 1) == 0)
                {
                  v24 = v21;
                  v25 = objc_opt_self();
                  v26 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  aBlock[4] = sub_1005E8178;
                  aBlock[5] = v26;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_10027D328;
                  aBlock[3] = &unk_1010B55B8;
                  v27 = _Block_copy(aBlock);

                  v28 = [v25 scheduledTimerWithTimeInterval:0 repeats:v27 block:v2];

                  _Block_release(v27);
                  v29 = *(v24 + v12);
                  *(v24 + v12) = v28;

                  return;
                }

                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005C5388(int a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v5 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v5 >> 62 == 1)
  {
    v6 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
    v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (!v7)
    {
      __break(1u);
      goto LABEL_32;
    }

    v8 = *(v4 + 8);
    v9 = *((swift_isaMask & *v7) + 0x190);
    sub_10012BAC0(v5, v8, *(v4 + 16), *(v4 + 24), *(v4 + 32));
    v10 = v7;
    LODWORD(v9) = v9();

    if (((v9 ^ a1) & 1) == 0)
    {
      return;
    }
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) || *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) == 1)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return;
    }

    v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v13 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v13)
    {
      if ((*(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode) & 1) != 0 || (a1 & 1) != 0 && UIAccessibilityIsVoiceOverRunning())
      {
        return;
      }

      v14 = *v4;
      if (*v4 >> 62 == 1)
      {
        v15 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
        v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
        if (!v16)
        {
LABEL_34:
          __break(1u);
          return;
        }

        v17 = *(v4 + 8);
        v18 = *(v4 + 16);
        v19 = *(v4 + 24);
        v20 = *(v4 + 32);
        v21 = *((swift_isaMask & *v16) + 0x198);
        sub_10012BAC0(v14, v17, v18, v19, v20);
        v22 = v16;
        v21(a1 & 1);

        sub_10029AC48(a1 & 1, 1);
      }

      else if (a1)
      {
        return;
      }

      v23 = *(v2 + v12);
      if (v23)
      {
        [v23 setControlsHidden:a1 & 1 animated:1];
        v24 = [objc_opt_self() sharedInstance];
        [v24 setNeedsUpdate];

        if (a1)
        {
          v25 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
          v26 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
          if (v26)
          {
            [v26 invalidate];
            v27 = *(v2 + v25);
          }

          else
          {
            v27 = 0;
          }

          *(v2 + v25) = 0;
        }

        else
        {
          sub_1005C4F50(4.0);
        }

        sub_1005C56EC();
        return;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

void sub_1005C56EC()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (!v1 || [v1 state] != 2)
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012190C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "[NowPlayingViewController] updateIdleTimer: not playing, setting idleTimerDisabled to false";
    goto LABEL_11;
  }

  v2 = &v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v3 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v3 >> 62 != 1)
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_1012190C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "[NowPlayingViewController] updateIdleTimer: not in lyrics mode, setting idleTimerDisabled to false";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  v4 = OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType;
  if (v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] > 1u)
  {
    v11 = 1;
  }

  else
  {
    v5 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
    v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v0;
    v8 = *(v2 + 1);
    v9 = *((swift_isaMask & *v6) + 0x190);
    sub_10012BAC0(v3, v8, *(v2 + 2), *(v2 + 3), *(v2 + 4));
    v10 = v6;
    v11 = v9();

    v0 = v7;
  }

  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_1012190C8);
  v19 = v0;
  v20 = v0;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315394;
    if (v19[v4])
    {
      if (v19[v4] == 1)
      {
        v25 = 0xE700000000000000;
        v26 = 0x72616C75676572;
      }

      else
      {
        v25 = 0xEF6465646E657478;
        v26 = 0x4572616C75676572;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      v26 = 0x746361706D6F63;
    }

    v27 = sub_1000105AC(v26, v25, &v29);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v11 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "[NowPlayingViewController] updateIdleTimer: layoutType is %s, setting idleTimerDisabled to %{BOOL}d", v23, 0x12u);
    sub_10000959C(v24);
  }

LABEL_13:
  v28 = [objc_opt_self() sharedApplication];
  [v28 setIdleTimerDisabled:v11 & 1];
}

void sub_1005C5B40(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v9);
  if (a3)
  {
    v10 = [v5 view];
    if (!v10)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 frame];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *&a1;
    v15 = *&a2;
  }

  v16 = [v5 traitCollection];
  v17 = [v16 accessibilityContrast];

  v71 = sub_1005DA588();
  v18 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v18 >> 62 == 1)
  {
    v19 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
    v20 = (v18 & 0x3FFFFFFFFFFFFFFFLL);
    v21 = v19;

    v22 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v22) = v22(9);

    if (v22)
    {
    }

    else
    {
      if (v71)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v79 = 0;
      }

      else
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = &type metadata for String;
      }

      aBlock = v23;
      v78 = v24;
      v80 = v25;
      sub_10029A5CC(&aBlock);
    }
  }

  v26 = sub_1005C405C();
  v27 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
  v26[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = v71;
  v28 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
  v73 = v71;
  [*&v26[OBJC_IVAR___MusicLyricsBackgroundView_metalView] setPaused:?];
  v29 = *&v26[v28];
  if (v29)
  {
    v30 = v26[v27];
    v31 = v29;
    [v31 setEnableSetNeedsDisplay:v30];
  }

  v32 = [v5 view];
  if (!v32)
  {
    goto LABEL_45;
  }

  v33 = v32;
  v34 = [v32 window];

  if (v34)
  {
    v35 = [v34 screen];

    v36 = [v35 _defaultTraitCollection];
    if (!v36)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v37 = [v36 userInterfaceStyle];
  }

  else
  {
    v36 = [objc_opt_self() currentTraitCollection];
    v37 = [v36 userInterfaceStyle];
  }

  v38 = v37;

  [v5 setOverrideUserInterfaceStyle:2 * (v17 != 1)];
  v39 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
  [*&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView] setOverrideUserInterfaceStyle:v38];
  v40 = sub_1005D01F0();
  v41 = [objc_opt_self() systemBackgroundColor];
  if (v17 == 1)
  {
    v42 = [v5 traitCollection];
    v43 = [v42 userInterfaceStyle];
  }

  else
  {
    v43 = 2;
  }

  v44 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v43];
  v45 = [v41 resolvedColorWithTraitCollection:v44];

  v80 = sub_100009F78(0, &qword_101180C98);
  v81 = &protocol witness table for UIColor;
  aBlock = v45;
  UIView._background.setter();

  v46 = [v5 traitCollection];
  v47 = sub_1005E80C0(v46, v13, v15);

  v48 = v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType];
  v74 = OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType;
  v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] = v47;
  sub_1005D7F64(v48);
  v49 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.3 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
  v72 = v49;
  if (a4)
  {
    v50 = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = v5;
    *(v51 + 24) = v73;
    v81 = sub_1005EB22C;
    v82 = v51;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_10002BC98;
    v80 = &unk_1010B6648;
    v52 = _Block_copy(&aBlock);
    v53 = v5;

    [v50 addAnimations:v52];
    _Block_release(v52);
  }

  else
  {
    if (v71)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = 1.0;
    }

    [*&v5[v39] setAlpha:v54];
  }

  v75 = v5;
  v55 = [v5 childViewControllers];
  sub_100009F78(0, &qword_101183D40);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v56 >> 62)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
    if (v57)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_30:
      if (v57 >= 1)
      {
        v58 = 0;
        do
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v61 = sub_10004056C(v58, v56);
          }

          else
          {
            v61 = *(v56 + 8 * v58 + 32);
          }

          v62 = v61;
          if (a4)
          {
            v63 = swift_allocObject();
            *(v63 + 16) = v62;
            *(v63 + 24) = v73;
            v81 = sub_1005EB20C;
            v82 = v63;
            aBlock = _NSConcreteStackBlock;
            v78 = 1107296256;
            v79 = sub_10002BC98;
            v80 = &unk_1010B65F8;
            v64 = _Block_copy(&aBlock);
            v59 = v9;
            v65 = v62;

            [v72 addAnimations:v64];
            _Block_release(v64);
          }

          else
          {
            UIViewController.traitOverrides.getter();
            sub_100050078();
            dispatch thunk of UIMutableTraits.subscript.setter();
            UIViewController.traitOverrides.setter();
            v59 = v9;
          }

          ++v58;
          v60 = v75[v74];
          UIViewController.traitOverrides.getter();
          LOBYTE(aBlock) = v60;
          sub_1001D1C24();
          sub_1001D1C78();
          dispatch thunk of UIMutableTraits.subscript.setter();
          UIViewController.traitOverrides.setter();
          UIViewController.traitOverrides.getter();
          UIMutableTraits.horizontalSizeClass.setter();
          UIViewController.traitOverrides.setter();

          v9 = v59;
        }

        while (v57 != v58);
        goto LABEL_40;
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

LABEL_40:

  if (a4)
  {
    v66 = swift_allocObject();
    v67 = v75;
    *(v66 + 16) = v75;
    *(v66 + 24) = v73;
    v81 = sub_1005EBD6C;
    v82 = v66;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_10002BC98;
    v80 = &unk_1010B65A8;
    v68 = _Block_copy(&aBlock);
    v69 = v75;

    v70 = v72;
    [v72 addAnimations:v68];
    _Block_release(v68);
    [v72 startAnimation];
  }

  else
  {
    v67 = v75;
    UIViewController.traitOverrides.getter();
    sub_100050078();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
    v70 = v72;
  }

  [v67 setNeedsStatusBarAppearanceUpdate];
}

void sub_1005C6510()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v51 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v51 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  v15 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v15)
  {
    return;
  }

  v16 = *(v15 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v16)
  {
    return;
  }

  v53 = v12;
  v54 = v16;
  [v54 frame];
  if (v18 != 0.0 || v17 != 0.0)
  {
    v19 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
    if (v19)
    {
      v20 = [v19 tracklist];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 playingItemIndexPath];
        if (v22)
        {
          v52 = v0;
          v23 = v22;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = *(v2 + 32);
          v24(v14, v11, v53);
          v25 = *&v54[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
          v26 = Artwork.View.currentImage.getter();

          if (v26)
          {
            v51 = v24;

            v27 = [v21 items];
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v29 = [v27 globalIndexForIndexPath:isa];

            v30 = [v21 items];
            v31 = [v30 totalItemCount];

            if (v29 < v31)
            {
              v32 = [v21 items];
              v33 = [v32 indexPathForGlobalIndex:v29 + 1];

              if (v33)
              {
                static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

                v51(v8, v5, v53);
                v34 = [v21 items];
                v35 = IndexPath._bridgeToObjectiveC()().super.isa;
                v36 = [v34 itemAtIndexPath:v35];

                v37 = [v36 metadataObject];
                if (v37)
                {
                  v38 = [v37 artworkCatalog];
                  [v54 frame];
                  v40 = v39;
                  v42 = v41;

                  [v38 setFittingSize:{v40, v42}];
                  v43 = v52;
                  v44 = [v52 traitCollection];
                  [v44 displayScale];
                  v46 = v45;

                  [v38 setDestinationScale:v46];
                  Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();

                  v47 = String._bridgeToObjectiveC()();

                  [v38 setCacheIdentifier:v47 forCacheReference:*&v43[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference]];

                  MPArtworkCatalog.requestImage(_:)(UIScreen.Dimensions.size.getter, 0);
                }

                else
                {
                }

                v49 = *(v2 + 8);
                v50 = v53;
                v49(v8, v53);
                v49(v14, v50);
                return;
              }
            }
          }

          else
          {
          }

          (*(v2 + 8))(v14, v53);
          return;
        }
      }
    }
  }

  v48 = v54;
}

void sub_1005C6A74(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5)
  {
    v6 = [v5 windowScene];

    if (v6)
    {
      v7 = [v6 activationState];

      if (v7 == 2)
      {
        if (qword_10117F938 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000060E4(v8, qword_1012190C8);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Pausing backdrop animation: scene is not foreground", v11, 2u);
        }

        oslog = sub_1005C405C();
        v12 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
        *(&oslog->isa + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) = 1;
        v13 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
        [*(&oslog->isa + OBJC_IVAR___MusicLyricsBackgroundView_metalView) setPaused:1];
        v14 = oslog;
        v15 = *(&oslog->isa + v13);
        if (!v15)
        {
          goto LABEL_20;
        }

        v16 = *(&oslog->isa + v12);
        v17 = v15;
        [v17 setEnableSetNeedsDisplay:v16];

LABEL_19:
        v14 = oslog;
LABEL_20:

        return;
      }
    }
  }

  if ((sub_1005E4AC4(v1) & 1) != 0 && (a1 & 1) == 0)
  {
    v18 = sub_1005C405C();
    v19 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
    v18[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = 1;
    v20 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
    [*&v18[OBJC_IVAR___MusicLyricsBackgroundView_metalView] setPaused:1];
    v21 = *&v18[v20];
    if (v21)
    {
      v22 = v18[v19];
      v23 = v21;
      [v23 setEnableSetNeedsDisplay:v22];
    }

    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_1012190C8);
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v25, "Pausing backdrop animation: showing motion art", v26, 2u);
    }

    goto LABEL_19;
  }

  v27 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (v27)
  {
    v28 = [v27 tracklist];
    v29 = [v28 vocalsControlCommand];
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() sharedMonitor];
  v31 = [v30 currentThermalPressureLevel];

  v32 = 0;
  if (!static ICEnvironmentMonitorThermalPressureLevel.< infix(_:_:)(v31, 20) && v29)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v32 = MPCVocalsControlCommand.isTrulyActive.getter();
    swift_unknownObjectRelease();
  }

  v33 = sub_1005C405C();
  v34 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
  v33[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = v32 & 1;
  v35 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
  [*&v33[OBJC_IVAR___MusicLyricsBackgroundView_metalView] setPaused:?];
  v36 = *&v33[v35];
  if (v36)
  {
    v37 = v33[v34];
    v38 = v36;
    [v38 setEnableSetNeedsDisplay:v37];
  }

  if (v32)
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000060E4(v39, qword_1012190C8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_41;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Pausing backdrop animation: vocals are active or thermal pressure is high";
  }

  else
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000060E4(v44, qword_1012190C8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_41;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Resuming backdrop animation";
  }

  _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_41:

  swift_unknownObjectRelease();
}

void sub_1005C7034()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1005EB394;
    *(v4 + 24) = v3;
    swift_beginAccess();
    v5 = *(v1 + 24);
    swift_retain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_10006429C(0, v5[2] + 1, 1, v5);
      *(v1 + 24) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_10006429C((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = sub_10018A020;
    v9[5] = v4;
    *(v1 + 24) = v5;
    swift_endAccess();

    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_101219268);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446210;

      v15 = sub_1006698D4();
      v17 = v16;

      v18 = sub_1000105AC(v15, v17, v23);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Setting new animationData %{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }
  }

  else
  {
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101219268);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Setting animationData to nil", v21, 2u);
    }
  }
}

void sub_1005C73DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData);
    if (v5)
    {
      v6 = v5 == a2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData] = 0;

      sub_1005C7034(v7);
    }
  }
}

void sub_1005C7454(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (v2)
  {
    if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] == 1)
    {
      v4 = ((*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] | (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData + 2] << 16)) & 0x10100) == 0 || (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] & 0xFF00) == 512;
      *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) = v4;
      v5 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v5)
      {
        v6 = (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] & 0x100) == 0;
        if ((*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] & 0xFF00) == 0x200)
        {
          v6 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) = 0;
      v5 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v5)
      {
        v6 = 0;
LABEL_15:
        *(v5 + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates) = v6;
      }
    }
  }

  if ((a1 & 1) == 0 && v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] == 1)
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101218A98);
    v8 = v1;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
      if ((v12 & 0xFF00) == 0x200)
      {
        v13 = 0xE300000000000000;
        v14 = 7104878;
LABEL_34:
        v16 = sub_1000105AC(v14, v13, &v18);

        *(v10 + 4) = v16;
        _os_log_impl(&_mh_execute_header, oslog, v9, "| 🫥😐 Starting smart transition artwork animation with style=%s", v10, 0xCu);
        sub_10000959C(v11);

        return;
      }

      if (v12 > 1u)
      {
        if (v12 != 2)
        {
          v13 = 0x8000000100E3C530;
          v14 = 0xD000000000000016;
          goto LABEL_34;
        }

        v14 = 0xD000000000000012;
        v15 = "fullscreenToSquare";
      }

      else
      {
        if (!v12)
        {
          v13 = 0xEE00657261757153;
          v14 = 0x6F54657261757173;
          goto LABEL_34;
        }

        v14 = 0xD000000000000012;
        v15 = "squareToFullscreen";
      }

      v13 = (v15 - 32) | 0x8000000000000000;
      goto LABEL_34;
    }
  }
}

void sub_1005C7780(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition) == (a1 & 1))
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition))
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_101218A98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "╭ AutoMix transition is starting";
  }

  else
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101218A98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "╰ Done";
  }

  _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_13:

  sub_1005C4A54();
}

void sub_1005C7934(int a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData;
  v4 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] | (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData + 2] << 16);
  v5 = v4 & 0xFF00;
  if ((a1 & 0xFF00) == 0x200)
  {
    if (v5 == 512)
    {
      return;
    }
  }

  else if (v5 != 512 && (sub_1006B9530(a1, v4) & 1) != 0 && ((v4 & 0x100) == 0) != (a1 & 0x100) >> 8 && ((((v4 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16)) & 1) != 0)
  {
    return;
  }

  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218A98);
  v7 = v2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = *&v2[v3];
    if ((v11 & 0xFF00) == 0x200)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
LABEL_25:
      v16 = sub_1000105AC(v13, v12, &v18);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v8, "artworkTransitionData?.style=%s", v9, 0xCu);
      sub_10000959C(v10);

      return;
    }

    if (v11 > 1u)
    {
      if (v11 != 2)
      {
        v12 = 0x8000000100E3C530;
        v13 = 0xD000000000000016;
        goto LABEL_25;
      }

      v13 = 0xD000000000000012;
      v15 = "fullscreenToSquare";
    }

    else
    {
      if (!v11)
      {
        v12 = 0xEE00657261757153;
        v13 = 0x6F54657261757173;
        goto LABEL_25;
      }

      v13 = 0xD000000000000012;
      v15 = "squareToFullscreen";
    }

    v12 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_25;
  }
}

id sub_1005C7BDC()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer;
  result = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (result)
  {
    result = [result superview];
    if (result)
    {

      result = *(v0 + v1);
      if (result)
      {
        [result alpha];
        if (v3 == 1.0)
        {
          result = *(v0 + v1);
          if (result)
          {
            return ([result isHidden] ^ 1);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005C7C64()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10010FC20(&unk_101189DC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&unk_1011979E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver;
  *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver) = 0;

  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager))
  {
    v28 = v13;
    swift_beginAccess();

    sub_10010FC20(&qword_101189E18);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100009F78(0, &qword_101182960);
    v14 = static OS_dispatch_queue.main.getter();
    v27 = v9;
    v15 = v14;
    v29[0] = v14;
    v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_100020674(&qword_101189E20, &unk_101189DC0);
    v26 = v1;
    sub_1000206BC();
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v4, &qword_101182140);

    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    v17 = v26;
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101189E28, &unk_1011979E0);
    v18 = v27;
    v19 = Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v12, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = static Published.subscript.modify();
    sub_1003B4074(&v30, 0);
    v20(v29, 0);

    swift_allocObject();
    swift_weakInit();
    type metadata accessor for AnyCancellable();
    swift_allocObject();
    v21 = AnyCancellable.init(_:)();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    swift_allocObject();
    v23 = AnyCancellable.init(_:)();

    *(v17 + v28) = v23;
  }

  else
  {
    v25 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) = 0;
    sub_1005C86CC(v25);
  }
}

void sub_1005C81A4(uint64_t *a1)
{
  v2 = type metadata accessor for VideoArtwork();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101189E40);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10010FC20(&unk_101192950);
  v10 = __chkstk_darwin(v9 - 8);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v33 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v30 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
    v31 = v6;
    v19 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    v29 = v5;
    if (v19)
    {
      (*(v3 + 16))(v16, v19 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v2);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(v3 + 56);
    v22 = 1;
    v21(v16, v20, 1, v2);
    if (v33)
    {
      (*(v3 + 16))(v14, v33 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v2);
      v22 = 0;
    }

    v21(v14, v22, 1, v2);
    v23 = *(v31 + 48);
    sub_1000089F8(v16, v8, &unk_101192950);
    sub_1000089F8(v14, &v8[v23], &unk_101192950);
    v24 = *(v3 + 48);
    if (v24(v8, 1, v2) == 1)
    {
      sub_1000095E8(v14, &unk_101192950);
      sub_1000095E8(v16, &unk_101192950);
      if (v24(&v8[v23], 1, v2) == 1)
      {
        sub_1000095E8(v8, &unk_101192950);
LABEL_15:

        return;
      }
    }

    else
    {
      v25 = v32;
      sub_1000089F8(v8, v32, &unk_101192950);
      if (v24(&v8[v23], 1, v2) != 1)
      {
        v27 = v29;
        (*(v3 + 32))(v29, &v8[v23], v2);
        sub_1005EA878(&qword_101186E80, &type metadata accessor for VideoArtwork);
        LODWORD(v31) = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v3 + 8);
        v28(v27, v2);
        sub_1000095E8(v14, &unk_101192950);
        sub_1000095E8(v16, &unk_101192950);
        v28(v32, v2);
        sub_1000095E8(v8, &unk_101192950);
        if (v31)
        {
          goto LABEL_15;
        }

LABEL_13:
        v26 = *&v18[v30];
        *&v18[v30] = v33;

        sub_1005C86CC(v26);

        return;
      }

      sub_1000095E8(v14, &unk_101192950);
      sub_1000095E8(v16, &unk_101192950);
      (*(v3 + 8))(v25, v2);
    }

    sub_1000095E8(v8, &unk_101189E40);
    goto LABEL_13;
  }
}

uint64_t sub_1005C86CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_10010FC20(&qword_1011979F0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_10010FC20(&qword_1011979F8);
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  if (a1)
  {
    v16 = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
    v17 = type metadata accessor for VideoArtwork();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v15, a1 + v16, v17);
    (*(v18 + 56))(v15, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for VideoArtwork();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  v20 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  swift_beginAccess();
  sub_10006B010(v15, v2 + v20, &unk_101192950);
  swift_endAccess();
  LOBYTE(v31) = 11;
  v21 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21))
  {
    if (a1)
    {
      v22 = sub_1002752B8();
      goto LABEL_11;
    }
  }

  else if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = v32;
    if (v32 != 255)
    {
      sub_10004ADFC(v31, v32);
      goto LABEL_11;
    }
  }

  v22 = 0;
LABEL_11:
  *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady) = v22 & 1;
  if (!*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
  {
    sub_1005C8D4C(1, 0, 0);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v32 == 255)
  {
    swift_beginAccess();
    sub_10010FC20(&qword_101197A00);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100009F78(0, &qword_101182960);
    v23 = static OS_dispatch_queue.main.getter();
    v31 = v23;
    v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    sub_100020674(&qword_101197A08, &qword_1011979F0);
    sub_1000206BC();
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v6, &qword_101182140);

    (*(v28 + 8))(v9, v7);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101197A10, &qword_1011979F8);
    v25 = v30;
    v26 = Publisher<>.sink(receiveValue:)();

    (*(v29 + 8))(v12, v25);
    *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver) = v26;
  }

  sub_10004ADFC(v31, v32);
  if (*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController))
  {
    sub_1005C8D4C(1, 0, 0);

LABEL_16:
    *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver) = 0;
  }
}

void sub_1005C8D4C(int a1, int a2, char a3)
{
  v4 = v3;
  v80 = a2;
  v81 = a1;
  v6 = sub_10010FC20(&qword_1011978A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v74 - v7;
  v9 = type metadata accessor for VideoArtwork();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101189E40);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  v14 = sub_10010FC20(&unk_101192950);
  v15 = __chkstk_darwin(v14 - 8);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v82 = &v74 - v18;
  __chkstk_darwin(v17);
  v83 = &v74 - v19;
  v20 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  if (!*(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController))
  {
    return;
  }

  LOBYTE(v86) = 11;
  v21 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21))
  {
    sub_1005C9C48(0, 0, 1, 0.0);
    if (a3 & 1) != 0 && (v22)
    {
      return;
    }
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    if (v23)
    {
      v77 = v9;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      LOBYTE(v23) = v87;
      if (v87 == 255)
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        sub_10004ADFC(v86, v87);
      }

      v9 = v77;
    }

    v24 = *(v4 + v20);
    if (!v24)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    *(v24 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground) = v23 & 1;
    v25 = *(v24 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v25)
    {
      *(v25 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = v23 & 1;
    }
  }

  LOBYTE(v86) = 11;
  v26 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21);
  LODWORD(v27) = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady);
  if (v26)
  {
    if (!*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady) || (*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground) & 1) != 0)
    {
      goto LABEL_24;
    }

    v27 = *(v4 + v20);
    if (v27)
    {
LABEL_23:
      v29 = v27;
      sub_1001C9480();

      goto LABEL_24;
    }

    __break(1u);
  }

  if (v27)
  {
    if (!*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) || (, v28 = sub_1002752B8(), , (v28 & 1) == 0))
    {
      v27 = *(v4 + v20);
      if (!v27)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v77 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  if (!*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) || (swift_getKeyPath(), swift_getKeyPath(), v76 = v20, , static Published.subscript.getter(), , v20 = v76, , , v87 == 255))
  {
    sub_1005C6A74(1);
    sub_1005D84C8(1);
    sub_1005D90E0(1);
    v38 = type metadata accessor for MorphingMotionArtwork(0);
    (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
    v39 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    swift_beginAccess();
    sub_10006B010(v8, v4 + v39, &qword_1011978A8);
    swift_endAccess();
    v40 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = 0;

    v41 = *(v4 + v20);
    if (v41)
    {
      v42 = *(v41 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v42)
      {
        *&v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = 0;
        v43 = v42;

        sub_10006ADD4();
      }

      return;
    }

    goto LABEL_81;
  }

  sub_10004ADFC(v86, v87);
  v30 = v77;
  if (!*(v4 + v77))
  {
    return;
  }

  v31 = sub_1002752B8();

  if ((v31 & 1) == 0)
  {
    if (*(v4 + v30))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v44 = v87;
      if (v87 != 255)
      {
        sub_10004ADFC(v86, v87);
        if ((v44 & 1) == 0)
        {
          LOBYTE(v86) = 11;
          if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21) & 1) == 0 || (v45 = [objc_opt_self() currentDevice], v46 = objc_msgSend(v45, "userInterfaceIdiom"), v45, v46 != 1))
          {
            sub_1005CD4F8(v4, v81 & 1);
          }
        }
      }
    }

    return;
  }

  v32 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  swift_beginAccess();
  v33 = v83;
  sub_1000089F8(v4 + v32, v83, &unk_101192950);
  v34 = *(v4 + v30);
  if (v34)
  {
    v35 = v84;
    v36 = v82;
    (*(v84 + 16))(v82, v34 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v9);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v35 = v84;
    v36 = v82;
  }

  (*(v35 + 56))(v36, v37, 1, v9);
  v47 = *(v11 + 48);
  sub_1000089F8(v33, v13, &unk_101192950);
  v75 = v47;
  sub_1000089F8(v36, &v13[v47], &unk_101192950);
  v48 = v33;
  v49 = *(v35 + 48);
  if (v49(v13, 1, v9) == 1)
  {
    sub_1000095E8(v36, &unk_101192950);
    sub_1000095E8(v48, &unk_101192950);
    if (v49(&v13[v75], 1, v9) == 1)
    {
      sub_1000095E8(v13, &unk_101192950);
      return;
    }

    goto LABEL_46;
  }

  v50 = v79;
  sub_1000089F8(v13, v79, &unk_101192950);
  v51 = v75;
  if (v49(&v13[v75], 1, v9) == 1)
  {
    sub_1000095E8(v82, &unk_101192950);
    sub_1000095E8(v83, &unk_101192950);
    (*(v84 + 8))(v50, v9);
LABEL_46:
    sub_1000095E8(v13, &unk_101189E40);
    v52 = v76;
    v53 = v77;
    goto LABEL_47;
  }

  v58 = v84;
  v59 = &v13[v51];
  v60 = v78;
  (*(v84 + 32))(v78, v59, v9);
  sub_1005EA878(&qword_101186E80, &type metadata accessor for VideoArtwork);
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v60, v9);
  sub_1000095E8(v82, &unk_101192950);
  sub_1000095E8(v83, &unk_101192950);
  v62(v50, v9);
  sub_1000095E8(v13, &unk_101192950);
  v52 = v76;
  v53 = v77;
  if (v61)
  {
    return;
  }

LABEL_47:
  v54 = *(v4 + v52);
  if (!v54)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v55 = *(v54 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v55)
  {
    goto LABEL_68;
  }

  v56 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData);
  if ((v56 & 0xFF00) == 0x200)
  {
    v55[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = 0;
    v57 = v55;
    goto LABEL_61;
  }

  if (v56 > 1u)
  {
    if (v56 != 2)
    {
      goto LABEL_60;
    }

    v63 = "squareToFullscreen";
  }

  else
  {
    v63 = "y";
    if (!v56)
    {
      goto LABEL_60;
    }
  }

  if (0x8000000100E3C4F0 == (v63 | 0x8000000000000000))
  {
    v57 = v55;

    v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = 1;
    goto LABEL_67;
  }

LABEL_60:
  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v57 = v55;

  v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = v64 & 1;
  if ((v64 & 1) == 0)
  {
LABEL_61:
    if (v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate] == 1)
    {
      v65 = *&v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView];
      *&v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView] = 0;
      if (v65)
      {
        [v65 removeFromSuperview];
      }

      v66 = *&v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot];
      *&v57[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot] = 0;
      if (v66)
      {
        [v66 removeFromSuperview];
      }

      sub_10065CE7C(0, 1);
    }
  }

LABEL_67:

LABEL_68:
  v67 = *(v4 + v52);
  if (!v67)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v68 = *(v67 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v68)
  {
    *&v68[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = *(v4 + v53);
    swift_retain_n();
    v69 = v68;

    sub_10006ADD4();
  }

  sub_1005CAD44();
  sub_1005CB484(v81 & 1, v80 & 1);
  v85 = 11;
  v70 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21);
  v71 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) & 0xC000000000000000;
  if (v70)
  {
    if (v71 != 0x4000000000000000)
    {
      return;
    }

    v72 = *(v4 + v52);
    if (v72)
    {
      if (*(v72 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) - 1 <= 1)
      {
        goto LABEL_79;
      }

      return;
    }

    goto LABEL_85;
  }

  if (v71 != 0x4000000000000000)
  {
    return;
  }

  v73 = *(v4 + v52);
  if (!v73)
  {
LABEL_86:
    __break(1u);
    return;
  }

  if (*(v73 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
  {
LABEL_79:
    sub_1005C6A74(1);
    sub_1005D84C8(1);
    sub_1005D90E0(1);
  }
}

void sub_1005C99B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition) == 1)
    {
      if (qword_10117F5C8 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000060E4(v2, qword_101218A98);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "| Got motion data while in a transition", v5, 2u);
      }
    }

    sub_1005C8D4C(1, 1, 0);
  }
}

void sub_1005C9AEC()
{
  v1 = v0;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 deactivateConstraints:isa];

    v5 = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:v5];

    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005C9C48(int a1, int a2, char a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for AnimationCompletionCriteria();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock) = 11;
  v15 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v15) & 1) == 0)
  {
    return;
  }

  v69 = v12;
  v16 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground;
  v17 = v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground];
  sub_1005CA4E0(a1, a2, a3 & 1, v4);
  v19 = v18;
  v21 = v20;
  v22 = [v4 traitCollection];
  v23 = sub_1005E7D18(v22, v19, v21);

  v5[v16] = v23 & 1;
  sub_1005C9AEC();
  v24 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
  v67 = ObjectType;
  if (v24 && (, v25 = sub_1002752B8(), , (v25 & 1) != 0))
  {
    v26 = v5[v16];
  }

  else
  {
    v26 = 0;
  }

  v27 = OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground;
  v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground] = v26;
  v28 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v29 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v29)
  {
    __break(1u);
    goto LABEL_42;
  }

  *(v29 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground) = v26;
  v30 = *(v29 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v30)
  {
    *(v30 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = v26;
  }

  if (sub_1005C7BDC())
  {
    v31 = *&v5[v28];
    if (v5[v27] == 1)
    {
      if (!v31)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v32 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v32)
      {
        [v32 setAlpha:0.0];
        v31 = *&v5[v28];
        if (!v31)
        {
          goto LABEL_46;
        }
      }

      v33 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v33)
      {
        v34 = 1.0;
LABEL_21:
        [*(v33 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setAlpha:v34];
      }
    }

    else
    {
      if (!v31)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v35 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v35)
      {
        [v35 setAlpha:1.0];
        v31 = *&v5[v28];
        if (!v31)
        {
          goto LABEL_47;
        }
      }

      v33 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v33)
      {
        v34 = 0.0;
        goto LABEL_21;
      }
    }
  }

  if (v17 == v5[v16])
  {
    return;
  }

  static Animation.easeInOut(duration:)();
  v68 = Animation.delay(_:)();

  v36 = [v5 traitCollection];
  [v36 displayCornerRadius];
  v38 = v37;

  v39 = Corner.large.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];
  v42 = *(v39 + 16);
  v43 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState];
  v65 = *v39;
  v66 = v28;
  v64 = v42;
  if (v17)
  {
    if (v43)
    {
      v44 = *(v43 + 40);
      if (v44 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v43 + 24), *(v43 + 32), v44, v38, -1, 0))
      {
        KeyPath = swift_getKeyPath();
        v63 = &v63;
        __chkstk_darwin(KeyPath);
        *(&v63 - 4) = v43;
        *(&v63 - 3) = v38;
        *(&v63 - 2) = -1;
        *(&v63 - 8) = 0;
        aBlock = v43;
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v45 = v41;
      }

      else
      {
        *(v43 + 24) = v38;
        *(v43 + 32) = -1;
        *(v43 + 40) = 0;
        v45 = v41;
      }

      goto LABEL_35;
    }

LABEL_32:
    v45 = v41;
    goto LABEL_35;
  }

  if (!v43)
  {
    goto LABEL_32;
  }

  v46 = *(v43 + 40);
  v45 = v41;
  if (v46 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v43 + 24), *(v43 + 32), v46, v40, v41, v42))
  {
    v48 = swift_getKeyPath();
    v63 = &v63;
    __chkstk_darwin(v48);
    *(&v63 - 4) = v43;
    *(&v63 - 3) = v40;
    *(&v63 - 2) = v41;
    *(&v63 - 8) = v42;
    aBlock = v43;
    sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

    v45 = v41;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = v42;
  }

LABEL_35:

  v49 = static AnimationCompletionCriteria.removed.getter();
  __chkstk_darwin(v49);
  *(&v63 - 8) = v5;
  *(&v63 - 7) = v38;
  *(&v63 - 6) = -1;
  *(&v63 - 40) = 0;
  *(&v63 - 4) = v65;
  *(&v63 - 3) = v45;
  *(&v63 - 16) = v64;
  *(swift_allocObject() + 16) = v5;
  v50 = v5;
  withAnimation<A>(_:completionCriteria:_:completion:)();

  (*(v69 + 8))(v14, v11);
  sub_1005C6A74(0);
  v51 = v66;
  v52 = *&v5[v66];
  if (!v52)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ([v52 isViewLoaded])
  {
    v53 = *&v5[v51];
    if (v53)
    {
      v54 = v53;
      sub_1001C9480();

      v55 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v50;
      v74 = sub_1005EA90C;
      v75 = v56;
      aBlock = _NSConcreteStackBlock;
      v71 = 1107296256;
      v72 = sub_10002BC98;
      v73 = &unk_1010B5DB0;
      v57 = _Block_copy(&aBlock);
      v58 = v50;

      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      v61 = v67;
      *(v60 + 16) = v59;
      *(v60 + 24) = v61;
      v74 = sub_1005EA914;
      v75 = v60;
      aBlock = _NSConcreteStackBlock;
      v71 = 1107296256;
      v72 = sub_1005C3688;
      v73 = &unk_1010B5E00;
      v62 = _Block_copy(&aBlock);

      [v55 animateWithDuration:0 delay:v57 options:v62 animations:a4 completion:0.0];

      _Block_release(v62);
      _Block_release(v57);
      return;
    }

    goto LABEL_45;
  }
}

void sub_1005CA4E0(int a1, int a2, char a3, id a4)
{
  if (a3)
  {
    v5 = [a4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        [v7 bounds];

        return;
      }

      v8 = [a4 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];

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

void sub_1005CA5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState;
  v11 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);
  if (v11)
  {
    v12 = (*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground) ^ 1) & 1;
    if (v12 == *(v11 + 16))
    {
      *(v11 + 16) = v12;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v14 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 superview];
    if (v16)
    {
      v17 = v16;
      v18 = sub_100025CE0();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v18) & 1) == 0 || (*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
      {
        goto LABEL_12;
      }

      v19 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v19 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v20)
      {
        v21 = v20;
      }

      else
      {
LABEL_12:
        v21 = sub_1005C405C();
      }

      v22 = v21;
      [v17 insertSubview:v15 aboveSubview:v21];
    }
  }

  v23 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground);
  v24 = *(a1 + v10);
  if (v23 == 1)
  {
    if (v24)
    {
      v25 = *(v24 + 40);
      if (v25 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v24 + 24), *(v24 + 32), v25, a2, a3, a4))
      {
        v27 = swift_getKeyPath();
        __chkstk_darwin(v27);
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v24 + 24) = a2;
        *(v24 + 32) = a3;
        *(v24 + 40) = a4;
      }
    }
  }

  else if (v24)
  {
    v26 = *(v24 + 40);
    if (v26 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v24 + 24), *(v24 + 32), v26, a5, a6, a7))
    {
      v28 = swift_getKeyPath();
      __chkstk_darwin(v28);
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v24 + 24) = a5;
      *(v24 + 32) = a6;
      *(v24 + 40) = a7;
    }
  }
}

uint64_t sub_1005CAA64(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground) == 1)
  {
    v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState;
    v2 = *(result + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);
    if (v2)
    {
      v3 = result;
      swift_getKeyPath();
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(v2 + 16);

      if ((v4 & 1) == 0)
      {
        v5 = *(v3 + v1);
        if (v5)
        {
          if (*(v5 + 40) == 255)
          {
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);

            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }
      }
    }
  }

  return result;
}

void sub_1005CAC18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
    {

      v2 = sub_1002752B8();

      if (v2)
      {
        v3 = v1;
        v4 = [v3 view];
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = v4;
        [v4 frame];
        v7 = v6;
        v9 = v8;

        v10 = [v3 traitCollection];
        v11 = sub_1005E7D18(v10, v7, v9) & 1;

        if (v11 != v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground])
        {
          sub_1005C9C48(0, 0, 1, 0.0);
        }
      }
    }
  }
}

id sub_1005CAD44()
{
  v1 = sub_10010FC20(&qword_1011978A8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v69 - v6;
  __chkstk_darwin(v5);
  v9 = &v69 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v69 - v16;
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  if (!*&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v20 = v79;
  if (v79 == 255)
  {
LABEL_11:

LABEL_12:
    v47 = type metadata accessor for MorphingMotionArtwork(0);
    (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
    v48 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    swift_beginAccess();
    sub_10006B010(v7, &v0[v48], &qword_1011978A8);
    return swift_endAccess();
  }

  v73 = v0;
  v21 = v78;
  VideoArtwork.url.getter();
  LOBYTE(v78) = 11;
  v22 = sub_100025CE0();
  v23 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v22);
  v74 = v21;
  if ((v23 & 1) == 0)
  {
    v72 = v20;
    v34 = v19;
    v36 = v75;
    v35 = v76;
    v37 = *(v76 + 16);
    v71 = v34;
    v37(v14);
    v38 = type metadata accessor for MorphingMotionArtwork(0);
    v39 = v38[7];
    v40 = &v4[v38[8]];
    v77 = 0;
    v41 = v21;
    State.init(wrappedValue:)();
    v42 = v79;
    *v40 = v78;
    *(v40 + 1) = v42;
    (*(v35 + 32))(v4, v14, v36);
    *&v4[v38[5]] = v41;
    v43 = &v4[v38[6]];
    *v43 = 0;
    *(v43 + 1) = 0;
    v43[16] = 1;
    *&v4[v39] = 0;
    (*(*(v38 - 1) + 56))(v4, 0, 1, v38);
    v44 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    v0 = v73;
    swift_beginAccess();
    v45 = &v0[v44];
    v46 = v4;
    goto LABEL_20;
  }

  v0 = v73;
  v24 = *&v73[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState];
  if (!v24)
  {
    (*(v76 + 8))(v19, v75);
    sub_10004ADFC(v74, v20);
    goto LABEL_11;
  }

  result = [v0 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = [result window];

  v28 = 0.0;
  v72 = v20;
  v70 = v24;
  if (v27)
  {
    v29 = [v27 windowScene];

    v30 = 0.0;
    if (v29)
    {
      v31 = [v29 screen];

      [v31 bounds];
      v28 = v32;
      v30 = v33;
    }
  }

  else
  {
    v30 = 0.0;
  }

  if (v30 < v28)
  {
    v28 = v30;
  }

  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  if (v50 == 1)
  {
    v51 = v28;
  }

  else
  {
    v51 = v28 * 4.0 / 3.0;
  }

  v53 = v75;
  v52 = v76;
  v54 = *(v76 + 16);
  v71 = v19;
  v54(v17, v19, v75);
  v55 = type metadata accessor for MorphingMotionArtwork(0);
  v56 = v55[7];
  v57 = &v9[v55[8]];
  v77 = 0;
  v58 = v74;
  State.init(wrappedValue:)();
  v59 = v79;
  *v57 = v78;
  *(v57 + 1) = v59;
  v36 = v53;
  (*(v52 + 32))(v9, v17, v53);
  *&v9[v55[5]] = v58;
  v60 = &v9[v55[6]];
  *v60 = v28;
  *(v60 + 1) = v51;
  v60[16] = 0;
  *&v9[v56] = v70;
  (*(*(v55 - 1) + 56))(v9, 0, 1, v55);
  v61 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  swift_beginAccess();
  v45 = &v0[v61];
  v46 = v9;
LABEL_20:
  sub_10006B010(v46, v45, &qword_1011978A8);
  result = swift_endAccess();
  v62 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  v63 = v72;
  if (!v62)
  {
    __break(1u);
    goto LABEL_27;
  }

  v64 = *(v62 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  v65 = v74;
  v66 = v71;
  if (!v64)
  {
LABEL_24:
    sub_10004ADFC(v65, v63);

    return (*(v76 + 8))(v66, v36);
  }

  if (*(v64 + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates))
  {
    v67 = sub_1005C405C();
    v68 = v65;
    sub_100427990(v65, 1, 0x4008000000000000, 0);
    sub_10004ADFC(v65, v63);

    goto LABEL_24;
  }

  (*(v76 + 8))(v71, v36);
  sub_10004ADFC(v65, v63);
}

uint64_t sub_1005CB484(int a1, int a2)
{
  v5 = sub_10010FC20(&qword_1011978A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v213 - v6;
  v8 = type metadata accessor for MorphingMotionArtwork(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v213 - v14;
  v16 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v17 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v17)
  {
    LODWORD(v226) = a2;
    v18 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    swift_beginAccess();
    sub_1000089F8(v2 + v18, v7, &qword_1011978A8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1000095E8(v7, &qword_1011978A8);
    }

    sub_1005EA91C(v7, v15);
    v19 = v17[OBJC_IVAR___MusicNowPlayingControlsViewController_mode];
    v20 = v19 == 3 || v19 == 0;
    if (!v20)
    {
      return sub_1005EA980(v15, type metadata accessor for MorphingMotionArtwork);
    }

    if (v17[OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode])
    {
      return sub_1005EA980(v15, type metadata accessor for MorphingMotionArtwork);
    }

    v21 = *&v17[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    if (!v21 || (*(v21 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) & 1) != 0)
    {
      return sub_1005EA980(v15, type metadata accessor for MorphingMotionArtwork);
    }

    v214 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView;
    v221 = v17;
    v220 = a1;
    v22 = v2;
    sub_1005D84C8(a1 & 1);
    sub_1005EA9E0(v15, v12);
    v23 = objc_allocWithZone(sub_10010FC20(&qword_1011978C8));
    v24 = _UIHostingView.init(rootView:)();
    v25 = UIView.forAutolayout.getter();

    type metadata accessor for MorphingMotionArtworkContainer();
    v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v27 = *(v22 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    *(v22 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = v26;
    v28 = v26;

    v215 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState;
    *&v28[OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state] = *(v22 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);

    v29 = v28;
    v30 = v25;
    v31 = v29;
    v32 = v30;
    v33 = v31;
    v34 = v32;
    v35 = v33;
    v36 = v34;
    v37 = v35;
    v225 = v36;
    [v37 addSubview:?];
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = a1 & 1;
    *(v39 + 32) = v22;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1005EAA44;
    *(v40 + 24) = v39;
    v219 = v39;
    v231 = sub_10018A020;
    v232 = v40;
    aBlock = _NSConcreteStackBlock;
    v228 = 1107296256;
    v229 = sub_100029B9C;
    v230 = &unk_1010B5E78;
    v41 = _Block_copy(&aBlock);
    v42 = v37;
    v224 = v22;
    v43 = v22;

    v217 = v38;
    [v38 performWithoutAnimation:v41];
    _Block_release(v41);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
LABEL_129:
      swift_once();
LABEL_82:
      v158 = type metadata accessor for Logger();
      sub_1000060E4(v158, qword_101218A98);
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        *v161 = 0;
        _os_log_impl(&_mh_execute_header, v159, v160, "| 🫥😐 – Showing morphingMotionView: full-screen mode", v161, 2u);
      }

      v162 = *&v38[v41[122]];
      v135 = v224;
      if ((v162 & 0xFF00) == 0x200)
      {
        goto LABEL_106;
      }

      if (v162 > 1u)
      {
        if (v162 != 2)
        {
          goto LABEL_92;
        }

        v163 = "squareToFullscreen";
      }

      else
      {
        v163 = "y";
        if (!v162)
        {
          goto LABEL_92;
        }
      }

      if (0x8000000100E3C4F0 == (v163 | 0x8000000000000000))
      {

LABEL_93:
        v165 = *&v17[v214];
        if (v165)
        {
          v166 = v165[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates];
          v165[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates] = 1;
          v167 = v165;
          v168 = v167;
          if ((v166 & 1) == 0)
          {
            [v167 setNeedsLayout];
          }

          v169 = [v42 superview];

          if (v169)
          {
            [v169 insertSubview:v168 belowSubview:v42];
          }

          v170 = v168;
          [v170 setTranslatesAutoresizingMaskIntoConstraints:1];
          aBlock = 0x3FF0000000000000;
          v228 = 0;
          v229 = 0;
          v230 = 0x3FF0000000000000;
          v231 = 0;
          v232 = 0;
          result = [v170 setTransform:&aBlock];
          v171 = *(v135 + v16);
          if (v171)
          {
            result = *(v171 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
            if (result)
            {
              [result layoutFrame];
              [v170 setFrame:?];

              _s4MaskCMa();
              swift_allocObject();
              v172 = sub_1007CDF70(0);
              if (!v172)
              {
LABEL_103:

                sub_100345538(1, v170, 0, 0);
                v188 = Logger.logObject.getter();
                v189 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v188, v189))
                {
                  v190 = swift_slowAlloc();
                  *v190 = 0;
                  _os_log_impl(&_mh_execute_header, v188, v189, "| 🫥😐 – Hiding square artwork", v190, 2u);
                }

                v135 = v224;
LABEL_108:
                v191 = *&v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
                if (v191)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();

                  static Published.subscript.getter();

                  LOBYTE(v191) = v228;
                  if (v228 == 255)
                  {
                    LOBYTE(v191) = 0;
                  }

                  else
                  {
                    sub_10004ADFC(aBlock, v228);
                  }
                }

                v192 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v193 = swift_allocObject();
                *(v193 + 16) = v192;
                *(v193 + 24) = v191 & 1;
                if ((v220 & 1) != 0 && (v38[v216] & 1) == 0)
                {
                  v204 = swift_allocObject();
                  *(v204 + 16) = v38;
                  v231 = sub_1005EAAB4;
                  v232 = v204;
                  aBlock = _NSConcreteStackBlock;
                  v228 = 1107296256;
                  v229 = sub_10002BC98;
                  v230 = &unk_1010B5F90;
                  v205 = _Block_copy(&aBlock);
                  v206 = v38;

                  swift_unknownObjectWeakInit();
                  swift_unknownObjectWeakDestroy();
                  v207 = swift_allocObject();
                  *(v207 + 16) = sub_1005EAA88;
                  *(v207 + 24) = v193;
                  v231 = sub_100029B6C;
                  v232 = v207;
                  aBlock = _NSConcreteStackBlock;
                  v228 = 1107296256;
                  v229 = sub_1005C3688;
                  v230 = &unk_1010B5FE0;
                  v208 = _Block_copy(&aBlock);

                  [v217 animateWithDuration:v205 animations:v208 completion:0.15];
                  _Block_release(v208);
                  _Block_release(v205);

                  sub_1005EA980(v15, type metadata accessor for MorphingMotionArtwork);
                }

                if (v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] != 1)
                {

                  sub_1005D8CD0(v202, v191 & 1);

                  sub_1005EA980(v15, type metadata accessor for MorphingMotionArtwork);

                  v203 = 0;
                  return sub_100020438(v203);
                }

                v194 = swift_allocObject();
                v195 = v221;
                *(v194 + 16) = v221;
                v196 = swift_allocObject();
                *(v196 + 16) = sub_1005EAA94;
                *(v196 + 24) = v194;
                v231 = sub_10018A020;
                v232 = v196;
                aBlock = _NSConcreteStackBlock;
                v228 = 1107296256;
                v229 = sub_100029B9C;
                v230 = &unk_1010B5F40;
                v197 = _Block_copy(&aBlock);
                v198 = v232;
                v226 = v195;

                [v217 performWithoutAnimation:v197];
                _Block_release(v197);
                isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                if (isEscapingClosureAtFileLocation)
                {
                  __break(1u);
                }

                else
                {
                  v200 = *(v135 + v215);
                  if (v200)
                  {
                    if (v200[42])
                    {
                      KeyPath = swift_getKeyPath();
                      v224 = &v213;
                      __chkstk_darwin(KeyPath);
                      *(&v213 - 2) = v200;
                      *(&v213 - 8) = 0;
                      aBlock = v200;
                      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

                      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                    }

                    else
                    {
                      v200[42] = 0;
                    }
                  }

                  v196 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v198 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions;
                  swift_beginAccess();
                  isEscapingClosureAtFileLocation = *&v38[v198];

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v38[v198] = isEscapingClosureAtFileLocation;
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_123;
                  }
                }

                isEscapingClosureAtFileLocation = sub_10006429C(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
                *&v38[v198] = isEscapingClosureAtFileLocation;
LABEL_123:
                v211 = *(isEscapingClosureAtFileLocation + 16);
                v210 = *(isEscapingClosureAtFileLocation + 24);
                if (v211 >= v210 >> 1)
                {
                  isEscapingClosureAtFileLocation = sub_10006429C((v210 > 1), v211 + 1, 1, isEscapingClosureAtFileLocation);
                }

                *(isEscapingClosureAtFileLocation + 16) = v211 + 1;
                v212 = isEscapingClosureAtFileLocation + 16 * v211;
                *(v212 + 32) = sub_1005EAA9C;
                *(v212 + 40) = v196;
                *&v38[v198] = isEscapingClosureAtFileLocation;
                swift_endAccess();

                sub_1005EA980(v15, type metadata accessor for MorphingMotionArtwork);

                v203 = sub_1005EAA94;
                return sub_100020438(v203);
              }

              v173 = v172;
              v174 = *(v172 + 16);
              result = [v38 view];
              if (result)
              {
                v175 = result;
                [result bounds];
                v177 = v176;
                v179 = v178;
                v181 = v180;
                v183 = v182;

                [v174 setFrame:{v177, v179, v181, v183}];
                v184 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v185 = swift_allocObject();
                *(v185 + 16) = v170;
                *(v185 + 24) = v184;
                v186 = v173[5];
                v173[5] = sub_1005EAB04;
                v173[6] = v185;
                v187 = v170;

                sub_100020438(v186);

                *&v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = v173;

                [v42 setMaskView:v173[2]];

                goto LABEL_103;
              }

              goto LABEL_143;
            }

            goto LABEL_141;
          }

LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

LABEL_106:

        goto LABEL_107;
      }

LABEL_92:
      v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v164 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_93;
    }

    LOBYTE(aBlock) = 11;
    v44 = sub_100025CE0();
    v45 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v44);
    v218 = v44;
    v223 = v43;
    if (v45)
    {

      v46 = v225;
      v47 = [objc_opt_self() currentDevice];
      v48 = [v47 userInterfaceIdiom];

      v49 = v224;
      if (v48)
      {
        [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

        result = [v221 view];
        if (result)
        {
          v50 = result;
          LOBYTE(aBlock) = 11;
          result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v44);
          if (result)
          {
            if (*(v223 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
            {
              v51 = v223;
LABEL_47:
              v96 = sub_1005C405C();
              goto LABEL_48;
            }

            v94 = *(v224 + v16);
            if (!v94)
            {
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            v95 = *(v94 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
            if (v95)
            {
              v96 = v95;
              v51 = v223;
LABEL_48:
              [v50 insertSubview:v42 aboveSubview:v96];

              v222 = objc_opt_self();
              sub_10010FC20(&qword_101183990);
              v97 = swift_allocObject();
              *(v97 + 16) = xmmword_100EBDC10;
              v98 = [v42 leadingAnchor];

              v216 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
              v99 = [*(v51 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide) leadingAnchor];
              v100 = [v98 constraintEqualToAnchor:v99];

              *(v97 + 32) = v100;
              v101 = [v42 topAnchor];

              v102 = v42;
              v103 = v216;
              v104 = [*(v51 + v216) topAnchor];
              v105 = [v101 constraintEqualToAnchor:v104];

              *(v97 + 40) = v105;
              v106 = [v102 trailingAnchor];

              v107 = [*(v51 + v103) trailingAnchor];
              v108 = [v106 constraintEqualToAnchor:v107];

              *(v97 + 48) = v108;
              v109 = [v102 bottomAnchor];

              v110 = *(v51 + v103);
              v42 = v102;
              v111 = [v110 bottomAnchor];
              v112 = [v109 constraintEqualToAnchor:v111];

              *(v97 + 56) = v112;
              sub_100009F78(0, &qword_1011838A0);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v222 activateConstraints:isa];

              goto LABEL_49;
            }
          }

          v51 = v223;
          goto LABEL_47;
        }

        goto LABEL_135;
      }

      result = *(v49 + v16);
      if (!result)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      result = [result view];
      if (!result)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v80 = result;
      LOBYTE(aBlock) = 11;
      result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v44);
      if (result)
      {
        v81 = v223;
        if (*(v223 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
        {
LABEL_40:
          v84 = sub_1005C405C();
LABEL_41:
          [v80 insertSubview:v42 aboveSubview:v84];

          result = [v81 view];
          if (result)
          {
            v85 = result;
            [result bounds];
            v87 = v86;
            v89 = v88;
            v91 = v90;
            v93 = v92;

            [v42 setFrame:{v87, v89, v91, v93}];
            [v42 setAutoresizingMask:18];
LABEL_49:
            v222 = objc_opt_self();
            sub_10010FC20(&qword_101183990);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_100EBDC10;
            v114 = v225;
            v115 = [v225 centerXAnchor];

            v116 = [v42 centerXAnchor];
            v117 = [v115 constraintEqualToAnchor:v116];

            *(v67 + 32) = v117;
            v118 = [v114 centerYAnchor];

            v119 = [v42 centerYAnchor];
            v120 = [v118 constraintEqualToAnchor:v119];

            *(v67 + 40) = v120;
            v121 = [v114 widthAnchor];

            v122 = [v42 widthAnchor];
            v123 = [v121 constraintEqualToAnchor:v122];

            *(v67 + 48) = v123;
            v78 = [v114 heightAnchor];

            v79 = [v42 heightAnchor];
            v69 = v42;
LABEL_50:
            v124 = v79;

            v125 = [v78 constraintEqualToAnchor:v124];
            *(v67 + 56) = v125;
            sub_100009F78(0, &qword_1011838A0);
            v126 = Array._bridgeToObjectiveC()().super.isa;

            [v222 activateConstraints:v126];

            LOBYTE(aBlock) = 11;
            v127 = v218;
            v128 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v218);
            v38 = v223;
            if (v128)
            {
              sub_1005C9C48(0, 0, 1, 0.0);
            }

            v129 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v130 = swift_allocObject();
            v131 = v221;
            v222 = v130;
            v130[2] = v129;
            v130[3] = v131;
            v216 = OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition;
            v132 = v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition];
            v221 = v131;
            v20 = v132 == 1;
            v133 = v226;
            if (!v20)
            {

              v135 = v224;
              if (v133)
              {

                if (v38[v216])
                {
                  v136 = 3.0;
                }

                else
                {
                  v136 = 0.15;
                }

                v137 = swift_allocObject();
                v138 = v222;
                *(v137 + 16) = sub_1005EAA80;
                *(v137 + 24) = v138;
                v231 = sub_100029B6C;
                v232 = v137;
                aBlock = _NSConcreteStackBlock;
                v228 = 1107296256;
                v229 = sub_10002BC98;
                v230 = &unk_1010B6058;
                v139 = _Block_copy(&aBlock);

                [v217 animateWithDuration:v139 animations:v136];
                _Block_release(v139);
              }

              else if (v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] == 1)
              {

                v140 = swift_allocObject();
                v141 = v222;
                *(v140 + 16) = sub_1005EAA80;
                *(v140 + 24) = v141;
                v142 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions;
                swift_beginAccess();
                v143 = *&v38[v142];

                v144 = swift_isUniquelyReferenced_nonNull_native();
                *&v38[v142] = v143;
                if ((v144 & 1) == 0)
                {
                  v143 = sub_10006429C(0, v143[2] + 1, 1, v143);
                  *&v38[v142] = v143;
                }

                v146 = v143[2];
                v145 = v143[3];
                if (v146 >= v145 >> 1)
                {
                  v143 = sub_10006429C((v145 > 1), v146 + 1, 1, v143);
                }

                v143[2] = v146 + 1;
                v147 = &v143[2 * v146];
                v147[4] = sub_100029B94;
                v147[5] = v140;
                *&v38[v142] = v143;
                swift_endAccess();
              }

              else
              {
                sub_1005D8924(v129, v221);
              }

              goto LABEL_108;
            }

            [v42 setAlpha:1.0];

            LOBYTE(aBlock) = 11;
            v41 = &unk_101197000;
            if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v127))
            {
              v134 = *&v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
              if ((v134 & 0xFF00) != 0x200)
              {
                if (!v134)
                {

                  goto LABEL_71;
                }

                v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v148)
                {
LABEL_71:
                  v149 = v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground];

                  if ((v149 & 1) == 0)
                  {

                    if (qword_10117F5C8 != -1)
                    {
                      swift_once();
                    }

                    v150 = type metadata accessor for Logger();
                    sub_1000060E4(v150, qword_101218A98);
                    v151 = Logger.logObject.getter();
                    v152 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v151, v152))
                    {
                      v153 = swift_slowAlloc();
                      *v153 = 0;
                      _os_log_impl(&_mh_execute_header, v151, v152, "| 🫥😐 – Showing morphingMotionView: plain motion mode", v153, 2u);
                    }

                    _s4MaskCMa();
                    swift_allocObject();
                    result = sub_1007CDF70(0);
                    if (!result)
                    {

                      v135 = v224;
                      goto LABEL_108;
                    }

                    v135 = v224;
                    v154 = *(v224 + v16);
                    if (v154)
                    {
                      v155 = result;
                      result = *(v154 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
                      if (result)
                      {
                        [result layoutFrame];
                        [*(v155 + 16) setFrame:{0.0, 0.0}];
                        v156 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v157 = *(v155 + 40);
                        *(v155 + 40) = sub_1005EAB0C;
                        *(v155 + 48) = v156;

                        sub_100020438(v157);

                        *&v38[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = v155;

                        [v42 setMaskView:*(v155 + 16)];

LABEL_107:

                        goto LABEL_108;
                      }

LABEL_146:
                      __break(1u);
                      return result;
                    }

LABEL_145:
                    __break(1u);
                    goto LABEL_146;
                  }

LABEL_81:
                  sub_100345538(0, v42, 0, 0);
                  if (qword_10117F5C8 == -1)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_129;
                }
              }
            }

            goto LABEL_81;
          }

          goto LABEL_138;
        }

        v82 = *(v224 + v16);
        if (!v82)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v83 = *(v82 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v83)
        {
          v84 = v83;
          v81 = v223;
          goto LABEL_41;
        }
      }

      v81 = v223;
      goto LABEL_40;
    }

    v52 = v225;

    result = *(v224 + v16);
    if (result)
    {
      result = [result view];
      if (result)
      {
        v53 = result;
        LOBYTE(aBlock) = 11;
        result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v44);
        if (result)
        {
          v54 = v223;
          if (*(v223 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
          {
LABEL_29:
            v57 = sub_1005C405C();
LABEL_30:
            [v53 insertSubview:v42 aboveSubview:v57];

            result = [v54 view];
            if (result)
            {
              v58 = result;
              [result bounds];
              v60 = v59;
              v62 = v61;
              v64 = v63;
              v66 = v65;

              [v42 setFrame:{v60, v62, v64, v66}];
              [v42 setAutoresizingMask:18];
              v222 = objc_opt_self();
              sub_10010FC20(&qword_101183990);
              v67 = swift_allocObject();
              *(v67 + 16) = xmmword_100EBDC10;
              v68 = [v42 leadingAnchor];

              v69 = v225;
              v70 = [v225 leadingAnchor];

              v71 = [v68 constraintEqualToAnchor:v70];
              *(v67 + 32) = v71;
              v72 = [v42 topAnchor];

              v73 = [v69 topAnchor];
              v74 = [v72 constraintEqualToAnchor:v73];

              *(v67 + 40) = v74;
              v75 = [v42 trailingAnchor];

              v76 = [v69 trailingAnchor];
              v77 = [v75 constraintEqualToAnchor:v76];

              *(v67 + 48) = v77;
              v78 = [v42 bottomAnchor];

              v79 = [v69 bottomAnchor];
              goto LABEL_50;
            }

            goto LABEL_134;
          }

          v55 = *(v224 + v16);
          if (!v55)
          {
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          v56 = *(v55 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v56)
          {
            v57 = v56;
            v54 = v223;
            goto LABEL_30;
          }
        }

        v54 = v223;
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  return result;
}

void sub_1005CD4F8(uint64_t a1, char a2)
{
  v4 = sub_10010FC20(&qword_1011978A8);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  sub_1005C6A74(1);
  sub_1005D84C8(a2);
  sub_1005D90E0(a2);
  v7 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  swift_beginAccess();
  sub_10006B010(v6, a1 + v8, &qword_1011978A8);
  swift_endAccess();
  v9 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = 0;

  v10 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v11 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v12 = *(v11 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v12)
  {
    *&v12[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    swift_retain_n();
    v13 = v12;

    sub_10006ADD4();

    v11 = *(a1 + v10);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v14 = *(v11 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v14 && *&v14[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v15 = v14;
    static Published.subscript.getter();

    v16 = v18;
    if (v18 != 255)
    {
      sub_10004ADFC(v17[1], v18);
      if ((v16 & 1) == 0)
      {
        sub_10065F284();
        sub_10065D24C();
      }
    }
  }
}

id sub_1005CD758()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for BackdropView());
    v6 = sub_100453A34();
    v7 = UIView.forAutolayout.getter();

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_1005CD7DC()
{
  type metadata accessor for LifecyclePatrol();
  swift_allocObject();
  result = LifecyclePatrol.init()();
  off_101197380 = result;
  return result;
}

id sub_1005CD81C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v32 = a3;
  v31 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData] = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
  v11[2] = 0;
  *v11 = 512;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_didReceiveDonatedArtwork] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer] = 0;
  v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  v13 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState] = 0;
  v14 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
  *&v4[v14] = [objc_allocWithZone(UILayoutGuide) init];
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData] = 0;
  v15 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  v16 = type metadata accessor for VideoArtwork();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_fullScreenMorphingMotionConstraints] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_regularMorphingMotionConstraints] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_invertColorsStatusDidChangeObserver] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionDynamicConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionFullScreenConstraints] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground] = 1;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions] = _swiftEmptyArrayStorage;
  v17 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  *v17 = 0x8000000000000000;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] = 0;
  v18 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingSubscription] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_windowEventNotificationObserver] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_backgroundObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_didActivateObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_screenTraitCollectionObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_dismissalObserver] = 0;
  v19 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v4[v19] = swift_allocObject();
  v20 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousFrame];
  *v20 = 0u;
  v20[1] = 0u;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel] = 0;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v8 + 8))(v10, v7);
  v34 = 0xD000000000000019;
  v35 = 0x8000000100E51CC0;
  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = v35;
  v26 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingRequestingID];
  *v26 = v34;
  v26[1] = v25;
  v27 = v31;
  *v18 = a1;
  *(v18 + 1) = v27;
  v18[16] = v32 & 1;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  UIViewController.playActivityFeatureIdentifier.setter(18);
  if (qword_10117F930 != -1)
  {
    swift_once();
  }

  v29 = *(*off_101197380 + 96);

  v29(v28);

  return v28;
}

id sub_1005CDDA4()
{
  ObjectType = swift_getObjectType();
  if (qword_10117F930 != -1)
  {
    swift_once();
  }

  v2 = *(*off_101197380 + 104);

  v3 = v0;
  v2();

  v4 = [objc_opt_self() sharedMonitor];
  [v4 unregisterObserver:v3];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1005CE194()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v246 = *(v3 - 8);
  v247 = v3;
  __chkstk_darwin(v3);
  v245 = v244 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v244[0] = v244 - v6;
  v7 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v7 - 8);
  v9 = v244 - v8;
  v10 = sub_10010FC20(&unk_101183D80);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v244 - v12;
  v252 = sub_10010FC20(&qword_101189DE0);
  v14 = *(v252 - 8);
  *&v15 = __chkstk_darwin(v252).n128_u64[0];
  v17 = v244 - v16;
  v256.receiver = v1;
  v256.super_class = ObjectType;
  v249 = ObjectType;
  objc_msgSendSuper2(&v256, "viewDidLoad", v15);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 456))();
  sub_100009F78(0, &qword_101182960);
  v18 = static OS_dispatch_queue.main.getter();
  *&v254 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v9, &qword_101182140);

  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_10118ACC0, &qword_101189DE0);
  v20 = v252;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v14 + 8))(v17, v20);
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingSubscription] = v21;

  v22 = [v1 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_114;
  }

  v23 = v22;
  [v22 setClipsToBounds:1];

  v24 = sub_1005D01F0();
  v25 = [v1 view];
  if (!v25)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = &selRef_objectAtIndexedSubscript_;
  [v24 setFrame:{v28, v30, v32, v34}];

  v36 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView;
  [*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView] setAutoresizingMask:18];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v38 = v37;
  [v37 addSubview:*&v1[v36]];

  v39 = [objc_allocWithZone(type metadata accessor for NowPlayingControlsViewController(0)) init];
  v40 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v41 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController] = v39;

  v42 = OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData;
  if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData] == 1)
  {
    sub_1005C4A54();
    v1[v42] = 0;
  }

  LOBYTE(v254) = 11;
  v43 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v43))
  {
    sub_1005C9C48(*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize], *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 8], v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16], 0.0);
    v44 = v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground];
    if (v44)
    {
      v45 = 0;
      v46 = 0;
      v47 = -1;
    }

    else
    {
      v51 = Corner.large.unsafeMutableAddressor();
      v45 = *v51;
      v46 = v51[1];
      v47 = *(v51 + 16);
    }

    v52 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
    v53 = v40;
    if (v52)
    {
      v54 = [v52 state] == 2;
    }

    else
    {
      v54 = 0;
    }

    v55 = v44 ^ 1;
    type metadata accessor for MorphingMotionArtworkState(0);
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 40) = -1;
    *(v56 + 48) = 0;
    *(v56 + 56) = 0;
    *(v56 + 64) = 1;
    ObservationRegistrar.init()();
    *(v56 + 16) = v55;
    *(v56 + 24) = v45;
    *(v56 + 32) = v46;
    *(v56 + 40) = v47;
    *(v56 + 41) = v54;
    *(v56 + 42) = 1;
    *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState] = v56;

    v57 = [v1 view];
    if (!v57)
    {
      goto LABEL_141;
    }

    v48 = v57;
    [v57 addLayoutGuide:*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide]];
    v40 = v53;
    v35 = &selRef_objectAtIndexedSubscript_;
  }

  else
  {
    v48 = *&v1[v40];
    if (!v48)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v49 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
    if (v49)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v50 = v48;
      static Published.subscript.getter();

      LOBYTE(v49) = BYTE8(v254);
      if (BYTE8(v254) == 255)
      {
        LOBYTE(v49) = 0;
      }

      else
      {
        sub_10004ADFC(v254, SBYTE8(v254));
      }
    }

    else
    {
      v58 = v48;
    }

    v48[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground] = v49 & 1;
    v59 = *&v48[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    if (v59)
    {
      *(v59 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = v49 & 1;
    }
  }

  v60 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize];
  if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16])
  {
    v61 = *&v1[v40];
    if (!v61)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v62 = [v61 view];
    if (!v62)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v63 = v62;
    v64 = [v1 view];
    if (!v64)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v65 = v64;
    [v64 bounds];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;

    [v63 v35[252]];
    v74 = *&v1[v40];
    if (!v74)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v75 = [v74 view];
    if (!v75)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v76 = v75;
    [v75 setAutoresizingMask:18];
  }

  else
  {
    v77 = *&v1[v40];
    if (!v77)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v79 = *v60;
    v78 = v60[1];
    v80 = [v77 view];
    if (!v80)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v76 = v80;
    [v80 v35[252]];
  }

  v81 = *&v1[v40];
  if (!v81)
  {
    goto LABEL_116;
  }

  *(v81 + OBJC_IVAR___MusicNowPlayingControlsViewController_delegate + 8) = &off_1010B54A0;
  swift_unknownObjectWeakAssign();
  v82 = *&v1[v40];
  if (!v82)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v83 = *(v82 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider);
  if (!v83)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = &v83[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  v86 = *&v83[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  *v85 = sub_1005EB8A0;
  v85[1] = v84;

  v87 = v83;
  sub_100020438(v86);

  if (!*&v1[v40])
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  [v1 addChildViewController:?];
  v88 = *&v1[v40];
  if (!v88)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  [v88 didMoveToParentViewController:v1];
  v89 = *&v1[v40];
  if (!v89)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v90 = [v89 view];
  if (!v90)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v91 = v90;
  v92 = sub_1005C405C();
  [v91 insertSubview:v92 atIndex:0];

  v93 = sub_1005CD758();
  [v93 setHidden:1];

  v94 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView;
  v95 = [*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCaptureOnly:1];

  v251 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
  [*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView] addSubview:*&v1[v94]];
  v96 = *&v1[v40];
  if (!v96)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v97 = *(v96 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
  if (!v97)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = &v97[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
  v100 = *&v97[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
  *v99 = sub_1005EB8A8;
  v99[1] = v98;

  v101 = v97;
  sub_100020438(v100);

  v102 = *&v1[v40];
  if (!v102)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v248 = v94;
  v103 = *(v102 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
  if (!v103)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = &v103[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler];
  v106 = *&v103[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler];
  *v105 = sub_1005EB8B0;
  v105[1] = v104;
  v107 = v103;

  sub_100020438(v106);

  v250 = objc_opt_self();
  v108 = [v250 standardUserDefaults];
  v253 = 1;
  v109 = sub_1002B8234();
  v244[1] = sub_100009838();
  NSUserDefaults.subscript.getter(&v254);

  v110 = v251;
  if (!v255)
  {
    sub_1000095E8(&v254, &unk_101183F30);
    goto LABEL_51;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v253 & 1) == 0)
  {
LABEL_51:
    BagProvider.shared.unsafeMutableAddressor();

    v111 = BagProvider.bag.getter();

    if (v111 && (v112 = String._bridgeToObjectiveC()(), v113 = [v111 BOOLValueForBagKey:v112], v111, v112, v113))
    {
      v114 = Logger.lyrics.unsafeMutableAddressor();
      v116 = v246;
      v115 = v247;
      v246[2](v244[0], v114, v247);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v117, v118))
      {
        v120 = v244[0];
        goto LABEL_59;
      }

      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "NowPlayingViewController: lyricsOnByDefaultDisabled bag key is true, not migrating", v119, 2u);
      v120 = v244[0];
    }

    else
    {
      v121 = v250;
      v122 = [v250 standardUserDefaults];
      v255 = &type metadata for Int;
      *&v254 = 2;
      v253 = 0;
      NSUserDefaults.subscript.setter(&v254, &v253, &type metadata for NowPlayingViewController.DefaultsKey);

      v123 = [v121 standardUserDefaults];
      v255 = &type metadata for Bool;
      LOBYTE(v254) = 1;
      v253 = 1;
      NSUserDefaults.subscript.setter(&v254, &v253, &type metadata for NowPlayingViewController.DefaultsKey);

      v124 = Logger.lyrics.unsafeMutableAddressor();
      v120 = v245;
      v116 = v246;
      v115 = v247;
      (v246)[2](v245, v124, v247);
      v117 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v117, v125))
      {
LABEL_59:

        (v116[1])(v120, v115);
        v110 = v251;
        goto LABEL_60;
      }

      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v117, v125, "NowPlayingViewController: making migration to lyrics on by default", v126, 2u);
    }

    goto LABEL_59;
  }

LABEL_60:
  v127 = [v1 view];
  if (!v127)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v128 = v127;
  [v127 bounds];
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;

  v137 = [objc_allocWithZone(UIView) initWithFrame:{v130, v132, v134, v136}];
  [v137 setAutoresizingMask:18];
  v138 = [v1 view];
  if (!v138)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v139 = v138;
  [v138 addSubview:v137];

  v140 = *&v1[v40];
  if (!v140)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v141 = [v140 view];
  if (!v141)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v142 = v141;
  [v137 addSubview:v141];

  v143 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView];
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView] = v137;
  v144 = v137;

  v145 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v146 = type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, 0, 1, 1, sub_1005EB8B8, v145);

  v147 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_didActivateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, 0, 1, 1, sub_1005EB8C0, v147);

  v148 = UIPresentationControllerDismissalTransitionDidEndNotification;
  v149 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v148, 0, 1, 1, sub_1005EB8C8, v149);

  v150 = _UIScreenDefaultTraitCollectionDidChangeNotification;
  v151 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v247 = v146;
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_screenTraitCollectionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v150, 0, 1, 1, sub_1005EB8D0, v151);

  sub_10010FC20(&qword_101183990);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_100EBEEA0;
  v153 = [*&v1[v110] leadingAnchor];
  v154 = *&v1[v40];
  if (!v154)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v155 = [v154 view];
  if (!v155)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v156 = v155;
  v246 = v144;
  v157 = [v155 leadingAnchor];

  v158 = [v153 constraintEqualToAnchor:v157];
  *(v152 + 32) = v158;
  v159 = [*&v1[v110] trailingAnchor];
  v160 = *&v1[v40];
  if (!v160)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v252 = v40;
  v161 = [v160 view];
  if (!v161)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v162 = v161;
  v163 = [v161 trailingAnchor];

  v164 = [v159 constraintEqualToAnchor:v163];
  *(v152 + 40) = v164;
  v165 = [*&v1[v110] topAnchor];
  v166 = *&v1[v252];
  if (!v166)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v167 = [v166 view];
  if (!v167)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v168 = v167;
  v169 = [v167 topAnchor];

  v170 = [v165 constraintEqualToAnchor:v169];
  *(v152 + 48) = v170;
  v171 = [*&v1[v110] bottomAnchor];
  v172 = *&v1[v252];
  if (!v172)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v173 = [v172 view];
  if (!v173)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v174 = v173;
  v245 = objc_opt_self();
  v175 = [v174 bottomAnchor];

  v176 = [v171 constraintEqualToAnchor:v175];
  *(v152 + 56) = v176;
  v177 = v248;
  v178 = [*&v1[v248] leadingAnchor];
  v179 = v251;
  v180 = [*&v1[v251] leadingAnchor];
  v181 = [v178 constraintEqualToAnchor:v180];

  *(v152 + 64) = v181;
  v182 = [*&v1[v177] trailingAnchor];
  v183 = [*&v1[v179] trailingAnchor];
  v184 = [v182 constraintEqualToAnchor:v183];

  *(v152 + 72) = v184;
  v185 = [*&v1[v177] topAnchor];
  v186 = [*&v1[v179] topAnchor];
  v187 = [v185 constraintEqualToAnchor:v186];

  *(v152 + 80) = v187;
  v188 = [*&v1[v177] bottomAnchor];
  v189 = [*&v1[v179] bottomAnchor];
  v190 = [v188 constraintEqualToAnchor:v189];

  *(v152 + 88) = v190;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v245 activateConstraints:isa];

  sub_1005C5B40(0, 0, 1, 0);
  if (sub_1005875D0(7u))
  {
    v192 = 0;
    v193 = &selRef_trackNumber;
    v194 = v252;
    v195 = v250;
    goto LABEL_84;
  }

  v196 = NSUserDefaults.mobileiPod.unsafeMutableAddressor();
  v193 = &selRef_trackNumber;
  v194 = v252;
  v195 = v250;
  if (*v196)
  {
    v197 = *v196;
    v198 = String._bridgeToObjectiveC()();
    v199 = [v197 BOOLForKey:v198];

    if (v199)
    {
      v200 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
      if (v200)
      {
        v201 = v200;
        v202 = [v201 tracklist];
        if (v202)
        {
          v203 = v202;
          if ([v202 transitionStyle] == 1)
          {
            v204 = [v203 toggleTransitionsCommand];

            if (v204)
            {
              swift_unknownObjectRelease();
              v192 = 1;
              goto LABEL_84;
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
  }

  v192 = 0;
LABEL_84:
  v205 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (!v205)
  {
LABEL_97:
    v220 = [v195 standardUserDefaults];
    v221 = sub_1005D15BC();

    if (v221 != 2)
    {
      goto LABEL_103;
    }

    sub_1005D31C8(0);
    v222 = *&v1[v194];
    if (!v222)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v223 = *&v222[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
    if (!v223)
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v224 = v222;
    [v223 setSelected:1];
    v225 = *&v224[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
    if (!v225)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    [v225 setSelected:0];
    sub_1001C30CC();
    sub_1001C3DB8();
    sub_1001C36E8();
LABEL_102:

LABEL_103:
    v226 = [v1 v193[31]];
    if (v226)
    {
      v227 = v226;
      v228 = AccessibilityIdentifier.nowPlayingView.unsafeMutableAddressor();
      v229 = *v228;
      v230 = v228[1];
      sub_100009F78(0, &qword_101181620);

      UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v229, v230);

      v231 = [objc_opt_self() sharedMonitor];
      [v231 registerObserver:v1];

      v232 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
      v233 = v246;
      if (*v232 != 1)
      {
LABEL_107:
        sub_10010FC20(&unk_101182D80);
        v237 = swift_allocObject();
        *(v237 + 16) = xmmword_100EBC6B0;
        *(v237 + 32) = type metadata accessor for UITraitAccessibilityContrast();
        *(v237 + 40) = &protocol witness table for UITraitAccessibilityContrast;
        UIViewController.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        v238 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        v239 = UIAccessibilityInvertColorsStatusDidChangeNotification;

        v240 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v239, 0, 1, 1, sub_1005EB8D8, v238);

        *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_invertColorsStatusDidChangeObserver] = v240;

        return;
      }

      v234 = [objc_allocWithZone(UITapGestureRecognizer) init];
      [v234 setNumberOfTapsRequired:3];
      [v234 setNumberOfTouchesRequired:2];
      [v234 addTarget:v1 action:"handleTimeGesture"];
      v235 = [v1 view];
      if (v235)
      {
        v236 = v235;
        [v235 addGestureRecognizer:v234];

        sub_1005D453C();
        goto LABEL_107;
      }

      goto LABEL_149;
    }

    goto LABEL_139;
  }

  v206 = v205;
  v207 = [v206 tracklist];
  v208 = [v207 playingItem];

  if (!v208)
  {
    v208 = v206;
LABEL_96:

    goto LABEL_97;
  }

  v209 = [v206 playerPath];
  v210 = [v209 isSystemMusicPath];

  if (!v210)
  {

    v193 = &selRef_trackNumber;
    goto LABEL_96;
  }

  v211 = MPCPlayerResponseItem.isLiveContent.getter();

  v193 = &selRef_trackNumber;
  if (v211)
  {
    goto LABEL_97;
  }

  v212 = [v195 standardUserDefaults];
  v213 = sub_1005D15BC();

  if (((v213 != 1) & ~v192) != 0)
  {
    goto LABEL_97;
  }

  v214 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem];
  if (v214)
  {
    v215 = [v214 metadataObject];
    if (v215)
    {
      v216 = v215;
      v217 = [v215 innermostModelObject];

      objc_opt_self();
      v218 = swift_dynamicCastObjCClass();
      if (v218 && [v218 hasVideo])
      {
        v219 = [v195 standardUserDefaults];
        v255 = &type metadata for Int;
        *&v254 = 0;
        v253 = 0;
        NSUserDefaults.subscript.setter(&v254, &v253, &type metadata for NowPlayingViewController.DefaultsKey);

        goto LABEL_103;
      }
    }
  }

  sub_1005D1674(0, v192);
  v241 = *&v1[v194];
  if (!v241)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v242 = *&v241[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  if (!v242)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v224 = v241;
  [v242 setSelected:1];
  v243 = *&v224[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  if (v243)
  {
    [v243 setSelected:0];
    sub_1001C30CC();
    sub_1001C36E8();
    sub_1001C3DB8();
    goto LABEL_102;
  }

LABEL_155:
  __break(1u);
}

void sub_1005CFED0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal) & 1) == 0)
    {
      v4 = (Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      if (v5 >> 62)
      {
        v27 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
        *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying) = v1;
        v28 = v1;
        sub_1005C40E8(v27);

        v3 = v27;
      }

      else
      {
        v6 = v4[1];
        v7 = v4[2];
        v8 = v4[3];
        v9 = v4[4];
        v10 = v5;
        v11 = v6;
        v32 = v7;
        v12 = v7;
        v31 = v8;
        v13 = v8;
        v14 = v9;

        v15 = sub_1002DCC7C();
        v16 = swift_allocObject();
        *(v16 + 16) = v3;
        *(v16 + 24) = v1;
        v33 = v6;
        if (v15[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement])
        {
          v17 = swift_allocObject();
          *(v17 + 16) = sub_1005EB99C;
          *(v17 + 24) = v16;
          v18 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
          swift_beginAccess();
          v19 = *&v15[v18];
          v20 = v1;
          v3 = v3;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v15[v18] = v19;
          v22 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = sub_10006429C(0, v19[2] + 1, 1, v19);
            *&v15[v18] = v19;
          }

          v23 = v9;
          v25 = v19[2];
          v24 = v19[3];
          if (v25 >= v24 >> 1)
          {
            v19 = sub_10006429C((v24 > 1), v25 + 1, 1, v19);
          }

          v19[2] = v25 + 1;
          v26 = &v19[2 * v25];
          v26[4] = sub_10018A020;
          v26[5] = v17;
          *&v22[v18] = v19;
          swift_endAccess();

          sub_10012BB6C(v5, v33, v32, v31, v23);
        }

        else
        {
          v29 = *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
          *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying] = v1;
          v30 = v1;
          v3 = v3;
          sub_1005C40E8(v29);

          sub_10012BB6C(v5, v33, v32, v31, v9);
        }
      }
    }
  }
}

void sub_1005D0194(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
  *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying) = a2;
  v2 = a2;
  sub_1005C40E8(v3);
}

id sub_1005D01F0()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1005D0264()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v3 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
    if (v3)
    {
      [v3 invalidate];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1005C4F50(4.0);
  }
}

void sub_1005D031C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
      if (v6)
      {
        v7 = v6;
        if (a1)
        {
          v8 = SliderView.Specs.expandedTransform.unsafeMutableAddressor();
          v10 = *v8;
          v9 = *(v8 + 1);
          v11 = *(v8 + 2);
        }

        else
        {
          v9 = xmmword_100EBEF30;
          v10 = xmmword_100EBEF40;
          v11 = 0uLL;
        }

        v27[0] = v10;
        v27[1] = v9;
        v27[2] = v11;
        [v7 setTransform:v27];

        v12 = *&v3[v4];
        if (v12)
        {
          v13 = [v12 view];
          if (v13)
          {
            v14 = v13;
            [v13 layoutIfNeeded];

            v15 = &v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
            v16 = *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
            if (v16 >> 62 != 1)
            {
LABEL_16:

              return;
            }

            v17 = *(v15 + 1);
            v18 = *(v15 + 2);
            v19 = *(v15 + 3);
            v20 = *(v15 + 4);
            v21 = (v16 & 0x3FFFFFFFFFFFFFFFLL);
            v22 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
            if ((a1 & 1) == 0)
            {
              if (v22)
              {
                v25 = *((swift_isaMask & *v22) + 0x560);
                sub_10012BAC0(v16, v17, v18, v19, v20);
                v26 = v22;
                v25();

                v17 = v26;
                goto LABEL_15;
              }

LABEL_23:
              __break(1u);
              return;
            }

            if (v22)
            {
              v23 = *((swift_isaMask & *v22) + 0x558);
              sub_10012BAC0(v16, v17, v18, v19, v20);
              v24 = v22;
              v23();

              v3 = v21;
LABEL_15:

              goto LABEL_16;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_1005D0560(char a1, double a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
      v10 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      if (v10 >> 62 == 1 && (v11 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem]) != 0)
      {
        v12 = *(v9 + 8);
        v13 = (v10 & 0x3FFFFFFFFFFFFFFFLL);
        sub_10012BAC0(v10, v12, *(v9 + 16), *(v9 + 24), *(v9 + 32));
        v14 = v11;
        [v14 duration];
        v34 = v27;
        v35 = v28;
        v32 = v30;
        v33 = v31;
        static Date.timeIntervalSinceReferenceDate.getter();
        v16 = *&v13[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
        if (v16)
        {
          v17 = v15;
          type metadata accessor for MPCPlayerItemDurationSnapshot(0);
          v28 = v18;
          v29 = &protocol witness table for MPCPlayerItemDurationSnapshot;
          v19 = swift_allocObject();
          v26 = v19;
          *(v19 + 16) = v17;
          *(v19 + 24) = v34;
          *(v19 + 40) = v35;
          *(v19 + 48) = a2;
          *(v19 + 56) = 0;
          *(v19 + 60) = v32;
          *(v19 + 68) = v33;
          v20 = *((swift_isaMask & *v16) + 0x240);
          v21 = v16;
          v20(&v26);
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

    else
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      *(v24 + 32) = a2;
      sub_1001F524C(0, 0, v6, &unk_100ED67C8, v24);
    }
  }
}

uint64_t sub_1005D0848(uint64_t a1, double a2)
{
  *(v2 + 104) = a2;
  *(v2 + 96) = a1;
  type metadata accessor for MainActor();
  *(v2 + 112) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return _swift_task_switch(sub_1005D08E4, v4, v3);
}

uint64_t sub_1005D08E4()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  *(v0 + 40) = &type metadata for Player.JumpCommand;
  *(v0 + 48) = &protocol witness table for Player.JumpCommand;
  *(v0 + 16) = v1;
  *(v0 + 24) = 1;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 0;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1005D0A08;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1005D0A08(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1005D0BBC;
  }

  else
  {
    v4[18] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1005D0B50;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005D0B50()
{

  **(v0 + 96) = *(v0 + 144);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005D0BBC()
{

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  **(v0 + 96) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1005D0C44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v24[3])
    {
      sub_100009F78(0, &qword_101189A30);
      if (swift_dynamicCast())
      {
        v2 = [v1 view];
        if (v2)
        {
          v3 = v2;
          v4 = [v2 window];

          v5 = [v4 windowScene];
          if (v5)
          {
            v6 = v23;
            v7 = static NSObject.== infix(_:_:)();

            if (v7)
            {
              if (qword_10117F938 != -1)
              {
                swift_once();
              }

              v8 = type metadata accessor for Logger();
              sub_1000060E4(v8, qword_1012190C8);
              v9 = v6;
              v10 = Logger.logObject.getter();
              v11 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v10, v11))
              {
                v12 = swift_slowAlloc();
                v13 = swift_slowAlloc();
                v24[0] = v13;
                *v12 = 136446210;
                [v9 activationState];
                type metadata accessor for ActivationState(0);
                v14 = String.init<A>(describing:)();
                v16 = sub_1000105AC(v14, v15, v24);

                *(v12 + 4) = v16;
                _os_log_impl(&_mh_execute_header, v10, v11, "Did Enter Background… scene state=%{public}s", v12, 0xCu);
                sub_10000959C(v13);
              }

              v17 = sub_1005C405C();
              v18 = *&v17[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
              v19 = v18;

              if (v18)
              {
                dispatch thunk of Backdrop.CompositeRenderer.analyzer.setter();
              }

              v20 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
              v21 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
              if (v21)
              {
                [v21 invalidate];
                v22 = *&v1[v20];
              }

              else
              {
                v22 = 0;
              }

              *&v1[v20] = 0;

              sub_1005C6A74(0);
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
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1000095E8(v24, &unk_101183F30);
    }
  }
}

void sub_1005D0F78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  Notification.object.getter();
  if (!v25[3])
  {

    sub_1000095E8(v25, &unk_101183F30);
    return;
  }

  sub_100009F78(0, &qword_101189A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    return;
  }

  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 window];

  v5 = [v4 windowScene];
  if (!v5)
  {

    goto LABEL_23;
  }

  v6 = v24;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {

    goto LABEL_23;
  }

  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_1012190C8);
  v9 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136446210;
    [v9 activationState];
    type metadata accessor for ActivationState(0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, v25);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Did Activate… scene state=%{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  if (*DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor() == 1 && [v9 activationState] != 2)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Backdrop: Setting audioAnalyzer", v19, 2u);
    }

    v20 = sub_1005C405C();
    v21 = *&v20[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
    v22 = v21;

    if (v21)
    {
      if (qword_10117F5F8 != -1)
      {
        v23 = swift_once();
      }

      (*(*qword_101218AC8 + 288))(v23);
      dispatch thunk of Backdrop.CompositeRenderer.analyzer.setter();
    }
  }

  sub_1005C4F50(4.0);
  sub_1005C6A74(0);
}

void sub_1005D1374()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v9)
    {
      type metadata accessor for LyricsSharingActivityViewController();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_13:

        return;
      }

      v2 = Notification.userInfo.getter();
      if (v2)
      {
        v3 = v2;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        if (*(v3 + 16) && (v4 = sub_1000160B4(v8), (v5 & 1) != 0))
        {
          sub_10000DD18(*(v3 + 56) + 32 * v4, &v10);
          sub_10001621C(v8);

          if (*(&v11 + 1))
          {
            if (swift_dynamicCast() && (v8[0] & 1) != 0 && *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62 == 1)
            {
              v6 = sub_1005CD758();
              [v6 setHidden:1];

              return;
            }

            goto LABEL_13;
          }
        }

        else
        {

          sub_10001621C(v8);
          v10 = 0u;
          v11 = 0u;
        }
      }

      else
      {

        v10 = 0u;
        v11 = 0u;
      }

      v7 = &v10;
    }

    else
    {

      v7 = v8;
    }

    sub_1000095E8(v7, &unk_101183F30);
  }
}

void sub_1005D1558()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005C5B40(0, 0, 1, 1);
  }
}

uint64_t sub_1005D15BC()
{
  LOBYTE(v1) = 0;
  sub_1002B8234();
  sub_100009838();
  NSUserDefaults.subscript.getter(&v2);
  if (!v3)
  {
    sub_1000095E8(&v2, &unk_101183F30);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

void sub_1005D1674(char a1, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (!(*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
  {
    return;
  }

  v4 = v2;
  v241 = objc_opt_self();
  v7 = [v241 standardUserDefaults];
  v8 = sub_1005D15BC();

  v242 = v8;
  v260 = a1;
  v255 = v3;
  if (v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] && v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] != 1)
  {

    v10 = 3;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  v265 = v10;
  v11 = OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData;
  v12 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData];
  v252 = a2;
  v243 = v4;
  if (!v12 || ((v13 = v12[7], !(v13 >> 62)) ? (v14 = (v13 & 0xF000000000000007) == 0xF000000000000007) : (v14 = 1), v14))
  {
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101219268);
    v16 = v4;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v261 = v16;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v279 = v20;
      *v19 = 136446210;
      v274[0] = *&v4[v11];

      sub_10010FC20(&unk_101197A20);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000105AC(v21, v22, &v279);

      *(v19 + 4) = v23;
      v16 = v261;
      _os_log_impl(&_mh_execute_header, v17, v18, "presentQueue not reversing %{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    v24 = [v16 view];
    if (!v24)
    {
      __break(1u);
      goto LABEL_84;
    }

    v25 = v24;
    [v24 frame];
    v27 = v26;
    v29 = v28;

    v30 = [v16 traitCollection];
    v31 = sub_1005E80C0(v30, v27, v29);

    if (v31)
    {
      if (v31 != 1)
      {
        v53 = 5.0;
        v52 = 10.0;
        v35 = 0.0;
        leading = 52.0;
        v34 = 42.0;
        top = 0.0;
LABEL_29:
        v54 = sub_1005CD758();
        [v54 setHidden:0];

        v55 = [objc_allocWithZone(UIView) init];
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v55 setClipsToBounds:1];
        v250 = v55;
        v56 = [v55 layer];
        [v56 setAllowsGroupOpacity:0];

        v57 = *&v16[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
        v58 = objc_allocWithZone(type metadata accessor for NowPlayingQueueViewController(0));
        v59 = v57;
        v60 = sub_1002DF180(v57);
        *(*&v60[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController] + OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_cachingReference) = *&v16[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference];

        swift_unknownObjectRelease();
        *&v60[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset] = 0x4050000000000000;
        v61 = sub_1002DCC7C();
        [v61 contentSize];
        v63 = v62;
        v65 = v64;

        sub_1002E6958(0, v63, v65);
        v66 = v60;
        v67 = [v66 view];
        if (v67)
        {
          v68 = v67;
          [v67 setDirectionalLayoutMargins:{0.0, v53, 0.0, v52}];

          v69 = [v66 view];
          if (v69)
          {
            v70 = v69;
            [v69 setTranslatesAutoresizingMaskIntoConstraints:0];

            *&v66[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_delegate + 8] = &off_1010B5470;
            swift_unknownObjectWeakAssign();
            v71 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
            v72 = *&v16[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
            if (v72)
            {
              [v72 addChildViewController:v66];
              [v66 didMoveToParentViewController:*&v16[v71]];
              v259 = v71;
              v73 = *&v16[v71];
              if (v73)
              {
                v74 = [v73 view];
                if (v74)
                {
                  v75 = v74;
                  v236 = v11;
                  v76 = sub_1005C405C();
                  [v75 insertSubview:v250 aboveSubview:v76];

                  v267 = v66;
                  v77 = [v66 view];
                  if (v77)
                  {
                    v78 = v77;
                    [v250 addSubview:v77];

                    sub_1005DE184(v265, 0);
                    v79 = *&v16[v259];
                    if (v79)
                    {
                      v80 = v79;
                      sub_1001B6A0C(v265, v260 & 1);

                      type metadata accessor for PassthroughView();
                      v81 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                      v82 = UIView.forAutolayout.getter();

                      v248 = v82;
                      [v250 addSubview:?];
                      v83 = type metadata accessor for BackdropView();
                      v84 = objc_allocWithZone(v83);
                      v85 = sub_100453A34();
                      v86 = v85[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
                      v85[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 2;
                      sub_100453194(v86);
                      v87 = v85;
                      [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v246 = v87;
                      [v250 addSubview:v87];
                      v88 = objc_allocWithZone(v83);
                      v89 = sub_100453A34();
                      v90 = v89[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
                      v89[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
                      sub_100453194(v90);
                      v91 = v89;
                      [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
                      [v250 addSubview:v91];
                      v92 = *&v16[v259];
                      if (v92)
                      {
                        v93 = *(v92 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
                        if (v93)
                        {
                          v94 = v93;
                          v258 = v91;
                          v95 = [v91 heightAnchor];
                          v244 = [v95 constraintEqualToConstant:64.0];

                          sub_10010FC20(&qword_101183990);
                          v96 = swift_allocObject();
                          *(v96 + 16) = xmmword_100EBDC10;
                          v97 = [v250 topAnchor];
                          v98 = [v94 topAnchor];
                          v99 = [v97 constraintEqualToAnchor:v98];

                          *(v96 + 32) = v99;
                          v100 = [v250 leadingAnchor];
                          v101 = [v94 leadingAnchor];
                          v102 = [v100 constraintEqualToAnchor:v101 constant:-leading];

                          *(v96 + 40) = v102;
                          v103 = [v250 trailingAnchor];
                          v104 = [v94 trailingAnchor];
                          v105 = [v103 constraintEqualToAnchor:v104 constant:v34];

                          *(v96 + 48) = v105;
                          v106 = [v250 bottomAnchor];
                          v107 = [v94 bottomAnchor];
                          v108 = [v106 constraintEqualToAnchor:v107];

                          v264 = v96;
                          *(v96 + 56) = v108;
                          v109 = swift_allocObject();
                          *(v109 + 16) = xmmword_100EBDC10;
                          v110 = [v66 view];
                          if (v110)
                          {
                            v111 = v110;
                            v112 = [v110 topAnchor];

                            v113 = [v250 topAnchor];
                            v114 = [v112 constraintEqualToAnchor:v113];

                            *(v109 + 32) = v114;
                            v115 = [v66 view];
                            if (v115)
                            {
                              v116 = v115;
                              v117 = [v115 leadingAnchor];

                              v118 = [v250 leadingAnchor];
                              bottom = NSDirectionalEdgeInsetsZero.bottom;
                              trailing = NSDirectionalEdgeInsetsZero.trailing;
                              v121 = leading == NSDirectionalEdgeInsetsZero.leading && top == NSDirectionalEdgeInsetsZero.top;
                              if (!v121 || v35 != bottom || (v122 = 0.0, v34 != trailing))
                              {
                                v122 = leading - v53;
                              }

                              v123 = [v117 constraintEqualToAnchor:v118 constant:v122];

                              *(v109 + 40) = v123;
                              v124 = [v267 view];
                              if (v124)
                              {
                                v125 = v124;
                                v126 = [v124 trailingAnchor];

                                v127 = [v250 trailingAnchor];
                                if (!v121 || v35 != bottom || (v128 = 0.0, v34 != trailing))
                                {
                                  v128 = -(v34 - v52);
                                }

                                v237 = v94;
                                v129 = [v126 constraintEqualToAnchor:v127 constant:v128];

                                *(v109 + 48) = v129;
                                v130 = [v267 view];
                                if (v130)
                                {
                                  v131 = v130;
                                  v132 = [v130 bottomAnchor];

                                  v133 = [v250 bottomAnchor];
                                  v134 = [v132 constraintEqualToAnchor:v133];

                                  *(v109 + 56) = v134;
                                  v135 = v255[1];
                                  v271[0] = *v255;
                                  v271[1] = v135;
                                  v272 = v255[2];
                                  v273 = *(v255 + 6);
                                  v274[0] = v267;
                                  v274[1] = v250;
                                  v274[2] = v248;
                                  v275 = v246;
                                  v276 = v244;
                                  v277 = v264;
                                  v278 = v109;
                                  v282 = v273;
                                  v281 = v272;
                                  v280 = v135;
                                  v279 = v271[0];
                                  v253 = *v255;
                                  v136 = *(v255 + 2);
                                  v238 = *(v255 + 3);
                                  v239 = *(v255 + 1);
                                  v137 = *(v255 + 4);
                                  *v255 = v267;
                                  *(v255 + 1) = v250;
                                  *(v255 + 2) = v248;
                                  *(v255 + 3) = v246;
                                  *(v255 + 4) = v244;
                                  *(v255 + 5) = v264;
                                  *(v255 + 6) = v109;
                                  v138 = v267;
                                  v139 = v250;
                                  v140 = v248;
                                  v141 = v246;
                                  v142 = v244;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  v143 = v138;
                                  v144 = v139;
                                  v145 = v140;
                                  v146 = v141;
                                  v147 = v142;
                                  v148 = v143;
                                  v149 = v146;
                                  v150 = v148;
                                  v151 = v144;
                                  v152 = v145;
                                  v153 = v149;
                                  v154 = v147;
                                  v155 = v151;
                                  v256 = v154;
                                  sub_1005EB280(v271, v270);
                                  sub_1005EB280(&v279, v270);
                                  sub_10012BB6C(v253, v239, v136, v238, v137);
                                  sub_1005D7D3C(&v279);
                                  sub_1005EB2B8(&v279);

                                  v254 = v150;
                                  sub_1005D69B4(v274);
                                  v156 = swift_allocObject();
                                  *(v156 + 16) = xmmword_100ED60A0;
                                  v157 = [v153 leadingAnchor];
                                  v158 = [v155 leadingAnchor];
                                  v159 = [v157 constraintEqualToAnchor:v158];

                                  *(v156 + 32) = v159;
                                  v160 = [v153 trailingAnchor];
                                  v161 = [v155 trailingAnchor];
                                  v162 = [v160 constraintEqualToAnchor:v161];

                                  *(v156 + 40) = v162;
                                  v163 = [v153 heightAnchor];
                                  v164 = [v163 constraintEqualToConstant:64.0];

                                  *(v156 + 48) = v164;
                                  v165 = [v153 bottomAnchor];
                                  v240 = v153;

                                  v166 = [v155 bottomAnchor];
                                  v167 = [v165 constraintEqualToAnchor:v166];

                                  *(v156 + 56) = v167;
                                  v168 = [v258 leadingAnchor];
                                  v169 = [v155 leadingAnchor];
                                  v170 = [v168 constraintEqualToAnchor:v169];

                                  *(v156 + 64) = v170;
                                  v171 = [v258 trailingAnchor];
                                  v172 = [v155 trailingAnchor];
                                  v173 = [v171 constraintEqualToAnchor:v172];

                                  *(v156 + 72) = v173;
                                  v174 = [v258 topAnchor];

                                  v175 = [v155 topAnchor];
                                  v176 = [v174 constraintEqualToAnchor:v175];

                                  *(v156 + 80) = v176;
                                  *(v156 + 88) = v256;
                                  v177 = [v152 leadingAnchor];

                                  v178 = v261;
                                  v179 = [v155 leadingAnchor];
                                  v180 = [v177 constraintEqualToAnchor:v179];

                                  *(v156 + 96) = v180;
                                  v181 = [v152 trailingAnchor];

                                  v182 = [v155 trailingAnchor];
                                  v183 = [v181 constraintEqualToAnchor:v182];

                                  *(v156 + 104) = v183;
                                  v184 = [v152 topAnchor];

                                  v185 = [v155 topAnchor];
                                  v186 = [v184 constraintEqualToAnchor:v185];

                                  *(v156 + 112) = v186;
                                  v187 = [v152 bottomAnchor];

                                  v188 = [v155 bottomAnchor];
                                  v189 = [v187 constraintEqualToAnchor:v188];

                                  *(v156 + 120) = v189;
                                  v269 = v156;
                                  sub_100124054(v264);
                                  sub_100124054(v109);
                                  v190 = objc_opt_self();
                                  sub_100009F78(0, &qword_1011838A0);
                                  isa = Array._bridgeToObjectiveC()().super.isa;
                                  [v190 activateConstraints:isa];

                                  v192 = [v261 view];
                                  if (v192)
                                  {
                                    v193 = v192;
                                    [v192 setNeedsLayout];

                                    v194 = v259;
                                    if (v260)
                                    {

                                      v195 = [v254 view];
                                      if (!v195)
                                      {
LABEL_100:
                                        __break(1u);
                                        goto LABEL_101;
                                      }

                                      v196 = sub_1005DC5F4(v195, v271);

                                      v197 = v196[7];
                                      v198 = v196[8];
                                      v199 = v196[9];
                                      v200 = v196[10];
                                      v201 = v196[11];
                                      v196[7] = v267;
                                      v196[8] = v250;
                                      v196[9] = v248;
                                      v196[10] = v246;
                                      v196[11] = v244;
                                      v196[12] = v264;
                                      v196[13] = v109;
                                      sub_1005EB32C(v197, v198, v199, v200, v201);
                                      v202 = swift_allocObject();
                                      swift_unknownObjectWeakInit();
                                      v203 = swift_allocObject();
                                      v203[2] = v202;
                                      v203[3] = v196;
                                      v203[4] = v155;
                                      v203[5] = v152;
                                      v204 = swift_allocObject();
                                      *(v204 + 16) = sub_1005EB470;
                                      *(v204 + 24) = v203;
                                      swift_beginAccess();
                                      v205 = v196[3];
                                      v206 = v152;

                                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                      v196[3] = v205;
                                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                      {
                                        v205 = sub_10006429C(0, v205[2] + 1, 1, v205);
                                        v196[3] = v205;
                                      }

                                      v209 = v205[2];
                                      v208 = v205[3];
                                      if (v209 >= v208 >> 1)
                                      {
                                        v205 = sub_10006429C((v208 > 1), v209 + 1, 1, v205);
                                      }

                                      v205[2] = v209 + 1;
                                      v210 = &v205[2 * v209];
                                      v210[4] = sub_10018A020;
                                      v210[5] = v204;
                                      v196[3] = v205;
                                      swift_endAccess();

                                      *&v243[v236] = v196;
                                      swift_retain_n();

                                      v178 = v261;
                                      sub_1005C7034();

                                      v194 = v259;
                                      v211 = v240;
                                      v212 = v256;
                                    }

                                    else
                                    {

                                      v212 = v256;

                                      v211 = v240;
                                      v213 = *&v261[v259];
                                      if (!v213)
                                      {
LABEL_101:
                                        __break(1u);
                                        goto LABEL_102;
                                      }

                                      swift_unknownObjectWeakAssign();
                                      v214 = v213;
                                      sub_1001B63BC();
                                    }

                                    v215 = *&v178[v194];
                                    if (v215)
                                    {
                                      v216 = *(v215 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
                                      if (v216)
                                      {
                                        if ([v216 isSelected])
                                        {

                                          sub_1005EB2B8(v271);

                                          v217 = v237;
LABEL_71:

                                          if ((v252 & 1) == 0)
                                          {
                                            return;
                                          }

                                          v222 = [v241 standardUserDefaults];
                                          v270[3] = &type metadata for Int;
                                          v270[0] = v242;
                                          v268 = 0;
                                          sub_1002B8234();
                                          sub_100009838();
                                          v223 = v270;
                                          v224 = &v268;
                                          goto LABEL_81;
                                        }

                                        v218 = *&v178[v194];
                                        if (v218)
                                        {
                                          v219 = v218;

                                          v220 = *&v219[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
                                          if (v220)
                                          {
                                            [v220 setSelected:1];
                                            v221 = *&v219[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
                                            v217 = v237;
                                            if (v221)
                                            {
                                              [v221 setSelected:0];
                                              sub_1001C30CC();
                                              sub_1001C36E8();
                                              sub_1001C3DB8();

                                              sub_1005EB2B8(v271);
                                              goto LABEL_71;
                                            }

LABEL_104:
                                            __break(1u);
LABEL_105:
                                            __break(1u);
                                            return;
                                          }

LABEL_103:
                                          __break(1u);
                                          goto LABEL_104;
                                        }

LABEL_102:
                                        __break(1u);
                                        goto LABEL_103;
                                      }

                                      goto LABEL_99;
                                    }

LABEL_98:
                                    __break(1u);
LABEL_99:
                                    __break(1u);
                                    goto LABEL_100;
                                  }

LABEL_97:
                                  __break(1u);
                                  goto LABEL_98;
                                }

LABEL_96:
                                __break(1u);
                                goto LABEL_97;
                              }

LABEL_95:
                              __break(1u);
                              goto LABEL_96;
                            }

LABEL_94:
                            __break(1u);
                            goto LABEL_95;
                          }

LABEL_93:
                          __break(1u);
                          goto LABEL_94;
                        }

LABEL_92:
                        __break(1u);
                        goto LABEL_93;
                      }

LABEL_91:
                      __break(1u);
                      goto LABEL_92;
                    }

LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      v35 = NSDirectionalEdgeInsetsZero.bottom;
      v34 = NSDirectionalEdgeInsetsZero.trailing;
      *&v36 = 78.0;
    }

    else
    {
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      v35 = NSDirectionalEdgeInsetsZero.bottom;
      v34 = NSDirectionalEdgeInsetsZero.trailing;
      *&v36 = 32.0;
    }

    v52 = *&v36;
    v53 = *&v36;
    goto LABEL_29;
  }

  v37 = v12[8];
  v38 = v12[9];
  v39 = v12[10];
  v40 = v12[11];
  v41 = v12[12];
  v42 = v12[13];

  v266 = v37;
  v262 = v39;
  v263 = v38;
  v257 = v41;
  sub_1005EB340(v13, v37, v38, v39, v40);
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000060E4(v43, qword_101219268);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v279 = v47;
    *v46 = 136446210;

    v48 = sub_1006698D4();
    v50 = v49;

    v51 = sub_1000105AC(v48, v50, &v279);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "presentQueue reversing %{public}s", v46, 0xCu);
    sub_10000959C(v47);
  }

  else
  {
  }

  v225 = v255[1];
  v279 = *v255;
  v280 = v225;
  v281 = v255[2];
  v282 = *(v255 + 6);
  v226 = *(v255 + 1);
  v249 = *(v255 + 2);
  v251 = *v255;
  v247 = *(v255 + 3);
  v245 = *(v255 + 4);
  *v255 = v13;
  *(v255 + 1) = v266;
  *(v255 + 2) = v263;
  *(v255 + 3) = v262;
  *(v255 + 4) = v40;
  *(v255 + 5) = v257;
  *(v255 + 6) = v42;
  sub_10012BAC0(v13, v266, v263, v262, v40);
  sub_1005EB340(v13, v266, v263, v262, v40);
  sub_1005EB280(&v279, v274);
  sub_10012BB6C(v251, v226, v249, v247, v245);
  sub_1005D7D3C(&v279);
  sub_1005EB2B8(&v279);
  sub_1005EB32C(v13, v266, v263, v262, v40);
  v227 = *&v243[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v227)
  {
    goto LABEL_105;
  }

  v228 = v227;
  sub_1001B6A0C(v265, v260 & 1);

  v229 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v230 = swift_allocObject();
  *(v230 + 16) = sub_1005EB47C;
  *(v230 + 24) = v229;
  swift_beginAccess();
  v231 = v12[3];
  swift_retain_n();
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v12[3] = v231;
  if ((v232 & 1) == 0)
  {
    v231 = sub_10006429C(0, v231[2] + 1, 1, v231);
    v12[3] = v231;
  }

  v234 = v231[2];
  v233 = v231[3];
  if (v234 >= v233 >> 1)
  {
    v231 = sub_10006429C((v233 > 1), v234 + 1, 1, v231);
  }

  v231[2] = v234 + 1;
  v235 = &v231[2 * v234];
  v235[4] = sub_10018A020;
  v235[5] = v230;
  v12[3] = v231;
  swift_endAccess();

  sub_100669C5C();
  sub_1005EB32C(v13, v266, v263, v262, v40);

  if (v252)
  {
    v222 = [v241 standardUserDefaults];
    v275 = &type metadata for Int;
    v274[0] = v242;
    LOBYTE(v271[0]) = 0;
    sub_1002B8234();
    sub_100009838();
    v223 = v274;
    v224 = v271;
LABEL_81:
    NSUserDefaults.subscript.setter(v223, v224, &type metadata for NowPlayingViewController.DefaultsKey);
  }
}

void sub_1005D31C8(char a1)
{
  if ((*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] & 0xC000000000000000) == 0x4000000000000000)
  {
    return;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem];
  v186 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v3)
  {
    v4 = [v3 metadataObject];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 innermostModelObject];

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        type metadata accessor for LyricsLoader();
        if (static LyricsLoader.supportsLyrics(for:)(v8))
        {
          if (v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] && v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] != 1)
          {

            v9 = 3;
          }

          else
          {
            v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v175)
            {
              v9 = 3;
            }

            else
            {
              v9 = 1;
            }
          }

          goto LABEL_11;
        }
      }
    }
  }

  v9 = 0;
LABEL_11:
  v184 = OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData;
  v10 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData];
  v11 = &unk_101197000;
  v185 = v2;
  if (!v10 || ((v12 = v10[7], (~v12 & 0xF000000000000007) != 0) ? (v13 = (v12 & 0xC000000000000000) == 0x4000000000000000) : (v13 = 0), !v13))
  {
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101219268);
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v199 = v19;
      *v18 = 136446210;
      *&v196[0] = *&v2[v184];

      sub_10010FC20(&unk_101197A20);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000105AC(v20, v21, &v199);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "presentLyrics not reversing %{public}s", v18, 0xCu);
      sub_10000959C(v19);

      v11 = &unk_101197000;
    }

    v23 = v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType];
    v24 = 0.0;
    if (v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType])
    {
      if (v23 == 1)
      {
        v25 = 78.0;
      }

      else
      {
        v24 = *(SyncedLyricsViewController.Specs.default.unsafeMutableAddressor() + 73);
        v25 = v24;
      }
    }

    else
    {
      v25 = 32.0;
    }

    sub_1005DE184(v9, 0);
    v53 = v11[115];
    v54 = *&v15[v53];
    if (v54)
    {
      v55 = v54;
      sub_1001B6A0C(v9, a1 & 1);

      type metadata accessor for NowPlayingLyricsViewController();
      v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v57 = *&v15[v53];
      if (v57)
      {
        v58 = v56;
        v59 = *(v57 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v59)
        {
          [v59 frame];
        }

        else
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
        }

        v64 = &v58[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
        v206 = *&v58[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
        *v64 = v60;
        *(v64 + 1) = v61;
        *(v64 + 2) = v62;
        *(v64 + 3) = v63;
        if (!CGRectEqualToRect(*&v60, v206) && ([v58 isViewLoaded] & 1) != 0)
        {
          sub_10029ECCC();
        }

        v65 = v58;
        v66 = [v65 view];
        if (v66)
        {
          v67 = v66;
          [v66 setTranslatesAutoresizingMaskIntoConstraints:0];

          *(v65 + OBJC_IVAR___MusicNowPlayingLyricsViewController_delegate + 8) = &off_1010B5568;
          swift_unknownObjectWeakAssign();
          v183 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
          v68 = *(v65 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
          if (v68)
          {
            v69 = *((swift_isaMask & *v68) + 0x1F8);
            v70 = v15;
            v71 = v68;
            v69(v15, &off_1010B5530);

            v72 = *&v70[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
            v73 = *(v65 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
            *(v65 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying) = v72;
            v74 = v72;

            sub_10029948C();
            v75 = *(v65 + OBJC_IVAR___MusicNowPlayingLyricsViewController_layout);
            *(v65 + OBJC_IVAR___MusicNowPlayingLyricsViewController_layout) = v23 > 1;
            sub_10029A350(v75);
            v76 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

            LOBYTE(v76) = v76(9);

            if ((v76 & 1) == 0)
            {
              if (sub_1005DA588())
              {
                v77 = 0;
                v78 = 0;
                v79 = 0;
                *&v200 = 0;
              }

              else
              {
                v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v79 = &type metadata for String;
              }

              *&v199 = v77;
              *(&v199 + 1) = v78;
              *(&v200 + 1) = v79;
              sub_10029A5CC(&v199);
            }

            v80 = *&v15[v53];
            if (v80)
            {
              [v80 addChildViewController:v65];
              [v65 didMoveToParentViewController:v70];
              v81 = [objc_allocWithZone(UIView) init];
              [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
              [v81 setClipsToBounds:1];
              v82 = *&v15[v53];
              if (v82)
              {
                v83 = 1.0;
                if (!*(v82 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
                {
                  v83 = 0.0;
                }

                [v81 setAlpha:v83];
                v84 = [v65 view];
                if (v84)
                {
                  v85 = v84;
                  [v81 addSubview:v84];

                  v86 = *&v15[v53];
                  if (v86)
                  {
                    v87 = [v86 view];
                    if (v87)
                    {
                      v88 = v87;
                      v89 = sub_1005C405C();
                      [v88 insertSubview:v81 aboveSubview:v89];

                      v90 = *&v15[v53];
                      if (v90)
                      {
                        v181 = v65;
                        v189 = v70;
                        v191 = v81;
                        v91 = *(v90 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
                        if (v91)
                        {
                          sub_10010FC20(&qword_101183990);
                          v92 = swift_allocObject();
                          *(v92 + 16) = xmmword_100EBDC10;
                          v93 = v91;
                          v94 = [v81 topAnchor];
                          v95 = [v93 topAnchor];
                          v96 = [v94 constraintEqualToAnchor:v95];

                          *(v92 + 32) = v96;
                          v97 = [v81 leadingAnchor];
                          v98 = [v93 leadingAnchor];
                          v99 = [v97 constraintEqualToAnchor:v98 constant:-v24];

                          *(v92 + 40) = v99;
                          v100 = [v81 trailingAnchor];
                          v101 = [v93 trailingAnchor];
                          v102 = [v100 constraintEqualToAnchor:v101 constant:v24];

                          *(v92 + 48) = v102;
                          v103 = [v81 bottomAnchor];
                          v188 = v93;
                          v104 = [v93 bottomAnchor];
                          v105 = [v103 constraintEqualToAnchor:v104];

                          v193 = v92;
                          *(v92 + 56) = v105;
                          v106 = swift_allocObject();
                          *(v106 + 16) = xmmword_100EBDC10;
                          v107 = [v65 view];
                          if (v107)
                          {
                            v108 = v107;
                            v109 = [v107 topAnchor];

                            v110 = [v81 topAnchor];
                            v111 = [v109 constraintEqualToAnchor:v110];

                            *(v106 + 32) = v111;
                            v112 = [v65 view];
                            if (v112)
                            {
                              v113 = v112;
                              v114 = [v112 leadingAnchor];

                              v115 = [v81 leadingAnchor];
                              v116 = [v114 constraintEqualToAnchor:v115];

                              *(v106 + 40) = v116;
                              v117 = [v65 view];
                              if (v117)
                              {
                                v118 = v117;
                                v119 = [v117 trailingAnchor];

                                v120 = [v81 trailingAnchor];
                                v121 = [v119 constraintEqualToAnchor:v120];

                                *(v106 + 48) = v121;
                                v122 = [v65 view];
                                if (v122)
                                {
                                  v123 = v122;
                                  v124 = objc_opt_self();
                                  v125 = [v123 bottomAnchor];

                                  v126 = [v81 bottomAnchor];
                                  v127 = [v125 constraintEqualToAnchor:v126];

                                  *(v106 + 56) = v127;
                                  *&v199 = v106;

                                  sub_100124054(v128);
                                  sub_100009F78(0, &qword_1011838A0);
                                  isa = Array._bridgeToObjectiveC()().super.isa;

                                  [v124 activateConstraints:isa];

                                  v130 = [v65 view];
                                  if (v130)
                                  {
                                    v131 = v130;
                                    [v130 setDirectionalLayoutMargins:{0.0, v25, 0.0, v25}];

                                    v132 = *(v65 + v183);
                                    if (v132)
                                    {
                                      v133 = v132;
                                      v134 = [v70 view];
                                      if (v134)
                                      {
                                        v135 = v134;
                                        [v134 frame];
                                        v137 = v136;
                                        v139 = v138;
                                        v141 = v140;
                                        v143 = v142;

                                        v203.origin.x = v137;
                                        v203.origin.y = v139;
                                        v203.size.width = v141;
                                        v203.size.height = v143;
                                        Height = CGRectGetHeight(v203);
                                        [v93 layoutFrame];
                                        v145.n128_f64[0] = Height - CGRectGetHeight(v204);
                                        (*((swift_isaMask & *v133) + 0x1B0))(v145);

                                        v146 = *(v186 + 1);
                                        v196[0] = *v186;
                                        v196[1] = v146;
                                        v197 = *(v186 + 2);
                                        v198 = *(v186 + 6);
                                        v199 = v196[0];
                                        v200 = v146;
                                        v201 = v197;
                                        v202 = v198;
                                        v147 = *v186;
                                        v148 = *(v186 + 1);
                                        v149 = *(v186 + 2);
                                        v150 = *(v186 + 3);
                                        v151 = *(v186 + 4);
                                        *v186 = v65 | 0x4000000000000000;
                                        *(v186 + 1) = v191;
                                        *(v186 + 2) = v193;
                                        *(v186 + 40) = 0u;
                                        *(v186 + 24) = 0u;
                                        v152 = v65;
                                        swift_bridgeObjectRetain_n();
                                        v153 = v191;
                                        v154 = v152;
                                        v155 = v153;
                                        v156 = v154;
                                        v157 = v155;
                                        sub_1005EB280(v196, v195);
                                        sub_1005EB280(&v199, v195);
                                        sub_10012BB6C(v147, v148, v149, v150, v151);
                                        sub_1005D7D3C(&v199);
                                        sub_1005EB2B8(&v199);

                                        v158 = [v189 view];
                                        if (v158)
                                        {
                                          v159 = v158;
                                          [v158 frame];
                                          v161 = v160;
                                          v163 = v162;
                                          v165 = v164;
                                          v167 = v166;

                                          v205.origin.x = v161;
                                          v205.origin.y = v163;
                                          v205.size.width = v165;
                                          v205.size.height = v167;
                                          *&v156[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight] = CGRectGetHeight(v205);
                                          sub_10029AB40();
                                          if ((a1 & 1) == 0)
                                          {
                                            swift_bridgeObjectRelease_n();

                                            sub_1005EB2B8(v196);
                                            goto LABEL_71;
                                          }

                                          v168 = [v156 view];

                                          if (v168)
                                          {
                                            v169 = sub_1005DC5F4(v168, v196);

                                            v170 = v169[7];
                                            v171 = v169[8];
                                            v172 = v169[9];
                                            v173 = v169[10];
                                            v174 = v169[11];
                                            v169[7] = v181 | 0x4000000000000000;
                                            v169[8] = v191;
                                            v169[9] = v193;
                                            *(v169 + 5) = 0u;
                                            *(v169 + 6) = 0u;
                                            sub_1005EB32C(v170, v171, v172, v173, v174);
                                            *&v185[v184] = v169;
                                            swift_retain_n();

                                            sub_1005C7034();

                                            sub_1005EB2B8(v196);

LABEL_71:

                                            return;
                                          }

                                          goto LABEL_96;
                                        }

LABEL_95:
                                        __break(1u);
LABEL_96:
                                        __break(1u);
LABEL_97:
                                        __break(1u);
                                        return;
                                      }

LABEL_94:
                                      __break(1u);
                                      goto LABEL_95;
                                    }

LABEL_93:
                                    __break(1u);
                                    goto LABEL_94;
                                  }

LABEL_92:
                                  __break(1u);
                                  goto LABEL_93;
                                }

LABEL_91:
                                __break(1u);
                                goto LABEL_92;
                              }

LABEL_90:
                              __break(1u);
                              goto LABEL_91;
                            }

LABEL_89:
                            __break(1u);
                            goto LABEL_90;
                          }

LABEL_88:
                          __break(1u);
                          goto LABEL_89;
                        }

LABEL_87:
                        __break(1u);
                        goto LABEL_88;
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

LABEL_83:
                __break(1u);
                goto LABEL_84;
              }

LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_79;
  }

  v176 = v9;
  v26 = v10[8];
  v27 = v10[9];
  v28 = v10[10];
  v29 = v10[11];
  v30 = v10[12];
  v31 = v10[13];
  sub_1005EB340(v12, v26, v27, v28, v29);
  v187 = v29;
  v182 = v31;
  sub_1005EB340(v12, v26, v27, v28, v29);

  v190 = v27;

  v192 = v26;

  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000060E4(v32, qword_101219268);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v199 = v36;
    *v35 = 136446210;

    v37 = sub_1006698D4();
    v39 = v38;

    v40 = sub_1000105AC(v37, v39, &v199);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "presentLyrics reversing %{public}s", v35, 0xCu);
    sub_10000959C(v36);
  }

  v41 = *(v186 + 1);
  v199 = *v186;
  v42 = *(v186 + 2);
  v200 = v41;
  v201 = v42;
  v202 = *(v186 + 6);
  v43 = *v186;
  v180 = *(v186 + 1);
  v178 = *(v186 + 3);
  v179 = *(v186 + 2);
  v177 = *(v186 + 4);
  *v186 = v12;
  *(v186 + 1) = v192;
  *(v186 + 2) = v190;
  *(v186 + 3) = v28;
  *(v186 + 4) = v187;
  *(v186 + 5) = v30;
  *(v186 + 6) = v182;
  sub_10012BAC0(v12, v192, v190, v28, v187);
  sub_1005EB340(v12, v192, v190, v28, v187);
  sub_1005EB280(&v199, v196);
  sub_10012BB6C(v43, v180, v179, v178, v177);
  sub_1005D7D3C(&v199);
  sub_1005EB2B8(&v199);
  sub_1005EB32C(v12, v192, v190, v28, v187);
  v44 = *&v185[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v44)
  {
    goto LABEL_97;
  }

  v45 = v44;
  sub_1001B6A0C(v176, a1 & 1);

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1005EB3CC;
  *(v47 + 24) = v46;
  swift_beginAccess();
  v48 = v10[3];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[3] = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_10006429C(0, v48[2] + 1, 1, v48);
    v10[3] = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_10006429C((v50 > 1), v51 + 1, 1, v48);
  }

  v48[2] = v51 + 1;
  v52 = &v48[2 * v51];
  v52[4] = sub_10018A020;
  v52[5] = v47;
  v10[3] = v48;
  swift_endAccess();

  sub_100669C5C();
  sub_1005EB32C(v12, v192, v190, v28, v187);
}