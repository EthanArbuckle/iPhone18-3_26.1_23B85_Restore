uint64_t sub_10004F3DC(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000905C(0, &qword_1006C00F0);
    sub_10004F51C();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10004F58C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_10004F51C()
{
  result = qword_1006B0738;
  if (!qword_1006B0738)
  {
    sub_10000905C(255, &qword_1006C00F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0738);
  }

  return result;
}

uint64_t sub_10004F58C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10004F7CC();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100254FB4(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1002559B0();
    }

    v18 = v8;
    sub_100256B64(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10004F7CC();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_10004F818(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

unint64_t sub_10004F7CC()
{
  result = qword_1006C00F0;
  if (!qword_1006C00F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C00F0);
  }

  return result;
}

void sub_10004F818(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002559B0();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1002580A4();
      goto LABEL_12;
    }

    sub_100258E60();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10004F7CC();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10004F978(uint64_t a1)
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
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: didReceive: friends %ld", v7, 0xCu);
  }

  else
  {
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
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_18;
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
      (*(v13 + 24))(v2, a1, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
}

uint64_t sub_10004FBC4(void *a1)
{
  v2 = type metadata accessor for FMIPNotificationAuthLaunchEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 authorizationStatus];
  FMIPNotificationAuthLaunchEvent.init(findMyNotificationAuthStatus:utAlertAuthStatus:)();
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  FMIPManager.enqueue(notificationLaunchEvent:)();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_10004FD14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v7 = v5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v14;
    v19 = a2;
    v20 = v18;
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    v14 = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v20, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v7;
  *(v22 + 24) = a1;
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v30 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v29);
}

uint64_t sub_100050204(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleListDataSource: didUpdate %ld people", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  aBlock[4] = sub_100535AE4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006452C8;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_1000505E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100050618()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FMCardContainerViewController();
  objc_msgSendSuper2(&v16, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isFirstLayoutCompleted;
  if ((v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isFirstLayoutCompleted] & 1) == 0)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 1 || v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_dismissable] != 1)
    {
      v14 = &type metadata for SolariumFeatureFlag;
      v6 = sub_10000BD04();
      v15 = v6;
      v7 = isFeatureEnabled(_:)();
      sub_100006060(v13);
      v4 = 0.64;
      if (v7)
      {
        v8 = 0.5;
      }

      else
      {
        v8 = 0.64;
      }

      sub_1000493F8(0, v8);
      v14 = &type metadata for SolariumFeatureFlag;
      v15 = v6;
      v9 = isFeatureEnabled(_:)();
      sub_100006060(v13);
      if (v9)
      {
        v4 = 0.5;
      }

      v5 = 1;
    }

    else
    {
      v4 = 0.0;
      sub_1000493F8(0, 0.0);
      v5 = 0;
    }

    v14 = &type metadata for SolariumFeatureFlag;
    v15 = sub_10000BD04();
    v10 = isFeatureEnabled(_:)();
    sub_100006060(v13);
    v11 = 0.64;
    if (v10)
    {
      v11 = 0.5;
    }

    v12 = v11 - v4;
    if (v12 <= 0.0)
    {
      v12 = 0.0;
    }

    [*&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v12 * *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
    v0[v1] = 1;
    v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = v5;
    sub_1000507D4();
  }
}

void sub_1000507D4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);
    v7 = *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent);
    v8 = v3;
    v6(v7, ObjectType, v4);

    v9 = *v2;
    if (*v2)
    {
      v10 = *(v2 + 8);
      v11 = swift_getObjectType();
      v12 = *(v10 + 8);
      v13 = v9;
      v14 = v12(v11, v10);

      if (v14)
      {
        if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
        {
          if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
          {
            v29 = &type metadata for SolariumFeatureFlag;
            v30 = sub_10000BD04();
            isFeatureEnabled(_:)();
            sub_100006060(v28);
          }

          v15 = 0;
        }

        else
        {
          v15 = 1;
        }

        [v14 setScrollEnabled:v15];
      }

      v16 = *v2;
      if (*v2)
      {
        v17 = *(v2 + 8);
        v18 = swift_getObjectType();
        v19 = *(v17 + 8);
        v20 = v16;
        v21 = v19(v18, v17);

        if (v21)
        {
          if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
          {
            if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
            {
              v29 = &type metadata for SolariumFeatureFlag;
              v30 = sub_10000BD04();
              isFeatureEnabled(_:)();
              sub_100006060(v28);
            }

            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          [v21 setBounces:v22];
        }
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
  {
    if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
    {
      v29 = &type metadata for SolariumFeatureFlag;
      v30 = sub_10000BD04();
      isFeatureEnabled(_:)();
      sub_100006060(v28);
    }

    else
    {
      v23 = *v2;
      if (*v2)
      {
        v24 = *(v2 + 8);
        v25 = swift_getObjectType();
        v26 = *(v24 + 40);
        v27 = v23;
        v26(v25, v24);
      }
    }
  }
}

id sub_100050A4C()
{
  if (*(v0 + qword_1006BA9E8))
  {
    v1 = &qword_1006BA988;
LABEL_5:
    v0 = *(v0 + *v1);
    v2 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView;
    goto LABEL_7;
  }

  if (sub_10004B5BC())
  {
    v1 = &qword_1006BA980;
    goto LABEL_5;
  }

  v2 = &qword_1006BA990;
LABEL_7:
  v3 = *(v0 + *v2);

  return v3;
}

uint64_t sub_100050ACC()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100050C70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7449656D616E6572;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000100578BA0;
    }

    else
    {
      v5 = 0x8000000100578BC0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x744965766F6D6572;
    }

    else
    {
      v4 = 0x7449656D616E6572;
    }

    v5 = 0xEA00000000006D65;
  }

  v6 = 0xD000000000000010;
  v7 = 0x8000000100578BC0;
  if (a2 == 2)
  {
    v7 = 0x8000000100578BA0;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (a2)
  {
    v2 = 0x744965766F6D6572;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xEA00000000006D65;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100050DA8(uint64_t a1, int a2)
{
  v126 = a2;
  v116 = type metadata accessor for PublishedLocation.Label.Length();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PublishedLocation.Label.DetailLevel();
  v120 = *(v4 - 8);
  v121 = v4;
  __chkstk_darwin(v4);
  v119 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0040);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v118 = &v114 - v11;
  v12 = __chkstk_darwin(v10);
  v117 = &v114 - v13;
  v14 = __chkstk_darwin(v12);
  v130 = &v114 - v15;
  v16 = __chkstk_darwin(v14);
  v122 = &v114 - v17;
  __chkstk_darwin(v16);
  v132 = &v114 - v18;
  v19 = type metadata accessor for PublishedLocation.Label();
  v128 = *(v19 - 8);
  v129 = v19;
  __chkstk_darwin(v19);
  v127 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007EBC0(&qword_1006AF740);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v135 = &v114 - v26;
  v27 = __chkstk_darwin(v25);
  v123 = &v114 - v28;
  v29 = __chkstk_darwin(v27);
  v133 = &v114 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v114 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v114 - v35;
  __chkstk_darwin(v34);
  v38 = &v114 - v37;
  v39 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v39 - 8);
  v41 = &v114 - v40;
  sub_100007204(a1, v38, &qword_1006AF740);
  v42 = type metadata accessor for FMFLocation();
  v43 = *(v42 - 8);
  v138 = *(v43 + 48);
  v44 = v138(v38, 1, v42);
  v131 = v9;
  v134 = v24;
  v136 = v43;
  if (v44 == 1)
  {
    sub_100012DF0(v38, &qword_1006AF740);
    v125 = 0;
    v137 = 0;
  }

  else
  {
    FMFLocation.label.getter();
    (*(v43 + 8))(v38, v42);
    v45 = type metadata accessor for FMFLabel();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v41, 1, v45) == 1)
    {
      sub_100012DF0(v41, &qword_1006B0038);
      v125 = 0;
      v137 = 0;
    }

    else
    {
      FMFLabel.localizedValue.getter();
      (*(v46 + 8))(v41, v45);
      v125 = String.nilIfEmpty.getter();
      v137 = v47;
      v9 = v131;
    }

    v24 = v134;
  }

  sub_100007204(a1, v36, &qword_1006AF740);
  v48 = v138(v36, 1, v42);
  v49 = v130;
  if (v48 == 1)
  {
    sub_100012DF0(v36, &qword_1006AF740);
    v132 = 0;
    v124 = 0;
    v50 = v135;
  }

  else
  {
    FMFLocation.address.getter();
    v51 = v132;
    (*(v136 + 8))(v36, v42);
    v52 = type metadata accessor for FMFAddress();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_100012DF0(v51, &qword_1006B0040);
      v132 = 0;
      v124 = 0;
      v24 = v134;
      v50 = v135;
    }

    else
    {
      FMFAddress.coarseAddressModern.getter();
      v55 = v54;
      (*(v53 + 8))(v51, v52);
      if (v55)
      {
        v132 = String.nilIfEmpty.getter();
        v124 = v56;
      }

      else
      {
        v132 = 0;
        v124 = 0;
      }

      v24 = v134;
      v50 = v135;
      v49 = v130;
    }
  }

  v57 = v133;
  sub_100007204(a1, v33, &qword_1006AF740);
  if (v138(v33, 1, v42) == 1)
  {
    sub_100012DF0(v33, &qword_1006AF740);
    v130 = 0;
    v122 = 0;
    v58 = v123;
  }

  else
  {
    v59 = v122;
    FMFLocation.address.getter();
    v60 = v59;
    (*(v136 + 8))(v33, v42);
    v61 = type metadata accessor for FMFAddress();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_100012DF0(v60, &qword_1006B0040);
      v130 = 0;
      v122 = 0;
      v50 = v135;
      v58 = v123;
      v57 = v133;
    }

    else
    {
      v63 = v9;
      FMFAddress.streetAddressModern.getter();
      v65 = v64;
      (*(v62 + 8))(v60, v61);
      if (v65)
      {
        v130 = String.nilIfEmpty.getter();
        v122 = v66;
      }

      else
      {
        v130 = 0;
        v122 = 0;
      }

      v24 = v134;
      v50 = v135;
      v58 = v123;
      v57 = v133;
      v9 = v63;
    }
  }

  sub_100007204(a1, v57, &qword_1006AF740);
  if (v138(v57, 1, v42) == 1)
  {
    sub_100012DF0(v57, &qword_1006AF740);
    v133 = 0;
    v123 = 0;
  }

  else
  {
    FMFLocation.address.getter();
    (*(v136 + 8))(v57, v42);
    v67 = type metadata accessor for FMFAddress();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v49, 1, v67) == 1)
    {
      sub_100012DF0(v49, &qword_1006B0040);
      v133 = 0;
      v123 = 0;
      v9 = v131;
    }

    else
    {
      FMFAddress.smallAddressModern.getter();
      v70 = v69;
      (*(v68 + 8))(v49, v67);
      if (v70)
      {
        v133 = String.nilIfEmpty.getter();
        v123 = v71;
      }

      else
      {
        v133 = 0;
        v123 = 0;
      }

      v9 = v131;
      v24 = v134;
    }

    v50 = v135;
  }

  sub_100007204(a1, v58, &qword_1006AF740);
  if (v138(v58, 1, v42) == 1)
  {
    sub_100012DF0(v58, &qword_1006AF740);
  }

  else
  {
    v72 = v117;
    FMFLocation.address.getter();
    v73 = v72;
    (*(v136 + 8))(v58, v42);
    v74 = type metadata accessor for FMFAddress();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_100012DF0(v73, &qword_1006B0040);
    }

    else
    {
      FMFAddress.mediumAddressModern.getter();
      v77 = v76;
      (*(v75 + 8))(v73, v74);
      if (v77)
      {
        String.nilIfEmpty.getter();
      }

      v24 = v134;
    }

    v50 = v135;
  }

  sub_100007204(a1, v50, &qword_1006AF740);
  if (v138(v50, 1, v42) == 1)
  {
    sub_100012DF0(v50, &qword_1006AF740);
  }

  else
  {
    v78 = a1;
    v79 = v118;
    FMFLocation.address.getter();
    v80 = v50;
    v81 = v79;
    (*(v136 + 8))(v80, v42);
    v82 = type metadata accessor for FMFAddress();
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v81, 1, v82) == 1)
    {
      sub_100012DF0(v81, &qword_1006B0040);
    }

    else
    {
      FMFAddress.largeAddressModern.getter();
      v84 = v81;
      v86 = v85;
      (*(v83 + 8))(v84, v82);
      if (v86)
      {
        String.nilIfEmpty.getter();
      }
    }

    a1 = v78;
    v9 = v131;
  }

  sub_100007204(a1, v24, &qword_1006AF740);
  if (v138(v24, 1, v42) == 1)
  {
    v87 = &qword_1006AF740;
    v88 = v24;
LABEL_51:
    sub_100012DF0(v88, v87);
    goto LABEL_55;
  }

  FMFLocation.address.getter();
  (*(v136 + 8))(v24, v42);
  v89 = type metadata accessor for FMFAddress();
  v90 = *(v89 - 8);
  if ((*(v90 + 48))(v9, 1, v89) == 1)
  {
    v87 = &qword_1006B0040;
    v88 = v9;
    goto LABEL_51;
  }

  v91 = v9;
  v92 = a1;
  FMFAddress.poiAddressModern.getter();
  v94 = v93;
  (*(v90 + 8))(v91, v89);
  if (v94)
  {
    String.nilIfEmpty.getter();
  }

  a1 = v92;
LABEL_55:
  v95 = v127;

  PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)();
  if (v126)
  {

    v97 = v119;
    v96 = v120;
    v98 = v121;
    (*(v120 + 104))(v119, enum case for PublishedLocation.Label.DetailLevel.detailed(_:), v121);
    v99 = PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)();
    v101 = v100;
    v103 = v102;
    v137 = v104;
    (*(v96 + 8))(v97, v98);
    if (v101)
    {
      if (!v137)
      {
        v137 = v101;
        v105 = v103;
        goto LABEL_65;
      }
    }

    else
    {

      sub_1000530E0(a1, 1, sub_100051E0C);
      v137 = v112;
    }

    v105 = v99;
    goto LABEL_65;
  }

  if (!v137)
  {
    v106 = v115;
    v107 = v114;
    v108 = v116;
    (*(v115 + 104))(v114, enum case for PublishedLocation.Label.Length.coarse(_:), v116);
    PublishedLocation.Label.combinedNoFallbackLabel(maxLength:)();
    v110 = v109;
    (*(v106 + 8))(v107, v108);
    v137 = v110;
    if (!v110)
    {
      sub_1000530E0(a1, 0, sub_100051E0C);
      v137 = v111;
    }
  }

  v105 = 0;
LABEL_65:
  (*(v128 + 8))(v95, v129);
  return v105;
}

