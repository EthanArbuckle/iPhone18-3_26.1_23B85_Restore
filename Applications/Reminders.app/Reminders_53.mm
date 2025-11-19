uint64_t sub_1005BB3BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BB7E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BBC14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BC040(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BC46C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BC898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BCCC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BD0F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BD51C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BD948(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BDD74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BE1A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BE5CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BE9F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000CEA8(a1, v46);
  v16 = v47;
  sub_100005FD0(v46, v48);
  result = UIApp;
  if (UIApp)
  {
    v45 = v16;
    if ([UIApp launchedToTest])
    {
      v18 = sub_10000C36C(v48, v48[3]);
      v43 = v5;
      v19 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
      v20 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
      (*(*(v20 - 8) + 104))(v15, v19, v20);
      v21 = *(v11 + 104);
      v42 = v15;
      v21(v15, enum case for REMNavigationSpecifier.root(_:), v10);
      v39 = *v18;
      v38 = swift_allocObject();
      swift_weakInit();
      v22 = v44;
      (*(v11 + 16))(v44, v15, v10);
      v23 = *(v11 + 80);
      v40 = a4;
      v41 = v10;
      v24 = a2;
      v25 = (v23 + 24) & ~v23;
      v26 = a5;
      v27 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v25;
      a2 = v24;
      (*(v11 + 32))(v29, v22, v10);
      *(v28 + v27) = 0;
      a5 = v26;
      a4 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1005C93F8;
      *(v30 + 24) = v28;

      sub_100058000(&qword_10077FDB0);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v42, v41);
    }

    else
    {
      sub_10000B0D8(v48, v46);
      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      Promise.init(value:)();
    }

    v31 = swift_allocObject();
    v32 = v45;
    v31[2] = a2;
    v31[3] = v32;
    v31[4] = v49;
    v31[5] = a4;
    v31[6] = a5;

    v33 = a2;
    v34 = v32;

    v35 = a5;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    return sub_100004758(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005BEE24(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v70 = a3;
  v71 = a6;
  v69 = a1;
  v10 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v10 - 8);
  v12 = v63 - v11;
  v13 = type metadata accessor for REMNavigationSpecifier();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v65 = v14;
  v66 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = (v63 - v16);
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100790D98);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "TEST SETUP START", v20, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72 = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_100004060(a4, a5, &v72);
      *(v23 + 12) = 2114;
      v26 = _convertErrorToNSError(_:)();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v23, 0x16u);
      sub_1000079B4(v24, &unk_10076DF80);

      sub_100004758(v25);
    }

    v27 = String._bridgeToObjectiveC()();
    [v71 startedTest:v27];

    sub_1005BA214(a4, a5);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "TEST SETUP END", v30, 2u);
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_100004060(a4, a5, &v72);
      _os_log_impl(&_mh_execute_header, v31, v32, "TEST RUN START {testName: %{public}s}", v33, 0xCu);
      sub_100004758(v34);
    }

    v63[1] = 0;
    v35 = swift_allocObject();
    v35[2] = a4;
    v35[3] = a5;
    v36 = a2;
    v35[4] = a2;
    v63[0] = v35;
    v37 = v70;
    v35[5] = v70;
    sub_10000C36C(v69, v69[3]);

    v69 = v36;
    v38 = v37;
    UUID.init(uuidString:)();
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v12, 1, v39) == 1)
    {
      __break(1u);
    }

    else
    {
      v41 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v12, v39);
      v43 = [v41 objectIDWithUUID:isa];

      sub_100058000(&unk_10076DF50);
      v44 = v64;
      *v64 = v43;
      static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
      v46 = v67;
      v45 = v68;
      (*(v67 + 104))(v44, enum case for REMNavigationSpecifier.reminder(_:), v68);
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = v66;
      (*(v46 + 16))(v66, v44, v45);
      v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v50 = (v65 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v47;
      (*(v46 + 32))(v51 + v49, v48, v45);
      *(v51 + v50) = 0;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1005C9428;
      *(v52 + 24) = v51;

      sub_100058000(&qword_100775650);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v46 + 8))(v44, v45);

      v53 = swift_allocObject();
      v54 = v69;
      v53[2] = v69;
      v53[3] = sub_1005C82E0;
      v55 = v63[0];
      v56 = v71;
      v53[4] = v63[0];
      v53[5] = v56;
      v57 = v54;

      v58 = v56;
      v59 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();

      v60 = swift_allocObject();
      v60[2] = v58;
      v60[3] = sub_1005C82E0;
      v60[4] = v55;

      v61 = v58;
      v62 = zalgo.getter();
      dispatch thunk of Promise.error(on:closure:)();
    }
  }
}

void sub_1005BF6C4(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v70 = a3;
  v71 = a6;
  v69 = a1;
  v10 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v10 - 8);
  v12 = v63 - v11;
  v13 = type metadata accessor for REMNavigationSpecifier();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v65 = v14;
  v66 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = (v63 - v16);
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100790D98);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "TEST SETUP START", v20, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72 = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_100004060(a4, a5, &v72);
      *(v23 + 12) = 2114;
      v26 = _convertErrorToNSError(_:)();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v23, 0x16u);
      sub_1000079B4(v24, &unk_10076DF80);

      sub_100004758(v25);
    }

    v27 = String._bridgeToObjectiveC()();
    [v71 startedTest:v27];

    sub_1005BA214(a4, a5);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "TEST SETUP END", v30, 2u);
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_100004060(a4, a5, &v72);
      _os_log_impl(&_mh_execute_header, v31, v32, "TEST RUN START {testName: %{public}s}", v33, 0xCu);
      sub_100004758(v34);
    }

    v63[1] = 0;
    v35 = swift_allocObject();
    v35[2] = a4;
    v35[3] = a5;
    v36 = a2;
    v35[4] = a2;
    v63[0] = v35;
    v37 = v70;
    v35[5] = v70;
    sub_10000C36C(v69, v69[3]);

    v69 = v36;
    v38 = v37;
    UUID.init(uuidString:)();
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v12, 1, v39) == 1)
    {
      __break(1u);
    }

    else
    {
      v41 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v12, v39);
      v43 = [v41 objectIDWithUUID:isa];

      sub_100058000(&unk_10076DF50);
      v44 = v64;
      *v64 = v43;
      static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
      v46 = v67;
      v45 = v68;
      (*(v67 + 104))(v44, enum case for REMNavigationSpecifier.reminder(_:), v68);
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = v66;
      (*(v46 + 16))(v66, v44, v45);
      v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v50 = (v65 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v47;
      (*(v46 + 32))(v51 + v49, v48, v45);
      *(v51 + v50) = 0;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1005C81A0;
      *(v52 + 24) = v51;

      sub_100058000(&qword_100775650);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v46 + 8))(v44, v45);

      v53 = swift_allocObject();
      v54 = v69;
      v53[2] = v69;
      v53[3] = sub_1005C93B0;
      v55 = v63[0];
      v56 = v71;
      v53[4] = v63[0];
      v53[5] = v56;
      v57 = v54;

      v58 = v56;
      v59 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();

      v60 = swift_allocObject();
      v60[2] = v58;
      v60[3] = sub_1005C93B0;
      v60[4] = v55;

      v61 = v58;
      v62 = zalgo.getter();
      dispatch thunk of Promise.error(on:closure:)();
    }
  }
}

void sub_1005BFF64(void *a1, void *a2, void *a3, id a4, unint64_t a5, void *a6)
{
  v66 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v9 = type metadata accessor for REMNavigationSpecifier();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v63 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v58 - v12;
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100790D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "TEST SETUP START", v17, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = a6;
      v23 = swift_slowAlloc();
      v67 = v23;
      *v20 = 136446466;
      v24 = v66;
      *(v20 + 4) = sub_100004060(v66, a5, &v67);
      *(v20 + 12) = 2114;
      v25 = _convertErrorToNSError(_:)();
      *(v20 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v20, 0x16u);
      sub_1000079B4(v21, &unk_10076DF80);

      sub_100004758(v23);
      a6 = v22;
    }

    else
    {

      v24 = v66;
    }

    v35 = String._bridgeToObjectiveC()();
    [a6 startedTest:v35];

    sub_1005BA214(v24, a5);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "TEST SETUP END", v28, 2u);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v58[1] = 0;
    v59 = a6;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136446210;
      v34 = v66;
      *(v32 + 4) = sub_100004060(v66, a5, &v67);
      _os_log_impl(&_mh_execute_header, v29, v30, "TEST RUN START {testName: %{public}s}", v32, 0xCu);
      sub_100004758(v33);
    }

    else
    {

      v34 = v66;
    }

    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = a5;
    v38 = v61;
    v37 = v62;
    v36[4] = v61;
    v36[5] = v37;
    sub_10000C36C(v60, v60[3]);

    v66 = v38;
    v39 = v37;
    v58[0] = v13;
    sub_1004CCACC(v39);
    v40 = swift_allocObject();
    swift_weakInit();
    v42 = v63;
    v41 = v64;
    v43 = v13;
    v44 = v65;
    (*(v64 + 16))(v63, v43, v65);
    v45 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v46 = (v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    (*(v41 + 32))(v47 + v45, v42, v44);
    *(v47 + v46) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1005C7AB0;
    *(v48 + 24) = v47;

    sub_100058000(&qword_10077FD70);
    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v41 + 8))(v58[0], v44);

    v49 = swift_allocObject();
    v50 = v66;
    v49[2] = v66;
    v49[3] = sub_1005C93B0;
    v51 = v59;
    v49[4] = v36;
    v49[5] = v51;
    v52 = v50;

    v53 = v51;
    v54 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    v55 = swift_allocObject();
    v55[2] = v53;
    v55[3] = sub_1005C93B0;
    v55[4] = v36;

    v56 = v53;
    v57 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();
  }
}

void sub_1005C06C4(void *a1, void *a2, void *a3, id a4, unint64_t a5, void *a6)
{
  v63 = a4;
  v58 = a2;
  v59 = a3;
  v57 = a1;
  v9 = type metadata accessor for REMNavigationSpecifier();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  __chkstk_darwin(v9);
  v60 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100790D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "TEST SETUP START", v17, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = a6;
      v23 = swift_slowAlloc();
      v64 = v23;
      *v20 = 136446466;
      v24 = v63;
      *(v20 + 4) = sub_100004060(v63, a5, &v64);
      *(v20 + 12) = 2114;
      v25 = _convertErrorToNSError(_:)();
      *(v20 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v20, 0x16u);
      sub_1000079B4(v21, &unk_10076DF80);

      sub_100004758(v23);
      a6 = v22;
    }

    else
    {

      v24 = v63;
    }

    v35 = String._bridgeToObjectiveC()();
    [a6 startedTest:v35];

    sub_1005BA214(v24, a5);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "TEST SETUP END", v28, 2u);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v55[1] = 0;
    v56 = a6;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = v33;
      *v32 = 136446210;
      v34 = v63;
      *(v32 + 4) = sub_100004060(v63, a5, &v64);
      _os_log_impl(&_mh_execute_header, v29, v30, "TEST RUN START {testName: %{public}s}", v32, 0xCu);
      sub_100004758(v33);
    }

    else
    {

      v34 = v63;
    }

    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = a5;
    v38 = v58;
    v37 = v59;
    v36[4] = v58;
    v36[5] = v37;
    sub_10000C36C(v57, v57[3]);

    v63 = v38;
    v39 = v37;
    v55[0] = v13;
    sub_1004CD050(v13);
    v40 = swift_allocObject();
    swift_weakInit();
    v42 = v60;
    v41 = v61;
    v43 = v13;
    v44 = v62;
    (*(v61 + 16))(v60, v43, v62);
    v45 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v46 = (v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    (*(v41 + 32))(v47 + v45, v42, v44);
    *(v47 + v46) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1005C9428;
    *(v48 + 24) = v47;

    sub_100058000(&qword_100775650);
    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v41 + 8))(v55[0], v44);

    v49 = swift_allocObject();
    v50 = v56;
    v49[2] = v56;
    v49[3] = sub_1005C93B0;
    v51 = v63;
    v49[4] = v36;
    v49[5] = v51;
    v52 = v51;
    v53 = v50;

    v54 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
  }
}

void sub_1005C0DA8(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v68 = a6;
  v69 = a4;
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v8 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for REMNavigationSpecifier();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = (&v60 - v15);
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_100790D98);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "TEST SETUP START", v19, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v70 = v24;
      *v22 = 136446466;
      v25 = v69;
      *(v22 + 4) = sub_100004060(v69, a5, &v70);
      *(v22 + 12) = 2114;
      v26 = _convertErrorToNSError(_:)();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v22, 0x16u);
      sub_1000079B4(v23, &unk_10076DF80);

      sub_100004758(v24);
      v27 = v68;
    }

    else
    {

      v27 = v68;
      v25 = v69;
    }

    v36 = String._bridgeToObjectiveC()();
    [v27 startedTest:v36];

    sub_1005BA214(v25, a5);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "TEST SETUP END", v30, 2u);
    }

    v61 = v12;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70 = v34;
      *v33 = 136446210;
      v35 = v69;
      *(v33 + 4) = sub_100004060(v69, a5, &v70);
      _os_log_impl(&_mh_execute_header, v31, v32, "TEST RUN START {testName: %{public}s}", v33, 0xCu);
      sub_100004758(v34);
    }

    else
    {

      v35 = v69;
    }

    v69 = 0;
    v37 = swift_allocObject();
    v37[2] = v35;
    v37[3] = a5;
    v39 = v66;
    v38 = v67;
    v37[4] = v66;
    v37[5] = v38;
    v60 = v37;
    v65 = sub_10000C36C(v65, v65[3]);

    v66 = v39;
    v40 = v38;
    UUID.init(uuidString:)();
    v41 = type metadata accessor for UUID();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v10, 1, v41) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_100058000(&unk_10076DF50);
      v43 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v42 + 8))(v10, v41);
      v45 = [v43 objectIDWithUUID:isa];

      v46 = v62;
      *v62 = v45;
      static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
      v47 = v63;
      v48 = v64;
      (*(v63 + 104))(v46, enum case for REMNavigationSpecifier.reminder(_:), v64);
      v49 = swift_allocObject();
      swift_weakInit();
      (*(v47 + 16))(v13, v46, v48);
      v50 = (*(v47 + 80) + 24) & ~*(v47 + 80);
      v51 = (v61 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = v49;
      (*(v47 + 32))(v52 + v50, v13, v48);
      *(v52 + v51) = 0;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_1005C9428;
      *(v53 + 24) = v52;

      sub_100058000(&qword_100775650);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v47 + 8))(v46, v48);

      v54 = swift_allocObject();
      v55 = v68;
      v54[2] = v68;
      v54[3] = sub_1005C93B0;
      v56 = v66;
      v54[4] = v60;
      v54[5] = v56;
      v57 = v56;
      v58 = v55;

      v59 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();
    }
  }
}

void sub_1005C15EC(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v75 = a2;
  v76 = a4;
  v74 = a1;
  v10 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for REMNavigationSpecifier();
  v72 = *(v13 - 8);
  v73 = v13;
  __chkstk_darwin(v13);
  v69 = v14;
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = (&v67 - v16);
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100790D98);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "TEST SETUP START", v20, 2u);
  }

  v21 = sub_1004CDA20(a3);
  if (v6)
  {

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v77 = v26;
      *v24 = 136446466;
      v27 = v76;
      *(v24 + 4) = sub_100004060(v76, a5, &v77);
      *(v24 + 12) = 2114;
      v28 = _convertErrorToNSError(_:)();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v24, 0x16u);
      sub_1000079B4(v25, &unk_10076DF80);

      sub_100004758(v26);
    }

    else
    {

      v27 = v76;
    }

    v39 = String._bridgeToObjectiveC()();
    [a6 startedTest:v39];

    sub_1005BA214(v27, a5);
  }

  else
  {
    v29 = v21;
    v68 = a3;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v67 = a6;
    if (v32)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "TEST SETUP END", v33, 2u);
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v77 = v37;
      *v36 = 136446210;
      v38 = v76;
      *(v36 + 4) = sub_100004060(v76, a5, &v77);
      _os_log_impl(&_mh_execute_header, v34, v35, "TEST RUN START {testName: %{public}s}", v36, 0xCu);
      sub_100004758(v37);
    }

    else
    {

      v38 = v76;
    }

    v40 = v68;
    v76 = 0;
    v41 = swift_allocObject();
    v41[2] = v38;
    v41[3] = a5;
    v42 = v75;
    v41[4] = v75;
    v41[5] = v29;
    v68 = v41;
    v41[6] = v40;
    sub_10000C36C(v74, v74[3]);

    v75 = v42;
    v74 = v29;
    v43 = v40;
    UUID.init(uuidString:)();
    v44 = type metadata accessor for UUID();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v12, 1, v44) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_100058000(&unk_10076DF50);
      v46 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v45 + 8))(v12, v44);
      v48 = [v46 objectIDWithUUID:isa];

      v49 = v71;
      *v71 = v48;
      static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
      v50 = v72;
      v51 = v73;
      (*(v72 + 104))(v49, enum case for REMNavigationSpecifier.reminder(_:), v73);
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = v70;
      (*(v50 + 16))(v70, v49, v51);
      v54 = (*(v50 + 80) + 24) & ~*(v50 + 80);
      v55 = (v69 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      *(v56 + 16) = v52;
      (*(v50 + 32))(v56 + v54, v53, v51);
      *(v56 + v55) = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1005C9428;
      *(v57 + 24) = v56;

      sub_100058000(&qword_100775650);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v50 + 8))(v49, v51);

      v58 = swift_allocObject();
      v60 = v67;
      v59 = v68;
      v58[2] = v67;
      v58[3] = sub_1005C9210;
      v62 = v74;
      v61 = v75;
      v58[4] = v59;
      v58[5] = v61;
      v58[6] = v62;
      v63 = v61;
      v64 = v62;
      v65 = v60;

      v66 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();
    }
  }
}

void sub_1005C1E54(void *a1, void *a2, void *a3, id a4, unint64_t a5, void *a6)
{
  v66 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v9 = type metadata accessor for REMNavigationSpecifier();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v63 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v58 - v12;
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100790D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "TEST SETUP START", v17, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = a6;
      v23 = swift_slowAlloc();
      v67 = v23;
      *v20 = 136446466;
      v24 = v66;
      *(v20 + 4) = sub_100004060(v66, a5, &v67);
      *(v20 + 12) = 2114;
      v25 = _convertErrorToNSError(_:)();
      *(v20 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v20, 0x16u);
      sub_1000079B4(v21, &unk_10076DF80);

      sub_100004758(v23);
      a6 = v22;
    }

    else
    {

      v24 = v66;
    }

    v35 = String._bridgeToObjectiveC()();
    [a6 startedTest:v35];

    sub_1005BA214(v24, a5);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "TEST SETUP END", v28, 2u);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v58[1] = 0;
    v59 = a6;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136446210;
      v34 = v66;
      *(v32 + 4) = sub_100004060(v66, a5, &v67);
      _os_log_impl(&_mh_execute_header, v29, v30, "TEST RUN START {testName: %{public}s}", v32, 0xCu);
      sub_100004758(v33);
    }

    else
    {

      v34 = v66;
    }

    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = a5;
    v38 = v61;
    v37 = v62;
    v36[4] = v61;
    v36[5] = v37;
    sub_10000C36C(v60, v60[3]);

    v66 = v38;
    v39 = v37;
    v58[0] = v13;
    sub_1004CE280(v39);
    v40 = swift_allocObject();
    swift_weakInit();
    v42 = v63;
    v41 = v64;
    v43 = v13;
    v44 = v65;
    (*(v64 + 16))(v63, v43, v65);
    v45 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v46 = (v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    (*(v41 + 32))(v47 + v45, v42, v44);
    *(v47 + v46) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1005C9410;
    *(v48 + 24) = v47;

    sub_100058000(&qword_10077FD70);
    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v41 + 8))(v58[0], v44);

    v49 = swift_allocObject();
    v50 = v66;
    v49[2] = v66;
    v49[3] = sub_1005C93B0;
    v51 = v59;
    v49[4] = v36;
    v49[5] = v51;
    v52 = v50;

    v53 = v51;
    v54 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    v55 = swift_allocObject();
    v55[2] = v53;
    v55[3] = sub_1005C93B0;
    v55[4] = v36;

    v56 = v53;
    v57 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();
  }
}

void sub_1005C25B4(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v80 = a6;
  v81 = a4;
  v78 = a1;
  v79 = a2;
  v9 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for REMNavigationSpecifier();
  v76 = *(v12 - 8);
  v77 = v12;
  __chkstk_darwin(v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v13;
  __chkstk_darwin(v15);
  v75 = &v70 - v16;
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100790D98);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "TEST SETUP START", v20, 2u);
  }

  v21 = sub_1004CD82C(a3);
  if (v6)
  {

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v82 = v26;
      *v24 = 136446466;
      v27 = v81;
      *(v24 + 4) = sub_100004060(v81, a5, &v82);
      *(v24 + 12) = 2114;
      v28 = _convertErrorToNSError(_:)();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v24, 0x16u);
      sub_1000079B4(v25, &unk_10076DF80);

      sub_100004758(v26);
    }

    else
    {

      v27 = v81;
    }

    v39 = String._bridgeToObjectiveC()();
    [v80 startedTest:v39];

    sub_1005BA214(v27, a5);
  }

  else
  {
    v29 = v21;
    v73 = 0;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "TEST SETUP END", v32, 2u);
    }

    v72 = v14;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v71 = a3;
      v37 = v36;
      v82 = v36;
      *v35 = 136446210;
      v38 = v81;
      *(v35 + 4) = sub_100004060(v81, a5, &v82);
      _os_log_impl(&_mh_execute_header, v33, v34, "TEST RUN START {testName: %{public}s}", v35, 0xCu);
      sub_100004758(v37);
      a3 = v71;
    }

    else
    {

      v38 = v81;
    }

    v40 = swift_allocObject();
    v40[2] = v38;
    v40[3] = a5;
    v41 = v79;
    v40[4] = v79;
    v40[5] = v29;
    v81 = v40;
    v40[6] = a3;
    sub_10000C36C(v78, v78[3]);

    v79 = v41;
    v78 = v29;
    v42 = a3;
    UUID.init(uuidString:)();
    v43 = type metadata accessor for UUID();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v11, 1, v43) == 1)
    {
      __break(1u);
    }

    else
    {
      v45 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v44 + 8))(v11, v43);
      v47 = [v45 objectIDWithUUID:isa];

      v48 = *(sub_100058000(&unk_100793000) + 48);
      v49 = v75;
      *v75 = v47;
      v50 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
      v51 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
      (*(*(v51 - 8) + 104))(&v49[v48], v50, v51);
      v53 = v76;
      v52 = v77;
      (*(v76 + 104))(v49, enum case for REMNavigationSpecifier.list(_:), v77);
      v54 = swift_allocObject();
      swift_weakInit();
      v55 = v72;
      (*(v53 + 16))(v72, v49, v52);
      v56 = (*(v53 + 80) + 24) & ~*(v53 + 80);
      v57 = (v74 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      *(v58 + 16) = v54;
      (*(v53 + 32))(v58 + v56, v55, v52);
      *(v58 + v57) = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_1005C9428;
      *(v59 + 24) = v58;

      sub_100058000(&qword_100775650);
      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v53 + 8))(v49, v52);

      sub_1000A96A0();
      v60 = static OS_dispatch_queue.main.getter();
      v61 = swift_allocObject();
      v62 = v79;
      v63 = v80;
      v61[2] = v80;
      v61[3] = v62;
      v64 = v78;
      v61[4] = v78;
      v61[5] = sub_1005C904C;
      v61[6] = v81;
      v65 = v62;
      v66 = v64;
      v67 = v63;

      sub_100058000(&qword_100790DC0);
      dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

      *(swift_allocObject() + 16) = v67;
      v68 = v67;
      v69 = zalgo.getter();
      dispatch thunk of Promise.error(on:closure:)();
    }
  }
}

uint64_t sub_1005C2EF8(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t, uint64_t, void *, id))
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100790D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "TEST SETUP START", v17, 2u);
  }

  sub_100025654("Default setup");
  if (v9)
  {

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v20 = 136446466;
      *(v20 + 4) = sub_100004060(a4, a5, &v40);
      *(v20 + 12) = 2114;
      v23 = _convertErrorToNSError(_:)();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v20, 0x16u);
      sub_1000079B4(v21, &unk_10076DF80);

      sub_100004758(v22);
    }

    v24 = String._bridgeToObjectiveC()();
    [a6 startedTest:v24];

    sub_1005BA214(a4, a5);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "TEST SETUP END", v28, 2u);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_100004060(a4, a5, &v40);
      _os_log_impl(&_mh_execute_header, v29, v30, "TEST RUN START {testName: %{public}s}", v31, 0xCu);
      sub_100004758(v32);
    }

    v33 = swift_allocObject();
    v33[2] = a4;
    v33[3] = a5;
    v33[4] = a2;
    v33[5] = a3;
    v34 = *sub_10000C36C(a1, a1[3]);

    v35 = a2;
    v36 = a3;
    a9(a6, v34, a8, v33, v35);
  }
}

uint64_t sub_1005C3338(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9, void (*a10)(id, void *, uint64_t, uint64_t, void *, id))
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100790D98);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "TEST SETUP START", v18, 2u);
  }

  v19 = a7(a3);
  if (v10)
  {

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v22 = 136446466;
      *(v22 + 4) = sub_100004060(a4, a5, &v44);
      *(v22 + 12) = 2114;
      v25 = _convertErrorToNSError(_:)();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v22, 0x16u);
      sub_1000079B4(v23, &unk_10076DF80);

      sub_100004758(v24);
    }

    v26 = String._bridgeToObjectiveC()();
    [a6 startedTest:v26];

    sub_1005BA214(a4, a5);
  }

  else
  {
    v28 = v19;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "TEST SETUP END", v31, 2u);
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_100004060(a4, a5, &v44);
      _os_log_impl(&_mh_execute_header, v32, v33, "TEST RUN START {testName: %{public}s}", v34, 0xCu);
      sub_100004758(v35);
    }

    v36 = swift_allocObject();
    v36[2] = a4;
    v36[3] = a5;
    v36[4] = a2;
    v36[5] = v28;
    v36[6] = a3;
    v37 = *sub_10000C36C(a1, a1[3]);

    v38 = a2;
    v39 = v28;
    v40 = a3;
    a10(v39, a6, v37, a9, v36, v38);
  }
}

uint64_t sub_1005C3798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  v16 = *(v15 + 136);

  v17 = a6;
  v16(a8, v13, v14, v15);
}

uint64_t sub_1005C385C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v35 = a4;
  v32 = a1;
  v33 = a3;
  v6 = type metadata accessor for REMNavigationSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v37 = type metadata accessor for TTRIRootPresenter();
  v38 = &off_1007211E8;
  v36[0] = a2;
  sub_10000C36C(v36, v37);
  v13 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v14 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v7 + 104))(v12, enum case for REMNavigationSpecifier.root(_:), v6);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v7 + 32))(v18 + v16, v9, v6);
  *(v18 + v17) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005C93F8;
  *(v19 + 24) = v18;

  sub_100058000(&qword_10077FDB0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v7 + 8))(v12, v6);

  sub_1000A96A0();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v32;
  v23 = v33;
  v25 = v34;
  v24 = v35;
  v21[2] = v32;
  v21[3] = v25;
  v21[4] = v23;
  v21[5] = v24;
  v26 = v22;
  v27 = v25;

  sub_100058000(&qword_10077FD80);
  dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

  *(swift_allocObject() + 16) = v26;
  v28 = v26;
  v29 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  return sub_100004758(v36);
}

uint64_t sub_1005C3C44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v32 = a2;
  v33 = a1;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v38 = type metadata accessor for TTRIRootPresenter();
  v39 = &off_1007211E8;
  v37[0] = a3;
  sub_10000C36C(v37, v38);
  v14 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v15 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.root(_:), v7);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v10, v7);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005C93F8;
  *(v19 + 24) = v18;

  sub_100058000(&qword_10077FDB0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v8 + 8))(v13, v7);

  sub_1000A96A0();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v32;
  v23 = v33;
  v25 = v34;
  v24 = v35;
  v21[2] = v32;
  v21[3] = v25;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v36;
  v26 = v22;
  v27 = v25;
  v28 = v23;

  sub_100058000(&qword_10077FDC8);
  dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

  *(swift_allocObject() + 16) = v26;
  v29 = v26;
  v30 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  return sub_100004758(v37);
}

uint64_t sub_1005C403C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1005C74BC(*a1, a1[1], a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1005C4080(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v32 = a2;
  v33 = a1;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v38 = type metadata accessor for TTRIRootPresenter();
  v39 = &off_1007211E8;
  v37[0] = a3;
  sub_10000C36C(v37, v38);
  v14 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v15 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.root(_:), v7);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v10, v7);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005C93F8;
  *(v19 + 24) = v18;

  sub_100058000(&qword_10077FDB0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v8 + 8))(v13, v7);

  sub_1000A96A0();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v32;
  v23 = v33;
  v25 = v34;
  v24 = v35;
  v21[2] = v32;
  v21[3] = v25;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v36;
  v26 = v22;
  v27 = v25;
  v28 = v23;

  sub_100058000(&qword_10077FDD8);
  dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

  *(swift_allocObject() + 16) = v26;
  v29 = v26;
  v30 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  return sub_100004758(v37);
}

uint64_t sub_1005C4478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v35 = a4;
  v32 = a1;
  v33 = a3;
  v6 = type metadata accessor for REMNavigationSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v37 = type metadata accessor for TTRIRootPresenter();
  v38 = &off_1007211E8;
  v36[0] = a2;
  sub_10000C36C(v36, v37);
  v13 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v14 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v7 + 104))(v12, enum case for REMNavigationSpecifier.root(_:), v6);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v7 + 32))(v18 + v16, v9, v6);
  *(v18 + v17) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005C93F8;
  *(v19 + 24) = v18;

  sub_100058000(&qword_10077FDB0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v7 + 8))(v12, v6);

  sub_1000A96A0();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v32;
  v23 = v33;
  v25 = v34;
  v24 = v35;
  v21[2] = v32;
  v21[3] = v25;
  v21[4] = v23;
  v21[5] = v24;
  v26 = v22;
  v27 = v25;

  sub_100058000(&qword_10077FD80);
  dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

  *(swift_allocObject() + 16) = v26;
  v28 = v26;
  v29 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  return sub_100004758(v36);
}

uint64_t sub_1005C4860(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v32 = a2;
  v33 = a1;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v38 = type metadata accessor for TTRIRootPresenter();
  v39 = &off_1007211E8;
  v37[0] = a3;
  sub_10000C36C(v37, v38);
  v14 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v15 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.root(_:), v7);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v10, v7);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005C93F8;
  *(v19 + 24) = v18;

  sub_100058000(&qword_10077FDB0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v8 + 8))(v13, v7);

  sub_1000A96A0();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v32;
  v23 = v33;
  v25 = v34;
  v24 = v35;
  v21[2] = v32;
  v21[3] = v25;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v36;
  v26 = v22;
  v27 = v25;
  v28 = v23;

  sub_100058000(&qword_10077FDE8);
  dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

  *(swift_allocObject() + 16) = v26;
  v29 = v26;
  v30 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  return sub_100004758(v37);
}

uint64_t sub_1005C4C58(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v32 = a2;
  v33 = a1;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v38 = type metadata accessor for TTRIRootPresenter();
  v39 = &off_1007211E8;
  v37[0] = a3;
  sub_10000C36C(v37, v38);
  v14 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v15 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.root(_:), v7);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v10, v7);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005C93F8;
  *(v19 + 24) = v18;

  sub_100058000(&qword_10077FDB0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v8 + 8))(v13, v7);

  sub_1000A96A0();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v32;
  v23 = v33;
  v25 = v34;
  v24 = v35;
  v21[2] = v32;
  v21[3] = v25;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v36;
  v26 = v22;
  v27 = v25;
  v28 = v23;

  sub_100058000(&qword_10077FDF8);
  dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

  *(swift_allocObject() + 16) = v26;
  v29 = v26;
  v30 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  return sub_100004758(v37);
}

uint64_t sub_1005C5050(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100790D98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100004060(a1, a2, v30);
    _os_log_impl(&_mh_execute_header, v7, v8, "TEST START {testName: %{public}s}", v9, 0xCu);
    sub_100004758(v10);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = NSClassFromString(v11);

  if (!v12)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_100004060(a1, a2, v30);
      v22 = "TEST END ERROR -- No class for test name {testName: %{public}s}";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
      sub_100004758(v21);
    }

LABEL_17:

    return 0;
  }

  swift_getObjCClassMetadata();
  type metadata accessor for PPTTestClass();
  v13 = swift_dynamicCastMetatype();
  if (!v13)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_100004060(a1, a2, v30);
      v22 = "TEST END ERROR -- testClass is not a pptTestClass subclass {testName: %{public}s}";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v29 = [objc_allocWithZone(v13) init];
  v14 = v29;
  sub_100058000(&qword_100790DD8);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1000079B4(v27, &qword_100790DE0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_100004060(a1, a2, v30);
      _os_log_impl(&_mh_execute_header, v23, v24, "TEST END ERROR -- pptInstance does not confrom to PPTITest. Did you forget to provide a concrete implementation in TTRITests {testName: %{public}s}", v25, 0xCu);
      sub_100004758(v26);
    }

    return 0;
  }

  sub_100005FD0(v27, v30);
  v15 = v31;
  v16 = v32;
  sub_10000C36C(v30, v31);
  if (qword_1007674C0 != -1)
  {
    swift_once();
  }

  result = DeferredPromise.promise.getter();
  if (result)
  {
    (*(v16 + 8))(a3, result, v15, v16);

    sub_100004758(v30);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005C5524(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = type metadata accessor for REMNavigationSpecifier();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  type metadata accessor for PPTNavigation_List_Simple();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v15];

  sub_10000C36C(a1, a1[3]);
  UUID.init(uuidString:)();
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v13, 1, v16);
  v43 = a2;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v13, v16);
    v21 = [v19 objectIDWithUUID:isa];
    v42 = v21;

    v22 = *(sub_100058000(&unk_100793000) + 48);
    *v10 = v21;
    v23 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
    v24 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v24 - 8) + 104))(&v10[v22], v23, v24);
    v25 = v6;
    v26 = *(v6 + 104);
    v27 = v45;
    v26(v10, enum case for REMNavigationSpecifier.list(_:), v45);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v44;
    (*(v25 + 16))(v44, v10, v27);
    v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    (*(v25 + 32))(v32 + v30, v29, v27);
    *(v32 + v31) = 1;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1005C9428;
    *(v33 + 24) = v32;
    v34 = v42;

    sub_100058000(&qword_100775650);
    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v25 + 8))(v10, v27);

    v35 = swift_allocObject();
    v36 = v43;
    v37 = v46;
    v38 = v47;
    v35[2] = v43;
    v35[3] = v37;
    v35[4] = v38;
    v39 = v36;

    v40 = zalgo.getter();
    v41 = dispatch thunk of Promise.then<A>(on:closure:)();

    return v41;
  }

  return result;
}

uint64_t sub_1005C5A1C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  type metadata accessor for PPTNavigation_Smartlist_All();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v15];

  sub_10000C36C(a1, a1[3]);
  v16 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v17 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  (*(*(v17 - 8) + 104))(v13, v16, v17);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.allReminders(_:), v7);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v19 = *(v8 + 80);
  v35 = a2;
  v20 = (v19 + 24) & ~v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v8 + 32))(v21 + v20, v10, v7);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1005C8B0C;
  *(v22 + 24) = v21;

  sub_100058000(&qword_10077FDC0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v36;
  v25 = v24;
  v26 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v8 + 8))(v13, v7);
  v27 = swift_allocObject();
  v28 = v35;
  v29 = v37;
  v30 = v38;
  v27[2] = v35;
  v27[3] = v29;
  v27[4] = v30;
  v31 = v28;

  v32 = zalgo.getter();
  v33 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v33;
}

uint64_t sub_1005C5E1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PPTNavigation_ReminderDetails();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:{v13, v26, v27}];

  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  v16 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.none(_:);
  v17 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  (*(*(v17 - 8) + 104))(v11, v16, v17);
  (*(v9 + 104))(v11, enum case for REMNavigationSpecifier.ReminderPathSpecifier.showDetail(_:), v8);
  v18 = sub_100058000(&qword_100790DC8);
  (*(v15 + 56))(a3, v11, v18, v18, v14, v15);
  (*(v9 + 8))(v11, v8);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  v22 = a2;

  v23 = zalgo.getter();
  v24 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v24;
}

uint64_t sub_1005C609C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v6 = type metadata accessor for REMNavigationSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  type metadata accessor for PPTNavigation_SmartList_Today();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v14];

  sub_10000C36C(a1, a1[3]);
  type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.todayListIsGrouped.setter();

  v16 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v17 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  (*(*(v17 - 8) + 104))(v12, v16, v17);
  (*(v7 + 104))(v12, enum case for REMNavigationSpecifier.today(_:), v6);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v12, v6);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v32 = v12;
  v20 = a2;
  v21 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v7 + 32))(v22 + v19, v9, v6);
  *(v22 + v21) = 1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1005C8C8C;
  *(v23 + 24) = v22;

  sub_100058000(&qword_10077FDD0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  (*(v7 + 8))(v32, v6);

  v24 = swift_allocObject();
  v25 = v33;
  v26 = v34;
  v24[2] = v20;
  v24[3] = v25;
  v24[4] = v26;
  v27 = v20;

  v28 = zalgo.getter();
  v29 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v29;
}

uint64_t sub_1005C6450(uint64_t a1)
{
  v47[1] = a1;
  v1 = type metadata accessor for REMNavigationSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v47[0] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v47 - v5;
  v7 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v13 = type metadata accessor for REMFeatureFlags();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for REMFeatureFlags.ppt_skipSelectionForNavigationTests(_:), v13, v15);
  v18 = REMFeatureFlags.isEnabled.getter();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    UUID.init(uuidString:)();
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v12, 1, v19);
    if (result != 1)
    {
      v22 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v20 + 8))(v12, v19);
      v24 = [v22 objectIDWithUUID:isa];

      v25 = *(sub_100058000(&unk_100793000) + 48);
      *v6 = v24;
      v26 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
      v27 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
      (*(*(v27 - 8) + 104))(&v6[v25], v26, v27);
      (*(v2 + 104))(v6, enum case for REMNavigationSpecifier.list(_:), v1);
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = v47[0];
      (*(v2 + 16))(v47[0], v6, v1);
      v30 = (*(v2 + 80) + 24) & ~*(v2 + 80);
      v31 = (v3 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      (*(v2 + 32))(v32 + v30, v29, v1);
      *(v32 + v31) = 1;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1005C9428;
      *(v33 + 24) = v32;
      v34 = v24;

      sub_100058000(&qword_100775650);
LABEL_6:
      v46 = TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v2 + 8))(v6, v1);

      return v46;
    }

    __break(1u);
  }

  else
  {
    UUID.init(uuidString:)();
    v35 = type metadata accessor for UUID();
    v36 = *(v35 - 8);
    result = (*(v36 + 48))(v9, 1, v35);
    if (result != 1)
    {
      v37 = objc_opt_self();
      v38 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v36 + 8))(v9, v35);
      v39 = [v37 objectIDWithUUID:v38];

      sub_100058000(&unk_10076DF50);
      *v6 = v39;
      v34 = v39;
      static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
      (*(v2 + 104))(v6, enum case for REMNavigationSpecifier.reminder(_:), v1);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = v47[0];
      (*(v2 + 16))(v47[0], v6, v1);
      v42 = (*(v2 + 80) + 24) & ~*(v2 + 80);
      v43 = (v3 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      *(v44 + 16) = v40;
      (*(v2 + 32))(v44 + v42, v41, v1);
      *(v44 + v43) = 1;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1005C9428;
      *(v45 + 24) = v44;

      sub_100058000(&qword_100775650);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005C6B7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PPTNavigation_List_MixedContent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v9];

  v10 = sub_10000C36C(a1, a1[3]);
  sub_1005C6450(*v10);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v12 = a2;

  v13 = zalgo.getter();
  sub_100058000(&qword_100775650);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_1005C6CBC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  type metadata accessor for PPTNavigation_SmartList_Flagged();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v15];

  sub_10000C36C(a1, a1[3]);
  v16 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v17 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  (*(*(v17 - 8) + 104))(v13, v16, v17);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.flagged(_:), v7);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v19 = *(v8 + 80);
  v35 = a2;
  v20 = (v19 + 24) & ~v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v8 + 32))(v21 + v20, v10, v7);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1005C8DE8;
  *(v22 + 24) = v21;

  sub_100058000(&qword_10077FDE0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v36;
  v25 = v24;
  v26 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v8 + 8))(v13, v7);
  v27 = swift_allocObject();
  v28 = v35;
  v29 = v37;
  v30 = v38;
  v27[2] = v35;
  v27[3] = v29;
  v27[4] = v30;
  v31 = v28;

  v32 = zalgo.getter();
  v33 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v33;
}

uint64_t sub_1005C70BC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v7 = type metadata accessor for REMNavigationSpecifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  type metadata accessor for PPTNavigation_SmartList_Scheduled();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v15];

  sub_10000C36C(a1, a1[3]);
  v16 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v17 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  (*(*(v17 - 8) + 104))(v13, v16, v17);
  (*(v8 + 104))(v13, enum case for REMNavigationSpecifier.scheduled(_:), v7);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v13, v7);
  v19 = *(v8 + 80);
  v35 = a2;
  v20 = (v19 + 24) & ~v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v8 + 32))(v21 + v20, v10, v7);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1005C8F60;
  *(v22 + 24) = v21;

  sub_100058000(&qword_10077FDF0);
  TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v36;
  v25 = v24;
  v26 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v8 + 8))(v13, v7);
  v27 = swift_allocObject();
  v28 = v35;
  v29 = v37;
  v30 = v38;
  v27[2] = v35;
  v27[3] = v29;
  v27[4] = v30;
  v31 = v28;

  v32 = zalgo.getter();
  v33 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v33;
}

uint64_t sub_1005C74BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PPTNavigation_ReminderDetails();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14[4] = sub_1001A84C0;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10001047C;
  v14[3] = &unk_100731868;
  v12 = _Block_copy(v14);

  [a3 finishedTest:v10 waitForCommit:0 extraResults:0 withTeardownBlock:v12];
  _Block_release(v12);

  return a1;
}

void sub_1005C7610(uint64_t a1, unint64_t a2)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100790D98);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100004060(a1, a2, v19);
    _os_log_impl(&_mh_execute_header, v5, v6, "TEST RUN END {testName: %{public}s}", v7, 0xCu);
    sub_100004758(v8);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "TEST TEARDOWN START", v11, 2u);
  }

  sub_100025654("Default tearDown");
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TEST TEARDOWN END", v14, 2u);
  }

  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100004060(a1, a2, v19);
    _os_log_impl(&_mh_execute_header, oslog, v15, "TEST END {testName: %{public}s}", v16, 0xCu);
    sub_100004758(v17);
  }
}

void sub_1005C7D00(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100790D98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100004060(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, v7, v8, "TEST RUN END {testName: %{public}s}", v9, 0xCu);
    sub_100004758(v10);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TEST TEARDOWN START", v13, 2u);
  }

  sub_1004CDE7C(a3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "TEST TEARDOWN END", v16, 2u);
  }

  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_100004060(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, oslog, v17, "TEST END {testName: %{public}s}", v18, 0xCu);
    sub_100004758(v19);
  }
}

uint64_t sub_1005C836C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1005C855C(uint64_t a1, unint64_t a2)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100790D98);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100004060(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v5, v6, "TEST RUN END {testName: %{public}s}", v7, 0xCu);
    sub_100004758(v8);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "TEST TEARDOWN START", v11, 2u);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TEST TEARDOWN END", v14, 2u);
  }

  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100004060(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, oslog, v15, "TEST END {testName: %{public}s}", v16, 0xCu);
    sub_100004758(v17);
  }
}

uint64_t sub_1005C88BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005C8930@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3[2], v3[4], v3[5]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1005C8C28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005C609C(a1, *(v2 + 16), *(v2 + 40), *(v2 + 48));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1005C9068()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005C90E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3[2], v3[4], v3[5], v3[6]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1005C91C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005C930C()
{

  return _swift_deallocObject(v0, 48, 7);
}

id TTRIListSharingAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIListSharingAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIListSharingAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIListSharingAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005C9540()
{
  result = qword_100790E10;
  if (!qword_100790E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100790E10);
  }

  return result;
}

id sub_1005C9878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRITreeTableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005C98E0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100790EE8);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v24 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeViewDidScrollPassthroughSubject);

  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v11 = [objc_opt_self() mainRunLoop];
  v23 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_100058000(&unk_100790EF0);
  sub_100003540(0, &qword_10076DFB0);
  sub_10000E188(&unk_100790F00, &unk_100790EF0);
  sub_100139DF0();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000079B4(v3, &qword_1007701A0);

  (*(v18 + 8))(v6, v19);

  sub_10000E188(&qword_100790F10, &qword_100790EE8);
  v13 = v17;
  v14 = v20;
  v15 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v21 + 8))(v10, v14);
  *(v13 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeViewDidStopScrollingCancellable) = v15;
}

uint64_t sub_1005C9C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100770180);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_100058000(&qword_100790EE0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_pendingStartEditingItem;
  swift_beginAccess();
  sub_10016CDBC(v2 + v13, v9);
  v14 = sub_100058000(&unk_100770170);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1000079B4(v9, &unk_100770180);
  }

  else
  {
    v16 = *&v9[*(v14 + 48)];
    v30 = *(v10 + 48);
    v31 = v16;
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v32 = a1;
    v18 = v17;
    v19 = v2;
    v20 = *(v17 - 8);
    (*(v20 + 32))(v12, v9, v17);
    *&v12[v30] = v31;
    v21 = v18;
    a1 = v32;
    (*(v20 + 8))(v12, v21);
    v2 = v19;
    v22 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for PromiseError.cancelled(_:), v22);
    DeferredPromise.reject(_:)();
  }

  sub_100058000(&unk_100770190);
  swift_allocObject();
  v24 = DeferredPromise.init()();
  v25 = *(v14 + 48);
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v26 - 8) + 16))(v6, a1, v26);
  *&v6[v25] = v24;
  (*(v15 + 56))(v6, 0, 1, v14);
  swift_beginAccess();

  sub_10016CE2C(v6, v2 + v13);
  swift_endAccess();
  result = DeferredPromise.promise.getter();
  if (result)
  {
    v28 = result;

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005CA044()
{
  v1 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_itemsPendingUpdate;
  result = swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_scrollSessionController) + 24);
    if (!v3 || (*(v3 + 24) & 1) == 0)
    {
      result = *(*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView) + qword_10078A540);
      if (result)
      {
        result = [result hasActiveDrop];
        if (result)
        {
          return result;
        }

        v4 = *(v0 + v1);
        v5 = *(v4 + 16);
        if (!v5)
        {
          v9 = v0;
          (*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_reloadItemsImmediately))(_swiftEmptyArrayStorage);
          goto LABEL_10;
        }

        v10 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_reloadItemsImmediately);
        v6 = sub_1003AC4C4(v5, 0);
        v7 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
        sub_1003B35AC(&v12, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v4);
        v11 = v8;

        result = sub_10008BA48();
        if (v11 == v5)
        {
          v9 = v0;
          v10(v6);
LABEL_10:

          *(v9 + v1) = &_swiftEmptySetSingleton;
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

id sub_1005CA1FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView;
  v10 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView);
  sub_1000E5C98(a1, a4, a2 & 1);

  result = *(*&v8[v9] + qword_10078A540);
  if (result)
  {
    v12 = [result _isAnimatingScroll];

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1005CA2C8(uint64_t a1)
{
  v31 = a1;
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = v23 - v4;
  v28 = type metadata accessor for TTRRemindersListViewModel.Item();
  v32 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23[0] = Strong;
    v7 = *(*&Strong[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView] + qword_10078A548);
    if (v7)
    {
      v8 = v7;
      sub_1003BD378();
      v10 = v9;

      v11 = 0;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v25 = v12[2];
      v23[2] = (v1 + 8);
      v23[3] = (v32 + 16);
      v23[1] = (v32 + 8);
      v13 = v27;
      v14 = (v1 + 8);
      while (1)
      {
        v24 = v25 != v11;
        if (v25 == v11)
        {
LABEL_10:

          return;
        }

        if (v11 >= v12[2])
        {
          break;
        }

        v15 = v32;
        v16 = v26;
        v17 = v28;
        (*(v32 + 16))(v26, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11++, v28);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v18 = v29;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v19 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
        v20 = *v14;
        v21 = v18;
        v22 = v30;
        (*v14)(v21, v30);
        v20(v13, v22);
        (*(v15 + 8))(v16, v17);
        if (v19)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1005CA5BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005CA044();
  }
}

uint64_t sub_1005CA610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return sub_10007DEE4(sub_10016CF40, v4, a2);
}

void sub_1005CA660(uint64_t (*a1)(id), uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView);
  v5 = qword_10078A540;
  v6 = *(v4 + qword_10078A540);
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v15 = v9;
  if (a3)
  {
    v10._rawValue = a1(v9);
    UIScrollView.scrollRectToFullyVisibleAnimated(_:)(v10);

    *(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) = 1;
    return;
  }

  UIScrollView.iterativelyScrollRectToFullyVisible(with:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v12 = *(v4 + v5);
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = Strong;
  v14 = v12;
  UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v14, 0, 1);

LABEL_7:
}

void sub_1005CA788()
{
  v1 = sub_100058000(&unk_100770180);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_100058000(&qword_100790EE0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_pendingStartEditingItem;
  swift_beginAccess();
  sub_10016CDBC(v0 + v14, v6);
  v15 = sub_100058000(&unk_100770170);
  v35 = *(v15 - 8);
  if ((*(v35 + 48))(v6, 1, v15) == 1)
  {
    sub_1000079B4(v6, &unk_100770180);
  }

  else
  {
    v31 = v14;
    v32 = v3;
    v16 = *(v15 + 48);
    v33 = v11;
    v34 = v13;
    v17 = *&v6[v16];
    v18 = *(v7 + 48);
    v19 = *(v11 + 32);
    v19(v9, v6, v10);
    *&v9[v18] = v17;
    v20 = v34;
    v19(v34, v9, v10);
    v21 = *(*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView) + qword_10078A548);
    if (v21)
    {
      v22 = v0;
      v23 = v21;
      v24 = sub_1000DE654(v20);

      if (v24)
      {
        swift_getObjectType();
        v25 = swift_conformsToProtocol2();
        v26 = v33;
        if (v25)
        {
          v27 = v25;
          v28 = v32;
          (*(v35 + 56))(v32, 1, 1, v15);
          v29 = v31;
          swift_beginAccess();
          sub_10016CE2C(v28, v22 + v29);
          swift_endAccess();
          v36 = v24;
          v37 = v27;
          DeferredPromise.resolve(_:)();

          (*(v26 + 8))(v20, v10);
        }

        else
        {

          (*(v26 + 8))(v20, v10);
        }
      }

      else
      {
        (*(v33 + 8))(v20, v10);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t type metadata accessor for TTRIRemindersListScrollingController()
{
  result = qword_100790EC8;
  if (!qword_100790EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005CACA8()
{
  sub_10016CAAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005CAEB4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView) + qword_10078A540);
  if (v1)
  {
    sub_100003540(0, &qword_100775690);
    v2 = v1;
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005CAFE8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView) + qword_10078A540);
  if (v1)
  {
    sub_100003540(0, &qword_100775690);
    v2 = v1;
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1005CB108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_scrollSessionController;
  type metadata accessor for TTRIRemindersListScrollSessionController();
  v11 = swift_allocObject();
  sub_100058000(&unk_1007701B0);
  swift_allocObject();
  *(v11 + 16) = PassthroughSubject.init()();
  *(v11 + 24) = 0;
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_pendingStartEditingItem;
  v13 = sub_100058000(&unk_100770170);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  *&v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_itemsPendingUpdate] = &_swiftEmptySetSingleton;
  v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_contentScrollViewNeedsAdjustmentAfterScrollingAnimation] = 0;
  v14 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeViewDidScrollPassthroughSubject;
  sub_100058000(&unk_100790EF0);
  swift_allocObject();
  *&v5[v14] = PassthroughSubject.init()();
  *&v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeViewDidStopScrollingCancellable] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView] = a2;
  v15 = &v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_reloadItemsImmediately];
  *v15 = a3;
  v15[1] = a4;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

void sub_1005CB2D4()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_contentScrollViewNeedsAdjustmentAfterScrollingAnimation) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView) + qword_10078A540);
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = Strong;
      v4 = v2;
      UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v4, 1, 0);
    }
  }

  sub_1005CA044();

  sub_1005CA788();
}

uint64_t sub_1005CB380()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100790F18);
  v1 = sub_100003E30(v0, qword_100790F18);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005CB448()
{
  if (qword_1007674C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_100790F18);
  sub_1003F99F4(0x6365532074696445, 0xED0000736E6F6974);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t static TTRLocalizableStrings.ListDetail.ConvertGroceryOrAutoCategorizedListToRegularListAlert.keepExistingSectionConfirmationTitle(listLayout:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRRemindersListLayout.list(_:))
  {
    v8 = 0x636553207065654BLL;
    v9 = 0xEE003F736E6F6974;
    v10 = 0xD000000000000097;
    v11 = 0x8000000100672BB0;
    return TTRLocalizedString(_:comment:)(*&v8, *&v10)._countAndFlagsBits;
  }

  if (v7 == enum case for TTRRemindersListLayout.columns(_:))
  {
    v8 = 0x6C6F43207065654BLL;
    v9 = 0xED00003F736E6D75;
    v11 = 0x8000000100672CE0;
    v10 = 0xD000000000000096;
    return TTRLocalizedString(_:comment:)(*&v8, *&v10)._countAndFlagsBits;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t static TTRLocalizableStrings.ListDetail.ConvertGroceryOrAutoCategorizedListToRegularListAlert.keepExistingSectionsButton.getter()
{
  v0._object = 0x8000000100672C50;
  v1._countAndFlagsBits = 1885693259;
  v1._object = 0xE400000000000000;
  v0._countAndFlagsBits = 0xD000000000000084;
  return TTRLocalizedString(_:comment:)(v1, v0)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.ConvertGroceryOrAutoCategorizedListToRegularListAlert.removeExistingSectionsButton.getter()
{
  v0._countAndFlagsBits = 0x65766F6D6552;
  v1._object = 0x8000000100672C50;
  v0._object = 0xE600000000000000;
  v1._countAndFlagsBits = 0xD000000000000084;
  return TTRLocalizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.hashtags.getter()
{
  v0._countAndFlagsBits = 0x6E207265746C6946;
  v0._object = 0xEB00000000656D61;
  v1._object = 0x800000010067A5C0;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 1936154964;
  v2._object = 0xE400000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v2, v0)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.date.getter()
{
  v0._countAndFlagsBits = 0x6E207265746C6946;
  v0._object = 0xEB00000000656D61;
  v1._object = 0x800000010067A970;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 1702125892;
  v2._object = 0xE400000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v2, v0)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.time.getter()
{
  v0._countAndFlagsBits = 0x6E207265746C6946;
  v0._object = 0xEB00000000656D61;
  v1._object = 0x800000010067B350;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 1701669204;
  v2._object = 0xE400000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v2, v0)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.priorities.getter()
{
  v0._countAndFlagsBits = 0x797469726F697250;
  v1._countAndFlagsBits = 0x6E207265746C6946;
  v1._object = 0xEB00000000656D61;
  v2._object = 0x800000010067AFB0;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0xE800000000000000;
  return TTRLocalizedString(_:value:comment:)(v2, v0, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.location.getter()
{
  v0._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v1._countAndFlagsBits = 0x6E207265746C6946;
  v1._object = 0xEB00000000656D61;
  v2._object = 0x800000010067AB40;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0xE800000000000000;
  return TTRLocalizedString(_:value:comment:)(v2, v0, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.lists.getter()
{
  v0._countAndFlagsBits = 0x737473694CLL;
  v1._countAndFlagsBits = 0x6E207265746C6946;
  v1._object = 0xEB00000000656D61;
  v2._object = 0x800000010067AC70;
  v2._countAndFlagsBits = 0xD000000000000018;
  v0._object = 0xE500000000000000;
  return TTRLocalizedString(_:value:comment:)(v2, v0, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.includedFiltersMessage.getter()
{
  v0._countAndFlagsBits = 0xD000000000000045;
  v0._object = 0x800000010067B450;
  v1._object = 0x800000010067B4A0;
  v2._countAndFlagsBits = 0xD000000000000194;
  v2._object = 0x800000010067B4F0;
  v1._countAndFlagsBits = 0xD000000000000044;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.enabledFiltersSectionTitle.getter()
{
  v0._countAndFlagsBits = 0x2064656C62616E45;
  v0._object = 0xEF737265746C6946;
  v1._object = 0x800000010067AC90;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x800000010067ACC0;
  v1._countAndFlagsBits = 0xD000000000000029;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.makeIntoGroceryListSubtitle.getter()
{
  v0._object = 0x800000010067E760;
  v1._countAndFlagsBits = 0xD000000000000034;
  v1._object = 0x800000010067E790;
  v2._countAndFlagsBits = 0xD000000000000030;
  v2._object = 0x800000010067E7D0;
  v0._countAndFlagsBits = 0xD00000000000002BLL;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.makeIntoSmartListSubtitle.getter()
{
  v0._countAndFlagsBits = 0xD000000000000029;
  v0._object = 0x800000010067E6D0;
  v1._object = 0x800000010067E700;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x800000010067E730;
  v1._countAndFlagsBits = 0xD000000000000026;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionsRelativeRangeOrder.getter()
{
  v0._countAndFlagsBits = 0xD000000000000050;
  v0._object = 0x8000000100681460;
  v1._object = 0x80000001006814C0;
  v2._countAndFlagsBits = 0xD000000000000201;
  v2._object = 0x80000001006814E0;
  v1._countAndFlagsBits = 0xD000000000000019;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.newListTitle.getter()
{
  v0._countAndFlagsBits = 0x7473694C2077654ELL;
  v1._object = 0x8000000100682BE0;
  v2._object = 0x8000000100682C00;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v0._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.templatesTab.getter()
{
  v0._countAndFlagsBits = 0x6574616C706D6554;
  v1._object = 0x8000000100683020;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x80000001006737F0;
  v1._countAndFlagsBits = 0xD000000000000019;
  v0._object = 0xE900000000000073;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.filterOperatorChanged.getter()
{
  v0._countAndFlagsBits = 0xD00000000000002ELL;
  v0._object = 0x80000001006852C0;
  v1._object = 0x80000001006852F0;
  v2._countAndFlagsBits = 0xD000000000000042;
  v2._object = 0x8000000100685310;
  v1._countAndFlagsBits = 0xD000000000000016;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.dateChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x8000000100684E30;
  v1._object = 0x8000000100684E60;
  v2._countAndFlagsBits = 0xD000000000000037;
  v2._object = 0x8000000100684E80;
  v1._countAndFlagsBits = 0xD000000000000012;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.timeChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x80000001006851F0;
  v1._object = 0x8000000100685220;
  v2._countAndFlagsBits = 0xD000000000000037;
  v2._object = 0x8000000100685240;
  v1._countAndFlagsBits = 0xD000000000000012;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.prioritiesChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000029;
  v0._object = 0x80000001006850B0;
  v1._object = 0x80000001006850E0;
  v2._countAndFlagsBits = 0xD00000000000003DLL;
  v2._object = 0x8000000100685100;
  v1._countAndFlagsBits = 0xD000000000000018;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.flaggedChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000026;
  v0._object = 0x8000000100685160;
  v1._object = 0x8000000100685190;
  v2._countAndFlagsBits = 0xD00000000000003ALL;
  v2._object = 0x80000001006851B0;
  v1._countAndFlagsBits = 0xD000000000000015;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.locationChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000027;
  v0._object = 0x8000000100684F20;
  v1._object = 0x8000000100684F50;
  v2._countAndFlagsBits = 0xD00000000000003BLL;
  v2._object = 0x8000000100684F70;
  v1._countAndFlagsBits = 0xD000000000000016;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.hashtagsChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x8000000100684CC0;
  v1._object = 0x8000000100684CF0;
  v2._countAndFlagsBits = 0xD000000000000037;
  v2._object = 0x8000000100684D10;
  v1._countAndFlagsBits = 0xD000000000000012;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.listsChanged.getter()
{
  v0._countAndFlagsBits = 0xD000000000000025;
  v0._object = 0x8000000100684FF0;
  v1._object = 0x8000000100685020;
  v2._countAndFlagsBits = 0xD000000000000039;
  v2._object = 0x8000000100685040;
  v1._countAndFlagsBits = 0xD000000000000012;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.smartListHiddenTitle.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x8000000100684BF0;
  v1._object = 0x8000000100684C20;
  v2._countAndFlagsBits = 0xD00000000000003BLL;
  v2._object = 0x8000000100684C50;
  v1._countAndFlagsBits = 0xD000000000000021;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.UndoAction.addTag.getter()
{
  v0._countAndFlagsBits = 0x67615420646441;
  v1._object = 0x8000000100684D70;
  v2._countAndFlagsBits = 0xD000000000000036;
  v2._object = 0x8000000100684D90;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.listInfoTitle.getter()
{
  v0._countAndFlagsBits = 0x666E49207473694CLL;
  v1._object = 0x8000000100685AC0;
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x8000000100685AE0;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0xE90000000000006FLL;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.listTypeTitle.getter()
{
  v0._countAndFlagsBits = 0x707954207473694CLL;
  v1._object = 0x8000000100685B10;
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x8000000100685B30;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0xE900000000000065;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.manageSmartListTitle.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x8000000100685B60;
  v1._object = 0x8000000100685B90;
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x8000000100685BB0;
  v1._countAndFlagsBits = 0xD000000000000011;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.smartListInfoTitle.getter()
{
  v0._countAndFlagsBits = 0x694C207472616D53;
  v0._object = 0xEF6F666E49207473;
  v1._object = 0x8000000100685BE0;
  v2._countAndFlagsBits = 0xD000000000000026;
  v2._object = 0x8000000100685C10;
  v1._countAndFlagsBits = 0xD000000000000021;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.makeIntoSmartListTitle.getter()
{
  v0._countAndFlagsBits = 0xD000000000000026;
  v0._object = 0x8000000100685C40;
  v1._object = 0x8000000100685C70;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x8000000100685C90;
  v1._countAndFlagsBits = 0xD000000000000014;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.newSmartListTitle.getter()
{
  v0._countAndFlagsBits = 0x72616D532077654ELL;
  v0._object = 0xEE007473694C2074;
  v1._object = 0x8000000100685CC0;
  v2._object = 0x8000000100685CF0;
  v1._countAndFlagsBits = 0xD000000000000020;
  v2._countAndFlagsBits = 0xD000000000000020;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.templateInfoTitle.getter()
{
  v0._countAndFlagsBits = 0x6574616C706D6554;
  v0._object = 0xED00006F666E4920;
  v1._object = 0x8000000100685D20;
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x8000000100685D40;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateRangeFromLabel.getter()
{
  v0._object = 0x80000001006890D0;
  v1._countAndFlagsBits = 0xD000000000000030;
  v1._object = 0x80000001006890F0;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 1836020294;
  v2._object = 0xE400000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateRangeToLabel.getter()
{
  v0._object = 0x8000000100689130;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  v1._object = 0x8000000100689150;
  v0._countAndFlagsBits = 0xD000000000000019;
  v2._countAndFlagsBits = 28500;
  v2._object = 0xE200000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.anyIncludedFiltersOption.getter()
{
  v0._object = 0x800000010067B370;
  v1._countAndFlagsBits = 0xD000000000000045;
  v1._object = 0x800000010067B390;
  v0._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 7958113;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.allIncludedFiltersOption.getter()
{
  v0._object = 0x800000010067B3E0;
  v1._countAndFlagsBits = 0xD000000000000044;
  v1._object = 0x800000010067B400;
  v0._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 7105633;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.hashtagOptionOff.getter()
{
  v0._object = 0x800000010067A3B0;
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x800000010067A3D0;
  v0._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.hashtagOptionAny.getter()
{
  v0._countAndFlagsBits = 0x67615420796E41;
  v1._object = 0x800000010067A400;
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x800000010067A420;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.hashtagOptionAnySelected.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x800000010067A450;
  v1._object = 0x800000010067A480;
  v2._countAndFlagsBits = 0xD000000000000037;
  v2._object = 0x800000010067A4A0;
  v1._countAndFlagsBits = 0xD000000000000011;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.hashtagOptionAllSelected.getter()
{
  v0._countAndFlagsBits = 0xD000000000000023;
  v0._object = 0x800000010067A4E0;
  v1._object = 0x800000010067A510;
  v2._countAndFlagsBits = 0xD000000000000037;
  v2._object = 0x800000010067A530;
  v1._countAndFlagsBits = 0xD000000000000011;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.hashtagOptionUntagged.getter()
{
  v0._countAndFlagsBits = 0x73676154206F4ELL;
  v1._object = 0x800000010067A570;
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x800000010067A590;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionOff.getter()
{
  v0._object = 0x800000010067A610;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v1._object = 0x800000010067A630;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionAny.getter()
{
  v0._object = 0x800000010067A660;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v1._object = 0x800000010067A680;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 7958081;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionToday.getter()
{
  v0._countAndFlagsBits = 0x7961646F54;
  v1._object = 0x800000010067A6B0;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x800000010067A6D0;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v0._object = 0xE500000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionOnDate.getter()
{
  v0._countAndFlagsBits = 0x7461442061206E4FLL;
  v1._object = 0x800000010067A700;
  v2._countAndFlagsBits = 0xD000000000000030;
  v2._object = 0x800000010067A720;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0xE900000000000065;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionBeforeDate.getter()
{
  v0._countAndFlagsBits = 0x612065726F666542;
  v0._object = 0xED00006574614420;
  v1._object = 0x800000010067A760;
  v2._countAndFlagsBits = 0xD000000000000034;
  v2._object = 0x800000010067A790;
  v1._countAndFlagsBits = 0xD000000000000023;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionAfterDate.getter()
{
  v0._countAndFlagsBits = 0x2061207265746641;
  v0._object = 0xEC00000065746144;
  v1._object = 0x800000010067A7D0;
  v2._countAndFlagsBits = 0xD000000000000033;
  v2._object = 0x800000010067A800;
  v1._countAndFlagsBits = 0xD000000000000022;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionSpecifiedRange.getter()
{
  v0._countAndFlagsBits = 0x6569666963657053;
  v0._object = 0xEF65676E61522064;
  v1._object = 0x800000010067A840;
  v2._countAndFlagsBits = 0xD000000000000036;
  v2._object = 0x800000010067A870;
  v1._countAndFlagsBits = 0xD000000000000027;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionRelativeRange.getter()
{
  v0._countAndFlagsBits = 0x65766974616C6552;
  v0._object = 0xEE0065676E615220;
  v1._object = 0x800000010067A8B0;
  v2._countAndFlagsBits = 0xD000000000000035;
  v2._object = 0x800000010067A8E0;
  v1._countAndFlagsBits = 0xD000000000000026;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.dateOptionNoDate.getter()
{
  v0._countAndFlagsBits = 0x65746144206F4ELL;
  v1._object = 0x800000010067A920;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x800000010067A940;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionOff.getter()
{
  v0._object = 0x800000010067B100;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v1._object = 0x800000010067B120;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionAny.getter()
{
  v0._object = 0x800000010067B150;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v1._object = 0x800000010067B170;
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 7958081;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionMorning.getter()
{
  v0._countAndFlagsBits = 0x676E696E726F4DLL;
  v1._object = 0x800000010067B1A0;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x800000010067B1C0;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionAfternoon.getter()
{
  v0._countAndFlagsBits = 0x6F6F6E7265746641;
  v1._object = 0x800000010067B1F0;
  v2._countAndFlagsBits = 0xD000000000000030;
  v2._object = 0x800000010067B220;
  v1._countAndFlagsBits = 0xD000000000000021;
  v0._object = 0xE90000000000006ELL;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionEvening.getter()
{
  v0._countAndFlagsBits = 0x676E696E657645;
  v1._object = 0x800000010067B260;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x800000010067B280;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionNight.getter()
{
  v0._countAndFlagsBits = 0x746867694ELL;
  v1._object = 0x800000010067B2B0;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x800000010067B2D0;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v0._object = 0xE500000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.timeOptionNoTime.getter()
{
  v0._countAndFlagsBits = 0x656D6954206F4ELL;
  v1._object = 0x800000010067B300;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x800000010067B320;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.prioritiesOptionOff.getter()
{
  v0._object = 0x800000010067AD10;
  v1._countAndFlagsBits = 0xD000000000000030;
  v1._object = 0x800000010067AD40;
  v0._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.prioritiesOptionAny.getter()
{
  v0._object = 0x800000010067AD80;
  v1._countAndFlagsBits = 0xD000000000000030;
  v1._object = 0x800000010067ADB0;
  v0._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 7958081;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.prioritiesOptionLow.getter()
{
  v0._object = 0x800000010067ADF0;
  v1._countAndFlagsBits = 0xD000000000000030;
  v1._object = 0x800000010067AE20;
  v0._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 7827276;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.prioritiesOptionMedium.getter()
{
  v0._countAndFlagsBits = 0x6D756964654DLL;
  v1._object = 0x800000010067AE60;
  v2._countAndFlagsBits = 0xD000000000000033;
  v2._object = 0x800000010067AE90;
  v1._countAndFlagsBits = 0xD000000000000024;
  v0._object = 0xE600000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.prioritiesOptionHigh.getter()
{
  v0._object = 0x800000010067AED0;
  v1._countAndFlagsBits = 0xD000000000000031;
  v1._object = 0x800000010067AF00;
  v0._countAndFlagsBits = 0xD000000000000022;
  v2._countAndFlagsBits = 1751607624;
  v2._object = 0xE400000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.prioritiesOptionNoPriority.getter()
{
  v0._countAndFlagsBits = 0x726F697250206F4ELL;
  v0._object = 0xEB00000000797469;
  v1._object = 0x800000010067AF40;
  v2._countAndFlagsBits = 0xD000000000000038;
  v2._object = 0x800000010067AF70;
  v1._countAndFlagsBits = 0xD000000000000029;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.flaggedOptionOff.getter()
{
  v0._object = 0x800000010067AFD0;
  v1._countAndFlagsBits = 0xD00000000000002DLL;
  v1._object = 0x800000010067AFF0;
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.flaggedOptionFlagged.getter()
{
  v0._countAndFlagsBits = 0x64656767616C46;
  v1._object = 0x800000010067B020;
  v2._countAndFlagsBits = 0xD000000000000031;
  v2._object = 0x800000010067B050;
  v1._countAndFlagsBits = 0xD000000000000022;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.flaggedOptionNotFlagged.getter()
{
  v0._countAndFlagsBits = 0x67616C4620746F4ELL;
  v0._object = 0xEB00000000646567;
  v1._object = 0x800000010067B090;
  v2._countAndFlagsBits = 0xD000000000000035;
  v2._object = 0x800000010067B0C0;
  v1._countAndFlagsBits = 0xD000000000000026;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.locationOptionOff.getter()
{
  v0._object = 0x800000010067AA10;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  v1._object = 0x800000010067AA30;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.locationOptionSpecific.getter()
{
  v0._countAndFlagsBits = 0x6369666963657053;
  v1._object = 0x800000010067AA60;
  v2._countAndFlagsBits = 0xD000000000000033;
  v2._object = 0x800000010067AA90;
  v1._countAndFlagsBits = 0xD000000000000024;
  v0._object = 0xE800000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.locationOptionNoLocation.getter()
{
  v0._countAndFlagsBits = 0x7461636F4C206F4ELL;
  v0._object = 0xEB000000006E6F69;
  v1._object = 0x800000010067AAD0;
  v2._countAndFlagsBits = 0xD000000000000036;
  v2._object = 0x800000010067AB00;
  v1._countAndFlagsBits = 0xD000000000000027;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.listsOptionOff.getter()
{
  v0._object = 0x800000010067AB60;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x800000010067AB80;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(v0, v2, v1)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.listsOptionInclude.getter()
{
  v0._countAndFlagsBits = 0x6564756C636E49;
  v1._object = 0x800000010067ABB0;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v2._object = 0x800000010067ABE0;
  v1._countAndFlagsBits = 0xD000000000000020;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.listsOptionExclude.getter()
{
  v0._countAndFlagsBits = 0x6564756C637845;
  v1._object = 0x800000010067AC10;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v2._object = 0x800000010067AC40;
  v1._countAndFlagsBits = 0xD000000000000020;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.locationArriving.getter()
{
  v0._countAndFlagsBits = 0x676E697669727241;
  v1._object = 0x800000010068DA00;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x800000010068DA20;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v0._object = 0xE800000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.locationLeaving.getter()
{
  v0._countAndFlagsBits = 0x676E697661654CLL;
  v1._object = 0x800000010068DA50;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x800000010068DA70;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v0._object = 0xE700000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.newInfoTitle(name:)(uint64_t a1, uint64_t a2)
{
  v4._countAndFlagsBits = 0x9D80E240259C80E2;
  v4._object = 0xAD00006F666E4920;
  v5._object = 0x800000010068DAA0;
  v6._object = 0x800000010068DAC0;
  v5._countAndFlagsBits = 0xD000000000000016;
  v6._countAndFlagsBits = 0xD000000000000016;
  TTRLocalizedString(_:value:comment:)(v5, v4, v6);
  sub_100058000(&unk_100786CB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D400;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10005C390();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO031ConvertGroceryOrAutoCategorizede9ToRegularE5AlertO38keepExistingSectionConfirmationMessage10listLayout20shouldUseItemWordingSSAA012TTRReminderseU0O_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRRemindersListLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for TTRRemindersListLayout.list(_:))
  {
    if (a2)
    {
      v9 = 0xD000000000000085;
      v10 = 0x100000000000005ELL;
      v11 = 0x800000010068E6C0;
      v12 = 0x800000010068E720;
      return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
    }

    v13 = " delete any reminders.";
    v10 = 0x1000000000000066;
    v11 = 0x800000010068E5C0;
    goto LABEL_9;
  }

  if (v8 == enum case for TTRRemindersListLayout.columns(_:))
  {
    if (a2)
    {
      v9 = 0xD000000000000084;
      v11 = 0x800000010068E8A0;
      v12 = 0x800000010068E900;
      v10 = 0x1000000000000055;
      return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
    }

    v13 = "nders won’t be deleted.";
    v10 = 0x1000000000000059;
    v11 = 0x800000010068E7B0;
LABEL_9:
    v12 = v13 | 0x8000000000000000;
    v9 = 0xD00000000000008ELL;
    return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(uint64_t a1)
{
  sub_1005CE8A8();
  v2 = static NSBundle.remindersUICoreResource.getter();
  v9._object = 0x800000010068E9D0;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x800000010068E990;
  v4.value._object = 0x800000010068DF20;
  v5._countAndFlagsBits = 0xD000000000000012;
  v5._object = 0x800000010068E9B0;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  v4.value._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v9);

  sub_100058000(&unk_100786CB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D400;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO30dateOptionRelativeRangeDetailsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0()
{
  v0 = sub_100058000(&qword_100790FD8);
  __chkstk_darwin(v0);
  v2 = &v35 - v1;
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.direction.getter();
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.units.getter();
  v11 = *(v0 + 48);
  (*(v8 + 32))(v2, v10, v7);
  (*(v4 + 32))(&v2[v11], v6, v3);
  v12 = (*(v8 + 88))(v2, v7);
  if (v12 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:))
  {
    v13 = (*(v4 + 88))(&v2[v11], v3);
    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v14 = "In the Past %d Hours";
LABEL_7:
      v16 = v14 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000011;
      v34 = 0x800000010068DF40;
      v19 = v16 | 0x8000000000000000;
      v20 = 0x800000010068DF20;
      v21 = v16 | 0x8000000000000000;
      v22 = 0xD000000000000022;
      v23 = 0xD000000000000014;
      v24.super.isa = v17;
      v25 = 0xD000000000000014;
LABEL_13:
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, *&v18, v24, *&v25, *&v22);

      sub_100058000(&unk_100786CB0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10062D400;
      v29 = REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.magnitude.getter();
      *(v28 + 56) = &type metadata for Int;
      *(v28 + 64) = &protocol witness table for Int;
      *(v28 + 32) = v29;
      v30 = static String.localizedStringWithFormat(_:_:)();

      return v30;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
    {
      v26 = "In the Past %d Days";
LABEL_12:
      v27 = v26 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000011;
      v23 = 0xD000000000000013;
      v34 = 0x800000010068DF40;
      v19 = v27 | 0x8000000000000000;
      v20 = 0x800000010068DF20;
      v21 = v27 | 0x8000000000000000;
      v22 = 0xD000000000000022;
      v24.super.isa = v17;
      v25 = 0xD000000000000013;
      goto LABEL_13;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
    {
      v14 = "In the Past %d Weeks";
      goto LABEL_7;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
    {
      v32 = "In the Past %d Months";
LABEL_22:
      v33 = v32 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000011;
      v34 = 0x800000010068DF40;
      v23 = 0xD000000000000015;
      v19 = v33 | 0x8000000000000000;
      v20 = 0x800000010068DF20;
      v25 = 0xD000000000000015;
      v21 = v33 | 0x8000000000000000;
      v22 = 0xD000000000000022;
      v24.super.isa = v17;
      goto LABEL_13;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
    {
      v14 = "In the Past %d Years";
      goto LABEL_7;
    }
  }

  else if (v12 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:))
  {
    v15 = (*(v4 + 88))(&v2[v11], v3);
    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v14 = "In the Next %d Hours";
      goto LABEL_7;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
    {
      v26 = "In the Next %d Days";
      goto LABEL_12;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
    {
      v14 = "In the Next %d Weeks";
      goto LABEL_7;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
    {
      v32 = "In the Next %d Months";
      goto LABEL_22;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
    {
      v14 = "In the Next %d Years";
      goto LABEL_7;
    }
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO05smartE14VersionWarningSo18NSAttributedStringCvgZ_0()
{
  v0._object = 0x800000010068E480;
  v1._object = 0x800000010068E4D0;
  v0._countAndFlagsBits = 0x1000000000000047;
  v1._countAndFlagsBits = 0xD000000000000056;
  TTRLocalizedString(_:comment:)(v0, v1);
  v2._countAndFlagsBits = 0x6F6D206E7261654CLL;
  v2._object = 0xAD0000A680E26572;
  v3._countAndFlagsBits = 0x100000000000008ELL;
  v3._object = 0x800000010068E530;
  v4 = TTRLocalizedString(_:comment:)(v2, v3);
  v5 = objc_allocWithZone(NSMutableAttributedString);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithString:v6];

  v12 = String.nsRange(of:)(v4);
  location = v12.value.location;
  length = v12.value.length;
  LOBYTE(v6) = v12.is_nil;

  if ((v6 & 1) == 0)
  {
    v10 = String._bridgeToObjectiveC()();
    [v7 addAttribute:NSLinkAttributeName value:v10 range:{location, length}];
  }

  return v7;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO32dateOptionRelativeRangeDirectionySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0()
{
  v0 = sub_100058000(&qword_100790FD8);
  __chkstk_darwin(v0);
  v2 = &v32 - v1;
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.direction.getter();
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.units.getter();
  v11 = *(v0 + 48);
  (*(v8 + 32))(v2, v10, v7);
  (*(v4 + 32))(&v2[v11], v6, v3);
  v12 = (*(v8 + 88))(v2, v7);
  if (v12 != enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:))
  {
    if (v12 != enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:))
    {
      goto LABEL_28;
    }

    v20 = (*(v4 + 88))(&v2[v11], v3);
    if (v20 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v21 = "LIST_DETAIL_DIRECTION_IN_THE_NEXT %d HOURS";
    }

    else
    {
      if (v20 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
      {
        v22 = "CTION_IN_THE_NEXT %d WEEKS";
        sub_1005CE8A8();
        v16 = static NSBundle.remindersUICoreResource.getter();
        v31 = 0x800000010068DF40;
        v17 = 0x4E20656874206E49;
        v19 = 0xD000000000000029;
        goto LABEL_14;
      }

      if (v20 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
      {
        v21 = "LIST_DETAIL_DIRECTION_IN_THE_NEXT %d WEEKS";
      }

      else
      {
        if (v20 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
        {
          sub_1005CE8A8();
          v16 = static NSBundle.remindersUICoreResource.getter();
          v31 = 0x800000010068DF40;
          v17 = 0x4E20656874206E49;
          v19 = 0xD00000000000002BLL;
          v23 = 0x800000010068E3C0;
          v24 = 0xD000000000000027;
          v25 = 0x800000010068E0C0;
          v18 = 0xEB00000000747865;
          goto LABEL_15;
        }

        if (v20 != enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
        {
          goto LABEL_28;
        }

        v21 = "LIST_DETAIL_DIRECTION_IN_THE_NEXT %d YEARS";
      }
    }

    v22 = (v21 - 32);
    sub_1005CE8A8();
    v16 = static NSBundle.remindersUICoreResource.getter();
    v31 = 0x800000010068DF40;
    v17 = 0x4E20656874206E49;
    v19 = 0xD00000000000002ALL;
LABEL_14:
    v23 = v22 | 0x8000000000000000;
    v24 = 0xD000000000000027;
    v25 = 0x800000010068E0C0;
    v18 = 0xEB00000000747865;
    goto LABEL_15;
  }

  v13 = (*(v4 + 88))(&v2[v11], v3);
  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
  {
    v14 = "LIST_DETAIL_DIRECTION_IN_THE_PAST %d HOURS";
LABEL_4:
    v15 = (v14 - 32);
    sub_1005CE8A8();
    v16 = static NSBundle.remindersUICoreResource.getter();
    v31 = 0x800000010068DF40;
    v17 = 0x5020656874206E49;
    v18 = 0xEB00000000747361;
    v19 = 0xD00000000000002ALL;
LABEL_11:
    v23 = v15 | 0x8000000000000000;
    v24 = 0xD000000000000027;
    v25 = 0x800000010068E0C0;
LABEL_15:
    v26 = 0xD000000000000022;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v19, *&v24, v16, *&v17, *(&v31 - 1));

    sub_100058000(&unk_100786CB0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10062D400;
    v28 = REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.magnitude.getter();
    *(v27 + 56) = &type metadata for Int;
    *(v27 + 64) = &protocol witness table for Int;
    *(v27 + 32) = v28;
    v29 = static String.localizedStringWithFormat(_:_:)();

    return v29;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
  {
    v15 = "CTION_IN_THE_PAST %d WEEKS";
    sub_1005CE8A8();
    v16 = static NSBundle.remindersUICoreResource.getter();
    v31 = 0x800000010068DF40;
    v17 = 0x5020656874206E49;
    v18 = 0xEB00000000747361;
    v19 = 0xD000000000000029;
    goto LABEL_11;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
  {
    v14 = "LIST_DETAIL_DIRECTION_IN_THE_PAST %d WEEKS";
    goto LABEL_4;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
  {
    v15 = "CTION_IN_THE_PAST %d YEARS";
    sub_1005CE8A8();
    v16 = static NSBundle.remindersUICoreResource.getter();
    v31 = 0x800000010068DF40;
    v17 = 0x5020656874206E49;
    v18 = 0xEB00000000747361;
    v19 = 0xD00000000000002BLL;
    goto LABEL_11;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
  {
    v14 = "LIST_DETAIL_DIRECTION_IN_THE_PAST %d YEARS";
    goto LABEL_4;
  }

LABEL_28:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO28dateOptionRelativeRangeUnitsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0()
{
  v0 = sub_100058000(&qword_100790FD8);
  __chkstk_darwin(v0);
  v2 = &v38 - v1;
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.direction.getter();
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.units.getter();
  v11 = *(v0 + 48);
  (*(v8 + 32))(v2, v10, v7);
  (*(v4 + 32))(&v2[v11], v6, v3);
  v12 = (*(v8 + 88))(v2, v7);
  if (v12 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:))
  {
    v13 = (*(v4 + 88))(&v2[v11], v3);
    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v14 = "LIST_DETAIL_UNITS_IN_THE_PAST %d HOURS";
LABEL_7:
      v16 = v14 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000022;
      v19 = 0xD000000000000026;
      v37 = 0x800000010068DF40;
      v20 = 1920298824;
LABEL_8:
      v21 = v20 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      v22 = v16 | 0x8000000000000000;
      v23 = 0x800000010068E0C0;
      v24 = 0xD000000000000027;
      v25.super.isa = v17;
      v26 = 0xE500000000000000;
LABEL_14:
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v19, *&v24, v25, *&v21, *&v18);

      sub_100058000(&unk_100786CB0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10062D400;
      v30 = REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.magnitude.getter();
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      *(v29 + 32) = v30;
      v31 = static String.localizedStringWithFormat(_:_:)();

      return v31;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
    {
      v27 = "LIST_DETAIL_UNITS_IN_THE_PAST %d DAYS";
LABEL_13:
      v28 = v27 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000022;
      v19 = 0xD000000000000025;
      v37 = 0x800000010068DF40;
      v22 = v28 | 0x8000000000000000;
      v23 = 0x800000010068E0C0;
      v24 = 0xD000000000000027;
      v25.super.isa = v17;
      v21 = 1937334596;
      v26 = 0xE400000000000000;
      goto LABEL_14;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
    {
      v33 = "LIST_DETAIL_UNITS_IN_THE_PAST %d WEEKS";
LABEL_19:
      v16 = v33 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000022;
      v19 = 0xD000000000000026;
      v37 = 0x800000010068DF40;
      v20 = 1801807191;
      goto LABEL_8;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
    {
      v34 = "LIST_DETAIL_UNITS_IN_THE_PAST %d MONTHS";
LABEL_24:
      v35 = v34 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000022;
      v37 = 0x800000010068DF40;
      v21 = 0x7368746E6F4DLL;
      v22 = v35 | 0x8000000000000000;
      v23 = 0x800000010068E0C0;
      v19 = 0xD000000000000027;
      v24 = 0xD000000000000027;
      v25.super.isa = v17;
      v26 = 0xE600000000000000;
      goto LABEL_14;
    }

    if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
    {
      v36 = "LIST_DETAIL_UNITS_IN_THE_PAST %d YEARS";
LABEL_29:
      v16 = v36 - 32;
      sub_1005CE8A8();
      v17 = static NSBundle.remindersUICoreResource.getter();
      v18 = 0xD000000000000022;
      v19 = 0xD000000000000026;
      v37 = 0x800000010068DF40;
      v20 = 1918985561;
      goto LABEL_8;
    }
  }

  else if (v12 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:))
  {
    v15 = (*(v4 + 88))(&v2[v11], v3);
    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v14 = "LIST_DETAIL_UNITS_IN_THE_NEXT %d HOURS";
      goto LABEL_7;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
    {
      v27 = "LIST_DETAIL_UNITS_IN_THE_NEXT %d DAYS";
      goto LABEL_13;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
    {
      v33 = "LIST_DETAIL_UNITS_IN_THE_NEXT %d WEEKS";
      goto LABEL_19;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
    {
      v34 = "LIST_DETAIL_UNITS_IN_THE_NEXT %d MONTHS";
      goto LABEL_24;
    }

    if (v15 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
    {
      v36 = "LIST_DETAIL_UNITS_IN_THE_NEXT %d YEARS";
      goto LABEL_29;
    }
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO05smartE21HiddenInformativeText7devicesSSSaySS4name_Sb15cannotBeUpdatedtG_tFZ_0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1004A1CD0(0, v2, 0);
    v35 = v1;
    v3 = (v1 + 48);
    v34 = v2;
    v4 = v2;
    do
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;

      if (v7 == 1)
      {
        v8._object = 0x800000010068DE50;
        v9._countAndFlagsBits = 0xD000000000000060;
        v9._object = 0x800000010068DE90;
        v8._countAndFlagsBits = 0xD00000000000003CLL;
        v10._countAndFlagsBits = 2768933;
        v10._object = 0xE300000000000000;
        TTRLocalizedString(_:value:comment:)(v8, v10, v9);
        sub_100058000(&unk_100786CB0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_10062D400;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 64) = sub_10005C390();
        *(v11 + 32) = v6;
        *(v11 + 40) = v5;

        v6 = static String.localizedStringWithFormat(_:_:)();
        v13 = v12;

        v5 = v13;
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1004A1CD0((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = &_swiftEmptyArrayStorage[2 * v15];
      v17[4] = v6;
      v17[5] = v5;
      v3 += 24;
      --v4;
    }

    while (v4);
    v2 = v34;
    v1 = v35;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage[2];
  }

  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21 = (v1 + 48);
  v22 = v2 + 1;
  while (--v22)
  {
    v23 = *v21;
    v21 += 24;
    if (v23 == 1)
    {
      if (v16 == 1)
      {
        v24 = "ANNOT_BE_UPDATED_SINGULAR";
        v25 = 0xD000000000000049;
        v26 = 0x800000010068DC10;
        v27 = 0x1000000000000087;
      }

      else
      {
        v24 = "ANNOT_BE_UPDATED_PLURAL";
        v25 = 0xD000000000000047;
        v26 = 0x800000010068DAE0;
        v27 = 0x1000000000000088;
      }

      v28 = v24 | 0x8000000000000000;
      goto LABEL_20;
    }
  }

  if (v16 == 1)
  {
    v25 = 0xD000000000000037;
    v26 = 0x800000010068DDA0;
    v28 = 0x800000010068DDE0;
    v29 = 0x800000010068DBC0;
    v27 = 0x1000000000000068;
    goto LABEL_21;
  }

  v25 = 0xD000000000000035;
  v26 = 0x800000010068DCF0;
  v27 = 0x1000000000000069;
  v28 = 0x800000010068DD30;
LABEL_20:
  v29 = 0x800000010068DBC0;
LABEL_21:
  v30 = 0xD000000000000046;
  TTRLocalizedString(_:value:comment:)(*&v25, *&v27, *(&v29 - 1));
  sub_100058000(&unk_100786CB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10062D400;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_10005C390();
  *(v31 + 32) = v18;
  *(v31 + 40) = v20;
  v32 = static String.localizedStringWithFormat(_:_:)();

  return v32;
}

unint64_t sub_1005CE8A8()
{
  result = qword_100790FE0;
  if (!qword_100790FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100790FE0);
  }

  return result;
}

uint64_t type metadata accessor for TTRIListDetailEmblemsContent()
{
  result = qword_100791008;
  if (!qword_100791008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005CE9A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v7 && (v5 == *(a2 + 16) && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1005CEA38(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_gridView);
  v3 = [v2 subviews];
  sub_100003540(0, &qword_10076B020);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      sub_1005CEBF0(v1);
    }

    TTRITableCellContent.state.getter();

    v6 = (v2 + qword_10077C3C8);
    *v6 = v13;
    v6[8] = v14;
    v7 = sub_1003067E4();
    v2 = v7;
    if (v7 >> 62)
    {
      break;
    }

    v1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v2 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      dispatch thunk of TTRListBadgeView.selected.setter();

      if (v11 == v1)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v1 = _CocoaArrayWrapper.endIndex.getter();
  if (v1)
  {
    goto LABEL_7;
  }
}

void sub_1005CEBF0(uint64_t a1)
{
  v29 = [objc_opt_self() quaternarySystemFillColor];
  v28 = static TTRCommonAsset.Color.emblemPickerForeground.getter();
  v3 = *(a1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeView);
  v26 = OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeView;
  *(a1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeView) = 0;

  v4 = a1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeViewIndex;
  *v4 = 0;
  v25 = v4;
  *(v4 + 8) = 1;
  v5 = *(v1 + qword_100790FF8);
  v6 = *(v5 + 16);
  if (v6)
  {

    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = 0;
    v31 = v5;
    v32 = *(v5 + 16);
    v27 = a1;
    v30 = *(a1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_gridView);
    v8 = (v5 + 56);
    while (v32 != v7)
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(v8 - 3);
      v10 = *v8;
      v11 = objc_allocWithZone(type metadata accessor for TTRListBadgeView());
      v12 = v10;
      v13 = v9;

      v14 = [v11 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v15 = v14;
      if (v10)
      {
        v16 = v14;
        v17 = v29;
      }

      else
      {
        sub_100003540(0, &qword_100772610);
        v18 = v15;
        v17 = static UIColor.emojiBadgeSelectionBackgroundColor.getter();
      }

      v19 = v17;
      [v15 setTintColor:v17];

      if (v10)
      {
        v20 = v28;
      }

      else
      {
        sub_100003540(0, &qword_100772610);
        static UIColor.emojiBadgeHighlightColor.getter();
      }

      dispatch thunk of TTRListBadgeView.imageColor.setter();
      v21 = v13;
      dispatch thunk of TTRListBadgeView.image.setter();

      dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
      dispatch thunk of TTRListBadgeView.ttrAccessibilityShouldIgnoreTintColorValue.setter();
      TTRListBadgeView.enableCursorInteraction()();
      TTRListBadgeView.enableHoverEffectIfApplicable(padding:)();
      type metadata accessor for TTRListAppearanceBadgeGridView();
      sub_1005D0AE0();
      v22 = v30;
      dispatch thunk of TTRListBadgeView.accessibilityDelegate.setter();
      if (!v10)
      {
        v23 = *(v27 + v26);
        *(v27 + v26) = v15;
        v24 = v15;

        *v25 = v7;
        *(v25 + 8) = 0;
      }

      ++v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 4;
      v5 = v31;
      if (v6 == v7)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    if (!(_swiftEmptyArrayStorage >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100003540(0, &qword_10076B020);
      goto LABEL_17;
    }
  }

  sub_100003540(0, &qword_10076B020);

  _bridgeCocoaArray<A>(_:)();

LABEL_17:

  dispatch thunk of TTRListAppearanceGridView.arrangedSubviews.setter();
}

uint64_t sub_1005CEFD8()
{
  sub_10008E7F0(*(v0 + qword_100790FF0), *(v0 + qword_100790FF0 + 8));

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_1005CF02C(uint64_t a1)
{
  sub_10008E7F0(*(a1 + qword_100790FF0), *(a1 + qword_100790FF0 + 8));

  return swift_unknownObjectWeakDestroy();
}

void sub_1005CF08C()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id sub_1005CF0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeView] = 0;
  v8 = &v3[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeViewIndex];
  *v8 = 0;
  v8[8] = 1;
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiWasSelected] = 0;
  v9 = [objc_allocWithZone(type metadata accessor for TTRListAppearanceBadgeGridView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  dispatch thunk of TTRListAppearanceGridView.badgeSize.setter();
  dispatch thunk of TTRListAppearanceGridView.horizontalMargins.setter();
  dispatch thunk of TTRListAppearanceGridView.topMargin.setter();
  dispatch thunk of TTRListAppearanceGridView.minimumGap.setter();
  v10 = v9;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_gridView] = v10;
  v11 = v10;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v40.receiver = v4;
  v40.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v40, "initWithStyle:reuseIdentifier:", a1, v12);

  *&v10[qword_10077C3C0 + 8] = &off_100731FB0;
  swift_unknownObjectWeakAssign();
  v14 = v13;
  v15 = [v14 contentView];
  [v15 addSubview:v10];

  v16 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10062D450;
  v18 = [v14 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v10 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v17 + 32) = v21;
  v22 = [v14 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v10 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v17 + 40) = v25;
  v26 = [v14 contentView];
  v27 = [v26 topAnchor];

  v28 = [v10 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v17 + 48) = v29;
  v30 = [v14 contentView];

  v31 = [v30 bottomAnchor];
  v32 = [v10 bottomAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v17 + 56) = v33;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  v35 = v10;
  [v35 setAccessibilityContainerType:4];
  v36._countAndFlagsBits = 0x736E6F6349;
  v37._object = 0x800000010068EBE0;
  v36._object = 0xE500000000000000;
  v37._countAndFlagsBits = 0xD000000000000040;
  TTRLocalizedString(_:comment:)(v36, v37);
  v38 = String._bridgeToObjectiveC()();

  [v35 setAccessibilityLabel:v38];

  return v14;
}

id sub_1005CF67C()
{
  v1 = OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField);
  }

  else
  {
    v4 = sub_1005CF6E0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1005CF6E0(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRelease();
  }

  else
  {
    Strong = 0;
  }

  v3 = [objc_allocWithZone(type metadata accessor for EmojiTextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setDelegate:a1];
  if (Strong)
  {
    [Strong addSubview:v3];
  }

  [v3 setKeyboardType:124];
  [v3 setBorderStyle:0];
  v4 = v3;
  [v4 setAlpha:0.0];
  [v4 setBackgroundColor:0];

  [v4 setForceDisableDictation:1];
  [v4 setTextAlignment:1];

  return v4;
}

void sub_1005CF82C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRelease();
    if (Strong)
    {
      *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiWasSelected) = 0;
      v2 = swift_unknownObjectWeakLoadStrong();
      if (!v2)
      {
        v2 = sub_1005CF9CC(Strong, v0);
      }

      v3 = sub_1005CF67C();
      [Strong insertSubview:v3 belowSubview:v2];

      v4 = OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField;
      [*(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField) setHidden:0];
      sub_1005CFB54();
      v5 = *(v0 + v4);
      v6 = String._bridgeToObjectiveC()();
      [v5 setText:v6];

      v7 = *(v0 + v4);
      type metadata accessor for EmojiTextField();
      v8 = v7;
      UITextInput<>.ttrBeginEditing()();

      v9 = UIAccessibilityLayoutChangedNotification;
      v10 = TTRIAccessibilityKeyboardWindow();
      UIAccessibilityPostNotification(v9, v10);
    }
  }
}

id sub_1005CF9CC(void *a1, uint64_t a2)
{
  [a1 bounds];
  v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setBackgroundColor:0];
  v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a2 action:"cancelEmojiSelection"];
  [v8 addGestureRecognizer:v9];
  [a1 addSubview:v8];
  v10 = objc_opt_self();
  UIView.constraintsEqualTo(_:edges:)();
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];

  swift_unknownObjectWeakAssign();
  return v8;
}

void sub_1005CFB54()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListBadgeView.SelectionParams();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeView);
  if (v6)
  {
    v32 = v6;
    v7 = sub_1005CF67C();
    v8 = [v7 isHidden];

    if ((v8 & 1) != 0 || (v9 = OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField, (v10 = [*(v1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField) superview]) == 0))
    {
      v30 = v32;
    }

    else
    {
      v11 = v10;
      [v32 bounds];
      [v11 convertRect:v32 fromCoordinateSpace:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      dispatch thunk of TTRListBadgeView.selectionParams.getter();
      TTRListBadgeView.SelectionParams.borderSpacing.getter();
      v21 = v20;
      (*(v3 + 8))(v5, v2);
      v34.origin.x = v13;
      v34.origin.y = v15;
      v34.size.width = v17;
      v34.size.height = v19;
      v35 = CGRectInset(v34, -(v21 + 3.0), -(v21 + 3.0));
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      [*(v1 + v9) setFrame:?];
      v26 = *(v1 + v9);
      v27 = objc_opt_self();
      v28 = v26;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v29 = [v27 systemFontOfSize:round(CGRectGetHeight(v36))];
      [v28 setFont:v29];
    }
  }
}

uint64_t sub_1005CFDD8()
{
  v1 = sub_1005CF67C();
  [v1 resignFirstResponder];

  [*(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField) setHidden:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong removeFromSuperview];
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1005CFE70()
{
  sub_1005CFDD8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_gridView];
    v3 = [v2 subviews];
    sub_100003540(0, &qword_10076B020);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        sub_1005CEBF0(v0);
      }

      TTRITableCellContent.state.getter();

      v6 = (v2 + qword_10077C3C8);
      *v6 = v12;
      v6[8] = v13;
      v0 = v2;
      v7 = sub_1003067E4();
      v2 = v7;
      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
        if (!v8)
        {
LABEL_20:

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      v9 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v2 + 8 * v9 + 32);
        }

        v0 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        dispatch thunk of TTRListBadgeView.selected.setter();

        ++v9;
        if (v11 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIListDetailEmblemsContentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for TTRIListDetailEmblemsContentState(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t assignWithTake for TTRIListDetailEmblemsContentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIListDetailEmblemsContentState(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIListDetailEmblemsContentState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1005D04D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v7 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v5 + qword_100790FF0);
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectWeakInit();
  *(v5 + qword_100790FF8) = a5;
  swift_unknownObjectWeakAssign();
  (*(v8 + 104))(v10, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v7);
  return TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
}

void sub_1005D0624(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeViewIndex + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeViewIndex) != a1)
  {
    sub_1005CFDD8();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + qword_100790FF0);
      if (v4)
      {
        v5 = *(Strong + qword_100790FF0 + 8);

        v4(a1, 0, 0, 0);
        swift_unknownObjectRelease();

        sub_10008E7F0(v4, v5);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    sub_1005CF82C();
  }
}

void sub_1005D0744()
{
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeView) = 0;
  v1 = v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiBadgeViewIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell____lazy_storage___emojiTextField) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiWasSelected) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005D0808(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + qword_100790FF0);
      if (v8)
      {
        v9 = *(Strong + qword_100790FF0 + 8);

        v8(0, 1, a1, a2);
        swift_unknownObjectRelease();
        sub_10008E7F0(v8, v9);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    *(v2 + OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiWasSelected) = 1;
  }

  sub_1005CFDD8();
  return 1;
}

void sub_1005D08EC()
{
  if ((v0[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_emojiWasSelected] & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v1 = *&v0[OBJC_IVAR____TtC9Reminders30TTRIListDetailEmblemsTableCell_gridView];
    v2 = [v1 subviews];
    sub_100003540(0, &qword_10076B020);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        sub_1005CEBF0(v0);
      }

      TTRITableCellContent.state.getter();

      v5 = (v1 + qword_10077C3C8);
      *v5 = v11;
      v5[8] = v12;
      v0 = v1;
      v6 = sub_1003067E4();
      v1 = v6;
      if (v6 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
LABEL_21:

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_21;
        }
      }

      v8 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v9 = *(v1 + 8 * v8 + 32);
        }

        v0 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        dispatch thunk of TTRListBadgeView.selected.setter();

        ++v8;
        if (v10 == v7)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }
}

unint64_t sub_1005D0AE0()
{
  result = qword_1007910E0;
  if (!qword_1007910E0)
  {
    type metadata accessor for TTRListAppearanceBadgeGridView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007910E0);
  }

  return result;
}

uint64_t sub_1005D0B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  v31 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v29 = &v28 - v9;
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v34 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source(0);
  __chkstk_darwin(v34);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = _swiftEmptyArrayStorage;
  v15 = *(a3 + 16);
  v28 = a2;
  if (v15)
  {
    v16 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    swift_unknownObjectRetain();
    v18 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage;
    v33 = _swiftEmptyArrayStorage;
    do
    {
      sub_1005D1E80(v16, v14, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v33 = v35;
      }

      else
      {
        sub_1005D1EE8(v14, v11, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
        if (static TTRRemindersListViewModel.ItemID.== infix(_:_:)())
        {
          sub_1005D1E80(v11, v29, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_100547324(0, v19[2] + 1, 1, v19);
          }

          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            v19 = sub_100547324(v23 > 1, v24 + 1, 1, v19);
          }

          sub_1005D1F50(v11, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          v19[2] = v24 + 1;
          v20 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24;
          v21 = v29;
        }

        else
        {
          sub_1005D1E80(v11, v30, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100547324(0, v18[2] + 1, 1, v18);
          }

          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            v18 = sub_100547324(v25 > 1, v26 + 1, 1, v18);
          }

          sub_1005D1F50(v11, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          v18[2] = v26 + 1;
          v21 = v30;
          v20 = v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26;
        }

        sub_1005D1EE8(v21, v20, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
      }

      v16 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    swift_unknownObjectRetain();
    v33 = _swiftEmptyArrayStorage;
  }

  return v28;
}

uint64_t sub_1005D0F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRAdjustedIndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    sub_1005D15F4(a2);
    TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)();

    return (*(v7 + 8))(v9, v6);
  }

  if (v14 == enum case for TTRICollectionViewInsertAtIndexPathOption.before(_:))
  {
    (*(v11 + 96))(v13, v10);
    v16 = type metadata accessor for TTRUnadjustedIndexPath();
    return (*(*(v16 - 8) + 32))(a3, v13, v16);
  }

  if (v14 != enum case for TTRICollectionViewInsertAtIndexPathOption.after(_:))
  {
    goto LABEL_10;
  }

  (*(v11 + 96))(v13, v10);
  v17 = type metadata accessor for TTRUnadjustedIndexPath();
  (*(*(v17 - 8) + 32))(a3, v13, v17);
  v18 = TTRUnadjustedIndexPath.indexPath.modify();
  v19 = IndexPath.item.modify();
  if (__OFADD__(*v20, 1))
  {
    __break(1u);
LABEL_10:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  ++*v20;
  v19(v21, 0);
  return v18(v22, 0);
}

uint64_t sub_1005D12C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRUnadjustedIndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = type metadata accessor for TTRAdjustedIndexPath();
    return (*(*(v16 - 8) + 32))(a3, v14, v16);
  }

  if (v15 != enum case for TTRICollectionViewInsertAtIndexPathOption.before(_:))
  {
    if (v15 == enum case for TTRICollectionViewInsertAtIndexPathOption.after(_:))
    {
      (*(v11 + 96))(v14, v10);
      (*(v7 + 32))(v9, v14, v6);
      v18 = TTRUnadjustedIndexPath.indexPath.modify();
      v19 = IndexPath.item.modify();
      if (!__OFADD__(*v20, 1))
      {
        ++*v20;
        v19(v21, 0);
        v18(v22, 0);
        goto LABEL_8;
      }

      __break(1u);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v11 + 96))(v14, v10);
  (*(v7 + 32))(v9, v14, v6);
LABEL_8:
  sub_1005D15F4(a2);
  TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)();

  return (*(v7 + 8))(v9, v6);
}

void *sub_1005D15F4(uint64_t a1)
{
  v18 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_1004A1DB4(0, v9, 0);
    v10 = v19;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    v16 = v6 + 32;
    v17 = v12;
    do
    {
      sub_1005D1E80(v11, v4, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
      (*(v6 + 16))(v8, &v4[*(v18 + 20)], v5);
      sub_1005D1F50(v4, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
      v19 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004A1DB4(v13 > 1, v14 + 1, 1);
        v10 = v19;
      }

      v10[2] = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v5);
      v11 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

BOOL sub_1005D1850(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_1005D1E80(v10, v8, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
    sub_1005D1EE8(v8, v4, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1005D1F50(v4, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
    result = EnumCaseMultiPayload != 1;
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

uint64_t sub_1005D19B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v52 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v50 = a2;
    v51 = a3;
    v54 = _swiftEmptyArrayStorage;
    sub_1004A1CD0(0, v9, 0);
    v11 = v54;
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_1005D1E80(v12, v8, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
      v14 = IndexPath.description.getter();
      v16 = v15;
      sub_1005D1F50(v8, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
      v54 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1004A1CD0((v17 > 1), v18 + 1, 1);
        v11 = v54;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += v13;
      --v9;
    }

    while (v9);
    v54 = v11;
    sub_100058000(&unk_100781F20);
    sub_10006089C();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v54 = 0x202D206C61636F6CLL;
    v55 = 0xE800000000000000;
    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = v54;
    v25 = v55;
    v26 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = v26;
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v10 = sub_100546970((v27 > 1), v28 + 1, 1, v26);
    }

    *(v10 + 2) = v28 + 1;
    v29 = &v10[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v25;
    a2 = v50;
    a3 = v51;
  }

  v30 = *(a2 + 16);
  if (v30)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    v53 = v30;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;

    v54 = v31;
    v55 = v33;
    v34._object = 0x800000010068EC60;
    v34._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v34);
    v35 = v54;
    v36 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100546970(0, *(v10 + 2) + 1, 1, v10);
    }

    v38 = *(v10 + 2);
    v37 = *(v10 + 3);
    if (v38 >= v37 >> 1)
    {
      v10 = sub_100546970((v37 > 1), v38 + 1, 1, v10);
    }

    *(v10 + 2) = v38 + 1;
    v39 = &v10[16 * v38];
    *(v39 + 4) = v35;
    *(v39 + 5) = v36;
  }

  if (a3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_22;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_22;
    }
  }

  v53 = v40;
  v54 = dispatch thunk of CustomStringConvertible.description.getter();
  v55 = v41;
  v42._countAndFlagsBits = 0x726568746F207820;
  v42._object = 0xE900000000000073;
  String.append(_:)(v42);
  v43 = v54;
  v44 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_100546970(0, *(v10 + 2) + 1, 1, v10);
  }

  v46 = *(v10 + 2);
  v45 = *(v10 + 3);
  if (v46 >= v45 >> 1)
  {
    v10 = sub_100546970((v45 > 1), v46 + 1, 1, v10);
  }

  *(v10 + 2) = v46 + 1;
  v47 = &v10[16 * v46];
  *(v47 + 4) = v43;
  *(v47 + 5) = v44;
LABEL_22:
  v54 = v10;
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v48 = BidirectionalCollection<>.joined(separator:)();

  return v48;
}

uint64_t sub_1005D1E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005D1EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005D1F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for TTRIRemindersBoardDragItemSources()
{
  swift_unknownObjectRelease();
}

void *sub_1005D1FEC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for TTRIRemindersBoardDragItemSources(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for TTRIRemindersBoardDragItemSources(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;

  return a1;
}

char *sub_1005D20D4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v10 = *(*(v9 - 8) + 16);
      v10(a1, a2, v9);
      v11 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
      v12 = v11[5];
      v13 = type metadata accessor for IndexPath();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
      v10(&a1[v11[6]], &a2[v11[6]], v9);
      a1[v11[7]] = a2[v11[7]];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1005D2258(void **a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v8 = *(*(v3 - 8) + 8);
    (v8)((v3 - 8), a1, v3);
    v4 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
    v5 = *(v4 + 20);
    v6 = type metadata accessor for IndexPath();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
    v7 = a1 + *(v4 + 24);

    v8(v7, v3);
  }
}

void **sub_1005D2370(void **a1, void **a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
    v9 = v8[5];
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    v7((a1 + v8[6]), (a2 + v8[6]), v6);
    *(a1 + v8[7]) = *(a2 + v8[7]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_1005D24A8(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1005D1F50(a1, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v7 = *(*(v6 - 8) + 16);
      v7(a1, a2, v6);
      v8 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
      v9 = v8[5];
      v10 = type metadata accessor for IndexPath();
      (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
      v7((a1 + v8[6]), (a2 + v8[6]), v6);
      *(a1 + v8[7]) = *(a2 + v8[7]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1005D2604(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v9 = *(*(v8 - 8) + 32);
    v9(a1, a2, v8);
    v10 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
    v11 = v10[5];
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    v9(&a1[v10[6]], &a2[v10[6]], v8);
    a1[v10[7]] = a2[v10[7]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_BYTE *sub_1005D2760(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005D1F50(a1, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v9 = *(*(v8 - 8) + 32);
    v9(a1, a2, v8);
    v10 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
    v11 = v10[5];
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    v9(&a1[v10[6]], &a2[v10[6]], v8);
    a1[v10[7]] = a2[v10[7]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1005D28E0()
{
  result = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1005D2974(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = a3[5];
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    v8(&a1[a3[6]], &a2[a3[6]], v7);
    a1[a3[7]] = a2[a3[7]];
  }

  return a1;
}

uint64_t sub_1005D2AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(*(v4 - 8) + 8);
  (v9)((v4 - 8), a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + *(a2 + 24);

  return v9(v7, v4);
}

uint64_t sub_1005D2B88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = a3[5];
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1005D2C74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v8 = a3[5];
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1005D2D60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = a3[5];
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1005D2E4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v8 = a3[5];
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1005D2F60()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for TTRIRemindersBoardDragItemSourcesRelativeToColumn()
{
  swift_unknownObjectRelease();
}

void *initializeWithCopy for TTRIRemindersBoardDragItemSourcesRelativeToColumn(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for TTRIRemindersBoardDragItemSourcesRelativeToColumn(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for TTRIRemindersBoardDragItemSourcesRelativeToColumn(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardDragItemSourcesRelativeToColumn(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardDragItemSourcesRelativeToColumn(uint64_t result, int a2, int a3)
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

uint64_t sub_1005D325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for TTRITreeViewTableUpdates.IndexAndAnimation();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1005D32D8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100791230);
  v1 = sub_100003E30(v0, qword_100791230);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1005D33A0(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRITreeViewTableUpdates.IndexAndAnimation();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

void sub_1005D3414(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v68 - v7;
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v14 = sub_100058000(&unk_10076B940);
  v15 = *(v14 - 8);
  v78 = v14;
  v79 = v15;
  __chkstk_darwin(v14);
  v77 = &v68 - v16;
  v92 = sub_100058000(&qword_10076B968);
  v17 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v87 = &v68 - v20;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = *(a1 + 56);
  if (*(v24 + 16))
  {
    v84 = v3;
    v68 = v24;
    v85 = v13;
    v86 = v2;
    v75 = v10;
    v76 = v5;
    v25 = 0;
    v69 = a1;
    v26 = *(a1 + 48);
    v27 = *(v26 + 16);
    while (v27 != v25)
    {
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
        return;
      }

      v28 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v29 = *(v17 + 72);
      sub_10000794C(v26 + v28 + v29 * v25++, v23, &qword_10076B968);
      v30 = *&v23[*(v92 + 36)];
      sub_1000079B4(v23, &qword_10076B968);
      if (v30 != 5)
      {
        v32 = *(v68 + 16);
        v33 = v69;
        if (v32)
        {
          v34 = *(v69 + 40);
          v90 = *(v69 + 32);
          v91 = v34;
          v74 = *(v79 + 16);
          v35 = v68 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
          v73 = *(v79 + 72);
          v79 += 16;
          v72 = (v79 - 8);
          v89 = (v84 + 2);
          ++v84;
          *&v31 = 136315394;
          v70 = v31;
          v37 = v85;
          v36 = v86;
          v39 = v75;
          v38 = v76;
          v40 = v81;
          v80 = v28;
          do
          {
            v82 = v35;
            v83 = v32;
            v42 = v77;
            v41 = v78;
            v74(v77);
            FromTo.tuple()();
            (*v72)(v42, v41);
            v43 = v37;
            if (qword_1007674D0 != -1)
            {
              swift_once();
            }

            v44 = type metadata accessor for Logger();
            sub_100003E30(v44, qword_100791230);
            v45 = *v89;
            (*v89)(v40, v43, v36);
            v45(v38, v39, v36);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v93[0] = v71;
              *v48 = v70;
              sub_1005D7838(&qword_1007720C0, &type metadata accessor for IndexPath);
              v49 = dispatch thunk of CustomStringConvertible.description.getter();
              v51 = v50;
              v52 = *v84;
              (*v84)(v81, v86);
              v53 = sub_100004060(v49, v51, v93);

              *(v48 + 4) = v53;
              *(v48 + 12) = 2080;
              v38 = v76;
              v54 = dispatch thunk of CustomStringConvertible.description.getter();
              v56 = v55;
              v52(v38, v86);
              v28 = v80;
              v57 = sub_100004060(v54, v56, v93);
              v36 = v86;

              *(v48 + 14) = v57;
              _os_log_impl(&_mh_execute_header, v46, v47, "TTRITreeViewTableUpdates: move potentially conflicts with hard reload, convert it to delete+insert {from: %s, to: %s}", v48, 0x16u);
              swift_arrayDestroy();

              v40 = v81;
            }

            else
            {

              v52 = *v84;
              (*v84)(v38, v36);
              v52(v40, v36);
            }

            v58 = v87;
            v45(v87, v85, v36);
            *(v58 + *(v92 + 36)) = 0;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v75;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v91 = sub_100546F24(0, v91[2] + 1, 1, v91);
            }

            v61 = v91[2];
            v60 = v91[3];
            if (v61 >= v60 >> 1)
            {
              v91 = sub_100546F24(v60 > 1, v61 + 1, 1, v91);
            }

            v62 = v91;
            v91[2] = v61 + 1;
            sub_1005D77C8(v87, v62 + v28 + v61 * v29);
            v63 = v88;
            v45(v88, v39, v36);
            *(v63 + *(v92 + 36)) = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_100546F24(0, v90[2] + 1, 1, v90);
            }

            v37 = v85;
            v65 = v90[2];
            v64 = v90[3];
            if (v65 >= v64 >> 1)
            {
              v90 = sub_100546F24(v64 > 1, v65 + 1, 1, v90);
            }

            v52(v39, v36);
            v52(v37, v36);
            v66 = v90;
            v90[2] = v65 + 1;
            v28 = v80;
            sub_1005D77C8(v88, v66 + v80 + v65 * v29);
            v35 = v82 + v73;
            v32 = v83 - 1;
          }

          while (v83 != 1);
          v33 = v69;
          v67 = v91;
          *(v69 + 32) = v90;
          *(v33 + 40) = v67;
        }

        *(v33 + 56) = _swiftEmptyArrayStorage;
        return;
      }
    }
  }
}

BOOL sub_1005D3C38()
{
  v1 = sub_100058000(&qword_10076B968);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = (*v0 + 40);
  v12 = *(*v0 + 16) + 1;
  while (--v12)
  {
    v13 = *v11;
    v11 += 2;
    if (v13 != 5)
    {
      return 0;
    }
  }

  v14 = v0[1];
  v15 = (v14 + 40);
  v16 = *(v14 + 16) + 1;
  while (--v16)
  {
    v17 = *v15;
    v15 += 2;
    if (v17 != 5)
    {
      return 0;
    }
  }

  v18 = v0[2];
  v19 = (v18 + 40);
  v20 = *(v18 + 16) + 1;
  while (--v20)
  {
    v21 = *v19;
    v19 += 2;
    if (v21 != 5)
    {
      return 0;
    }
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  v42 = v0;
  v43 = v8;
  v23 = 0;
  v24 = v0[4];
  v25 = *(v24 + 16);
  v26 = v7;
  while (v25 != v23)
  {
    sub_10000794C(v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23++, v10, &qword_10076B968);
    v27 = *&v10[*(v26 + 36)];
    sub_1000079B4(v10, &qword_10076B968);
    result = 0;
    if (v27 != 5)
    {
      return result;
    }
  }

  v28 = 0;
  v29 = v42[5];
  v30 = *(v29 + 16);
  while (v30 != v28)
  {
    sub_10000794C(v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v28++, v5, &qword_10076B968);
    v31 = *&v5[*(v26 + 36)];
    sub_1000079B4(v5, &qword_10076B968);
    result = 0;
    if (v31 != 5)
    {
      return result;
    }
  }

  v32 = 0;
  v33 = v43;
  v34 = v42[6];
  v35 = *(v34 + 16);
  while (v35 != v32)
  {
    sub_10000794C(v34 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32++, v33, &qword_10076B968);
    v36 = *(v33 + *(v26 + 36));
    sub_1000079B4(v33, &qword_10076B968);
    result = 0;
    if (v36 != 5)
    {
      return result;
    }
  }

  if (*(v42[7] + 16))
  {
    return 0;
  }

  v37 = v42[8];
  v38 = v37 + 32;
  v39 = *(v37 + 16) + 1;
  do
  {
    if (!--v39)
    {
      break;
    }

    v40 = v38 + 48;
    sub_10000794C(v38, v44, &qword_100769AB8);
    v41 = v45;
    sub_1000079B4(v44, &qword_100769AB8);
    v38 = v40;
  }

  while (v41 == 5);
  return v39 == 0;
}

uint64_t sub_1005D3FB8()
{
  sub_100058000(&qword_100791280);
  inited = swift_initStackObject();
  *(inited + 32) = 73;
  *(inited + 16) = xmmword_1006337E0;
  *(inited + 40) = 0xE100000000000000;
  v2 = v0[5];
  *(inited + 48) = *(v0[4] + 16);
  *(inited + 56) = 68;
  *(inited + 64) = 0xE100000000000000;
  *(inited + 72) = *(v2 + 16);
  *(inited + 80) = 82;
  *(inited + 88) = 0xE100000000000000;
  v3 = v0[7];
  *(inited + 96) = *(v0[6] + 16);
  *(inited + 104) = 77;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = *(v3 + 16);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1006337E0;
  *(v4 + 32) = 73;
  *(v4 + 40) = 0xE100000000000000;
  v5 = v0[1];
  *(v4 + 48) = *(*v0 + 16);
  *(v4 + 56) = 68;
  *(v4 + 64) = 0xE100000000000000;
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = 82;
  *(v4 + 88) = 0xE100000000000000;
  v6 = v0[3];
  *(v4 + 96) = *(v0[2] + 16);
  *(v4 + 104) = 77;
  *(v4 + 112) = 0xE100000000000000;
  *(v4 + 120) = *(v6 + 16);
  v7 = sub_1005D4450(inited);
  swift_setDeallocating();
  sub_100058000(qword_100791288);
  swift_arrayDestroy();
  v8 = sub_1005D4450(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v8 + 16))
  {
    sub_100058000(&unk_100781F20);
    sub_10000E188(&qword_100771E20, &unk_100781F20);
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 125;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_100546970((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[16 * v16];
    *(v17 + 4) = 0x3A6E6F6974636573;
    *(v17 + 5) = 0xEA00000000007B20;
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
    if (*(v7 + 16))
    {
LABEL_5:
      sub_100058000(&unk_100781F20);
      sub_10000E188(&qword_100771E20, &unk_100781F20);
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;

      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);

      v22._countAndFlagsBits = 125;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100546970(0, *(v14 + 2) + 1, 1, v14);
      }

      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v24 >= v23 >> 1)
      {
        v14 = sub_100546970((v23 > 1), v24 + 1, 1, v14);
      }

      *(v14 + 2) = v24 + 1;
      v25 = &v14[16 * v24];
      *(v25 + 4) = 0x7B203A776F72;
      *(v25 + 5) = 0xE600000000000000;
      goto LABEL_12;
    }
  }

  if (!*(v14 + 2))
  {

    return 0x61647075206F6E28;
  }

LABEL_12:
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v26 = BidirectionalCollection<>.joined(separator:)();

  return v26;
}

uint64_t sub_1005D4450(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = _swiftEmptyArrayStorage;
  v4 = result + 48;
  v5 = &type metadata for Int;
  v6 = &protocol witness table for Int;
LABEL_2:
  v7 = (v4 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v3;
    }

    if (v1 >= v2)
    {
      break;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v9 = *v7;
    v7 += 3;
    ++v1;
    if (v9 >= 1)
    {
      v17 = *(v7 - 5);
      v18 = *(v7 - 4);
      swift_bridgeObjectRetain_n();
      v10._countAndFlagsBits = 8250;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11 = v6;
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      result = swift_isUniquelyReferenced_nonNull_native();
      v13 = v5;
      if ((result & 1) == 0)
      {
        result = sub_100546970(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_100546970((v14 > 1), v15 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v15 + 1;
      v16 = &v3[16 * v15];
      *(v16 + 4) = v17;
      *(v16 + 5) = v18;
      v1 = v8;
      v5 = v13;
      v6 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1005D45D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1005D690C(v7, v9) & 1;
}

uint64_t sub_1005D463C(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (sub_1005D3C38())
  {
    v37 = objc_opt_self();
    v16 = swift_allocObject();
    v17 = *(a1 + 48);
    *(v16 + 56) = *(a1 + 32);
    *(v16 + 72) = v17;
    *(v16 + 88) = *(a1 + 64);
    v18 = *(a1 + 16);
    *(v16 + 24) = *a1;
    *(v16 + 16) = v8;
    v19 = *(a1 + 80);
    *(v16 + 40) = v18;
    *(v16 + 104) = v19;
    *(v16 + 112) = a2;
    *(v16 + 120) = isEscapingClosureAtFileLocation;
    *(v16 + 128) = a4;
    *(v16 + 136) = a5;
    *(v16 + 144) = a6;
    a5 = a6;
    a2 = a7;
    *(v16 + 152) = a7;
    a7 = swift_allocObject();
    *(a7 + 16) = sub_1005D67EC;
    *(a7 + 24) = v16;
    v44 = sub_100068444;
    v45 = a7;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100026440;
    v43 = &unk_100732238;
    v20 = _Block_copy(&aBlock);
    a6 = v45;
    v21 = v8;
    sub_10008B7A4(a1, v39);

    sub_10003BE34(a4);
    sub_10003BE34(a5);

    [v37 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v26;
  *(v23 + 96) = v25;
  *(v23 + 104) = a4;
  *(v23 + 112) = a5;
  *(v23 + 120) = v8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1005D67D8;
  *(v27 + 24) = v23;
  v44 = sub_100026410;
  v45 = v27;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v36 = isEscapingClosureAtFileLocation;
  v28 = a6;
  v42 = sub_100026440;
  v43 = &unk_100732170;
  v38 = _Block_copy(&aBlock);
  v29 = v8;
  sub_10008B7A4(a1, v39);
  sub_10003BE34(a4);

  v30 = swift_allocObject();
  v31 = *(a1 + 48);
  *(v30 + 48) = *(a1 + 32);
  *(v30 + 64) = v31;
  *(v30 + 80) = *(a1 + 64);
  v32 = *(a1 + 80);
  v33 = *(a1 + 16);
  *(v30 + 16) = *a1;
  *(v30 + 32) = v33;
  *(v30 + 96) = v32;
  *(v30 + 104) = a2;
  *(v30 + 112) = v36;
  *(v30 + 120) = a6;
  *(v30 + 128) = a7;
  *(v30 + 136) = v29;
  v44 = sub_1005D67E8;
  v45 = v30;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100174F78;
  v43 = &unk_1007321C0;
  v34 = _Block_copy(&aBlock);
  v35 = v29;
  sub_10008B7A4(a1, v39);

  sub_10003BE34(v28);

  [v35 performBatchUpdates:v38 completion:v34];
  _Block_release(v34);
  _Block_release(v38);

  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D4A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a2 + 64);
  v16 = *(a2 + 80);
  v17 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v17;
  *(v14 + 96) = v16;
  *(v14 + 104) = a5;
  *(v14 + 112) = a6;
  *(v14 + 120) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1005D8284;
  *(v18 + 24) = v14;
  v35 = sub_100068444;
  v36 = v18;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100026440;
  v34 = &unk_1007322B0;
  v27 = _Block_copy(&aBlock);
  sub_10008B7A4(a2, v30);
  sub_10003BE34(a5);
  v19 = a1;

  v20 = swift_allocObject();
  v21 = *(a2 + 48);
  *(v20 + 48) = *(a2 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a2 + 64);
  v22 = *(a2 + 80);
  v23 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v23;
  *(v20 + 96) = v22;
  *(v20 + 104) = a3;
  *(v20 + 112) = a4;
  *(v20 + 120) = a7;
  *(v20 + 128) = a8;
  *(v20 + 136) = v19;
  v35 = sub_1005D82A8;
  v36 = v20;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100174F78;
  v34 = &unk_100732300;
  v24 = _Block_copy(&aBlock);
  sub_10008B7A4(a2, v30);
  v25 = v19;

  sub_10003BE34(a7);

  [v25 performBatchUpdates:v27 completion:v24];
  _Block_release(v24);
  _Block_release(v27);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D4D34(Class isa, objc_class *a2, uint64_t a3, void *a4)
{
  v166 = a4;
  v152 = a3;
  v162 = a2;
  v5 = sub_100058000(&qword_100769AA8);
  v158 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v146 - v6;
  v148 = sub_100058000(&unk_10076B940);
  v168 = *(v148 - 8);
  __chkstk_darwin(v148);
  v9 = &v146 - v8;
  v10 = sub_100058000(&qword_10076B968);
  v167 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v171 = (&v146 - v11);
  v170 = type metadata accessor for IndexPath();
  v172 = *(v170 - 8);
  __chkstk_darwin(v170);
  v153 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v169 = &v146 - v14;
  __chkstk_darwin(v15);
  v146 = &v146 - v16;
  __chkstk_darwin(v17);
  v157 = &v146 - v18;
  __chkstk_darwin(v19);
  v156 = &v146 - v20;
  if (qword_1007674D0 != -1)
  {
LABEL_74:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003E30(v21, qword_100791230);
  sub_10008B7A4(isa, v186);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  sub_10008B800(isa);
  v24 = os_log_type_enabled(v22, v23);
  v149 = v7;
  v150 = v5;
  v147 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *&v186[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_100004060(*(isa + 9), *(isa + 10), v186);
    *(v25 + 12) = 2080;
    v26 = sub_1005D3FB8();
    v28 = sub_100004060(v26, v27, v186);

    *(v25 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Performing table updates for %s: %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v29 = *(isa + 3);
  v182 = *(isa + 2);
  v183 = v29;
  v184 = *(isa + 4);
  v185 = *(isa + 10);
  v30 = *(isa + 1);
  v180 = *isa;
  v181 = v30;
  v7 = v169;
  v5 = v157;
  if (v162)
  {
    sub_10008B7A4(isa, v186);
    sub_1005D3414(&v180);
    if (v31)
    {
      v176 = v182;
      v177 = v183;
      v178 = v184;
      v179 = v185;
      v174 = v180;
      v175 = v181;
      v186[0] = v180;
      v186[1] = v181;
      v186[3] = v183;
      v186[4] = v184;
      v186[2] = v182;
      v187 = v185;
      sub_10008B7A4(v186, v173);
      sub_10008B7A4(&v174, v173);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      sub_10008B800(&v174);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v173[0] = swift_slowAlloc();
        *v34 = 136315394;
        v35 = *(&v178 + 1);
        v36 = v179;

        v37 = sub_100004060(v35, v36, v173);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        v38 = sub_1005D3FB8();
        v40 = v39;
        sub_10008B800(v186);
        v41 = sub_100004060(v38, v40, v173);
        v7 = v169;

        *(v34 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v32, v33, "Table updates adjusted for %s: %s", v34, 0x16u);
        swift_arrayDestroy();

        v5 = v157;
      }

      else
      {

        sub_10008B800(v186);
      }
    }
  }

  else
  {
    sub_10008B7A4(isa, v186);
  }

  swift_beginAccess();
  v163 = v166;

  isa = 0;
  v9 = sub_1005D6A58(v42);
  v151 = 0;

  v43 = 0;
  v44 = v9 + 64;
  v45 = 1 << v9[32];
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v9 + 8);
  v48 = (v45 + 63) >> 6;
  v165 = (v172 + 32);
  v49 = v170;
  v159 = v48;
  v154 = (v9 + 64);
  v155 = v9;
  while (v47)
  {
LABEL_19:
    v166 = v43;
    v53 = (v43 << 9) | (8 * __clz(__rbit64(v47)));
    v54 = *(v9 + 7);
    v164 = *(*(v9 + 6) + v53);
    v55 = *(v54 + v53);
    v56 = *(v55 + 16);
    if (v56)
    {
      v161 = v47;
      *&v174 = _swiftEmptyArrayStorage;

      sub_1004A1DB4(0, v56, 0);
      v57 = v174;
      v58 = *(v167 + 80);
      v160 = v55;
      v59 = v55 + ((v58 + 32) & ~v58);
      v170 = *(v167 + 72);
      v60 = v165;
      v61 = v156;
      do
      {
        v62 = v171;
        sub_10000794C(v59, v171, &qword_10076B968);
        v63 = *v60;
        (*v60)(v61, v62, v49);
        *&v174 = v57;
        v64 = v49;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1004A1DB4(v65 > 1, v66 + 1, 1);
          v57 = v174;
        }

        *(v57 + 16) = v66 + 1;
        v63(v57 + ((v172[80] + 32) & ~v172[80]) + *(v172 + 9) * v66, v61, v64);
        v59 += v170;
        --v56;
        v49 = v64;
      }

      while (v56);

      v7 = v169;
      v5 = v157;
      v50 = v163;
      v44 = v154;
      v51 = v155;
      v47 = v161;
    }

    else
    {
      v51 = v9;
      v50 = v163;
    }

    v47 &= v47 - 1;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v50 insertRowsAtIndexPaths:isa withRowAnimation:v164];

    v43 = v166;
    v48 = v159;
    v9 = v51;
  }

  while (1)
  {
    v52 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v52 >= v48)
    {
      break;
    }

    v47 = *&v44[8 * v52];
    ++v43;
    if (v47)
    {
      v43 = v52;
      goto LABEL_19;
    }
  }

  v67 = v163;

  v166 = v67;

  isa = v151;
  v69 = sub_1005D6A58(v68);
  v154 = isa;

  v70 = 0;
  v9 = (v69 + 64);
  v71 = 1 << *(v69 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v69 + 64);
  v74 = (v71 + 63) >> 6;
  v159 = v74;
  v155 = (v69 + 64);
  v156 = v69;
  while (v73)
  {
LABEL_35:
    v77 = (v70 << 9) | (8 * __clz(__rbit64(v73)));
    v78 = *(v69 + 56);
    v164 = *(*(v69 + 48) + v77);
    v79 = *(v78 + v77);
    v80 = *(v79 + 16);
    if (v80)
    {
      v161 = v73;
      v163 = v70;
      *&v174 = _swiftEmptyArrayStorage;

      sub_1004A1DB4(0, v80, 0);
      v81 = v174;
      v82 = *(v167 + 80);
      v160 = v79;
      v83 = v79 + ((v82 + 32) & ~v82);
      v170 = *(v167 + 72);
      v84 = v165;
      do
      {
        v85 = v5;
        v86 = v171;
        sub_10000794C(v83, v171, &qword_10076B968);
        v87 = *v84;
        (*v84)(v85, v86, v49);
        *&v174 = v81;
        v88 = v49;
        v90 = *(v81 + 16);
        v89 = *(v81 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_1004A1DB4(v89 > 1, v90 + 1, 1);
          v81 = v174;
        }

        *(v81 + 16) = v90 + 1;
        v87(v81 + ((v172[80] + 32) & ~v172[80]) + *(v172 + 9) * v90, v85, v88);
        v83 += v170;
        --v80;
        v49 = v88;
        v5 = v85;
      }

      while (v80);

      v7 = v169;
      v9 = v155;
      v69 = v156;
      v70 = v163;
      v73 = v161;
    }

    v75 = (v73 - 1) & v73;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v166 deleteRowsAtIndexPaths:isa withRowAnimation:v164];

    v73 = v75;
    v74 = v159;
  }

  while (1)
  {
    v76 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_72;
    }

    if (v76 >= v74)
    {
      break;
    }

    v73 = *&v9[8 * v76];
    ++v70;
    if (v73)
    {
      v70 = v76;
      goto LABEL_35;
    }
  }

  isa = v154;
  v92 = sub_1005D6A58(v91);

  v93 = 0;
  v94 = v92 + 64;
  v95 = 1 << *(v92 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v5 = (v96 & *(v92 + 64));
  v97 = (v95 + 63) >> 6;
  v98 = v158;
  v156 = v92;
  v157 = v97;
  v159 = v92 + 64;
  while (v5)
  {
LABEL_52:
    v163 = v5;
    v164 = v93;
    v101 = (v93 << 9) | (8 * __clz(__rbit64(v5)));
    v102 = *(v92 + 48);
    isa = *(v102 + v101);
    v103 = *(*(v92 + 56) + v101);
    v104 = *(v103 + 16);
    if (v104)
    {
      v161 = *(v102 + v101);
      *&v174 = _swiftEmptyArrayStorage;

      sub_1004A1DB4(0, v104, 0);
      v105 = v174;
      v106 = *(v167 + 80);
      v160 = v103;
      v107 = v103 + ((v106 + 32) & ~v106);
      v170 = *(v167 + 72);
      v108 = v153;
      v109 = v165;
      do
      {
        v110 = v105;
        v111 = v171;
        sub_10000794C(v107, v171, &qword_10076B968);
        v112 = *v109;
        v113 = v111;
        v105 = v110;
        (*v109)(v108, v113, v49);
        *&v174 = v110;
        v114 = v49;
        v116 = v110[2];
        v115 = v110[3];
        if (v116 >= v115 >> 1)
        {
          sub_1004A1DB4(v115 > 1, v116 + 1, 1);
          v105 = v174;
        }

        v105[2] = v116 + 1;
        v112(v105 + ((v172[80] + 32) & ~v172[80]) + *(v172 + 9) * v116, v108, v114);
        v107 += v170;
        --v104;
        v49 = v114;
      }

      while (v104);

      v98 = v158;
      v7 = v169;
      v92 = v156;
      isa = v161;
    }

    else
    {
      v105 = _swiftEmptyArrayStorage;
    }

    v5 = ((v163 - 1) & v163);
    if (v162 && isa == 5)
    {
      v9 = v105;

      isa = v162;
      (v162)(v105);

      sub_1000301AC(isa);
    }

    else
    {
      v9 = v105;
      v99 = Array._bridgeToObjectiveC()().super.isa;
      [v166 reloadRowsAtIndexPaths:v99 withRowAnimation:isa];
    }

    v94 = v159;
    v93 = v164;
    v97 = v157;
  }

  while (1)
  {
    v100 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_73;
    }

    if (v100 >= v97)
    {
      break;
    }

    v5 = *(v94 + 8 * v100);
    ++v93;
    if (v5)
    {
      v93 = v100;
      goto LABEL_52;
    }
  }

  v117 = *(*(&v183 + 1) + 16);
  if (v117)
  {
    v171 = *(v168 + 16);
    v118 = *(&v183 + 1) + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    v170 = *(v168 + 72);
    v167 = v168 + 8;
    v168 += 16;
    v119 = v172 + 8;
    v172 = v166;
    v120 = v49;
    v121 = v147;
    v122 = v148;
    v123 = v146;
    do
    {
      (v171)(v121, v118, v122);
      FromTo.from.getter();
      FromTo.to.getter();
      (*v167)(v121, v122);
      v124 = IndexPath._bridgeToObjectiveC()().super.isa;
      v125 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v172 moveRowAtIndexPath:v124 toIndexPath:v125];

      v126 = v169;
      v127 = *v119;
      (*v119)(v126, v120);
      v127(v123, v120);
      v118 += v170;
      --v117;
    }

    while (v117);

    v98 = v158;
  }

  v128 = v180;
  v129 = v166;
  sub_1005D6D60(v128, v129, &selRef_insertSections_withRowAnimation_);

  v130 = *(&v180 + 1);
  v131 = v129;
  sub_1005D6D60(v130, v131, &selRef_deleteSections_withRowAnimation_);

  v132 = v181;
  v133 = v131;
  sub_1005D6D60(v132, v133, &selRef_reloadSections_withRowAnimation_);

  v176 = v182;
  v177 = v183;
  v178 = v184;
  v134 = *(&v181 + 1);
  v179 = v185;
  v174 = v180;
  v175 = v181;

  sub_10008B800(&v174);
  v135 = *(v134 + 2);
  if (v135)
  {
    v138 = *(v98 + 16);
    v137 = v98 + 16;
    v136 = v138;
    v139 = (*(v137 + 64) + 32) & ~*(v137 + 64);
    v172 = v134;
    v140 = &v134[v139];
    v141 = *(v137 + 56);
    v142 = v133;
    v143 = v149;
    v144 = v150;
    do
    {
      v136(v143, v140, v144);
      FromTo.from.getter();
      FromTo.to.getter();
      (*(v137 - 8))(v143, v144);
      [v142 moveSection:v173[12] toSection:v173[11]];
      v140 += v141;
      --v135;
    }

    while (v135);
  }
}

uint64_t sub_1005D5D54(int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v53 = a7;
  v55 = a6;
  v54 = a5;
  v45 = a1;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = a2;
  v11 = *(a2 + 64);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v14 = v11 + 32;
    v56 = a3;
    do
    {
      sub_10000794C(v14, &v57, &qword_100769AB8);
      v16 = v62;
      v17 = a3(&v57);
      v19 = v18;
      sub_1000079B4(&v57, &qword_100769AB8);
      if ((v19 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100546F48(0, *(v13 + 2) + 1, 1, v13);
        }

        v21 = *(v13 + 2);
        v20 = *(v13 + 3);
        if (v21 >= v20 >> 1)
        {
          v13 = sub_100546F48((v20 > 1), v21 + 1, 1, v13);
        }

        *(v13 + 2) = v21 + 1;
        v15 = &v13[16 * v21];
        *(v15 + 4) = v17;
        *(v15 + 5) = v16;
        a3 = v56;
      }

      v14 += 48;
      --v12;
    }

    while (v12);
  }

  if (*(v13 + 2))
  {
    v22 = swift_allocObject();
    v23 = v52;
    v24 = *(v52 + 48);
    *(v22 + 48) = *(v52 + 32);
    *(v22 + 64) = v24;
    *(v22 + 80) = *(v23 + 64);
    v25 = *(v23 + 80);
    v26 = *(v23 + 16);
    *(v22 + 16) = *v23;
    *(v22 + 32) = v26;
    *(v22 + 96) = v25;
    *(v22 + 104) = v13;
    v27 = v53;
    *(v22 + 112) = v53;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1005D68B8;
    *(v28 + 24) = v22;
    aBlock[4] = sub_100068444;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100732378;
    v29 = _Block_copy(aBlock);
    sub_10008B7A4(v23, &v57);
    v30 = v27;

    v31 = swift_allocObject();
    v32 = v54;
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v55;
    v61 = sub_1005D68C4;
    v62 = v31;
    v57 = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100174F78;
    v60 = &unk_1007323C8;
    v33 = _Block_copy(&v57);
    sub_10003BE34(v32);
    v34 = v30;

    [v34 performBatchUpdates:v29 completion:v33];
    _Block_release(v33);
    _Block_release(v29);
  }

  else
  {

    sub_1000A96A0();
    v36 = static OS_dispatch_queue.main.getter();
    v37 = swift_allocObject();
    v38 = v54;
    v39 = v55;
    *(v37 + 16) = v54;
    *(v37 + 24) = v39;
    *(v37 + 32) = v45 & 1;
    v61 = sub_1005D68D0;
    v62 = v37;
    v57 = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10001047C;
    v60 = &unk_100732418;
    v40 = _Block_copy(&v57);
    sub_10003BE34(v38);

    v41 = v46;
    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_1005D7838(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100058000(&qword_100780A50);
    sub_10000E188(&qword_10076B7E0, &qword_100780A50);
    v42 = v48;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v50 + 8))(v42, v43);
    return (*(v47 + 8))(v41, v49);
  }
}

uint64_t sub_1005D63A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1007674D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100791230);
  sub_10008B7A4(a1, v14);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10008B800(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100004060(*(a1 + 72), *(a1 + 80), v14);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(a2 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "Reloading section header footer for %s: count=%ld", v9, 0x16u);
    sub_100004758(v10);
  }

  else
  {
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;

  v12 = a3;
  sub_1005D723C(a2, sub_1005D6904, v11);
}

void sub_1005D6574(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100058000(&qword_100791278);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  sub_10000794C(a1, &v14 - v7, &qword_100791278);
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    IndexSet._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  [a3 _reloadSectionHeaderFooters:v12 withRowAnimation:a2];
}

void sub_1005D66B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6[4] = a3;
    v6[5] = a4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100174F78;
    v6[3] = &unk_100732440;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [a2 performBatchUpdates:0 completion:v5];
  _Block_release(v5);
}

uint64_t sub_1005D6804()
{

  if (*(v0 + 120))
  {
  }

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_1005D68D0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_1005D690C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_7:
    if ((sub_100125E3C(a1[1], a2[1]) & 1) != 0 && (sub_100125E3C(a1[2], a2[2]) & 1) != 0 && (sub_100125EA4(a1[3], a2[3]) & 1) != 0 && (sub_100125EC0(a1[4], a2[4]) & 1) != 0 && (sub_100125EC0(a1[5], a2[5]) & 1) != 0 && (sub_100125EC0(a1[6], a2[6]) & 1) != 0 && (sub_100126114(a1[7], a2[7]) & 1) != 0 && sub_100126328(a1[8], a2[8]))
    {
      if (a1[9] == a2[9] && a1[10] == a2[10])
      {
        return 1;
      }

      goto LABEL_25;
    }

    return 0;
  }

  v9 = (v2 + 40);
  v10 = (v3 + 40);
  while (v4)
  {
    if (*(v9 - 1) != *(v10 - 1))
    {
      return 0;
    }

    v11 = *v9;
    v9 += 2;
    if (v11 != *v10)
    {
      return 0;
    }

    v10 += 2;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_25:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005D6A58(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076B968);
  __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = &_swiftEmptyDictionarySingleton;
  v42 = &_swiftEmptyDictionarySingleton;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_10062D400;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_10000794C(v11, v7, &qword_10076B968);
    v15 = *&v7[*(v2 + 36)];
    v17 = sub_1003ABA18(v15);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_10054EC80(v20, 1);
      v8 = v42;
      v22 = sub_1003ABA18(v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_1005D77C8(v7, v41);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100546F24(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100546F24(v27 > 1, v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_1005D77C8(v41, v13);
    }

    else
    {
      sub_100058000(&qword_10078C178);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1005D77C8(v7, v30 + v29);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + 8 * v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for RowAnimation(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005D6D60(uint64_t a1, void *a2, SEL *a3)
{
  v64 = a3;
  v65 = a2;
  v56 = type metadata accessor for IndexSet();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v56 - v6;
  v7 = &_swiftEmptyDictionarySingleton;
  v68 = &_swiftEmptyDictionarySingleton;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 40);
    v66 = xmmword_10062D400;
    while (1)
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v14 = sub_1003ABA18(*v9);
      v15 = v7[2];
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        break;
      }

      v18 = v13;
      if (v7[3] < v17)
      {
        sub_10054EC6C(v17, 1);
        v7 = v68;
        v19 = sub_1003ABA18(v11);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_40;
        }

        v14 = v19;
      }

      if (v18)
      {
        v21 = v7[7];
        v22 = *(v21 + 8 * v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 8 * v14) = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_100546F48(0, *(v22 + 2) + 1, 1, v22);
          *(v21 + 8 * v14) = v22;
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        if (v25 >= v24 >> 1)
        {
          v22 = sub_100546F48((v24 > 1), v25 + 1, 1, v22);
          *(v21 + 8 * v14) = v22;
        }

        *(v22 + 2) = v25 + 1;
        v10 = &v22[16 * v25];
        *(v10 + 4) = v12;
        *(v10 + 5) = v11;
      }

      else
      {
        sub_100058000(&qword_10078C180);
        v26 = swift_allocObject();
        *(v26 + 16) = v66;
        *(v26 + 32) = v12;
        *(v26 + 40) = v11;
        v7[(v14 >> 6) + 8] |= 1 << v14;
        *(v7[6] + 8 * v14) = v11;
        *(v7[7] + 8 * v14) = v26;
        v27 = v7[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_39;
        }

        v7[2] = v29;
      }

      v9 += 2;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v30 = 0;
    v31 = (v7 + 8);
    v32 = 1 << *(v7 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v7[8];
    v35 = (v32 + 63) >> 6;
    v57 = (v60 + 8);
    v58 = (v60 + 32);
    v36 = v56;
    v59 = v35;
    v60 = (v7 + 8);
    v61 = v7;
    while (v34)
    {
LABEL_25:
      v42 = (v30 << 9) | (8 * __clz(__rbit64(v34)));
      v43 = v7[7];
      *&v66 = *(v7[6] + v42);
      v44 = *(v43 + v42);
      v45 = *(v44 + 16);
      if (v45)
      {
        v68 = _swiftEmptyArrayStorage;

        sub_1004A26FC(0, v45, 0);
        v46 = v68;
        v47 = v68[2];
        v48 = 32;
        do
        {
          v49 = *(v44 + v48);
          v68 = v46;
          v50 = v46[3];
          if (v47 >= v50 >> 1)
          {
            sub_1004A26FC((v50 > 1), v47 + 1, 1);
            v46 = v68;
          }

          v46[2] = v47 + 1;
          v46[v47 + 4] = v49;
          v48 += 16;
          ++v47;
          --v45;
        }

        while (v45);

        v36 = v56;
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      sub_1005D7838(&unk_100771B20, &type metadata accessor for IndexSet);
      v51 = v63;
      dispatch thunk of SetAlgebra.init()();
      v52 = v46[2];
      if (v52)
      {
        v53 = v46 + 4;
        do
        {
          v54 = *v53++;
          v67 = v54;
          dispatch thunk of SetAlgebra.insert(_:)();
          --v52;
        }

        while (v52);
      }

      v34 &= v34 - 1;

      v37 = v62;
      (*v58)(v62, v51, v36);
      IndexSet._bridgeToObjectiveC()(v38);
      v40 = v39;
      [v65 *v64];

      (*v57)(v37, v36);
      v31 = v60;
      v7 = v61;
      v35 = v59;
    }

    while (1)
    {
      v41 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v41 >= v35)
      {
      }

      v34 = *&v31[8 * v41];
      ++v30;
      if (v34)
      {
        v30 = v41;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  type metadata accessor for RowAnimation(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005D723C(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v68 = a2;
  v69 = a3;
  v4 = sub_100058000(&qword_100791278);
  __chkstk_darwin(v4 - 8);
  v67 = &v56 - v5;
  v57 = type metadata accessor for IndexSet();
  v63 = *(v57 - 8);
  __chkstk_darwin(v57);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v56 - v8;
  v9 = &_swiftEmptyDictionarySingleton;
  v72 = &_swiftEmptyDictionarySingleton;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 40);
    v70 = xmmword_10062D400;
    while (1)
    {
      v14 = *(v11 - 1);
      v13 = *v11;
      v16 = sub_1003ABA18(*v11);
      v17 = v9[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      if (v9[3] < v19)
      {
        sub_10054EC6C(v19, 1);
        v9 = v72;
        v21 = sub_1003ABA18(v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_40;
        }

        v16 = v21;
      }

      if (v20)
      {
        v23 = v9[7];
        v24 = *(v23 + 8 * v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + 8 * v16) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_100546F48(0, *(v24 + 2) + 1, 1, v24);
          *(v23 + 8 * v16) = v24;
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        if (v27 >= v26 >> 1)
        {
          v24 = sub_100546F48((v26 > 1), v27 + 1, 1, v24);
          *(v23 + 8 * v16) = v24;
        }

        *(v24 + 2) = v27 + 1;
        v12 = &v24[16 * v27];
        *(v12 + 4) = v14;
        *(v12 + 5) = v13;
      }

      else
      {
        sub_100058000(&qword_10078C180);
        v28 = swift_allocObject();
        *(v28 + 16) = v70;
        *(v28 + 32) = v14;
        *(v28 + 40) = v13;
        v9[(v16 >> 6) + 8] |= 1 << v16;
        *(v9[6] + 8 * v16) = v13;
        *(v9[7] + 8 * v16) = v28;
        v29 = v9[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_39;
        }

        v9[2] = v31;
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v32 = 0;
    v33 = (v9 + 8);
    v34 = 1 << *(v9 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & v9[8];
    v37 = (v34 + 63) >> 6;
    v60 = (v63 + 16);
    v61 = (v63 + 32);
    v58 = (v63 + 8);
    v59 = (v63 + 56);
    v38 = v57;
    v62 = v37;
    v63 = (v9 + 8);
    v64 = v9;
    while (v36)
    {
LABEL_25:
      v42 = (v32 << 9) | (8 * __clz(__rbit64(v36)));
      v43 = v9[7];
      *&v70 = *(v9[6] + v42);
      v44 = *(v43 + v42);
      v45 = *(v44 + 16);
      if (v45)
      {
        v72 = _swiftEmptyArrayStorage;

        sub_1004A26FC(0, v45, 0);
        v46 = v72;
        v47 = v72[2];
        v48 = 32;
        do
        {
          v49 = *(v44 + v48);
          v72 = v46;
          v50 = v46[3];
          if (v47 >= v50 >> 1)
          {
            sub_1004A26FC((v50 > 1), v47 + 1, 1);
            v46 = v72;
          }

          v46[2] = v47 + 1;
          v46[v47 + 4] = v49;
          v48 += 16;
          ++v47;
          --v45;
        }

        while (v45);

        v38 = v57;
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      sub_1005D7838(&unk_100771B20, &type metadata accessor for IndexSet);
      v51 = v66;
      dispatch thunk of SetAlgebra.init()();
      v52 = v46[2];
      if (v52)
      {
        v53 = v46 + 4;
        do
        {
          v54 = *v53++;
          v71 = v54;
          dispatch thunk of SetAlgebra.insert(_:)();
          --v52;
        }

        while (v52);
      }

      v36 &= v36 - 1;

      v39 = v65;
      (*v61)(v65, v51, v38);
      v40 = v67;
      (*v60)(v67, v39, v38);
      (*v59)(v40, 0, 1, v38);
      v68(v40, v70);
      sub_1000079B4(v40, &qword_100791278);
      (*v58)(v39, v38);
      v33 = v63;
      v9 = v64;
      v37 = v62;
    }

    while (1)
    {
      v41 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v41 >= v37)
      {
      }

      v36 = *&v33[8 * v41];
      ++v32;
      if (v36)
      {
        v32 = v41;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  type metadata accessor for RowAnimation(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005D77C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D7838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005D7880()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1005D791C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_1005D7A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1005D7A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1005D7B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1005D7B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1005D7C00(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1005D7D04(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t destroy for TTRITreeViewTableUpdates()
{
}

void *initializeWithCopy for TTRITreeViewTableUpdates(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  a1[10] = a2[10];

  return a1;
}

void *assignWithCopy for TTRITreeViewTableUpdates(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];
  a1[10] = a2[10];

  return a1;
}

__n128 initializeWithTake for TTRITreeViewTableUpdates(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRITreeViewTableUpdates(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITreeViewTableUpdates(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRITreeViewTableUpdates(uint64_t result, int a2, int a3)
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

id sub_1005D82AC()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___iconImageView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___iconImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___iconImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    LODWORD(v5) = 1148846080;
    LODWORD(v6) = 1148846080;
    [v4 setLayoutSize:NUIContainerViewSizeUseDefault[0] withHorizontalContentPriority:NUIContainerViewSizeUseDefault[1] verticalContentPriority:{v5, v6}];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1005D8348()
{
  v1 = sub_1005D8418();
  v2 = OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText);
  if (v3)
  {
    v4 = [v3 string];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  [v1 setHidden:v9];

  v10 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___textLabel);
  v11 = *(v0 + v2);

  return [v10 setAttributedText:v11];
}

id sub_1005D8418()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___textLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setNumberOfLines:0];
    [v4 setTextAlignment:4];
    [v4 setLineBreakMode:0];
    [v4 setAdjustsFontForContentSizeCategory:1];
    LODWORD(v5) = 1144750080;
    LODWORD(v6) = 1144750080;
    [v4 setLayoutSize:NUIContainerViewSizeUseDefault[0] withHorizontalContentPriority:NUIContainerViewSizeUseDefault[1] verticalContentPriority:{v5, v6}];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1005D8524(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_icon] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___iconImageView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___textLabel] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_1005D85E8();

  return v10;
}

uint64_t sub_1005D85E8()
{
  [v0 setAxis:0];
  [v0 setDistribution:6];
  [v0 setAlignment:2];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1005D8A70;
  *(v2 + 24) = v1;
  v6[4] = sub_100026410;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100026440;
  v6[3] = &unk_1007325D8;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v4 performBatchUpdates:v3];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1005D87D0(void *a1)
{
  sub_100058000(&qword_10076B780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D410;
  *(v2 + 32) = sub_1005D82AC();
  *(v2 + 40) = sub_1005D8418();
  sub_10014C480();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setArrangedSubviews:isa];
}

id sub_1005D8950(void *a1)
{
  v2 = OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_icon;
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_icon);
  *(v1 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_icon) = a1;
  v4 = a1;

  v5 = sub_1005D82AC();
  [v5 setHidden:*(v1 + v2) == 0];

  v6 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___iconImageView);
  v7 = *(v1 + v2);

  return [v6 setImage:v7];
}

void sub_1005D89D8()
{
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_icon) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___iconImageView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRILocationIndicator____lazy_storage___textLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005D8A78()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100791360);
  v1 = sub_100003E30(v0, qword_100791360);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005D8B40(void *a1, char a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100003540(0, &qword_10076FCB0);
    if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      return sub_1005DB13C(a1);
    }

    static UTType.image.getter();
    UTType.identifier.getter();
    (*(v5 + 8))(v7, v4);
    v9 = String._bridgeToObjectiveC()();

    v10 = [a1 hasItemConformingToTypeIdentifier:v9];

    if (v10)
    {
      return sub_1005DB13C(a1);
    }
  }

  if ((a2 & 2) != 0)
  {
    sub_100003540(0, &unk_1007755E0);
    if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      return sub_1005D8EF4(a1);
    }
  }

  if ((a2 & 4) != 0)
  {
    sub_100003540(0, &qword_1007865E0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if ([a1 canLoadObjectOfClass:ObjCClassFromMetadata])
    {
      if ([a1 canLoadObjectOfClass:ObjCClassFromMetadata])
      {
        goto LABEL_15;
      }

LABEL_17:
      sub_1005D8EA0();
      swift_allocError();
      *v16 = 0;
      goto LABEL_18;
    }
  }

  if ((a2 & 8) != 0)
  {
    sub_100003540(0, &qword_1007755F0);
    v12 = swift_getObjCClassFromMetadata();
    if ([a1 canLoadObjectOfClass:v12])
    {
      if ([a1 canLoadObjectOfClass:v12])
      {
LABEL_15:
        NSItemProvider.loadObject<A>(ofType:)();
        v13 = zalgo.getter();
        v14 = dispatch thunk of Promise.then<A>(on:closure:)();

        return v14;
      }

      goto LABEL_17;
    }
  }

  sub_1005D8EA0();
  swift_allocError();
  *v15 = 1;
LABEL_18:
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  return Promise.init(error:)();
}

unint64_t sub_1005D8EA0()
{
  result = qword_100791378;
  if (!qword_100791378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100791378);
  }

  return result;
}

uint64_t sub_1005D8EF4(void *a1)
{
  v2 = v1;
  sub_100003540(0, &unk_1007755E0);
  if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
  {
    NSItemProvider.loadObject<A>(ofType:)();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = a1;
    v6 = zalgo.getter();
    v7 = dispatch thunk of Promise.then<A>(on:closure:)();

    return v7;
  }

  else
  {
    sub_1005D8EA0();
    swift_allocError();
    *v9 = 0;
    sub_100058000(&qword_10076C6C0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1005D902C@<X0>(char *a1@<X8>)
{
  v3 = sub_100058000(&unk_100775840);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;

  UTType.init(_:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_100775840);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  else
  {
    v18[1] = v1;
    v14 = *(v7 + 32);
    v14(v12, v5, v6);
    static UTType.image.getter();
    v15 = UTType.conforms(to:)();
    v16 = *(v7 + 8);
    v16(v9, v6);
    v17 = (v7 + 56);
    if (v15)
    {
      v14(a1, v12, v6);
      return (*v17)(a1, 0, 1, v6);
    }

    else
    {
      v16(v12, v6);
      return (*v17)(a1, 1, 1, v6);
    }
  }
}

void sub_1005D929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  UTType.identifier.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v14[4] = sub_1005DB7B8;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1005D9CAC;
  v14[3] = &unk_100732628;
  v12 = _Block_copy(v14);

  v13 = [a5 loadInPlaceFileRepresentationForTypeIdentifier:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_1005D93D8(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v58 = a6;
  v53 = a4;
  v54 = a5;
  v56 = a2;
  v10 = type metadata accessor for URL();
  v59 = *(v10 - 8);
  __chkstk_darwin(v10);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  if (qword_1007674D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_100791360);
  sub_10000794C(a1, v17, &unk_100775660);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v55 = v10;
    v52 = a7;
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v21 = 136315650;
    v22 = Optional.descriptionOrNil.getter();
    v24 = v23;
    sub_1000079B4(v17, &unk_100775660);
    v25 = sub_100004060(v22, v24, &v60);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (v56)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v56)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_100004060(v26, v27, &v60);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    aBlock = v29;
    v62 = v31;
    sub_100058000(qword_100771B80);
    v32 = Optional.descriptionOrNil.getter();
    v34 = v33;

    v35 = sub_100004060(v32, v34, &v60);

    *(v21 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v19, v20, "TTRRemindersListImportedContent: finish loading in place file representation {url: %s, isInPlace: %s, error: %s}", v21, 0x20u);
    swift_arrayDestroy();

    a7 = v52;
    v10 = v55;
  }

  else
  {

    sub_1000079B4(v17, &unk_100775660);
  }

  sub_10000794C(a1, v14, &unk_100775660);
  v36 = v59;
  v37 = (*(v59 + 48))(v14, 1, v10);
  v38 = v57;
  if (v37 == 1)
  {
    sub_1000079B4(v14, &unk_100775660);
    if (!a3)
    {
      v39 = objc_opt_self();
      v40 = String._bridgeToObjectiveC()();
      v41 = [v39 internalErrorWithDebugDescription:v40];

      v58(v41);
      return;
    }

    goto LABEL_20;
  }

  (*(v36 + 32))(v57, v14, v10);
  if (a3)
  {
    (*(v36 + 8))(v38, v10);
LABEL_20:
    swift_errorRetain();
    v58(a3);

    return;
  }

  v42 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:0];
  v43 = v38;
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v47 = swift_allocObject();
  v55 = v10;
  v48 = v47;
  v49 = v54;
  v47[2] = v53;
  v47[3] = v49;
  v47[4] = v58;
  v47[5] = a7;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1005DB7C4;
  *(v50 + 24) = v48;
  v65 = sub_1005DB7D0;
  v66 = v50;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_1005D9BC8;
  v64 = &unk_1007326A0;
  v51 = _Block_copy(&aBlock);

  [v42 coordinateReadingItemAtURL:v46 options:1 error:0 byAccessor:v51];
  _Block_release(v51);

  (*(v36 + 8))(v43, v55);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
  }
}

uint64_t sub_1005D9A6C(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for TTRDirectlySavableImageData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(contentsOf:options:)();
  v9 = v8;
  sub_1002354D0(v7, v8);
  TTRDirectlySavableImageData.init(data:)();
  a2(v6);
  sub_100139D84(v7, v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005D9BC8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1005D9CAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a4;
  v11(v10, a3, a4);

  return sub_1000079B4(v10, &unk_100775660);
}

uint64_t sub_1005D9E0C(void **a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100775840);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for TTRDirectlySavableImageData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = type metadata accessor for UTType();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = v14;
  TTRDirectlySavableImageData.init(image:sourceUTI:)();
  if (!v1)
  {
    (*(v8 + 16))(v10, v13, v7);
    sub_100058000(&qword_100791380);
    swift_allocObject();
    v2 = Promise.init(value:)();
    (*(v8 + 8))(v13, v7);
  }

  return v2;
}

uint64_t sub_1005DA004(uint64_t a1)
{
  v2 = sub_100058000(&qword_100791388);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8._object = 0x800000010068EE20;
  v9._countAndFlagsBits = 0xD00000000000004ELL;
  v9._object = 0x800000010068EE40;
  v8._countAndFlagsBits = 0xD000000000000013;
  TTRLocalizedString(_:comment:)(v8, v9);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = type metadata accessor for TTRDirectlySavableImageData();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4, a1, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  v13 = objc_allocWithZone(type metadata accessor for TTRRemindersListImportedContent());
  v15[1] = TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)();
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_1005DA23C(void **a1, uint64_t a2, void *a3)
{
  v5 = sub_100058000(&qword_100791388);
  __chkstk_darwin(v5 - 8);
  v7 = v34 - v6;
  v8 = sub_100058000(&unk_100775660);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v34 - v10;
  v12 = *a1;
  v13 = [v12 absoluteString];
  if (v13 && (v14 = v13, v15 = [v13 isMailURL], v14, v15))
  {
    sub_100003540(0, &qword_1007865E0);
    if ([a3 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      NSItemProvider.loadObject<A>(ofType:)();
      v16 = zalgo.getter();
      type metadata accessor for TTRRemindersListImportedContent();
      dispatch thunk of Promise.then<A>(on:closure:)();
    }

    else
    {
      sub_1005D8EA0();
      swift_allocError();
      *v30 = 0;
      sub_100058000(&qword_10076C6C0);
      swift_allocObject();
      Promise.init(error:)();
    }

    *(swift_allocObject() + 16) = v12;
    v31 = v12;
    v32 = zalgo.getter();
    type metadata accessor for TTRRemindersListImportedContent();
    v33 = dispatch thunk of Promise.then<A>(on:closure:)();

    return v33;
  }

  else
  {
    v17 = [v12 _title];
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v23 = [v12 resourceSpecifier];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28._countAndFlagsBits = 12079;
        v28._object = 0xE200000000000000;
        if (String.hasPrefix(_:)(v28))
        {
          sub_1005DB08C(2uLL, v25, v27, v29);

          static String._fromSubstring(_:)();
        }
      }
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
    v20 = type metadata accessor for TTRDirectlySavableImageData();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = objc_allocWithZone(type metadata accessor for TTRRemindersListImportedContent());
    v34[1] = TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)();
    sub_100058000(&qword_10076C6C0);
    swift_allocObject();
    return Promise.init(value:)();
  }
}

uint64_t sub_1005DA688()
{
  v0 = sub_100058000(&qword_100791388);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_allocWithZone(REMUserActivity);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 initWithUniversalLink:v12];

  (*(v7 + 8))(v9, v6);
  TTRRemindersListImportedContent.title.getter();
  (*(v7 + 56))(v5, 1, 1, v6);
  v15 = type metadata accessor for TTRDirectlySavableImageData();
  (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
  objc_allocWithZone(type metadata accessor for TTRRemindersListImportedContent());
  v16 = v14;
  v19[1] = TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)();
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  v17 = Promise.init(value:)();

  return v17;
}

uint64_t sub_1005DA934(void *a1)
{
  v2 = sub_100058000(&qword_100791388);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v8 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = *a1;
  v47 = [objc_allocWithZone(REMUserActivity) initWithUserActivity:*a1];
  v17 = [v16 title];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v20;
    countAndFlagsBits = v19;
  }

  else
  {
    v21._countAndFlagsBits = 0x7265646E696D6552;
    v22._object = 0x800000010068EE90;
    v21._object = 0xE800000000000000;
    v22._countAndFlagsBits = 0xD00000000000006ELL;
    v23 = TTRLocalizedString(_:comment:)(v21, v22);
    object = v23._object;
    countAndFlagsBits = v23._countAndFlagsBits;
  }

  v24 = [v16 contentAttributeSet];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 textSelected];

    if (v26)
    {
LABEL_6:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_21;
    }
  }

  v44 = v4;
  v27 = [v16 activityType];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v36 = [v16 contentAttributeSet];
      if (!v36)
      {
        v4 = v44;
        goto LABEL_21;
      }

      v37 = v36;
      v26 = [v36 contentDescription];

      v4 = v44;
      if (!v26)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }
  }

  v33 = [v16 webpageURL];
  if (v33)
  {
    v34 = v33;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 56))(v12, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v12, 1, 1, v5);
  }

  v4 = v44;
  sub_1000A9578(v12, v15);
  if ((*(v6 + 48))(v15, 1, v5))
  {
    sub_1000079B4(v15, &unk_100775660);
  }

  else
  {
    v35 = v43;
    (*(v6 + 16))(v43, v15, v5);
    sub_1000079B4(v15, &unk_100775660);
    URL.host.getter();
    (*(v6 + 8))(v35, v5);
  }

LABEL_21:
  (*(v6 + 56))(v48, 1, 1, v5);
  v38 = type metadata accessor for TTRDirectlySavableImageData();
  (*(*(v38 - 8) + 56))(v4, 1, 1, v38);
  v39 = objc_allocWithZone(type metadata accessor for TTRRemindersListImportedContent());
  v40 = v47;
  v49 = TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)();
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  v41 = Promise.init(value:)();

  return v41;
}

uint64_t sub_1005DAEB4()
{
  v0 = sub_100058000(&qword_100791388);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  v3 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for TTRDirectlySavableImageData();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = objc_allocWithZone(type metadata accessor for TTRRemindersListImportedContent());
  v10[1] = TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)();
  sub_100058000(&qword_10076C6C0);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_1005DB08C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = String.index(_:offsetBy:limitedBy:)();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_1005DB13C(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_100058000(&unk_100775840);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = [a1 registeredTypeIdentifiers];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v16;
  sub_100058000(&unk_100781F20);
  sub_1005DB74C();
  Sequence.firstMap<A>(_:)();

  sub_10000794C(v14, v10, &unk_100775840);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1000079B4(v10, &unk_100775840);
    sub_100003540(0, &qword_10076FCB0);
    if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      NSItemProvider.loadObject<A>(ofType:)();
      v17 = zalgo.getter();
      type metadata accessor for TTRDirectlySavableImageData();
      dispatch thunk of Promise.then<A>(on:closure:)();
    }

    else
    {
      v33 = objc_opt_self();
      v34 = String._bridgeToObjectiveC()();
      v35 = [v33 internalErrorWithDebugDescription:v34];

      sub_100058000(&qword_100791380);
      swift_allocObject();
      Promise.init(error:)();
    }
  }

  else
  {
    v40 = a1;
    (*(v3 + 32))(v7, v10, v2);
    v18 = v7;
    if (qword_1007674D8 != -1)
    {
      swift_once();
    }

    v41 = v14;
    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100791360);
    v20 = v42;
    (*(v3 + 16))(v42, v7, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v18;
      v25 = v24;
      v43 = v24;
      *v23 = 136315138;
      v26 = UTType.identifier.getter();
      v27 = v20;
      v29 = v28;
      v30 = *(v3 + 8);
      v30(v27, v2);
      v31 = sub_100004060(v26, v29, &v43);

      *(v23 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "TTRRemindersListImportedContent: loading in place file representation from NSItemProvider {UTI: %s}", v23, 0xCu);
      sub_100004758(v25);
      v18 = v39;
    }

    else
    {

      v30 = *(v3 + 8);
      v32 = (v30)(v20, v2);
    }

    __chkstk_darwin(v32);
    *(&v39 - 2) = v40;
    *(&v39 - 1) = v18;
    sub_100058000(&qword_100791380);
    swift_allocObject();
    Promise.init(resolver:)();

    v30(v18, v2);
    v14 = v41;
  }

  v36 = zalgo.getter();
  type metadata accessor for TTRRemindersListImportedContent();
  v37 = dispatch thunk of Promise.then<A>(on:closure:)();

  sub_1000079B4(v14, &unk_100775840);
  return v37;
}

unint64_t sub_1005DB74C()
{
  result = qword_10076DB20;
  if (!qword_10076DB20)
  {
    sub_10005D20C(&unk_100781F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076DB20);
  }

  return result;
}

uint64_t sub_1005DB830(void *a1, char a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100003540(0, &qword_10076FCB0);
    if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      return 1;
    }

    static UTType.image.getter();
    UTType.identifier.getter();
    (*(v5 + 8))(v7, v4);
    v9 = String._bridgeToObjectiveC()();

    v10 = [a1 hasItemConformingToTypeIdentifier:v9];

    if (v10)
    {
      return 1;
    }
  }

  if ((a2 & 2) != 0)
  {
    sub_100003540(0, &unk_1007755E0);
    if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      return 1;
    }
  }

  if ((a2 & 4) != 0)
  {
    sub_100003540(0, &qword_1007865E0);
    if ([a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      return 1;
    }
  }

  if ((a2 & 8) == 0)
  {
    return 0;
  }

  sub_100003540(0, &qword_1007755F0);
  return [a1 canLoadObjectOfClass:swift_getObjCClassFromMetadata()];
}

unint64_t sub_1005DBA4C()
{
  result = qword_100791390;
  if (!qword_100791390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100791390);
  }

  return result;
}

void sub_1005DBAA8()
{
  v1 = &v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_contentView];
  v2 = *&v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_contentView];
  if (v2)
  {
    swift_getObjectType();
    v3 = &v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
    v4 = *(v3 + 1);
    v17 = *v3;
    v18 = v4;
    v19 = *(v3 + 2);
    v20 = *(v3 + 6);
    sub_1003DE974();
    v15 = swift_allocObject();
    v5 = *(v3 + 1);
    *(v15 + 16) = *v3;
    *(v15 + 32) = v5;
    *(v15 + 48) = *(v3 + 2);
    *(v15 + 64) = *(v3 + 6);
    v6 = v2;
    sub_10008E15C(&v17, v16);
    dispatch thunk of UIContentView.configuration.setter();
  }

  else
  {
    v7 = *&v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 16];
    v17 = *&v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
    v18 = v7;
    v19 = *&v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 32];
    v20 = *&v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 48];
    v8 = objc_allocWithZone(type metadata accessor for CompletedCellContentView());
    sub_10008E15C(&v17, v16);
    v9 = v0;
    sub_1004D0DEC(&v17);
    v11 = v10;
    v12 = sub_1005DC50C();
    v13 = *v1;
    *v1 = v11;
    *(v1 + 1) = v12;
    v14 = v11;

    [v9 insertArrangedSubview:v14 atIndex:1];
    [v9 setAlignment:3 forView:v14 inAxis:1];
  }
}

uint64_t sub_1005DBC30(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *(v11 + 8) = 0;
  v11[18] = 1;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  v12 = &v4[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_contentView];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_viewHeightSubject;
  sub_100058000(&qword_100769E68);
  swift_allocObject();
  *&v4[v13] = PassthroughSubject.init()();
  v14 = [objc_allocWithZone(UIView) init];
  LOBYTE(v13) = static REMFeatureFlags.isSolariumEnabled.getter();
  v15 = objc_opt_self();
  v16 = &selRef_clearColor;
  if ((v13 & 1) == 0)
  {
    v16 = &selRef_systemBackgroundColor;
  }

  v17 = [v15 *v16];
  [v14 setBackgroundColor:v17];

  *&v5[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_backgroundView] = v14;
  objc_allocWithZone(type metadata accessor for TTRISeparator());
  v18 = v14;
  v19 = TTRISeparator.init(axis:)();
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    [v19 setEdgesPreservingSuperviewLayoutMargins:10];
  }

  *&v5[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_separator] = v19;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = v19;
  v21 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v18;
  v22[4] = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1005DC63C;
  *(v23 + 24) = v22;
  v30[4] = sub_100026410;
  v30[5] = v23;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_100026440;
  v30[3] = &unk_100732820;
  v24 = _Block_copy(v30);
  v25 = v21;
  v26 = v18;
  v27 = v20;
  v28 = v25;

  [v28 performBatchUpdates:v24];

  _Block_release(v24);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    return v28;
  }

  __break(1u);
  return result;
}

void sub_1005DBF78(void *a1, void *a2, void *a3)
{
  [a1 setHorizontalAlignment:0];
  [a1 setVerticalAlignment:0];
  [a1 setDirectionalLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [a1 setLayoutMarginsRelativeArrangement:0];
  [a1 setDebugBoundingBoxesEnabled:0];
  [a1 setEdgesPreservingSuperviewLayoutMargins:10];
  sub_100058000(&qword_10076B780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D410;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_10014C480();
  v7 = a2;
  v8 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setArrangedSubviews:isa];

  [a1 setAlignment:4 forView:v8 inAxis:1];
  sub_1005DBAA8();
}

uint64_t sub_1005DC118()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    if (v2 == 1)
    {
      v3 = 8;
    }

    else
    {
      v3 = 2;
    }

    [*&v0[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_separator] setEdgesPreservingSuperviewLayoutMargins:v3];
  }

  [v0 bounds];
  CGRectGetHeight(v6);
  return PassthroughSubject.send(_:)();
}

id sub_1005DC2B4()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_contentView);
  if (result)
  {
    result = [result accessibilityElements];
    if (result)
    {
      v2 = result;
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

id sub_1005DC394()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_contentView);
  if (result)
  {
    result = [result accessibilityLabel];
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

unint64_t sub_1005DC50C()
{
  result = qword_100787720;
  if (!qword_100787720)
  {
    type metadata accessor for CompletedCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787720);
  }

  return result;
}

void sub_1005DC564()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration;
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 18) = 1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  v2 = (v0 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_contentView);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_viewHeightSubject;
  sub_100058000(&qword_100769E68);
  swift_allocObject();
  *(v0 + v3) = PassthroughSubject.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005DC648()
{
  v0 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100036110();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() imageNamed:v4];

  UIListContentConfiguration.textProperties.getter();
  v6 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v1 + 8))(v3, v0);
  UIFont.withBoldTrait()();

  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v7(v11, 0);
  v8 = v5;
  UIListContentConfiguration.image.setter();
  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v10(v11, 0);
}

uint64_t sub_1005DC824()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v26 = &v26 - v5;
  v6 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v12[*(v10 + 28)], v8, &unk_10077A660);
  v20 = sub_100058000(&qword_10077A670);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    sub_1000299A4(v12);
    return sub_1000079B4(v8, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v12);
    (*(v21 + 8))(v8, v20);
    (*(v14 + 32))(v19, v16, v13);
    v23 = v26;
    TTRAccountsListsViewModel.Item.group.getter();
    v24 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
    swift_beginAccess();
    v25 = v27;
    sub_10000794C(v1 + v24, v27, &unk_10076B7F0);
    swift_beginAccess();
    sub_1005DDF20(v23, v1 + v24);
    swift_endAccess();
    sub_1005DD4F0(v25);
    sub_1000079B4(v25, &unk_10076B7F0);
    sub_1000079B4(v23, &unk_10076B7F0);
    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_1005DCC1C()
{
  *&v33 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v33 - 8);
  __chkstk_darwin(v33);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
  swift_beginAccess();
  sub_10000794C(v0 + v11, v6, &unk_10076B7F0);
  v12 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &unk_10076B7F0);
    return 0;
  }

  else
  {
    v14 = *(v8 + 32);
    v15 = v10;
    v32 = v7;
    v14(v10, v6, v7);
    sub_10003139C(v3);
    v16 = sub_10016D594(v3, _swiftEmptyArrayStorage);
    v18 = v17;
    (*(v1 + 8))(v3, v33);
    static TTRAccesibility.AccountsList.Format.GroupName_ItemCount.getter();
    sub_100058000(&unk_100786CB0);
    v19 = swift_allocObject();
    v33 = xmmword_10062D3F0;
    *(v19 + 16) = xmmword_10062D3F0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10005C390();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v20 = TTRAccountsListsViewModel.Group.count.getter();
    *(v19 + 96) = &type metadata for Int;
    *(v19 + 104) = &protocol witness table for Int;
    *(v19 + 72) = v20;
    v21 = String.init(format:_:)();
    v23 = v22;

    static TTRAccesibility.AccountsList.Format.ItemCount.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10062D400;
    v25 = TTRAccountsListsViewModel.Group.listCount.getter();
    *(v24 + 56) = &type metadata for Int;
    *(v24 + 64) = &protocol witness table for Int;
    *(v24 + 32) = v25;
    v26 = String.init(format:_:)();
    v28 = v27;

    sub_100058000(&unk_100771E10);
    v29 = swift_allocObject();
    *(v29 + 16) = v33;
    *(v29 + 32) = v21;
    *(v29 + 40) = v23;
    *(v29 + 48) = v26;
    *(v29 + 56) = v28;
    v34 = v29;
    static TTRAccesibility.General.Label.Separator.getter();
    sub_100058000(&unk_100781F20);
    sub_10006089C();
    v30 = BidirectionalCollection<>.joined(separator:)();

    (*(v12 + 8))(v15, v32);
    return v30;
  }
}

id sub_1005DD04C(void *a1, uint64_t a2, void (*a3)(void))
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

void *sub_1005DD140()
{
  v1 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  if ([v0 isEditing])
  {
    static TTRAccesibility.AccountsList.Action.GroupInfo.getter();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_allocWithZone(UIAccessibilityCustomAction);

    v4 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1005DE024;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044E9F0;
    aBlock[3] = &unk_100732870;
    v5 = _Block_copy(aBlock);
    v6 = [v3 initWithName:v4 actionHandler:v5];

    _Block_release(v5);

    v7 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v10;
  }

  return v1;
}

BOOL sub_1005DD2EC()
{
  v0 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10048B088(v2);
      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v2, &unk_100771B40);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10042BF78(v6);

        (*(v4 + 8))(v6, v3);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return Strong != 0;
}

uint64_t sub_1005DD4F0(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100791430);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &unk_10076B7F0);
  sub_10000794C(a1, &v12[v14], &unk_10076B7F0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000079B4(v12, &unk_10076B7F0);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &unk_10076B7F0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100791430);
    return sub_1005DD83C();
  }

  v17 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_1005DDF90(&qword_100791438, &type metadata accessor for TTRAccountsListsViewModel.Group);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v8, v3);
  result = sub_1000079B4(v12, &unk_10076B7F0);
  if ((v18 & 1) == 0)
  {
    return sub_1005DD83C();
  }

  return result;
}

uint64_t sub_1005DD83C()
{
  v1 = v0;
  v2 = type metadata accessor for AppEntityID();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIListContentConfiguration();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
  swift_beginAccess();
  sub_10000794C(&v1[v17], v12, &unk_10076B7F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000079B4(v12, &unk_10076B7F0);
  }

  v33 = v14;
  v34 = v13;
  (*(v14 + 32))(v16, v12, v13);
  sub_10003139C(v9);
  TTRAccountsListsViewModel.Group.name.getter();
  UIListContentConfiguration.text.setter();
  v19 = v36;
  v20 = *(v36 + 16);
  v35 = v9;
  v20(v6, v9, v4);
  v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized] = 1;
  v40[3] = v4;
  v40[4] = &protocol witness table for UIListContentConfiguration;
  v21 = sub_1000317B8(v40);
  v20(v21, v6, v4);
  UICollectionViewCell.contentConfiguration.setter();
  v22 = *(v19 + 8);
  v22(v6, v4);
  v23 = TTRAccountsListsViewModel.Group.countText.getter();
  v25 = &v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
  v26 = *&v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
  v27 = *&v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 8];
  v28 = v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 16];
  *v25 = v23;
  *(v25 + 1) = v24;
  v25[16] = 1;
  if (!v27 || (v23 != v26 || v27 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v28 & 1) == 0)
  {
    [v1 setNeedsUpdateConfiguration];
  }

  v29 = TTRAccountsListsViewModel.Group.objectID.getter();
  type metadata accessor for GroupEntity();
  v30 = v29;
  v31 = v37;
  AppEntityID.init(objectID:)();
  sub_1005DDF90(&qword_10076BE30, &type metadata accessor for GroupEntity);
  UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

  (*(v38 + 8))(v31, v39);
  v22(v35, v4);
  return (*(v33 + 8))(v16, v34);
}

uint64_t sub_1005DDF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076B7F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DDF90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005DDFD8()
{
  result = qword_10076BCE0;
  if (!qword_10076BCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BCE0);
  }

  return result;
}

uint64_t sub_1005DE02C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100791440);
  v1 = sub_100003E30(v0, qword_100791440);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005DE0F4(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC9Reminders28TTRIHashtagAssociationRouter_activityAlertCapability;
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;
  swift_unknownObjectWeakAssign();
  sub_1001626EC(a2, v2 + OBJC_IVAR____TtC9Reminders28TTRIHashtagAssociationRouter_popoverAnchor);
  v7 = [a1 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    sub_1004BEF2C(a2);
  }

  else
  {
    sub_1004BEF2C(a2);

    v9 = 0;
  }

  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t sub_1005DE1F4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v2 = Strong, v3 = [Strong rootViewController], v2, v3))
    {
      return v3;
    }

    else
    {
      result = UIApp;
      if (UIApp)
      {
        v4 = [UIApp connectedScenes];
        sub_100003540(0, &qword_10077EB68);
        sub_1004694E4();
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100058000(&qword_10077EB78);
        sub_100003540(0, &qword_10078BFE8);
        sub_1005DE6BC();
        Sequence.firstMap<A>(_:)();

        if (v6)
        {
          v5 = [v6 rootViewController];

          return v5;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1005DE37C()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1005DE414, v3, v2);
}

void sub_1005DE444(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v3;
    if ([v4 _isKeyWindowScene])
    {
      v4 = [v4 keyWindow];
    }

    else
    {

      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_1005DE4E4()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1004BEF2C(v0 + OBJC_IVAR____TtC9Reminders28TTRIHashtagAssociationRouter_popoverAnchor);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIHashtagAssociationRouter()
{
  result = qword_100791490;
  if (!qword_100791490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005DE5BC()
{
  sub_1005DE664();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005DE664()
{
  if (!qword_1007914A0)
  {
    type metadata accessor for TTRIPopoverAnchor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007914A0);
    }
  }
}

unint64_t sub_1005DE6BC()
{
  result = qword_10077EB80;
  if (!qword_10077EB80)
  {
    sub_10005D20C(&qword_10077EB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB80);
  }

  return result;
}

void sub_1005DE720()
{
  type metadata accessor for TTRRemindersListInCellModule();
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    sub_1005DF1B8();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *sub_1005DE800(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListInCellModule();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = type metadata accessor for Optional();
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 28);
    v12 = sub_100058000(&qword_100778F80);
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
    *(a1 + *(a3 + 32)) = *(a2 + *(a3 + 32));
  }

  return a1;
}

uint64_t sub_1005DE9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListInCellModule();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 28);
  v7 = sub_100058000(&qword_100778F80);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *sub_1005DEAD0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListInCellModule();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for Optional();
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 28);
  v10 = sub_100058000(&qword_100778F80);
  (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  a1[*(a3 + 32)] = a2[*(a3 + 32)];
  return a1;
}

char *sub_1005DEC48(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListInCellModule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = type metadata accessor for Optional();
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 28);
  v13 = sub_100058000(&qword_100778F80);
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  a1[*(a3 + 32)] = a2[*(a3 + 32)];
  return a1;
}

char *sub_1005DEE24(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListInCellModule();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for Optional();
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 28);
  v10 = sub_100058000(&qword_100778F80);
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  a1[*(a3 + 32)] = a2[*(a3 + 32)];
  return a1;
}

char *sub_1005DEF9C(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListInCellModule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = type metadata accessor for Optional();
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 28);
  v13 = sub_100058000(&qword_100778F80);
  (*(*(v13 - 8) + 40))(&a1[v12], &a2[v12], v13);
  a1[*(a3 + 32)] = a2[*(a3 + 32)];
  return a1;
}

void sub_1005DF1B8()
{
  if (!qword_1007915B8)
  {
    type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
    v0 = type metadata accessor for TTRBoardReminderCellOptionalUpdate();
    if (!v1)
    {
      atomic_store(v0, &qword_1007915B8);
    }
  }
}

uint64_t sub_1005DF210(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = TTRIShowRemindersEditableCellScrollingTarget.resolvedTargetsToTry.getter();
  v29 = v10;
  v30 = a2;
  if (a3)
  {
    v26 = *(v3 + OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_collectionView);
    v11 = *(v10 + 16);
    v24[0] = v10;
    if (v11)
    {
      v14 = *(v7 + 16);
      v13 = v7 + 16;
      v12 = v14;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v16 = *(v13 + 56);
      v17 = (v13 - 8);
      v18 = _swiftEmptyArrayStorage;
      v24[1] = v13;
      v25 = a2;
      v14(v9, v15, v6);
      while (1)
      {
        sub_1005E2344(v9, v26, a2, v31);
        v27 = v31[1];
        v28 = v31[0];
        (*v17)(v9, v6);
        if ((v32 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100547F7C(0, *(v18 + 2) + 1, 1, v18);
          }

          v22 = *(v18 + 2);
          v21 = *(v18 + 3);
          if (v22 >= v21 >> 1)
          {
            v18 = sub_100547F7C((v21 > 1), v22 + 1, 1, v18);
          }

          *(v18 + 2) = v22 + 1;
          v19 = &v18[32 * v22];
          v20 = v27;
          *(v19 + 2) = v28;
          *(v19 + 3) = v20;
          a2 = v25;
        }

        v15 += v16;
        if (!--v11)
        {
          break;
        }

        v12(v9, v15, v6);
      }
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    UIScrollView.scrollRectToFullyVisibleAnimated(_:)(v18);
  }

  else
  {
    UIScrollView.iterativelyScrollRectToFullyVisible(with:)();
  }
}

uint64_t sub_1005DF450()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007915C0);
  v1 = sub_100003E30(v0, qword_1007915C0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005DF518(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100058000(&unk_100771B10);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for IndexPath();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v7;
  v3[15] = v6;

  return _swift_task_switch(sub_1005DF6A8, v7, v6);
}

uint64_t sub_1005DF6A8()
{
  v1 = 0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_collectionView;
  v0[16] = OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_dataSource;
  v0[17] = v2;
  while (1)
  {
    v0[18] = v1;
    if (v1 == 5)
    {

LABEL_26:
      v10 = 0;
      goto LABEL_27;
    }

    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v25 = v0[8];

      sub_1000079B4(v25, &unk_100771B10);
      if (qword_1007674E8 != -1)
      {
        swift_once();
      }

      v27 = v0[6];
      v26 = v0[7];
      v28 = v0[5];
      v29 = v0[2];
      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_1007915C0);
      (*(v27 + 16))(v26, v29, v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      v33 = os_log_type_enabled(v31, v32);
      v35 = v0[6];
      v34 = v0[7];
      v36 = v0[5];
      if (v33)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315138;
        sub_1005E2960();
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        (*(v35 + 8))(v34, v36);
        v42 = sub_100004060(v39, v41, &v57);

        *(v37 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v31, v32, "TTRIBoardColumnScrollingController: indexPath not found {itemID: %s}", v37, 0xCu);
        sub_100004758(v38);
      }

      else
      {

        (*(v35 + 8))(v34, v36);
      }

      goto LABEL_26;
    }

    v6 = v0[17];
    v7 = v0[4];
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v8 = *(v7 + v6);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v10 = [v8 cellForItemAtIndexPath:isa];

    if (!v1 || !v10)
    {
      if (v1)
      {
        if (static Task<>.isCancelled.getter())
        {

          if (qword_1007674E8 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_100003E30(v48, qword_1007915C0);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v49, v50, "TTRIBoardColumnScrollingController: task canceled", v51, 2u);
          }

          v53 = v0[10];
          v52 = v0[11];
          v54 = v0[9];

          (*(v53 + 8))(v52, v54);
          goto LABEL_27;
        }

        if (qword_1007674E8 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_100003E30(v11, qword_1007915C0);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = v1;
          _os_log_impl(&_mh_execute_header, v12, v13, "TTRIBoardColumnScrollingController: additional scrollToItem animated {pass: %ld}", v14, 0xCu);
        }
      }

      v15 = v0[3];
      v16 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v8 scrollToItemAtIndexPath:v16 atScrollPosition:v15 animated:1];
    }

    v17 = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v8 cellForItemAtIndexPath:v17];
    v0[19] = v18;

    v19 = v0[11];
    if (!v18)
    {
      break;
    }

    v20 = v0[18];
    v21 = v0[19];
    v22 = v0[9];
    v23 = *(v0[10] + 8);
    v24 = v21;
    v23(v19, v22);
    v1 = v20 + 1;
    if (v21)
    {
      v10 = v0[19];

LABEL_27:
      v46 = sub_1005E2844(v10);

      v47 = v0[1];

      return v47(v46);
    }
  }

  v43 = v0[4];
  v0[20] = static MainActor.shared.getter();
  v44 = swift_task_alloc();
  v0[21] = v44;
  *(v44 + 16) = v43;
  *(v44 + 24) = v19;
  v45 = swift_task_alloc();
  v0[22] = v45;
  *v45 = v0;
  v45[1] = sub_1005DFD18;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1005DFD18()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1005DFE78, v3, v2);
}

uint64_t sub_1005DFE78()
{
  while (1)
  {
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[11];
    v8 = v0[9];
    v9 = *(v0[10] + 8);
    v10 = v6;
    v9(v7, v8);
    if (v6)
    {
      v24 = v0[19];

      goto LABEL_29;
    }

    v11 = v5 + 1;
    v0[18] = v11;
    if (v11 == 5)
    {

      goto LABEL_28;
    }

    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[8];
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      break;
    }

    v15 = v0[17];
    v16 = v0[4];
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v17 = *(v16 + v15);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [v17 cellForItemAtIndexPath:isa];

    if (!v19)
    {
      if (static Task<>.isCancelled.getter())
      {

        if (qword_1007674E8 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_100003E30(v47, qword_1007915C0);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "TTRIBoardColumnScrollingController: task canceled", v50, 2u);
        }

        v52 = v0[10];
        v51 = v0[11];
        v53 = v0[9];

        (*(v52 + 8))(v51, v53);
        goto LABEL_28;
      }

      if (qword_1007674E8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_1007915C0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v21, v22, "TTRIBoardColumnScrollingController: additional scrollToItem animated {pass: %ld}", v23, 0xCu);
      }

      v1 = v0[3];
      v2 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v17 scrollToItemAtIndexPath:v2 atScrollPosition:v1 animated:1];
    }

    v3 = IndexPath._bridgeToObjectiveC()().super.isa;
    v4 = [v17 cellForItemAtIndexPath:v3];
    v0[19] = v4;

    if (!v4)
    {
      v43 = v0[11];
      v44 = v0[4];
      v0[20] = static MainActor.shared.getter();
      v45 = swift_task_alloc();
      v0[21] = v45;
      *(v45 + 16) = v44;
      *(v45 + 24) = v43;
      v46 = swift_task_alloc();
      v0[22] = v46;
      *v46 = v0;
      v46[1] = sub_1005DFD18;

      return withTaskGroup<A, B>(of:returning:isolation:body:)();
    }
  }

  v25 = v0[8];

  sub_1000079B4(v25, &unk_100771B10);
  if (qword_1007674E8 != -1)
  {
    swift_once();
  }

  v27 = v0[6];
  v26 = v0[7];
  v28 = v0[5];
  v29 = v0[2];
  v30 = type metadata accessor for Logger();
  sub_100003E30(v30, qword_1007915C0);
  (*(v27 + 16))(v26, v29, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[6];
  v34 = v0[7];
  v36 = v0[5];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58 = v38;
    *v37 = 136315138;
    sub_1005E2960();
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v35 + 8))(v34, v36);
    v42 = sub_100004060(v39, v41, &v58);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "TTRIBoardColumnScrollingController: indexPath not found {itemID: %s}", v37, 0xCu);
    sub_100004758(v38);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
  }

LABEL_28:
  v24 = 0;
LABEL_29:
  v54 = sub_1005E2844(v24);

  v55 = v0[1];

  return v55(v54);
}

uint64_t sub_1005E04D8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_100058000(&unk_100771B10);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for IndexPath();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v6;
  v3[17] = v5;

  return _swift_task_switch(sub_1005E0608, v6, v5);
}

uint64_t sub_1005E0608()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];

    sub_1000079B4(v4, &unk_100771B10);
    v5 = 0;
LABEL_9:

    v25 = v0[1];

    return v25(v5);
  }

  v7 = v0[9];
  v6 = v0[10];
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  v8 = *(v6 + OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_collectionView);
  v0[18] = v8;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v8 cellForItemAtIndexPath:isa];

  v11 = v10;
  v12 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v8 scrollToItemAtIndexPath:v12 atScrollPosition:v7 animated:0];

  if (v11)
  {

    v13 = 0;
LABEL_8:

    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];
    v5 = sub_1005E2844(v11);

    (*(v23 + 8))(v22, v24);
    sub_1000301AC(v13);
    goto LABEL_9;
  }

  v14 = v0[10];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v0[19] = v16;
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1005E2DDC;
  *(v17 + 24) = v16;
  v0[6] = sub_100026410;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100026440;
  v0[5] = &unk_1007329D8;
  v18 = _Block_copy(v0 + 2);
  v19 = v14;

  [v15 performWithoutAnimation:v18];
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    return result;
  }

  v21 = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [v8 cellForItemAtIndexPath:v21];

  if (v11)
  {
    v13 = sub_1005E2DDC;
    goto LABEL_8;
  }

  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_1005E09D8;
  v27 = v0[14];

  return sub_1005E0DE4(v27);
}

uint64_t sub_1005E09D8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1005E0AF8, v3, v2);
}

uint64_t sub_1005E0AF8()
{
  v1 = v0[18];

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v1 cellForItemAtIndexPath:isa];

  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = sub_1005E2844(v3);

  (*(v5 + 8))(v4, v6);
  sub_1000301AC(sub_1005E2DDC);

  v8 = v0[1];

  return v8(v7);
}

char *sub_1005E0C00(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *(v7 + 16);
  v12 = v7 + 16;
  v26 = v13;
  v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v15 = *(v12 + 56);
  v16 = _swiftEmptyArrayStorage;
  v24 = a1;
  v25 = a3;
  v13(v10, v14, v6, v8);
  while (1)
  {
    sub_1005E2344(v10, a1, a3, v29);
    v27 = v29[1];
    v28 = v29[0];
    (*(v12 - 8))(v10, v6);
    if ((v30 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100547F7C(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_100547F7C((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      v17 = &v16[32 * v21];
      v19 = v27;
      v18 = v28;
      *(v17 + 2) = v28;
      *(v17 + 3) = v19;
      a1 = v24;
      a3 = v25;
    }

    v14 += v15;
    if (!--v11)
    {
      break;
    }

    v26(v10, v14, v6, v18);
  }

  return v16;
}

uint64_t sub_1005E0DE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100058000(&qword_100782980);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_100058000(&unk_100771B10);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1005E0F1C, v5, v4);
}

uint64_t sub_1005E0F1C()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_willDisplayCell);
  sub_100058000(&qword_100782988);
  sub_10000E188(&qword_100782990, &qword_100782988);
  Publisher<>.rem_bufferedValues.getter();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1005E1078;
  v4 = v0[8];

  return sub_100419F30(v4, &unk_100649138, v2);
}

uint64_t sub_1005E1078()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[5];
    v7 = v2[6];

    (*(v7 + 8))(v5, v6);
    sub_1000079B4(v4, &unk_100771B10);
    v8 = v2[10];
    v9 = v2[11];

    return _swift_task_switch(sub_1005E11F0, v8, v9);
  }
}

uint64_t sub_1005E11F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E1264()
{
  v1[3] = v0;
  v2 = sub_100058000(&qword_100791628);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100058000(&qword_100791630);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v5;
  v1[14] = v4;

  return _swift_task_switch(sub_1005E13DC, v5, v4);
}

uint64_t sub_1005E13DC()
{
  *(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR____TtC9Reminders34TTRIBoardColumnScrollingController_didEndScrollingAnimation);
  sub_100058000(&qword_100769510);
  sub_10000E188(&unk_100784590, &qword_100769510);
  Publisher<>.rem_bufferedValues.getter();

  return _swift_task_switch(sub_1005E14C0, 0, 0);
}

uint64_t sub_1005E14C0()
{
  (*(v0[8] + 16))(v0[9], v0[10], v0[7]);
  sub_10000E188(&qword_100791638, &qword_100791630);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000E188(&qword_100791640, &qword_100791628);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1005E1604;
  v3 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 17, v3, v1);
}

uint64_t sub_1005E1604()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[5];
    v3 = v2[6];
    v5 = v2[4];

    (*(v4 + 8))(v3, v5);
    v6 = TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:);
  }

  else
  {
    v6 = sub_1005E1744;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005E1744()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v3 + 8))(v1, v2);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = sub_1005E1934;
  }

  else
  {
    *(v0 + 128) = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v6 = sub_1005E1830;
    v4 = v7;
    v5 = v9;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1005E1830()
{

  return _swift_task_switch(sub_1005E1898, 0, 0);
}

uint64_t sub_1005E1898()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_1005E1934, v4, v5);
}

uint64_t sub_1005E1934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E19BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for IndexPath();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  sub_100058000(&qword_10076BE10);
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v8;
  v4[13] = v7;

  return _swift_task_switch(sub_1005E1AF8, v8, v7);
}

uint64_t sub_1005E1AF8()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = type metadata accessor for TaskPriority();
  v17 = *(*(v7 - 8) + 56);
  v17(v1, 1, 1, v7);
  (*(v4 + 16))(v2, v6, v3);
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v5;
  (*(v4 + 32))(&v9[v8], v2, v3);
  v10 = v5;
  sub_1005E1FEC(v1, &unk_1006490D8, v9);
  sub_1000079B4(v1, &qword_10076BE10);
  v17(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v12 = v10;
  sub_1005E1FEC(v1, &unk_1006490E8, v11);
  sub_1000079B4(v1, &qword_10076BE10);
  v13 = static MainActor.shared.getter();
  v0[14] = v13;
  v14 = swift_task_alloc();
  v0[15] = v14;
  v15 = sub_100058000(&qword_100791620);
  *v14 = v0;
  v14[1] = sub_1005E1D78;

  return TaskGroup.next(isolation:)(v0 + 16, v13, &protocol witness table for MainActor, v15);
}

uint64_t sub_1005E1D78()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1005E1EBC, v3, v2);
}

uint64_t sub_1005E1EBC()
{

  TaskGroup.cancelAll()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001AA38;

  return sub_1005E0DE4(a5);
}

uint64_t sub_1005E1FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_1005E2C18(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_10076BE10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1005E21F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA3C;

  return sub_1005E1264();
}

void sub_1005E2344(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v51[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [a3 bounds];
    goto LABEL_3;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      if (*(v20 + qword_100786CF0))
      {
        v21 = v20;
        LOBYTE(v51[0]) = 2;

        v22 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

        if (v22)
        {
          type metadata accessor for TTRIReminderTitleTextView();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            [v23 bounds];
            [v21 convertRect:v24 fromCoordinateSpace:?];
            v54 = CGRectInset(v53, 0.0, -12.0);
            x = v54.origin.x;
            y = v54.origin.y;
            width = v54.size.width;
            height = v54.size.height;
            [v21 bounds];
            v59.origin.x = v29;
            v59.origin.y = v30;
            v59.size.width = v31;
            v59.size.height = v32;
            v55.origin.x = x;
            v55.origin.y = y;
            v55.size.width = width;
            v55.size.height = height;
            CGRectIntersection(v55, v59);

            goto LABEL_3;
          }

LABEL_28:

          goto LABEL_3;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_26;
    }

    sub_1004C1A18(v51);
LABEL_24:
    v45 = v51[0];
    v46 = v51[1];
    v47 = v51[2];
    v48 = v51[3];
    v49 = v52;

    if (v49)
    {
      v18 = 1;
      v14 = v45;
      v15 = v46;
      v16 = v47;
      v17 = v48;
      goto LABEL_4;
    }

LABEL_3:
    [a2 convertRect:a3 fromCoordinateSpace:?];
    v18 = 0;
LABEL_4:
    *a4 = v14;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
    return;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      if (*(v33 + qword_100786CF0))
      {
        v34 = v33;
        LOBYTE(v51[0]) = 7;

        v22 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

        if (v22)
        {
          type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
          v35 = swift_dynamicCastClass();
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            [v34 convertRect:v36 fromCoordinateSpace:?];
            v57 = CGRectInset(v56, 0.0, -12.0);
            v37 = v57.origin.x;
            v38 = v57.origin.y;
            v39 = v57.size.width;
            v40 = v57.size.height;
            [v34 bounds];
            v60.origin.x = v41;
            v60.origin.y = v42;
            v60.size.width = v43;
            v60.size.height = v44;
            v58.origin.x = v37;
            v58.origin.y = v38;
            v58.size.width = v39;
            v58.size.height = v40;
            CGRectIntersection(v58, v60);

            goto LABEL_3;
          }

          goto LABEL_28;
        }

LABEL_20:

        goto LABEL_3;
      }

      goto LABEL_30;
    }

LABEL_26:

    v18 = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_26;
    }

    sub_1004C1A34(v51);
    goto LABEL_24;
  }

LABEL_31:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void *sub_1005E2844(void *result)
{
  if (result)
  {
    v1 = result;
    type metadata accessor for TTRIBoardReminderCell();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      return v3;
    }

    else
    {
      v5 = qword_1007674E8;
      v6 = v1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_1007915C0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "TTRIBoardColumnScrollingController: unexpected cell type", v10, 2u);
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1005E2960()
{
  result = qword_10076FDF0;
  if (!qword_10076FDF0)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076FDF0);
  }

  return result;
}

uint64_t sub_1005E29B8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001AA3C;

  return sub_1005E19BC(a1, a2, v7, v6);
}

uint64_t sub_1005E2A6C(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_1005E1F50(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1005E2B64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA38;

  return sub_1005E21F4();
}

uint64_t sub_1005E2C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E2C88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return sub_10001A6BC(a1, v4);
}

uint64_t sub_1005E2D40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10041B550;

  return sub_100419E20(a1, v4);
}

void sub_1005E2E00()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v1 sizeToFit];
  [v1 frame];
  [v0 setPreferredContentSize:{0.0, CGRectGetHeight(v18)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 addSubview:v1];

  sub_100058000(&qword_10076B780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D410;
  v5 = [v0 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 centerXAnchor];

  v8 = [v1 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v4 + 32) = v9;
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_self();
    v13 = [v11 centerYAnchor];

    v14 = [v1 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v4 + 40) = v15;
    sub_100177300();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 activateConstraints:isa];

    [v1 startAnimating];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1005E322C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TTRICollectionViewDropIntent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAdjustedIndexPath();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v38 = &v36 - v19;
  v20 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  (*(v11 + 16))(v13, &v1[*(v20 + 24)], v10);
  v21 = (*(v11 + 88))(v13, v10);
  if (v21 == enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:))
  {
    (*(v11 + 96))(v13, v10);
    v22 = *(sub_100058000(&qword_10076FE60) + 48);
    v37 = *(v15 + 32);
    v37(v18, v13, v14);
    (*(v5 + 32))(v9, &v13[v22], v4);
    v23 = sub_1005E3834();
    if ((v23 - 1) < 2)
    {
      (*(v5 + 8))(v9, v4);
      (*(v15 + 8))(v18, v14);
LABEL_10:
      v33 = 1;
      v25 = v43;
      goto LABEL_11;
    }

    v25 = v43;
    if (v23)
    {
      goto LABEL_14;
    }

    v26 = v42;
    (*(v5 + 16))(v42, v9, v4);
    v27 = (*(v5 + 88))(v26, v4);
    if (v27 == enum case for TTRICollectionViewDropIntent.TargetType.item(_:))
    {
      (*(v5 + 8))(v9, v4);
      v28 = v38;
      v37(v38, v18, v14);
      v29 = *(v1 + 1);
      v42 = *v1;
      v30 = v39;
      (*(v15 + 16))(v39, v28, v14);
      v32 = v40;
      v31 = v41;
      (*(v40 + 104))(v30, enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:), v41);
      sub_1005D0F7C(v30, v29, v25);
      (*(v32 + 8))(v30, v31);
      (*(v15 + 8))(v28, v14);
      v33 = 0;
LABEL_11:
      v34 = type metadata accessor for TTRUnadjustedIndexPath();
      return (*(*(v34 - 8) + 56))(v25, v33, 1, v34);
    }

    if (v27 == enum case for TTRICollectionViewDropIntent.TargetType.emptySpace(_:) || v27 == enum case for TTRICollectionViewDropIntent.TargetType.supplementarySectionHeader(_:))
    {
LABEL_14:
      (*(v5 + 8))(v9, v4);
      (*(v15 + 8))(v18, v14);
      v33 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    if (v21 == enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:))
    {
      (*(v11 + 96))(v13, v10);
      v24 = type metadata accessor for TTRUnadjustedIndexPath();
      (*(*(v24 - 8) + 8))(v13, v24);
      goto LABEL_10;
    }

    if (v21 == enum case for TTRICollectionViewDropIntent.unspecified(_:))
    {
      goto LABEL_10;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005E3834()
{
  v1 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for TTRICollectionViewDropIntent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  (*(v9 + 16))(v11, &v0[*(v12 + 24)], v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = sub_100058000(&qword_10076FE60);
    (*(v2 + 32))(v7, &v11[*(v14 + 48)], v1);
    v15 = *(*(v0 + 1) + 16);
    v16 = v15 < 2;
    if (*(*(v0 + 2) + 16))
    {
      if (!v15)
      {
        v16 = 1;
LABEL_18:
        (*(v2 + 8))(v7, v1);
        v18 = v16;
        v17 = type metadata accessor for TTRAdjustedIndexPath();
        goto LABEL_19;
      }

LABEL_13:
      v16 = 0;
      goto LABEL_18;
    }

    v19 = *(v0 + 3);
    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
      v16 = v20 != 0;
      goto LABEL_18;
    }

    if (v20)
    {
      goto LABEL_13;
    }

    (*(v2 + 16))(v5, v7, v1);
    v21 = (*(v2 + 88))(v5, v1);
    if (v21 == enum case for TTRICollectionViewDropIntent.TargetType.item(_:))
    {
      goto LABEL_18;
    }

    v16 = 0;
    if (v21 == enum case for TTRICollectionViewDropIntent.TargetType.emptySpace(_:) || v21 == enum case for TTRICollectionViewDropIntent.TargetType.supplementarySectionHeader(_:))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v13 == enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:))
    {
      (*(v9 + 96))(v11, v8);
      v17 = type metadata accessor for TTRUnadjustedIndexPath();
      v18 = 2;
LABEL_19:
      (*(*(v17 - 8) + 8))(v11);
      return v18;
    }

    if (v13 == enum case for TTRICollectionViewDropIntent.unspecified(_:))
    {
      return 0;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005E3BE4()
{
  v1._countAndFlagsBits = sub_1005D19B8(*(v0 + 8), *(v0 + 16), *(v0 + 24));
  String.append(_:)(v1);

  v2 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100546970((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x203A67617244;
  *(v5 + 5) = 0xE600000000000000;
  _StringGuts.grow(_:)(16);

  v6._countAndFlagsBits = UIDropOperation.debugHUDInfo.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  type metadata accessor for TTRIRemindersBoardDropProposal(0);
  type metadata accessor for TTRICollectionViewDropIntent();
  sub_1005E6370(&qword_1007919E8, &type metadata accessor for TTRICollectionViewDropIntent);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100546970((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x6C61736F706F7250;
  *(v11 + 5) = 0xEA0000000000203ALL;
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t sub_1005E3E10(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
  v6 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection) = 0;
  v7 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo;
  type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastDropSessionDidUpdateInput;
  v10 = type metadata accessor for IndexPath();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastHitTestResult;
  v12 = type metadata accessor for TTRICollectionViewHitTestResult();
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastTargetIndexPathForMoveCall;
  v14 = type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo.LastTargetIndexPathForMoveCall(0);
  (*(*(v14 - 8) + 56))(v8 + v13, 1, 1, v14);
  *(v8 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastReturnedProposal) = 0;
  *(v8 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_collectionViewHasUncommittedUpdates) = 0;
  *(v2 + v7) = v8;
  v15 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_columnID;
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v16 - 8) + 32))(v2 + v15, a1, v16);
  *(v2 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_session) = a2;
  return v2;
}

uint64_t sub_1005E4000()
{
  v1 = sub_100058000(&qword_1007919F0);
  __chkstk_darwin(v1 - 8);
  v74 = &v70 - v2;
  v75 = type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo.LastTargetIndexPathForMoveCall(0);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100058000(&qword_100769540);
  __chkstk_darwin(v4 - 8);
  v6 = &v70 - v5;
  v7 = type metadata accessor for TTRICollectionViewHitTestResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v10);
  v12 = &v70 - v11;
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v79 = 0xD000000000000021;
  v80 = 0x800000010068F2C0;
  v13 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastDropSessionDidUpdateInput;
  swift_beginAccess();
  v76 = v0;
  sub_10000794C(v0 + v13, v12, &unk_100771B10);
  v14 = Optional.descriptionOrNil.getter();
  v16 = v15;
  sub_1000079B4(v12, &unk_100771B10);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v79;
  v19 = v80;
  v20 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v20 = sub_100546970((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v23;
  v24 = &v20[16 * v22];
  *(v24 + 4) = v18;
  *(v24 + 5) = v19;
  v83 = v20;
  v25 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastHitTestResult;
  v26 = v76;
  swift_beginAccess();
  sub_10000794C(v26 + v25, v6, &qword_100769540);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100769540);
  }

  else
  {
    v27 = v71;
    (*(v8 + 32))(v71, v6, v7);
    v28 = *(v20 + 3);
    if ((v22 + 2) > (v28 >> 1))
    {
      v20 = sub_100546970((v28 > 1), v22 + 2, 1, v20);
    }

    *(v20 + 2) = v22 + 2;
    v29 = &v20[16 * v23];
    *(v29 + 4) = 0xD000000000000015;
    *(v29 + 5) = 0x800000010068F350;
    v30 = TTRICollectionViewHitTestResult.debugHUDInfo.getter();
    v32 = v31;
    v34 = *(v20 + 2);
    v33 = *(v20 + 3);
    if (v34 >= v33 >> 1)
    {
      v20 = sub_100546970((v33 > 1), v34 + 1, 1, v20);
    }

    (*(v8 + 8))(v27, v7);
    *(v20 + 2) = v34 + 1;
    v35 = &v20[16 * v34];
    *(v35 + 4) = v30;
    *(v35 + 5) = v32;
    v83 = v20;
    v26 = v76;
  }

  v36 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastTargetIndexPathForMoveCall;
  swift_beginAccess();
  v37 = v74;
  sub_10000794C(v26 + v36, v74, &qword_1007919F0);
  if ((*(v73 + 48))(v37, 1, v75) == 1)
  {
    sub_1000079B4(v37, &qword_1007919F0);
  }

  else
  {
    v76 = type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo.LastTargetIndexPathForMoveCall;
    v38 = v72;
    sub_1005E6308(v37, v72, type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo.LastTargetIndexPathForMoveCall);
    sub_100058000(&unk_100771E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062F800;
    *(inited + 32) = 0xD000000000000021;
    *(inited + 40) = 0x800000010068F320;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v77 = 0x203A6769724F2020;
    v78 = 0xE800000000000000;
    type metadata accessor for IndexPath();
    sub_1005E6370(&qword_1007720C0, &type metadata accessor for IndexPath);
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 0x203A72727543202CLL;
    v41._object = 0xE800000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    v43 = v78;
    *(inited + 48) = v77;
    *(inited + 56) = v43;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v77 = 0x203A706F72502020;
    v78 = 0xE800000000000000;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0x203A74655220202CLL;
    v45._object = 0xE800000000000000;
    String.append(_:)(v45);
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 8236;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    String.append(_:)(*v38);
    v48 = v78;
    *(inited + 64) = v77;
    *(inited + 72) = v48;
    sub_100081340(inited);
    sub_1005E63B8(v38, v76);
  }

  v49 = *(v26 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastReturnedProposal);
  if (v49)
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    v50 = v49;
    _StringGuts.grow(_:)(21);

    v77 = 0x6F7270207473616CLL;
    v78 = 0xEF203A6C61736F70;
    [v50 operation];
    v51._countAndFlagsBits = UIDropOperation.debugHUDInfo.getter();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 8236;
    v52._object = 0xE200000000000000;
    String.append(_:)(v52);
    [v50 intent];
    v53._countAndFlagsBits = UICollectionViewDropIntent.debugHUDInfo.getter();
    String.append(_:)(v53);

    v54 = v77;
    v55 = v78;
    v56 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_100546970(0, *(v56 + 2) + 1, 1, v56);
    }

    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_100546970((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v59 = &v56[16 * v58];
    *(v59 + 4) = v54;
    *(v59 + 5) = v55;
    v83 = v56;
  }

  else
  {
    v56 = v83;
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v77 = 0xD000000000000025;
  v78 = 0x800000010068F2F0;
  if (*(v26 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_collectionViewHasUncommittedUpdates))
  {
    v60 = 1702195828;
  }

  else
  {
    v60 = 0x65736C6166;
  }

  if (*(v26 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_collectionViewHasUncommittedUpdates))
  {
    v61 = 0xE400000000000000;
  }

  else
  {
    v61 = 0xE500000000000000;
  }

  v62 = v61;
  String.append(_:)(*&v60);

  v63 = v77;
  v64 = v78;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_100546970(0, *(v56 + 2) + 1, 1, v56);
  }

  v66 = *(v56 + 2);
  v65 = *(v56 + 3);
  if (v66 >= v65 >> 1)
  {
    v56 = sub_100546970((v65 > 1), v66 + 1, 1, v56);
  }

  *(v56 + 2) = v66 + 1;
  v67 = &v56[16 * v66];
  *(v67 + 4) = v63;
  *(v67 + 5) = v64;
  v77 = v56;
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v68 = BidirectionalCollection<>.joined(separator:)();

  return v68;
}

uint64_t sub_1005E49EC()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastDropSessionDidUpdateInput, &unk_100771B10);
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastHitTestResult, &qword_100769540);
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastTargetIndexPathForMoveCall, &qword_1007919F0);

  return swift_deallocClassInstance();
}

uint64_t sub_1005E4AB0()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_columnID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal, &unk_10076FE30);

  return swift_deallocClassInstance();
}

void sub_1005E4BB4()
{
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v0 <= 0x3F)
  {
    sub_1005E4E6C(319, &unk_10076FD50, type metadata accessor for TTRIRemindersBoardDropProposal);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005E4D00()
{
  sub_1005E4E6C(319, qword_100771FA0, &type metadata accessor for IndexPath);
  if (v0 <= 0x3F)
  {
    sub_1005E4E6C(319, &qword_100791788, &type metadata accessor for TTRICollectionViewHitTestResult);
    if (v1 <= 0x3F)
    {
      sub_1005E4E6C(319, &unk_100791790, type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo.LastTargetIndexPathForMoveCall);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1005E4E6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

char *sub_1005E4EE0(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = a3[5];
    v9 = type metadata accessor for IndexPath();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v6], &a2[v6], v9);
    v10(&v3[a3[6]], &a2[a3[6]], v9);
    v10(&v3[a3[7]], &a2[a3[7]], v9);
    v10(&v3[a3[8]], &a2[a3[8]], v9);
  }

  return v3;
}

uint64_t sub_1005E5018(uint64_t a1, int *a2)
{

  v4 = a2[5];
  v5 = type metadata accessor for IndexPath();
  v8 = *(*(v5 - 8) + 8);
  (v8)((v5 - 8), a1 + v4, v5);
  v8(a1 + a2[6], v5);
  v8(a1 + a2[7], v5);
  v6 = a1 + a2[8];

  return (v8)(v6, v5);
}

char *sub_1005E50FC(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for IndexPath();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v9(&a1[a3[6]], &a2[a3[6]], v8);
  v9(&a1[a3[7]], &a2[a3[7]], v8);
  v9(&a1[a3[8]], &a2[a3[8]], v8);
  return a1;
}

char *sub_1005E51E8(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = type metadata accessor for IndexPath();
  v8 = *(*(v7 - 8) + 24);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  v8(&a1[a3[7]], &a2[a3[7]], v7);
  v8(&a1[a3[8]], &a2[a3[8]], v7);
  return a1;
}

char *sub_1005E52E4(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for IndexPath();
  v8 = *(*(v7 - 8) + 32);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  v8(&a1[a3[7]], &a2[a3[7]], v7);
  v8(&a1[a3[8]], &a2[a3[8]], v7);
  return a1;
}

char *sub_1005E53C8(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = type metadata accessor for IndexPath();
  v9 = *(*(v8 - 8) + 40);
  v9(&a1[v7], &a2[v7], v8);
  v9(&a1[a3[6]], &a2[a3[6]], v8);
  v9(&a1[a3[7]], &a2[a3[7]], v8);
  v9(&a1[a3[8]], &a2[a3[8]], v8);
  return a1;
}

uint64_t sub_1005E54DC()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1005E5578(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    a1[1] = a2[1];
    a1[2] = v6;
    v7 = a2[4];
    a1[3] = a2[3];
    a1[4] = v7;
    v8 = *(a3 + 24);
    v10 = type metadata accessor for TTRICollectionViewDropIntent();
    v11 = *(*(v10 - 8) + 16);
    swift_unknownObjectRetain();

    v11(&v5[v8], a2 + v8, v10);
  }

  return v5;
}

uint64_t sub_1005E5684(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRICollectionViewDropIntent();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_1005E5710(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  *(a1 + 4) = *(a2 + 4);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRICollectionViewDropIntent();
  v9 = *(*(v8 - 8) + 16);
  swift_unknownObjectRetain();

  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

char *sub_1005E57D4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 4) = *(a2 + 4);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRICollectionViewDropIntent();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_1005E58B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRICollectionViewDropIntent();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

char *sub_1005E5930(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 4) = *(a2 + 4);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRICollectionViewDropIntent();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_1005E5A14()
{
  result = type metadata accessor for TTRICollectionViewDropIntent();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1005E5AB8()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076FE30);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0x44496E6D756C6F63;
  v48 = 0xEA0000000000203ALL;
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_1005E6370(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = v47;
  v11 = v48;
  v12 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_100546970((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[16 * v14];
  *(v15 + 4) = v10;
  *(v15 + 5) = v11;
  v16 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
  swift_beginAccess();
  sub_10000794C(v1 + v16, v4, &unk_10076FE30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_10076FE30);
  }

  else
  {
    sub_1005E6308(v4, v8, type metadata accessor for TTRIRemindersBoardDropProposal);
    if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection))
    {
      v17 = 0x296E657A6F724628;
    }

    else
    {
      v17 = 0;
    }

    if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection))
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v45 = sub_1005E3BE4();
    v46 = v19;

    v20._countAndFlagsBits = v17;
    v20._object = v18;
    String.append(_:)(v20);

    v21 = v45;
    v22 = v46;
    v24 = *(v12 + 2);
    v23 = *(v12 + 3);
    if (v24 >= v23 >> 1)
    {
      v12 = sub_100546970((v23 > 1), v24 + 1, 1, v12);
    }

    sub_1005E63B8(v8, type metadata accessor for TTRIRemindersBoardDropProposal);
    *(v12 + 2) = v24 + 1;
    v25 = &v12[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  v26 = sub_1005E4000();
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v30 = *(v12 + 2);
    v29 = *(v12 + 3);
    v31 = v29 >> 1;
    v32 = v30 + 1;
    if (v29 >> 1 <= v30)
    {
      v38 = v26;
      v39 = v27;
      v40 = sub_100546970((v29 > 1), v30 + 1, 1, v12);
      v27 = v39;
      v12 = v40;
      v26 = v38;
      v29 = *(v12 + 3);
      v31 = v29 >> 1;
    }

    *(v12 + 2) = v32;
    v33 = &v12[16 * v30];
    *(v33 + 4) = 0xD00000000000002BLL;
    *(v33 + 5) = 0x800000010068F290;
    v34 = v30 + 2;
    if (v31 < v34)
    {
      v41 = v26;
      v42 = v27;
      v43 = sub_100546970((v29 > 1), v34, 1, v12);
      v27 = v42;
      v12 = v43;
      v26 = v41;
    }

    *(v12 + 2) = v34;
    v35 = &v12[16 * v32];
    *(v35 + 4) = v26;
    *(v35 + 5) = v27;
  }

  else
  {
  }

  v45 = v12;
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v36 = BidirectionalCollection<>.joined(separator:)();

  return v36;
}

id sub_1005E5F44()
{
  v1 = sub_100058000(&qword_100769558);
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v4 = v0 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
  swift_beginAccess();
  v5 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = type metadata accessor for TTRICollectionViewDropIntent();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    goto LABEL_3;
  }

  v9 = *(v5 + 24);
  v10 = type metadata accessor for TTRICollectionViewDropIntent();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3, v4 + v9, v10);
  (*(v11 + 56))(v3, 0, 1, v10);
  v12 = (*(v11 + 88))(v3, v10);
  if (v12 == enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:))
  {
    (*(v11 + 96))(v3, v10);
    v13 = *(sub_100058000(&qword_10076FE60) + 48);
    v14 = [objc_opt_self() orangeColor];
    v15 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
    (*(*(v15 - 8) + 8))(&v3[v13], v15);
    v16 = type metadata accessor for TTRAdjustedIndexPath();
LABEL_10:
    (*(*(v16 - 8) + 8))(v3, v16);
    return v14;
  }

  if (v12 == enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:))
  {
    (*(v11 + 96))(v3, v10);
    v14 = [objc_opt_self() greenColor];
    v16 = type metadata accessor for TTRUnadjustedIndexPath();
    goto LABEL_10;
  }

  if (v12 != enum case for TTRICollectionViewDropIntent.unspecified(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

LABEL_3:
  v7 = [objc_opt_self() grayColor];

  return v7;
}

uint64_t sub_1005E6308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005E6370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005E63B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1005E6418(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    v8(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v7);
  }

  return a1;
}

uint64_t sub_1005E6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_1005E6624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_1005E6704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_1005E67E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_1005E690C()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *sub_1005E69D4(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v10 = *(*(v9 - 8) + 16);
    v10(&a1[v8], &a2[v8], v9);
    v11 = a3[6];
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    v10(&a1[a3[7]], &a2[a3[7]], v9);
    a1[a3[8]] = a2[a3[8]];
  }

  return a1;
}

uint64_t sub_1005E6B4C(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[5];
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(*(v6 - 8) + 8);
  (v11)((v6 - 8), a1 + v5, v6);
  v7 = a2[6];
  v8 = type metadata accessor for IndexPath();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a1 + a2[7];

  return v11(v9, v6);
}

uint64_t sub_1005E6C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(*(v8 - 8) + 16);
  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[6];
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  v9(a1 + a3[7], a2 + a3[7], v8);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1005E6D90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(*(v8 - 8) + 24);
  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[6];
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  v9(a1 + a3[7], a2 + a3[7], v8);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1005E6EBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(*(v8 - 8) + 32);
  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[6];
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
  v9(a1 + a3[7], a2 + a3[7], v8);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1005E6FE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(*(v8 - 8) + 40);
  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[6];
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  v9(a1 + a3[7], a2 + a3[7], v8);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1005E715C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ItemID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IndexPath();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005E7270(uint64_t a1)
{
  v3 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BC60);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_100058000(&qword_100792068);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1005EBBC4(v1 + v14, v13);
  sub_1005EBBC4(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1000079B4(v13, &qword_10076BC60);
    }

    goto LABEL_6;
  }

  sub_1005EBBC4(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    sub_1005EB500(v9);
LABEL_6:
    sub_1000079B4(v13, &qword_100792068);
    return sub_1005E7F20();
  }

  sub_1005EBC34(&v13[v15], v6);
  v18 = sub_1005EB7E0(v9, v6);
  sub_1005EB500(v6);
  sub_1005EB500(v9);
  result = sub_1000079B4(v13, &qword_10076BC60);
  if ((v18 & 1) == 0)
  {
    return sub_1005E7F20();
  }

  return result;
}

char *sub_1005E7500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listsViewListCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  v7 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityEditingCustomActionName];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionName];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionSFSymbolName];
  *v10 = 0;
  v10[1] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_hidePredefinedSmartListGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_dynamicGlyphImageCache] = 0;
  v11 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_dynamicGlyph;
  v12 = type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState] = 0;
  type metadata accessor for TTRListBadgeView();
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_badge] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TTRIExpandedHitTestButton();
  v13 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  LODWORD(v14) = 1148846080;
  [v13 setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{NUIContainerViewSizeUseDefault[1], v14}];
  [v13 setSelected:1];
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton] = v13;
  v15 = v13;
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v27.receiver = v3;
  v27.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
  v17 = objc_msgSendSuper2(&v27, "initWithStyle:reuseIdentifier:", a1, v16);

  v18 = v17;
  [v18 setEditingAccessoryType:4];
  sub_100003540(0, &qword_10076FCB0);
  v19 = static UIImage.largeSystemImage(named:)();
  [v13 setImage:v19 forState:0];

  v20 = static UIImage.largeSystemImage(named:)();
  [v13 setImage:v20 forState:4];

  [v13 addTarget:v18 action:"toggleSmartListVisibility:" forControlEvents:0x2000];
  v21 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_badge;
  v22 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  v23 = *&v18[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  v24 = *&v18[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_badge];
  [v23 bounds];
  [v24 setFrame:?];

  [*&v18[v21] setAutoresizingMask:18];
  [*&v18[v22] addSubview:*&v18[v21]];
  v25 = *&v18[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];

  [v25 setEnabled:0];
  return v18;
}

uint64_t sub_1005E79D0(double a1, double a2, double a3, double a4)
{
  isEscapingClosureAtFileLocation = v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = sub_1000C3508(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  [isEscapingClosureAtFileLocation frame];
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  v16 = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  if (v12 != a1 || v14 != a2)
  {
    if (!v10)
    {
      v24 = type metadata accessor for TTRIAccountsListsViewListCell(0);
      v27 = isEscapingClosureAtFileLocation;
      v25 = &v27;
      goto LABEL_15;
    }

    if (v10 != 1)
    {
      v15[2] = v12;
      v15[3] = v14;
      v24 = type metadata accessor for TTRIAccountsListsViewListCell(0);
      v29 = isEscapingClosureAtFileLocation;
      v25 = &v29;
      a1 = v12;
      a2 = v14;
      goto LABEL_15;
    }

    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = isEscapingClosureAtFileLocation;
    *(v19 + 24) = v16;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1005EBD48;
    *(v20 + 24) = v19;
    aBlock[4] = sub_100026410;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100732B80;
    v21 = _Block_copy(aBlock);
    v22 = isEscapingClosureAtFileLocation;

    [v18 performWithoutAnimation:v21];
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v24 = type metadata accessor for TTRIAccountsListsViewListCell(0);
  v26 = isEscapingClosureAtFileLocation;
  v25 = &v26;
LABEL_15:
  v25->super_class = v24;
  [(objc_super *)v25 setFrame:a1, a2, a3, a4, v26];
}

id sub_1005E7C70(void *a1, double *a2)
{
  swift_beginAccess();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9.receiver = a1;
  v9.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
  return objc_msgSendSuper2(&v9, "setFrame:", v4, v5, v6, v7);
}

void sub_1005E7CF4()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton];
  if (!v0[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState])
  {
    [*&v0[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton] setSelected:0];
    [v1 setTintColor:0];
    v5 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
    *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl] = 0;
    if (!v5)
    {
      return;
    }

    v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
    v11 = v5;
    [v0 setNeedsLayout];
    goto LABEL_17;
  }

  if (v0[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
    *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl] = v1;
    if (v2)
    {
      v3 = v1 == v2;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v9 = v1;
    }

    else
    {
      v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
      v4 = v1;
      [v0 setNeedsLayout];
    }

    [v1 setSelected:0];
    v11 = [objc_opt_self() tertiaryLabelColor];
    [v1 setTintColor:v11];
LABEL_17:

    return;
  }

  v6 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
  *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl] = v1;
  if (v6)
  {
    v7 = v1 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = v1;
  }

  else
  {
    v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
    v8 = v1;
    [v0 setNeedsLayout];
  }

  [v1 setSelected:1];

  [v1 setTintColor:0];
}

uint64_t sub_1005E7F20()
{
  v1 = v0;
  v2 = type metadata accessor for AppEntityID();
  v182 = *(v2 - 8);
  v183 = v2;
  __chkstk_darwin(v2);
  v181 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for TTRAccountsListsViewModel.List.Badge();
  v178 = *(v180 - 8);
  __chkstk_darwin(v180);
  v177 = (&v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v194 = *(v6 - 8);
  v195 = v6;
  __chkstk_darwin(v6);
  v8 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v188 = *(v9 - 8);
  v189 = v9;
  __chkstk_darwin(v9);
  v187 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRListBadgeView.Shape();
  v184 = *(v11 - 8);
  v185 = v11;
  v12 = __chkstk_darwin(v11);
  v179 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v176 = &v169 - v14;
  v172 = sub_100058000(&qword_100771DD8);
  __chkstk_darwin(v172);
  v16 = (&v169 - v15);
  v196 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v191 = *(v196 - 8);
  v17 = __chkstk_darwin(v196);
  v186 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v169 - v19;
  v21 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v192 = *(v21 - 8);
  v193 = v21;
  __chkstk_darwin(v21);
  v190 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100058000(&qword_10076BC60);
  __chkstk_darwin(v23 - 8);
  v25 = &v169 - v24;
  v26 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v169 - v31;
  v33 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  sub_1005EBBC4(&v1[v33], v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    return sub_1000079B4(v25, &qword_10076BC60);
  }

  sub_1005EBC34(v25, v32);
  v35 = &v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityEditingCustomActionName];
  *v35 = 0;
  v35[1] = 0;
  v169 = v35;

  v36 = &v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionName];
  *v36 = 0;
  v36[1] = 0;
  v170 = v36;

  v37 = &v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionSFSymbolName];
  *v37 = 0;
  v37[1] = 0;

  v171 = v32;
  sub_1005EBB60(v32, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v192 + 32))(v190, v30, v193);
    v38 = 1;
    if (TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter())
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState] = v39;
    sub_1005E7CF4();
    [v1 setEditingAccessoryType:0];
    TTRAccountsListsViewModel.SmartList.type.getter();
    TTRListType.PredefinedSmartListType.longTitle.getter();
    v40 = *(v191 + 8);
    v194 = v191 + 8;
    v195 = v40;
    v40(v20, v196);
    v41 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
    v42 = String._bridgeToObjectiveC()();

    [v41 setText:v42];

    v43 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel];
    v44 = [v43 text];
    if (v44)
    {
      v45 = v44;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v46 & 0xFFFFFFFFFFFFLL;
      }

      v38 = v49 == 0;
    }

    [v43 setText:0];
    v50 = [v43 text];
    if (v50)
    {
      v51 = v50;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if ((v38 ^ (v55 != 0)))
      {
        goto LABEL_16;
      }
    }

    else if (v38)
    {
      goto LABEL_16;
    }

    v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
    [v1 setNeedsLayout];
LABEL_16:
    v56 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
    v57 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];
    v58 = *&v57[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
    if (v58)
    {
      v59 = v57;
      v60 = [v58 text];
      if (v60)
      {
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        if (v62)
        {
          goto LABEL_42;
        }
      }

      else
      {

        v64 = 0xE000000000000000;
      }

      if (v64 == 0xE000000000000000)
      {

        goto LABEL_45;
      }

LABEL_42:
      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v96 & 1) == 0)
      {
        v97 = *&v1[v56];
        v98 = *&v97[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
        if (v98)
        {
          v99 = v97;
          v100 = v98;
          v101 = String._bridgeToObjectiveC()();
          [v100 setText:v101];

          goto LABEL_45;
        }

        goto LABEL_89;
      }

LABEL_45:
      v102 = TTRAccountsListsViewModel.SmartList.count.getter();
      v103 = &v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount];
      *v103 = v102;
      v103[8] = 0;
      v104 = &v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName];
      *v104 = 0;
      v104[1] = 0;

      v105 = v186;
      TTRAccountsListsViewModel.SmartList.type.getter();
      TTRAccountsListsViewModel.SmartList.dynamicGlyph.getter();
      v106 = type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph();
      v107 = *(v106 - 8);
      if ((*(v107 + 48))(v16, 1, v106) == 1)
      {
        isa = TTRListType.PredefinedSmartListType.glyph.getter();
LABEL_82:
        v155 = isa;
        dispatch thunk of TTRListBadgeView.image.setter();
        (*(v184 + 104))(v176, enum case for TTRListBadgeView.Shape.round(_:), v185);
        dispatch thunk of TTRListBadgeView.shape.setter();
        v156 = v187;
        (*(v191 + 16))(v187, v105, v196);
        (*(v188 + 104))(v156, enum case for TTRListBadgeView.ColorInfo.predefinedSmartListColor(_:), v189);
        dispatch thunk of TTRListBadgeView.listColorInfo.setter();
        v157 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_hidePredefinedSmartListGestureRecognizer;
        v158 = *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_hidePredefinedSmartListGestureRecognizer];
        if (v158)
        {
          v159 = *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_hidePredefinedSmartListGestureRecognizer];
        }

        else
        {
          v160 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"toggleSmartListVisibility:"];
          v161 = *&v1[v157];
          *&v1[v157] = v160;
          v159 = v160;

          v158 = 0;
        }

        v162 = v190;
        v163 = v158;
        v164 = [v1 containerView];
        [v164 addGestureRecognizer:v159];

        [v1 setAccessoryView:0];
        v165 = [v1 containerView];
        [v165 setPreservesSuperviewLayoutMargins:1];

        v166 = [v1 containerView];
        [v166 setEdgesPreservingSuperviewLayoutMargins:10];

        v167 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v1 setSelectedBackgroundView:v167];

        v168 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v1 setMultipleSelectionBackgroundView:v168];

        v195(v186, v196);
        (*(v192 + 8))(v162, v193);
        sub_1005EB500(v171);
        *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes] = _swiftEmptyArrayStorage;
      }

      if ((*(v107 + 88))(v16, v106) == enum case for TTRAccountsListsViewModel.SmartList.DynamicGlyph.today(_:))
      {
        (*(v107 + 96))(v16, v106);
        v109 = v16[1];
        isa = *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_dynamicGlyphImageCache];
        if (isa)
        {
          v110 = isa;
        }

        else
        {
          v153 = *v16;
          type metadata accessor for TTRIDateIconGenerator();
          swift_allocObject();
          TTRIDateIconGenerator.init()();
          v154._countAndFlagsBits = v153;
          v154._object = v109;
          isa = TTRIDateIconGenerator.generateTodaySmartListTemplateIcon(withText:)(v154).super.isa;
        }

        goto LABEL_82;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v193 = v37;
  (*(v194 + 32))(v8, v30, v195);
  v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState] = 0;
  sub_1005E7CF4();
  [v1 setEditingAccessoryType:4];
  TTRAccountsListsViewModel.List.name.getter();
  v65 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  v66 = String._bridgeToObjectiveC()();

  [v65 setText:v66];

  TTRAccountsListsViewModel.List.sharingStatusText.getter();
  v68 = v67;
  v69 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel];
  v70 = [v69 text];
  if (v70)
  {
    v71 = v70;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v75 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v75 = v72 & 0xFFFFFFFFFFFFLL;
    }

    v76 = v75 == 0;
    if (v68)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v76 = 1;
    if (v68)
    {
LABEL_24:
      v77 = String._bridgeToObjectiveC()();

      goto LABEL_29;
    }
  }

  v77 = 0;
LABEL_29:
  [v69 setText:v77];

  v78 = [v69 text];
  if (v78)
  {
    v79 = v78;
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    v83 = HIBYTE(v82) & 0xF;
    if ((v82 & 0x2000000000000000) == 0)
    {
      v83 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (((v76 ^ (v83 != 0)) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (!v76)
  {
LABEL_33:
    v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
    [v1 setNeedsLayout];
  }

  v84 = TTRAccountsListsViewModel.List.countText.getter();
  v196 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
  v86 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];
  v87 = *&v86[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
  if (!v87)
  {
    goto LABEL_88;
  }

  v88 = v84;
  v89 = v85;
  v90 = v86;
  v91 = [v87 text];
  if (v91)
  {
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
  }

  else
  {

    v93 = 0;
    v95 = 0xE000000000000000;
  }

  v111 = v177;
  v112 = v193;
  if (v93 == v88 && v95 == v89)
  {
  }

  else
  {
    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v113)
    {
    }

    else
    {
      v114 = *&v1[v196];
      v115 = *&v114[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
      if (!v115)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_92;
      }

      v116 = v114;
      v117 = v115;
      v118 = String._bridgeToObjectiveC()();

      [v117 setText:v118];
    }
  }

  v119 = TTRAccountsListsViewModel.List.count.getter();
  v120 = &v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount];
  *v120 = v119;
  v120[8] = 0;
  v121 = v173;
  TTRAccountsListsViewModel.List.pinState.getter();
  v122 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
  (*(v174 + 8))(v121, v175);
  v123 = v171;
  v124 = v178;
  if (v122)
  {
    v125 = 0;
    v126 = 0;
  }

  else
  {
    v125 = TTRAccountsListsViewModel.List.groupName.getter();
  }

  v127 = &v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName];
  *v127 = v125;
  v127[1] = v126;

  if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
  {
    sub_100058000(&unk_100771E10);
    v128 = swift_allocObject();
    *(v128 + 1) = xmmword_10062D400;
    v128[4] = static TTRAccesibility.AccountsList.Label.SmartList.getter();
    v128[5] = v129;
  }

  else
  {
    v128 = _swiftEmptyArrayStorage;
  }

  *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes] = v128;

  TTRAccountsListsViewModel.List.badge.getter();
  v130 = v180;
  v131 = (*(v124 + 88))(v111, v180);
  if (v131 == enum case for TTRAccountsListsViewModel.List.Badge.image(_:))
  {
    (*(v124 + 96))(v111, v130);
    v132 = *v111;
    dispatch thunk of TTRListBadgeView.imageColor.setter();
    REMListBadgeEmblem.image.getter();
    dispatch thunk of TTRListBadgeView.image.setter();
    TTRAccountsListsViewModel.List.badgeName.getter();
    dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
  }

  else
  {
    if (v131 != enum case for TTRAccountsListsViewModel.List.Badge.emoji(_:))
    {
LABEL_92:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v124 + 96))(v111, v130);

    dispatch thunk of TTRListBadgeView.emoji.setter();
    dispatch thunk of TTRListBadgeView.emojiFontSize.setter();
    dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
  }

  if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
  {
    static TTRListBadgeView.Shape.customSmartListInListRowView.getter();
  }

  else
  {
    (*(v184 + 104))(v179, enum case for TTRListBadgeView.Shape.round(_:), v185);
  }

  dispatch thunk of TTRListBadgeView.shape.setter();
  v133 = v187;
  TTRAccountsListsViewModel.List.badgeColor.getter();
  (*(v188 + 104))(v133, enum case for TTRListBadgeView.ColorInfo.listColor(_:), v189);
  dispatch thunk of TTRListBadgeView.listColorInfo.setter();
  dispatch thunk of TTRListBadgeView.ttrAccessibilityShouldIgnoreTintColorValue.setter();
  v134 = static TTRAccesibility.AccountsList.Action.ListInfo.getter();
  v135 = v169;
  *v169 = v134;
  v135[1] = v136;

  if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
  {
    v137 = v170;
    *v170 = 0;
    v137[1] = 0;

    *v112 = 0;
    v112[1] = 0;
  }

  else
  {
    if (TTRAccountsListsViewModel.List.isShared.getter())
    {
      v138 = static TTRAccesibility.AccountsList.Action.ManageSharedList.getter();
      v139 = v170;
      *v170 = v138;
      v139[1] = v140;

      v141 = 0x8000000100672620;
      *v112 = 0xD000000000000022;
    }

    else
    {
      v142 = static TTRAccesibility.AccountsList.Action.ShareList.getter();
      v143 = v170;
      *v170 = v142;
      v143[1] = v144;

      v141 = 0x8000000100672650;
      *v112 = 0xD000000000000013;
    }

    v112[1] = v141;
  }

  v145 = TTRAccountsListsViewModel.List.objectID.getter();
  type metadata accessor for ListEntity();
  v146 = v145;
  v147 = v181;
  AppEntityID.init(objectID:)();
  sub_1005EBD00(&qword_100771DE8, &type metadata accessor for ListEntity);
  UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

  (*(v182 + 8))(v147, v183);
  v148 = *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_hidePredefinedSmartListGestureRecognizer];
  if (v148)
  {
    v149 = v148;
    v150 = [v1 containerView];
    [v150 removeGestureRecognizer:v149];
  }

  [v1 setAccessoryView:*&v1[v196]];
  v151 = [v1 containerView];
  [v151 setPreservesSuperviewLayoutMargins:0];

  v152 = [v1 containerView];
  [v152 setEdgesPreservingSuperviewLayoutMargins:0];

  [v1 setSelectedBackgroundView:0];
  [v1 setMultipleSelectionBackgroundView:0];
  (*(v194 + 8))(v8, v195);
  return sub_1005EB500(v123);
}

uint64_t sub_1005E94AC()
{
  v1 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100058000(&qword_10076BC60);
  __chkstk_darwin(v7 - 8);
  v9 = &v26[-v8];
  v10 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v26[-v15];
  v17 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  sub_1005EBBC4(v0 + v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BC60);
  }

  sub_1005EBC34(v9, v16);
  sub_1005EBB60(v16, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v30;
    (*(v30 + 32))(v6, v13, v4);
    v20 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState;
    v21 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState);
    if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState))
    {
      if (v21 == 1)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v27 = v22;
      v23 = v21 == 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        TTRAccountsListsViewModel.SmartList.type.getter();
        v24 = sub_10042B2D8(v23);
        (*(v28 + 8))(v3, v29);
        swift_unknownObjectRelease();
        if (v24)
        {
          *(v0 + v20) = v27;
          sub_1005E7CF4();
        }
      }
    }

    (*(v19 + 8))(v6, v4);
    v25 = v16;
  }

  else
  {
    sub_1005EB500(v16);
    v25 = v13;
  }

  return sub_1005EB500(v25);
}

UIAccessibilityTraits sub_1005E999C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
  v1 = objc_msgSendSuper2(&v5, "accessibilityTraits");
  v2 = *&v0[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton];
  if (([v2 isHidden] & 1) != 0 || !objc_msgSend(v2, "isSelected"))
  {
    if ((UIAccessibilityTraitSelected & v1) != 0)
    {
      return v1 & ~UIAccessibilityTraitSelected;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v3 = UIAccessibilityTraitSelected;
    if ((UIAccessibilityTraitSelected & ~v1) == 0)
    {
      v3 = 0;
    }

    return v3 | v1;
  }
}

id sub_1005E9B0C()
{
  v1 = sub_100058000(&qword_10076BC60);
  __chkstk_darwin(v1 - 8);
  v3 = v38 - v2;
  v4 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  sub_1005EBBC4(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &qword_10076BC60);
    return 0;
  }

  else
  {
    sub_1005EBC34(v3, v10);
    sub_1005EBB60(v10, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1005EB500(v10);
      sub_1005EB500(v7);
      return 0;
    }

    else
    {
      sub_1005EB500(v7);
      v13 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_badge);
      v14 = [v13 accessibilityLabel];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v38[0] = v21 + 1;
          v37 = sub_100546970((v20 > 1), v21 + 1, 1, v19);
          v22 = v38[0];
          v19 = v37;
        }

        *(v19 + 2) = v22;
        v23 = &v19[16 * v21];
        *(v23 + 4) = v16;
        *(v23 + 5) = v18;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v24 = [v13 accessibilityValue];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100546970(0, *(v19 + 2) + 1, 1, v19);
        }

        v30 = *(v19 + 2);
        v29 = *(v19 + 3);
        if (v30 >= v29 >> 1)
        {
          v19 = sub_100546970((v29 > 1), v30 + 1, 1, v19);
        }

        *(v19 + 2) = v30 + 1;
        v31 = &v19[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
      }

      v38[10] = v19;
      static TTRAccesibility.General.Label.Separator.getter();
      sub_100058000(&unk_100781F20);
      sub_10006089C();
      BidirectionalCollection<>.joined(separator:)();

      sub_100058000(&unk_100776BD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = static NSAttributedStringKey.ttriAccessibilityLowPitch.getter();
      *(inited + 64) = &type metadata for Bool;
      *(inited + 40) = 1;
      sub_100460A28(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &unk_100776BE0);
      v33 = objc_allocWithZone(NSAttributedString);
      v34 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_1005EBD00(&qword_100778A60, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v36 = [v33 initWithString:v34 attributes:isa];

      sub_1005EB500(v10);
      return v36;
    }
  }
}

void *sub_1005E9FE4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v3 = [Strong view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + qword_10078A540);
      if (v6)
      {
        v7 = [v6 hasActiveDrag];
        swift_unknownObjectRelease();

        if (v7)
        {
          return _swiftEmptyArrayStorage;
        }

LABEL_7:
        v28.receiver = v0;
        v28.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
        v9 = objc_msgSendSuper2(&v28, "accessibilityCustomActions");
        if (v9)
        {
          v10 = v9;
          sub_100003540(0, &qword_10076BCE0);
          v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v8 = _swiftEmptyArrayStorage;
        }

        v29 = v8;
        if ([v1 isEditing] && objc_msgSend(v1, "editingAccessoryType") == 4 && *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityEditingCustomActionName + 8])
        {
          sub_100003540(0, &qword_10076FCB0);

          v11 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = objc_allocWithZone(UIAccessibilityCustomAction);

          v14 = String._bridgeToObjectiveC()();

          v26 = sub_1005EBCCC;
          v27 = v12;
          aBlock = _NSConcreteStackBlock;
          v23 = 1107296256;
          v24 = sub_10044E9F0;
          v25 = &unk_100732AE0;
          v15 = _Block_copy(&aBlock);
          [v13 initWithName:v14 image:v11 actionHandler:v15];

          _Block_release(v15);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v29;
        }

        if (*&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionName + 8] && *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionSFSymbolName + 8])
        {
          sub_100003540(0, &qword_10076FCB0);

          v16 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

          v17 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v18 = objc_allocWithZone(UIAccessibilityCustomAction);

          v19 = String._bridgeToObjectiveC()();

          v26 = sub_1005EBC98;
          v27 = v17;
          aBlock = _NSConcreteStackBlock;
          v23 = 1107296256;
          v24 = sub_10044E9F0;
          v25 = &unk_100732AB8;
          v20 = _Block_copy(&aBlock);
          [v18 initWithName:v19 image:v16 actionHandler:v20];

          _Block_release(v20);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v29;
        }

        if (v8 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            return v8;
          }
        }

        else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v8;
        }

        return 0;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL sub_1005EA558(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      a3(Strong);
      swift_unknownObjectRelease();
    }
  }

  return Strong != 0;
}

Class sub_1005EA614(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    sub_100003540(0, a4);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

void *sub_1005EA6B0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.List();
  v51 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BC60);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for TTRIAccountsListsViewListCell(0);
  v56.receiver = v1;
  v56.super_class = v18;
  result = objc_msgSendSuper2(&v56, "accessibilityDropPointDescriptors");
  if (!result)
  {
    return result;
  }

  v20 = result;
  v54 = v17;
  sub_100003540(0, &qword_100792060);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  sub_1005EBBC4(v1 + v22, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_10076BC60);
    return v21;
  }

  v23 = v54;
  sub_1005EBC34(v10, v54);
  [v1 center];
  v25 = v24;
  sub_1005EBB60(v23, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v1;
  if (EnumCaseMultiPayload != 1)
  {
    v27 = v51;
    (*(v51 + 32))(v7, v14, v5);
    TTRAccountsListsViewModel.List.pinState.getter();
    v28 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v52 + 8))(v4, v53);
    (*(v27 + 8))(v7, v5);
    if (v28)
    {
      goto LABEL_7;
    }

    if (v21 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36)
      {
LABEL_22:
        v55 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v36 < 0)
        {
          __break(1u);
        }

        else
        {
          v37 = 0;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v38 = *(v21 + 8 * v37 + 32);
            }

            v39 = v38;
            [v38 point];
            v41 = v40;
            v42 = [v39 view];
            if (v42)
            {
              v43 = v42;
              if (v41 != v25)
              {
                [v50 frame];
                v44 = CGRectGetHeight(v57) * 0.4;
                if (v41 >= v25)
                {
                  v45 = v44;
                }

                else
                {
                  v45 = -v44;
                }

                [v39 point];
                v47 = v46;
                v48 = [v39 name];
                if (!v48)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v48 = String._bridgeToObjectiveC()();
                }

                [objc_allocWithZone(UIAccessibilityLocationDescriptor) initWithName:v48 point:v43 inView:{v47, v25 + v45}];
              }
            }

            ++v37;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v36 != v37);
          sub_1005EB500(v54);

          return v55;
        }

        return result;
      }
    }

    else
    {
      v36 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_22;
      }
    }

    sub_1005EB500(v54);
    return _swiftEmptyArrayStorage;
  }

  sub_1005EB500(v14);
LABEL_7:
  v55 = _swiftEmptyArrayStorage;
  if (v21 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v30 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v31 = *(v21 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      [v31 point];
      if (v34 == v25)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v30;
      if (v33 == i)
      {
        v35 = v55;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_42:

  sub_1005EB500(v54);
  return v35;
}

void sub_1005EAD54(void *a1, uint64_t a2, objc_class *a3, unint64_t *a4, uint64_t a5, SEL *a6)
{
  isa = a3;
  if (a3)
  {
    sub_100003540(0, a4);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10 = a1;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
  objc_msgSendSuper2(&v11, *a6, isa);
}

uint64_t sub_1005EAE04()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listsViewListCellDelegate);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem, &qword_10076BC60);

  return sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_dynamicGlyph, &qword_100771DD8);
}

id sub_1005EAEE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005EB030()
{
  sub_1005EB18C(319, &qword_100791B90, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  if (v0 <= 0x3F)
  {
    sub_1005EB18C(319, &unk_100791B98, &type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005EB18C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t *sub_1005EB1F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
    }

    else
    {
      v6 = type metadata accessor for TTRAccountsListsViewModel.List();
    }

    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1005EB31C(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  }

  else
  {
    v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  }

  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1005EB398(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  }

  else
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  }

  (*(*(v4 - 8) + 16))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1005EB444(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1005EB500(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
    }

    else
    {
      v4 = type metadata accessor for TTRAccountsListsViewModel.List();
    }

    (*(*(v4 - 8) + 16))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1005EB500(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005EB55C(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  }

  else
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  }

  (*(*(v4 - 8) + 32))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1005EB608(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1005EB500(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
    }

    else
    {
      v4 = type metadata accessor for TTRAccountsListsViewModel.List();
    }

    (*(*(v4 - 8) + 32))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1005EB6C4()
{
  result = type metadata accessor for TTRAccountsListsViewModel.List();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRAccountsListsViewModel.SmartList();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1005EB78C()
{
  result = qword_100792050;
  if (!qword_100792050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792050);
  }

  return result;
}

uint64_t sub_1005EB7E0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.List();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = sub_100058000(&qword_100792058);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_1005EBB60(v27, &v25 - v17);
  sub_1005EBB60(v28, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1005EBB60(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v18[v19], v26);
      v21 = static TTRAccountsListsViewModel.SmartList.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v12, v20);
LABEL_9:
      sub_1005EB500(v18);
      return v21 & 1;
    }

    (*(v2 + 8))(v12, v26);
  }

  else
  {
    sub_1005EBB60(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v21 = static TTRAccountsListsViewModel.List.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_1000079B4(v18, &qword_100792058);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1005EBB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005EBBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005EBC34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005EBD00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005EBD50()
{
  *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listsViewListCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  v2 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityEditingCustomActionName);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionName);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_ttriAccessibilityShareListActionSFSymbolName);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_hidePredefinedSmartListGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_dynamicGlyphImageCache) = 0;
  v6 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_dynamicGlyph;
  v7 = type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkState) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t *sub_1005EBEDC(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    v9 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v9) = *(a2 + v9);
  }

  return a1;
}

uint64_t sub_1005EBFDC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_1005EC074(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);

  return a1;
}

uint64_t sub_1005EC128(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1005EC208(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t sub_1005EC2A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1005EC3A8()
{
  result = type metadata accessor for TTRRemindersListLayout();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1005EC458(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = *a2;
        *a1 = *a2;
        v18 = v17;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v13 = *a2;
        v14 = a2[1];
        *a1 = v13;
        *(a1 + 1) = v14;
        v15 = v13;
        v16 = v14;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v12 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v10 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v6 + 64);

  return memcpy(a1, a2, v7);
}

void sub_1005EC60C(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload())
  {
    return;
  }

  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v5 = *a1;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        v4 = *(*(v3 - 8) + 8);

        v4(a1, v3);
      }

      return;
    }

    v5 = *(a1 + 8);
  }
}

void **sub_1005EC6E0(void **a1, void **a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = *a2;
        *a1 = *a2;
        v16 = v15;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v11 = *a2;
        v12 = a2[1];
        *a1 = v11;
        a1[1] = v12;
        v13 = v11;
        v14 = v12;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v10 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void **sub_1005EC854(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005EE454(a1, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = *a2;
        *a1 = *a2;
        v16 = v15;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v11 = *a2;
        *a1 = *a2;
        v12 = a2[1];
        a1[1] = v12;
        v13 = v11;
        v14 = v12;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v10 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *sub_1005ECA14(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1005ECB34(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005EE454(a1, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1005ECC78()
{
  result = type metadata accessor for TTRRemindersListReminderActionTargetExtended(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1005ECD08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_100058000(&qword_100780990);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v11 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
      v12 = v11[5];
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15))
      {
        v17 = sub_100058000(&qword_100769980);
        memcpy(v13, v14, *(*(v17 - 8) + 64));
      }

      else
      {
        v40 = v8;
        v41 = v13;
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        v18 = *(v15 + 28);
        v19 = type metadata accessor for TTRSharedWithYouHighlight();
        v20 = *(v19 - 8);
        v39 = v19;
        if ((*(v20 + 48))(&v14[v18], 1))
        {
          v21 = sub_100058000(&qword_100775700);
          v22 = v41;
          memcpy(&v41[v18], &v14[v18], *(*(v21 - 8) + 64));
        }

        else
        {
          (*(v20 + 16))(&v41[v18], &v14[v18], v39);
          (*(v20 + 56))(&v41[v18], 0, 1, v39);
          v22 = v41;
        }

        (*(v16 + 56))(v22, 0, 1, v15);
        v8 = v40;
      }

      v23 = v11[6];
      v24 = type metadata accessor for TTRTemplatePublicLinkData();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(a2 + v23, 1, v24))
      {
        v26 = sub_100058000(&qword_1007693B0);
        memcpy(a1 + v23, a2 + v23, *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 16))(a1 + v23, a2 + v23, v24);
        (*(v25 + 56))(a1 + v23, 0, 1, v24);
      }

      v27 = v11[7];
      v28 = a1 + v27;
      v29 = a2 + v27;
      v30 = *(v29 + 1);
      if (v30 == 1)
      {
        *v28 = *v29;
        v28[16] = v29[16];
      }

      else
      {
        *v28 = *v29;
        *(v28 + 1) = v30;
        v28[16] = v29[16];
      }

      *(a1 + v11[8]) = *(a2 + v11[8]);
      *(a1 + v11[9]) = *(a2 + v11[9]);
      *(a1 + v11[10]) = *(a2 + v11[10]);
      v31 = v11[11];
      v32 = a1 + v31;
      v33 = a2 + v31;
      v34 = *(v33 + 1);
      *v32 = *v33;
      *(v32 + 1) = v34;
      v32[16] = v33[16];
      *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
      v35 = *(v8 + 56);

      v35(a1, 0, 1, v7);
    }

    v36 = *(a3 + 20);
    v37 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
  }

  return a1;
}

uint64_t sub_1005ED25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100780990);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    v5 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v6 = a1 + v5[5];
    v7 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = *(v7 + 28);
      v9 = type metadata accessor for TTRSharedWithYouHighlight();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v6 + v8, 1, v9))
      {
        (*(v10 + 8))(v6 + v8, v9);
      }
    }

    v11 = v5[6];
    v12 = type metadata accessor for TTRTemplatePublicLinkData();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(a1 + v11, 1, v12))
    {
      (*(v13 + 8))(a1 + v11, v12);
    }

    if (*(a1 + v5[7] + 8) != 1)
    {
    }
  }

  v14 = *(a2 + 20);
  v15 = type metadata accessor for TTRRemindersListLayout();
  v16 = *(*(v15 - 8) + 8);

  return v16(a1 + v14, v15);
}

_BYTE *sub_1005ED4C4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
      v15 = sub_100058000(&qword_100769980);
      memcpy(v11, v12, *(*(v15 - 8) + 64));
    }

    else
    {
      v38 = v7;
      v39 = a3;
      *v11 = *v12;
      v40 = v11;
      *(v11 + 1) = *(v12 + 1);
      v16 = *(v13 + 28);
      v17 = type metadata accessor for TTRSharedWithYouHighlight();
      v18 = *(v17 - 8);
      v37 = v16;
      if ((*(v18 + 48))(&v12[v16], 1, v17))
      {
        v19 = sub_100058000(&qword_100775700);
        v20 = v40;
        memcpy(&v40[v37], &v12[v37], *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 16))(&v40[v16], &v12[v16], v17);
        v20 = v40;
        (*(v18 + 56))(&v40[v37], 0, 1, v17);
      }

      (*(v14 + 56))(v20, 0, 1, v13);
      v7 = v38;
      a3 = v39;
    }

    v21 = v9[6];
    v22 = type metadata accessor for TTRTemplatePublicLinkData();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(&a2[v21], 1, v22))
    {
      v24 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v21], &a2[v21], *(*(v24 - 8) + 64));
    }

    else
    {
      (*(v23 + 16))(&a1[v21], &a2[v21], v22);
      (*(v23 + 56))(&a1[v21], 0, 1, v22);
    }

    v25 = v9[7];
    v26 = &a1[v25];
    v27 = &a2[v25];
    v28 = *(v27 + 1);
    if (v28 == 1)
    {
      *v26 = *v27;
      v26[16] = v27[16];
    }

    else
    {
      *v26 = *v27;
      *(v26 + 1) = v28;
      v26[16] = v27[16];
    }

    a1[v9[8]] = a2[v9[8]];
    a1[v9[9]] = a2[v9[9]];
    a1[v9[10]] = a2[v9[10]];
    v29 = v9[11];
    v30 = &a1[v29];
    v31 = &a2[v29];
    v32 = *(v31 + 1);
    *v30 = *v31;
    *(v30 + 1) = v32;
    v30[16] = v31[16];
    a1[*(v6 + 48)] = a2[*(v6 + 48)];
    v33 = *(v7 + 56);

    v33(a1, 0, 1, v6);
  }

  v34 = *(a3 + 20);
  v35 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v35 - 8) + 16))(&a1[v34], &a2[v34], v35);
  return a1;
}

_BYTE *sub_1005ED978(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      v11 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
      v12 = v11[5];
      v13 = &a1[v12];
      v14 = &a2[v12];
      v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15))
      {
        v17 = sub_100058000(&qword_100769980);
        memcpy(v13, v14, *(*(v17 - 8) + 64));
      }

      else
      {
        v78 = v7;
        v80 = a3;
        *v13 = *v14;
        v13[1] = v14[1];
        v13[2] = v14[2];
        v31 = *(v15 + 28);
        v32 = type metadata accessor for TTRSharedWithYouHighlight();
        v33 = *(v32 - 8);
        v75 = v32;
        if ((*(v33 + 48))(&v14[v31], 1))
        {
          v34 = sub_100058000(&qword_100775700);
          memcpy(&v13[v31], &v14[v31], *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v33 + 16))(&v13[v31], &v14[v31], v75);
          (*(v33 + 56))(&v13[v31], 0, 1, v75);
        }

        (*(v16 + 56))(v13, 0, 1, v15);
        v7 = v78;
        a3 = v80;
      }

      v38 = v11[6];
      v39 = type metadata accessor for TTRTemplatePublicLinkData();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(&a2[v38], 1, v39))
      {
        v41 = sub_100058000(&qword_1007693B0);
        memcpy(&a1[v38], &a2[v38], *(*(v41 - 8) + 64));
      }

      else
      {
        (*(v40 + 16))(&a1[v38], &a2[v38], v39);
        (*(v40 + 56))(&a1[v38], 0, 1, v39);
      }

      v42 = v11[7];
      v43 = &a1[v42];
      v44 = &a2[v42];
      if (*(v44 + 1) == 1)
      {
        v45 = *v44;
        v43[16] = v44[16];
        *v43 = v45;
      }

      else
      {
        *v43 = *v44;
        *(v43 + 1) = *(v44 + 1);
        v43[16] = v44[16];
      }

      a1[v11[8]] = a2[v11[8]];
      a1[v11[9]] = a2[v11[9]];
      a1[v11[10]] = a2[v11[10]];
      v46 = v11[11];
      v47 = &a1[v46];
      v48 = &a2[v46];
      *v47 = *v48;
      *(v47 + 1) = *(v48 + 1);
      v47[16] = v48[16];
      a1[*(v6 + 48)] = a2[*(v6 + 48)];
      v49 = *(v7 + 56);

      v49(a1, 0, 1, v6);
      goto LABEL_47;
    }

LABEL_7:
    v18 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
    memcpy(a1, a2, *(*(v18 - 8) + 64));
    goto LABEL_47;
  }

  if (v10)
  {
    sub_1000079B4(a1, &qword_100780990);
    goto LABEL_7;
  }

  v79 = a3;
  *a1 = *a2;
  v77 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
  v19 = v77[5];
  v20 = &a1[v19];
  v21 = &a2[v19];
  v22 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v20, 1, v22);
  v26 = v24(v21, 1, v22);
  if (!v25)
  {
    if (!v26)
    {
      *v20 = *v21;
      v20[1] = v21[1];
      v20[2] = v21[2];
      v50 = *(v22 + 28);
      v51 = type metadata accessor for TTRSharedWithYouHighlight();
      v76 = *(v51 - 8);
      v52 = *(v76 + 48);
      v53 = v52(&v20[v50], 1, v51);
      v54 = v52(&v21[v50], 1, v51);
      if (v53)
      {
        if (!v54)
        {
          (*(v76 + 16))(&v20[v50], &v21[v50], v51);
          (*(v76 + 56))(&v20[v50], 0, 1, v51);
          goto LABEL_32;
        }

        v35 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
        v36 = &v20[v50];
        v37 = &v21[v50];
      }

      else
      {
        if (!v54)
        {
          (*(v76 + 24))(&v20[v50], &v21[v50], v51);
          goto LABEL_32;
        }

        (*(v76 + 8))(&v20[v50], v51);
        v35 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
        v36 = &v20[v50];
        v37 = &v21[v50];
      }

LABEL_17:
      memcpy(v36, v37, v35);
      goto LABEL_32;
    }

    sub_1005EE454(v20, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
LABEL_16:
    v35 = *(*(sub_100058000(&qword_100769980) - 8) + 64);
    v36 = v20;
    v37 = v21;
    goto LABEL_17;
  }

  if (v26)
  {
    goto LABEL_16;
  }

  *v20 = *v21;
  v20[1] = v21[1];
  v20[2] = v21[2];
  v27 = *(v22 + 28);
  v28 = type metadata accessor for TTRSharedWithYouHighlight();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(&v21[v27], 1, v28))
  {
    v30 = sub_100058000(&qword_100775700);
    memcpy(&v20[v27], &v21[v27], *(*(v30 - 8) + 64));
  }

  else
  {
    (*(v29 + 16))(&v20[v27], &v21[v27], v28);
    (*(v29 + 56))(&v20[v27], 0, 1, v28);
  }

  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_32:
  v55 = v77[6];
  v56 = type metadata accessor for TTRTemplatePublicLinkData();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  v59 = v58(&a1[v55], 1, v56);
  v60 = v58(&a2[v55], 1, v56);
  if (!v59)
  {
    a3 = v79;
    if (!v60)
    {
      (*(v57 + 24))(&a1[v55], &a2[v55], v56);
      goto LABEL_38;
    }

    (*(v57 + 8))(&a1[v55], v56);
    goto LABEL_37;
  }

  a3 = v79;
  if (v60)
  {
LABEL_37:
    v61 = sub_100058000(&qword_1007693B0);
    memcpy(&a1[v55], &a2[v55], *(*(v61 - 8) + 64));
    goto LABEL_38;
  }

  (*(v57 + 16))(&a1[v55], &a2[v55], v56);
  (*(v57 + 56))(&a1[v55], 0, 1, v56);
LABEL_38:
  v62 = v77[7];
  v63 = &a1[v62];
  v64 = &a2[v62];
  v65 = *&a1[v62 + 8];
  v66 = *&a2[v62 + 8];
  if (v65 == 1)
  {
    if (v66 == 1)
    {
      v67 = *v64;
      *(v63 + 16) = v64[16];
      *v63 = v67;
    }

    else
    {
      *v63 = *v64;
      *(v63 + 8) = *(v64 + 1);
      *(v63 + 16) = v64[16];
    }
  }

  else
  {
    if (v66 == 1)
    {
      sub_1005EE4B4(v63);
      v68 = v64[16];
      *v63 = *v64;
    }

    else
    {
      *v63 = *v64;
      *(v63 + 8) = *(v64 + 1);

      v68 = v64[16];
    }

    *(v63 + 16) = v68;
  }

  a1[v77[8]] = a2[v77[8]];
  a1[v77[9]] = a2[v77[9]];
  a1[v77[10]] = a2[v77[10]];
  v69 = v77[11];
  v70 = &a1[v69];
  v71 = &a2[v69];
  *v70 = *&a2[v69];
  *(v70 + 1) = *&a2[v69 + 8];

  v70[16] = v71[16];
  a1[*(v6 + 48)] = a2[*(v6 + 48)];
LABEL_47:
  v72 = *(a3 + 20);
  v73 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v73 - 8) + 24))(&a1[v72], &a2[v72], v73);
  return a1;
}

uint64_t sub_1005EE454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_1005EE508(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
      v15 = sub_100058000(&qword_100769980);
      memcpy(v11, v12, *(*(v15 - 8) + 64));
    }

    else
    {
      v35 = v7;
      v36 = a3;
      *v11 = *v12;
      v37 = v11;
      *(v11 + 1) = *(v12 + 1);
      v16 = *(v13 + 28);
      v17 = type metadata accessor for TTRSharedWithYouHighlight();
      v18 = *(v17 - 8);
      v34 = v16;
      if ((*(v18 + 48))(&v12[v16], 1, v17))
      {
        v19 = sub_100058000(&qword_100775700);
        v20 = v37;
        memcpy(&v37[v34], &v12[v34], *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 32))(&v37[v16], &v12[v16], v17);
        v20 = v37;
        (*(v18 + 56))(&v37[v34], 0, 1, v17);
      }

      (*(v14 + 56))(v20, 0, 1, v13);
      v7 = v35;
      a3 = v36;
    }

    v21 = v9[6];
    v22 = type metadata accessor for TTRTemplatePublicLinkData();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(&a2[v21], 1, v22))
    {
      v24 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v21], &a2[v21], *(*(v24 - 8) + 64));
    }

    else
    {
      (*(v23 + 32))(&a1[v21], &a2[v21], v22);
      (*(v23 + 56))(&a1[v21], 0, 1, v22);
    }

    v25 = v9[7];
    v26 = &a1[v25];
    v27 = &a2[v25];
    *v26 = *v27;
    v26[16] = v27[16];
    a1[v9[8]] = a2[v9[8]];
    a1[v9[9]] = a2[v9[9]];
    a1[v9[10]] = a2[v9[10]];
    v28 = v9[11];
    v29 = &a1[v28];
    v30 = &a2[v28];
    *v29 = *v30;
    v29[16] = v30[16];
    a1[*(v6 + 48)] = a2[*(v6 + 48)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v31 = *(a3 + 20);
  v32 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v32 - 8) + 32))(&a1[v31], &a2[v31], v32);
  return a1;
}

_BYTE *sub_1005EE994(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1000079B4(a1, &qword_100780990);
      goto LABEL_7;
    }

    v77 = a3;
    *a1 = *a2;
    v75 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v19 = *(v75 + 20);
    v20 = &a1[v19];
    v21 = &a2[v19];
    v22 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v20, 1, v22);
    v26 = v24(v21, 1, v22);
    if (v25)
    {
      if (!v26)
      {
        *v20 = *v21;
        *(v20 + 1) = *(v21 + 1);
        v27 = *(v22 + 28);
        v28 = type metadata accessor for TTRSharedWithYouHighlight();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(&v21[v27], 1, v28))
        {
          v30 = sub_100058000(&qword_100775700);
          memcpy(&v20[v27], &v21[v27], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(v29 + 32))(&v20[v27], &v21[v27], v28);
          (*(v29 + 56))(&v20[v27], 0, 1, v28);
        }

        (*(v23 + 56))(v20, 0, 1, v22);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v26)
      {
        *v20 = *v21;
        v20[1] = v21[1];
        v20[2] = v21[2];
        v47 = *(v22 + 28);
        v48 = type metadata accessor for TTRSharedWithYouHighlight();
        v74 = *(v48 - 8);
        v49 = *(v74 + 48);
        v50 = v49(&v20[v47], 1, v48);
        v51 = v49(&v21[v47], 1, v48);
        if (v50)
        {
          v52 = v75;
          if (v51)
          {
            v53 = sub_100058000(&qword_100775700);
            memcpy(&v20[v47], &v21[v47], *(*(v53 - 8) + 64));
          }

          else
          {
            (*(v74 + 32))(&v20[v47], &v21[v47], v48);
            (*(v74 + 56))(&v20[v47], 0, 1, v48);
          }
        }

        else
        {
          v52 = v75;
          if (v51)
          {
            (*(v74 + 8))(&v20[v47], v48);
            v72 = sub_100058000(&qword_100775700);
            memcpy(&v20[v47], &v21[v47], *(*(v72 - 8) + 64));
          }

          else
          {
            (*(v74 + 40))(&v20[v47], &v21[v47], v48);
          }
        }

LABEL_29:
        v54 = v52[6];
        v55 = type metadata accessor for TTRTemplatePublicLinkData();
        v56 = *(v55 - 8);
        v57 = *(v56 + 48);
        v58 = v57(&a1[v54], 1, v55);
        v59 = v57(&a2[v54], 1, v55);
        if (v58)
        {
          a3 = v77;
          if (!v59)
          {
            (*(v56 + 32))(&a1[v54], &a2[v54], v55);
            (*(v56 + 56))(&a1[v54], 0, 1, v55);
            goto LABEL_35;
          }
        }

        else
        {
          a3 = v77;
          if (!v59)
          {
            (*(v56 + 40))(&a1[v54], &a2[v54], v55);
LABEL_35:
            v61 = v52[7];
            v62 = &a1[v61];
            v63 = &a2[v61];
            if (*&a1[v61 + 8] != 1)
            {
              v64 = *(v63 + 1);
              if (v64 != 1)
              {
                *v62 = *v63;
                *(v62 + 8) = v64;

                goto LABEL_40;
              }

              sub_1005EE4B4(v62);
            }

            *v62 = *v63;
LABEL_40:
            *(v62 + 16) = v63[16];
            a1[v52[8]] = a2[v52[8]];
            a1[v52[9]] = a2[v52[9]];
            a1[v52[10]] = a2[v52[10]];
            v65 = v52[11];
            v66 = &a1[v65];
            v67 = &a2[v65];
            v68 = *&a2[v65 + 8];
            *v66 = *&a2[v65];
            *(v66 + 1) = v68;

            v66[16] = v67[16];
            a1[*(v6 + 48)] = a2[*(v6 + 48)];
            goto LABEL_41;
          }

          (*(v56 + 8))(&a1[v54], v55);
        }

        v60 = sub_100058000(&qword_1007693B0);
        memcpy(&a1[v54], &a2[v54], *(*(v60 - 8) + 64));
        goto LABEL_35;
      }

      sub_1005EE454(v20, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
    }

    v36 = sub_100058000(&qword_100769980);
    memcpy(v20, v21, *(*(v36 - 8) + 64));
LABEL_28:
    v52 = v75;
    goto LABEL_29;
  }

  if (v10)
  {
LABEL_7:
    v18 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
    memcpy(a1, a2, *(*(v18 - 8) + 64));
    goto LABEL_41;
  }

  *a1 = *a2;
  v11 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = sub_100058000(&qword_100769980);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v76 = v13;
    v78 = a3;
    *v13 = *v14;
    *(v13 + 1) = *(v14 + 1);
    v31 = *(v15 + 28);
    v32 = type metadata accessor for TTRSharedWithYouHighlight();
    v33 = *(v32 - 8);
    v73 = v32;
    if ((*(v33 + 48))(&v14[v31], 1))
    {
      v34 = sub_100058000(&qword_100775700);
      v35 = v76;
      memcpy(&v76[v31], &v14[v31], *(*(v34 - 8) + 64));
    }

    else
    {
      (*(v33 + 32))(&v76[v31], &v14[v31], v73);
      (*(v33 + 56))(&v76[v31], 0, 1, v73);
      v35 = v76;
    }

    (*(v16 + 56))(v35, 0, 1, v15);
    a3 = v78;
  }

  v37 = v11[6];
  v38 = type metadata accessor for TTRTemplatePublicLinkData();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(&a2[v37], 1, v38))
  {
    v40 = sub_100058000(&qword_1007693B0);
    memcpy(&a1[v37], &a2[v37], *(*(v40 - 8) + 64));
  }

  else
  {
    (*(v39 + 32))(&a1[v37], &a2[v37], v38);
    (*(v39 + 56))(&a1[v37], 0, 1, v38);
  }

  v41 = v11[7];
  v42 = &a1[v41];
  v43 = &a2[v41];
  *v42 = *v43;
  v42[16] = v43[16];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  a1[v11[10]] = a2[v11[10]];
  v44 = v11[11];
  v45 = &a1[v44];
  v46 = &a2[v44];
  *v45 = *v46;
  v45[16] = v46[16];
  a1[*(v6 + 48)] = a2[*(v6 + 48)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_41:
  v69 = *(a3 + 20);
  v70 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v70 - 8) + 40))(&a1[v69], &a2[v69], v70);
  return a1;
}

uint64_t sub_1005EF424()
{
  result = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListLayout();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *sub_1005EF4EC(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_100058000(&qword_100780990);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    *a1 = *a2;
    v12 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v13 = v12[5];
    v14 = &a1[v13];
    v15 = &a2[v13];
    v16 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = sub_100058000(&qword_100769980);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      v38 = v8;
      v39 = v14;
      *v14 = *v15;
      *(v14 + 1) = *(v15 + 1);
      v19 = *(v16 + 28);
      v20 = type metadata accessor for TTRSharedWithYouHighlight();
      v21 = *(v20 - 8);
      v37 = v19;
      if ((*(v21 + 48))(&v15[v19], 1, v20))
      {
        v22 = sub_100058000(&qword_100775700);
        v23 = v39;
        memcpy(&v39[v37], &v15[v37], *(*(v22 - 8) + 64));
      }

      else
      {
        (*(v21 + 16))(&v39[v19], &v15[v19], v20);
        v23 = v39;
        (*(v21 + 56))(&v39[v37], 0, 1, v20);
      }

      (*(v17 + 56))(v23, 0, 1, v16);
      v8 = v38;
    }

    v24 = v12[6];
    v25 = type metadata accessor for TTRTemplatePublicLinkData();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(&a2[v24], 1, v25))
    {
      v27 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v24], &a2[v24], *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v26 + 16))(&a1[v24], &a2[v24], v25);
      (*(v26 + 56))(&a1[v24], 0, 1, v25);
    }

    v28 = v12[7];
    v29 = &a1[v28];
    v30 = &a2[v28];
    v31 = *(v30 + 1);
    if (v31 == 1)
    {
      *v29 = *v30;
      v29[16] = v30[16];
    }

    else
    {
      *v29 = *v30;
      *(v29 + 1) = v31;
      v29[16] = v30[16];
    }

    a1[v12[8]] = a2[v12[8]];
    a1[v12[9]] = a2[v12[9]];
    a1[v12[10]] = a2[v12[10]];
    v32 = v12[11];
    v33 = &a1[v32];
    v34 = &a2[v32];
    v35 = *(v34 + 1);
    *v33 = *v34;
    *(v33 + 1) = v35;
    v33[16] = v34[16];
    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    v36 = *(v8 + 56);

    v36(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1005EF9B8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100780990);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v5 = a1 + v4[5];
    v6 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = *(v6 + 28);
      v8 = type metadata accessor for TTRSharedWithYouHighlight();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v5 + v7, 1, v8))
      {
        (*(v9 + 8))(v5 + v7, v8);
      }
    }

    v10 = v4[6];
    v11 = type metadata accessor for TTRTemplatePublicLinkData();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(a1 + v10, 1, v11))
    {
      (*(v12 + 8))(a1 + v10, v11);
    }

    if (*(a1 + v4[7] + 8) != 1)
    {
    }
  }

  return result;
}

_BYTE *sub_1005EFBEC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    v10 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v11 = v10[5];
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = sub_100058000(&qword_100769980);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v36 = v7;
      v37 = v12;
      *v12 = *v13;
      *(v12 + 1) = *(v13 + 1);
      v17 = *(v14 + 28);
      v18 = type metadata accessor for TTRSharedWithYouHighlight();
      v19 = *(v18 - 8);
      v35 = v17;
      if ((*(v19 + 48))(&v13[v17], 1, v18))
      {
        v20 = sub_100058000(&qword_100775700);
        v21 = v37;
        memcpy(&v37[v35], &v13[v35], *(*(v20 - 8) + 64));
      }

      else
      {
        (*(v19 + 16))(&v37[v17], &v13[v17], v18);
        v21 = v37;
        (*(v19 + 56))(&v37[v35], 0, 1, v18);
      }

      (*(v15 + 56))(v21, 0, 1, v14);
      v7 = v36;
    }

    v22 = v10[6];
    v23 = type metadata accessor for TTRTemplatePublicLinkData();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(&a2[v22], 1, v23))
    {
      v25 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v22], &a2[v22], *(*(v25 - 8) + 64));
    }

    else
    {
      (*(v24 + 16))(&a1[v22], &a2[v22], v23);
      (*(v24 + 56))(&a1[v22], 0, 1, v23);
    }

    v26 = v10[7];
    v27 = &a1[v26];
    v28 = &a2[v26];
    v29 = *(v28 + 1);
    if (v29 == 1)
    {
      *v27 = *v28;
      v27[16] = v28[16];
    }

    else
    {
      *v27 = *v28;
      *(v27 + 1) = v29;
      v27[16] = v28[16];
    }

    a1[v10[8]] = a2[v10[8]];
    a1[v10[9]] = a2[v10[9]];
    a1[v10[10]] = a2[v10[10]];
    v30 = v10[11];
    v31 = &a1[v30];
    v32 = &a2[v30];
    v33 = *(v32 + 1);
    *v31 = *v32;
    *(v31 + 1) = v33;
    v31[16] = v32[16];
    a1[*(v6 + 48)] = a2[*(v6 + 48)];
    v34 = *(v7 + 56);

    v34(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *sub_1005F007C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1000079B4(a1, &qword_100780990);
      goto LABEL_7;
    }

    *a1 = *a2;
    v77 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v20 = *(v77 + 20);
    v21 = &a1[v20];
    v22 = &a2[v20];
    v23 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    v26 = v25(v21, 1, v23);
    v27 = v25(v22, 1, v23);
    if (v26)
    {
      v28 = v77;
      if (!v27)
      {
        *v21 = *v22;
        v21[1] = v22[1];
        v21[2] = v22[2];
        v29 = *(v23 + 28);
        v30 = type metadata accessor for TTRSharedWithYouHighlight();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(&v22[v29], 1, v30))
        {
          v32 = sub_100058000(&qword_100775700);
          memcpy(&v21[v29], &v22[v29], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(v31 + 16))(&v21[v29], &v22[v29], v30);
          (*(v31 + 56))(&v21[v29], 0, 1, v30);
        }

        v28 = v77;
        (*(v24 + 56))(v21, 0, 1, v23);
LABEL_39:
        v58 = v28[6];
        v59 = type metadata accessor for TTRTemplatePublicLinkData();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        v62 = v61(&a1[v58], 1, v59);
        v63 = v61(&a2[v58], 1, v59);
        if (v62)
        {
          if (!v63)
          {
            (*(v60 + 16))(&a1[v58], &a2[v58], v59);
            (*(v60 + 56))(&a1[v58], 0, 1, v59);
LABEL_45:
            v65 = v28[7];
            v66 = &a1[v65];
            v67 = &a2[v65];
            v68 = *&a1[v65 + 8];
            v69 = *&a2[v65 + 8];
            if (v68 == 1)
            {
              if (v69 == 1)
              {
                v70 = *v67;
                *(v66 + 16) = v67[16];
                *v66 = v70;
              }

              else
              {
                *v66 = *v67;
                *(v66 + 8) = *(v67 + 1);
                *(v66 + 16) = v67[16];
              }
            }

            else
            {
              if (v69 == 1)
              {
                sub_1005EE4B4(v66);
                v71 = v67[16];
                *v66 = *v67;
              }

              else
              {
                *v66 = *v67;
                *(v66 + 8) = *(v67 + 1);

                v71 = v67[16];
              }

              *(v66 + 16) = v71;
            }

            a1[v28[8]] = a2[v28[8]];
            a1[v28[9]] = a2[v28[9]];
            a1[v28[10]] = a2[v28[10]];
            v72 = v28[11];
            v73 = &a1[v72];
            v74 = &a2[v72];
            *v73 = *&a2[v72];
            *(v73 + 1) = *&a2[v72 + 8];

            v73[16] = v74[16];
            a1[*(v6 + 48)] = a2[*(v6 + 48)];
            return a1;
          }
        }

        else
        {
          if (!v63)
          {
            (*(v60 + 24))(&a1[v58], &a2[v58], v59);
            goto LABEL_45;
          }

          (*(v60 + 8))(&a1[v58], v59);
        }

        v64 = sub_100058000(&qword_1007693B0);
        memcpy(&a1[v58], &a2[v58], *(*(v64 - 8) + 64));
        goto LABEL_45;
      }

LABEL_18:
      v37 = sub_100058000(&qword_100769980);
      memcpy(v21, v22, *(*(v37 - 8) + 64));
      goto LABEL_39;
    }

    v28 = v77;
    if (v27)
    {
      sub_1005EE454(v21, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
      goto LABEL_18;
    }

    *v21 = *v22;
    v21[1] = v22[1];
    v21[2] = v22[2];
    v50 = *(v23 + 28);
    v51 = type metadata accessor for TTRSharedWithYouHighlight();
    v76 = *(v51 - 8);
    v52 = *(v76 + 48);
    v53 = v52(&v21[v50], 1, v51);
    v54 = v52(&v22[v50], 1, v51);
    if (v53)
    {
      if (!v54)
      {
        (*(v76 + 16))(&v21[v50], &v22[v50], v51);
        (*(v76 + 56))(&v21[v50], 0, 1, v51);
        goto LABEL_38;
      }

      v55 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
      v56 = &v21[v50];
      v57 = &v22[v50];
    }

    else
    {
      if (!v54)
      {
        (*(v76 + 24))(&v21[v50], &v22[v50], v51);
        goto LABEL_38;
      }

      (*(v76 + 8))(&v21[v50], v51);
      v55 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
      v56 = &v21[v50];
      v57 = &v22[v50];
    }

    memcpy(v56, v57, v55);
LABEL_38:
    v28 = v77;
    goto LABEL_39;
  }

  if (!v10)
  {
    *a1 = *a2;
    v11 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v12 = v11[5];
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1, v15))
    {
      v17 = sub_100058000(&qword_100769980);
      memcpy(v13, v14, *(*(v17 - 8) + 64));
    }

    else
    {
      v78 = v7;
      *v13 = *v14;
      v13[1] = v14[1];
      v13[2] = v14[2];
      v33 = *(v15 + 28);
      v34 = type metadata accessor for TTRSharedWithYouHighlight();
      v35 = *(v34 - 8);
      v75 = v34;
      if ((*(v35 + 48))(&v14[v33], 1))
      {
        v36 = sub_100058000(&qword_100775700);
        memcpy(&v13[v33], &v14[v33], *(*(v36 - 8) + 64));
      }

      else
      {
        (*(v35 + 16))(&v13[v33], &v14[v33], v75);
        (*(v35 + 56))(&v13[v33], 0, 1, v75);
      }

      (*(v16 + 56))(v13, 0, 1, v15);
      v7 = v78;
    }

    v38 = v11[6];
    v39 = type metadata accessor for TTRTemplatePublicLinkData();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(&a2[v38], 1, v39))
    {
      v41 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v38], &a2[v38], *(*(v41 - 8) + 64));
    }

    else
    {
      (*(v40 + 16))(&a1[v38], &a2[v38], v39);
      (*(v40 + 56))(&a1[v38], 0, 1, v39);
    }

    v42 = v11[7];
    v43 = &a1[v42];
    v44 = &a2[v42];
    if (*(v44 + 1) == 1)
    {
      v45 = *v44;
      v43[16] = v44[16];
      *v43 = v45;
    }

    else
    {
      *v43 = *v44;
      *(v43 + 1) = *(v44 + 1);
      v43[16] = v44[16];
    }

    a1[v11[8]] = a2[v11[8]];
    a1[v11[9]] = a2[v11[9]];
    a1[v11[10]] = a2[v11[10]];
    v46 = v11[11];
    v47 = &a1[v46];
    v48 = &a2[v46];
    *v47 = *v48;
    *(v47 + 1) = *(v48 + 1);
    v47[16] = v48[16];
    a1[*(v6 + 48)] = a2[*(v6 + 48)];
    v49 = *(v7 + 56);

    v49(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

_BYTE *sub_1005F0B3C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    v10 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v11 = v10[5];
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = sub_100058000(&qword_100769980);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v33 = v7;
      v34 = v12;
      *v12 = *v13;
      *(v12 + 1) = *(v13 + 1);
      v17 = *(v14 + 28);
      v18 = type metadata accessor for TTRSharedWithYouHighlight();
      v19 = *(v18 - 8);
      v32 = v17;
      if ((*(v19 + 48))(&v13[v17], 1, v18))
      {
        v20 = sub_100058000(&qword_100775700);
        v21 = v34;
        memcpy(&v34[v32], &v13[v32], *(*(v20 - 8) + 64));
      }

      else
      {
        (*(v19 + 32))(&v34[v17], &v13[v17], v18);
        v21 = v34;
        (*(v19 + 56))(&v34[v32], 0, 1, v18);
      }

      (*(v15 + 56))(v21, 0, 1, v14);
      v7 = v33;
    }

    v22 = v10[6];
    v23 = type metadata accessor for TTRTemplatePublicLinkData();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(&a2[v22], 1, v23))
    {
      v25 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v22], &a2[v22], *(*(v25 - 8) + 64));
    }

    else
    {
      (*(v24 + 32))(&a1[v22], &a2[v22], v23);
      (*(v24 + 56))(&a1[v22], 0, 1, v23);
    }

    v26 = v10[7];
    v27 = &a1[v26];
    v28 = &a2[v26];
    *v27 = *v28;
    v27[16] = v28[16];
    a1[v10[8]] = a2[v10[8]];
    a1[v10[9]] = a2[v10[9]];
    a1[v10[10]] = a2[v10[10]];
    v29 = v10[11];
    v30 = &a1[v29];
    v31 = &a2[v29];
    *v30 = *v31;
    v30[16] = v31[16];
    a1[*(v6 + 48)] = a2[*(v6 + 48)];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *sub_1005F0FA4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1000079B4(a1, &qword_100780990);
      goto LABEL_7;
    }

    *a1 = *a2;
    v74 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v20 = *(v74 + 20);
    v21 = &a1[v20];
    v22 = &a2[v20];
    v23 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    v26 = v25(v21, 1, v23);
    v27 = v25(v22, 1, v23);
    if (v26)
    {
      v28 = v74;
      if (!v27)
      {
        *v21 = *v22;
        *(v21 + 1) = *(v22 + 1);
        v29 = *(v23 + 28);
        v30 = type metadata accessor for TTRSharedWithYouHighlight();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(&v22[v29], 1, v30))
        {
          v32 = sub_100058000(&qword_100775700);
          memcpy(&v21[v29], &v22[v29], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(v31 + 32))(&v21[v29], &v22[v29], v30);
          (*(v31 + 56))(&v21[v29], 0, 1, v30);
        }

        v28 = v74;
        (*(v24 + 56))(v21, 0, 1, v23);
LABEL_36:
        v57 = v28[6];
        v58 = type metadata accessor for TTRTemplatePublicLinkData();
        v59 = *(v58 - 8);
        v60 = *(v59 + 48);
        v61 = v60(&a1[v57], 1, v58);
        v62 = v60(&a2[v57], 1, v58);
        if (v61)
        {
          if (!v62)
          {
            (*(v59 + 32))(&a1[v57], &a2[v57], v58);
            (*(v59 + 56))(&a1[v57], 0, 1, v58);
            goto LABEL_42;
          }
        }

        else
        {
          if (!v62)
          {
            (*(v59 + 40))(&a1[v57], &a2[v57], v58);
LABEL_42:
            v64 = v28[7];
            v65 = &a1[v64];
            v66 = &a2[v64];
            if (*&a1[v64 + 8] != 1)
            {
              v67 = *(v66 + 1);
              if (v67 != 1)
              {
                *v65 = *v66;
                *(v65 + 8) = v67;

                goto LABEL_47;
              }

              sub_1005EE4B4(v65);
            }

            *v65 = *v66;
LABEL_47:
            *(v65 + 16) = v66[16];
            a1[v28[8]] = a2[v28[8]];
            a1[v28[9]] = a2[v28[9]];
            a1[v28[10]] = a2[v28[10]];
            v68 = v28[11];
            v69 = &a1[v68];
            v70 = &a2[v68];
            v71 = *&a2[v68 + 8];
            *v69 = *&a2[v68];
            *(v69 + 1) = v71;

            v69[16] = v70[16];
            a1[*(v6 + 48)] = a2[*(v6 + 48)];
            return a1;
          }

          (*(v59 + 8))(&a1[v57], v58);
        }

        v63 = sub_100058000(&qword_1007693B0);
        memcpy(&a1[v57], &a2[v57], *(*(v63 - 8) + 64));
        goto LABEL_42;
      }

LABEL_18:
      v38 = sub_100058000(&qword_100769980);
      memcpy(v21, v22, *(*(v38 - 8) + 64));
      goto LABEL_36;
    }

    v28 = v74;
    if (v27)
    {
      sub_1005EE454(v21, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
      goto LABEL_18;
    }

    *v21 = *v22;
    v21[1] = v22[1];
    v21[2] = v22[2];
    v49 = *(v23 + 28);
    v50 = type metadata accessor for TTRSharedWithYouHighlight();
    v73 = *(v50 - 8);
    v51 = *(v73 + 48);
    v52 = v51(&v21[v49], 1, v50);
    v53 = v51(&v22[v49], 1, v50);
    if (v52)
    {
      if (!v53)
      {
        (*(v73 + 32))(&v21[v49], &v22[v49], v50);
        (*(v73 + 56))(&v21[v49], 0, 1, v50);
        goto LABEL_35;
      }

      v54 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
      v55 = &v21[v49];
      v56 = &v22[v49];
    }

    else
    {
      if (!v53)
      {
        (*(v73 + 40))(&v21[v49], &v22[v49], v50);
        goto LABEL_35;
      }

      (*(v73 + 8))(&v21[v49], v50);
      v54 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
      v55 = &v21[v49];
      v56 = &v22[v49];
    }

    memcpy(v55, v56, v54);
LABEL_35:
    v28 = v74;
    goto LABEL_36;
  }

  if (!v10)
  {
    *a1 = *a2;
    v11 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    v12 = v11[5];
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1, v15))
    {
      v17 = sub_100058000(&qword_100769980);
      memcpy(v13, v14, *(*(v17 - 8) + 64));
    }

    else
    {
      *v13 = *v14;
      v75 = v13;
      *(v13 + 1) = *(v14 + 1);
      v33 = *(v15 + 28);
      v34 = type metadata accessor for TTRSharedWithYouHighlight();
      v35 = *(v34 - 8);
      v72 = v34;
      if ((*(v35 + 48))(&v14[v33], 1))
      {
        v36 = sub_100058000(&qword_100775700);
        v37 = v75;
        memcpy(&v75[v33], &v14[v33], *(*(v36 - 8) + 64));
      }

      else
      {
        (*(v35 + 32))(&v75[v33], &v14[v33], v72);
        (*(v35 + 56))(&v75[v33], 0, 1, v72);
        v37 = v75;
      }

      (*(v16 + 56))(v37, 0, 1, v15);
    }

    v39 = v11[6];
    v40 = type metadata accessor for TTRTemplatePublicLinkData();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(&a2[v39], 1, v40))
    {
      v42 = sub_100058000(&qword_1007693B0);
      memcpy(&a1[v39], &a2[v39], *(*(v42 - 8) + 64));
    }

    else
    {
      (*(v41 + 32))(&a1[v39], &a2[v39], v40);
      (*(v41 + 56))(&a1[v39], 0, 1, v40);
    }

    v43 = v11[7];
    v44 = &a1[v43];
    v45 = &a2[v43];
    *v44 = *v45;
    v44[16] = v45[16];
    a1[v11[8]] = a2[v11[8]];
    a1[v11[9]] = a2[v11[9]];
    a1[v11[10]] = a2[v11[10]];
    v46 = v11[11];
    v47 = &a1[v46];
    v48 = &a2[v46];
    *v47 = *v48;
    v47[16] = v48[16];
    a1[*(v6 + 48)] = a2[*(v6 + 48)];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

uint64_t sub_1005F19E4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100780990);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_1005F1A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100780990);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_1005F1AD4()
{
  result = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1005F1B68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v6 = *(a3 + 28);
    v7 = type metadata accessor for TTRSharedWithYouHighlight();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2 + v6, 1, v7))
    {
      v9 = sub_100058000(&qword_100775700);
      memcpy(&v4[v6], a2 + v6, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], a2 + v6, v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t sub_1005F1CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  v4 = type metadata accessor for TTRSharedWithYouHighlight();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

uint64_t sub_1005F1DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for TTRSharedWithYouHighlight();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = sub_100058000(&qword_100775700);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

_BYTE *sub_1005F1ECC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v5 = *(a3 + 28);
  v6 = type metadata accessor for TTRSharedWithYouHighlight();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100775700);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

uint64_t sub_1005F2054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for TTRSharedWithYouHighlight();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = sub_100058000(&qword_100775700);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

_BYTE *sub_1005F2170(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v5 = *(a3 + 28);
  v6 = type metadata accessor for TTRSharedWithYouHighlight();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100775700);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

void sub_1005F2320()
{
  sub_1005F3CA8(319, &qword_100780928, &type metadata accessor for TTRSharedWithYouHighlight);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *sub_1005F23D8(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a3[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      v12 = sub_100058000(&qword_100769980);
      memcpy(v8, v9, *(*(v12 - 8) + 64));
    }

    else
    {
      *v8 = *v9;
      *(v8 + 1) = *(v9 + 1);
      v14 = *(v10 + 28);
      v15 = type metadata accessor for TTRSharedWithYouHighlight();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&v9[v14], 1, v15))
      {
        v17 = sub_100058000(&qword_100775700);
        memcpy(&v8[v14], &v9[v14], *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 16))(&v8[v14], &v9[v14], v15);
        (*(v16 + 56))(&v8[v14], 0, 1, v15);
      }

      (*(v11 + 56))(v8, 0, 1, v10);
    }

    v18 = a3[6];
    v19 = type metadata accessor for TTRTemplatePublicLinkData();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&a2[v18], 1, v19))
    {
      v21 = sub_100058000(&qword_1007693B0);
      memcpy(&v4[v18], &a2[v18], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(&v4[v18], &a2[v18], v19);
      (*(v20 + 56))(&v4[v18], 0, 1, v19);
    }

    v22 = a3[7];
    v23 = &v4[v22];
    v24 = &a2[v22];
    v25 = *(v24 + 1);
    if (v25 == 1)
    {
      *v23 = *v24;
      v23[16] = v24[16];
    }

    else
    {
      *v23 = *v24;
      *(v23 + 1) = v25;
      v23[16] = v24[16];
    }

    v26 = a3[9];
    v4[a3[8]] = a2[a3[8]];
    v4[v26] = a2[v26];
    v27 = a3[11];
    v4[a3[10]] = a2[a3[10]];
    v28 = &v4[v27];
    v29 = &a2[v27];
    v30 = *(v29 + 1);
    *v28 = *v29;
    *(v28 + 1) = v30;
    v28[16] = v29[16];
  }

  return v4;
}

uint64_t sub_1005F2780(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];
  v5 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = *(v5 + 28);
    v7 = type metadata accessor for TTRSharedWithYouHighlight();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = a2[6];
  v10 = type metadata accessor for TTRTemplatePublicLinkData();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v9, 1, v10))
  {
    (*(v11 + 8))(a1 + v9, v10);
  }

  if (*(a1 + a2[7] + 8) != 1)
  {
  }
}

_BYTE *sub_1005F294C(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_100058000(&qword_100769980);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    *v7 = *v8;
    *(v7 + 1) = *(v8 + 1);
    v12 = *(v9 + 28);
    v13 = type metadata accessor for TTRSharedWithYouHighlight();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&v8[v12], 1, v13))
    {
      v15 = sub_100058000(&qword_100775700);
      memcpy(&v7[v12], &v8[v12], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v7[v12], &v8[v12], v13);
      (*(v14 + 56))(&v7[v12], 0, 1, v13);
    }

    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v16 = a3[6];
  v17 = type metadata accessor for TTRTemplatePublicLinkData();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&a2[v16], 1, v17))
  {
    v19 = sub_100058000(&qword_1007693B0);
    memcpy(&a1[v16], &a2[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(&a1[v16], &a2[v16], v17);
    (*(v18 + 56))(&a1[v16], 0, 1, v17);
  }

  v20 = a3[7];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = *(v22 + 1);
  if (v23 == 1)
  {
    *v21 = *v22;
    v21[16] = v22[16];
  }

  else
  {
    *v21 = *v22;
    *(v21 + 1) = v23;
    v21[16] = v22[16];
  }

  v24 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v24] = a2[v24];
  v25 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = *(v27 + 1);
  *v26 = *v27;
  *(v26 + 1) = v28;
  v26[16] = v27[16];

  return a1;
}

_BYTE *sub_1005F2CA8(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      *v7 = *v8;
      v7[1] = v8[1];
      v7[2] = v8[2];
      v21 = *(v9 + 28);
      v22 = type metadata accessor for TTRSharedWithYouHighlight();
      v44 = *(v22 - 8);
      v23 = *(v44 + 48);
      v24 = v23(&v7[v21], 1, v22);
      v25 = v23(&v8[v21], 1, v22);
      if (v24)
      {
        if (!v25)
        {
          (*(v44 + 16))(&v7[v21], &v8[v21], v22);
          (*(v44 + 56))(&v7[v21], 0, 1, v22);
          goto LABEL_14;
        }

        v18 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
        v19 = &v7[v21];
        v20 = &v8[v21];
      }

      else
      {
        if (!v25)
        {
          (*(v44 + 24))(&v7[v21], &v8[v21], v22);
          goto LABEL_14;
        }

        (*(v44 + 8))(&v7[v21], v22);
        v18 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
        v19 = &v7[v21];
        v20 = &v8[v21];
      }

LABEL_8:
      memcpy(v19, v20, v18);
      goto LABEL_14;
    }

    sub_1005EE454(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
LABEL_7:
    v18 = *(*(sub_100058000(&qword_100769980) - 8) + 64);
    v19 = v7;
    v20 = v8;
    goto LABEL_8;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v14 = *(v9 + 28);
  v15 = type metadata accessor for TTRSharedWithYouHighlight();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&v8[v14], 1, v15))
  {
    v17 = sub_100058000(&qword_100775700);
    memcpy(&v7[v14], &v8[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(&v7[v14], &v8[v14], v15);
    (*(v16 + 56))(&v7[v14], 0, 1, v15);
  }

  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_14:
  v26 = a3[6];
  v27 = type metadata accessor for TTRTemplatePublicLinkData();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(&a1[v26], 1, v27);
  v31 = v29(&a2[v26], 1, v27);
  if (v30)
  {
    if (!v31)
    {
      (*(v28 + 16))(&a1[v26], &a2[v26], v27);
      (*(v28 + 56))(&a1[v26], 0, 1, v27);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v31)
  {
    (*(v28 + 8))(&a1[v26], v27);
LABEL_19:
    v32 = sub_100058000(&qword_1007693B0);
    memcpy(&a1[v26], &a2[v26], *(*(v32 - 8) + 64));
    goto LABEL_20;
  }

  (*(v28 + 24))(&a1[v26], &a2[v26], v27);
LABEL_20:
  v33 = a3[7];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *&a1[v33 + 8];
  v37 = *&a2[v33 + 8];
  if (v36 == 1)
  {
    if (v37 == 1)
    {
      v38 = *v35;
      *(v34 + 16) = v35[16];
      *v34 = v38;
    }

    else
    {
      *v34 = *v35;
      *(v34 + 8) = *(v35 + 1);
      *(v34 + 16) = v35[16];
    }
  }

  else
  {
    if (v37 == 1)
    {
      sub_1005EE4B4(v34);
      v39 = v35[16];
      *v34 = *v35;
    }

    else
    {
      *v34 = *v35;
      *(v34 + 8) = *(v35 + 1);

      v39 = v35[16];
    }

    *(v34 + 16) = v39;
  }

  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  v40 = a3[11];
  v41 = &a1[v40];
  v42 = &a2[v40];
  *v41 = *&a2[v40];
  *(v41 + 1) = *&a2[v40 + 8];

  v41[16] = v42[16];
  return a1;
}

_BYTE *sub_1005F32A0(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_100058000(&qword_100769980);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    *v7 = *v8;
    *(v7 + 1) = *(v8 + 1);
    v12 = *(v9 + 28);
    v13 = type metadata accessor for TTRSharedWithYouHighlight();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&v8[v12], 1, v13))
    {
      v15 = sub_100058000(&qword_100775700);
      memcpy(&v7[v12], &v8[v12], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(&v7[v12], &v8[v12], v13);
      (*(v14 + 56))(&v7[v12], 0, 1, v13);
    }

    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v16 = a3[6];
  v17 = type metadata accessor for TTRTemplatePublicLinkData();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&a2[v16], 1, v17))
  {
    v19 = sub_100058000(&qword_1007693B0);
    memcpy(&a1[v16], &a2[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(&a1[v16], &a2[v16], v17);
    (*(v18 + 56))(&a1[v16], 0, 1, v17);
  }

  v20 = a3[7];
  v21 = a3[8];
  v22 = &a1[v20];
  v23 = &a2[v20];
  *v22 = *v23;
  v22[16] = v23[16];
  a1[v21] = a2[v21];
  v24 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v24] = a2[v24];
  v25 = a3[11];
  v26 = &a1[v25];
  v27 = &a2[v25];
  *v26 = *v27;
  v26[16] = v27[16];
  return a1;
}

_BYTE *sub_1005F35D4(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      *v7 = *v8;
      v7[1] = v8[1];
      v7[2] = v8[2];
      v21 = *(v9 + 28);
      v22 = type metadata accessor for TTRSharedWithYouHighlight();
      v43 = *(v22 - 8);
      v23 = *(v43 + 48);
      v24 = v23(&v7[v21], 1, v22);
      v25 = v23(&v8[v21], 1, v22);
      if (v24)
      {
        if (!v25)
        {
          (*(v43 + 32))(&v7[v21], &v8[v21], v22);
          (*(v43 + 56))(&v7[v21], 0, 1, v22);
          goto LABEL_14;
        }

        v18 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
        v19 = &v7[v21];
        v20 = &v8[v21];
      }

      else
      {
        if (!v25)
        {
          (*(v43 + 40))(&v7[v21], &v8[v21], v22);
          goto LABEL_14;
        }

        (*(v43 + 8))(&v7[v21], v22);
        v18 = *(*(sub_100058000(&qword_100775700) - 8) + 64);
        v19 = &v7[v21];
        v20 = &v8[v21];
      }

LABEL_8:
      memcpy(v19, v20, v18);
      goto LABEL_14;
    }

    sub_1005EE454(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
LABEL_7:
    v18 = *(*(sub_100058000(&qword_100769980) - 8) + 64);
    v19 = v7;
    v20 = v8;
    goto LABEL_8;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  v14 = *(v9 + 28);
  v15 = type metadata accessor for TTRSharedWithYouHighlight();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&v8[v14], 1, v15))
  {
    v17 = sub_100058000(&qword_100775700);
    memcpy(&v7[v14], &v8[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&v7[v14], &v8[v14], v15);
    (*(v16 + 56))(&v7[v14], 0, 1, v15);
  }

  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_14:
  v26 = a3[6];
  v27 = type metadata accessor for TTRTemplatePublicLinkData();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(&a1[v26], 1, v27);
  v31 = v29(&a2[v26], 1, v27);
  if (v30)
  {
    if (!v31)
    {
      (*(v28 + 32))(&a1[v26], &a2[v26], v27);
      (*(v28 + 56))(&a1[v26], 0, 1, v27);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v31)
  {
    (*(v28 + 8))(&a1[v26], v27);
LABEL_19:
    v32 = sub_100058000(&qword_1007693B0);
    memcpy(&a1[v26], &a2[v26], *(*(v32 - 8) + 64));
    goto LABEL_20;
  }

  (*(v28 + 40))(&a1[v26], &a2[v26], v27);
LABEL_20:
  v33 = a3[7];
  v34 = &a1[v33];
  v35 = &a2[v33];
  if (*&a1[v33 + 8] != 1)
  {
    v36 = *(v35 + 1);
    if (v36 != 1)
    {
      *v34 = *v35;
      *(v34 + 8) = v36;

      goto LABEL_25;
    }

    sub_1005EE4B4(v34);
  }

  *v34 = *v35;
LABEL_25:
  *(v34 + 16) = v35[16];
  v37 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v37] = a2[v37];
  v38 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  v39 = &a1[v38];
  v40 = &a2[v38];
  v41 = *(v40 + 1);
  *v39 = *v40;
  *(v39 + 1) = v41;

  v39[16] = v40[16];
  return a1;
}

void sub_1005F3B84()
{
  sub_1005F3CA8(319, &qword_1007923C8, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
  if (v0 <= 0x3F)
  {
    sub_1005F3CA8(319, &unk_1007923D0, &type metadata accessor for TTRTemplatePublicLinkData);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1005F3CA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1005F3CFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

BOOL sub_1005F3D68(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1005F3DEC(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return (*a2 ^ *a1 ^ 1) & (((*a2 & 0x100) == 0) ^ ((*a1 & 0x100) >> 8)) & 1;
}

unint64_t sub_1005F3E54()
{
  result = qword_100792418;
  if (!qword_100792418)
  {
    sub_10005D20C(&qword_100792420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792418);
  }

  return result;
}

unint64_t sub_1005F3EBC()
{
  result = qword_100792428;
  if (!qword_100792428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792428);
  }

  return result;
}

uint64_t sub_1005F3F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  v13 = sub_100058000(&unk_10076C558);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v17 = (&v27 + *(v16 + 56) - v14);
  sub_1005F4A2C(a1, &v27 - v14, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  sub_1005F4A2C(a2, v17, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_37;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_37;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_37;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_37;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v19 = v28;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_37;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1005F4A2C(v15, v12, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v21 = *v12;
    v20 = v12[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v21 == *v17 && v20 == v17[1])
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          sub_1005EE454(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
          goto LABEL_29;
        }
      }

LABEL_37:
      sub_1005EE454(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
      v22 = 1;
      return v22 & 1;
    }

LABEL_28:
    sub_1000079B4(v15, &unk_10076C558);
LABEL_29:
    v22 = 0;
    return v22 & 1;
  }

  sub_1005F4A2C(v15, v9, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v19 + 8))(v9, v4);
    goto LABEL_28;
  }

  (*(v19 + 32))(v6, v17, v4);
  v22 = static TTRSharedWithYouHighlight.== infix(_:_:)();
  v23 = *(v19 + 8);
  v23(v6, v4);
  v23(v9, v4);
  sub_1005EE454(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  return v22 & 1;
}

uint64_t sub_1005F4378(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListLayout();
  sub_1001771C0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
LABEL_12:
      v7 = 0;
      return v7 & 1;
    }
  }

  v6 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  if ((sub_100125684(*(a1 + v6[5]), *(a2 + v6[5])) & 1) == 0 || (sub_10012571C(*(a1 + v6[6]), *(a2 + v6[6])) & 1) == 0 || (sub_100125C94(*(a1 + v6[7]), *(a2 + v6[7])) & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = sub_100125D68(*(a1 + v6[8]), *(a2 + v6[8]));
  return v7 & 1;
}

uint64_t sub_1005F44C4(uint64_t a1, unint64_t a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 0xFF00) == 0x200)
  {
    if (BYTE1(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE1(a2) == 2 || ((((a1 & 0x100) == 0) ^ (a2 >> 8)) & 1) == 0)
  {
    return 0;
  }

  if ((a1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE2(a2) == 2 || ((((a1 & 0x10000) == 0) ^ (a2 >> 16)) & 1) == 0)
  {
    return 0;
  }

  if ((a1 & 0xFF000000) == 0x2000000)
  {
    if (BYTE3(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE3(a2) == 2 || ((((a1 & 0x1000000) == 0) ^ (a2 >> 24)) & 1) == 0)
  {
    return 0;
  }

  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    if (BYTE4(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE4(a2) == 2 || ((((a1 & &_mh_execute_header) == 0) ^ HIDWORD(a2)) & 1) == 0)
  {
    return 0;
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    if (BYTE5(a2) == 2)
    {
      return 1;
    }
  }

  else if (BYTE5(a2) != 2 && ((((a1 & 0x10000000000) == 0) ^ (a2 >> 40)) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1005F4640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_100058000(&qword_100792430);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v17 = &v32 + *(v16 + 56) - v14;
  sub_1005F4A2C(a1, &v32 - v14, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
  sub_1005F4A2C(a2, v17, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1005F4A2C(v15, v12, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10014AA38(v17, v6);
      v30 = sub_10059799C(v12, v6);
      sub_1005EE454(v6, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      sub_1005EE454(v12, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      sub_1005EE454(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
      return v30 & 1;
    }

    sub_1005EE454(v12, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
LABEL_8:
    sub_1000079B4(v15, &qword_100792430);
LABEL_39:
    v30 = 0;
    return v30 & 1;
  }

  sub_1005F4A2C(v15, v9, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
  v18 = *v9;
  v19 = v9[1];
  v20 = v9[2];
  v21 = v9[3];
  v22 = v9[4];
  v23 = v9[5];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_8;
  }

  v24 = *v17;
  v25 = v17[1];
  v26 = v17[2];
  v27 = v17[3];
  v28 = v17[4];
  v29 = v17[5];
  if (v18 == 2)
  {
    if (v24 != 2)
    {
LABEL_38:
      sub_1005EE454(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
      goto LABEL_39;
    }
  }

  else if (v24 == 2 || ((v24 ^ v18) & 1) != 0)
  {
    goto LABEL_38;
  }

  if (v19 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v25 == 2 || ((v25 ^ v19) & 1) != 0)
  {
    goto LABEL_38;
  }

  if (v20 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v26 == 2 || ((v26 ^ v20) & 1) != 0)
  {
    goto LABEL_38;
  }

  if (v21 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v27 == 2 || ((v27 ^ v21) & 1) != 0)
  {
    goto LABEL_38;
  }

  if (v22 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v28 == 2 || ((v28 ^ v22) & 1) != 0)
  {
    goto LABEL_38;
  }

  if (v23 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v29 == 2 || ((v29 ^ v23) & 1) != 0)
  {
    goto LABEL_38;
  }

  sub_1005EE454(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1005F4A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.LeadingItem(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.LeadingItem(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_WORD *sub_1005F4BFC(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.FixedTrailingItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t *sub_1005F4CF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for TTRSharedWithYouHighlight();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;

LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1005F4E28(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for TTRSharedWithYouHighlight();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  else if (!result)
  {
  }

  return result;
}

void *sub_1005F4EC8(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRSharedWithYouHighlight();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;

LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1005F4FB8(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005EE454(a1, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRSharedWithYouHighlight();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    a1[1] = a2[1];

LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1005F50D4(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRSharedWithYouHighlight();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_1005F51A4(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005EE454(a1, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRSharedWithYouHighlight();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1005F5298()
{
  result = type metadata accessor for TTRSharedWithYouHighlight();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1005F53F4()
{
  result = qword_1007924E0;
  if (!qword_1007924E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007924E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfo.ItemState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfo.ItemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_1005F55AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1005F55D8(char a1, char a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a3;
    if ((a1 & 1) == 0)
    {
      [Strong safeAreaInsets];
      if (a3 - v12 < 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = a3 - v12;
      }
    }

    v13 = a4;
    if ((a2 & 1) == 0)
    {
      [v10 safeAreaInsets];
      if (a4 - v14 < 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = a4 - v14;
      }
    }

    v15 = *(v4 + 24);

    v15(v10, v11, v13);

    if (a1 & 1) != 0 && (a2)
    {
      v16 = 0;
      a3 = 0.0;
      v17 = 2;
      a4 = 0.0;
    }

    else
    {
      v16 = a2 & 1;
      v17 = a1 & 1;
    }

    *(v4 + 40) = v17;
    *(v4 + 48) = a3;
    *(v4 + 56) = v16;
    *(v4 + 64) = a4;
  }
}

void sub_1005F56E4()
{
  v1 = *(v0 + 40);
  if (v1 != 2)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 64);
    v4 = *(v0 + 56);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = v2;
      if ((v1 & 1) == 0)
      {
        [Strong safeAreaInsets];
        if (v2 - v8 < 0.0)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v2 - v8;
        }
      }

      v9 = v3;
      if ((v4 & 1) == 0)
      {
        [v6 safeAreaInsets];
        if (v3 - v10 < 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v3 - v10;
        }
      }

      v11 = *(v0 + 24);

      v11(v6, v7, v9);

      v12 = v4 & 1;
      if (v1 & 1) != 0 && (v4)
      {
        v12 = 0;
        v2 = 0.0;
        v13 = 2;
        v3 = 0.0;
      }

      else
      {
        v13 = v1 & 1;
      }

      *(v0 + 40) = v13;
      *(v0 + 48) = v2;
      *(v0 + 56) = v12;
      *(v0 + 64) = v3;
    }
  }
}

uint64_t sub_1005F5824(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (a1[3] == a2[3]) & ~(*(a2 + 16) ^ *(a1 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F5898()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersScrollViewInsets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersScrollViewInsets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersScrollViewInsets.Inset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersScrollViewInsets.Inset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005F5A4C()
{
  result = qword_100792598;
  if (!qword_100792598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792598);
  }

  return result;
}

id sub_1005F5B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsCollectionCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1005F5BC4()
{
  Hasher.init(_seed:)();
  sub_100233FB0(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    Hasher._combine(_:)(1uLL);
    AnyHashable.hash(into:)();
    sub_100077654(v3);
  }

  else
  {
    v1 = LOBYTE(v5[0]);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_1005F5C78()
{
  sub_100233FB0(v0, v4);
  if (v6)
  {
    v2[0] = v4[0];
    v2[1] = v4[1];
    v3 = v5;
    Hasher._combine(_:)(1uLL);
    AnyHashable.hash(into:)();
    sub_100077654(v2);
  }

  else
  {
    v1 = LOBYTE(v4[0]);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_1005F5D08()
{
  Hasher.init(_seed:)();
  sub_100233FB0(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    Hasher._combine(_:)(1uLL);
    AnyHashable.hash(into:)();
    sub_100077654(v3);
  }

  else
  {
    v1 = LOBYTE(v5[0]);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

__n128 sub_1005F5DC8()
{
  sub_1004A1EFC(0, 8, 0);
  v0 = _swiftEmptyArrayStorage;
  v1 = _swiftEmptyArrayStorage[2];
  v2 = 6 * v1;
  v3 = 0x1FFFFFFFFFFFFFD0;
  v4 = &byte_1007125D8;
  do
  {
    v6 = *v4++;
    v5 = v6;
    v13 = v0;
    v7 = v0[3];
    v8 = v1 + 1;
    if (v1 >= v7 >> 1)
    {
      sub_1004A1EFC((v7 > 1), v1 + 1, 1);
      v0 = v13;
    }

    v0[2] = v8;
    v9 = &v0[v2 + v3];
    *(v9 + 416) = v5;
    result = v11;
    v9[56] = *&v12[15];
    *(v9 + 417) = v11;
    *(v9 + 433) = *v12;
    *(v9 + 456) = 0;
    v1 = v8;
    v3 += 6;
  }

  while (v3 * 8);
  return result;
}

uint64_t sub_1005F5EBC(uint64_t a1, uint64_t a2)
{
  sub_100233FB0(a1, v8);
  sub_100233FB0(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_100233FB0(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == LOBYTE(v9[0]);
      goto LABEL_6;
    }

LABEL_8:
    sub_1005F5F98(v8);
    v3 = 0;
    return v3 & 1;
  }

  sub_100233FB0(v8, v7);
  if (v11 != 1)
  {
    sub_100077654(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = static AnyHashable.== infix(_:_:)();
  sub_100077654(v5);
  sub_100077654(v7);
LABEL_6:
  sub_10023400C(v8);
  return v3 & 1;
}

uint64_t sub_1005F5F98(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007925D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for TTRIRemindersListActionMenuItems.MenuItem(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
    return sub_100004758(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for TTRIRemindersListActionMenuItems.MenuItem(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 1;
  }

  else
  {
    *result = *a2;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRIRemindersListActionMenuItems.MenuItem(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 == 1)
    {
      v3 = result;
      v4 = a2;
      sub_100004758(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 24);
      *(result + 24) = v6;
      *(result + 32) = *(a2 + 32);
      v7 = result;
      (**(v6 - 8))();
      result = v7;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *result = *a2;
    }

    *(result + 40) = v8;
  }

  return result;
}

uint64_t assignWithTake for TTRIRemindersListActionMenuItems.MenuItem(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 == 1)
    {
      v3 = result;
      v4 = a2;
      sub_100004758(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v6;
      *(result + 32) = *(a2 + 32);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *result = *a2;
    }

    *(result + 40) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListActionMenuItems.MenuItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListActionMenuItems.MenuItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1005F62B4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1005F62D0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListActionMenuItems.StandardMenuItem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListActionMenuItems.StandardMenuItem(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005F6460()
{
  result = qword_1007925D8;
  if (!qword_1007925D8)
  {
    sub_10005D20C(&qword_1007925E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007925D8);
  }

  return result;
}

unint64_t sub_1005F64C8()
{
  result = qword_1007925E8;
  if (!qword_1007925E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007925E8);
  }

  return result;
}

uint64_t sub_1005F651C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007925F0);
  v1 = sub_100003E30(v0, qword_1007925F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005F65E4()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1005F667C, v3, v2);
}

uint64_t sub_1005F667C()
{
  if (qword_1007674F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_1007925F0);
  sub_1003F99F4(0x6574616C706D6554, 0xEE007473694C2073);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong presentingViewController], v0[6] = v4, v3, v4))
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1005F67EC;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1005F67EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10001E8F0, v4, v3);
}

void sub_1005F692C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      v2 = v1;
      v3 = [v7 presentedViewController];
      if (v3 && (v4 = v3, v3, v4 == v2))
      {
        swift_unknownObjectWeakAssign();
        [v7 dismissViewControllerAnimated:1 completion:0];
        v5 = v7;
      }

      else
      {
        v5 = v2;
        v2 = v7;
      }

      v6 = v2;
    }

    else
    {
      v6 = v7;
    }
  }
}

uint64_t sub_1005F6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v8 = type metadata accessor for TTRITemplateSharingPresenter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10001EFA4;

  return (sub_1000A7B00)(a6, 1, v8, &off_100714A98);
}

uint64_t sub_1005F6B68()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1005F6C00, v3, v2);
}

uint64_t sub_1005F6C28()
{
  v1 = *(v0[6] + 16);
  v0[7] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1005F6D10;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {
    v3 = v0[4];
    v4 = v0[5];

    return _swift_task_switch(sub_10001E8F0, v3, v4);
  }
}

uint64_t sub_1005F6D10()
{

  return _swift_task_switch(sub_1005F6E0C, 0, 0);
}

uint64_t sub_1005F6E0C()
{
  v1 = *(v0 + 48);

  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return _swift_task_switch(sub_10001E8F0, v3, v4);
}

uint64_t sub_1005F6E7C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1005F6EE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v3 - 8);
  v5 = v42 - v4;
  v6 = type metadata accessor for URL();
  v47 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v9 - 8);
  v11 = v42 - v10;
  v12 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  v17 = __chkstk_darwin(v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v42 - v21;
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v46 = v20;
  v23 = sub_100009044(0x656C746974, 0xE500000000000000);
  if ((v24 & 1) == 0 || !*(a1 + 16))
  {
    goto LABEL_8;
  }

  v25 = (*(a1 + 56) + 16 * v23);
  v26 = *v25;
  v44 = v6;
  v45 = v26;
  v27 = v25[1];

  v28 = sub_100009044(0x676E697274536469, 0xE800000000000000);
  if ((v29 & 1) == 0)
  {

    goto LABEL_8;
  }

  v42[1] = *(*(a1 + 56) + 16 * v28);
  v43 = v27;
  swift_bridgeObjectRetain_n();

  TTRListType.PredefinedSmartListType.init(rawValue:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, &unk_10078D520);
    URL.init(string:)();

    v30 = v47;
    v31 = v44;
    if ((*(v47 + 48))(v5, 1, v44) == 1)
    {

      sub_1000079B4(v5, &unk_100775660);
LABEL_9:
      v32 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
      return (*(*(v32 - 8) + 56))(v48, 1, 1, v32);
    }

    (*(v30 + 32))(v8, v5, v31);
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    v38 = [objc_opt_self() objectIDWithURL:v36];

    (*(v30 + 8))(v8, v31);
    if (v38)
    {
      *v22 = v38;
      goto LABEL_14;
    }

LABEL_8:

    goto LABEL_9;
  }

  v34 = *(v13 + 32);
  v34(v15, v11, v12);
  v34(v22, v15, v12);
LABEL_14:
  v39 = v43;
  swift_storeEnumTagMultiPayload();
  sub_1005F7444(v22, v19);
  v40 = v48;
  *v48 = v45;
  v40[1] = v39;
  v41 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  sub_1005F7444(v19, v40 + *(v41 + 20));
  return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
}

uint64_t sub_1005F7444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1005F74B8(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *&a2[v7];
      *&v4[v7] = v8;
      v9 = v8;
    }

    else
    {
      v11 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v11 - 8) + 16))(&v4[v7], &a2[v7], v11);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

void sub_1005F75D8(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(a1 + v4);
  }

  else
  {
    v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
    v7 = *(*(v6 - 8) + 8);

    v7(a1 + v4, v6);
  }
}

char *sub_1005F7688(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *&a2[v6];
    *&a1[v6] = v7;
    v8 = v7;
  }

  else
  {
    v9 = type metadata accessor for TTRListType.PredefinedSmartListType();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_1005F7754(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    sub_1005F783C(&a1[v6]);
    type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *&a2[v6];
      *&a1[v6] = v7;
      v8 = v7;
    }

    else
    {
      v9 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1005F783C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1005F7898(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for TTRListType.PredefinedSmartListType();
    (*(*(v7 - 8) + 32))(&a1[v5], &a2[v5], v7);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1005F7960(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  if (a1 != a2)
  {
    v7 = *(a3 + 20);
    sub_1005F783C(&a1[v7]);
    v8 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v9 - 8) + 32))(&a1[v7], &a2[v7], v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a1;
}

uint64_t sub_1005F7A6C()
{
  result = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1005F7B04(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1005F7C00(void **a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

void **sub_1005F7C90(void **a1, void **a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_1005F7D40(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1005F783C(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1005F7E00(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1005F7ECC(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005F783C(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1005F7FA8()
{
  result = type metadata accessor for TTRListType.PredefinedSmartListType();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1005F803C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007927F0);
  v1 = sub_100003E30(v0, qword_1007927F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1005F8104(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_selectionRequestObserver] = 0;
  v10 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_section;
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration];
  v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration] = 2;
  v13 = *(type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0) + 20);
  v14 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  static REMHashtagLabelSpecifier.empty.getter();
  v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_isAccessibilityCategory] = 2;
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView] = 0;
  v15 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_labelView;
  *&v4[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton;
  *&v4[v16] = sub_1005FAE38();
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  sub_1005FC6C4();
  v18 = v17;
  UICollectionViewCell.contentConfiguration.setter();
  v19 = [v18 contentView];
  _s9Reminders16ContentStackViewCMa_0(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    if (qword_100767500 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_1007927F0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TTRIAccountsListsTagsHeaderCell: failed to create ContentStackView", v24, 2u);
    }

    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v19 = v20;
  }

  v25 = v20;
  v26 = v19;
  v27 = *&v18[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView];
  *&v18[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView] = v25;
  v28 = v25;

  v29 = [objc_allocWithZone(UIView) init];
  v30 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton;
  v53 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton;
  [*&v18[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton] setHidden:1];
  sub_100003540(0, &qword_10076B020);
  sub_100058000(&unk_100771E00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10062F800;
  v54 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_labelView;
  v32 = *&v18[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_labelView];
  *(v31 + 32) = v32;
  *(v31 + 40) = 1144750080;
  v33 = *&v18[v30];
  *(v31 + 48) = v33;
  type metadata accessor for UILayoutPriority(0);
  sub_1005FC920(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  v34 = v32;
  v35 = v33;
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  *(v31 + 64) = v29;
  *(v31 + 72) = 1132068864;
  sub_100058000(&qword_1007884F0);
  v36 = type metadata accessor for TTRIViewContentPriorityType();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D3F0;
  v41 = (v40 + v39);
  *v41 = 0;
  v42 = *(v37 + 104);
  v42(v41, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v36);
  *(v41 + v38) = 0;
  v42((v41 + v38), enum case for TTRIViewContentPriorityType.hugging(_:), v36);
  v43 = v29;
  static UIView.setContentPriorities(_:for:)();

  sub_100058000(&qword_10076B780);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006322B0;
  v45 = *&v18[v54];
  *(v44 + 32) = v45;
  v46 = *&v18[v53];
  *(v44 + 40) = v46;
  *(v44 + 48) = v43;
  v47 = v43;
  v48 = v45;
  v49 = v46;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 setArrangedSubviews:isa];

  [v28 setLayoutMarginsRelativeArrangement:1];
  [v28 setDebugBoundingBoxesEnabled:0];

  [*&v18[v53] setCustomAlignmentRectInsets:{8.0, 0.0, 8.0, 0.0}];
  [*&v18[v54] setIsAccessibilityElement:0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_10076EA40);
  swift_allocObject();
  v51 = TTRViewModelObserver.init(didReceiveNewValue:)();

  *&v18[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_selectionRequestObserver] = v51;

  return v18;
}

void sub_1005F87C4()
{
  sub_100058000(&qword_10076EA50);
  TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005FCA08();
  }
}

uint64_t sub_1005F8894()
{
  v1 = sub_100058000(&qword_100792990);
  __chkstk_darwin(v1 - 8);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = &v26 - v4;
  v5 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  v27 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v15[*(v13 + 28)], v7, &unk_10077A660);
  v18 = sub_100058000(&qword_10077A670);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_1005FC718(v15, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    return sub_1000079B4(v7, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1005FC718(v15, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    (*(v19 + 8))(v7, v18);
    if ((*(v9 + 88))(v11, v8) == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      (*(v9 + 96))(v11, v8);
      v22 = v26;
      v21 = v27;
      (*(v27 + 32))(v26, v11, v16);
      v23 = v28;
      (*(v21 + 16))(v28, v22, v16);
      (*(v21 + 56))(v23, 0, 1, v16);
      v24 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_section;
      swift_beginAccess();
      v25 = v29;
      sub_10000794C(v0 + v24, v29, &qword_100792990);
      swift_beginAccess();
      sub_1005FC778(v23, v0 + v24);
      swift_endAccess();
      sub_1005F9A54(v25);
      sub_1000079B4(v25, &qword_100792990);
      sub_1000079B4(v23, &qword_100792990);
      return (*(v21 + 8))(v22, v16);
    }

    else
    {
      return (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_1005F8D94(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  __chkstk_darwin(v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for UIListContentConfiguration();
  v50 = *(v17 - 8);
  v51 = v17;
  __chkstk_darwin(v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v45 - v21;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v54.receiver = v2;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, "_bridgedUpdateConfigurationUsingState:", isa);

  v23 = UICellConfigurationState.traitCollection.getter();
  if ([v23 listEnvironment] == 4)
  {
    static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  }

  else
  {
    static UIListContentConfiguration.header()();
  }

  UIListContentConfiguration.textProperties.getter();
  v24 = UIListContentConfiguration.TextProperties.font.getter();
  v25 = *(v11 + 8);
  v48 = v11 + 8;
  v49 = v10;
  v46 = v25;
  v25(v16, v10);
  UIFont.withRoundedDesign()();

  v26 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v26(v53, 0);

  v27 = type metadata accessor for UICellConfigurationState();
  v53[3] = v27;
  v53[4] = &protocol witness table for UICellConfigurationState;
  v28 = sub_1000317B8(v53);
  (*(*(v27 - 8) + 16))(v28, a1, v27);
  UIListContentConfiguration.updated(for:)();
  v29 = v51;
  v30 = *(v50 + 8);
  v30(v19, v51);
  result = sub_100004758(v53);
  v32 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView];
  if (v32)
  {
    v33 = v32;
    UIView.applyLayoutMargins(from:)();

    UIListContentConfiguration.textProperties.getter();
    v34 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_labelView];
    v35 = UIListContentConfiguration.TextProperties.font.getter();
    v36 = UIFont.withRoundedDesign()().super.isa;

    [v34 setFont:v36];
    v37 = UIListContentConfiguration.TextProperties.resolvedColor()().super.isa;
    [v34 setTextColor:v37];

    [v34 setLineBreakMode:UIListContentConfiguration.TextProperties.lineBreakMode.getter()];
    [v34 setNumberOfLines:UIListContentConfiguration.TextProperties.numberOfLines.getter()];
    v38 = UICellConfigurationState.traitCollection.getter();
    LOBYTE(v34) = [v38 _hasSplitViewControllerContextSidebarColumn];

    v39 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration;
    swift_beginAccess();
    sub_1005FC7E8(&v2[v39], v9);
    *v9 = v34;
    v40 = v47;
    sub_1005FC7E8(&v2[v39], v47);
    swift_beginAccess();
    sub_1005FC8BC(v9, &v2[v39]);
    swift_endAccess();
    sub_1005FA114(v40);
    sub_1005FC718(v40, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
    sub_1005FC718(v9, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
    [*&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton] setEnabled:(UICellConfigurationState.isEditing.getter() & 1) == 0];
    v41 = UICellConfigurationState.traitCollection.getter();
    v42 = [v41 preferredContentSizeCategory];

    v43 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v44 = v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_isAccessibilityCategory];
    v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_isAccessibilityCategory] = v43 & 1;
    if (v44 == 2 || ((v43 ^ v44) & 1) != 0)
    {
      sub_1005FAD74();
    }

    v46(v13, v49);
    return (v30)(v52, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005F9420(char *a1@<X8>)
{
  v3 = sub_100058000(&qword_10076BC58);
  __chkstk_darwin(v3 - 8);
  v46 = &v36 - v4;
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_100058000(&qword_10076BDC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v18 = *(v17 - 8);
  v19.n128_f64[0] = __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  if (v22 == 2 || (v22 & 1) == 0)
  {
    v24 = 1;
LABEL_10:
    (*(v18 + 56))(a1, v24, 1, v17, v19);
    return;
  }

  v45 = a1;
  v23 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  sub_10000794C(&v1[*(v23 + 20)], v16, &qword_10076BDC0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &qword_10076BDC0);
LABEL_9:
    v24 = 1;
    a1 = v45;
    goto LABEL_10;
  }

  v42 = *(v18 + 32);
  v43 = v18 + 32;
  v42(v21, v16, v17);
  v25 = *(v23 + 24);
  v26 = v47;
  v27 = *(v47 + 16);
  v41 = v25;
  v44 = v27;
  v27(v13, &v1[v25], v5);
  v40 = *(v26 + 88);
  v28 = v40(v13, v5);
  if (v28 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v28 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    (*(v18 + 8))(v21, v17);
    goto LABEL_9;
  }

  v37 = v1;
  v44(v10, v13, v5);
  static REMHashtagLabelSpecifier.empty.getter();
  sub_1005FC920(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v47 + 8);
  v39(v7, v5);
  v29 = v10;
  v30 = v39;
  v39(v29, v5);
  if (v38)
  {
    (*(v18 + 8))(v21, v17);
    v30(v13, v5);
    goto LABEL_9;
  }

  if (v40(v13, v5) == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v47 + 96))(v13, v5);

    v31 = *(sub_100058000(&qword_10076B830) + 64);
    v32 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v32 - 8) + 8))(&v13[v31], v32);
    v44(v7, &v37[v41], v5);
    v33 = v46;
    TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)();
    v34 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.setter();
    a1 = v45;
    v42(v45, v21, v17);
    v24 = 0;
    goto LABEL_10;
  }

  if (qword_100767500 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_1007927F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown hashtag selection", 25, 2);
  __break(1u);
}

uint64_t sub_1005F9A54(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100792990);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100792998);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_section;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_100792990);
  sub_10000794C(a1, &v12[v14], &qword_100792990);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000079B4(v12, &qword_100792990);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &qword_100792990);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100792998);
    return sub_1005F9DA0();
  }

  v17 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_1005FC920(&qword_1007929A0, &type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v8, v3);
  result = sub_1000079B4(v12, &qword_100792990);
  if ((v18 & 1) == 0)
  {
    return sub_1005F9DA0();
  }

  return result;
}

uint64_t sub_1005F9DA0()
{
  v23 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  __chkstk_darwin(v23);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_100058000(&qword_10076BDC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_100058000(&qword_100792990);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_section;
  swift_beginAccess();
  sub_10000794C(v0 + v15, v10, &qword_100792990);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000079B4(v10, &qword_100792990);
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_labelView);
  v18 = v0;
  TTRAccountsListsViewModel.HashtagsSection.title.getter();
  v19 = String._bridgeToObjectiveC()();

  [v17 setText:v19];

  TTRAccountsListsViewModel.HashtagsSection.filterOperation.getter();
  v20 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration;
  swift_beginAccess();
  sub_1005FC7E8(v18 + v20, v4);
  sub_1005FC84C(v7, &v4[*(v23 + 20)]);
  v21 = v24;
  sub_1005FC7E8(v18 + v20, v24);
  swift_beginAccess();
  sub_1005FC8BC(v4, v18 + v20);
  swift_endAccess();
  sub_1005FA114(v21);
  sub_1005FC718(v21, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
  (*(v12 + 8))(v14, v11);
  return sub_1005FC718(v4, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
}

void sub_1005FA114(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29[0] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007929A8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076BDC0);
  __chkstk_darwin(v9 - 8);
  v32 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  __chkstk_darwin(v17 - 8);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration;
  swift_beginAccess();
  v29[1] = v2;
  v21 = v2 + v20;
  v22 = v30;
  sub_1005FC7E8(v21, v19);
  sub_1005F9420(v16);
  sub_1005FC718(v19, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
  sub_1005F9420(v13);
  v23 = *(v6 + 56);
  sub_10000794C(v16, v8, &qword_10076BDC0);
  sub_10000794C(v13, &v8[v23], &qword_10076BDC0);
  v24 = *(v22 + 48);
  if (v24(v8, 1, v3) == 1)
  {
    sub_1000079B4(v13, &qword_10076BDC0);
    sub_1000079B4(v16, &qword_10076BDC0);
    if (v24(&v8[v23], 1, v3) == 1)
    {
      sub_1000079B4(v8, &qword_10076BDC0);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v8, v32, &qword_10076BDC0);
  if (v24(&v8[v23], 1, v3) == 1)
  {
    sub_1000079B4(v13, &qword_10076BDC0);
    sub_1000079B4(v16, &qword_10076BDC0);
    (*(v22 + 8))(v32, v3);
LABEL_6:
    sub_1000079B4(v8, &qword_1007929A8);
LABEL_7:
    sub_1005FA5AC();
    return;
  }

  v25 = v29[0];
  (*(v22 + 32))(v29[0], &v8[v23], v3);
  sub_1005FC920(&qword_1007929B0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  v26 = v32;
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v22 + 8);
  v28(v25, v3);
  sub_1000079B4(v13, &qword_10076BDC0);
  sub_1000079B4(v16, &qword_10076BDC0);
  v28(v26, v3);
  sub_1000079B4(v8, &qword_10076BDC0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1005FA5AC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v43 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v40 - v7;
  v8 = sub_100058000(&qword_10076BDC8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = sub_100058000(&qword_10076BDC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration;
  swift_beginAccess();
  sub_1005FC7E8(v1 + v22, v17);
  sub_1005F9420(v14);
  sub_1005FC718(v17, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {
    sub_1000079B4(v14, &qword_10076BDC0);
    v23 = 0;
  }

  else
  {
    (*(v19 + 32))(v21, v14, v18);
    v24 = TTRAccountsListsViewModel.HashtagFilterOperation.menuItems.getter();
    __chkstk_darwin(v24);
    *(&v40 - 2) = v21;
    sub_100399058(sub_1005FC968, (&v40 - 4), v24);

    type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
    sub_1005FC920(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    TTRValueBasedMenu.init(children:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = TTRValueBasedMenu.buildMenu(selectionHandler:)();

    (*(v9 + 8))(v11, v8);
    (*(v19 + 8))(v21, v18);
    v25 = v23;
  }

  v26 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton);
  v27 = [v26 isHidden];
  [v26 setMenu:v23];

  [v26 setHidden:v23 == 0];
  if ((v23 == 0) == v27)
  {
  }

  else
  {
    if (v23)
    {
      v28 = static TTRAccesibility.General.Announcements.MoreOptionsShown.getter();
    }

    else
    {
      v28 = static TTRAccesibility.General.Announcements.FewerOptionsShown.getter();
    }

    v30 = v28;
    v31 = v29;
    sub_100003540(0, &qword_100777780);
    v32 = static OS_dispatch_queue.main.getter();
    v33 = v41;
    static DispatchTime.now()();
    v34 = v42;
    + infix(_:_:)();
    v43 = *(v43 + 8);
    (v43)(v33, v50);
    v35 = swift_allocObject();
    *(v35 + 16) = v30;
    *(v35 + 24) = v31;
    aBlock[4] = sub_10039B328;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100733458;
    v36 = _Block_copy(aBlock);

    v37 = v44;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1005FC920(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100058000(&qword_100780A50);
    sub_10001A524();
    v38 = v46;
    v39 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v36);

    (*(v48 + 8))(v38, v39);
    (*(v45 + 8))(v37, v47);
    (v43)(v34, v50);
  }
}

void sub_1005FAD74()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_isAccessibilityCategory);
  if (v1 == 2)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView);
  if ((v1 & 1) == 0)
  {
LABEL_6:
    if (v3)
    {
      [v3 setAxis:0];
      v3 = *(v0 + v2);
      if (v3)
      {
        v4 = 2;
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = 1;
  [v3 setAxis:1];
  v3 = *(v0 + v2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_9:

  [v3 setAlignment:v4];
}

void *sub_1005FAE38()
{
  v0 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  static UIButton.Configuration.plain()();
  (*(v4 + 104))(v6, enum case for UIButton.Configuration.Size.small(_:), v3);
  UIButton.Configuration.buttonSize.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v14 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v14 - 8) + 56))(v2, 0, 1, v14);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_100003540(0, &unk_10077A690);
  (*(v8 + 16))(v10, v13, v7);
  v15 = UIButton.init(configuration:primaryAction:)();
  [v15 setChangesSelectionAsPrimaryAction:1];
  [v15 setShowsMenuAsPrimaryAction:1];
  (*(v8 + 8))(v13, v7);
  return v15;
}

void sub_1005FB0F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v59 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v57 = &v51[-v7];
  __chkstk_darwin(v8);
  v61 = &v51[-v9];
  v10 = sub_100058000(&qword_10076BDE0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v51[-v12];
  v14 = sub_100058000(&qword_10076BC58);
  __chkstk_darwin(v14 - 8);
  v53 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v51[-v17];
  __chkstk_darwin(v19);
  v21 = &v51[-v20];
  v65 = sub_100058000(&qword_10076BDE8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v56 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v23);
  v63 = &v51[-v25];
  v26 = *(v4 + 16);
  v58 = a1;
  v54 = v26;
  v55 = v4 + 16;
  (v26)(v21, a1, v3, v24);
  (*(v4 + 56))(v21, 0, 1, v3);
  TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.getter();
  v27 = *(v11 + 56);
  sub_10000794C(v21, v13, &qword_10076BC58);
  sub_10000794C(v18, &v13[v27], &qword_10076BC58);
  v62 = v4;
  v28 = *(v4 + 48);
  if (v28(v13, 1, v3) != 1)
  {
    sub_10000794C(v13, v53, &qword_10076BC58);
    if (v28(&v13[v27], 1, v3) != 1)
    {
      v45 = v62;
      v46 = &v13[v27];
      v47 = v61;
      (*(v62 + 32))(v61, v46, v3);
      sub_1005FC920(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
      v48 = v53;
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v45 + 8);
      v49(v47, v3);
      sub_1000079B4(v18, &qword_10076BC58);
      sub_1000079B4(v21, &qword_10076BC58);
      v49(v48, v3);
      sub_1000079B4(v13, &qword_10076BC58);
      v30 = v65;
      if (v52)
      {
        v29 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    sub_1000079B4(v18, &qword_10076BC58);
    sub_1000079B4(v21, &qword_10076BC58);
    (*(v62 + 8))(v53, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_10076BDE0);
    v30 = v65;
LABEL_7:
    v29 = &enum case for TTRValueBasedMenuItem.SelectionState.off<A>(_:);
    goto LABEL_8;
  }

  sub_1000079B4(v18, &qword_10076BC58);
  sub_1000079B4(v21, &qword_10076BC58);
  if (v28(&v13[v27], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v13, &qword_10076BC58);
  v29 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
  v30 = v65;
LABEL_8:
  v31 = v30;
  (*(v64 + 104))(v63, *v29);
  v32 = v57;
  v54(v57, v58, v3);
  v33 = v62;
  v34 = (*(v62 + 88))(v32, v3);
  v35 = v34;
  if (v34 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:) || v34 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    v36 = *(v33 + 104);
    v37 = v61;
    v36(v61, v34, v3);
    v38 = TTRAccountsListsViewModel.HashtagFilterOperation.Option.localizedOptionString.getter();
    v57 = v39;
    v58 = v38;
    (*(v33 + 8))(v37, v3);
    v40 = v63;
    v41 = v64;
    (*(v64 + 16))(v56, v63, v31);
    v36(v59, v35, v3);
    sub_1005FC920(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    v42 = v60;
    TTRValueBasedMenuItem.init(title:image:state:value:)();
    (*(v41 + 8))(v40, v65);
    v43 = enum case for TTRValueBasedMenuElement.item<A>(_:);
    v44 = sub_100058000(&qword_10076BDF0);
    (*(*(v44 - 8) + 104))(v42, v43, v44);
  }

  else
  {
    if (qword_100767500 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003E30(v50, qword_1007927F0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown option type", 19, 2);
    __break(1u);
  }
}

void sub_1005FB8C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10056B9A8(a1);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1005FB944()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_delegate);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_section, &qword_100792990);
  sub_1005FC718(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton);
}

id sub_1005FBB20(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1005FBB90(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithArrangedSubviews:", isa);

  return v6;
}

id sub_1005FBC3C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

char *sub_1005FBCBC(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v8 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = sub_100058000(&qword_10076BDC0);
      memcpy(&v4[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = *(a3 + 24);
    v13 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v13 - 8) + 16))(&v4[v12], &a2[v12], v13);
  }

  return v4;
}

uint64_t sub_1005FBE60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = *(a2 + 24);
  v8 = type metadata accessor for REMHashtagLabelSpecifier();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

_BYTE *sub_1005FBF68(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = sub_100058000(&qword_10076BDC0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = *(a3 + 24);
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  return a1;
}

_BYTE *sub_1005FC0C0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = sub_100058000(&qword_10076BDC0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v14 - 8) + 24))(&a1[v13], &a2[v13], v14);
  return a1;
}

_BYTE *sub_1005FC284(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = sub_100058000(&qword_10076BDC0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = *(a3 + 24);
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  return a1;
}

_BYTE *sub_1005FC3DC(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = sub_100058000(&qword_10076BDC0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  return a1;
}

unint64_t sub_1005FC5C8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s9Reminders39ContentConfigurationForContentStackViewVN_0;
  result = sub_1005FC6C4();
  *(a1 + 32) = result;
  return result;
}

void (*sub_1005FC5FC(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &_s9Reminders39ContentConfigurationForContentStackViewVN_0;
  *(v2 + 32) = sub_1005FC6C4();
  return sub_10009D584;
}

uint64_t sub_1005FC674(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

unint64_t sub_1005FC6C4()
{
  result = qword_100792988;
  if (!qword_100792988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792988);
  }

  return result;
}

uint64_t sub_1005FC718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005FC778(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100792990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FC7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FC84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FC8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FC920(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1005FC990()
{
  _s9Reminders16ContentStackViewCMa_0(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1005FC920(&qword_1007929B8, _s9Reminders16ContentStackViewCMa_0);
  return v0;
}

void sub_1005FCA08()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0);
  __chkstk_darwin(v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v18[-v6];
  v8 = sub_100058000(&qword_10076EA48);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_selectionRequestObserver))
  {

    TTRViewModelObserver.localValue.getter();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000079B4(v10, &qword_10076EA48);
    }

    else
    {
      sub_10014C5BC(v10, v14);
      v15 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration;
      swift_beginAccess();
      sub_1005FC7E8(v1 + v15, v7);
      v16 = *(v2 + 24);
      v17 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v17 - 8) + 24))(&v7[v16], v14, v17);
      sub_1005FC7E8(v1 + v15, v4);
      swift_beginAccess();
      sub_1005FC8BC(v7, v1 + v15);
      swift_endAccess();
      sub_1005FA114(v4);
      sub_1005FC718(v4, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
      sub_1005FC718(v14, type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags);
      sub_1005FC718(v7, type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005FCCE8()
{
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_selectionRequestObserver) = 0;
  v1 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_section;
  v2 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuConfiguration) = 2;
  v4 = *(type metadata accessor for TTRIAccountsListsTagsHeaderCell.MenuConfiguration(0) + 20);
  v5 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  static REMHashtagLabelSpecifier.empty.getter();
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_isAccessibilityCategory) = 2;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_innerStackView) = 0;
  v6 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_labelView;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_menuButton;
  *(v0 + v7) = sub_1005FAE38();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1005FCE90(uint64_t a1)
{
  v129 = a1;
  v126 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v135 = *(v126 - 8);
  __chkstk_darwin(v126);
  v114 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100058000(&unk_100781FB0);
  __chkstk_darwin(v124);
  v125 = &v106 - v3;
  v4 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v4 - 8);
  v119 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v132 = &v106 - v7;
  __chkstk_darwin(v8);
  v133 = &v106 - v9;
  v10 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v10 - 8);
  v123 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v106 - v13;
  __chkstk_darwin(v14);
  v112 = &v106 - v15;
  v118 = type metadata accessor for REMHashtagLabelSpecifier();
  v115 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v106 - v18;
  v127 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v19 = *(v127 - 8);
  __chkstk_darwin(v127);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&unk_100792BA0);
  __chkstk_darwin(v22 - 8);
  v120 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v111 = &v106 - v25;
  __chkstk_darwin(v26);
  v28 = &v106 - v27;
  v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v106 - v34;
  v36 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  swift_beginAccess();
  v37 = v19;
  v39 = v19 + 48;
  v38 = *(v19 + 48);
  v40 = v1;
  v41 = &v1[v36];
  v42 = v127;
  v134 = v38;
  v128 = v39;
  v43 = v38(v41, 1, v127);
  v130 = v40;
  v131 = v37;
  v116 = v21;
  v122 = v36;
  if (!v43)
  {
    v109 = v32;
    v110 = v35;
    v46 = v37;
    (*(v37 + 16))(v21, &v40[v36], v42);
    v45 = v42;
    TTRRemindersListViewModel.HashtagsState.selectorState.getter();
    v47 = *(v46 + 8);
    v47(v21, v45);
    v48 = *(v30 + 6);
    v44 = v29;
    if (v48(v28, 1, v29) == 1)
    {
      goto LABEL_4;
    }

    v107 = v48;
    v108 = v47;
    v106 = *(v30 + 4);
    v106(v110, v28, v29);
    v83 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_internalSelection;
    v84 = v130;
    swift_beginAccess();
    v120 = v30;
    v85 = v115;
    v86 = *(v115 + 16);
    v121 = v29;
    v87 = v118;
    v86(v117, &v84[v83], v118);
    v88 = v113;
    TTRRemindersListViewModel.HashtagLabelSelectorState.selection.getter();
    swift_beginAccess();
    (*(v85 + 40))(&v84[v83], v88, v87);
    swift_endAccess();
    v89 = v112;
    sub_10000794C(v129, v112, &qword_1007693B8);
    v58 = v134;
    if (v134(v89, 1, v45) == 1)
    {
      sub_1000079B4(v89, &qword_1007693B8);
      v90 = v111;
      v120[7](v111, 1, 1, v121);
      v57 = v126;
      v53 = v133;
      goto LABEL_31;
    }

    v90 = v111;
    TTRRemindersListViewModel.HashtagsState.selectorState.getter();
    v108(v89, v45);
    v91 = v107(v90, 1, v121);
    v57 = v126;
    v53 = v133;
    if (v91 == 1)
    {
LABEL_31:
      sub_1000079B4(v90, &unk_100792BA0);
      v92 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
      v56 = v130;
      v93 = *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
      *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v93 | 1;
      v54 = v122;
      if ((v93 | 1) != v93)
      {
        [v56 setNeedsLayout];
        if ((v56[v92] & 5) != 0)
        {
          [v56 invalidateIntrinsicContentSize];
        }
      }

      (*(v115 + 8))(v117, v118);
      (v120[1])(v110, v121);
      v52 = v135;
      v49 = v129;
      goto LABEL_8;
    }

    v106(v109, v90, v121);
    v94 = TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
    v95 = TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
    v96 = sub_1001268C0(v94, v95);

    if (v96)
    {
      v97 = v113;
      TTRRemindersListViewModel.HashtagLabelSelectorState.selection.getter();
      sub_100602B14(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
      v98 = v118;
      v99 = dispatch thunk of static Equatable.== infix(_:_:)();
      v100 = v115;
      (*(v115 + 8))(v97, v98);
      v49 = v129;
      v56 = v130;
      v52 = v135;
      if (v99)
      {
        goto LABEL_42;
      }

      v101 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
      v102 = *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
      *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v102 | 2;
      if ((v102 | 2) == v102)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v101 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
      v49 = v129;
      v56 = v130;
      v103 = *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
      *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v103 | 1;
      v52 = v135;
      v100 = v115;
      if ((v103 | 1) == v103)
      {
LABEL_42:
        v104 = v120[1];
        v105 = v121;
        (v104)(v109, v121);
        (*(v100 + 8))(v117, v118);
        (v104)(v110, v105);
        v53 = v133;
        v54 = v122;
        v45 = v127;
        goto LABEL_8;
      }
    }

    [v56 setNeedsLayout];
    if ((v56[v101] & 5) != 0)
    {
      [v56 invalidateIntrinsicContentSize];
    }

    goto LABEL_42;
  }

  (*(v30 + 7))(v28, 1, 1, v29);
  v44 = v29;
  v45 = v42;
LABEL_4:
  sub_1000079B4(v28, &unk_100792BA0);
  v49 = v129;
  v50 = v121;
  sub_10000794C(v129, v121, &qword_1007693B8);
  if (v134(v50, 1, v45) == 1)
  {
    sub_1000079B4(v50, &qword_1007693B8);
    v51 = v120;
    (*(v30 + 7))(v120, 1, 1, v44);
    v52 = v135;
    v53 = v133;
    v54 = v122;
LABEL_7:
    sub_1000079B4(v51, &unk_100792BA0);
    v56 = v130;
    v57 = v126;
    v58 = v134;
    goto LABEL_8;
  }

  v51 = v120;
  TTRRemindersListViewModel.HashtagsState.selectorState.getter();
  (*(v131 + 8))(v50, v45);
  v55 = (*(v30 + 6))(v51, 1, v44);
  v52 = v135;
  v53 = v133;
  v54 = v122;
  if (v55 == 1)
  {
    goto LABEL_7;
  }

  sub_1000079B4(v51, &unk_100792BA0);
  v81 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
  v56 = v130;
  v82 = *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
  *&v130[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v82 | 1;
  v57 = v126;
  v58 = v134;
  if ((v82 | 1) != v82)
  {
    [v56 setNeedsLayout];
    if ((v56[v81] & 5) != 0)
    {
      [v56 invalidateIntrinsicContentSize];
    }
  }

LABEL_8:
  if (v58(&v56[v54], 1, v45))
  {
    (*(v52 + 56))(v53, 1, 1, v57);
    v59 = v123;
    v60 = v131;
  }

  else
  {
    v60 = v131;
    v61 = &v56[v54];
    v62 = v116;
    (*(v131 + 16))(v116, v61, v45);
    TTRRemindersListViewModel.HashtagsState.selectionDescription.getter();
    (*(v60 + 8))(v62, v45);
    v59 = v123;
  }

  sub_10000794C(v49, v59, &qword_1007693B8);
  v63 = v56;
  if (v58(v59, 1, v45) == 1)
  {
    sub_1000079B4(v59, &qword_1007693B8);
    v64 = v135;
    v65 = v132;
    (*(v135 + 56))(v132, 1, 1, v57);
  }

  else
  {
    v65 = v132;
    TTRRemindersListViewModel.HashtagsState.selectionDescription.getter();
    (*(v60 + 8))(v59, v45);
    v64 = v135;
  }

  v66 = v125;
  v67 = *(v124 + 48);
  sub_10000794C(v53, v125, &qword_1007708D8);
  sub_10000794C(v65, v66 + v67, &qword_1007708D8);
  v68 = v64;
  v69 = v53;
  v70 = *(v68 + 48);
  if (v70(v66, 1, v57) == 1)
  {
    sub_1000079B4(v65, &qword_1007708D8);
    sub_1000079B4(v69, &qword_1007708D8);
    v71 = v63;
    if (v70(v66 + v67, 1, v57) == 1)
    {
      return sub_1000079B4(v66, &qword_1007708D8);
    }
  }

  else
  {
    v73 = v119;
    sub_10000794C(v66, v119, &qword_1007708D8);
    v71 = v63;
    if (v70(v66 + v67, 1, v57) != 1)
    {
      v76 = v73;
      v77 = v135;
      v78 = v114;
      (*(v135 + 32))(v114, v66 + v67, v57);
      sub_100602B14(&unk_1007716E0, &type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription);
      v79 = dispatch thunk of static Equatable.== infix(_:_:)();
      v80 = *(v77 + 8);
      v80(v78, v57);
      sub_1000079B4(v132, &qword_1007708D8);
      sub_1000079B4(v133, &qword_1007708D8);
      v80(v76, v57);
      result = sub_1000079B4(v66, &qword_1007708D8);
      if (v79)
      {
        return result;
      }

      goto LABEL_20;
    }

    sub_1000079B4(v132, &qword_1007708D8);
    sub_1000079B4(v133, &qword_1007708D8);
    (*(v135 + 8))(v73, v57);
  }

  result = sub_1000079B4(v66, &unk_100781FB0);
LABEL_20:
  v74 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
  v75 = *&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
  *&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v75 | 4;
  if ((v75 | 4) != v75)
  {
    result = [v71 setNeedsLayout];
    if ((v71[v74] & 5) != 0)
    {
      return [v71 invalidateIntrinsicContentSize];
    }
  }

  return result;
}

id sub_1005FDF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v38 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  v12 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_allowsExcludedSelection] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel] = 0;
  v13 = &v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector];
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  static REMHashtagLabelSpecifier.labels(_:)();
  *&v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = 7;
  v37 = sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15 = [objc_opt_self() containerBoxViewWithArrangedSubviews:isa];

  v16 = v15;
  [v16 setLayoutMarginsRelativeArrangement:1];
  v17 = v16;
  [v17 setPreservesSuperviewLayoutMargins:0];
  [v17 setHorizontalAlignment:0];
  [v17 setVerticalAlignment:0];
  [v17 setDebugBoundingBoxesEnabled:0];

  *&v4[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_labelBoxView] = v17;
  v18 = v17;
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v40.receiver = v4;
  v40.super_class = ObjectType;
  v20 = ObjectType;
  v21 = objc_msgSendSuper2(&v40, "initWithStyle:reuseIdentifier:", a1, v19);

  v22 = v21;
  v23 = [v22 containerView];
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginTransferActionForArrangedSubview.setter();

  v24 = [v22 containerView];
  [v24 setLayoutMarginsRelativeArrangement:0];

  v25 = [v22 containerView];
  [v25 setPreservesSuperviewLayoutMargins:1];

  v26 = [v22 containerView];
  [v26 setAxis:1];

  v27 = [v22 containerView];
  [v27 setSpacing:0.0];

  v28 = [v22 containerView];
  [v28 setAlignment:0];

  v29 = [v22 containerView];
  [v29 setDistribution:0];

  v30 = [v22 containerView];
  sub_100058000(&qword_10076B780);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10062D420;
  *(v31 + 32) = v17;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setArrangedSubviews:v32];

  v33 = [v22 containerView];
  [v33 setDelegate:v22];

  v34 = v38;
  (*(v8 + 104))(v10, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v38);
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v8 + 8))(v10, v34);
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();
  v39[3] = v20;
  v39[0] = v22;
  static UIAccessibility.addAccessibilityStatusChangeObserver(_:selector:)();
  sub_100004758(v39);
  sub_100058000(&unk_10076BD70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10062D400;
  *(v35 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v22;
}

uint64_t sub_1005FE4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRIMarginTransferAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIMarginTransferAction.init(edgesToReceiveMargins:redirectedTarget:)();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 documentView];
    TTRIMarginTransferAction.redirectedTarget.setter();
  }

  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

id sub_1005FE7E8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
  if (v2)
  {
    *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = 0;
    if (v2)
    {
      sub_1005FEA04();
      if ((v2 & 2) == 0)
      {
        sub_1005FF018(0);
        if ((v2 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v2 & 2) == 0)
    {
      if ((v2 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_1005FF018(0);
LABEL_10:
    sub_1005FF5B8();
  }

LABEL_11:
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "layoutSubviews");
}

id sub_1005FE8C4(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = *&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
  if (v6)
  {
    *&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = 0;
    if (v6)
    {
      sub_1005FEA04();
      if ((v6 & 2) == 0)
      {
        sub_1005FF018(0);
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v6 & 2) == 0)
    {
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_1005FF018(0);
LABEL_10:
    sub_1005FF5B8();
  }

LABEL_11:
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "sizeThatFits:", a1, a2);
}

uint64_t sub_1005FE9C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100602BB0(a1);

  *a2 = v3;
  return result;
}

void *sub_1005FEA04()
{
  v1 = v0;
  v55 = type metadata accessor for TTRHashtagCollectionViewAddTagButtonState();
  v51 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100792BA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  swift_beginAccess();
  if ((*(v7 + 48))(&v1[v17], 1, v6))
  {
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_4:
    sub_1000079B4(v12, &unk_100792BA0);
LABEL_5:
    v19 = &v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector];
    v20 = *v19;
    if (*v19)
    {
      [v20 removeFromSuperview];
      v20 = *v19;
    }

    v21 = *(v19 + 1);
    *(v19 + 1) = 0;
    *(v19 + 2) = 0;
    *v19 = 0;
    return sub_100113914(v20, v21);
  }

  v49 = v5;
  v50 = v16;
  v18 = v55;
  (*(v7 + 16))(v9, &v1[v17], v6);
  TTRRemindersListViewModel.HashtagsState.selectorState.getter();
  (*(v7 + 8))(v9, v6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  v23 = v50;
  (*(v14 + 32))(v50, v12, v13);
  v24 = [v1 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 != 1)
  {
    (*(v14 + 8))(v23, v13);
    goto LABEL_5;
  }

  v46 = v13;
  v26 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector];
  v27 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector + 8];
  v48 = &v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector];
  v28 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector + 16];
  if (v26)
  {
    v47 = v26;
    v29 = v27;
    v45 = v28;
  }

  else
  {
    v47 = sub_1005FFFC0(v1);
    v29 = v30;
    v45 = v31;
  }

  v32 = v51;
  sub_10011395C(v26, v27);
  TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
  v33 = static TTRLocalizableStrings.Hashtags.allTagsText.getter();
  v34 = v49;
  *v49 = v33;
  v34[1] = v35;
  (*(v53 + 104))(v34, enum case for TTRHashtagCollectionViewAllTagsButtonState.shown(_:), v54);
  v36 = v52;
  (*(v32 + 104))(v52, enum case for TTRHashtagCollectionViewAddTagButtonState.hidden(_:), v18);
  v37 = [v29 arrangedSubviews];
  if (v37)
  {
    v38 = v37;
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v39 = v49;
  v40 = v45;
  TTRHashtagCollectionViewPopulator.updateButtons(toShow:allTagsButtonState:addTagButtonState:hashTagButtonFont:reusing:)();

  (*(v32 + 8))(v36, v55);
  (*(v53 + 8))(v39, v54);
  v41 = v47;
  v42 = [v47 superview];
  if (!v42)
  {
    v43 = [v1 containerView];
    [v43 insertArrangedSubview:v41 atIndex:0];
    v42 = v43;
  }

  (*(v14 + 8))(v50, v46);
  v44 = v48;
  v20 = *v48;
  v21 = *(v48 + 1);
  *v48 = v41;
  *(v44 + 1) = v29;
  *(v44 + 2) = v40;
  return sub_100113914(v20, v21);
}

uint64_t sub_1005FF018(int a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for TTRHashtagCollectionViewAnimationParams();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRHashtagCollectionViewDropState();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMHashtagLabelSpecifier();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100792BA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  swift_beginAccess();
  result = (*(v12 + 48))(v2 + v18, 1, v11);
  if (!result)
  {
    v45 = v10;
    v46 = v7;
    v47 = v8;
    v20 = v2;
    (*(v12 + 16))(v14, v2 + v18, v11);
    TTRRemindersListViewModel.HashtagsState.selectorState.getter();
    (*(v12 + 8))(v14, v11);
    v21 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v17, 1, v21) == 1)
    {
      return sub_1000079B4(v17, &unk_100792BA0);
    }

    else
    {
      v23 = TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
      (*(v22 + 8))(v17, v21);
      v24 = *(v20 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector);
      if (v24)
      {
        v25 = v20;
        v42 = v23;
        v26 = *(v20 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector + 8);
        v44 = v24;
        v27 = v26;

        v43 = v27;
        v28 = [v27 arrangedSubviews];
        if (v28)
        {
          v29 = v28;
          sub_100003540(0, &qword_10076B020);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v30 = v52;
        v31 = v5;
        v32 = v50;
        v33 = v46;
        v34 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_internalSelection;
        swift_beginAccess();
        v35 = v25 + v34;
        v36 = v45;
        v37 = v47;
        (*(v53 + 16))(v45, v35, v47);
        v38 = v49;
        v39 = *(v49 + 104);
        v52 = v31;
        v39(v33, enum case for TTRHashtagCollectionViewDropState.noDrop(_:), v31);
        if (v48)
        {
          *v32 = 0x3FD3333333333333;
          v40 = &enum case for TTRHashtagCollectionViewAnimationParams.animated(_:);
        }

        else
        {
          v40 = &enum case for TTRHashtagCollectionViewAnimationParams.unanimated(_:);
        }

        v41 = v51;
        (*(v51 + 104))(v32, *v40, v30);
        TTRHashtagCollectionViewPopulator.updateSelection(for:hashtagLabels:selection:dropState:animation:)();

        (*(v41 + 8))(v32, v30);
        (*(v38 + 8))(v33, v52);
        return (*(v53 + 8))(v36, v37);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1005FF5B8()
{
  v1 = sub_100058000(&qword_100781F48);
  __chkstk_darwin(v1 - 8);
  v68 = &v58 - v2;
  v67 = type metadata accessor for REMHashtagLabelSpecifier();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  v69 = *(v63 - 8);
  __chkstk_darwin(v63);
  v70.super.isa = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_100058000(&unk_100781F70);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v58 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  swift_beginAccess();
  v18 = v0;
  if (!(*(v7 + 48))(&v0[v17], 1, v6))
  {
    v60 = v16;
    isa = v70.super.isa;
    (*(v7 + 16))(v9, &v0[v17], v6);
    TTRRemindersListViewModel.HashtagsState.selectionDescription.getter();
    (*(v7 + 8))(v9, v6);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      goto LABEL_4;
    }

    v58 = v13;
    v59 = v14;
    v30 = v60;
    v31 = (*(v14 + 32))(v60, v12);
    if (*&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel])
    {
      v32 = *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel];
    }

    else
    {
      v31 = sub_10060031C();
      v32 = v31;
    }

    v33 = isa;
    v34 = v66;
    __chkstk_darwin(v31);
    *(&v58 - 2) = v30;
    __chkstk_darwin(v35);
    *(&v58 - 2) = v30;
    v37 = v36;
    v38 = TTRRemindersListViewModel.HashtagSelectionDescription.attributedPreferredDescription(baseAttributes:emphasizedAttributes:)();
    v39 = v67;
    v40 = v62;
    if (v38)
    {
      v70.super.isa = v38;
      v66 = 2;
    }

    else
    {
      v70.super.isa = sub_1006007E8();
      v66 = 0;
    }

    v41 = v64;
    v42 = v65;
    v43 = [v0 traitCollection];
    v44 = [v43 horizontalSizeClass];

    v45 = &enum case for TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.replaceWithButton<A>(_:);
    if (v44 != 1 && (static UIAccessibility.ttriIsAccessibilityRunning.getter() & 1) == 0)
    {
      v45 = &enum case for TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.replaceWithText<A>(_:);
    }

    (*(v40 + 104))(v61, *v45, v41);
    TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.setter();
    v46 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_internalSelection;
    swift_beginAccess();
    (*(v42 + 16))(v34, &v18[v46], v39);
    v47 = (*(v42 + 88))(v34, v39);
    v48 = v63;
    if (v47 == enum case for REMHashtagLabelSpecifier.labels(_:))
    {
      (*(v42 + 96))(v34, v39);

      v49 = *(sub_100058000(&qword_10076B830) + 64);
      v50 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      v51 = (*(*(v50 - 8) + 88))(v34 + v49, v50);
      v52 = v69;
      if (v51 == enum case for REMHashtagLabelSpecifier.Operation.or(_:))
      {
        v53 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:);
        v54 = v68;
        goto LABEL_28;
      }

      v54 = v68;
      if (v51 == enum case for REMHashtagLabelSpecifier.Operation.and(_:))
      {
        v53 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
LABEL_28:
        (*(v52 + 104))(v33, *v53, v48);
        (*(v52 + 16))(v54, v33, v48);
        v23 = 1;
        (*(v52 + 56))(v54, 0, 1, v48);
        TTRIInlineButtonAttachmentTextView.selectedItem.setter();
        v55 = v70.super.isa;
        TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v70, 0);
        v56 = [v32 textContainer];
        [v56 setMaximumNumberOfLines:v66];

        (*(v52 + 8))(v33, v48);
        (*(v59 + 8))(v60, v58);
        v57 = *&v18[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel];
        *&v18[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel] = v32;
        v21 = v32;

        if (v21)
        {
          sub_100058000(&qword_10076B780);
          v22 = swift_allocObject();
          v23 = 0;
          *(v22 + 1) = xmmword_10062D420;
          v22[4] = v21;
        }

        else
        {
          v22 = _swiftEmptyArrayStorage;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v53 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
      v54 = v68;
      v52 = v69;
      if (v47 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v47 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
        goto LABEL_28;
      }
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  (*(v14 + 56))(v12, 1, 1, v13);
LABEL_4:
  sub_1000079B4(v12, &qword_1007708D8);
  v20 = *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel];
  *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel] = 0;

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v23 = 1;
LABEL_5:
  v24 = *&v18[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_labelBoxView];
  v25 = v21;
  v26 = [v24 arrangedSubviews];
  if (v26 && (v27 = v26, sub_100003540(0, &qword_10076B020), v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v27, , LOBYTE(v27) = sub_10012671C(v28, v22), , , (v27 & 1) != 0))
  {

    if ((v23 & 1) == 0)
    {
LABEL_8:

      [v24 layoutMargins];
      [v24 setLayoutMargins:7.0];

      return;
    }
  }

  else
  {
    sub_100003540(0, &qword_10076B020);
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v24 setArrangedSubviews:v29];

    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  [v24 layoutMargins];
  [v24 setLayoutMargins:8.0];
}

id sub_1005FFFC0(void *a1)
{
  v2 = type metadata accessor for TTRIHashtagCollectionViewAdaptor.ContainerView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_allocWithZone(_s9Reminders19HorizontalStackViewCMa_0(0));
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithArrangedSubviews:isa];

  v9 = v8;
  [v9 setAxis:0];
  [v9 setSpacing:8.0];
  [v9 setAlignment:2];
  [v9 setDistribution:0];
  v10 = v9;
  [v10 layoutMargins];
  [v10 setLayoutMargins:6.0];
  v11 = v10;
  [v11 setLayoutMarginsRelativeArrangement:1];
  [v11 setDebugBoundingBoxesEnabled:0];
  [v11 setDelegate:a1];

  v12 = [objc_allocWithZone(NUIContentScrollView) initWithDocumentView:v11];
  [v12 setHorizontalAlignment:1];
  [v12 setVerticalAlignment:3];
  [v12 setCanScrollDocumentViewVertically:0];
  [v12 setCanScrollDocumentViewHorizontally:1];
  v13 = v12;
  [v13 setShowsHorizontalScrollIndicator:0];
  [v13 setContentInsetAdjustmentBehavior:2];
  [v13 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  [v13 setTtrFocusGroupIdentifier:0];
  *v5 = v11;
  v5[1] = v13;
  (*(v3 + 104))(v5, enum case for TTRIHashtagCollectionViewAdaptor.ContainerView.stack(_:), v2);
  type metadata accessor for TTRIHashtagCollectionViewAdaptor();
  swift_allocObject();
  v14 = v13;
  v15 = a1;
  v17[1] = TTRIHashtagCollectionViewAdaptor.init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)();
  sub_100058000(&qword_100781F68);
  swift_allocObject();
  TTRHashtagCollectionViewPopulator.init(adaptor:)();
  return v14;
}

id sub_10060031C()
{
  v0 = sub_100058000(&qword_100781F48);
  __chkstk_darwin(v0 - 8);
  v32 = &v21 - v1;
  v2 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  sub_100058000(&unk_100792B80);
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedSubheadlineFont.getter();
  TTRIInlineButtonAttachmentTextView.font.setter();
  sub_100058000(&unk_100781F80);
  v27 = sub_100058000(&unk_100792B90);
  v33 = *(v27 - 8);
  v29 = *(v33 + 72);
  v9 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v10 = swift_allocObject();
  v30 = v10;
  *(v10 + 16) = xmmword_10062D3F0;
  v24 = v10 + v9;
  v11 = enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:);
  v28 = v3;
  v12 = *(v3 + 104);
  v12(v8, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:), v2);
  TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter();
  v26 = *(v3 + 8);
  v26(v8, v2);
  v21 = v5;
  v12(v5, v11, v2);
  v25 = sub_100602B14(&qword_100781F90, &type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions);
  v13 = v24;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v23 = enum case for TTRIInlineButtonAttachmentTextView.Option.item<A>(_:);
  v14 = *(v33 + 104);
  v33 += 104;
  v22 = v14;
  v15 = v27;
  v14(v13);
  v16 = enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
  v12(v8, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:), v2);
  TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter();
  v26(v8, v2);
  v12(v21, v16, v2);
  v17 = v29;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v22(v13 + v17, v23, v15);
  v18 = v31;
  TTRIInlineButtonAttachmentTextView.menuOptions.setter();
  v19 = v32;
  v12(v32, v16, v2);
  (*(v28 + 56))(v19, 0, 1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
  TTRIInlineButtonAttachmentTextView.attachmentToken.setter();
  sub_100602B14(&qword_100792B78, type metadata accessor for TTRIRemindersListHashtagCollectionCell);
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v18;
}

id sub_1006007E8()
{
  TTRRemindersListViewModel.HashtagSelectionDescription.generic.getter();
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0);
  v2 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  *(inited + 64) = v1;
  *(inited + 72) = NSForegroundColorAttributeName;
  v3 = objc_opt_self();
  v4 = NSForegroundColorAttributeName;
  v5 = [v3 secondaryLabelColor];
  *(inited + 104) = sub_100003540(0, &qword_100772610);
  *(inited + 80) = v5;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100602B14(&qword_100778A60, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithString:v7 attributes:isa];

  return v9;
}

uint64_t sub_100600A04(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100792BA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  swift_beginAccess();
  result = (*(v11 + 48))(&v2[v17], 1, v10);
  if (!result)
  {
    v38 = v3;
    v39 = v6;
    v40 = v9;
    v41 = v4;
    (*(v11 + 16))(v13, &v2[v17], v10);
    TTRRemindersListViewModel.HashtagsState.selectorState.getter();
    (*(v11 + 8))(v13, v10);
    v19 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v16, 1, v19) == 1)
    {
      return sub_1000079B4(v16, &unk_100792BA0);
    }

    else
    {
      TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
      (*(v20 + 8))(v16, v19);
      if (*&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector])
      {
        v21 = *&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector + 16];
        v22 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_internalSelection;
        swift_beginAccess();
        v23 = v41;
        v37 = *(v41 + 16);
        v25 = v38;
        v24 = v39;
        v37(v39, &v2[v22], v38);

        v26 = v40;
        v42 = v21;
        TTRHashtagCollectionViewPopulator.modifySelection(_:forUserSelectedHashtagButton:hashtagLabels:allowsEmptySelection:allowsExcludedSelection:)();

        v27 = *(v23 + 8);
        v27(v24, v25);
        v36 = v22;
        v37(v24, &v2[v22], v25);
        sub_100602B14(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
        LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
        v27(v24, v25);
        if (v21)
        {
          v27(v26, v25);
        }

        else
        {
          v28 = v36;
          swift_beginAccess();
          (*(v41 + 24))(&v2[v28], v26, v25);
          swift_endAccess();
          v29 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
          v30 = *&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
          *&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v30 | 2;
          if ((v30 | 2) != v30)
          {
            [v2 setNeedsLayout];
            if ((v2[v29] & 5) != 0)
            {
              [v2 invalidateIntrinsicContentSize];
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v32 = v25;
            v33 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
            v34 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
            sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v33);
            v35 = *(v34 + 8);
            v25 = v32;
            (*(v35 + 984))(v26, v33);
            swift_unknownObjectRelease();
          }

          return (v27)(v26, v25);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

char *sub_100601044()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector);
  if (v1)
  {
    v12 = sub_100003540(0, &qword_100781F60);
    *&v11 = v1;
    v2 = v1;
    v3 = sub_1005470E4(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1005470E4((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    sub_100007DD8(&v11, &v3[32 * v5 + 32]);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel);
  if (v6)
  {
    v12 = sub_100058000(&unk_100792B80);
    *&v11 = v6;
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1005470E4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1005470E4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    sub_100007DD8(&v11, &v3[32 * v9 + 32]);
  }

  if (!*(v3 + 2))
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1006011CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel);
  if (v1)
  {
    v2 = v1;
    if (TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter())
    {
      type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
      v3 = UIView.firstDescendantView<A>(ofType:passing:)();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 accessibilityLabel];

        if (v5)
        {
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v6;
        }
      }
    }
  }

  return 0;
}

void sub_1006012C8()
{
  sub_1006013D4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for REMHashtagLabelSpecifier();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1006013D4()
{
  if (!qword_100792A28)
  {
    type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100792A28);
    }
  }
}

uint64_t sub_100601524(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v73 = *(v2 - 8);
  __chkstk_darwin(v2);
  v71 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v61 - v5;
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  v12 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100781F48);
  __chkstk_darwin(v15 - 8);
  v17 = &v61 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v24 = a1;
  v26 = v25;
  sub_1000046FC(v24, v75);
  v27 = swift_dynamicCast();
  v28 = *(v26 + 56);
  if (!v27)
  {
    v28(v17, 1, 1, v18);
    return sub_1000079B4(v17, &qword_100781F48);
  }

  v28(v17, 0, 1, v18);
  (*(v26 + 32))(v23, v17, v18);
  (*(v26 + 16))(v20, v23, v18);
  v29 = (*(v26 + 88))(v20, v18);
  v65 = v11;
  if (v29 == enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:))
  {
    v30 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
  }

  else
  {
    if (v29 != enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_22;
    }

    v30 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  }

  v67 = v26;
  (*(v13 + 104))(v74, *v30, v12);
  v68 = v12;
  v32 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_internalSelection;
  v33 = v72;
  swift_beginAccess();
  v34 = v73;
  v35 = *(v73 + 16);
  v63 = v32;
  v35(v8, &v33[v32], v2);
  v36 = v70;
  v62 = v35;
  v35(v70, v8, v2);
  v37 = (*(v34 + 88))(v36, v2);
  v38 = v37;
  v66 = v13;
  v64 = v23;
  if (v37 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    v47 = enum case for REMHashtagLabelSpecifier.allLabels(_:);
    if (v37 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v37 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      v48 = v73;
      v69 = *(v73 + 8);
      v69(v8, v2);
      v46 = v65;
      (*(v48 + 104))(v65, v47, v2);
      goto LABEL_12;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v69 = *(v34 + 8);
  v69(v8, v2);
  (*(v34 + 96))(v36, v2);
  v39 = v34;
  v40 = *(sub_100058000(&qword_10076B830) + 64);
  v41 = v65;
  *v65 = *v36;
  v42 = *(v13 + 16);
  v61 = v18;
  v43 = v68;
  v42(&v41[v40], v74, v68);
  (*(v39 + 104))(v41, v38, v2);
  v44 = *(v13 + 8);
  v45 = v43;
  v18 = v61;
  v46 = v41;
  v44(&v36[v40], v45);
LABEL_12:
  v49 = v71;
  v50 = v72;
  v51 = v63;
  v62(v71, &v72[v63], v2);
  sub_100602B14(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v69(v49, v2);
  v53 = v67;
  if (v52)
  {
    v69(v46, v2);
    (*(v66 + 8))(v74, v68);
  }

  else
  {
    v54 = v50;
    swift_beginAccess();
    (*(v73 + 24))(&v50[v51], v46, v2);
    swift_endAccess();
    v55 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
    v56 = *&v54[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
    *&v54[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v56 | 2;
    v57 = v66;
    if ((v56 | 2) != v56)
    {
      [v54 setNeedsLayout];
      if ((v54[v55] & 5) != 0)
      {
        [v54 invalidateIntrinsicContentSize];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v59 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v60 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v59);
      (*(*(v60 + 8) + 984))(v46, v59);
      v53 = v67;
      swift_unknownObjectRelease();
    }

    v69(v46, v2);
    (*(v57 + 8))(v74, v68);
  }

  return (*(v53 + 8))(v64, v18);
}

id sub_100601D0C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 attributedText];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = v9;
  v12 = [v10 initWithAttributedString:v11];
  v13 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_internalSelection;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v13, v2);
  if ((*(v3 + 88))(v6, v2) == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v6, v2);
    v14 = *(sub_100058000(&qword_10076B830) + 64);
    v15 = NSAttributedString.ttrAccessibilityConvertedToHaveVoiceOverReadableTagList(withIncludedTags:andExcludedTags:)();

    v16 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v15];

    v17 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v17 - 8) + 8))(&v6[v14], v17);
    v12 = v16;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  v18 = sub_1006011CC();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    sub_100602B14(&qword_100792B78, type metadata accessor for TTRIRemindersListHashtagCollectionCell);
    v22._countAndFlagsBits = v20;
    v22._object = v21;
    v23.super.isa = TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v12, v22).super.isa;

    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23.super.isa];

    v12 = v24;
  }

  else
  {
    v23.super.isa = v11;
  }

  return v12;
}

uint64_t sub_10060202C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel);
  if (v2 && (v3 = v2, v4 = TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter(), v3, (v4 & 1) != 0))
  {
    v5 = static TTRAccesibility.General.Hint.AnyOrAllMenuHint.getter();
    v7 = v6;
    v8 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100546970((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v7;
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_9;
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector))
  {
    v13 = static TTRAccesibility.Hashtags.GoToHashtagHint.getter();
    v15 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100546970(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_100546970((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    if (*(v8 + 2))
    {
      goto LABEL_10;
    }

LABEL_16:

    return 0;
  }

LABEL_9:
  if (!*(v8 + 2))
  {
    goto LABEL_16;
  }

LABEL_10:
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t sub_100602218()
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  if (*&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector])
  {
    return 0;
  }

  v2 = [v0 window];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for TTRIHashtagButton();
  v4 = UIView.firstDescendantView<A>(ofType:passing:)();

  return v4;
}

id sub_1006022A8(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_100792AE0];
  *v11 = 0;
  v11[8] = 1;
  *&a1[qword_100792AE8] = &_swiftEmptyDictionarySingleton;
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a2, a3, a4, a5);
  [v12 setNeverCacheEffectiveLayoutSize:1];
  return v12;
}

id sub_10060235C(char *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = &a1[qword_100792AE0];
    *v6 = 0;
    v6[8] = 1;
    *&a1[qword_100792AE8] = &_swiftEmptyDictionarySingleton;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = &a1[qword_100792AE0];
    *v7 = 0;
    v7[8] = 1;
    *&a1[qword_100792AE8] = &_swiftEmptyDictionarySingleton;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithArrangedSubviews:", isa);

  [v8 setNeverCacheEffectiveLayoutSize:1];
  return v8;
}

void sub_100602478(uint64_t a1)
{
  v1 = a1 + qword_100792AE0;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(a1 + qword_100792AE8) = &_swiftEmptyDictionarySingleton;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100602500(char *a1, double a2, double a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_100792AE0 + 8])
  {
    v10 = a5;
    v11 = a1;
    v12 = 0.0;
  }

  else
  {
    v13 = *&a1[qword_100792AE0];
    v14 = a5;
    v15 = a1;
    [v15 layoutMargins];
    v17 = v13 - v16;
    [v15 layoutMargins];
    v12 = v17 - v18;
  }

  if (v12 >= a2)
  {
    v12 = a2;
  }

  v22.receiver = a1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "contentLayoutSizeFittingSize:forArrangedSubview:", a5, v12, a3);
  v20 = v19;

  return v20;
}

double sub_1006025EC(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[qword_100792AE0];
  v8 = v2[qword_100792AE0 + 8];
  v9 = qword_100792AE8;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (*(v10 + 16) && (v11 = sub_1003B3ED4(v7, v8, a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
  }

  else
  {
    swift_endAccess();
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "effectiveLayoutSizeFittingSize:", a1, a2);
    v13 = v14;
    v16 = v15;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *&v3[v9];
    *&v3[v9] = 0x8000000000000000;
    sub_1001284E4(v7, v8, isUniquelyReferenced_nonNull_native, v13, v16, a1, a2);
    *&v3[v9] = v19;
  }

  swift_endAccess();
  return v13;
}

double sub_100602740(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1006025EC(a2, a3);

  return v6;
}

void sub_100602794(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "invalidateInternalStateForInvalidation:", a3);
  if (a3 > 1)
  {
    v5 = qword_100792AE8;
    swift_beginAccess();
    *&v4[v5] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
  }
}

Swift::Int sub_100602838(Swift::UInt64 a1, char a2, double a3, double a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  if (a3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a3;
  }

  Hasher._combine(_:)(*&v9);
  if (a4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a4;
  }

  Hasher._combine(_:)(*&v10);
  return Hasher._finalize()();
}

unint64_t sub_100602960()
{
  result = qword_100792B50;
  if (!qword_100792B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792B50);
  }

  return result;
}

unint64_t sub_1006029B8()
{
  result = qword_100792B58;
  if (!qword_100792B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792B58);
  }

  return result;
}

unint64_t sub_100602A10()
{
  result = qword_100792B60;
  if (!qword_100792B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792B60);
  }

  return result;
}

unint64_t sub_100602A68()
{
  result = qword_100792B68;
  if (!qword_100792B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792B68);
  }

  return result;
}

unint64_t sub_100602AC0()
{
  result = qword_100792B70;
  if (!qword_100792B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100792B70);
  }

  return result;
}

uint64_t sub_100602B14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100602B5C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

uint64_t sub_100602BB0(uint64_t a1)
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

char *sub_100602BE8(char *result)
{
  v1 = result;
  v2 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags;
  v3 = *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags];
  *&result[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags] = v3 | 1;
  if ((v3 | 1) != v3)
  {
    result = [result setNeedsLayout];
    v3 = *&v1[v2];
    if ((v3 & 5) != 0)
    {
      result = [v1 invalidateIntrinsicContentSize];
      v3 = *&v1[v2];
    }
  }

  *&v1[v2] = v3 | 4;
  if ((v3 | 4) != v3)
  {
    result = [v1 setNeedsLayout];
    if ((v1[v2] & 5) != 0)
    {

      return [v1 invalidateIntrinsicContentSize];
    }
  }

  return result;
}

void sub_100602CB8()
{
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
  v2 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_allowsExcludedSelection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_selectionDescriptionLabel) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  static REMHashtagLabelSpecifier.labels(_:)();
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_updateFlags) = 7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100602DCC(id a1, double a2)
{
  v5 = [v2 containerView];

  if (v5 == a1)
  {
    if (*&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector])
    {
      v6 = *&v2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_hashtagSelector + 8] + qword_100792AE0;
      *v6 = a2;
      *(v6 + 8) = 0;
    }
  }
}

void sub_100602E5C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectRelease();
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = [v1 contentView];
  v7 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_dragInteraction;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (v8)
  {
    [v6 removeInteraction:*&v1[v7]];

    *&v1[v7] = 0;
  }

  if (v5)
  {
    sub_100003540(0, &qword_100792DC8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain_n();
    v10 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v5];
    swift_unknownObjectRelease();
    [v10 _setLiftMoveHysteresis:1.0];
    [v10 _setPointerLiftMoveHysteresis:1.0];
    [v10 _setCancellationTimerEnabled:0];
    v11 = v10;
    [v6 addInteraction:v11];

    swift_unknownObjectRelease();
    *&v1[v7] = v11;
  }

  swift_endAccess();

  v12 = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl, sub_1006063BC);
  v13 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_reorderControlDragInteraction;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (v14)
  {
    [v12 removeInteraction:*&v1[v13]];

    *&v1[v13] = 0;
  }

  if (v5)
  {
    sub_100003540(0, &qword_100792DC8);
    v15 = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain_n();
    v16 = [objc_allocWithZone(v15) initWithDelegate:v5];
    swift_unknownObjectRelease();
    [v16 _setLiftMoveHysteresis:1.0];
    [v16 _setPointerLiftMoveHysteresis:1.0];
    [v16 _setCancellationTimerEnabled:0];
    [v16 _setLiftDelay:0.04];
    [v16 _setPointerLiftDelay:0.04];
    v17 = v16;
    [v12 addInteraction:v17];
    *&v1[v13] = v17;
    swift_endAccess();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_endAccess();
  }
}

id sub_100603168()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView);
  }

  else
  {
    v4 = sub_100605A8C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1006031CC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100792DA0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = v27 - v15;
  if (!*(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver))
  {
    __break(1u);
    return result;
  }

  TTRViewModelObserver.localValue.getter();

  v17 = type metadata accessor for TTRBoardEditableColumnHeaderViewModel();
  if ((*(*(v17 - 8) + 48))(v8, 1, v17))
  {
    return sub_1000079B4(v8, &unk_100792DA0);
  }

  TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.getter();
  sub_1000079B4(v8, &unk_100792DA0);
  (*(v10 + 32))(v16, v13, v9);
  v18 = sub_100603168();
  v19 = [v18 text];

  v27[1] = v1;
  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
  v23 = TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
  v25 = v24;
  (*(v3 + 8))(v5, v2);
  if (!v22)
  {

    goto LABEL_13;
  }

  if (v20 != v23 || v22 != v25)
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      return (*(v10 + 8))(v16, v9);
    }

LABEL_13:
    sub_1006074C8(v16);
    return (*(v10 + 8))(v16, v9);
  }

  return (*(v10 + 8))(v16, v9);
}

id sub_100603574(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_unsupportedTextDropHandler;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_dragInteraction] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_reorderControlDragInteraction] = 0;
  v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_needsSetUpScrollPocketInteractions] = 1;
  v11 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
  v12 = sub_100058000(&qword_100781830);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___menuButton] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl] = 0;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_10060371C();

  return v13;
}

void sub_10060371C()
{
  v1 = sub_100058000(&qword_10076C030);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_100058000(&qword_100792DB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&unk_100792DB8);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver] = TTRViewModelObserver.init(didReceiveNewValue:)();

  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    static UIBackgroundConfiguration.clear()();
    v11 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    UIBackgroundConfiguration.backgroundColorTransformer.setter();
    [v0 setAutomaticallyUpdatesBackgroundConfiguration:0];
    (*(v8 + 16))(v3, v10, v7);
    (*(v8 + 56))(v3, 0, 1, v7);
    UICollectionViewCell.backgroundConfiguration.setter();
    (*(v8 + 8))(v10, v7);
  }

  v12 = [v0 containerView];
  [v12 setDebugBoundingBoxesEnabled:0];

  sub_100606694();
  sub_100604820();
}

id sub_100603A20(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_unsupportedTextDropHandler;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_dragInteraction] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_reorderControlDragInteraction] = 0;
  v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_needsSetUpScrollPocketInteractions] = 1;
  v5 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
  v6 = sub_100058000(&qword_100781830);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___menuButton] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10060371C();
  }

  return v8;
}

id sub_100603BD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-v4];
  v6 = sub_100058000(&qword_100781830);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v19.receiver = v1;
  v19.super_class = ObjectType;
  result = objc_msgSendSuper2(&v19, "prepareForReuse", v8);
  if (*&v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver])
  {

    TTRViewModelObserver.unsubscribe()();

    v12 = sub_100603168();
    [v12 setText:0];

    v13 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
    swift_beginAccess();
    result = (*(v7 + 48))(&v1[v13], 1, v6);
    if (!result)
    {
      (*(v7 + 16))(v10, &v1[v13], v6);
      TTRRemindersListInCellModule.interface.getter();
      (*(v7 + 8))(v10, v6);
      v14 = v18;
      v15 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
      swift_beginAccess();
      sub_100019180(v5, v14 + v16, &unk_100776BC0);
      swift_endAccess();
      sub_1004E49D0();
      swift_unknownObjectRelease();
      return sub_1000079B4(v5, &unk_100776BC0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100603EB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_10076C030);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "_bridgedUpdateConfigurationUsingState:", isa);

  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    UICollectionViewCell.backgroundConfiguration.getter();
    v10 = type metadata accessor for UIBackgroundConfiguration();
    if ((*(*(v10 - 8) + 48))(v8, 1, v10))
    {
      sub_10000794C(v8, v5, &qword_10076C030);
      UICollectionViewCell.backgroundConfiguration.setter();
      sub_1000079B4(v8, &qword_10076C030);
    }

    else
    {
      v11 = UICellConfigurationState.isPinned.getter();
      v12 = objc_opt_self();
      v13 = &selRef_systemBackgroundColor;
      if ((v11 & 1) == 0)
      {
        v13 = &selRef_clearColor;
      }

      v14 = [v12 *v13];
      UIBackgroundConfiguration.backgroundColor.setter();
      UICollectionViewCell.backgroundConfiguration.setter();
    }
  }

  v15 = UICellConfigurationState.isEditing.getter();
  v16 = v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode];
  v1[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode] = v15 & 1;
  if ((v15 & 1) != v16)
  {
    sub_100604820();
  }
}

void sub_100604480()
{
  v0 = sub_100603168();
  v1 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v0 addInteraction:v1];

  v2 = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___menuButton, sub_100605D28);
  v3 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v2 addInteraction:v3];

  v4 = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl, sub_1006063BC);
  v5 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v4 addInteraction:v5];
}

uint64_t sub_100604624(uint64_t a1)
{
  v3 = sub_100058000(&qword_100781830);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
  swift_beginAccess();
  sub_100019180(a1, v1 + v7, &unk_100792D90);
  swift_endAccess();
  if (!(*(v4 + 48))(v1 + v7, 1, v3))
  {
    (*(v4 + 16))(v6, v1 + v7, v3);
    TTRRemindersListInCellModule.interface.getter();
    (*(v4 + 8))(v6, v3);
    v8 = v12;
    *(v12 + 40) = &off_100733608;
    swift_unknownObjectWeakAssign();
    v9 = sub_100603168();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100276240(v9);
      swift_unknownObjectRelease();
    }

    *(v8 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle) = 1;
    sub_1004E5374([v9 isEditing]);

    swift_unknownObjectRelease();
  }

  return sub_1000079B4(a1, &unk_100792D90);
}

void sub_100604820()
{
  v122 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v126 = &v115 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for TTRRemindersListLayout();
  v125 = *(v131 - 1);
  __chkstk_darwin(v131);
  v124 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v133 = *(v128 - 8);
  __chkstk_darwin(v128);
  v140 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v3;
  __chkstk_darwin(v4);
  v132 = &v115 - v5;
  v6 = sub_100058000(&unk_100792D90);
  __chkstk_darwin(v6 - 8);
  v123 = &v115 - v7;
  v8 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v115 - v12;
  v13 = sub_100058000(&qword_100781830);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v118 = &v115 - v18;
  v19 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v19 - 8);
  v120 = &v115 - v20;
  v21 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v21 - 8);
  v23 = &v115 - v22;
  v130 = type metadata accessor for TTRRemindersListViewModel.Item();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v137 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v135 = *(v25 - 8);
  v136 = v25;
  v26 = *(v135 + 64);
  __chkstk_darwin(v25);
  v134 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v139 = &v115 - v28;
  v29 = sub_100058000(&unk_100792DA0);
  __chkstk_darwin(v29 - 8);
  v31 = &v115 - v30;
  v32 = type metadata accessor for TTRBoardEditableColumnHeaderViewModel();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v138 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v0;
  if (!*&v0[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver])
  {
    goto LABEL_34;
  }

  TTRViewModelObserver.localValue.getter();

  if ((*(v33 + 48))(v31, 1, v32) != 1)
  {
    v116 = v33;
    v40 = *(v33 + 32);
    v117 = v32;
    v40(v138, v31, v32);
    TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.getter();
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v41 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v23, 1, v41) == 1)
    {
      sub_1000079B4(v23, &qword_10076E900);
    }

    else
    {
      v43 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
      (*(v42 + 8))(v23, v41);
      if (v43)
      {
        v44 = v141;
        v45 = &v141[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v46 = v44;
          v47 = *(v45 + 1);
          v48 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
          swift_beginAccess();
          if ((*(v14 + 48))(&v46[v48], 1, v13))
          {
            v49 = v120;
            (*(v129 + 56))(v120, 1, 1, v130);
            v50 = v132;
            v51 = v139;
          }

          else
          {
            v100 = &v46[v48];
            v101 = v118;
            (*(v14 + 16))(v118, v100, v13);
            TTRRemindersListInCellModule.interface.getter();
            (*(v14 + 8))(v101, v13);
            v102 = aBlock[0];
            v103 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
            swift_beginAccess();
            v104 = v119;
            sub_10000794C(v102 + v103, v119, &unk_100776BC0);
            v106 = v135;
            v105 = v136;
            v107 = (*(v135 + 48))(v104, 1, v136);
            v49 = v120;
            if (v107)
            {
              swift_unknownObjectRelease();
              sub_1000079B4(v104, &unk_100776BC0);
              v108 = 1;
            }

            else
            {
              v109 = v134;
              (*(v106 + 16))(v134, v104, v105);
              sub_1000079B4(v104, &unk_100776BC0);
              TTRRemindersListEditableSectionNameViewModel.item.getter();
              swift_unknownObjectRelease();
              (*(v106 + 8))(v109, v105);
              v108 = 0;
            }

            v50 = v132;
            v51 = v139;
            (*(v129 + 56))(v49, v108, 1, v130);
          }

          ObjectType = swift_getObjectType();
          v111 = *(v47 + 8);
          v44 = v141;
          v112 = v137;
          v113 = (*(v111 + 8))(v141, &off_100733608, v137, v49, ObjectType, v111);
          sub_1000079B4(v49, &qword_100772140);
          if (v113)
          {
            v114 = v123;
            (*(v111 + 16))(v44, &off_100733608, v112, ObjectType, v111);
            sub_100604624(v114);
          }

          swift_unknownObjectRelease();
          LODWORD(v120) = 1;
          v53 = v133;
LABEL_14:
          TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
          v54 = v125;
          v55 = v124;
          v56 = v131;
          (*(v125 + 13))(v124, enum case for TTRRemindersListLayout.columns(_:), v131);
          TTRRemindersListEditableSectionNameViewModel.placeholderTitle(listLayout:)();
          v58 = v57;
          (v54)[1](v55, v56);
          if (v58)
          {
            v59 = objc_allocWithZone(NSAttributedString);
            v60 = String._bridgeToObjectiveC()();

            v61 = [v59 initWithString:v60];

            v131 = v61;
            v62 = v61;
          }

          else
          {
            v131 = 0;
          }

          v63 = v140;
          v64 = v126;
          if (swift_unknownObjectWeakLoadStrong())
          {
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
              v126 = sub_10013A548(v64);
              swift_unknownObjectRelease();
              (*(v121 + 8))(v64, v122);
              swift_unknownObjectRelease();
LABEL_22:
              v66 = [v44 containerView];
              [v66 setUserInteractionEnabled:TTRBoardEditableColumnHeaderViewModel.isUserInteractionEnabled.getter() & 1];

              v125 = [v44 containerView];
              v67 = v128;
              (*(v53 + 16))(v63, v50, v128);
              v68 = v135;
              v69 = v136;
              (*(v135 + 16))(v134, v51, v136);
              v70 = (*(v53 + 80) + 16) & ~*(v53 + 80);
              v71 = (v127 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
              v72 = (*(v68 + 80) + v71 + 9) & ~*(v68 + 80);
              v73 = (v26 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
              v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
              v75 = swift_allocObject();
              v76 = v75 + v70;
              v77 = v67;
              (*(v53 + 32))(v76, v140, v67);
              v78 = v75 + v71;
              v79 = v141;
              *v78 = v141;
              *(v78 + 8) = v120;
              (*(v68 + 32))(v75 + v72, v134, v69);
              v80 = v131;
              *(v75 + v73) = v131;
              v81 = v80;
              v82 = v126;
              *(v75 + v74) = v126;
              v83 = swift_allocObject();
              *(v83 + 16) = sub_100608E04;
              *(v83 + 24) = v75;
              v134 = v75;
              aBlock[4] = sub_100068444;
              aBlock[5] = v83;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100026440;
              aBlock[3] = &unk_100733760;
              v84 = _Block_copy(aBlock);
              v85 = v82;

              v86 = v79;

              v87 = v125;
              [v125 performBatchUpdates:v84];

              _Block_release(v84);
              LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

              if ((v87 & 1) == 0)
              {
                v141 = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl, sub_1006063BC);
                v88._countAndFlagsBits = 0x20726564726F6552;
                v89._object = 0x800000010068FB80;
                v88._object = 0xEA00000000004025;
                v89._countAndFlagsBits = 0xD000000000000066;
                TTRLocalizedString(_:comment:)(v88, v89);
                sub_100058000(&unk_100786CB0);
                v90 = swift_allocObject();
                *(v90 + 16) = xmmword_10062D400;
                v126 = v86;
                v91 = v140;
                v127 = v85;
                v92 = v139;
                TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
                v93 = TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
                v131 = v81;
                v94 = v77;
                v96 = v95;
                v97 = *(v133 + 8);
                v97(v91, v94);
                *(v90 + 56) = &type metadata for String;
                *(v90 + 64) = sub_10005C390();
                *(v90 + 32) = v93;
                *(v90 + 40) = v96;
                static String.localizedStringWithFormat(_:_:)();

                v98 = String._bridgeToObjectiveC()();

                v99 = v141;
                [v141 setAccessibilityLabel:v98];

                sub_100607830();
                v97(v132, v94);
                (*(v129 + 8))(v137, v130);
                (*(v135 + 8))(v92, v136);
                (*(v116 + 8))(v138, v117);

                return;
              }

              __break(1u);
LABEL_34:
              __break(1u);
              return;
            }

            swift_unknownObjectRelease();
            (*(v121 + 8))(v64, v122);
          }

          v126 = 0;
          goto LABEL_22;
        }

        LODWORD(v120) = 1;
LABEL_13:
        v52 = v123;
        (*(v14 + 56))(v123, 1, 1, v13);
        sub_100604624(v52);
        v53 = v133;
        v50 = v132;
        v51 = v139;
        goto LABEL_14;
      }
    }

    LODWORD(v120) = 0;
    v44 = v141;
    goto LABEL_13;
  }

  sub_1000079B4(v31, &unk_100792DA0);
  v35 = v141;
  v36 = sub_100603168();
  [v36 setText:0];

  v37 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
  swift_beginAccess();
  if (!(*(v14 + 48))(&v35[v37], 1, v13))
  {
    (*(v14 + 16))(v16, &v35[v37], v13);
    TTRRemindersListInCellModule.interface.getter();
    (*(v14 + 8))(v16, v13);
    v38 = v142;
    (*(v135 + 56))(v10, 1, 1, v136);
    v39 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    sub_100019180(v10, v38 + v39, &unk_100776BC0);
    swift_endAccess();
    sub_1004E49D0();
    swift_unknownObjectRelease();
    sub_1000079B4(v10, &unk_100776BC0);
  }

  sub_100606B70(0, 0, v35);
}

id sub_100605A8C(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for TTRIRemindersListEditableSectionNameTextView());
  v3 = TTRIExpandingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)();
  sub_100003540(0, &qword_100771DF0);
  v4 = v3;
  v5 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v4 setFont:v5];

  v6 = [v4 textContainer];
  [v6 setLineBreakMode:4];

  v7 = [v4 textContainer];
  [v7 setWidthTracksTextView:1];

  sub_100003540(0, &unk_10076B090);
  UITextDraggable<>.disableDragInteraction_rdar93793341()();
  [v4 setTextDropDelegate:*(a1 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_unsupportedTextDropHandler)];
  v8 = UIAccessibilityTraitHeader;
  v9 = v4;
  v10 = [v9 accessibilityTraits];
  if ((v8 & ~v10) != 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  [v9 setAccessibilityTraits:v11 | v10];

  LODWORD(v12) = 1132068864;
  [v9 setLayoutSize:NUIContainerViewSizeUnbounded[0] withContentPriority:{NUIContainerViewSizeUnbounded[1], v12}];
  return v9;
}

id sub_100605C5C()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox);
  }

  else
  {
    type metadata accessor for AccessoryBoxView(0);
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setVerticalAlignment:3];
    [v4 setHorizontalAlignment:0];

    [v4 setCustomAlignmentRectInsets:{5.0, 0.0, 5.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100605D28()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  static UIButton.Configuration.plain()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  UIButton.Configuration.image.setter();
  sub_100003540(0, &qword_100771DF0);
  v13 = static UIFont.roundedSubheadlineSemiboldFont.getter();
  v14 = [objc_opt_self() configurationWithFont:v13];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v15 = [objc_opt_self() tertiaryLabelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v1 + 104))(v3, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
  UIButton.Configuration.cornerStyle.setter();
  type metadata accessor for TTRIExpandedHitTestButton();
  (*(v5 + 16))(v7, v10, v4);
  v16 = UIButton.init(configuration:primaryAction:)();
  [v16 setShowsMenuAsPrimaryAction:1];
  v17 = v16;
  [v17 setPointerInteractionEnabled:1];
  UIButton.pointerStyleProvider.setter();

  (*(v5 + 8))(v10, v4);
  return v17;
}

uint64_t sub_100606020(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100772620);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v34 = type metadata accessor for UIPointerEffect();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIPointerShape();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v36 = CGRectInset(v35, -3.0, -3.0);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v19 = UIPointerEffect.preview.getter();
  v20 = [v19 target];

  v21 = [v20 container];
  [a1 convertRect:v21 toCoordinateSpace:{x, y, width, height}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v37.origin.x = v23;
  v37.origin.y = v25;
  v37.size.width = v27;
  v37.size.height = v29;
  v30 = CGRectGetHeight(v37);
  *v14 = v23;
  *(v14 + 1) = v25;
  *(v14 + 2) = v27;
  *(v14 + 3) = v29;
  *(v14 + 4) = v30 * 0.5;
  (*(v11 + 104))(v14, enum case for UIPointerShape.roundedRect(_:), v10);
  sub_100003540(0, &qword_100772630);
  (*(v7 + 16))(v9, a2, v34);
  (*(v11 + 16))(v6, v14, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v31 = UIPointerStyle.init(effect:shape:)();
  (*(v11 + 8))(v14, v10);
  return v31;
}

id sub_10060635C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1006063BC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(type metadata accessor for TTRIExpandedHitTestImageView()) initWithImage:v1];
  CGAffineTransformMakeRotation(&v18, 1.57079633);
  [v2 setTransform:&v18];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 tertiaryLabelColor];
  [v4 setTintColor:v5];

  v6 = v4;
  [v6 setIsAccessibilityElement:1];
  v7._countAndFlagsBits = 0xD000000000000038;
  v7._object = 0x800000010068FAC0;
  v8._countAndFlagsBits = 0xD00000000000003CLL;
  v8._object = 0x800000010068FB00;
  TTRLocalizedString(_:comment:)(v7, v8);
  v9 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityHint:v9];

  sub_100058000(&unk_100771E10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  v11._countAndFlagsBits = 0x726564726F6552;
  v12._countAndFlagsBits = 0xD000000000000031;
  v12._object = 0x800000010068FB40;
  v11._object = 0xE700000000000000;
  *(v10 + 32) = TTRLocalizedString(_:comment:)(v11, v12);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setAccessibilityUserInputLabels:isa];

  [v6 setAccessibilityRespondsToUserInteraction:1];
  v14 = UIAccessibilityTraitImage;
  v15 = [v6 accessibilityTraits];
  v16 = -1;
  if ((v15 & v14) != 0)
  {
    v16 = ~v14;
  }

  [v6 setAccessibilityTraits:v16 & v15];

  return v6;
}

void sub_100606640()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100604820();
  }
}

uint64_t sub_100606694()
{
  v1 = [v0 containerView];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100608F70;
  *(v3 + 24) = v2;
  v9[4] = sub_100068444;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100026440;
  v9[3] = &unk_100733800;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;

  [v5 performBatchUpdates:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100606810(void *a1, uint64_t a2)
{
  [a1 setAxis:0];
  [a1 setAlignment:3];
  [a1 setArrangedSubviewRemovalPolicy:2];
  [a1 setSpacing:12.0];
  [a1 setDirectionalLayoutMargins:{12.0, 0.0, 8.0, 0.0}];
  v4 = sub_100605C5C();
  sub_100058000(&qword_10076B780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D410;
  *(v5 + 32) = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___menuButton, sub_100605D28);
  *(v5 + 40) = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl, sub_1006063BC);
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setArrangedSubviews:isa];

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D410;
  v8 = sub_100603168();
  v9 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox;
  v10 = *(a2 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox);
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = v10;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setArrangedSubviews:v12];

  sub_100058000(&unk_100771E00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D3F0;
  v14 = *(a2 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView);
  *(v13 + 32) = v14;
  *(v13 + 40) = 1132068864;
  v15 = *(a2 + v9);
  *(v13 + 48) = v15;
  *(v13 + 56) = 1148846080;
  sub_100058000(&qword_1007884F0);
  v16 = type metadata accessor for TTRIViewContentPriorityType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062D3F0;
  v21 = (v20 + v19);
  *v21 = 0;
  v22 = *(v17 + 104);
  v22(v21, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v16);
  *(v21 + v18) = 0;
  v22((v21 + v18), enum case for TTRIViewContentPriorityType.hugging(_:), v16);
  v23 = v14;
  v24 = v15;
  static UIView.setContentPriorities(_:for:)();
}

void sub_100606B70(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___menuButton, sub_100605D28);
  v7 = v6;
  if (a1)
  {
    v8 = *(a3 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode);
  }

  else
  {
    v8 = 1;
  }

  [v6 setHidden:v8];

  [*(a3 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___menuButton) setMenu:a1];
  v9 = sub_10060635C(&OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___reorderControl, sub_1006063BC);
  v10 = v9;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a3 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode) ^ 1;
  }

  [v9 setHidden:v11 & 1];

  v17 = sub_100605C5C();
  v12 = [*(a3 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox) visibleArrangedSubviews];
  if (v12)
  {
    v13 = v12;
    sub_100003540(0, &qword_10076B020);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  [v17 setHidden:v16];
}

void sub_100606D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v51 = a5;
  v53 = a4;
  v49 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTRRemindersListViewModel.Item();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v47 = sub_100058000(&qword_100776288);
  __chkstk_darwin(v47);
  v56 = &v46 - v14;
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeaderTitle.defaultTextColor.getter();
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:))
  {
    v24 = &selRef_labelColor;
  }

  else if (v23 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:))
  {
    v24 = &selRef_secondaryLabelColor;
  }

  else
  {
    if (v23 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:))
    {
      goto LABEL_21;
    }

    v24 = &selRef_tertiaryLabelColor;
  }

  v25 = [objc_opt_self() *v24];
  TTRRemindersListViewModel.SectionHeaderTitle.textSize.getter();
  v26 = (*(v16 + 88))(v18, v15);
  if (v26 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:) && v26 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:) && v26 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:))
  {
    goto LABEL_22;
  }

  sub_100003540(0, &qword_100771DF0);
  v27 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  isa = UIFont.withBoldTrait()().super.isa;

  v29 = isa;
  v30 = sub_100603168();
  [v30 setFont:v29];

  v31 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView;
  v32 = *(a2 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView);
  [v32 setTextColor:v25];

  v33 = *(a2 + v31);
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 clearColor];
  [v35 setBackgroundColor:v36];

  [*(a2 + v31) setUserInteractionEnabled:v49 & 1];
  sub_1006074C8(v53);
  [*(a2 + v31) setAttributedPlaceholder:v51];
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  v37 = v52;
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  (*(v48 + 8))(v10, v50);
  TTRRemindersListViewModel.Item.SectionCasesItem.id.getter();
  (*(v54 + 8))(v37, v55);
  v38 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v13, 1, v38) == 1)
  {
    sub_1000079B4(v13, &qword_10076B070);
    v40 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v40 - 8) + 56))(v56, 1, 1, v40);
LABEL_14:
    v45 = 0;
LABEL_15:
    sub_100606B70(v57, v45, a2);

    return;
  }

  v41 = v56;
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v39 + 8))(v13, v38);
  v42 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v41, 0, 1, v42);
  v44 = (*(v43 + 88))(v41, v42);
  if (v44 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    goto LABEL_13;
  }

  if (v44 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
  {
    (*(v43 + 8))(v41, v42);
    v45 = 1;
    goto LABEL_15;
  }

  if (v44 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
  {
LABEL_13:
    (*(v43 + 8))(v41, v42);
    goto LABEL_14;
  }

  if (v44 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
  {
    goto LABEL_14;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_21:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_22:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1006074C8(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_100058000(&qword_100781830);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_nameModule;
  swift_beginAccess();
  if ((*(v11 + 48))(v1 + v14, 1, v10))
  {
    v15 = sub_100603168();
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
    (*(v4 + 8))(v6, v3);
    v16 = String._bridgeToObjectiveC()();

    [v15 setText:v16];
  }

  else
  {
    (*(v11 + 16))(v13, v1 + v14, v10);
    TTRRemindersListInCellModule.interface.getter();
    (*(v11 + 8))(v13, v10);
    v17 = v21[0];
    v18 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    sub_100019180(v9, v17 + v20, &unk_100776BC0);
    swift_endAccess();
    sub_1004E49D0();
    swift_unknownObjectRelease();
    sub_1000079B4(v9, &unk_100776BC0);
  }
}

uint64_t sub_100607830()
{
  v1 = v0;
  v2 = type metadata accessor for SectionEntityID();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for AppEntityID();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v60 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v70 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v74 = *(v15 - 8);
  v75 = v15;
  __chkstk_darwin(v15);
  v69 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_100792DA0);
  __chkstk_darwin(v17 - 8);
  v19 = &v57 - v18;
  v20 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v71 = &v57 - v24;
  v25 = type metadata accessor for REMFeatureFlags();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v29, enum case for REMFeatureFlags.viewAnnotation(_:), v25, v27);
  v30 = REMFeatureFlags.isEnabled.getter();
  result = (*(v26 + 8))(v29, v25);
  if (v30)
  {
    if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_viewModelObserver))
    {

      TTRViewModelObserver.localValue.getter();

      v32 = type metadata accessor for TTRBoardEditableColumnHeaderViewModel();
      if ((*(*(v32 - 8) + 48))(v19, 1, v32))
      {
        v33 = &unk_100792DA0;
        v34 = v19;
        return sub_1000079B4(v34, v33);
      }

      TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.getter();
      sub_1000079B4(v19, &unk_100792DA0);
      v36 = v71;
      v35 = v72;
      v37 = v73;
      (*(v72 + 32))(v71, v22, v73);
      TTRRemindersListEditableSectionNameViewModel.item.getter();
      TTRRemindersListViewModel.Item.sectionHeader.getter();
      (*(v70 + 8))(v14, v12);
      v39 = v74;
      v38 = v75;
      if ((*(v74 + 48))(v11, 1, v75) == 1)
      {
        (*(v35 + 8))(v36, v37);
        v33 = &qword_10076E900;
        v34 = v11;
        return sub_1000079B4(v34, v33);
      }

      v40 = v69;
      (*(v39 + 32))(v69, v11, v38);
      v41 = TTRRemindersListViewModel.SectionHeader.listObjectID.getter();
      if (!v41)
      {
        (*(v39 + 8))(v40, v38);
        return (*(v35 + 8))(v36, v37);
      }

      v42 = v41;
      v43 = v57;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v44 = v60;
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
      (*(v58 + 8))(v43, v59);
      v46 = v61;
      v45 = v62;
      v47 = (*(v61 + 88))(v44, v62);
      if (v47 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
      {
        (*(v46 + 96))(v44, v45);
        v48 = *v44;
LABEL_19:
        v49 = &enum case for SectionEntityID.sectioned(_:);
        goto LABEL_20;
      }

      if (v47 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
      {
        (*(v46 + 96))(v44, v45);
        v48 = *v44;
        v49 = &enum case for SectionEntityID.sectionless(_:);
LABEL_20:
        v50 = v48;
        v51 = v63;
        AppEntityID.init(objectID:)();
        v53 = v64;
        v52 = v65;
        v54 = v66;
        (*(v64 + 16))(v65, v51, v66);
        v56 = v67;
        v55 = v68;
        (*(v67 + 104))(v52, *v49, v68);
        type metadata accessor for SectionEntity();
        sub_100608F20(&qword_10076B078, &type metadata accessor for SectionEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        (*(v56 + 8))(v52, v55);
        (*(v53 + 8))(v51, v54);
        (*(v74 + 8))(v69, v75);
        return (*(v72 + 8))(v71, v73);
      }

      if (v47 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        (*(v46 + 8))(v44, v45);
LABEL_18:
        v48 = v42;
        goto LABEL_19;
      }

      if (v47 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

void sub_100608264()
{
  sub_10009C0F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006083A0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v7 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [v3 bounds];
    goto LABEL_5;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    v17 = sub_100603168();
    sub_100608F20(&unk_100792D80, type metadata accessor for TTRIBoardEditableColumnHeader);
    TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(to:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v16 = v25;
    v15 = v23;
    v14 = v21;
    v13 = v19;
    goto LABEL_5;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    v31 = sub_100603168();
    sub_100608F20(&unk_100792D80, type metadata accessor for TTRIBoardEditableColumnHeader);
    TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(toCaretIn:)();
    v32 = *&v37[1];
    v33 = *&v37[2];
    v34 = *&v37[3];
    v35 = *&v37[4];
    v30 = v38;

    if (v38)
    {
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      goto LABEL_6;
    }

    v13 = v32;
    v14 = v33;
    v15 = v34;
    v16 = v35;
LABEL_5:
    [a2 convertRect:v3 fromCoordinateSpace:{v13, v14, v15, v16}];
    v30 = 0;
LABEL_6:
    *a3 = v26;
    *(a3 + 8) = v27;
    *(a3 + 16) = v28;
    *(a3 + 24) = v29;
    *(a3 + 32) = v30;
    return;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:) || v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v30 = 1;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    goto LABEL_6;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100608674()
{
  v0 = sub_100603168();
  type metadata accessor for TTRIRemindersListEditableSectionNameTextView();
  UITextInput<>.ttrBeginEditing()();
}

double sub_1006086C4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1006083A0(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_100608714(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)();

  return v6 & 1;
}

id sub_100608780(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1006087F0(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithArrangedSubviews:", isa);

  return v6;
}

id sub_10060889C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

void sub_100608964(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100603168();
  v5 = [v4 snapshotViewAfterScreenUpdates:0];

  v6 = 0uLL;
  if (v5)
  {
    v7 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView;
    v8 = *&v2[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___nameTextView];
    v9 = UIView.snapshotImage()();

    if (v9)
    {
      v10 = sub_100605C5C();
      v11 = [v10 isHidden];

      if ((v11 & 1) != 0 || (v12 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox, (v13 = [*&v2[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader____lazy_storage___accessoryBox] snapshotViewAfterScreenUpdates:0]) == 0))
      {
        v24 = _swiftEmptyArrayStorage;
      }

      else
      {
        v14 = v13;
        [*&v2[v12] bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v53 = v2[OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_isEditMode];
        v23 = *&v2[v12];
        v24 = sub_10054792C(0, 1, 1, _swiftEmptyArrayStorage);
        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v46 = sub_10054792C((v25 > 1), v26 + 1, 1, v24);
          v27 = v26 + 1;
          v24 = v46;
        }

        *(v24 + 2) = v27;
        v28 = &v24[56 * v26];
        *(v28 + 4) = v14;
        *(v28 + 5) = v16;
        *(v28 + 6) = v18;
        *(v28 + 7) = v20;
        *(v28 + 8) = v22;
        *(v28 + 9) = v23;
        v28[80] = v53 ^ 1;
      }

      v30 = [objc_opt_self() systemBackgroundColor];
      v29 = v2;
      [v29 bounds];
      v51 = v36;
      v54 = v35;
      v47 = v37;
      v49 = v38;
      [*&v2[v7] bounds];
      *&v40 = v39;
      v31 = *&v2[v7];
      *&v41 = v54;
      *(&v41 + 1) = v47;
      v55 = v41;
      *&v41 = v51;
      *(&v41 + 1) = v49;
      *(&v40 + 1) = v42;
      v50 = v40;
      v52 = v41;
      *(&v44 + 1) = v43;
      v48 = v44;
      v45 = v31;
      v34 = v48;
      v33 = v50;
      v32 = v52;
      v6 = v55;
    }

    else
    {

      v29 = 0;
      v30 = 0;
      v5 = 0;
      v31 = 0;
      v24 = 0;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v9 = 0;
    v24 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v32;
  *(a1 + 32) = v29;
  *(a1 + 40) = v30;
  *(a1 + 48) = v5;
  *(a1 + 56) = v33;
  *(a1 + 72) = v34;
  *(a1 + 88) = v31;
  *(a1 + 96) = v9;
  *(a1 + 104) = v24;
}

id sub_100608C14(uint64_t a1)
{
  v3 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result != enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
  {
    v9 = enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:);
    if (result == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      v11 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_dragInteraction;
      v10 = result;
    }

    else
    {
      if (result == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
      {
        return result;
      }

      if (result != enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = OBJC_IVAR____TtC9Reminders29TTRIBoardEditableColumnHeader_dragInteraction;
    }

    swift_beginAccess();
    result = *(v1 + v11);
    if (result)
    {
      return [result setEnabled:v10 != v9];
    }
  }

  return result;
}

id sub_100608DC0(SEL *a1)
{
  v4.receiver = *(v1 + 16);
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_100608E04()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() - 8);
  v5 = (v3 + *(v4 + 80) + 9) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v6);
  v10 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100606D28(v0 + v2, v7, v8, v0 + v5, v9, v10);
}

uint64_t sub_100608F20(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100608F88(void *a1)
{
  v2 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v2 - 8);
  v4 = v37 - v3;
  v40 = type metadata accessor for URL();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767288 != -1)
  {
    swift_once();
  }

  v10 = sub_100003E30(v6, qword_1007A86E8);
  v11 = *(v7 + 16);
  v41 = v6;
  v11(v9, v10, v6);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v13 = [a1 type];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6F666E4972657375;
  *(inited + 88) = 0xE800000000000000;
  v17 = [a1 userInfo];
  if (v17)
  {
    v18 = v17;
    sub_100058000(&unk_100792FB0);
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v19 = 0;
  }

  v46[0] = v19;
  sub_100058000(&unk_100792FA0);
  v20 = String.init<A>(describing:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  UIApplicationShortcutItem.actionURL.getter();
  v22 = v39;
  v23 = v40;
  if ((*(v39 + 48))(v4, 1, v40) == 1)
  {
    sub_1000079B4(v4, &unk_100775660);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to determine action URL for shortcut item", v26, 2u);
    }

    v27 = 0;
  }

  else
  {
    v28 = v38;
    (*(v22 + 32))(v38, v4, v23);
    v29 = sub_100461CFC(&_swiftEmptyArrayStorage);
    v30 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
    v31 = v37[1];
    swift_beginAccess();
    sub_10000794C(v31 + v30, &v44, &qword_10077EBB0);
    if (v45)
    {
      sub_100005FD0(&v44, v46);
      if (*(v29 + 16) && (v32 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v33 & 1) != 0) && (sub_1000046FC(*(v29 + 56) + 32 * v32, &v44), swift_dynamicCast()))
      {
        if (v42 == 0xD000000000000023 && 0x80000001006821E0 == v43)
        {

          v34 = 2;
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            v34 = 2;
          }

          else
          {
            v34 = 0;
          }
        }
      }

      else
      {
        v34 = 0;
      }

      sub_10000C36C(v46, v46[3]);
      v27 = sub_100341B68(v28, v34);
      sub_100004758(v46);
    }

    else
    {
      sub_1000079B4(&v44, &qword_10077EBB0);

      v27 = 0;
    }

    (*(v22 + 8))(v28, v23);
  }

  (*(v7 + 8))(v9, v41);
  return v27;
}

uint64_t sub_1006095D4(void *a1)
{
  v2 = v1;
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100792DD0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315138;
    v10 = [v5 actionIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100004060(v11, v13, v25);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Handling UNNotificationResponse {actionIdentifier: %s}", v8, 0xCu);
    sub_100004758(v9);
  }

  result = swift_allocObject();
  *(result + 16) = 0;
  v16 = *&v2[OBJC_IVAR___TTRIWindowSceneController_store];
  if (v16)
  {
    v17 = result;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v2;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v2;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v2;
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v2;
    v25[0] = v16;
    v25[1] = sub_10060F9E4;
    v25[2] = v18;
    v25[3] = sub_10060F9EC;
    v25[4] = v19;
    v25[5] = sub_10060F9F4;
    v25[6] = v20;
    v25[7] = sub_10060F9FC;
    v25[8] = v21;
    swift_retain_n();
    v22 = v2;
    v23 = v16;
    sub_1004629F8(v5);

    swift_beginAccess();
    v24 = *(v17 + 16);

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006098D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&unk_10076DF50);
  *v13 = a1;
  v14 = a1;
  static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
  (*(v11 + 104))(v13, enum case for REMNavigationSpecifier.reminder(_:), v10);
  REMNavigationSpecifier.url.getter();
  v15 = sub_100461CFC(&_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000794C(a3 + v16, &v24, &qword_10077EBB0);
  if (v25)
  {
    sub_100005FD0(&v24, v26);
    if (*(v15 + 16) && (v17 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v18 & 1) != 0) && (sub_1000046FC(*(v15 + 56) + 32 * v17, &v24), swift_dynamicCast()))
    {
      if (v23[1] == 0xD000000000000023 && 0x80000001006821E0 == v23[2])
      {

        v19 = 2;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    sub_10000C36C(v26, v26[3]);
    v20 = sub_100341B68(v9, v19);
    sub_100004758(v26);
  }

  else
  {
    sub_1000079B4(&v24, &qword_10077EBB0);

    v20 = 0;
  }

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  result = swift_beginAccess();
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_100609C38(void *a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_100058000(&unk_100793000) + 48);
  *v12 = a1;
  v14 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
  v15 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  (*(v10 + 104))(v12, enum case for REMNavigationSpecifier.list(_:), v9);
  v16 = a1;
  REMNavigationSpecifier.url.getter();
  v17 = sub_100461CFC(&_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000794C(a3 + v18, &v27, &qword_10077EBB0);
  if (v28)
  {
    sub_100005FD0(&v27, v29);
    if (*(v17 + 16) && (v19 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v20 & 1) != 0) && (sub_1000046FC(*(v17 + 56) + 32 * v19, &v27), swift_dynamicCast()))
    {
      if (v26[1] == 0xD000000000000023 && 0x80000001006821E0 == v26[2])
      {

        v21 = 2;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    sub_10000C36C(v29, v29[3]);
    v22 = sub_100341B68(v8, v21);
    sub_100004758(v29);
  }

  else
  {
    sub_1000079B4(&v27, &qword_10077EBB0);

    v22 = 0;
  }

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v23 = v26[0];
  result = swift_beginAccess();
  *(v23 + 16) = v22;
  return result;
}

uint64_t sub_100609FE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  v14 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:);
  v15 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v11 + 104))(v13, enum case for REMNavigationSpecifier.today(_:), v10);
  v16 = a1;
  REMNavigationSpecifier.url.getter();
  v17 = sub_100461CFC(&_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000794C(a3 + v18, &v26, &qword_10077EBB0);
  if (v27)
  {
    sub_100005FD0(&v26, v28);
    if (*(v17 + 16) && (v19 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v20 & 1) != 0) && (sub_1000046FC(*(v17 + 56) + 32 * v19, &v26), swift_dynamicCast()))
    {
      if (v25[1] == 0xD000000000000023 && 0x80000001006821E0 == v25[2])
      {

        v21 = 2;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    sub_10000C36C(v28, v28[3]);
    v22 = sub_100341B68(v9, v21);
    sub_100004758(v28);
  }

  else
  {
    sub_1000079B4(&v26, &qword_10077EBB0);

    v22 = 0;
  }

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  result = swift_beginAccess();
  *(a2 + 16) = v22;
  return result;
}

uint64_t sub_10060A36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMNavigationSpecifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v13 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  (*(v9 + 104))(v11, enum case for REMNavigationSpecifier.today(_:), v8);
  REMNavigationSpecifier.url.getter();
  v14 = sub_100461CFC(&_swiftEmptyArrayStorage);
  v15 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000794C(a2 + v15, &v23, &qword_10077EBB0);
  if (v24)
  {
    sub_100005FD0(&v23, v25);
    if (*(v14 + 16) && (v16 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v17 & 1) != 0) && (sub_1000046FC(*(v14 + 56) + 32 * v16, &v23), swift_dynamicCast()))
    {
      if (v22[1] == 0xD000000000000023 && 0x80000001006821E0 == v22[2])
      {

        v18 = 2;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    sub_10000C36C(v25, v25[3]);
    v19 = sub_100341B68(v7, v18);
    sub_100004758(v25);
  }

  else
  {
    sub_1000079B4(&v23, &qword_10077EBB0);

    v19 = 0;
  }

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  result = swift_beginAccess();
  *(a1 + 16) = v19;
  return result;
}

uint64_t sub_10060A6EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMNavigationSpecifier.url.getter();
  v7 = sub_100461CFC(&_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000794C(a2 + v8, &v15, &qword_10077EBB0);
  if (v16)
  {
    sub_100005FD0(&v15, v17);
    if (*(v7 + 16) && (v9 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v10 & 1) != 0) && (sub_1000046FC(*(v7 + 56) + 32 * v9, &v15), swift_dynamicCast()))
    {
      if (v14[1] == 0xD000000000000023 && 0x80000001006821E0 == v14[2])
      {

        v11 = 2;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    sub_10000C36C(v17, v17[3]);
    sub_100341B68(v6, v11);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v15, &qword_10077EBB0);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10060A93C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100792DD0);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100004060(a2, a3, &v12);
    *(v7 + 12) = 2112;
    v10 = _convertErrorToNSError(_:)();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Failed to navigate to Spotlight identifier %s, error: %@", v7, 0x16u);
    sub_1000079B4(v8, &unk_10076DF80);

    sub_100004758(v9);
  }
}

uint64_t sub_10060AB00(void *a1)
{
  v222 = type metadata accessor for REMiCloudSharedItemSpecifier();
  v221 = *(v222 - 8);
  v2 = __chkstk_darwin(v222);
  v226 = &v217 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v220 = &v217 - v4;
  v5 = sub_100058000(&qword_100792FC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v217 - v6;
  v236 = type metadata accessor for TTRUserActivityListPayload();
  v237 = *(v236 - 8);
  __chkstk_darwin(v236);
  v233 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for REMNavigationSpecifier();
  v234 = *(v235 - 8);
  v9 = __chkstk_darwin(v235);
  v218 = &v217 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v224 = (&v217 - v12);
  __chkstk_darwin(v11);
  v14 = &v217 - v13;
  v240 = type metadata accessor for URL();
  v242 = *(v240 - 8);
  v15 = __chkstk_darwin(v240);
  v219 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v225 = (&v217 - v18);
  v19 = __chkstk_darwin(v17);
  v228 = (&v217 - v20);
  v21 = __chkstk_darwin(v19);
  v227 = &v217 - v22;
  v23 = __chkstk_darwin(v21);
  v223 = &v217 - v24;
  v25 = __chkstk_darwin(v23);
  v229 = &v217 - v26;
  v27 = __chkstk_darwin(v25);
  v239 = &v217 - v28;
  v29 = __chkstk_darwin(v27);
  v230 = &v217 - v30;
  __chkstk_darwin(v29);
  v232 = &v217 - v31;
  v32 = sub_100058000(&qword_100792FD0);
  __chkstk_darwin(v32 - 8);
  v34 = &v217 - v33;
  v35 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v238 = *(v35 - 8);
  __chkstk_darwin(v35);
  v231 = &v217 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100058000(&qword_100792FD8);
  __chkstk_darwin(v37 - 8);
  v39 = &v217 - v38;
  v40 = type metadata accessor for TTRUserActivityType();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v44 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v217 - v45;
  NSUserActivity.ttrUserActivityType.getter();
  if (v41[6](v39, 1, v40) == 1)
  {
    sub_1000079B4(v39, &qword_100792FD8);
    v47 = [a1 activityType];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v48 && v51 == v50)
    {

      goto LABEL_13;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {
LABEL_13:

      v61 = [a1 userInfo];
      if (v61)
      {
        v62 = v61;
        v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v248 = v64;
        AnyHashable.init<A>(_:)();
        if (*(v63 + 16))
        {
          v65 = sub_1003AB968(&v249);
          if (v66)
          {
            sub_1000046FC(*(v63 + 56) + 32 * v65, &v245);
            sub_100077654(&v249);

            if (*(&v246 + 1))
            {
              if (swift_dynamicCast())
              {
                v67 = v249;
                v68 = v250;
                if (qword_100767508 != -1)
                {
                  swift_once();
                }

                v69 = type metadata accessor for Logger();
                sub_100003E30(v69, qword_100792DD0);

                v70 = Logger.logObject.getter();
                v71 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  v249 = v73;
                  *v72 = 136315138;
                  *(v72 + 4) = sub_100004060(v67, v68, &v249);
                  _os_log_impl(&_mh_execute_header, v70, v71, "Continuing user activity of CSSearchableItemActionType {uniqueIdentifier: %s}", v72, 0xCu);
                  sub_100004758(v73);
                }

                static REMNavigationSpecifier.from(spotlightItemIdentifier:)();
                sub_100003540(0, &qword_100777780);
                v74 = static OS_dispatch_queue.main.getter();
                v75 = swift_allocObject();
                v76 = v241;
                *(v75 + 16) = v241;
                v77 = v76;
                dispatch thunk of Promise.then<A>(on:closure:)();

                v78 = swift_allocObject();
                *(v78 + 16) = v67;
                *(v78 + 24) = v68;
                v79 = zalgo.getter();
                dispatch thunk of Promise.error(on:closure:)();

                v80 = 1;
                return v80 & 1;
              }

              goto LABEL_34;
            }

LABEL_33:
            sub_1000079B4(&v245, &qword_10076AE40);
LABEL_34:
            if (qword_100767508 != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            sub_100003E30(v91, qword_100792DD0);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v92, v93))
            {
              goto LABEL_40;
            }

            v94 = swift_slowAlloc();
            *v94 = 0;
            v95 = "Trying to continue user activity of CSSearchableItemActionType, but got no CSSearchableItemActivityIdentifier.";
            goto LABEL_38;
          }
        }

        sub_100077654(&v249);
      }

      v245 = 0u;
      v246 = 0u;
      goto LABEL_33;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v48 && v96 == v50)
    {

      v97 = v242;
    }

    else
    {
      v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v97 = v242;
      if ((v131 & 1) == 0)
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v48 && v171 == v50)
        {

          v172 = v240;
          v173 = v228;
        }

        else
        {
          v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v172 = v240;
          v173 = v228;
          if ((v174 & 1) == 0)
          {
            if (qword_100767508 != -1)
            {
              swift_once();
            }

            v191 = type metadata accessor for Logger();
            sub_100003E30(v191, qword_100792DD0);
            v192 = a1;
            v92 = Logger.logObject.getter();
            v193 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v92, v193))
            {
              goto LABEL_40;
            }

            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v249 = v195;
            *v194 = 136315138;
            v196 = [v192 activityType];
            v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v199 = v198;

            v200 = sub_100004060(v197, v199, &v249);

            *(v194 + 4) = v200;
            _os_log_impl(&_mh_execute_header, v92, v193, "Trying to continue unsupported user activity {activityType: %s}", v194, 0xCu);
            sub_100004758(v195);

            goto LABEL_39;
          }
        }

        v175 = [a1 webpageURL];
        if (v175)
        {
          v176 = v227;
          v177 = v175;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          if (qword_100767508 != -1)
          {
            swift_once();
          }

          v178 = type metadata accessor for Logger();
          sub_100003E30(v178, qword_100792DD0);
          v179 = *(v97 + 16);
          v179(v173, v176, v172);
          v180 = Logger.logObject.getter();
          v181 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v180, v181))
          {
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v249 = v183;
            *v182 = 136315138;
            v184 = URL.description.getter();
            v186 = v185;
            v187 = v173;
            v188 = *(v242 + 8);
            v188(v187, v240);
            v189 = sub_100004060(v184, v186, &v249);

            *(v182 + 4) = v189;
            _os_log_impl(&_mh_execute_header, v180, v181, "Continuing user activity of NSUserActivityTypeBrowsingWeb {webpageURL: %s}", v182, 0xCu);
            sub_100004758(v183);
            v176 = v227;

            v172 = v240;
          }

          else
          {

            v201 = v173;
            v188 = *(v97 + 8);
            v188(v201, v172);
          }

          v202 = v226;
          v179(v225, v176, v172);
          REMiCloudSharedItemSpecifier.init(url:)();
          v204 = v221;
          v205 = v220;
          v206 = v222;
          (*(v221 + 32))(v220, v202, v222);
          v207 = v218;
          REMiCloudSharedItemSpecifier.navigationSpecifier.getter();
          v208 = v219;
          REMNavigationSpecifier.url.getter();
          (*(v234 + 8))(v207, v235);
          v209 = sub_100461CFC(&_swiftEmptyArrayStorage);
          v210 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
          v211 = v241;
          swift_beginAccess();
          sub_10000794C(&v211[v210], &v245, &qword_10077EBB0);
          if (*(&v246 + 1))
          {
            sub_100005FD0(&v245, &v249);
            if (*(v209 + 16) && (v212 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v213 & 1) != 0) && (sub_1000046FC(*(v209 + 56) + 32 * v212, &v245), swift_dynamicCast()))
            {
              if (v243 == 0xD000000000000023 && 0x80000001006821E0 == v244)
              {

                v214 = 2;
              }

              else
              {
                v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v216)
                {
                  v214 = 2;
                }

                else
                {
                  v214 = 0;
                }
              }
            }

            else
            {
              v214 = 0;
            }

            sub_10000C36C(&v249, v251);
            v80 = sub_100341B68(v208, v214);
            sub_100004758(&v249);
          }

          else
          {
            sub_1000079B4(&v245, &qword_10077EBB0);

            v80 = 0;
          }

          v188(v208, v172);
          (*(v204 + 8))(v205, v206);
          v188(v227, v172);
          return v80 & 1;
        }

        if (qword_100767508 != -1)
        {
          swift_once();
        }

        v190 = type metadata accessor for Logger();
        sub_100003E30(v190, qword_100792DD0);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v92, v93))
        {
          goto LABEL_40;
        }

        v94 = swift_slowAlloc();
        *v94 = 0;
        v95 = "Missing webpageURL from NSUserActivityTypeBrowsingWeb user activity";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v92, v93, v95, v94, 2u);
LABEL_39:

LABEL_40:

        v80 = 0;
        return v80 & 1;
      }
    }

    v132 = [a1 userInfo];
    if (v132)
    {
      v133 = v132;
      v134 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v248 = v135;
      AnyHashable.init<A>(_:)();
      if (*(v134 + 16))
      {
        v136 = sub_1003AB968(&v249);
        if (v137)
        {
          sub_1000046FC(*(v134 + 56) + 32 * v136, &v245);
          sub_100077654(&v249);

          if (*(&v246 + 1))
          {
            if (swift_dynamicCast())
            {
              v138 = v249;
              v139 = v250;
              if (qword_100767508 != -1)
              {
                swift_once();
              }

              v140 = type metadata accessor for Logger();
              sub_100003E30(v140, qword_100792DD0);
              v141 = Logger.logObject.getter();
              v142 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                *v143 = 0;
                _os_log_impl(&_mh_execute_header, v141, v142, "Continuing user activity of CSQueryContinuationActionType", v143, 2u);
              }

              v144 = v224;
              *v224 = v138;
              v144[1] = v139;
              v145 = v144;
              v146 = enum case for REMNavigationSpecifier.SearchPathSpecifier.showContents(_:);
              v147 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
              (*(*(v147 - 8) + 104))(v145, v146, v147);
              (*(v234 + 104))(v145, enum case for REMNavigationSpecifier.search(_:), v235);
              v148 = v223;
              REMNavigationSpecifier.url.getter();
              v149 = sub_100461CFC(&_swiftEmptyArrayStorage);
              v150 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
              v151 = v241;
              swift_beginAccess();
              sub_10000794C(&v151[v150], &v245, &qword_10077EBB0);
              if (*(&v246 + 1))
              {
                sub_100005FD0(&v245, &v249);
                if (*(v149 + 16) && (v152 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v153 & 1) != 0) && (sub_1000046FC(*(v149 + 56) + 32 * v152, &v245), swift_dynamicCast()))
                {
                  v154 = v240;
                  if (v243 == 0xD000000000000023 && 0x80000001006821E0 == v244)
                  {

                    v155 = 2;
                  }

                  else
                  {
                    v215 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v215)
                    {
                      v155 = 2;
                    }

                    else
                    {
                      v155 = 0;
                    }
                  }
                }

                else
                {
                  v155 = 0;
                  v154 = v240;
                }

                sub_10000C36C(&v249, v251);
                v80 = sub_100341B68(v148, v155);
                sub_100004758(&v249);
              }

              else
              {
                sub_1000079B4(&v245, &qword_10077EBB0);

                v80 = 0;
                v154 = v240;
              }

              (*(v97 + 8))(v148, v154);
              (*(v234 + 8))(v145, v235);
              return v80 & 1;
            }

            goto LABEL_91;
          }

LABEL_90:
          sub_1000079B4(&v245, &qword_10076AE40);
LABEL_91:
          if (qword_100767508 != -1)
          {
            swift_once();
          }

          v170 = type metadata accessor for Logger();
          sub_100003E30(v170, qword_100792DD0);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v92, v93))
          {
            goto LABEL_40;
          }

          v94 = swift_slowAlloc();
          *v94 = 0;
          v95 = "Trying to continue user activity of CSQueryContinuationActionType, but got no CSSearchQueryString.";
          goto LABEL_38;
        }
      }

      sub_100077654(&v249);
    }

    v245 = 0u;
    v246 = 0u;
    goto LABEL_90;
  }

  v41[4](v46, v39, v40);
  v52 = v41[2];
  v227 = v46;
  v52(v44, v46, v40);
  v228 = v41;
  v53 = (v41[11])(v44, v40);
  if (v53 == enum case for TTRUserActivityType.windowSceneRestoration(_:))
  {
    NSUserActivity.windowSceneRestorationPayload.getter();
    v54 = v238;
    v55 = v35;
    if ((*(v238 + 48))(v34, 1, v35) == 1)
    {
      sub_1000079B4(v34, &qword_100792FD0);
      if (qword_100767508 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100003E30(v56, qword_100792DD0);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Trying to continue user activity of .windowSceneRestoration, but got no windowSceneRestorationPayload.", v59, 2u);
      }

LABEL_11:

      v228[1](v227, v40);
LABEL_84:
      v80 = 0;
      return v80 & 1;
    }

    v239 = v40;
    v98 = v231;
    (*(v54 + 32))(v231, v34, v55);
    TTRUserActivityWindowSceneRestorationPayload.navigationSpecifier.getter();
    v99 = v232;
    REMNavigationSpecifier.url.getter();
    (*(v234 + 8))(v14, v235);
    if (qword_100767508 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_100003E30(v100, qword_100792DD0);
    v101 = v242;
    v102 = v230;
    v103 = v240;
    (*(v242 + 16))(v230, v99, v240);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = v102;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v249 = v108;
      *v107 = 136315138;
      v109 = URL.description.getter();
      v237 = v55;
      v110 = v98;
      v111 = v99;
      v112 = v109;
      v114 = v113;
      v115 = *(v242 + 8);
      v115(v106, v240);
      v116 = v112;
      v99 = v111;
      v98 = v110;
      v55 = v237;
      v117 = sub_100004060(v116, v114, &v249);

      *(v107 + 4) = v117;
      _os_log_impl(&_mh_execute_header, v104, v105, "Continuing user activity of .windowSceneRestoration {url: %s}", v107, 0xCu);
      sub_100004758(v108);

      v103 = v240;
    }

    else
    {

      v115 = *(v101 + 8);
      v115(v102, v103);
    }

    v156 = v241;
    v157 = &v241[OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface];
    swift_beginAccess();
    if (!*(v157 + 24))
    {
      v115(v99, v103);
      (*(v238 + 8))(v98, v55);
      v228[1](v227, v239);
      goto LABEL_84;
    }

    sub_10000B0D8(v157, &v249);
    sub_10000C36C(&v249, v251);
    v158 = *(v156 + OBJC_IVAR___TTRIWindowSceneController_store);
    if (v158)
    {
      v159 = v158;
      v80 = sub_100342760(v98, v159, v156);

      v115(v99, v103);
      (*(v238 + 8))(v98, v55);
      v228[1](v227, v239);
      sub_100004758(&v249);
      return v80 & 1;
    }

LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v53 == enum case for TTRUserActivityType.list(_:))
  {
    v81 = *&v241[OBJC_IVAR___TTRIWindowSceneController_store];
    v82 = v242;
    v83 = v236;
    v84 = v239;
    if (v81)
    {
      v85 = v40;
      v86 = v81;
      NSUserActivity.listPayload(with:)();

      v87 = v237;
      if ((*(v237 + 48))(v7, 1, v83) != 1)
      {
        (*(v87 + 32))(v233, v7, v83);
        TTRUserActivityListPayload.navigationSpecifier.getter();
        REMNavigationSpecifier.url.getter();
        (*(v234 + 8))(v14, v235);
        if (qword_100767508 != -1)
        {
          swift_once();
        }

        v118 = type metadata accessor for Logger();
        sub_100003E30(v118, qword_100792DD0);
        v119 = v229;
        v120 = v240;
        (*(v82 + 16))(v229, v84, v240);
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = v119;
          v125 = swift_slowAlloc();
          v249 = v125;
          *v123 = 136315138;
          v126 = URL.description.getter();
          v128 = v127;
          v129 = *(v242 + 8);
          v129(v124, v120);
          v130 = sub_100004060(v126, v128, &v249);

          *(v123 + 4) = v130;
          _os_log_impl(&_mh_execute_header, v121, v122, "Continuing user activity of .list {url: %s}", v123, 0xCu);
          sub_100004758(v125);

          v83 = v236;
        }

        else
        {

          v129 = *(v82 + 8);
          v129(v119, v120);
        }

        v160 = sub_100461CFC(&_swiftEmptyArrayStorage);
        v161 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
        v162 = v241;
        swift_beginAccess();
        sub_10000794C(&v162[v161], &v245, &qword_10077EBB0);
        v163 = v239;
        if (*(&v246 + 1))
        {
          sub_100005FD0(&v245, &v249);
          if (*(v160 + 16) && (v164 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v165 & 1) != 0) && (sub_1000046FC(*(v160 + 56) + 32 * v164, &v245), swift_dynamicCast()))
          {
            if (v243 == 0xD000000000000023 && 0x80000001006821E0 == v244)
            {

              v166 = 2;
            }

            else
            {
              v203 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v203)
              {
                v166 = 2;
              }

              else
              {
                v166 = 0;
              }
            }
          }

          else
          {
            v166 = 0;
          }

          sub_10000C36C(&v249, v251);
          v80 = sub_100341B68(v163, v166);
          sub_100004758(&v249);
        }

        else
        {
          sub_1000079B4(&v245, &qword_10077EBB0);

          v80 = 0;
        }

        v167 = v228;
        v168 = v227;
        v129(v163, v120);
        (*(v237 + 8))(v233, v83);
        v167[1](v168, v85);
        return v80 & 1;
      }

      sub_1000079B4(v7, &qword_100792FC8);
      if (qword_100767508 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_100003E30(v88, qword_100792DD0);
      v57 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v57, v89, "Trying to continue user activity of .list, but got no listPayload.", v90, 2u);
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_139;
  }

LABEL_140:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_10060CD78(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100792DD0);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Opening URL context {urlContext: %@}", v12, 0xCu);
    sub_1000079B4(v13, &unk_10076DF80);
  }

  v15 = [v9 options];
  v16 = [v15 sourceApplication];

  v17 = &_swiftEmptyDictionarySingleton;
  if (v16)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v35 = &type metadata for String;
    *&v34 = v18;
    *(&v34 + 1) = v20;
    sub_100007DD8(&v34, &v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = &_swiftEmptyDictionarySingleton;
    sub_10012864C(&v31, UIApplicationOpenURLOptionsSourceApplicationKey, isUniquelyReferenced_nonNull_native);
    v17 = v33;
  }

  v22 = [v9 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
  swift_beginAccess();
  sub_10000794C(v2 + v23, &v31, &qword_10077EBB0);
  if (v32)
  {
    sub_100005FD0(&v31, &v34);
    if (v17[2] && (v24 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v25 & 1) != 0) && (sub_1000046FC(v17[7] + 32 * v24, &v31), swift_dynamicCast()))
    {
      if (v30[1] == 0xD000000000000023 && 0x80000001006821E0 == v30[2])
      {

        v26 = 2;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {
          v26 = 2;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    sub_10000C36C(&v34, v35);
    v27 = sub_100341B68(v7, v26);
    sub_100004758(&v34);
  }

  else
  {
    sub_1000079B4(&v31, &qword_10077EBB0);

    v27 = 0;
  }

  (*(v5 + 8))(v7, v4);
  return v27;
}

void sub_10060D1C4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  v13 = sub_100058000(&unk_100792F80);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for REMNavigationSpecifier();
  __chkstk_darwin(v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  if (!a1)
  {
    v79 = &v73 - v20;
    v75 = v9;
    v76 = v7;
    v77 = v6;
    v78 = v21;
    if (qword_100767508 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    v34 = sub_100003E30(v33, qword_100792DD0);
    v35 = a2;
    v80 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&_mh_execute_header, v36, v37, "Share accepted {metadata: %@}", v38, 0xCu);
      sub_1000079B4(v39, &unk_10076DF80);
    }

    v41 = [v35 hierarchicalRootRecordID];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static REMNavigationSpecifier.from(cloudKitRecordName:)();

      v44 = v78;
      if ((*(v78 + 48))(v15, 1, v16) != 1)
      {
        (*(v44 + 32))(v79, v15, v16);
        REMNavigationSpecifier.url.getter();
        v47 = sub_100461CFC(_swiftEmptyArrayStorage);
        v48 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
        swift_beginAccess();
        sub_10000794C(a3 + v48, &v83, &qword_10077EBB0);
        if (v84)
        {
          sub_100005FD0(&v83, v85);
          if (*(v47 + 16) && (v49 = sub_1003B3EE0(UIApplicationOpenURLOptionsSourceApplicationKey), (v50 & 1) != 0) && (sub_1000046FC(*(v47 + 56) + 32 * v49, &v83), swift_dynamicCast()))
          {
            if (v81 == 0xD000000000000023 && 0x80000001006821E0 == v82)
            {

              v51 = 2;
            }

            else
            {
              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v72)
              {
                v51 = 2;
              }

              else
              {
                v51 = 0;
              }
            }
          }

          else
          {
            v51 = 0;
          }

          sub_10000C36C(v85, v85[3]);
          v52 = sub_100341B68(v12, v51);
          sub_100004758(v85);
        }

        else
        {
          sub_1000079B4(&v83, &qword_10077EBB0);

          v52 = 0;
        }

        isa = v76[1].isa;
        v54 = v77;
        (isa)(v12, v77);
        v55 = v79;
        (*(v44 + 16))(v18, v79, v16);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v73 = isa;
          v59 = v58;
          v80 = swift_slowAlloc();
          v85[0] = v80;
          *v59 = 136315394;
          v74 = v57;
          v60 = v75;
          v76 = v56;
          REMNavigationSpecifier.url.getter();
          sub_100004CA8(&unk_100792F90, &type metadata accessor for URL);
          v61 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v52;
          v64 = v63;
          v73(v60, v54);
          v65 = *(v44 + 8);
          v65(v18, v16);
          v66 = sub_100004060(v61, v64, v85);

          *(v59 + 4) = v66;
          *(v59 + 12) = 2080;
          if (v62)
          {
            v67 = 7562617;
          }

          else
          {
            v67 = 28526;
          }

          if (v62)
          {
            v68 = 0xE300000000000000;
          }

          else
          {
            v68 = 0xE200000000000000;
          }

          v69 = sub_100004060(v67, v68, v85);

          *(v59 + 14) = v69;
          v70 = v76;
          _os_log_impl(&_mh_execute_header, v76, v74, "Share navigation handled {url: %s, handled: %s}", v59, 0x16u);
          swift_arrayDestroy();

          v65(v79, v16);
        }

        else
        {

          v71 = *(v44 + 8);
          v71(v18, v16);
          v71(v55, v16);
        }

        return;
      }

      sub_1000079B4(v15, &unk_100792F80);
    }

    v24 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v24, v45, "Could not find listID from CKShare.Metatdata", v46, 2u);
    }

    goto LABEL_15;
  }

  swift_errorRetain();
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003E30(v22, qword_100792DD0);
  swift_errorRetain();
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v85[0] = v28;
    *v26 = 136315394;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = sub_100004060(v29, v30, v85);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v23;
    v32 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to accept share {error: %s, metadata: %@}", v26, 0x16u);
    sub_1000079B4(v27, &unk_10076DF80);

    sub_100004758(v28);

LABEL_15:

    return;
  }
}

void sub_10060DCAC(void *a1)
{
  v2 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100792DD0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = [v6 session];
    v35 = v4;
    v12 = v11;
    v13 = [v11 persistentIdentifier];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100004060(v14, v16, &v37);

    *(v9 + 4) = v17;
    v4 = v35;
    _os_log_impl(&_mh_execute_header, v7, v8, "sceneDidDisconnect {scene: %s}", v9, 0xCu);
    sub_100004758(v10);
  }

  v18 = v6;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136315138;
    v23 = [v18 session];
    v24 = [v23 persistentIdentifier];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_100004060(v25, v27, &v37);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Clearing lastSelectedListInWindow for scene {scene: %s}", v21, 0xCu);
    sub_100004758(v22);
  }

  v29 = v36;
  swift_getObjectType();
  v30 = type metadata accessor for TTRListType();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
  v31 = OBJC_IVAR___TTRIWindowSceneController_mainWindow;
  v32 = *(v29 + OBJC_IVAR___TTRIWindowSceneController_mainWindow);
  if (v32)
  {
    [v32 setHidden:1];
    v33 = *(v36 + v31);
    *(v36 + v31) = 0;
  }
}

uint64_t sub_10060E0CC(void *a1)
{
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100792DD0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = [v3 session];
    v9 = [v8 persistentIdentifier];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100004060(v10, v12, &v15);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "sceneWillResignActive {scene: %s}", v6, 0xCu);
    sub_100004758(v7);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10060E344(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v46[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100792DD0);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v50 = v11;
    v19 = v18;
    v48 = v18;
    v49 = swift_slowAlloc();
    v53[0] = v49;
    *v19 = 136315138;
    v20 = [v15 session];
    v47 = v17;
    v21 = v20;
    v22 = v13;
    v23 = v10;
    v24 = v2;
    v25 = v6;
    v26 = [v20 persistentIdentifier];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v9;
    v30 = v29;

    v6 = v25;
    v2 = v24;
    v10 = v23;
    v13 = v22;
    v31 = sub_100004060(v27, v30, v53);
    v9 = v28;

    v32 = v48;
    *(v48 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v16, v47, "sceneDidEnterBackground {scene: %s}", v32, 0xCu);
    sub_100004758(v49);

    v11 = v50;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v35 = v15;
    if (Strong)
    {
      sub_100327EC0();
      swift_unknownObjectRelease();
    }

    v36 = (v2 + OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface);
    swift_beginAccess();
    v37 = v36[3];
    if (v37)
    {
      v38 = sub_10000C36C(v36, v37);
      v39 = *sub_10000C36C((*v38 + 48), *(*v38 + 72));
      swift_beginAccess();
      sub_100010540(v39 + 96, v53);
      sub_10000E224(&v51);
      sub_100015124(v53);
      if (v52)
      {
        sub_100005FD0(&v51, v54);
        v40 = v9;
        v41 = v55;
        v42 = v56;
        sub_10000C36C(v54, v55);
        v43 = *(v42 + 160);
        v44 = v42;
        v9 = v40;
        v43(v41, v44);
        sub_100004758(v54);
      }

      else
      {
        sub_1000079B4(&v51, &unk_100792FE0);
      }
    }

    v45 = OBJC_IVAR___TTRIWindowSceneController_lastEnterForegroundDate;
    swift_beginAccess();
    sub_10000794C(v2 + v45, v9, &qword_1007757F0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_1000079B4(v9, &qword_1007757F0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      Date.timeIntervalSinceNow.getter();
      type metadata accessor for Analytics();
      static Analytics.postEvent(_:payload:duration:)();

      (*(v11 + 8))(v13, v10);
      (*(v11 + 56))(v6, 1, 1, v10);
      swift_beginAccess();
      sub_10000D184(v6, v2 + v45, &qword_1007757F0);
      return swift_endAccess();
    }
  }

  return result;
}

char *sub_10060E930(void *a1)
{
  v3 = (v1 + OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface);
  swift_beginAccess();
  v4 = v3[3];
  if (v4)
  {
    v5 = sub_10000C36C(v3, v4);
    sub_10000C36C((*v5 + 48), *(*v5 + 72));
    v6 = sub_100396DCC();
  }

  else
  {
    v6 = 0;
  }

  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100792DD0);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    v13 = [v8 session];
    v14 = [v13 persistentIdentifier];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100004060(v15, v17, &v35);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Returning stateRestorationActivity {scene: %s}", v11, 0xCu);
    sub_100004758(v12);
  }

  v19 = v6;
  v20 = v8;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = [v20 session];
    v25 = [v24 persistentIdentifier];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100004060(v26, v28, &v35);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    if (v6)
    {
      v30 = NSUserActivity.ttrDescription.getter();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_100004060(v30, v32, &v35);

    *(v23 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "Returning activity for state saving for window scene {windowSceneIdentifier: %s, userActivity: %s}", v23, 0x16u);
    swift_arrayDestroy();
  }

  return v6;
}

void sub_10060ED80(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100792DD0);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v7 session];
    v13 = [v12 persistentIdentifier];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100004060(v14, v16, &v25);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = NSUserActivity.ttrDescription.getter();
    v20 = sub_100004060(v18, v19, &v25);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "scene continue userActivity {scene: %s, userActivity: %s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v3 + OBJC_IVAR___TTRIWindowSceneController_applicationRunProperties);
  if (v21 == 2)
  {
    __break(1u);
  }

  else if ((v21 & 0x10000) != 0)
  {

    sub_10060AB00(v8);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v22, "scene continue userActivity not allowed by applicationRunProperties", v23, 2u);
    }
  }
}

void sub_10060F0D8(void *a1, uint64_t a2)
{
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100792DD0);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = [v5 session];
    v10 = [v9 persistentIdentifier];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100004060(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    sub_100003540(0, &qword_10078E0E8);
    sub_10000CF18(&qword_100792FC0, &qword_10078E0E8);
    v15 = Set.description.getter();
    v17 = sub_100004060(v15, v16, &v20);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "scene openURLContexts {scene: %s, urlContexts: %s}", v8, 0x16u);
    swift_arrayDestroy();
  }

  v18 = sub_10000FBC4(a2);
  if (v18)
  {
    v19 = v18;
    sub_10060CD78(v18);
  }
}

uint64_t sub_10060F518()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders32PerWindowLastSelectedListStorage_lastSelectedListInWindow, &unk_100775640);

  return swift_deallocClassInstance();
}

uint64_t sub_10060F594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders32PerWindowLastSelectedListStorage_lastSelectedListInWindow;
  swift_beginAccess();
  sub_10000D184(a1, v1 + v3, &unk_100775640);
  return swift_endAccess();
}

void sub_10060F664(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_100767508 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100792DD0);
  v7 = a1;

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v7 session];
    v11 = [v10 persistentIdentifier];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100004060(v12, v14, &v17);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100004060(a2, a3, &v17);
    _os_log_impl(&_mh_execute_header, oslog, v8, "scene willContinueUserActivityWithType {scene: %s, userActivityType: %s}", v9, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10060F85C(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(REMStore) initUserInteractive:1];
  sub_100003540(0, &qword_100777780);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v10[4] = sub_10060F99C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100009DE4;
  v10[3] = &unk_100733850;
  v7 = _Block_copy(v10);
  v8 = a1;
  v9 = v2;

  [v4 acceptShareWithMetadata:v8 queue:v5 completion:v7];
  _Block_release(v7);
}

uint64_t sub_10060FA10()
{
  v0 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (qword_100766EF8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003E30(v5, qword_10076B0D8);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_10000FD44();

      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v7 = static MainActor.shared.getter();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = &protocol witness table for MainActor;
      v8[4] = v4;
      sub_10009E31C(0, 0, v2, &unk_1006377B0, v8);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10060FC18()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowPublicTemplatePreviewPresenter()
{
  result = qword_1007930C0;
  if (!qword_1007930C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10060FD48(void *a1, NSObject *a2)
{
  v3 = [a1 softwareVersion];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to scan softwareVersion: %@", &v4, 0xCu);
}

void sub_10060FDE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CloudKit device list request failed {error: %@}", &v2, 0xCu);
}

uint64_t AppDependencyManager.ttrAdd(dependency:)()
{
  return AppDependencyManager.ttrAdd(dependency:)();
}

{
  return AppDependencyManager.ttrAdd(dependency:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static TTRListColors.color(for:)()
{
  return static TTRListColors.color(for:)();
}

{
  return static TTRListColors.color(for:)();
}

Swift::String __swiftcall TTRLocalizedString(_:value:comment:)(Swift::String _, Swift::String value, Swift::String comment)
{
  v3 = TTRLocalizedString(_:value:comment:)(_._countAndFlagsBits, _._object, value._countAndFlagsBits, value._object, comment._countAndFlagsBits, comment._object);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall TTRLocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  v2 = TTRLocalizedString(_:comment:)(_._countAndFlagsBits, _._object, comment._countAndFlagsBits, comment._object);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::tuple_title_String_image_UIImage_optional __swiftcall TTRLocationQuickPickItem.titleAndImageForMenuItem()()
{
  v0 = TTRLocationQuickPickItem.titleAndImageForMenuItem()();
  result.image.value.super.isa = v2;
  result.title._object = v1;
  result.title._countAndFlagsBits = v0;
  result.image.is_nil = v3;
  return result;
}

uint64_t TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)()
{
  return TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();
}

{
  return TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();
}

{
  return TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();
}

uint64_t TTRAccountsListsViewModel.remAccount(for:)()
{
  return TTRAccountsListsViewModel.remAccount(for:)();
}

{
  return TTRAccountsListsViewModel.remAccount(for:)();
}

uint64_t TTRAccountsListsViewModel.item(with:)()
{
  return TTRAccountsListsViewModel.item(with:)();
}

{
  return TTRAccountsListsViewModel.item(with:)();
}

uint64_t TTRAccountsListsViewModel.remList(for:)()
{
  return TTRAccountsListsViewModel.remList(for:)();
}

{
  return TTRAccountsListsViewModel.remList(for:)();
}

{
  return TTRAccountsListsViewModel.remList(for:)();
}

NSAttributedString_optional __swiftcall TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(Swift::OpaquePointer baseAttributes, Swift::Bool forAccessibility)
{
  v2 = TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(baseAttributes._rawValue, forAccessibility);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t TTRRemindersListTreeViewModel.delete(_:)()
{
  return TTRRemindersListTreeViewModel.delete(_:)();
}

{
  return TTRRemindersListTreeViewModel.delete(_:)();
}

uint64_t TTRRemindersListTreeViewModel.insert(_:)()
{
  return TTRRemindersListTreeViewModel.insert(_:)();
}

{
  return TTRRemindersListTreeViewModel.insert(_:)();
}

uint64_t TTRRemindersListTreeViewModel.resolve(_:)()
{
  return TTRRemindersListTreeViewModel.resolve(_:)();
}

{
  return TTRRemindersListTreeViewModel.resolve(_:)();
}

{
  return TTRRemindersListTreeViewModel.resolve(_:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.delete(_:)()
{
  return dispatch thunk of TTRRemindersListInteractorType.delete(_:)();
}

{
  return dispatch thunk of TTRRemindersListInteractorType.delete(_:)();
}

uint64_t TTRBoardReminderInCellModuleState.receive(_:)()
{
  return TTRBoardReminderInCellModuleState.receive(_:)();
}

{
  return TTRBoardReminderInCellModuleState.receive(_:)();
}

Swift::OpaquePointer_optional __swiftcall TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateOptimisticMoves()()
{
  v0 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateOptimisticMoves()();
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

Swift::String_optional __swiftcall TTRHashtagAssociationPresenterCapability.validateNewHashtagName(_:hasMarkedText:)(Swift::String _, Swift::Bool hasMarkedText)
{
  v2 = TTRHashtagAssociationPresenterCapability.validateNewHashtagName(_:hasMarkedText:)(_._countAndFlagsBits, _._object, hasMarkedText);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)()
{
  return dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();
}

{
  return dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();
}

Swift::String __swiftcall REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()()
{
  v0 = REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()()
{
  v0 = REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t dispatch thunk of Promise.then<A>(on:closure:)()
{
  return dispatch thunk of Promise.then<A>(on:closure:)();
}

{
  return dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t firstly<A>(closure:)()
{
  return firstly<A>(closure:)();
}

{
  return firstly<A>(closure:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_name_String_isValid_Bool __swiftcall String.validatedListName()()
{
  v0 = String.validatedListName()();
  result.name._object = v1;
  result.name._countAndFlagsBits = v0;
  result.isValid = v2;
  return result;
}

Swift::tuple_name_String_isValid_Bool __swiftcall String.validatedSectionName()()
{
  v0 = String.validatedSectionName()();
  result.name._object = v1;
  result.name._countAndFlagsBits = v0;
  result.isValid = v2;
  return result;
}

Swift::tuple_title_String_isValid_Bool __swiftcall String.validatedReminderTitle()()
{
  v0 = String.validatedReminderTitle()();
  result.title._object = v1;
  result.title._countAndFlagsBits = v0;
  result.isValid = v2;
  return result;
}

__C::_NSRange_optional __swiftcall String.nsRange(of:)(Swift::String of)
{
  v1 = String.nsRange(of:)(of._countAndFlagsBits, of._object);
  result.value.length = v2;
  result.value.location = v1;
  result.is_nil = v3;
  return result;
}

Swift::String __swiftcall String.addingHashtagPrefix()()
{
  v0 = String.addingHashtagPrefix()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Array.subscript.getter()
{
  return Array.subscript.getter();
}

{
  return Array.subscript.getter();
}

NSAttributedString_optional __swiftcall NSAttributedString.addingStrikethrough(color:)(UIColor_optional color)
{
  v1 = NSAttributedString.addingStrikethrough(color:)(color.value.super.isa, *&color.is_nil);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

NSAttributedString_optional __swiftcall NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(Swift::OpaquePointer placeholderToSymbolNames)
{
  v1 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(placeholderToSymbolNames._rawValue);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

UIImage_optional __swiftcall UIView.snapshotImage()()
{
  v0 = UIView.snapshotImage()();
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = Substring.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t __CocoaDictionary.lookup(_:)()
{
  return __CocoaDictionary.lookup(_:)();
}

{
  return __CocoaDictionary.lookup(_:)();
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return _CocoaArrayWrapper.subscript.getter();
}

{
  return _CocoaArrayWrapper.subscript.getter();
}