uint64_t sub_100051E0C(uint64_t a1, int a2)
{
  v149 = a2;
  v3 = sub_10007EBC0(&qword_1006B0040);
  v4 = __chkstk_darwin(v3 - 8);
  v133 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v134 = &v129 - v7;
  __chkstk_darwin(v6);
  v147 = &v129 - v8;
  v9 = sub_10007EBC0(&qword_1006B0038);
  v10 = __chkstk_darwin(v9 - 8);
  v138 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v141 = &v129 - v12;
  v13 = type metadata accessor for FMFLocationSource();
  v152 = *(v13 - 8);
  __chkstk_darwin(v13);
  v139 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10007EBC0(&qword_1006B14A8);
  __chkstk_darwin(v144);
  v154 = &v129 - v15;
  v16 = sub_10007EBC0(&unk_1006C2460);
  v17 = __chkstk_darwin(v16 - 8);
  v140 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v151 = &v129 - v20;
  __chkstk_darwin(v19);
  v150 = &v129 - v21;
  v22 = sub_10007EBC0(&qword_1006AF740);
  v23 = __chkstk_darwin(v22 - 8);
  v137 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v135 = &v129 - v26;
  v27 = __chkstk_darwin(v25);
  v136 = &v129 - v28;
  v29 = __chkstk_darwin(v27);
  v146 = &v129 - v30;
  v31 = __chkstk_darwin(v29);
  v145 = &v129 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v129 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v129 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v129 - v40;
  __chkstk_darwin(v39);
  v43 = &v129 - v42;
  v148 = a1;
  sub_100007204(a1, &v129 - v42, &qword_1006AF740);
  v44 = type metadata accessor for FMFLocation();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  v153 = v45 + 48;
  v155 = v46;
  if (v46(v43, 1, v44) == 1)
  {
    sub_100012DF0(v43, &qword_1006AF740);
LABEL_8:
    v55 = [objc_opt_self() mainBundle];
    v158._object = 0x800000010057D9B0;
    v56._countAndFlagsBits = 0xD00000000000001DLL;
    v56._object = 0x800000010057D990;
    v158._countAndFlagsBits = 0xD00000000000002FLL;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v158);

    return 0;
  }

  v47 = FMFLocation.location.getter();
  v142 = *(v45 + 8);
  v143 = v45 + 8;
  v142(v43, v44);
  if (!v47)
  {
    goto LABEL_8;
  }

  v129 = objc_opt_self();
  v48 = [v129 mainBundle];
  v157._object = 0x8000000100579940;
  v49._countAndFlagsBits = 0xD00000000000001ELL;
  v49._object = 0x8000000100579920;
  v157._countAndFlagsBits = 0xD000000000000030;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v157);

  v51 = v148;
  sub_100007204(v148, v41, &qword_1006AF740);
  if (v155(v41, 1, v44) == 1)
  {
    sub_100012DF0(v41, &qword_1006AF740);
    v52 = v150;
    v53 = v151;
  }

  else
  {
    v59 = FMFLocation.motionActivityState.getter();
    v61 = v60;
    v142(v41, v44);
    v52 = v150;
    v53 = v151;
    if ((v61 & 1) == 0)
    {
      v54 = v149;
      if (v59 == 1)
      {
        goto LABEL_16;
      }
    }
  }

  sub_100007204(v51, v38, &qword_1006AF740);
  if (v155(v38, 1, v44) == 1)
  {
    sub_100012DF0(v38, &qword_1006AF740);
    v54 = 0;
  }

  else
  {
    v62 = FMFLocation.motionActivityState.getter();
    v64 = v63;
    v142(v38, v44);
    if (v64)
    {
      v54 = 0;
    }

    else
    {
      v54 = (v62 == 2) & v149;
    }
  }

LABEL_16:
  v130 = v54;
  sub_100007204(v51, v35, &qword_1006AF740);
  v65 = v155(v35, 1, v44);
  v132 = v44;
  if (v65 == 1)
  {
    sub_100012DF0(v35, &qword_1006AF740);
    v66 = 1;
  }

  else
  {
    FMFLocation.locationSource.getter();
    v142(v35, v44);
    v66 = 0;
  }

  v67 = v152;
  v68 = *(v152 + 56);
  v68(v52, v66, 1, v13);
  (*(v67 + 104))(v53, enum case for FMFLocationSource.secureLive(_:), v13);
  v68(v53, 0, 1, v13);
  v69 = *(v144 + 48);
  v70 = v154;
  sub_100007204(v52, v154, &unk_1006C2460);
  v71 = v70;
  sub_100007204(v53, v70 + v69, &unk_1006C2460);
  v72 = v67;
  v73 = v53;
  v74 = *(v72 + 48);
  if (v74(v71, 1, v13) != 1)
  {
    v80 = v140;
    sub_100007204(v71, v140, &unk_1006C2460);
    if (v74(v71 + v69, 1, v13) != 1)
    {
      v81 = v80;
      v82 = v152;
      v83 = v139;
      (*(v152 + 32))(v139, v71 + v69, v13);
      sub_100033BE8(&qword_1006B14E0, &type metadata accessor for FMFLocationSource);
      v84 = v71;
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();
      v86 = *(v82 + 8);
      v86(v83, v13);
      sub_100012DF0(v151, &unk_1006C2460);
      sub_100012DF0(v150, &unk_1006C2460);
      v86(v81, v13);
      sub_100012DF0(v84, &unk_1006C2460);
      v77 = v132;
      v78 = v147;
      v79 = v145;
      if ((v85 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    sub_100012DF0(v151, &unk_1006C2460);
    v75 = v154;
    sub_100012DF0(v52, &unk_1006C2460);
    (*(v152 + 8))(v80, v13);
    v77 = v132;
    v78 = v147;
LABEL_24:
    sub_100012DF0(v75, &qword_1006B14A8);
    v79 = v145;
    goto LABEL_27;
  }

  sub_100012DF0(v73, &unk_1006C2460);
  v75 = v154;
  sub_100012DF0(v52, &unk_1006C2460);
  v76 = v74(v75 + v69, 1, v13);
  v77 = v132;
  v78 = v147;
  if (v76 != 1)
  {
    goto LABEL_24;
  }

  sub_100012DF0(v75, &unk_1006C2460);
  v79 = v145;
LABEL_26:
  v149 = v130;
LABEL_27:
  sub_100007204(v51, v79, &qword_1006AF740);
  if (v155(v79, 1, v77) == 1)
  {
    sub_100012DF0(v79, &qword_1006AF740);
    v87 = v146;
  }

  else
  {
    v88 = v141;
    FMFLocation.label.getter();
    v142(v79, v77);
    v89 = type metadata accessor for FMFLabel();
    v90 = *(v89 - 8);
    v91 = (*(v90 + 48))(v88, 1, v89);
    v87 = v146;
    if (v91 == 1)
    {
      sub_100012DF0(v88, &qword_1006B0038);
    }

    else
    {
      v92 = FMFLabel.localizedValue.getter();
      v94 = v93;
      (*(v90 + 8))(v88, v89);
      v95 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) == 0)
      {
        v95 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v95 && (v149 & 1) == 0)
      {

        return 0;
      }
    }
  }

  sub_100007204(v51, v87, &qword_1006AF740);
  if (v155(v87, 1, v77) == 1)
  {
    sub_100012DF0(v87, &qword_1006AF740);
    return 0;
  }

  FMFLocation.address.getter();
  v142(v87, v77);
  v96 = type metadata accessor for FMFAddress();
  v97 = *(v96 - 8);
  v98 = *(v97 + 48);
  if (v98(v78, 1, v96) == 1)
  {
    sub_100012DF0(v78, &qword_1006B0040);
    return 0;
  }

  v99 = FMFAddress.displayAddress.getter();
  v101 = v100;
  v102 = v78;
  v103 = *(v97 + 8);
  v103(v102, v96);
  if (!v101)
  {
    return 0;
  }

  if ((v149 & 1) == 0)
  {
    return 0;
  }

  v154 = v99;
  v104 = v136;
  sub_100007204(v51, v136, &qword_1006AF740);
  v105 = v132;
  if (v155(v104, 1, v132) == 1)
  {
    sub_100012DF0(v104, &qword_1006AF740);
  }

  else
  {
    v106 = v134;
    FMFLocation.address.getter();
    v142(v104, v105);
    if (v98(v106, 1, v96) == 1)
    {
      sub_100012DF0(v106, &qword_1006B0040);
    }

    else
    {
      v107 = FMFAddress.mapFormattedAddress.getter();
      v109 = v108;
      v103(v106, v96);
      if (v109)
      {

        v154 = v107;
        goto LABEL_58;
      }
    }
  }

  v110 = v135;
  sub_100007204(v51, v135, &qword_1006AF740);
  v111 = v132;
  if (v155(v110, 1, v132) == 1)
  {
    sub_100012DF0(v110, &qword_1006AF740);
  }

  else
  {
    v112 = v133;
    FMFLocation.address.getter();
    v142(v110, v111);
    if (v98(v112, 1, v96) == 1)
    {
      sub_100012DF0(v112, &qword_1006B0040);
    }

    else
    {
      v113 = FMFAddress.postalAddress.getter();
      v103(v112, v96);
      v114 = static FMFAddress.formattedAddressLines(for:)();
      if (v114)
      {
        v115 = v114;

        v156 = v115;
        sub_10007EBC0(&qword_1006C0C10);
        sub_1001500AC();
        v154 = BidirectionalCollection<>.joined(separator:)();
        v109 = v116;

        goto LABEL_58;
      }
    }
  }

  v109 = v101;
LABEL_58:
  v117 = v137;
  v118 = v138;
  sub_100007204(v148, v137, &qword_1006AF740);
  v119 = v132;
  if (v155(v117, 1, v132) == 1)
  {
    v120 = &qword_1006AF740;
    v121 = v117;
  }

  else
  {
    FMFLocation.label.getter();
    v142(v117, v119);
    v122 = type metadata accessor for FMFLabel();
    v123 = *(v122 - 8);
    if ((*(v123 + 48))(v118, 1, v122) != 1)
    {
      v124 = FMFLabel.localizedValue.getter();
      (*(v123 + 8))(v118, v122);
      goto LABEL_64;
    }

    v120 = &qword_1006B0038;
    v121 = v118;
  }

  sub_100012DF0(v121, v120);
  v124 = 0;
LABEL_64:
  v125 = [v129 mainBundle];
  v159._object = 0x8000000100584E50;
  v126._object = 0x8000000100584E30;
  v159._countAndFlagsBits = 0xD00000000000002ELL;
  v126._countAndFlagsBits = 0xD00000000000001CLL;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v126, 0, v125, v127, v159);

  sub_10007EBC0(&unk_1006B20B0);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_100552220;
  *(v128 + 56) = &type metadata for String;
  *(v128 + 64) = sub_10008EE84();
  *(v128 + 32) = v154;
  *(v128 + 40) = v109;
  String.init(format:_:)();

  return v124;
}

void sub_100053098(void *a1)
{
  v1 = a1;
  sub_100053230();
}

uint64_t sub_1000530E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    v9 = v3;
    v10 = v4;
    v11 = [objc_opt_self() mainBundle];
    v17._object = 0x800000010057DBA0;
    v12._object = 0x800000010057DB70;
    v17._countAndFlagsBits = 0xD000000000000039;
    v12._countAndFlagsBits = 0xD000000000000027;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

    sub_10007EBC0(&unk_1006B20B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100552210;
    *(v14 + 56) = &type metadata for String;
    v15 = sub_10008EE84();
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 64) = v15;
    *(v14 + 72) = v6;
    *(v14 + 80) = v8;
    v6 = String.init(format:_:)();
  }

  return v6;
}

id sub_100053230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMListTableViewCell();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  v0[qword_1006B72D0] = 0;
  [*&v0[qword_1006B72B8] setHidden:v0[qword_1006B72D0]];
  sub_100044E98();
  sub_100233230(0);
  return [*&v0[qword_1006B72B8] setAlpha:1.0];
}

void sub_100053310()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMNoLocationViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageViewTopConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;

      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        v9 = v6 / 3.0;
        [v7 safeAreaInsets];
        v11 = v10;

        [v2 setConstant:v9 - v11 + -30.0];
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

id sub_100053608(int a1)
{
  v2 = v1;
  v3 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
  v4 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if (qword_1006AEBE0 != -1)
        {
          goto LABEL_87;
        }

        goto LABEL_28;
      case 1:
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100005B14(v29, qword_1006D4630);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "FMLocationProvider: location manager didChangeAuthorization: RESTRICTED", v32, 2u);
        }

        v33 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation) = 0;

        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) = 0;
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) = 0;
        v34 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
        result = swift_beginAccess();
        v35 = *(v2 + v34);
        if (v35 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v36 = result;
          if (!result)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v36)
          {
            goto LABEL_52;
          }
        }

        if (v36 >= 1)
        {

          for (i = 0; i != v36; ++i)
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v40 = *(v35 + 8 * i + 32);
            }

            v41 = v40 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v38 = *(v41 + 8);
              ObjectType = swift_getObjectType();
              (*(v38 + 8))(v2, _swiftEmptyArrayStorage, ObjectType, v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_45;
        }

        __break(1u);
LABEL_93:
        __break(1u);
        return result;
      case 2:
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
          _os_log_impl(&_mh_execute_header, v6, v7, "FMLocationProvider: location manager didChangeAuthorization: DENIED", v8, 2u);
        }

        v9 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation) = 0;

        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) = 0;
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) = 0;
        v10 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
        result = swift_beginAccess();
        v12 = *(v2 + v10);
        if (v12 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v13 = result;
          if (!result)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_52;
          }
        }

        if (v13 >= 1)
        {

          for (j = 0; j != v13; ++j)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v12 + 8 * j + 32);
            }

            v18 = v17 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v15 = *(v18 + 8);
              v16 = swift_getObjectType();
              (*(v15 + 8))(v2, _swiftEmptyArrayStorage, v16, v15);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

LABEL_45:

          v3 = 0x1006C3000;
          v4 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
          goto LABEL_52;
        }

        goto LABEL_93;
    }

LABEL_46:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100005B14(v42, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_51;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "FMLocationProvider: location manager didChangeAuthorization: UNKNOWN!!!";
    goto LABEL_50;
  }

  if ((a1 - 3) > 1)
  {
    goto LABEL_46;
  }

  if (qword_1006AEBE0 != -1)
  {
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
    _os_log_impl(&_mh_execute_header, v20, v21, "FMLocationProvider: location manager didChangeAuthorization: AUTHORIZED", v22, 2u);
  }

  *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) = 1;
  v23 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager;
  [*(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager) startUpdatingLocation];
  if (*(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_includeHeading) == 1)
  {
    [*(v2 + v23) startUpdatingHeading];
  }

  while (1)
  {
LABEL_52:
    v43 = v4[326];
    swift_beginAccess();
    v44 = *(v2 + v43);
    if (v44 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_64;
      }
    }

    if (v45 < 1)
    {
      __break(1u);
      goto LABEL_84;
    }

    v46 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized;

    for (k = 0; k != v45; ++k)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v44 + 8 * k + 32);
      }

      v50 = v4 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v48 = *(v50 + 1);
        v49 = swift_getObjectType();
        (*(v48 + 40))(v2, *(v2 + v46), v49, v48);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v3 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
LABEL_64:
    result = *(v2 + *(v3 + 2656));
    if (result)
    {
      result = [result accuracyAuthorization];
      v44 = result != 0;
      v51 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
      *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) = v44;
      if (v44 == v51)
      {
        return result;
      }
    }

    else
    {
      v52 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
      v44 = 1;
      *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) = 1;
      if (v52)
      {
        return result;
      }
    }

    v45 = *(v2 + v43);
    if (!(v45 >> 62))
    {
      v3 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        return result;
      }

      goto LABEL_70;
    }

LABEL_84:
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }

LABEL_70:
    if (v3 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_87:
    swift_once();
LABEL_28:
    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "FMLocationProvider: location manager didChangeAuthorization: NOT DETERMINED";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v25, v26, v28, v27, 2u);
    }

LABEL_51:
  }

  for (m = 0; m != v3; ++m)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v56 = *(v45 + 8 * m + 32);
    }

    v57 = v56 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v54 = *(v57 + 8);
      v55 = swift_getObjectType();
      (*(v54 + 32))(v2, v44, v55, v54);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100053F28(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v18 = a1;
  v10 = *(a2 + 40);

  v11 = [v10 overlays];
  sub_10007EBC0(&unk_1006C2490);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1000573C8(v12, a1, &v18);

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  if (!(a3 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    if (!(a4 >> 62))
    {
      goto LABEL_4;
    }

LABEL_14:

    sub_10007EBC0(&qword_1006C1DD0);
    v16 = _bridgeCocoaArray<A>(_:)();

    a4 = v16;
    if (!(a5 >> 62))
    {
      goto LABEL_5;
    }

LABEL_15:

    sub_10007EBC0(&qword_1006C1DD0);
    v17 = _bridgeCocoaArray<A>(_:)();

    a5 = v17;
    goto LABEL_6;
  }

  sub_10007EBC0(&qword_1006C1DD0);
  v15 = _bridgeCocoaArray<A>(_:)();

  a3 = v15;
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

LABEL_4:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  if (a5 >> 62)
  {
    goto LABEL_15;
  }

LABEL_5:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_6:
  sub_10005529C(a2, a3, a4, a5);

  swift_unknownObjectRelease();
LABEL_7:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100054578(v18, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1000541BC(void *a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v14 = 67109120;
    *(v14 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMStatusBar: changed authorization status? %{BOOL}d", v14, 8u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = a1;
  v18 = v24;
  *(v16 + 24) = v24;
  aBlock[4] = sub_10005BB88;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637610;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v23 + 8))(v6, v4);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100054538()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100054578(unint64_t a1, unint64_t a2)
{
  v3 = v2;
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
    *v9 = 134218240;
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    if (a2 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "FMMapViewController: data source didUpdateOverlays added: %ld, removed: %ld", v9, 0x16u);
  }

  else
  {
  }

  if (((1 << *(*(v3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 56)) & 0x16) != 0)
  {
    v12 = *(v3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    sub_10007EBC0(&unk_1006C2490);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 removeOverlays:isa];

    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v15 = "addOverlays:";
    v16 = v12;
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    v14.super.isa = [v17 overlays];
    if (!v14.super.isa)
    {
      sub_10007EBC0(&unk_1006C2490);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = Array._bridgeToObjectiveC()().super.isa;

      v14.super.isa = v18;
    }

    v15 = "removeOverlays:";
    v16 = v17;
  }

  v19 = v14.super.isa;
  [v16 v15];
}

uint64_t sub_10005482C()
{
  v87 = sub_10007EBC0(&unk_1006B4970);
  __chkstk_darwin(v87);
  v89 = &v78 - v1;
  v2 = sub_10007EBC0(&qword_1006BEEE8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v78 - v3);
  v90 = type metadata accessor for FMAnnotationIdentifier();
  v5 = *(v90 - 8);
  v6 = __chkstk_darwin(v90);
  v80 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v82 = (&v78 - v9);
  v10 = __chkstk_darwin(v8);
  v79 = (&v78 - v11);
  v12 = __chkstk_darwin(v10);
  v81 = (&v78 - v13);
  v14 = __chkstk_darwin(v12);
  v86 = &v78 - v15;
  __chkstk_darwin(v14);
  v88 = &v78 - v16;
  v93 = v0;
  v17 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) _annotationViews];
  v92 = v4;
  if (v17)
  {
    v18 = v17;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = &_swiftEmptyArrayStorage;
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 32;
      v22 = &_swiftEmptyArrayStorage;
      do
      {
        sub_100006004(v21, v96);
        sub_1000072E4(v96, &v94);
        sub_10000905C(0, &unk_1006BEEF0);
        if ((swift_dynamicCast() & 1) != 0 && v95)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v91 = v19;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v19 = v91;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = v97;
        }

        v21 += 32;
        --v20;
      }

      while (v20);
    }

    else
    {

      v22 = &_swiftEmptyArrayStorage;
    }

    *&v96[0] = &_swiftEmptyArrayStorage;
    v4 = v92;
    v78 = v5;
    if (v22 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      v91 = OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView;
      v25 = v22 & 0xC000000000000001;
      v26 = v22 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v25)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v26 + 16))
          {
            goto LABEL_26;
          }

          v27 = *(v22 + 8 * v24 + 32);
        }

        v28 = v27;
        v29 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v30 = v22;
        v31 = *(v91 + v93);
        if (v31 && (sub_10000905C(0, &unk_1006BEEF0), v32 = v28, v33 = v31, v34 = static NSObject.== infix(_:_:)(), v32, v33, (v34 & 1) != 0))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v24;
        v4 = v92;
        v22 = v30;
        if (v29 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v5 = v78;
  }

  *&v96[0] = sub_100057564(v35);
  sub_100055E60(v96, sub_1000573A8, sub_100055D0C);

  v36 = *&v96[0];
  if ((*&v96[0] & 0x8000000000000000) != 0 || (*&v96[0] & 0x4000000000000000) != 0)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (v37)
    {
      goto LABEL_32;
    }
  }

  v37 = *(*&v96[0] + 16);
  if (!v37)
  {
  }

LABEL_32:
  if (v37 >= 1)
  {
    v38 = 0;
    v39 = v36 & 0xC000000000000001;
    v91 = (v5 + 48);
    v40 = 500.0;
    v41 = &selRef_initWithScrollView_edge_;
    v42 = &selRef__enter3DMode;
    v85 = v36;
    v84 = v37;
    v83 = v36 & 0xC000000000000001;
    while (1)
    {
      if (v39)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v36 + 8 * v38 + 32);
      }

      v46 = v44;
      *&v45 = v40;
      [v44 v41[482]];
      if (![v46 v42[216]])
      {
        goto LABEL_35;
      }

      type metadata accessor for FMAnnotation();
      v47 = swift_dynamicCastClass();
      if (v47)
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_35:
      ++v38;
      v40 = v40 + 1.0;
      LODWORD(v43) = 1148846080;
      [v46 setSelectedZPriority:v43];

      if (v37 == v38)
      {
      }
    }

    v48 = v47;
    sub_1003F898C(v4);
    if ((*v91)(v4, 1, v90) == 1)
    {
      swift_unknownObjectRelease();
      sub_100012DF0(v4, &qword_1006BEEE8);
      v41 = &selRef_initWithScrollView_edge_;
LABEL_65:
      v42 = &selRef__enter3DMode;
      goto LABEL_35;
    }

    v49 = v88;
    v50 = sub_10005701C(v4, v88, type metadata accessor for FMAnnotationIdentifier);
    v51 = v86;
    (*((swift_isaMask & *v48) + 0x190))(v50);
    v52 = *(v87 + 48);
    v53 = v89;
    sub_100027BE0(v49, v89, type metadata accessor for FMAnnotationIdentifier);
    sub_10005701C(v51, v53 + v52, type metadata accessor for FMAnnotationIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      v65 = v89;
      v66 = v82;
      sub_100027BE0(v89, v82, type metadata accessor for FMAnnotationIdentifier);
      v68 = *v66;
      v67 = v66[1];

      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v69 = v80;
        sub_100027BE0(v65 + v52, v80, type metadata accessor for FMAnnotationIdentifier);
        v71 = *v69;
        v70 = v69[1];

        v72 = v68 == v71;
        v37 = v84;
        v39 = v83;
        if (!v72 || v67 != v70)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v55 = v89;
        v56 = v81;
        sub_100027BE0(v89, v81, type metadata accessor for FMAnnotationIdentifier);
        v58 = *v56;
        v57 = v56[1];
        v59 = swift_getEnumCaseMultiPayload();
        v37 = v84;
        v39 = v83;
        if (v59 == 4)
        {
          v78 = v58;
          v60 = v79;
          sub_100027BE0(v55 + v52, v79, type metadata accessor for FMAnnotationIdentifier);
          v61 = v57;
          v63 = *v60;
          v62 = v60[1];
          v64 = v78;

          if (v64 != v63 || v61 != v62)
          {
LABEL_60:
            v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v41 = &selRef_initWithScrollView_edge_;
            if (v73)
            {
              goto LABEL_61;
            }

            sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
            v4 = v92;
LABEL_59:
            swift_unknownObjectRelease();
            sub_100012DF0(v89, &unk_1006B4970);
LABEL_64:
            v36 = v85;
            goto LABEL_65;
          }

LABEL_53:

          v41 = &selRef_initWithScrollView_edge_;
LABEL_61:
          v74 = [v46 isSelected];
          LODWORD(v75) = 1148829696;
          if (v74)
          {
            *&v75 = 1000.0;
          }

          [v46 v41[482]];
          swift_unknownObjectRelease();
          sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
          v76 = v89;
          sub_10002A100(v89 + v52, type metadata accessor for FMAnnotationIdentifier);
          sub_10002A100(v76, type metadata accessor for FMAnnotationIdentifier);
          v4 = v92;
          goto LABEL_64;
        }

        sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);

LABEL_58:
        v41 = &selRef_initWithScrollView_edge_;
        goto LABEL_59;
      }

      sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
    }

    v37 = v84;
    v39 = v83;
    goto LABEL_58;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10005529C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v46 = a1;
  v9 = type metadata accessor for FMFConfigValue();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMSelectedSection();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v40 - v15;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100005B14(v16, qword_1006D4630);

  v44 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v47 = a2 >> 62;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 134218496;
    if (a2 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v22;

    *(v21 + 12) = 2048;
    if (a3 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 14) = v23;

    *(v21 + 22) = 2048;
    if (a4 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 24) = v24;

    _os_log_impl(&_mh_execute_header, v18, v19, "*x* FMMapViewController: didUpdateAnnotations add: %ld remove: %ld refresh: %ld", v21, 0x20u);
  }

  else
  {
  }

  v25 = *(*&v5[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
  v26 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v25 + v26, v48, type metadata accessor for FMSelectedSection);
  v27 = &v5[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration];
  if (v5[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration + 8] == 1)
  {
    v29 = v41;
    v28 = v42;
    v30 = v43;
    (*(v42 + 104))(v41, enum case for FMFConfigValue.liveAnimationInterval(_:), v43);
    aBlock[6] = 0x4000000000000000;
    v27 = aBlock;
    FMFGlobalConfig<A>(_:fallback:)();
    (*(v28 + 8))(v29, v30);
  }

  if (*(v46 + 57))
  {
    v31 = *v27;
  }

  else
  {
    v31 = 0.2;
  }

  v32 = objc_opt_self();
  sub_100027BE0(v48, v14, type metadata accessor for FMSelectedSection);
  v33 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v34 = swift_allocObject();
  v34[2] = v5;
  v34[3] = a3;
  v34[4] = a2;
  v34[5] = a4;
  sub_10005701C(v14, v34 + v33, type metadata accessor for FMSelectedSection);
  aBlock[4] = sub_1000561E4;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D068;
  v35 = _Block_copy(aBlock);

  v5;

  [v32 animateWithDuration:196614 delay:v35 options:0 animations:v31 completion:0.0];
  _Block_release(v35);
  sub_10005482C();
  if (v47)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (a3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (a4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return sub_10002A100(v48, type metadata accessor for FMSelectedSection);
    }
  }

  else if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return sub_10002A100(v48, type metadata accessor for FMSelectedSection);
  }

LABEL_23:
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMMapViewController: didUpdateAnnotations center camera", v38, 2u);
  }

  sub_1000202F4(1, 0, 0);
  return sub_10002A100(v48, type metadata accessor for FMSelectedSection);
}

uint64_t sub_1000558F4()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100055C1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10001FF90();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000577BC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100055D0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000905C(0, &unk_1006BEEF0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100401C68(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100400ED4(0, v2, 1, a1);
  }
}

uint64_t sub_100055E60(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void *))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  a3(v10);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100055EF4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled;
  *(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 0;
  v8 = *(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  sub_10007EBC0(&qword_1006C1DD0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 removeAnnotations:isa];

  v10 = Array._bridgeToObjectiveC()().super.isa;
  [v8 addAnnotations:v10];

  if (a4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while ((a4 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v25 = v13;
      sub_1003FF568(&v25, a1);
      swift_unknownObjectRelease();
      ++v12;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    if (v12 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(a4 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v25 = a3;

  sub_100055C1C(v15);
  v16 = v25;
  if (v25 >> 62)
  {
    v20 = v25;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v20;
    v17 = v24;
    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = v24;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }
  }

  if ((*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) & 1) == 0)
  {
    v19 = __chkstk_darwin(v16);
    v22[2] = v23;
    v22[3] = a1;
    sub_100190414(sub_100406810, v22, v19);

    goto LABEL_19;
  }

LABEL_17:

LABEL_19:
  *(a1 + v17) = 1;
  return result;
}

uint64_t sub_1000561E4()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_100055EF4(v2, v3, v4, v5, v6);
}

uint64_t sub_10005624C(unint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = a1 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_14;
  }

  v33 = v3;
  v3 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v38 = v2;
  *v3 = 136315138;
  if (!v12)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v6;
    v35 = v5;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    v17 = 0;
    v19 = 0;
    goto LABEL_13;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v34 = v6;
  v35 = v5;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a1 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v15 = i;
      v16 = [i debugDescription];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

LABEL_13:
      v36 = v17;
      v37 = v19;
      sub_10007EBC0(&qword_1006AF8F0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100005B4C(v20, v21, &v38);

      *(v3 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMLocationProvider: location manager didUpdateLocations: %s", v3, 0xCu);
      sub_100006060(v2);

      v6 = v34;
      v5 = v35;
      v3 = v33;
LABEL_14:
      v10 = v3;
      sub_100056760();
      if (v12)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          return result;
        }
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(a1 + 32);
        goto LABEL_19;
      }

      __break(1u);
LABEL_25:
      ;
    }

    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v3;
    v25[4] = a1;
    v26 = v24;

    v27 = v26;
    v3;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v6 + 8))(v8, v5);
    type metadata accessor for FMLocationShiftingRequest();
    swift_allocObject();
    v28 = v27;
    v29 = FMLocationShiftingRequest.init(identifier:location:)();
    sub_10007EBC0(&qword_1006AFC30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1005528C0;
    *(v30 + 32) = v29;
    v31 = swift_allocObject();
    v31[2] = v28;
    v31[3] = sub_10052A4CC;
    v31[4] = v25;
    v32 = v28;

    dispatch thunk of FMLocationShifter.shift(requests:completion:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000566D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056720()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100056760()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 BOOLForKey:v4];

    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager);
      if (v6)
      {
        v7 = *(v0 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity);
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11[4] = sub_10052A320;
        v11[5] = v8;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_10052A1BC;
        v11[3] = &unk_100644DB0;
        v9 = _Block_copy(v11);
        v10 = v6;

        [v10 _fetchPlaceInferencesWithFidelityPolicy:v7 handler:v9];
        _Block_release(v9);
      }
    }
  }
}

uint64_t sub_100056910()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000569D0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMMainViewController();
  v31.receiver = v2;
  v31.super_class = v15;
  objc_msgSendSuper2(&v31, "viewDidAppear:", a1 & 1);
  v16 = *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  if (sub_100056EF8())
  {
    sub_10000905C(0, &qword_1006AEDC0);
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    aBlock[4] = sub_1000573C0;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006384E0;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v26;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v5 + 8))(v7, v4);
    (*(v27 + 8))(v10, v28);
  }

  else
  {
    v21 = *(v16 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    sub_10000905C(0, &qword_1006AEDC0);
    v23 = v21;
    v24 = v2;
    v25 = static OS_dispatch_queue.main.getter();
    sub_100421C3C(sub_100357F10, v22, v25);
  }
}

uint64_t sub_100056E44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056E7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100056EF8()
{
  static SystemInfo.isKoreaSKU.getter();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_100056FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005701C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100057098()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100057590();
  if (result == 3 || result == 0)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_100357F38;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100638508;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void *sub_1000573C8(unint64_t a1, unint64_t a2, void *a3)
{
  v15 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v8;
        sub_1004B5640(&v14, a2, a3, &v13);
        if (v3)
        {
          goto LABEL_16;
        }

        swift_unknownObjectRelease();
        if (v13)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v15;
        }

        ++v6;
        if (v9 == v5)
        {
          return v7;
        }
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100057590()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005B4C(0xD000000000000022, 0x80000001005983A0, &v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "NotificationSettingsObserver: %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v10 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v10);
  *(&v12 - 2) = v1;
  type metadata accessor for UNAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t sub_1000577BC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10043C16C(&unk_1006C0098, &qword_1006C0090);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0090);
            v9 = sub_1001687BC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_10007EBC0(&qword_1006C1DD0);
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

uint64_t sub_100057A08(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - v6;
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator;
  v17 = qword_1006AECC0;
  v18 = *(*(a1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 16);
  if (v17 != -1)
  {
    v29 = v18;
    swift_once();
    v18 = v29;
  }

  v19 = byte_1006D4AD1;

  swift_storeEnumTagMultiPayload();
  if (v15)
  {
    v32._countAndFlagsBits = v13;
    v32._object = v15;
    if (sub_10001C4B4(v32) != 5)
    {
      sub_100057FEC();
      sub_100058438(v7, v9);
    }
  }

  if (!v19 || *(*(*(a1 + v16) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v20 = sub_10005F7D0(v9, v7);
    sub_10002A1C0(v7, type metadata accessor for FMSelectedSection);
    if (v20)
    {
      sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
      swift_storeEnumTagMultiPayload();
    }
  }

  if (*(*(*(a1 + v16) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v21 = sub_10005F7D0(v9, v7);
    sub_10002A1C0(v7, type metadata accessor for FMSelectedSection);
    if (v21)
    {
      sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
      swift_storeEnumTagMultiPayload();
    }
  }

  v22 = *(*(a1 + v16) + 56);
  sub_100027CB0(v9, v7, type metadata accessor for FMSelectedSection);
  v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v24 = v31;
  sub_100027CB0(v22 + v23, v31, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v7, v22 + v23);
  swift_endAccess();
  sub_100058594(v24);

  sub_10002A1C0(v24, type metadata accessor for FMSelectedSection);
  sub_10002A1C0(v7, type metadata accessor for FMSelectedSection);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_100485C24;
  v27[4] = v25;

  swift_retain_n();

  sub_1000E8790();

  sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
}

uint64_t sub_100057F04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057F3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057F74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057FEC()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = String.init<A>(describing:)();
    v7 = sub_100005B4C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMRestoreState: selection(%s)...", v3, 0xCu);
    sub_100006060(v4);
  }

  type metadata accessor for FMSelectedSection();
  return swift_storeEnumTagMultiPayload();
}

void sub_10005816C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_isUpToDate;
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_isUpToDate);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  if (v5 == 1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "NotificationSettingsObserver: Property isUpToDate", v9, 2u);
    }

    v10 = (a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus);
  }

  else
  {
    if (v8)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "NotificationSettingsObserver: Not Initialized, will force fetch", v11, 2u);
    }

    v12 = [objc_opt_self() currentNotificationCenter];
    v13 = [v12 notificationSettings];

    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = [v14 authorizationStatus];

      _os_log_impl(&_mh_execute_header, v15, v16, "NotificationSettingsObserver: Set Property %ld", v17, 0xCu);
    }

    else
    {

      v15 = v14;
    }

    v18 = [v14 authorizationStatus];
    v10 = (a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus);
    *(a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus) = v18;
    *(a1 + v4) = 1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "NotificationSettingsObserver: Did finish force fetch, returning", v21, 2u);
    }
  }

  *a2 = *v10;
}

uint64_t sub_100058438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100058594(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B2B70);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v92 - v8;
  v10 = type metadata accessor for FMSelectedSection();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v93 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v94 = &v92 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v92 - v17;
  v19 = __chkstk_darwin(v16);
  v99 = &v92 - v20;
  __chkstk_darwin(v19);
  v100 = &v92 - v21;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100005B14(v22, qword_1006D4630);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v101 = v2;
  v97 = v9;
  v98 = v7;
  v96 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v106[0] = v28;
    *v27 = 136315138;
    v29 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v95 = v18;
    v30 = v101;
    sub_100027AA8(v101 + v29, v100, type metadata accessor for FMSelectedSection);
    v31 = String.init<A>(describing:)();
    v33 = v10;
    v34 = sub_100005B4C(v31, v32, v106);
    v2 = v30;
    v18 = v95;

    *(v27 + 4) = v34;
    v10 = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "FMSelectionController: currentSelectedSection update + %s", v27, 0xCu);
    sub_100006060(v28);
  }

  v35 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v36 = v99;
  sub_100027AA8(v2 + v35, v99, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    v38 = v100;
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_100029FE0(v36, type metadata accessor for FMSelectedSection);
          goto LABEL_16;
        }

LABEL_13:
        sub_100029FE0(v36, type metadata accessor for FMSelectedSection);
        goto LABEL_29;
      }

      v39 = sub_10007EBC0(&qword_1006BEEE0);
      sub_100012DF0(v36 + *(v39 + 48), &qword_1006B07D0);
      v40 = type metadata accessor for FMIPDevice();
      (*(*(v40 - 8) + 8))(v36, v40);
LABEL_24:
      if (qword_1006AECE0 != -1)
      {
        goto LABEL_58;
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 11)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_100029FE0(v36, type metadata accessor for FMSelectedSection);
LABEL_28:
    if (FMIPItemsTabEnabled.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  v38 = v100;
  if ((EnumCaseMultiPayload - 17) < 2)
  {
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 12)
  {
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 15)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (qword_1006AECC0 != -1)
  {
    swift_once();
  }

  if (byte_1006D4AD1 != 1)
  {
    goto LABEL_33;
  }

  if (qword_1006AECD8 != -1)
  {
    swift_once();
  }

  if (byte_1006D4AD4 == 1)
  {
LABEL_33:
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100058438(v38, v2 + v35);
    swift_endAccess();
    return;
  }

  while (1)
  {
LABEL_29:
    sub_100027AA8(a1, v18, type metadata accessor for FMSelectedSection);
    v41 = swift_getEnumCaseMultiPayload();
    if (v41 == 18 || v41 == 11)
    {
      v42 = a1;
      v43 = v94;
      sub_100027AA8(v42, v94, type metadata accessor for FMSelectedSection);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v105[0] = v47;
        *v46 = 136315138;
        sub_100027AA8(v43, v38, type metadata accessor for FMSelectedSection);
        v48 = String.init<A>(describing:)();
        v99 = v10;
        v49 = v48;
        v50 = v43;
        v51 = v38;
        v52 = v23;
        v54 = v53;
        sub_100029FE0(v50, type metadata accessor for FMSelectedSection);
        v55 = sub_100005B4C(v49, v54, v105);
        v23 = v52;
        v38 = v51;

        *(v46 + 4) = v55;
        v10 = v99;
        _os_log_impl(&_mh_execute_header, v44, v45, "FMSelectionController: ignore previous selection %s", v46, 0xCu);
        sub_100006060(v47);
      }

      else
      {

        sub_100029FE0(v43, type metadata accessor for FMSelectedSection);
      }

      v18 = v97;
      v56 = v98;
      v57 = v96;
      v58 = &unk_1006D4000;
    }

    else
    {
      v95 = v18;
      v59 = v93;
      sub_100027AA8(a1, v93, type metadata accessor for FMSelectedSection);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v105[0] = v63;
        *v62 = 136315138;
        sub_100027AA8(v59, v38, type metadata accessor for FMSelectedSection);
        v64 = String.init<A>(describing:)();
        v99 = v10;
        v65 = v64;
        v66 = v59;
        v67 = a1;
        v68 = v38;
        v69 = v23;
        v71 = v70;
        sub_100029FE0(v66, type metadata accessor for FMSelectedSection);
        v72 = sub_100005B4C(v65, v71, v105);
        v23 = v69;
        v38 = v68;
        a1 = v67;

        *(v62 + 4) = v72;
        v10 = v99;
        _os_log_impl(&_mh_execute_header, v60, v61, "FMSelectionController: setting previous selection to %s", v62, 0xCu);
        sub_100006060(v63);
      }

      else
      {

        sub_100029FE0(v59, type metadata accessor for FMSelectedSection);
      }

      v18 = v97;
      v56 = v98;
      v57 = v96;
      sub_100027AA8(a1, v38, type metadata accessor for FMSelectedSection);
      v58 = &unk_1006D4000;
      v73 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      v74 = v101;
      swift_beginAccess();
      v75 = v74 + v73;
      v2 = v74;
      sub_100058530(v38, v75);
      swift_endAccess();
      sub_1000596D8();
      sub_100029FE0(v38, type metadata accessor for FMSelectedSection);
      sub_100029FE0(v95, type metadata accessor for FMSelectedSection);
    }

    sub_100027AA8(v2 + v35, v18, type metadata accessor for FMSelectedSection);
    v76 = *(v57 + 56);
    v76(v18, 0, 1, v10);
    v77 = v58[93];
    swift_beginAccess();
    sub_100027AA8(v101 + v77, v56, type metadata accessor for FMSelectedSection);
    v76(v56, 0, 1, v10);
    v2 = v101;
    sub_1000598FC(v18, v56);
    sub_100012DF0(v56, &qword_1006B2B70);
    sub_100012DF0(v18, &qword_1006B2B70);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v102 = v18;
      v103 = 0;
      *v80 = 136315138;
      v104 = 0xE000000000000000;
      sub_100027AA8(v2 + v35, v38, type metadata accessor for FMSelectedSection);
      _print_unlocked<A, B>(_:_:)();
      sub_100029FE0(v38, type metadata accessor for FMSelectedSection);
      v10 = sub_100005B4C(v103, v104, &v102);

      *(v80 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v78, v79, "FMSelectionController: currentSelection changed  %s", v80, 0xCu);
      sub_100006060(v18);
    }

    swift_beginAccess();
    a1 = *(v2 + 16);
    if (a1 >> 62)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();
      if (!v81)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v81 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v81)
      {
        goto LABEL_54;
      }
    }

    if (v81 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_25:
    if (byte_1006D4AD5 == 1)
    {
      goto LABEL_33;
    }
  }

  v99 = v35;

  for (i = 0; i != v81; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v87 = *(a1 + 8 * i + 32);
    }

    v88 = v87 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v83 = *(v88 + 8);
      ObjectType = swift_getObjectType();
      v85 = v100;
      v86 = v101;
      sub_100027AA8(v101 + v99, v100, type metadata accessor for FMSelectedSection);
      (*(v83 + 8))(v86, v85, ObjectType, v83);

      swift_unknownObjectRelease();
      sub_100029FE0(v85, type metadata accessor for FMSelectedSection);
    }

    else
    {
    }
  }

  v38 = v100;
  v2 = v101;
  v35 = v99;
LABEL_54:
  sub_100027AA8(v2 + v35, v38, type metadata accessor for FMSelectedSection);
  sub_100245634(v38);
  sub_100029FE0(v38, type metadata accessor for FMSelectedSection);
  v89 = [objc_opt_self() standardUserDefaults];
  v90 = String._bridgeToObjectiveC()();

  v91 = String._bridgeToObjectiveC()();
  [v89 setObject:v90 forKey:v91];
}

uint64_t sub_100059400(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentHeading);
  *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentHeading) = a1;
  v4 = a1;

  v5 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 16))(v2, v4, ObjectType, v10);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_100059588(uint64_t a1, id *a2, BOOL *a3)
{
  v5 = [objc_opt_self() sharedConnection];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    v8 = [v6 effectiveBoolValueForSetting:v7];

    v9 = v8 == 2;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

void sub_10005963C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentRunLoop];
  [v4 addTimer:a1 forMode:NSRunLoopCommonModes];

  v6 = *(a2 + 32);
  *(a2 + 32) = a1;
  v5 = a1;
}

void sub_1000596D8()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v15 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100027AA8(v1 + v9, v4, type metadata accessor for FMSelectedSection);
    v10 = String.init<A>(describing:)();
    v12 = sub_100005B4C(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v15, v6, "FMSelectionController: previousSelectedSection update - %s", v7, 0xCu);
    sub_100006060(v8);
  }

  else
  {
    v13 = v15;
  }
}

void sub_1000598FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v322 = *(v4 - 8);
  v323 = v4;
  __chkstk_darwin(v4);
  v321 = &v319[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for FMSelectedSection();
  v331 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v319[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v325 = &v319[-v11];
  v12 = __chkstk_darwin(v10);
  v326 = &v319[-v13];
  v14 = __chkstk_darwin(v12);
  v324 = &v319[-v15];
  __chkstk_darwin(v14);
  v329 = &v319[-v16];
  v17 = sub_10007EBC0(&qword_1006B2B70);
  v18 = __chkstk_darwin(v17);
  v330 = &v319[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v327 = &v319[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v319[-v23];
  v25 = __chkstk_darwin(v22);
  v27 = &v319[-v26];
  __chkstk_darwin(v25);
  v29 = &v319[-v28];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v333 = v9;
  v30 = type metadata accessor for Logger();
  v31 = sub_100005B14(v30, qword_1006D4630);
  *&v332 = a1;
  sub_10005B504(a1, v29);
  v328 = a2;
  sub_10005B504(a2, v27);
  v334 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v335 = v6;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v320 = v33;
    v36 = v35;
    v339[0] = swift_slowAlloc();
    *v36 = 136315394;
    sub_10005B504(v29, v24);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    sub_100012DF0(v29, &qword_1006B2B70);
    v40 = sub_100005B4C(v37, v39, v339);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    sub_10005B504(v27, v24);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_100012DF0(v27, &qword_1006B2B70);
    v44 = sub_100005B4C(v41, v43, v339);

    *(v36 + 14) = v44;
    v6 = v335;
    _os_log_impl(&_mh_execute_header, v32, v320, "FMSelectionController: saveInfo: selected: %s, previousSelected: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100012DF0(v27, &qword_1006B2B70);
    sub_100012DF0(v29, &qword_1006B2B70);
  }

  v45 = v327;
  sub_10005B504(v328, v327);
  v46 = *(v331 + 48);
  v47 = v46(v45, 1, v6);
  v48 = v332;
  if (v47 == 1)
  {
    sub_100012DF0(v45, &qword_1006B2B70);
    goto LABEL_69;
  }

  v49 = v45;
  v50 = v329;
  sub_10005B574(v49, v329);
  v51 = v324;
  sub_100027AA8(v50, v324, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    if (!EnumCaseMultiPayload)
    {
      v91 = sub_10007EBC0(&qword_1006BEEE0);
      sub_100012DF0(&v51[*(v91 + 48)], &qword_1006B07D0);
      v92 = type metadata accessor for FMIPDevice();
      (*(*(v92 - 8) + 8))(v51, v92);
LABEL_35:
      v93 = FMTabInfoLastVisited.getter();
      v95 = v94;
      v96 = v336;
      swift_beginAccess();
      v97 = v96[3];
      if (*(v97 + 16) && (, v98 = sub_10000726C(v93, v95), v100 = v99, , (v100 & 1) != 0))
      {
        v101 = *(*(v97 + 56) + 8 * v98);

        if (v101 != -1.0)
        {
          v102 = FMTabInfoTimeSpent.getter();
          v104 = v103;
          v105 = v336[3];
          if (*(v105 + 16) && (v106 = v102, , v107 = sub_10000726C(v106, v104), v109 = v108, , (v109 & 1) != 0))
          {
            v110 = *(*(v105 + 56) + 8 * v107);

            if (v110 == -1.0)
            {
              v111 = 0.0;
            }

            else
            {
              v111 = v110;
            }
          }

          else
          {

            v111 = 0.0;
          }

          v287 = FMTabInfoTimeSpent.getter();
          v289 = v288;
          v290 = v321;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v292 = v291;
          (*(v322 + 8))(v290, v323);
          v293 = v336;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v338 = v293[3];
          v293[3] = 0x8000000000000000;
          sub_10005B5E4(v287, v289, isUniquelyReferenced_nonNull_native, v111 + v292 - v101);

          v293[3] = v338;
          goto LABEL_162;
        }
      }

      else
      {
      }

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v130, v131))
      {
        goto LABEL_67;
      }

      v132 = swift_slowAlloc();
      *v132 = 0;
      v133 = "FMSelectionController: not recording time spent on devices, we haven't visited it";
LABEL_66:
      _os_log_impl(&_mh_execute_header, v130, v131, v133, v132, 2u);

      goto LABEL_67;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_43;
      }

      sub_100029FE0(v51, type metadata accessor for FMSelectedSection);
      goto LABEL_26;
    }

    sub_100029FE0(v51, type metadata accessor for FMSelectedSection);
LABEL_45:
    v112 = FMTabInfoLastVisited.getter();
    v114 = v113;
    v115 = v336;
    swift_beginAccess();
    v116 = v115[5];
    if (*(v116 + 16) && (, v117 = sub_10000726C(v112, v114), v119 = v118, , (v119 & 1) != 0))
    {
      v120 = *(*(v116 + 56) + 8 * v117);

      if (v120 != -1.0)
      {
        v121 = FMTabInfoTimeSpent.getter();
        v123 = v122;
        v124 = v336[5];
        if (*(v124 + 16) && (v125 = v121, , v126 = sub_10000726C(v125, v123), v128 = v127, , (v128 & 1) != 0))
        {
          v129 = *(*(v124 + 56) + 8 * v126);
        }

        else
        {

          v129 = -1.0;
        }

        v295 = FMTabInfoTimeSpent.getter();
        v297 = v296;
        v298 = v321;
        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v300 = v299;
        (*(v322 + 8))(v298, v323);
        v301 = v336;
        swift_beginAccess();
        v302 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v301[5];
        v301[5] = 0x8000000000000000;
        sub_10005B5E4(v295, v297, v302, v129 + v300 - v120);

        v301[5] = v338;
        goto LABEL_162;
      }
    }

    else
    {
    }

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v130, v131))
    {
      goto LABEL_67;
    }

    v132 = swift_slowAlloc();
    *v132 = 0;
    v133 = "FMSelectionController: not recording time spent on people, we haven't visited it";
    goto LABEL_66;
  }

  if (EnumCaseMultiPayload > 14)
  {
    if (EnumCaseMultiPayload != 15)
    {
      if (EnumCaseMultiPayload != 17)
      {
        goto LABEL_43;
      }

LABEL_26:
      v72 = FMTabInfoLastVisited.getter();
      v74 = v73;
      v75 = v336;
      swift_beginAccess();
      v76 = v75[4];
      if (*(v76 + 16) && (, v77 = sub_10000726C(v72, v74), v79 = v78, , (v79 & 1) != 0))
      {
        v80 = *(*(v76 + 56) + 8 * v77);

        if (v80 != -1.0)
        {
          v81 = FMTabInfoTimeSpent.getter();
          v83 = v82;
          v84 = v336[4];
          if (*(v84 + 16) && (v85 = v81, , v86 = sub_10000726C(v85, v83), v88 = v87, , (v88 & 1) != 0))
          {
            v89 = *(*(v84 + 56) + 8 * v86);

            if (v89 == -1.0)
            {
              v90 = 0.0;
            }

            else
            {
              v90 = v89;
            }
          }

          else
          {

            v90 = 0.0;
          }

          v303 = FMTabInfoTimeSpent.getter();
          v305 = v304;
          v306 = v321;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v308 = v307;
          (*(v322 + 8))(v306, v323);
          v309 = v336;
          swift_beginAccess();
          v310 = swift_isUniquelyReferenced_nonNull_native();
          v338 = v309[4];
          v309[4] = 0x8000000000000000;
          sub_10005B5E4(v303, v305, v310, v90 + v308 - v80);

          v309[4] = v338;
          goto LABEL_162;
        }
      }

      else
      {
      }

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v130, v131))
      {
        goto LABEL_67;
      }

      v132 = swift_slowAlloc();
      *v132 = 0;
      v133 = "FMSelectionController: not recording time spent on items, we haven't visited it";
      goto LABEL_66;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 12)
  {
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 13)
  {
LABEL_43:
    sub_100029FE0(v329, type metadata accessor for FMSelectedSection);
    sub_100029FE0(v51, type metadata accessor for FMSelectedSection);
    goto LABEL_69;
  }

  v53 = FMTabInfoLastVisited.getter();
  v55 = v54;
  v56 = v336;
  swift_beginAccess();
  v57 = v56[6];
  if (*(v57 + 16) && (, v58 = sub_10000726C(v53, v55), v60 = v59, , (v60 & 1) != 0))
  {
    v61 = *(*(v57 + 56) + 8 * v58);

    if (v61 != -1.0)
    {
      v62 = FMTabInfoTimeSpent.getter();
      v64 = v63;
      v65 = v336[6];
      if (*(v65 + 16) && (v66 = v62, , v67 = sub_10000726C(v66, v64), v69 = v68, , (v69 & 1) != 0))
      {
        v70 = *(*(v65 + 56) + 8 * v67);

        if (v70 == -1.0)
        {
          v71 = 0.0;
        }

        else
        {
          v71 = v70;
        }
      }

      else
      {

        v71 = 0.0;
      }

      v311 = FMTabInfoTimeSpent.getter();
      v313 = v312;
      v314 = v321;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v316 = v315;
      (*(v322 + 8))(v314, v323);
      v317 = v336;
      swift_beginAccess();
      v318 = swift_isUniquelyReferenced_nonNull_native();
      v338 = v317[6];
      v317[6] = 0x8000000000000000;
      sub_10005B5E4(v311, v313, v318, v71 + v316 - v61);

      v317[6] = v338;
LABEL_162:
      swift_endAccess();
      goto LABEL_68;
    }
  }

  else
  {
  }

  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    v133 = "FMSelectionController: not recording time spent on me, we haven't visited it";
    goto LABEL_66;
  }

LABEL_67:

LABEL_68:
  sub_100029FE0(v329, type metadata accessor for FMSelectedSection);
  v6 = v335;
LABEL_69:
  v134 = v330;
  sub_10005B504(v48, v330);
  if (v46(v134, 1, v6) != 1)
  {
    v135 = v326;
    sub_10005B574(v134, v326);
    v136 = v325;
    sub_100027AA8(v135, v325, type metadata accessor for FMSelectedSection);
    v137 = swift_getEnumCaseMultiPayload();
    if (v137 <= 11)
    {
      if (!v137)
      {
        v154 = sub_10007EBC0(&qword_1006BEEE0);
        sub_100012DF0(&v136[*(v154 + 48)], &qword_1006B07D0);
        v155 = type metadata accessor for FMIPDevice();
        (*(*(v155 - 8) + 8))(v136, v155);
        goto LABEL_84;
      }

      if (v137 != 2)
      {
        if (v137 != 3)
        {
          goto LABEL_85;
        }

        sub_100029FE0(v136, type metadata accessor for FMSelectedSection);
LABEL_82:
        v146 = FMTabInfoLastVisited.getter();
        v148 = v147;
        v149 = v321;
        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v151 = v150;
        (*(v322 + 8))(v149, v323);
        v152 = v336;
        swift_beginAccess();
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v152[4];
        v152[4] = 0x8000000000000000;
        sub_10005B5E4(v146, v148, v153, v151);

        v152[4] = v338;
        goto LABEL_88;
      }

      sub_100029FE0(v136, type metadata accessor for FMSelectedSection);
    }

    else
    {
      if (v137 <= 14)
      {
        if (v137 != 12)
        {
          if (v137 == 13)
          {
            v138 = FMTabInfoLastVisited.getter();
            v140 = v139;
            v141 = v321;
            static Date.now.getter();
            Date.timeIntervalSince1970.getter();
            v143 = v142;
            (*(v322 + 8))(v141, v323);
            v144 = v336;
            swift_beginAccess();
            v145 = swift_isUniquelyReferenced_nonNull_native();
            v338 = v144[6];
            v144[6] = 0x8000000000000000;
            sub_10005B5E4(v138, v140, v145, v143);

            v144[6] = v338;
LABEL_88:
            swift_endAccess();
            v164 = v135;
            goto LABEL_89;
          }

LABEL_85:
          sub_100029FE0(v135, type metadata accessor for FMSelectedSection);
          v164 = v136;
LABEL_89:
          sub_100029FE0(v164, type metadata accessor for FMSelectedSection);
          goto LABEL_90;
        }

LABEL_84:
        v156 = FMTabInfoLastVisited.getter();
        v158 = v157;
        v159 = v321;
        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v161 = v160;
        (*(v322 + 8))(v159, v323);
        v162 = v336;
        swift_beginAccess();
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v162[3];
        v162[3] = 0x8000000000000000;
        sub_10005B5E4(v156, v158, v163, v161);

        v162[3] = v338;
        goto LABEL_88;
      }

      if (v137 != 15)
      {
        if (v137 != 17)
        {
          goto LABEL_85;
        }

        goto LABEL_82;
      }
    }

    v165 = FMTabInfoLastVisited.getter();
    v167 = v166;
    v168 = v321;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v170 = v169;
    (*(v322 + 8))(v168, v323);
    v171 = v336;
    swift_beginAccess();
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v338 = v171[5];
    v171[5] = 0x8000000000000000;
    sub_10005B5E4(v165, v167, v172, v170);

    v171[5] = v338;
    goto LABEL_88;
  }

  sub_100012DF0(v134, &qword_1006B2B70);
LABEL_90:
  sub_10007EBC0(&qword_1006B7F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = FMTabInfoLastVisited.getter();
  *(inited + 40) = v174;
  sub_10007EBC0(&qword_1006B7F18);
  v175 = swift_allocObject();
  v332 = xmmword_100558330;
  *(v175 + 16) = xmmword_100558330;
  v176 = FMTabInfoLastVisited.getter();
  v178 = v177;
  v179 = v336;
  swift_beginAccess();
  v180 = v179[5];
  if (*(v180 + 16) && (, v181 = sub_10000726C(v176, v178), v183 = v182, , (v183 & 1) != 0))
  {
    v184 = *(*(v180 + 56) + 8 * v181);

    v185 = 0;
  }

  else
  {

    v184 = 0;
    v185 = 1;
  }

  *(v175 + 32) = v184;
  *(v175 + 40) = v185;
  v186 = FMTabInfoLastVisited.getter();
  v188 = v187;
  v189 = v336;
  swift_beginAccess();
  v190 = v189[3];
  if (*(v190 + 16) && (, v191 = sub_10000726C(v186, v188), v193 = v192, , (v193 & 1) != 0))
  {
    v194 = *(*(v190 + 56) + 8 * v191);

    v195 = 0;
  }

  else
  {

    v194 = 0;
    v195 = 1;
  }

  *(v175 + 48) = v194;
  *(v175 + 56) = v195;
  v196 = FMTabInfoLastVisited.getter();
  v198 = v197;
  v199 = v336;
  swift_beginAccess();
  v200 = v199[4];
  if (*(v200 + 16) && (, v201 = sub_10000726C(v196, v198), v203 = v202, , (v203 & 1) != 0))
  {
    v204 = *(*(v200 + 56) + 8 * v201);

    v205 = 0;
  }

  else
  {

    v204 = 0;
    v205 = 1;
  }

  *(v175 + 64) = v204;
  *(v175 + 72) = v205;
  v206 = FMTabInfoLastVisited.getter();
  v208 = v207;
  v209 = v336;
  swift_beginAccess();
  v210 = v209[6];
  if (*(v210 + 16) && (, v211 = sub_10000726C(v206, v208), v213 = v212, , (v213 & 1) != 0))
  {
    v214 = *(*(v210 + 56) + 8 * v211);

    v215 = 0;
  }

  else
  {

    v214 = 0;
    v215 = 1;
  }

  *(v175 + 80) = v214;
  *(v175 + 88) = v215;
  *(inited + 48) = v175;
  *(inited + 56) = FMTabInfoCurrentTab.getter();
  *(inited + 64) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_100552220;
  v218 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  v219 = v336;
  swift_beginAccess();
  v220 = v219 + v218;
  v221 = v333;
  sub_100027AA8(v220, v333, type metadata accessor for FMSelectedSection);
  v222 = swift_getEnumCaseMultiPayload();
  if (v222 > 12)
  {
    if ((v222 - 17) < 2)
    {
LABEL_121:
      v223 = 0x4000000000000000;
      goto LABEL_125;
    }

    if (v222 == 13)
    {
      v223 = 0x4008000000000000;
      goto LABEL_125;
    }

    if (v222 == 15)
    {
      goto LABEL_115;
    }

LABEL_124:
    sub_100029FE0(v221, type metadata accessor for FMSelectedSection);
    v223 = 0x4010000000000000;
    goto LABEL_125;
  }

  if (v222 <= 2)
  {
    if (!v222)
    {
      v224 = sub_10007EBC0(&qword_1006BEEE0);
      sub_100012DF0(v221 + *(v224 + 48), &qword_1006B07D0);
      v225 = type metadata accessor for FMIPDevice();
      (*(*(v225 - 8) + 8))(v221, v225);
LABEL_123:
      v223 = 0x3FF0000000000000;
      goto LABEL_125;
    }

    if (v222 == 2)
    {
      sub_100029FE0(v221, type metadata accessor for FMSelectedSection);
      v223 = 0;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  if (v222 == 3)
  {
    sub_100029FE0(v221, type metadata accessor for FMSelectedSection);
    goto LABEL_121;
  }

  if (v222 != 11)
  {
    if (v222 != 12)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_115:
  v223 = 0;
LABEL_125:
  *(v217 + 32) = v223;
  *(v217 + 40) = 0;
  *(inited + 72) = v217;
  *(inited + 80) = FMTabInfoTimeSpent.getter();
  *(inited + 88) = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = v332;
  v228 = FMTabInfoTimeSpent.getter();
  v230 = v229;
  v231 = v336[5];
  if (*(v231 + 16) && (v232 = v228, , v233 = sub_10000726C(v232, v230), v235 = v234, , (v235 & 1) != 0))
  {
    v236 = *(*(v231 + 56) + 8 * v233);

    v237 = 0;
  }

  else
  {

    v236 = 0;
    v237 = 1;
  }

  *(v227 + 32) = v236;
  *(v227 + 40) = v237;
  v238 = FMTabInfoTimeSpent.getter();
  v240 = v239;
  v241 = v336[3];
  if (*(v241 + 16) && (v242 = v238, , v243 = sub_10000726C(v242, v240), v245 = v244, , (v245 & 1) != 0))
  {
    v246 = *(*(v241 + 56) + 8 * v243);

    v247 = 0;
  }

  else
  {

    v246 = 0;
    v247 = 1;
  }

  *(v227 + 48) = v246;
  *(v227 + 56) = v247;
  v248 = FMTabInfoTimeSpent.getter();
  v250 = v249;
  v251 = v336[4];
  if (*(v251 + 16) && (v252 = v248, , v253 = sub_10000726C(v252, v250), v255 = v254, , (v255 & 1) != 0))
  {
    v256 = *(*(v251 + 56) + 8 * v253);

    v257 = 0;
  }

  else
  {

    v256 = 0;
    v257 = 1;
  }

  *(v227 + 64) = v256;
  *(v227 + 72) = v257;
  v258 = FMTabInfoTimeSpent.getter();
  v260 = v259;
  v261 = v336[6];
  if (*(v261 + 16) && (v262 = v258, , v263 = sub_10000726C(v262, v260), v265 = v264, , (v265 & 1) != 0))
  {
    v266 = *(*(v261 + 56) + 8 * v263);

    v267 = 0;
  }

  else
  {

    v266 = 0;
    v267 = 1;
  }

  *(v227 + 80) = v266;
  *(v227 + 88) = v267;
  *(inited + 96) = v227;
  sub_10005B82C(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B7F20);
  swift_arrayDestroy();
  v268 = objc_opt_self();
  sub_10007EBC0(&qword_1006B7F28);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v337[0] = 0;
  v270 = [v268 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v337];

  v271 = v337[0];
  if (v270)
  {
    v272 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v274 = v273;
  }

  else
  {
    v275 = v271;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v272 = 0;
    v274 = 0xF000000000000000;
  }

  v276 = [objc_opt_self() standardUserDefaults];
  if (v274 >> 60 == 15)
  {
    v277 = 0;
  }

  else
  {
    sub_10005B930(v272, v274);
    v277 = Data._bridgeToObjectiveC()().super.isa;
    sub_10005BA6C(v272, v274);
  }

  v278 = String._bridgeToObjectiveC()();
  [v276 setValue:v277 forKey:v278];

  swift_unknownObjectRelease();

  v279 = Logger.logObject.getter();
  v280 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v279, v280))
  {
    v281 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    v337[0] = v282;
    *v281 = 136315138;
    v283 = Dictionary.description.getter();
    v285 = v284;

    v286 = sub_100005B4C(v283, v285, v337);

    *(v281 + 4) = v286;
    _os_log_impl(&_mh_execute_header, v279, v280, "FMSelectionController: saved tab info: %s", v281, 0xCu);
    sub_100006060(v282);

    sub_10005BA6C(v272, v274);
  }

  else
  {
    sub_10005BA6C(v272, v274);
  }
}

uint64_t sub_10005B504(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B2B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B5E4(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10000726C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1001B5668(v16, a3 & 1);
      result = sub_10000726C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1001BD850();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_10005B740(uint64_t a1)
{
  v2 = *(a1 + qword_1006B72C0);
}

unint64_t sub_10005B82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B39C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000726C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10005B930(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005BA6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000A858(a1, a2);
  }

  return a1;
}

void sub_10005BA88(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = 1;
LABEL_10:
    sub_10033B9C0();
    return;
  }

  v2 = *(a1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = v3;
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:0 forKey:v5];
}

void sub_10005BBB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1)
  {
    v7 = a2;
  }

  v8 = qword_1006AEBE0;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 136315138;
    v15 = v11;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100005B4C(v17, v19, v32);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMLocationProvider: location manager didUpdateLocations after shifting: %s", v14, 0xCu);
    sub_100006060(v31);
  }

  v21 = *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation) = v11;
  v22 = v11;

  *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) = sub_10005C330() & 1;
  v23 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();
  v24 = *(a3 + v23);
  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_20:

    return;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v25 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v24 + 8 * i + 32);
      }

      v30 = v29 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v30 + 8);
        ObjectType = swift_getObjectType();
        (*(v27 + 8))(a3, a4, ObjectType, v27);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10005BEBC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10005BFDC;
  }

  else
  {
    v2 = sub_1003518C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005BFDC()
{
  v1 = v0[19];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_10005C09C(uint64_t a1, const char *a2, const char *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100005B4C(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
      sub_100006060(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, a3, v15, 2u);
    }
  }
}

id sub_10005C330()
{
  v14 = &type metadata for KoreaFeatureFlag;
  v15 = sub_10001ABFC();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if (v1)
  {
    return 0;
  }

  [v0 coordinate];
  v4 = v3;
  [v0 coordinate];
  v6 = v5;
  if (qword_1006AEBC0 != -1)
  {
    swift_once();
  }

  result = [qword_1006BA898 containsCoordinate:{v4, v6}];
  if (result)
  {
    v7 = qword_1006BA8A0;
    if (qword_1006BA8A0)
    {
      v8 = qword_1006BA8A0;
    }

    else
    {
      v9 = sub_1002CEE28();
      v10 = qword_1006BA8A0;
      qword_1006BA8A0 = v9;
      v8 = v9;

      v7 = 0;
    }

    v11 = v7;
    v12 = [v8 containsCoordinate:{v4, v6}];

    return v12;
  }

  return result;
}

uint64_t sub_10005C474(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v24 = swift_slowAlloc();
    v25 = v5;
    aBlock[0] = v24;
    *v14 = 136315138;
    sub_10000905C(0, &qword_1006BBCB0);
    v15 = Array.debugDescription.getter();
    v17 = a1;
    v18 = sub_100005B4C(v15, v16, aBlock);

    *(v14 + 4) = v18;
    a1 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMPeopleListDataSource: locationProvider didUpdate locations %s", v14, 0xCu);
    sub_100006060(v24);
    v5 = v25;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = a1;
  aBlock[4] = sub_100535A6C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100645110;
  v21 = _Block_copy(aBlock);

  v22 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  return (*(v26 + 8))(v10, v27);
}

uint64_t sub_10005C908(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_10005BFD0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100644EA0;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;
  v18 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_10005CBC0()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10005CD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_10005F7D0(a2, v6);
  sub_10005D4E4(v6);
  return [v7 setSelected:a2 & 1];
}

void sub_10005CE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062074(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 12)
  {
    if ((EnumCaseMultiPayload - 13) < 2)
    {
LABEL_25:
      v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 15)
    {
LABEL_13:
      v8 = qword_1006AECC0;
      v9 = *(*(a2 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator) + 16);
      if (v8 != -1)
      {
        v29 = v9;
        swift_once();
        v9 = v29;
      }

      if (byte_1006D4AD1 == 1)
      {
        v10 = v9[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

        if ((v10 & 1) == 0)
        {
          v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem;
          goto LABEL_26;
        }
      }

      else
      {
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 17)
    {
LABEL_12:
      sub_10005D4E4(v6);
      return;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 12)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    sub_10005D4E4(v6);
LABEL_23:
    v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10005D4E4(v6);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = sub_10007EBC0(&qword_1006BEEE0);
  sub_10008228C(&v6[*(v12 + 48)]);
  v13 = type metadata accessor for FMIPDevice();
  (*(*(v13 - 8) + 8))(v6, v13);
LABEL_19:
  if (*(*(*(a2 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted))
  {
    v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem;
  }

LABEL_26:
  v14 = *(a2 + *v11);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_items;
    swift_beginAccess();
    v16 = *(a2 + v15);
    if (v16 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v30 = v14;

      if (!i)
      {
        break;
      }

      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        sub_10000905C(0, &qword_1006B4980);
        v22 = static NSObject.== infix(_:_:)();
        v23 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected;
        v20[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected] = v22 & 1;
        v24 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
        [*&v20[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button] setSelected:?];
        v25 = v20[v23];
        v14 = *&v20[v24];
        v26 = objc_opt_self();
        v27 = &selRef_systemBlueColor;
        if (!v25)
        {
          v27 = &selRef_labelColor;
        }

        v28 = [v26 *v27];
        [v14 setTintColor:v28];

        ++v18;
        if (v21 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_40:
  }
}

id sub_10005D1D4(void *a1)
{
  v2 = v1;
  result = [a1 state];
  if (result != 1)
  {
    if ([a1 state] == 5 || objc_msgSend(a1, "state") == 10)
    {
      v5 = 0;
      v6 = 0xE200000000000000;
      v7 = 28271;
    }

    else
    {
      v5 = 1;
      v6 = 0xE300000000000000;
      v7 = 6710895;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);

    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23[0] = v13;
      *v12 = 136315394;
      v14 = sub_100005B4C(v7, v6, v23);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = [v9 state];

      _os_log_impl(&_mh_execute_header, v10, v11, "FMConditionProvider: BT is %s (new state=%ld", v12, 0x16u);
      sub_100006060(v13);
    }

    else
    {
    }

    v15 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    result = swift_beginAccess();
    v16 = *(v2 + v15);
    if (v16 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v17 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        return result;
      }
    }

    if (v17 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(v16 + 8 * i + 32);
        }

        v22 = v21 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v22 + 8);
          ObjectType = swift_getObjectType();
          (*(v19 + 32))(v2, v5, ObjectType, v19);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_10005D4E4(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10005D540(void *a1, uint64_t a2)
{
  v209 = a1;
  v3 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v3 - 8);
  v5 = (&v198 - v4);
  v6 = type metadata accessor for FMFFriend();
  v207 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FMIPUnknownItem();
  v208 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for FMIPDevice();
  v206 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMClusterAnnotation();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    swift_unknownObjectRetain();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v209 dequeueReusableAnnotationViewWithIdentifier:v19];

    if (v20)
    {
      type metadata accessor for FMClusteredAnnotationView();
      v208 = swift_dynamicCastClass();
      if (v208)
      {
LABEL_6:
        v198 = a2;
        v211 = 0;
        v212 = 0xE000000000000000;
        v207 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations;
        v23 = *&v208[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations];
        v209 = (v23 & 0xFFFFFFFFFFFFFF8);
        if (v23 >> 62)
        {
          v24 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v206;
        v26 = v23 & 0xC000000000000001;
        v205 = 0x8000000100596BE0;
        v206 = "FMItemAnnotationView";
        v199 = (v25 + 8);
        v200 = (v25 + 16);

        v27 = 0;
        v28 = &selRef__enter3DMode;
        v204 = xmmword_100552220;
        v201 = v23 & 0xC000000000000001;
        while (1)
        {
          if (v24 == v27)
          {
            goto LABEL_27;
          }

          if (v26)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v27 >= *(v209 + 2))
            {
              __break(1u);
LABEL_72:
              type metadata accessor for FMTrackAnnotation();
              v174 = swift_dynamicCastClass();
              if (v174)
              {
                v175 = v174;
                swift_unknownObjectRetain();
                v176 = String._bridgeToObjectiveC()();
                v177 = [v209 dequeueReusableAnnotationViewWithIdentifier:v176];

                if (!v177)
                {
                  goto LABEL_76;
                }

                type metadata accessor for FMTrackAnnotationView();
                v178 = swift_dynamicCastClass();
                if (!v178)
                {

LABEL_76:
                  v179 = objc_allocWithZone(type metadata accessor for FMTrackAnnotationView());
                  swift_unknownObjectRetain();
                  v180 = String._bridgeToObjectiveC()();
                  v178 = [v179 initWithAnnotation:v175 reuseIdentifier:v180];
                  swift_unknownObjectRelease();
                }

                v61 = v178;
                [v61 setUserInteractionEnabled:{0, v198}];
LABEL_51:

LABEL_52:
                swift_unknownObjectRelease();
              }

              else
              {
                objc_opt_self();
                v193 = swift_dynamicCastObjCClass();
                if (v193)
                {
                  v194 = v193;
                  v195 = objc_allocWithZone(MKUserLocationView);
                  swift_unknownObjectRetain_n();
                  v196 = String._bridgeToObjectiveC()();
                  v197 = [v195 initWithAnnotation:v194 reuseIdentifier:v196];
                  swift_unknownObjectRelease();

                  v61 = v197;
                  [v61 setEnabled:{0, v198}];
                  goto LABEL_51;
                }

                return 0;
              }

              return v61;
            }

            v33 = *(v23 + 8 * v27 + 32);
          }

          v34 = v33;
          if (v27 > 1)
          {
            v49 = [objc_opt_self() v28[272]];
            v213._object = v205;
            v50._countAndFlagsBits = 0xD000000000000023;
            v50._object = (v206 | 0x8000000000000000);
            v213._countAndFlagsBits = 0xD000000000000035;
            v51._countAndFlagsBits = 0;
            v51._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v213);

            sub_10007EBC0(&unk_1006B20B0);
            v52 = swift_allocObject();
            *(v52 + 16) = v204;
            v53 = *&v208[v207];
            if (v53 >> 62)
            {
              v56 = _CocoaArrayWrapper.endIndex.getter();
              v55 = v56 - 2;
              if (__OFSUB__(v56, 2))
              {
LABEL_26:
                __break(1u);
LABEL_27:

                v57 = [objc_opt_self() v28[272]];
                v214._object = 0x8000000100596B30;
                v58._countAndFlagsBits = 0x4E49505F50414DLL;
                v58._object = 0xE700000000000000;
                v59._countAndFlagsBits = 0;
                v59._object = 0xE000000000000000;
                v214._countAndFlagsBits = 0xD000000000000019;
                v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v214);

                String.append(_:)(v60);

                v61 = v208;
                v62 = String._bridgeToObjectiveC()();

                [v61 setAccessibilityLabel:v62];

                goto LABEL_28;
              }
            }

            else
            {
              v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v55 = v54 - 2;
              if (__OFSUB__(v54, 2))
              {
                goto LABEL_26;
              }
            }

            *(v52 + 56) = &type metadata for Int;
            *(v52 + 64) = &protocol witness table for Int;
            *(v52 + 32) = v55;
            v29 = String.init(format:_:)();
            v31 = v30;

            v210._countAndFlagsBits = v29;
            v210._object = v31;

            v32._countAndFlagsBits = 8236;
            v32._object = 0xE200000000000000;
            String.append(_:)(v32);

            String.append(_:)(v210);
          }

          else
          {
            type metadata accessor for FMDeviceAnnotation();
            v35 = swift_dynamicCastClass();
            if (v35)
            {
              v36 = v34;
              v37 = *(v35 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
              v38 = *(*v37 + class metadata base offset for ManagedBuffer + 16);
              v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;

              os_unfair_lock_lock((v37 + v39));
              v40 = v23;
              v41 = v24;
              v43 = v202;
              v42 = v203;
              (*v200)(v202, v37 + v38, v203);
              os_unfair_lock_unlock((v37 + v39));

              v44 = FMIPDevice.name.getter();
              v46 = v45;
              v47 = v43;
              v24 = v41;
              v23 = v40;
              v26 = v201;
              v28 = &selRef__enter3DMode;
              (*v199)(v47, v42);
              v210._countAndFlagsBits = v44;
              v210._object = v46;

              v48._countAndFlagsBits = 8236;
              v48._object = 0xE200000000000000;
              String.append(_:)(v48);

              String.append(_:)(v210);

              goto LABEL_11;
            }
          }

LABEL_11:
          if (++v27 == 3)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v21 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
    swift_unknownObjectRetain();
    v22 = String._bridgeToObjectiveC()();
    v208 = [v21 initWithAnnotation:v18 reuseIdentifier:v22];
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  *&v204 = v15;
  v205 = v13;
  v200 = v5;
  v201 = v11;
  v63 = v208;
  v199 = v8;
  type metadata accessor for FMItemAnnotation();
  v64 = swift_dynamicCastClass();
  if (v64)
  {
    v65 = v64;
    v198 = a2;
    swift_unknownObjectRetain();
    v66 = String._bridgeToObjectiveC()();
    v67 = [v209 dequeueReusableAnnotationViewWithIdentifier:v66];

    v68 = v205;
    v69 = v204;
    if (v67)
    {
      type metadata accessor for FMItemAnnotationView();
      v70 = swift_dynamicCastClass();
      if (v70)
      {
LABEL_34:
        v73 = *(v65 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock);
        v74 = *(*v73 + class metadata base offset for ManagedBuffer + 16);
        v75 = (*(*v73 + 48) + 3) & 0x1FFFFFFFCLL;
        v61 = v70;

        os_unfair_lock_lock((v73 + v75));
        v68[2](v69, v73 + v74, v12);
        os_unfair_lock_unlock((v73 + v75));

        v76 = FMIPItem.name.getter();
        v78 = v77;
        (v68[1])(v69, v12);
        v211 = v76;
        v212 = v78;

        v79._countAndFlagsBits = 44;
        v79._object = 0xE100000000000000;
        String.append(_:)(v79);

        v81 = v211;
        v80 = v212;
        v82 = [objc_opt_self() mainBundle];
        v215._object = 0x8000000100596B30;
        v83._countAndFlagsBits = 0x4E49505F50414DLL;
        v83._object = 0xE700000000000000;
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        v215._countAndFlagsBits = 0xD000000000000019;
        v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v215);

        v211 = v81;
        v212 = v80;

        String.append(_:)(v85);

        v86 = String._bridgeToObjectiveC()();

        [v61 setAccessibilityLabel:v86];

        goto LABEL_52;
      }
    }

    v71 = objc_allocWithZone(type metadata accessor for FMItemAnnotationView());
    swift_unknownObjectRetain();
    v72 = String._bridgeToObjectiveC()();
    v70 = [v71 initWithAnnotation:v65 reuseIdentifier:v72];
    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  type metadata accessor for FMUnknownItemAnnotation();
  v87 = swift_dynamicCastClass();
  if (v87)
  {
    v88 = v87;
    swift_unknownObjectRetain();
    v89 = String._bridgeToObjectiveC()();
    v90 = [v209 dequeueReusableAnnotationViewWithIdentifier:v89];

    v91 = v9;
    v92 = v201;
    if (v90)
    {
      type metadata accessor for FMItemAnnotationView();
      v93 = swift_dynamicCastClass();
      if (v93)
      {
LABEL_40:
        v96 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
        swift_beginAccess();
        v63[2](v92, v88 + v96, v9);
        v61 = v93;
        v97 = v92;
        v98 = FMIPUnknownItem.name.getter();
        v100 = v99;
        (v63[1])(v97, v91);
        v210._countAndFlagsBits = v98;
        v210._object = v100;

        v101._countAndFlagsBits = 44;
        v101._object = 0xE100000000000000;
        String.append(_:)(v101);

        countAndFlagsBits = v210._countAndFlagsBits;
        object = v210._object;
        v104 = [objc_opt_self() mainBundle];
        v216._object = 0x8000000100596B30;
        v105._countAndFlagsBits = 0x4E49505F50414DLL;
        v105._object = 0xE700000000000000;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        v216._countAndFlagsBits = 0xD000000000000019;
        v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v216);

        v210._countAndFlagsBits = countAndFlagsBits;
        v210._object = object;

        String.append(_:)(v107);

        v108 = String._bridgeToObjectiveC()();

        [v61 setAccessibilityLabel:v108];

        goto LABEL_52;
      }
    }

    v94 = objc_allocWithZone(type metadata accessor for FMItemAnnotationView());
    swift_unknownObjectRetain();
    v95 = String._bridgeToObjectiveC()();
    v93 = [v94 initWithAnnotation:v88 reuseIdentifier:v95];
    swift_unknownObjectRelease();

    goto LABEL_40;
  }

  type metadata accessor for FMInfoAnnotation();
  v109 = swift_dynamicCastClass();
  if (v109)
  {
    v110 = v109;
    v111 = qword_1006AEBE0;
    swift_unknownObjectRetain();
    if (v111 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_100005B14(v112, qword_1006D4630);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v209;
    if (v115)
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "FMMapViewController: Info annotation added", v117, 2u);
    }

    v118 = String._bridgeToObjectiveC()();
    v119 = [v116 dequeueReusableAnnotationViewWithIdentifier:v118];

    if (v119)
    {
      objc_opt_self();
      v120 = swift_dynamicCastObjCClass();
      if (v120)
      {
LABEL_50:
        v123 = [objc_opt_self() systemRedColor];
        [v120 setTintColor:v123];

        v124 = String._bridgeToObjectiveC()();

        [v120 setGlyphText:v124];

        [v120 setTitleVisibility:2];
        v61 = v120;
        LODWORD(v125) = 1148846080;
        [v61 setDisplayPriority:v125];
        [v61 setUserInteractionEnabled:{0, v198}];
        goto LABEL_51;
      }
    }

    v121 = objc_allocWithZone(MKMarkerAnnotationView);
    swift_unknownObjectRetain();
    v122 = String._bridgeToObjectiveC()();
    v120 = [v121 initWithAnnotation:v110 reuseIdentifier:v122];
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

  type metadata accessor for FMDeviceAnnotation();
  v127 = swift_dynamicCastClass();
  if (v127)
  {
    v128 = v127;
    swift_unknownObjectRetain();
    v129 = String._bridgeToObjectiveC()();
    v130 = [v209 dequeueReusableAnnotationViewWithIdentifier:v129];

    if (v130)
    {
      type metadata accessor for FMDeviceAnnotationView();
      v131 = swift_dynamicCastClass();
      if (v131)
      {
LABEL_59:
        v134 = *(v128 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
        v135 = *(*v134 + class metadata base offset for ManagedBuffer + 16);
        v136 = (*(*v134 + 48) + 3) & 0x1FFFFFFFCLL;
        v61 = v131;

        os_unfair_lock_lock((v134 + v136));
        v137 = v206;
        v138 = v134 + v135;
        v139 = v202;
        v140 = v203;
        (*(v206 + 16))(v202, v138, v203);
        os_unfair_lock_unlock((v134 + v136));

        v141 = FMIPDevice.name.getter();
        v143 = v142;
        (*(v137 + 8))(v139, v140);
        v211 = v141;
        v212 = v143;

        v144._countAndFlagsBits = 44;
        v144._object = 0xE100000000000000;
        String.append(_:)(v144);

        v146 = v211;
        v145 = v212;
        v147 = [objc_opt_self() mainBundle];
        v217._object = 0x8000000100596B30;
        v148._countAndFlagsBits = 0x4E49505F50414DLL;
        v148._object = 0xE700000000000000;
        v149._countAndFlagsBits = 0;
        v149._object = 0xE000000000000000;
        v217._countAndFlagsBits = 0xD000000000000019;
        v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v148, 0, v147, v149, v217);

        v211 = v146;
        v212 = v145;

        String.append(_:)(v150);

        v151 = String._bridgeToObjectiveC()();

        [v61 setAccessibilityLabel:v151];

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v152 = type metadata accessor for Logger();
        sub_100005B14(v152, qword_1006D4630);
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&_mh_execute_header, v153, v154, "FMMapViewController: Device annotation added", v155, 2u);
        }

        swift_unknownObjectRelease();

        return v61;
      }
    }

    v132 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotationView());
    swift_unknownObjectRetain();
    v133 = String._bridgeToObjectiveC()();
    v131 = [v132 initWithAnnotation:v128 reuseIdentifier:v133];
    swift_unknownObjectRelease();

    goto LABEL_59;
  }

  type metadata accessor for FMPersonAnnotation();
  v156 = swift_dynamicCastClass();
  if (!v156)
  {
    goto LABEL_72;
  }

  v157 = v156;
  v198 = a2;
  swift_unknownObjectRetain();
  v158 = String._bridgeToObjectiveC()();
  v159 = [v209 dequeueReusableAnnotationViewWithIdentifier:v158];

  if (!v159)
  {
    goto LABEL_68;
  }

  type metadata accessor for FMPersonAnnotationView();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {

LABEL_68:
    v160 = objc_allocWithZone(type metadata accessor for FMPersonAnnotationView());
    swift_unknownObjectRetain();
    v161 = String._bridgeToObjectiveC()();
    v61 = [v160 initWithAnnotation:v157 reuseIdentifier:v161];
    swift_unknownObjectRelease();
  }

  v162 = *(v157 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personLock);
  v163 = *(*v162 + class metadata base offset for ManagedBuffer + 16);
  v164 = (*(*v162 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v162 + v164));
  v165 = v162 + v163;
  v166 = v200;
  sub_100007204(v165, v200, &qword_1006B0050);
  os_unfair_lock_unlock((v162 + v164));

  v167 = v207;
  v168 = v6;
  if ((*(v207 + 48))(v166, 1, v6) == 1)
  {
    sub_100012DF0(v166, &qword_1006B0050);
    v169 = objc_opt_self();
    v170 = v61;
    v171 = [v169 mainBundle];
    v218._object = 0x8000000100596B30;
    v172._countAndFlagsBits = 0x4E49505F50414DLL;
    v172._object = 0xE700000000000000;
    v173._countAndFlagsBits = 0;
    v173._object = 0xE000000000000000;
    v218._countAndFlagsBits = 0xD000000000000019;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v172, 0, v171, v173, v218);

    v62 = String._bridgeToObjectiveC()();

    [v170 setAccessibilityLabel:v62];

LABEL_28:
    goto LABEL_52;
  }

  v181 = v199;
  (*(v167 + 32))(v199, v166, v6);
  v182 = v61;
  v183 = v167;
  v211 = FMFFriend.name.getter();
  v212 = v184;

  v185._countAndFlagsBits = 44;
  v185._object = 0xE100000000000000;
  String.append(_:)(v185);

  v187 = v211;
  v186 = v212;
  v188 = [objc_opt_self() mainBundle];
  v219._object = 0x8000000100596B30;
  v189._countAndFlagsBits = 0x4E49505F50414DLL;
  v189._object = 0xE700000000000000;
  v190._countAndFlagsBits = 0;
  v190._object = 0xE000000000000000;
  v219._countAndFlagsBits = 0xD000000000000019;
  v191 = NSLocalizedString(_:tableName:bundle:value:comment:)(v189, 0, v188, v190, v219);

  v211 = v187;
  v212 = v186;

  String.append(_:)(v191);

  v192 = String._bridgeToObjectiveC()();

  [v182 setAccessibilityLabel:v192];
  swift_unknownObjectRelease();

  (*(v183 + 8))(v181, v168);
  return v61;
}

void sub_10005ED98(void *a1, void (*a2)(id), uint64_t a3, double a4)
{
  v74 = a3;
  v75 = a2;
  v77 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v71 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v70 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  v18 = type metadata accessor for FMFConfigValue();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v4;
  v22 = *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  if (![v22 userTrackingMode])
  {
    v62 = v21;
    v63 = v19;
    v64 = v15;
    v65 = v17;
    v69 = v12;
    v66 = v11;
    v67 = v8;
    v68 = v9;
    v23 = v75;
    v24 = [v22 camera];
    [v24 centerCoordinate];
    v26 = v25;
    v28 = v27;

    v85.latitude = v26;
    v85.longitude = v28;
    v29 = MKMapPointForCoordinate(v85);
    v30 = v77;
    [v77 centerCoordinate];
    v87 = MKMapPointForCoordinate(v86);
    v31 = MKMetersBetweenMapPoints(v29, v87);
    v34 = v76;
    p_vtable = (_TtC6FindMy22FMCameraAccessDetector + 24);
    if (v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAnimationEnabled] == 1 && (HIDWORD(v36) = 1091070464, v31 < 200000.0))
    {
      v37 = v23;
      if (v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation] == 1 && *(*&v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource] + 57) == 1 && v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] == 1)
      {
        v38 = v30;
        p_aBlock = &v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration];
        if (v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration + 8] == 1)
        {
          v40 = v63;
          v41 = v62;
          (*(v63 + 104))(v62, enum case for FMFConfigValue.liveAnimationInterval(_:), v18);
          v78 = 0x4000000000000000;
          p_aBlock = &aBlock;
          FMFGlobalConfig<A>(_:fallback:)();
          (*(v40 + 8))(v41, v18);
        }

        v42 = *p_aBlock;
        v43 = objc_opt_self();
        v44 = swift_allocObject();
        *(v44 + 16) = v34;
        *(v44 + 24) = v38;
        v83 = sub_100406E30;
        v84 = v44;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_100004AE4;
        v82 = &unk_10063D478;
        v45 = _Block_copy(&aBlock);
        v46 = v34;
        v47 = v38;

        v48 = swift_allocObject();
        v49 = v74;
        *(v48 + 16) = v37;
        *(v48 + 24) = v49;
        v83 = sub_100406E54;
        v84 = v48;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_10037A044;
        v82 = &unk_10063D4C8;
        v50 = _Block_copy(&aBlock);
        sub_100062900(v37);

        [v43 animateWithDuration:196614 delay:v45 options:v50 animations:v42 completion:0.0];
        _Block_release(v50);
        _Block_release(v45);
      }

      else
      {
        v76[OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation] = 0;
        LODWORD(v32) = 1128792064;
        LODWORD(v33) = 1120403456;
        LODWORD(v36) = 1.0;
        [v22 setCamera:v30 duration:a4 springMass:v36 springStiffness:v32 springDamping:v33 springVelocity:0.0];
        v52 = 0;
        if (*(*&v34[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource] + 57) == 1)
        {
          v52 = v34[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] == 1;
        }

        sub_10000905C(0, &qword_1006AEDC0);
        v53 = static OS_dispatch_queue.main.getter();
        v54 = v64;
        static DispatchTime.now()();
        v55 = v65;
        + infix(_:_:)();
        v77 = *(v70 + 8);
        (v77)(v54, v69);
        v56 = swift_allocObject();
        *(v56 + 16) = v52;
        *(v56 + 24) = v34;
        *(v56 + 32) = v37;
        *(v56 + 40) = v74;
        v83 = sub_100406DE0;
        v84 = v56;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_100004AE4;
        v82 = &unk_10063D428;
        v57 = _Block_copy(&aBlock);
        v58 = v34;
        sub_100062900(v37);

        v59 = v66;
        static DispatchQoS.unspecified.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        v60 = v67;
        v61 = v73;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v57);

        (*(v72 + 8))(v60, v61);
        (*(v71 + 8))(v59, v68);
        (v77)(v55, v69);
      }

      p_vtable = _TtC6FindMy22FMCameraAccessDetector.vtable;
    }

    else
    {
      v51 = [v22 setCamera:v30 animated:{0, v31}];
      if (v23)
      {
        v23(v51);
      }
    }

    v34[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] = *(*(p_vtable[436] + v34) + 56);
  }
}

uint64_t sub_10005F5FC()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005F644()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F684()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005F6C4(char a1)
{
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
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMapViewController: canEnter3DModeDidChange: %{BOOL,public}d", v5, 8u);
  }

  sub_10001ED48(1);
}

uint64_t sub_10005F7D0(uint64_t a1, char *a2)
{
  v147 = a1;
  v148 = a2;
  v2 = type metadata accessor for FMIPUnknownItem();
  v141 = *(v2 - 8);
  v142 = v2;
  v3 = __chkstk_darwin(v2);
  v131 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v130 = &v122 - v5;
  v6 = type metadata accessor for FMIPItem();
  v143 = *(v6 - 8);
  v144 = v6;
  v7 = __chkstk_darwin(v6);
  v139 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v122 - v9;
  v10 = type metadata accessor for FMFFriend();
  v137 = *(v10 - 8);
  v138 = v10;
  v11 = __chkstk_darwin(v10);
  v129 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v128 = &v122 - v13;
  v14 = type metadata accessor for FMIPDevice();
  v145 = *(v14 - 8);
  v146 = v14;
  v15 = __chkstk_darwin(v14);
  v135 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v122 - v17;
  v125 = sub_10007EBC0(&qword_1006BEEE0);
  v18 = __chkstk_darwin(v125);
  v126 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v127 = &v122 - v21;
  v22 = __chkstk_darwin(v20);
  v124 = &v122 - v23;
  __chkstk_darwin(v22);
  v123 = &v122 - v24;
  v25 = type metadata accessor for FMSelectedSection();
  v26 = __chkstk_darwin(v25);
  v134 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v133 = &v122 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v122 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v122 - v34;
  v36 = __chkstk_darwin(v33);
  v132 = &v122 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v122 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v122 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v122 - v45;
  __chkstk_darwin(v44);
  v48 = &v122 - v47;
  v49 = sub_10007EBC0(&qword_1006B7A88);
  v50 = __chkstk_darwin(v49 - 8);
  v52 = &v122 - v51;
  v53 = &v122 + *(v50 + 56) - v51;
  sub_100027A40(v147, &v122 - v51, type metadata accessor for FMSelectedSection);
  v54 = v148;
  v148 = v53;
  sub_100027A40(v54, v53, type metadata accessor for FMSelectedSection);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100027A40(v52, v46, type metadata accessor for FMSelectedSection);
      v75 = v148;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v145;
        v76 = v146;
        v78 = *(v145 + 32);
        v79 = v136;
        v78(v136, v46, v146);
        v80 = v135;
        v78(v135, v75, v76);
        v64 = static FMIPDevice.== infix(_:_:)();
        v81 = *(v77 + 8);
        v81(v80, v76);
        v81(v79, v76);
        goto LABEL_40;
      }

      (*(v145 + 8))(v46, v146);
      goto LABEL_52;
    case 2u:
      sub_100027A40(v52, v43, type metadata accessor for FMSelectedSection);
      v82 = v148;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v84 = v137;
        v83 = v138;
        v85 = *(v137 + 32);
        v86 = v128;
        v85(v128, v43, v138);
        v87 = v129;
        v85(v129, v82, v83);
        v64 = static FMFFriend.== infix(_:_:)();
        v88 = *(v84 + 8);
        v88(v87, v83);
        v88(v86, v83);
        goto LABEL_40;
      }

      (*(v137 + 8))(v43, v138);
      goto LABEL_52;
    case 3u:
      sub_100027A40(v52, v40, type metadata accessor for FMSelectedSection);
      v56 = v148;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v57 = v143;
        v58 = v56;
        v59 = *(v143 + 32);
        v60 = v140;
        v61 = v40;
        v62 = v144;
        v59(v140, v61, v144);
        v63 = v139;
        v59(v139, v58, v62);
        v64 = static FMIPItem.== infix(_:_:)();
        v65 = *(v57 + 8);
        v65(v63, v62);
        v65(v60, v62);
        goto LABEL_40;
      }

      (*(v143 + 8))(v40, v144);
      goto LABEL_52;
    case 4u:
      v66 = v132;
      sub_100027A40(v52, v132, type metadata accessor for FMSelectedSection);
      v92 = v148;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v93 = v143;
        v94 = *(v143 + 32);
        v95 = v140;
        v96 = v66;
        v97 = v144;
        v94(v140, v96, v144);
        v98 = v139;
        v94(v139, v92, v97);
        v99 = static FMIPItem.== infix(_:_:)();
        goto LABEL_39;
      }

      v109 = v143;
      v108 = v144;
      goto LABEL_49;
    case 5u:
      sub_100027A40(v52, v35, type metadata accessor for FMSelectedSection);
      v100 = *v35;
      sub_100091880(*(v35 + 1), *(v35 + 2));
      v101 = v148;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_47;
      }

      v102 = *v101;
      sub_100091880(*(v101 + 1), *(v101 + 2));
      v64 = sub_100244968(v100, v102);

      goto LABEL_32;
    case 6u:
      sub_100027A40(v52, v32, type metadata accessor for FMSelectedSection);
      v89 = *v32;
      sub_100091880(*(v32 + 1), *(v32 + 2));
      v90 = v148;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_47:

        goto LABEL_52;
      }

      v91 = *v90;
      sub_100091880(*(v90 + 1), *(v90 + 2));
      v64 = sub_100244968(v89, v91);

LABEL_32:

      goto LABEL_40;
    case 7u:
      v103 = v134;
      sub_100027A40(v52, v134, type metadata accessor for FMSelectedSection);
      v104 = v148;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v145 + 8))(v103, v146);
        goto LABEL_52;
      }

      v93 = v145;
      v105 = *(v145 + 32);
      v95 = v136;
      v106 = v103;
      v97 = v146;
      v105(v136, v106, v146);
      v98 = v135;
      v105(v135, v104, v97);
      v99 = static FMIPDevice.== infix(_:_:)();
LABEL_39:
      v64 = v99;
      v107 = *(v93 + 8);
      v107(v98, v97);
      v107(v95, v97);
      goto LABEL_40;
    case 8u:
      v66 = v133;
      sub_100027A40(v52, v133, type metadata accessor for FMSelectedSection);
      v67 = v148;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v109 = v141;
        v108 = v142;
LABEL_49:
        (*(v109 + 8))(v66, v108);
        goto LABEL_52;
      }

      v68 = v141;
      v69 = *(v141 + 32);
      v70 = v130;
      v71 = v66;
      v72 = v142;
      v69(v130, v71, v142);
      v73 = v131;
      v69(v131, v67, v72);
      v64 = static FMIPUnknownItem.== infix(_:_:)();
      v74 = *(v68 + 8);
      v74(v73, v72);
      v74(v70, v72);
LABEL_40:
      sub_100029F80(v52, type metadata accessor for FMSelectedSection);
      break;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xAu:
      goto LABEL_52;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_52;
      }

LABEL_42:
      sub_100029F80(v52, type metadata accessor for FMSelectedSection);
      v64 = 1;
      return v64 & 1;
    default:
      sub_100027A40(v52, v48, type metadata accessor for FMSelectedSection);
      v55 = v148;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100012DF0(v48, &qword_1006BEEE0);
LABEL_52:
        sub_100012DF0(v52, &qword_1006B7A88);
        v64 = 0;
      }

      else
      {
        v111 = v123;
        sub_100245A38(v48, v123);
        v112 = v124;
        sub_100245A38(v55, v124);
        v113 = v127;
        sub_100007204(v111, v127, &qword_1006BEEE0);
        v114 = v125;
        v115 = *(v125 + 48);
        v116 = v126;
        sub_100007204(v112, v126, &qword_1006BEEE0);
        v117 = v52;
        v118 = *(v114 + 48);
        v64 = sub_100243B84(v113, v113 + v115, v116, v116 + v118);
        sub_100012DF0(v112, &qword_1006BEEE0);
        sub_100012DF0(v111, &qword_1006BEEE0);
        sub_100012DF0(v116 + v118, &qword_1006B07D0);
        v119 = *(v145 + 8);
        v120 = v116;
        v121 = v146;
        v119(v120, v146);
        sub_100012DF0(v113 + v115, &qword_1006B07D0);
        v119(v113, v121);
        sub_100029F80(v117, type metadata accessor for FMSelectedSection);
      }

      break;
  }

  return v64 & 1;
}

id sub_10006063C(void *a1, unsigned __int8 a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for _Glass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10 == 2)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    UIView._background.setter();
    goto LABEL_11;
  }

  if (![a3 isHidden])
  {
LABEL_11:

    return [a1 layoutIfNeeded];
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  *(&v18 + 1) = v12;
  v19 = &protocol witness table for _Glass;
  sub_100008FC0(&v17);
  _Glass.flexible(_:)();
  (*(v13 + 8))(v15, v12);
  UIView._background.setter();
  if ((a2 == 0) != [a4 isHidden])
  {
    [a4 setHidden:a2 == 0];
  }

  if ((((a2 == 0) ^ [a5 isHidden]) & 1) == 0)
  {
    [a5 setHidden:a2 != 0];
  }

  return [a1 layoutIfNeeded];
}

id sub_1000608E0(void *a1, char a2, id a3, void *a4, void *a5)
{
  if (a2 == 2)
  {
    [a3 setAlpha:0.0];
    if (([a3 isHidden] & 1) == 0)
    {
      [a3 setHidden:1];
    }
  }

  else
  {
    [a3 setAlpha:1.0];
    if ([a3 isHidden])
    {
      [a3 setHidden:0];
    }

    if ((a2 == 0) != [a4 isHidden])
    {
      [a4 setHidden:a2 == 0];
    }

    if ((a2 == 1) != [a5 isHidden])
    {
      [a5 setHidden:a2 == 1];
    }
  }

  return [a1 layoutIfNeeded];
}

void sub_100060A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  sub_100062074(a1, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v16 = 0;
    v17 = 0xE000000000000000;
    v18 = v11;
    _print_unlocked<A, B>(_:_:)();
    v12 = v16;
    v13 = v17;
    sub_10005D4E4(v6);
    v14 = sub_100005B4C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMStatusBar: selection changed %s", v10, 0xCu);
    sub_100006060(v11);
  }

  else
  {

    sub_10005D4E4(v6);
  }

  if ((*(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_initialState) & 1) == 0 && *(*(*(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) == 1)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = 3;
    sub_10033B9C0();
  }
}

void sub_100060CA0(void *a1)
{
  v3 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = [a1 subviews];
  sub_10000905C(0, &qword_1006BA410);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 gestureRecognizers];

  if (!v10)
  {
    return;
  }

  sub_10000905C(0, &qword_1006B0A00);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_26:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
LABEL_9:
    if (v11 < 1)
    {
      __break(1u);
      return;
    }

    v12 = 0;
    v19 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled;
    v20 = OBJC_IVAR____TtC6FindMy19FMMapViewController_statusBar;
    v13 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v7 + 8 * v12 + 32);
      }

      v16 = v15;
      if ([v15 state] == 1)
      {
      }

      else
      {
        v17 = [v16 state];

        if (v17 != 3)
        {
          goto LABEL_13;
        }
      }

      *(*(v1 + v20) + OBJC_IVAR____TtC6FindMy11FMStatusBar_userDidInteractWithMap) = 1;
      *(v1 + v19) = 0;
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      swift_beginAccess();
      sub_10040682C(v5, v1 + v13);
      swift_endAccess();
LABEL_13:
      if (v11 == ++v12)
      {

        return;
      }
    }
  }

LABEL_27:
}

uint64_t sub_100061010(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMSelectedSection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  sub_100062074(v19, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_10005B574(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = sub_100062140;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637570;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v20);
}

uint64_t sub_100061350()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_10006163C()
{
  result = type metadata accessor for Date();
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

uint64_t type metadata accessor for FMTrackAnnotation()
{
  result = qword_1006BF8C8;
  if (!qword_1006BF8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061728()
{
  result = type metadata accessor for FMIPUnknownItem();
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

uint64_t type metadata accessor for FMUnknownItemAnnotation()
{
  result = qword_1006BCB10;
  if (!qword_1006BCB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061944(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMSelectedSection();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v7;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMMapOptionView: Update section selection", v15, 2u);
    v7 = v23;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v16 = static OS_dispatch_queue.main.getter();
  sub_100062074(a1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v24;
  sub_10005B574(v11, v18 + v17);
  aBlock[4] = sub_1000622F4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633F68;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A0C0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v25);
}

uint64_t sub_100061D90()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100062140()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100060A40(v0 + v2, v3);
}

uint64_t sub_1000621CC()
{
  result = type metadata accessor for FMIPUnknownItem();
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

id sub_1000622F4()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10005CD48(v2, v3);
}

void sub_100062358()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10005CE08(v0 + v2, v3);
}

uint64_t type metadata accessor for FMInfoAnnotation()
{
  result = qword_1006B5558;
  if (!qword_1006B5558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100062474(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
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

void *sub_100062518(void *result, int64_t a2, char a3, void *a4)
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
    sub_10007EBC0(&unk_1006AF8B0);
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
    sub_10007EBC0(&qword_1006B4140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10006264C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000627A8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10007EBC0(&qword_1006B4140);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100401084(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_1000627BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10007EBC0(&unk_1006AF8B0);
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
    sub_10007EBC0(&qword_1006B4140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100062900(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100062910(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006AF740);
  v5 = __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  sub_100007204(a1, v9, &qword_1006AF740);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    sub_100007204(v9, v7, &qword_1006AF740);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100012DF0(v9, &qword_1006AF740);
    v18 = sub_100005B4C(v15, v17, &v29);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleProvider: my location changed: %s", v13, 0xCu);
    sub_100006060(v14);
  }

  else
  {

    sub_100012DF0(v9, &qword_1006AF740);
  }

  v19 = *(v2 + 32);

  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);

  os_unfair_lock_unlock((v19 + 24));

  if (!(v20 >> 62))
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = result;
  if (!result)
  {
  }

LABEL_8:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v20 + 8 * i + 32);
      }

      v27 = v26 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v27 + 8);
        ObjectType = swift_getObjectType();
        (*(v24 + 48))(v2, a1, ObjectType, v24);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100062C80(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006AF740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  sub_100007204(a1, v14, &qword_1006AF740);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v35 = v7;
    v36 = a1;
    v37 = v3;
    v38 = v2;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v18 = 136315138;
    sub_100007204(v14, v12, &qword_1006AF740);
    v19 = type metadata accessor for FMFLocation();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v12, 1, v19) == 1)
    {
      sub_100012DF0(v12, &qword_1006AF740);
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      v21 = FMFLocation.debugDescription.getter();
      v22 = v23;
      (*(v20 + 8))(v12, v19);
    }

    v3 = v37;
    sub_100012DF0(v14, &qword_1006AF740);
    v24 = sub_100005B4C(v21, v22, aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMMapViewDataSource: didUpdate myLocation %s", v18, 0xCu);
    sub_100006060(v34);

    v2 = v38;
    v7 = v35;
    a1 = v36;
  }

  else
  {

    sub_100012DF0(v14, &qword_1006AF740);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = v39;
  sub_100007204(a1, v39, &qword_1006AF740);
  v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v40;
  sub_100035318(v26, v28 + v27, &qword_1006AF740);
  aBlock[4] = sub_1004D1288;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642118;
  v29 = _Block_copy(aBlock);

  v30 = v41;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v3 + 8))(v31, v2);
  return (*(v42 + 8))(v30, v44);
}

uint64_t sub_1000632D4()
{
  v1 = *(sub_10007EBC0(&qword_1006AF740) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for FMFLocation();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100063420(uint64_t a1, int a2)
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

uint64_t sub_100063440(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FMDeviceEditableMessageViewStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMDeviceEditableMessageViewStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1000634C8(void *a1, uint64_t *a2)
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

void *sub_10006353C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10006357C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1000635D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1000635FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000636E8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063748()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063788()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000637C0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000637F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063830()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000638B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000638F4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100063990()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000639E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063A2C()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10007EBC0(&qword_1006B0050) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_100063C00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063C40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063C7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063D2C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100063DCC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B04D8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for FMFActionURLInfo();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100063F70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063FB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063FF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006403C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000640B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000640F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064134()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006416C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000641F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064230()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064268()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000642A0()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064378()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100064478()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 34) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064558()
{
  v12 = type metadata accessor for FMIPItemActionStatus();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v11 = v2 | v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v9 + 8, v11 | 7);
}

uint64_t sub_100064700()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064860()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000648FC()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1000649C8()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100064B30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064C20()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100064CE8()
{
  v1 = type metadata accessor for FMIPBeaconShare();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064DAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064DEC()
{
  v1 = *(sub_10007EBC0(&qword_1006B1310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for FMIPURLInfo();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100064F3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PeopleListPersonRow.State();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 128);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100065060(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PeopleListPersonRow.State();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 128);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100065194(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10007EBC0(&unk_1006B0000);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = type metadata accessor for FMIPProductType();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_10006530C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10007EBC0(&unk_1006B0000);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = type metadata accessor for FMIPProductType();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100065488()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000654C0()
{
  v1 = *(sub_10007EBC0(&qword_1006B0050) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100065600()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065638()
{
  v1 = type metadata accessor for FMFActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100065714()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100065760()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000657D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006580C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006584C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065884()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000658BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000658F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006592C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100065964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000659A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000659E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065A1C()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_100065B10()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_100065C0C()
{
  v1 = type metadata accessor for FMItemDetailViewModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v13 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v1[12];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[13];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[15];
  v11 = type metadata accessor for FMIPProductType();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return _swift_deallocObject(v0, v3 + v13, v2 | 7);
}

uint64_t sub_100065E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100065F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100066064()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006609C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000660D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006610C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006617C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000661B4()
{
  v1 = *(sub_10007EBC0(&qword_1006B2B68) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = type metadata accessor for FMPendingInfo();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 20);
    v8 = type metadata accessor for FMSelectionPendingAction(0);
    if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() <= 1)
    {
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 8))(v5 + v7, v9);
    }
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_100066368()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    sub_100006060(v0 + v5);
  }

  return _swift_deallocObject(v0, v5 + 32, v3 | 7);
}

uint64_t sub_10006644C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10007EBC0(&unk_1006B8DD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_100066514(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10007EBC0(&unk_1006B8DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000665FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066634()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10006669C()
{

  return _swift_deallocObject(v0, 40, 7);
}