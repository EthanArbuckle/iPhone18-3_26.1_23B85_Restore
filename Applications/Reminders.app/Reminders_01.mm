uint64_t sub_10001CA00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CA38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001CA70()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001CAB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CAF8()
{
  v1[5] = v0;
  sub_100058000(&qword_1007757F0);
  v1[6] = swift_task_alloc();
  sub_100058000(&qword_10076BE10);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_10001DA1C, v3, v2);
}

uint64_t type metadata accessor for TTRIAccountsListsViewUpdates()
{
  result = qword_10078D240;
  if (!qword_10078D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CC50()
{
  sub_10001CD4C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_10001CD4C()
{
  if (!qword_10078D250)
  {
    type metadata accessor for TTRAccountsListsViewModel.Item();
    v0 = type metadata accessor for TTRTreeViewUpdates();
    if (!v1)
    {
      atomic_store(v0, &qword_10078D250);
    }
  }
}

uint64_t sub_10001CDA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v27 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315138;
    v15 = [v9 session];
    v26 = v9;
    v16 = v15;
    v17 = [v15 persistentIdentifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100004060(v18, v20, v28);

    *(v13 + 4) = v21;
    v9 = v26;
    _os_log_impl(&_mh_execute_header, v10, v11, "sceneDidBecomeActive {scene: %s}", v13, 0xCu);
    sub_100004758(v14);

    v2 = v27;
  }

  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  (*(v5 + 104))(v7, enum case for REMAnalyticsEvent.appBecameActive(_:), v4);
  REMAnalyticsManager.post(event:)();

  (*(v5 + 8))(v7, v4);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = OBJC_IVAR___TTRIWindowSceneController_rootModuleInterface;
      swift_beginAccess();
      sub_10000794C(v2 + v23, v28, &qword_10077EBB0);
      if (v29)
      {
        sub_10000C36C(v28, v29);
        v24 = v9;
        sub_10001D1B4();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v25 = zalgo.getter();
        dispatch thunk of Promise.then<A>(on:closure:)();

        swift_unknownObjectRelease();

        return sub_100004758(v28);
      }

      else
      {
        swift_unknownObjectRelease();
        return sub_1000079B4(v28, &qword_10077EBB0);
      }
    }
  }

  return result;
}

uint64_t sub_10001D17C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D1B4()
{
  v1 = *(*sub_10000C36C((v0 + 48), *(v0 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_10077FDB0);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10001D318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D354()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];

  v3 = [v2 horizontalSizeClass];
  if (v3 != 1)
  {
    return 2;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([v4 isCollapsed])
  {
    v6 = [*&v5[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController] viewControllers];
    sub_100003540(0, &qword_10076AD28);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = *&v5[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController];
    __chkstk_darwin(v8);
    v10[2] = &v11;
    LOBYTE(v6) = sub_10000C158(sub_10001D5DC, v10, v7);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

void sub_10001D538(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  [v9 *a5];
}

uint64_t sub_10001D694(unint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, void (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  a2(0);
  while (1)
  {
    sub_10001DE0C(a3, a4);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v11 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      a2 = v12;
      v13 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v12);

      ++v11;
      if (v13 == a3)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v14 = a2;
    _CocoaArrayWrapper.endIndex.getter();
    v14(0);
  }

  a4 = result;
  a3 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

void *sub_10001D7FC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v7 = &v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm];
  if (!*&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm + 8])
  {
    goto LABEL_9;
  }

  v8 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  result = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (result)
  {
    v10 = [result searchBar];
    if (*(v7 + 1))
    {

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    [v10 setText:v11];

    *v7 = 0;
    *(v7 + 1) = 0;

    result = *&v1[v8];
    if (result)
    {
      v12 = [result searchBar];
      v13 = [v12 text];

      if (v13)
      {

        sub_100058000(&qword_10076B7B8);
        v14 = swift_allocBox();
        sub_10055A0F4(v15);
        *v6 = v14;
        swift_storeEnumTagMultiPayload();
        sub_10055DF60(v6, 4, 0);
        sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
      }

LABEL_9:

      TTRModuleState.viewDidAppear()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001DA1C()
{
  *(v0 + 96) = *(*(v0 + 40) + 104);
  if (sub_10001DE54())
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    static TTRLocalizableStrings.PrivacyAlert.enableICloudSyncingTitle.getter();
    static TTRLocalizableStrings.PrivacyAlert.enableICloudSyncingMessage.getter();
    v3 = String._bridgeToObjectiveC()();

    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];
    *(v0 + 104) = v5;

    sub_100058000(&qword_10076B260);
    sub_100058000(&unk_100775890);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10062D3F0;
    static TTRLocalizableStrings.PrivacyAlert.settingsButtonTitle.getter();
    *(v0 + 128) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.notNowButton.getter();
    *(v0 + 129) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v1, 0, 1, v7);

    v8 = v5;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v2;
    v10[5] = v8;
    v10[6] = v6;
    v11 = sub_10009E914(0, 0, v1, &unk_10063BED8, v10);
    *(v0 + 112) = v11;
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    v13 = sub_100058000(&qword_10076B298);
    *v12 = v0;
    v12[1] = sub_100340F20;

    return Task<>.value.getter(v0 + 130, v11, v13);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10001DD74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001DDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DE0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DE54()
{
  if (*(v0 + 24) == 1 && !sub_1004221D8())
  {
    v1 = sub_10042254C() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1007672D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782DB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRICloudIsOffProvider: check should show {result: %{BOOL}d}", v5, 8u);
  }

  return v1 & 1;
}

unint64_t sub_10001DF64()
{
  result = qword_10076BA50;
  if (!qword_10076BA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BA50);
  }

  return result;
}

uint64_t sub_10001DFB0(void *a1, void *a2)
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

      sub_100003540(0, &qword_10076BA50);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1005943A0(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100591D28(v20 + 1, &qword_100782428);
    }

    v18 = v8;
    sub_1005949E0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100003540(0, &qword_10076BA50);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10001E2D4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10001E1F8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782DB8);
  v1 = sub_100003E30(v0, qword_100782DB8);
  if (qword_100767278 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001E2D4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100591D28(v6 + 1, &qword_100782428);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10058E068(&qword_100782428);
      goto LABEL_12;
    }

    sub_10058F09C(v6 + 1, &qword_100782428);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100003540(0, &qword_10076BA50);
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

void sub_10001E474(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1000E95E0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_100003540(0, &qword_10076BA50);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_10001E6EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E8F0, v1, v0);
}

uint64_t sub_10001E828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders32PerWindowLastSelectedListStorage_lastSelectedListInWindow;
  swift_beginAccess();
  return sub_10000794C(v1 + v3, a1, &unk_100775640);
}

uint64_t sub_10001E8F4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001EFA4;

  return sub_10001E9A0();
}

uint64_t sub_10001E9A0()
{
  v1[6] = v0;
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10001EA38, v3, v2);
}

uint64_t sub_10001EA38()
{
  v1 = v0[6];
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 96);
    v0[10] = v2;
    v0[2] = v2;
    v3 = *(v1 + 32);
    v0[11] = v3;
    v4 = *(v1 + 40);
    v0[12] = swift_getObjectType();
    v0[3] = v3;
    v0[13] = *(v4 + 8);
    swift_retain_n();
    v5 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    v0[14] = v5;
    v6 = swift_task_alloc();
    v0[15] = v6;
    v7 = type metadata accessor for TTRIPrivacyChecker();
    v0[16] = v7;
    *v6 = v0;
    v6[1] = sub_10034119C;

    return TTRPrivacyChecker.checkAndPromptAccessForRemindersWithDueDate(with:)(v5, v7, &protocol witness table for TTRIPrivacyChecker);
  }

  else
  {

    if (qword_100767210 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10077FC40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "TTRIRootPresenter: skipping permission prompts", v11, 2u);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10001ECA4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077FC40);
  v1 = sub_100003E30(v0, qword_10077FC40);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10001ED6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_10003988C(v31, v32);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

_OWORD *assignWithTake for TTRIAccountsListsPresentationTree(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t sub_10001EFA4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E828, v1, v0);
}

uint64_t sub_10001F0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F128(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001F170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_10001F230(uint64_t (*a1)(void, unint64_t, void))
{
  v3 = *(type metadata accessor for REMNavigationSpecifier() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return a1(*(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10001F2DC(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v152 = a7;
  v151 = a6;
  v150 = a5;
  v149 = a4;
  v157 = a2;
  v144 = a1;
  v154 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration();
  v158 = *(v8 - 8);
  v159 = v8;
  v9 = __chkstk_darwin(v8);
  v137 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v147 = &v132 - v11;
  v162 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v160 = *(v162 - 8);
  v12 = __chkstk_darwin(v162);
  v136 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v148 = &v132 - v15;
  __chkstk_darwin(v14);
  v161 = &v132 - v16;
  v17 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v17 - 8);
  v19 = &v132 - v18;
  v142 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v141 = *(v142 - 8);
  v20 = __chkstk_darwin(v142);
  v140 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v139 = &v132 - v22;
  v23 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v23 - 8);
  v25 = &v132 - v24;
  v146 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v27 = *(v163 - 8);
  v28 = __chkstk_darwin(v163);
  v138 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v135 = &v132 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v132 - v33;
  v35 = __chkstk_darwin(v32);
  v156 = &v132 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v132 - v38;
  __chkstk_darwin(v37);
  v41 = &v132 - v40;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v44 = v41;
    v45 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_listAppearance;
    swift_beginAccess();
    v46 = &v43[v45];
    v41 = v44;
    v47 = v163;
    (*(v27 + 16))(v39, v46, v163);

    (*(v27 + 32))(v44, v39, v47);
  }

  else
  {
    (*(v27 + 104))(v41, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v163);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_12;
  }

  v49 = result;
  v50 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
  v51 = *(result + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (!v51)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v52 = v51;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  v53 = v145;
  v54 = v146;
  if ((*(v145 + 48))(v25, 1, v146) == 1)
  {

    v55 = &qword_10076B8B0;
    v56 = v25;
LABEL_11:
    sub_1000079B4(v56, v55);
LABEL_12:
    v62 = v160;
    v63 = v161;
    v64 = v162;
    (*(v160 + 104))(v161, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v162);
    v65 = v41;
    v66 = *(v27 + 16);
    v67 = v156;
    v68 = v163;
    v66(v156, v65, v163);
    v66(v34, v67, v68);
    v69 = v147;
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v153 + 104))(v155, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v154);
    UICollectionLayoutListConfiguration.footerMode.setter();
    (*(v62 + 16))(v148, v63, v64);
    UICollectionLayoutListConfiguration.headerMode.setter();

    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();

    UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
    sub_100003540(0, &qword_10078A4E0);
    v70 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    (*(v158 + 8))(v69, v159);
    v71 = *(v27 + 8);
    v71(v67, v68);
    (*(v62 + 8))(v63, v64);
    v71(v65, v68);
    return v70;
  }

  v57 = v143;
  result = (*(v53 + 32))(v143, v25, v54);
  v58 = *&v49[v50];
  if (!v58)
  {
    goto LABEL_55;
  }

  v59 = v58;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

  v60 = v141;
  v61 = v142;
  if ((*(v141 + 48))(v19, 1, v142) == 1)
  {
    (*(v145 + 8))(v57, v146);

    v55 = &unk_100771B40;
    v56 = v19;
    goto LABEL_11;
  }

  v72 = v139;
  (*(v60 + 32))(v139, v19, v61);
  v73 = v140;
  (*(v60 + 16))(v140, v72, v61);
  result = (*(v60 + 88))(v73, v61);
  v134 = v41;
  v133 = v49;
  if (result == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v60 + 96))(v73, v61);
    v74 = v160;
    v75 = v161;
    (*(v160 + 104))(v161, enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:), v162);
    v76 = v41;
    v77 = *(v27 + 16);
    v78 = v156;
    v79 = v163;
    v77(v156, v76, v163);
    v77(v34, v78, v79);
    v80 = v147;
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v153 + 104))(v155, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v154);
    UICollectionLayoutListConfiguration.footerMode.setter();
    v81 = v75;
    v82 = v162;
    (*(v74 + 16))(v148, v81, v162);
    UICollectionLayoutListConfiguration.headerMode.setter();

    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();

    UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
    sub_100003540(0, &qword_10078A4E0);
    v70 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();

    (*(v158 + 8))(v80, v159);
    v83 = *(v27 + 8);
    v83(v78, v79);
    (*(v74 + 8))(v161, v82);
    (*(v141 + 8))(v72, v142);
    (*(v145 + 8))(v143, v146);
    v83(v134, v79);
    v84 = type metadata accessor for UUID();
    (*(*(v84 - 8) + 8))(v140, v84);
    return v70;
  }

  if (result != enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    if (result != enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) && result != enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) && result != enum case for TTRAccountsListsViewModel.Item.account(_:) && result != enum case for TTRAccountsListsViewModel.Item.list(_:) && result != enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) && result != enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      if (result == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
      {
        LODWORD(v152) = enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
        v151 = *(v27 + 104);
        v90 = v135;
        v91 = v163;
        v151(v135);
        v92 = v160;
        v93 = v136;
        v94 = v162;
        (*(v160 + 104))(v136, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v162);
        v95 = v41;
        v96 = *(v27 + 16);
        v96(v138, v95, v91);
        v97 = v156;
        v96(v156, v90, v91);
        UICollectionLayoutListConfiguration.init(appearance:)();
        (*(v153 + 104))(v155, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v154);
        UICollectionLayoutListConfiguration.footerMode.setter();
        (*(v92 + 16))(v161, v93, v94);
        UICollectionLayoutListConfiguration.headerMode.setter();
        (v151)(v97, v152, v91);
        sub_100014F04(&unk_10078D500, &type metadata accessor for UICollectionLayoutListConfiguration.Appearance);
        LOBYTE(v90) = dispatch thunk of static Equatable.== infix(_:_:)();
        v98 = *(v27 + 8);
        v98(v97, v91);
        if ((v90 & 1) == 0)
        {
          v125 = [objc_opt_self() clearColor];
        }

        v126 = v139;
        v127 = v137;
        UICollectionLayoutListConfiguration.backgroundColor.setter();
        sub_100003540(0, &qword_10078A4E0);
        v70 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
        v128 = v163;
        v98(v138, v163);

        (*(v158 + 8))(v127, v159);
        (*(v92 + 8))(v136, v162);
        v98(v135, v128);
        v129 = *(v141 + 8);
        v130 = v126;
        v131 = v142;
        v129(v130, v142);
        (*(v145 + 8))(v143, v146);
        v98(v134, v128);
        v129(v140, v131);
        return v70;
      }

      if (result != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) && result != enum case for TTRAccountsListsViewModel.Item.tipSection(_:) && result != enum case for TTRAccountsListsViewModel.Item.tip(_:) && result != enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) && result != enum case for TTRAccountsListsViewModel.Item.hashtags(_:) && result != enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
        v114 = v41;
        if (result == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || result == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
        {
          goto LABEL_51;
        }

        if (qword_100767460 != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Logger();
        v60 = sub_100003E30(v115, qword_10078D290);
        v61 = &_swiftEmptyArrayStorage;
        v41 = sub_100008E04(&_swiftEmptyArrayStorage);
        sub_100008E04(&_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown item type", 17, 2);
        __break(1u);
      }
    }

    v114 = v41;
    (*(v60 + 8))(v73, v61);
LABEL_51:
    v116 = v160;
    v117 = v161;
    v118 = v162;
    (*(v160 + 104))(v161, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v162);
    v119 = *(v27 + 16);
    v120 = v156;
    v121 = v114;
    v122 = v163;
    v119(v156, v121, v163);
    v119(v34, v120, v122);
    v123 = v147;
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v153 + 104))(v155, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v154);
    UICollectionLayoutListConfiguration.footerMode.setter();
    (*(v116 + 16))(v148, v117, v118);
    UICollectionLayoutListConfiguration.headerMode.setter();

    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();

    UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
    sub_100003540(0, &qword_10078A4E0);
    v70 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();

    (*(v158 + 8))(v123, v159);
    v124 = *(v27 + 8);
    v124(v120, v122);
    (*(v116 + 8))(v117, v118);
    (*(v141 + 8))(v139, v142);
    (*(v145 + 8))(v143, v146);
    v124(v134, v122);
    return v70;
  }

  v85 = *&v49[v50];
  if (v85)
  {
    v86 = v85;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

    v87 = v156;
    if (v164)
    {

      v88 = TTRAccountsListsViewModel.isEditing.getter();

      v89 = v88 & 1;
    }

    else
    {
      v89 = 2;
    }

    v99 = 0.0;
    if (static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter())
    {
      v100 = v163;
      (*(v27 + 104))(v87, enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:), v163);
      v101 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
      (*(v27 + 8))(v87, v100);
      if (v101)
      {
        v99 = 0.0;
      }

      else
      {
        v99 = 6.0;
      }
    }

    if (v89 == 2 || (v89 & 1) == 0)
    {
      v102 = v41;
      v144 = sub_10056B840;
    }

    else
    {
      v102 = v41;
      v144 = sub_10056B848;
    }

    *(swift_allocObject() + 16) = v99;
    v103 = v160;
    v104 = v162;
    (*(v160 + 104))(v161, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v162);
    v105 = *(v27 + 16);
    v106 = v102;
    v107 = v163;
    v105(v87, v106, v163);
    v105(v34, v87, v107);

    v108 = v147;
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v153 + 104))(v155, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v154);
    UICollectionLayoutListConfiguration.footerMode.setter();
    v109 = v161;
    (*(v103 + 16))(v148, v161, v104);
    UICollectionLayoutListConfiguration.headerMode.setter();

    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();

    UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
    (v144)(v108);
    sub_100003540(0, &qword_10078A4E0);
    v70 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();

    (*(v158 + 8))(v108, v159);
    v110 = *(v27 + 8);
    v111 = v163;
    v110(v87, v163);
    (*(v103 + 8))(v109, v162);
    v112 = *(v141 + 8);
    v113 = v142;
    v112(v139, v142);
    (*(v145 + 8))(v143, v146);
    v110(v134, v111);
    v112(v140, v113);
    return v70;
  }

LABEL_56:
  __break(1u);
  return result;
}

void sub_100020A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(sub_100058000(&qword_10078D5E0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_100058000(&qword_10078D5D8) - 8);
  v14 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = *(v7 + 64);
  v9 = *(sub_100058000(&qword_10078D5F0) - 8);
  v13 = (v14 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v10 = *(v9 + 64);
  v11 = *(sub_100058000(&qword_10078D5E8) - 8);
  v12 = (v13 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  sub_100058000(&qword_10078D5D0);
  sub_100058000(&qword_10078D5C0);
  sub_100058000(&qword_10078D5B8);
  sub_100058000(&qword_10078D5C8);
  sub_100058000(&qword_10078D5B0);
  sub_100058000(&qword_10078D5A8);
  sub_100058000(&qword_10078D5A0);
  sub_100058000(&unk_10078D5F8);
  sub_100020FE0(a1, a2, a3, *(v3 + 16), v3 + v5, v3 + v14, v3 + v13, v3 + v12);
}

void sub_100020FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94[2] = a5;
  v94[3] = a8;
  v94[1] = a6;
  v99 = a3;
  v101 = a2;
  v9 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v9 - 8);
  v95 = v94 - v10;
  v11 = sub_100058000(&unk_100771B40);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v94 - v15;
  v17 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v94 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v94 - v26;
  v28 = __chkstk_darwin(v25);
  v98 = v94 - v29;
  __chkstk_darwin(v28);
  v100 = v94 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v97 = Strong;
  v32 = *&Strong[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v32)
  {
    v33 = v32;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      sub_1000079B4(v16, &unk_100771B40);
LABEL_5:
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100003E30(v34, qword_10078D290);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "TTRIAccountsListsViewController_collectionView: cell provider: unable to look up item", v37, 2u);
      }

      UICollectionView.dequeueBlankListCell(for:)();
      return;
    }

    v94[0] = a1;
    (*(v18 + 32))(v100, v16, v17);
    v38 = v18;
    v39 = *(v18 + 16);
    v40 = v98;
    v39();
    v41 = (*(v38 + 88))(v40, v17);
    v96 = v38;
    if (v41 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (v39)(v24, v40, v17);
      (*(v38 + 96))(v24, v17);
      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 8))(v24, v42);
LABEL_13:
      v43 = *(v96 + 8);
      v96 += 8;
      v43(v98, v17);
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100003E30(v44, qword_10078D290);
      (v39)(v21, v100, v17);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v102 = v48;
        *v47 = 136315138;
        sub_100014F04(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
        v49 = TTRTreeStorageItem.treeItemDescription.getter();
        v51 = v50;
        v43(v21, v17);
        v52 = sub_100004060(v49, v51, &v102);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "TTRIAccountsListsViewController: unexpected item type for getting cells {item: %s}", v47, 0xCu);
        sub_100004758(v48);
      }

      else
      {

        v43(v21, v17);
      }

      UICollectionView.dequeueBlankListCell(for:)();

      v43(v100, v17);
      return;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
    {
      goto LABEL_13;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
    {
      v53 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
      v54 = *(v53 - 8);
      v55 = v95;
      (*(v54 + 16))(v95, v99, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      type metadata accessor for TTRIAccountsListsViewPinnedListsCell_collectionView();
LABEL_21:
      UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      v56 = v55;
LABEL_25:
      sub_1000079B4(v56, &qword_10076B8B0);
      v60 = *(v96 + 8);
      v60(v100, v17);
LABEL_26:
      v60(v98, v17);
      return;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
    {
      v57 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
      v58 = *(v57 - 8);
      v59 = v95;
      (*(v58 + 16))(v95, v99, v57);
      (*(v58 + 56))(v59, 0, 1, v57);
      type metadata accessor for TTRIAccountsListsEditablePredefinedSmartListCell();
LABEL_24:
      UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      v56 = v59;
      goto LABEL_25;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      v61 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
      v62 = *(v61 - 8);
      v55 = v95;
      (*(v62 + 16))(v95, v99, v61);
      (*(v62 + 56))(v55, 0, 1, v61);
      type metadata accessor for TTRIAccountsListsAccountHeaderCell(0);
      goto LABEL_21;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v41 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      v65 = *(v96 + 8);
      v65(v98, v17);
      v66 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
      v67 = *(v66 - 8);
      v68 = v95;
      (*(v67 + 16))(v95, v99, v66);
      (*(v67 + 56))(v68, 0, 1, v66);
      type metadata accessor for TTRIAccountsListsViewListCell_collectionView();
      UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      sub_1000079B4(v68, &qword_10076B8B0);
      v65(v100, v17);
      return;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      v63 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
      v64 = *(v63 - 8);
      v55 = v95;
      (*(v64 + 16))(v95, v99, v63);
      (*(v64 + 56))(v55, 0, 1, v63);
      type metadata accessor for TTRIAccountsListsViewGroupCell_collectionView();
      goto LABEL_21;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
    {
      goto LABEL_13;
    }

    if (v41 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
    {
      (v39)(v27, v98, v17);
      v69 = v96;
      (*(v96 + 96))(v27, v17);
      v70 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
      v71 = *(v70 - 8);
      v72 = (*(v71 + 88))(v27, v70);
      if (v72 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
      {
        v73 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
        v74 = *(v73 - 8);
        v75 = v95;
        (*(v74 + 16))(v95, v99, v73);
        (*(v74 + 56))(v75, 0, 1, v73);
        type metadata accessor for TTRIAccountsListsInlinePermissionHeaderCell(0);
        UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        sub_1000079B4(v75, &qword_10076B8B0);
        v76 = *(v69 + 8);
        v76(v100, v17);
        (*(v71 + 8))(v27, v70);
        v76(v98, v17);
        return;
      }

      if (v72 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
      {
        v79 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
        v80 = *(v79 - 8);
        v81 = v95;
        (*(v80 + 16))(v95, v99, v79);
        (*(v80 + 56))(v81, 0, 1, v79);
        type metadata accessor for TTRIAccountsListsInlinePermissionButtonCell();
        UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        sub_1000079B4(v81, &qword_10076B8B0);
        v82 = *(v96 + 8);
        v82(v100, v17);
        (*(v71 + 8))(v27, v70);
        v82(v98, v17);
        return;
      }

      v85 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
      v86 = v72;
      (*(v71 + 8))(v27, v70);
      if (v86 == v85)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v41 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
      {
        goto LABEL_13;
      }

      if (v41 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
      {
        v77 = v100;
        (v39)(v14, v100, v17);
        v78 = v96;
        (*(v96 + 56))(v14, 0, 1, v17);
        sub_100003540(0, &qword_10077FBF0);
        UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        sub_1000079B4(v14, &unk_100771B40);
        v60 = *(v78 + 8);
        v60(v77, v17);
        goto LABEL_26;
      }

      if (v41 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
      {
        v83 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
        v84 = *(v83 - 8);
        v59 = v95;
        (*(v84 + 16))(v95, v99, v83);
        (*(v84 + 56))(v59, 0, 1, v83);
        type metadata accessor for TTRIAccountsListsTagsHeaderCell(0);
        goto LABEL_24;
      }

      if (v41 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
      {
        v87 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
        v88 = *(v87 - 8);
        v59 = v95;
        (*(v88 + 16))(v95, v99, v87);
        (*(v88 + 56))(v59, 0, 1, v87);
        type metadata accessor for TTRIAccountsListsHashtagsCell(0);
        goto LABEL_24;
      }

      if (v41 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
        v89 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
        v90 = *(v89 - 8);
        v59 = v95;
        (*(v90 + 16))(v95, v99, v89);
        (*(v90 + 56))(v59, 0, 1, v89);
        type metadata accessor for TTRIAccountsListsRecentlyDeletedCell_collectionView();
        goto LABEL_24;
      }

      if (v41 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
      {
        goto LABEL_13;
      }

      if (v41 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        v91 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
        v92 = *(v91 - 8);
        v59 = v95;
        (*(v92 + 16))(v95, v99, v91);
        (*(v92 + 56))(v59, 0, 1, v91);
        type metadata accessor for TTRIAccountsListsSuggestGroceriesCell_collectionView(0);
        goto LABEL_24;
      }
    }
  }

  else
  {
    __break(1u);
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_100003E30(v93, qword_10078D290);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
}

uint64_t sub_1000222B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_1000223F8(a2, a3, a4, a5, a6);
  }

  else
  {
    v11 = type metadata accessor for PromiseError();
    sub_10036ED08(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for PromiseError.abandoned(_:), v11);
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1000223F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v39 = a2;
  v9 = type metadata accessor for URL();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMNavigationSpecifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767210 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_10077FC40);
  v17 = *(v13 + 16);
  v37 = a1;
  v17(v15, a1, v12);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = a4;
    v31 = v22;
    v40 = v22;
    *v21 = 136315138;
    REMNavigationSpecifier.url.getter();
    sub_10036ED08(&unk_100792F90, &type metadata accessor for URL);
    v23 = v36;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = a3;
    v26 = v25;
    (*(v35 + 8))(v11, v23);
    (*(v13 + 8))(v15, v12);
    v27 = sub_100004060(v24, v26, &v40);
    a3 = v32;

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "TTRIRootPresenter: handle navigation specifier: %s", v21, 0xCu);
    sub_100004758(v31);
  }

  else
  {

    v28 = (*(v13 + 8))(v15, v12);
  }

  __chkstk_darwin(v28);
  v29 = v38;
  *(&v31 - 4) = v37;
  *(&v31 - 3) = v29;
  *(&v31 - 2) = v39;
  sub_100058000(a3);
  return firstly<A>(closure:)();
}

char *sub_100022788(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_selectionRequestObserver] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListViewAdditionalTopLayoutMargin] = 0;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  sub_100025600();
  v11 = v10;
  UICollectionViewCell.contentConfiguration.setter();
  v12 = [v11 contentView];

  v13 = type metadata accessor for PinnedListsContentView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    if (qword_100766FE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_1007723A0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TTRIAccountsListsViewPinnedListsCell_collectionView: failed to create PinnedListsContentView", v18, 2u);
    }

    v14 = [objc_allocWithZone(v13) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v12 = v14;
  }

  v19 = v14;
  v20 = v12;
  v21 = *&v11[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView];
  *&v11[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView] = v19;
  v22 = v19;

  [v22 setPreservesSuperviewLayoutMargins:0];
  v23 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
  v24 = 16.0;
  if (v23)
  {
    v24 = 0.0;
  }

  [v22 setLayoutMargins:{v24, 0.0, 0.0, 0.0}];

  *&v22[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate + 8] = &off_100719E88;
  swift_unknownObjectWeakAssign();
  v25 = v11;

  sub_100026468();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100058000(&qword_1007724A8);
  swift_allocObject();
  v26 = TTRViewModelObserver.init(didReceiveNewValue:)();

  *&v25[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_selectionRequestObserver] = v26;

  return v25;
}

uint64_t sub_100022AD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022B2C(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v203 = a3;
  v204 = a2;
  v205 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v195 = *(v3 - 1);
  v196 = v3;
  __chkstk_darwin(v3);
  v194 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v171 = &v168 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v192 = *(v7 - 8);
  v193 = v7;
  __chkstk_darwin(v7);
  v191 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v179 = *(v180 - 8);
  v11 = *(v179 + 64);
  v12 = __chkstk_darwin(v180);
  v178 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v181 = &v168 - v13;
  v190 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v188 = *(v190 - 8);
  v14 = *(v188 + 64);
  v15 = __chkstk_darwin(v190);
  v187 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v189 = &v168 - v16;
  v186 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v185 = *(v186 - 8);
  v17 = __chkstk_darwin(v186);
  v183 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v18;
  __chkstk_darwin(v17);
  v184 = &v168 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v201 = *(v20 - 8);
  v202 = v20;
  v21 = __chkstk_darwin(v20);
  v199 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v197 = (&v168 - v24);
  v198 = v25;
  __chkstk_darwin(v23);
  v200 = &v168 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v168 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = (&v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v36, v205, v33);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v36, v33);
    v205 = *v36;
    v38 = *(sub_100058000(&qword_100777A40) + 48);
    v203 = *(v28 + 32);
    v169 = v27;
    v202 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v32;
    v170 = v32;
    v203(v32, v36 + v38, v27);
    v40 = v204;
    v41 = v204[4];
    swift_getObjectType();
    v206 = v41;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v42 = zalgoIfMain.getter();
    v43 = v202;
    v44 = v39;
    v45 = v169;
    (*(v28 + 16))(v202, v44, v169);
    v46 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    v203((v47 + v46), v43, v45);

    sub_100058000(&qword_10077FDB0);
    v48 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v170, v45);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v36, v33);
    v49 = *v36;
    v50 = *(sub_100058000(&unk_100793000) + 48);
    v51 = *(v201 + 32);
    v205 = (v201 + 32);
    v197 = v51;
    v51(v200, v36 + v50, v202);
    if ((v203 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v52 = sub_100058000(&qword_1007757E8);
      v53 = v194;
      v54 = &v194[v52[12]];
      v55 = v52[16];
      v56 = &v194[v52[20]];
      v57 = enum case for REMUserOperation.widgetShowList(_:);
      v58 = type metadata accessor for REMUserOperation();
      (*(*(v58 - 8) + 104))(v53, v57, v58);
      v59 = type metadata accessor for Date();
      *v54 = 0;
      *(v54 + 1) = 0;
      (*(*(v59 - 8) + 56))(&v53[v55], 1, 1, v59);
      *v56 = 0;
      *(v56 + 1) = 0;
      v61 = v195;
      v60 = v196;
      (*(v195 + 104))(v53, enum case for REMAnalyticsEvent.userOperation(_:), v196);
      REMAnalyticsManager.post(event:)();

      (*(v61 + 8))(v53, v60);
    }

    v62 = v204;
    v63 = v204[4];
    swift_getObjectType();
    v206 = v63;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v64 = zalgoIfMain.getter();
    v65 = v200;
    v66 = v201;
    v67 = *(v201 + 16);
    v68 = v199;
    v196 = v49;
    v69 = v202;
    v67(v199, v200, v202);
    v70 = (*(v66 + 80) + 24) & ~*(v66 + 80);
    v71 = (v198 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = v62;
    v197(v72 + v70, v68, v69);
    *(v72 + v71) = v203;

    sub_100058000(&qword_10077FDB0);
    v48 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v66 + 8))(v65, v69);
    return v48;
  }

  v73 = v203;
  if (v37 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v36, v33);
    v74 = *v36;
    v75 = v36 + *(sub_100058000(&unk_100793000) + 48);
    v205 = *(v201 + 32);
    (v205)(v197, v75, v202);
    if ((v73 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v76 = sub_100058000(&qword_1007757E8);
      v77 = v194;
      v78 = &v194[v76[12]];
      v79 = v76[16];
      v80 = &v194[v76[20]];
      v81 = enum case for REMUserOperation.widgetShowList(_:);
      v82 = type metadata accessor for REMUserOperation();
      (*(*(v82 - 8) + 104))(v77, v81, v82);
      v83 = type metadata accessor for Date();
      *v78 = 0;
      *(v78 + 1) = 0;
      (*(*(v83 - 8) + 56))(&v77[v79], 1, 1, v83);
      *v80 = 0;
      *(v80 + 1) = 0;
      v85 = v195;
      v84 = v196;
      (*(v195 + 104))(v77, enum case for REMAnalyticsEvent.userOperation(_:), v196);
      REMAnalyticsManager.post(event:)();

      (*(v85 + 8))(v77, v84);
    }

    v86 = v204;
    v87 = v204[4];
    swift_getObjectType();
    v206 = v87;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v88 = zalgoIfMain.getter();
    v90 = v201;
    v89 = v202;
    v91 = *(v201 + 16);
    v203 = v74;
    v92 = v199;
    v93 = v197;
    v91(v199, v197, v202);
    v94 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = v86;
    (v205)(v95 + v94, v92, v89);

    sub_100058000(&qword_10077FDB0);
    v48 = dispatch thunk of Promise.then<A>(on:closure:)();
    v96 = v203;
    goto LABEL_12;
  }

  if (v37 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v36, v33);
    v98 = v191;
    v97 = v192;
    v99 = v193;
    (*(v192 + 32))(v191, v36, v193);
    v100 = sub_10000C36C(v204 + 6, v204[9]);
    __chkstk_darwin(v100);
    *(&v168 - 2) = v101;
    *(&v168 - 1) = v98;
    sub_100058000(&qword_10077FDB0);
    v48 = firstly<A>(closure:)();
    (*(v97 + 8))(v98, v99);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v36, v33);
    v102 = *v36;
    v103 = *(sub_100058000(&unk_10076DF50) + 48);
    v104 = v188;
    v105 = v189;
    v205 = *(v188 + 32);
    (v205)(v189, v36 + v103, v190);
    v106 = v204;
    v107 = v204[4];
    swift_getObjectType();
    v206 = v107;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v108 = zalgoIfMain.getter();
    v109 = v187;
    v110 = v105;
    v111 = v190;
    (*(v104 + 16))(v187, v110, v190);
    v112 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = v106;
    (v205)(v113 + v112, v109, v111);

    sub_100058000(&qword_10077FDB0);
    v48 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v104 + 8))(v189, v111);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v36, v33);
    v205 = *v36;
    v115 = *(sub_100058000(&qword_100777A38) + 48);
    v90 = v185;
    v203 = *(v185 + 32);
    v93 = v184;
    v89 = v186;
    v203(v184, v36 + v115, v186);
    v116 = v204;
    v117 = v204[4];
    swift_getObjectType();
    v206 = v117;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v88 = zalgoIfMain.getter();
    v118 = v183;
    (*(v90 + 16))(v183, v93, v89);
    v119 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = v116;
    v203((v120 + v119), v118, v89);

    sub_100058000(&qword_10077FDB0);
LABEL_22:
    v48 = dispatch thunk of Promise.then<A>(on:closure:)();
    v96 = v205;
LABEL_12:

    (*(v90 + 8))(v93, v89);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v36, v33);
    v205 = *v36;
    v121 = *(sub_100058000(&qword_100777A38) + 48);
    v90 = v185;
    v203 = *(v185 + 32);
    v93 = v184;
    v89 = v186;
    v203(v184, v36 + v121, v186);
    v122 = v204;
    v123 = v204[4];
    swift_getObjectType();
    v206 = v123;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v88 = zalgoIfMain.getter();
    v124 = v183;
    (*(v90 + 16))(v183, v93, v89);
    v125 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v126 = swift_allocObject();
    *(v126 + 16) = v122;
    v203((v126 + v125), v124, v89);

    sub_100058000(&qword_10077FDB0);
    goto LABEL_22;
  }

  v127 = v204;
  if (v37 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v204 + 6, v204[9]);
    v48 = sub_100024898(0);
    (*(v34 + 8))(v36, v33);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.today(_:) || v37 == enum case for REMNavigationSpecifier.scheduled(_:) || v37 == enum case for REMNavigationSpecifier.allReminders(_:) || v37 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v37 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v36, v33);
    v128 = v179;
    v129 = *(v179 + 32);
    v130 = v181;
    v131 = v180;
    v129(v181, v36, v180);
    v132 = *sub_10000C36C(v127 + 6, v127[9]);
    v205 = sub_100391414(0);
    v133 = v178;
    (*(v128 + 16))(v178, v130, v131);
    v134 = (*(v128 + 80) + 16) & ~*(v128 + 80);
    v135 = swift_allocObject();
    v129((v135 + v134), v133, v131);
    *(v135 + ((v11 + v134 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;

    v136 = zalgo.getter();
    sub_100058000(&qword_10077FDB0);
    v48 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v128 + 8))(v181, v131);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.assigned(_:) || v37 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v37 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v36, v33);
    v137 = v176;
    v138 = v175;
    v139 = v36;
    v140 = v177;
    (*(v176 + 32))(v175, v139, v177);
    sub_10000C36C(v127 + 6, v127[9]);
    v48 = sub_100369EF4(v138);
    (*(v137 + 8))(v138, v140);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v36, v33);
    if ((v73 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v141 = sub_100058000(&qword_1007757E8);
      v142 = v194;
      v143 = &v194[v141[12]];
      v144 = v141[16];
      v145 = &v194[v141[20]];
      v146 = enum case for REMUserOperation.widgetShowList(_:);
      v147 = type metadata accessor for REMUserOperation();
      (*(*(v147 - 8) + 104))(v142, v146, v147);
      v148 = type metadata accessor for Date();
      *v143 = 0;
      *(v143 + 1) = 0;
      (*(*(v148 - 8) + 56))(&v142[v144], 1, 1, v148);
      *v145 = 0;
      *(v145 + 1) = 0;
      v150 = v195;
      v149 = v196;
      (*(v195 + 104))(v142, enum case for REMAnalyticsEvent.userOperation(_:), v196);
      REMAnalyticsManager.post(event:)();

      (*(v150 + 8))(v142, v149);
    }

    sub_10000C36C(v127 + 6, v127[9]);
    return sub_100361F8C(v205, v73 & 1, sub_1003644C8, &qword_10077FDB8, &unk_10063BE10);
  }

  if (v37 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v36, v33);
    v151 = v173;
    v152 = v172;
    v153 = v174;
    (*(v173 + 32))(v172, v36, v174);
    v154 = sub_10000C36C(v127 + 6, v127[9]);
    v155 = v127[4];
    swift_getObjectType();
    v206 = v155;
    v156 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v152, v156, v127, *v154);

    v157 = objc_opt_self();
    v158 = String._bridgeToObjectiveC()();
    v159 = [v157 internalErrorWithDebugDescription:v158];

    sub_100058000(&qword_10077FDB8);
    swift_allocObject();
    v48 = Promise.init(error:)();
    (*(v151 + 8))(v152, v153);
    return v48;
  }

  if (v37 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v204 + 6, v204[9]);
    sub_100058000(&qword_10077FDB0);
    return firstly<A>(closure:)();
  }

  if (v37 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v160 = type metadata accessor for TaskPriority();
    v161 = v171;
    (*(*(v160 - 8) + 56))(v171, 1, 1, v160);
    type metadata accessor for MainActor();
    v162 = v204;

    v163 = static MainActor.shared.getter();
    v164 = swift_allocObject();
    v164[2] = v163;
    v164[3] = &protocol witness table for MainActor;
    v164[4] = v162;
    sub_10009E31C(0, 0, v161, &unk_10063BE08, v164);

    v165 = objc_opt_self();
    v166 = String._bridgeToObjectiveC()();
    v167 = [v165 internalErrorWithDebugDescription:v166];

    sub_100058000(&qword_10077FDB8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

char *sub_10002472C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsCollectionCell_viewModelObserver] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TTRIAccountsListsCollectionCell();
  v9 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100784750);
  swift_allocObject();
  v10 = v9;
  *&v10[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsCollectionCell_viewModelObserver] = TTRViewModelObserver.init(didReceiveNewValue:)();

  return v10;
}

uint64_t sub_10002483C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024898(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDB0);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDB8);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100024C34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024C90(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController];
  v5 = [v4 visibleViewController];
  if (v5)
  {
    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_ttrMainViewController];
    sub_100003540(0, &qword_10076AD28);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v20[0] = v8;
      sub_100058000(&unk_10077BDD8);
      swift_allocObject();
      v10 = v8;
      return Promise.init(value:)();
    }
  }

  sub_100058000(&qword_10077BDD0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_pendingNavigateToRootPromise] = DeferredPromise.init()();

  v12 = [v4 presentedViewController];
  if (v12)
  {
    v13 = v12;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || (v14 = v13, v15 = dispatch thunk of TTRIRootNavigationDismissable.shouldDismissForPopToRootNavigation.getter(), v14, (v15 & 1) != 0))
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v2;
      *(v16 + 24) = a1 & 1;
      v20[4] = sub_1002FC7F0;
      v20[5] = v16;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_10001047C;
      v20[3] = &unk_10071F468;
      v17 = _Block_copy(v20);
      v18 = v2;

      [v13 dismissViewControllerAnimated:1 completion:v17];
      _Block_release(v17);

      goto LABEL_10;
    }
  }

LABEL_10:
  result = DeferredPromise.promise.getter();
  if (result)
  {
    v19 = result;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024F34()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100024FFC(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100790D98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TEST SETUP START", v14, 2u);
  }

  sub_100025654("Default setup");
  if (v6)
  {

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_100004060(a4, a5, &v38);
      *(v17 + 12) = 2114;
      v20 = _convertErrorToNSError(_:)();
      *(v17 + 14) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "TEST END ERROR {testName: %{public}s, error: %{public}@}", v17, 0x16u);
      sub_1000079B4(v18, &unk_10076DF80);

      sub_100004758(v19);
    }

    v21 = String._bridgeToObjectiveC()();
    [a6 startedTest:v21];

    sub_1005BA214(a4, a5);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "TEST SETUP END", v25, 2u);
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_100004060(a4, a5, &v38);
      _os_log_impl(&_mh_execute_header, v26, v27, "TEST RUN START {testName: %{public}s}", v28, 0xCu);
      sub_100004758(v29);
    }

    v30 = swift_allocObject();
    v30[2] = a4;
    v30[3] = a5;
    v30[4] = a2;
    v30[5] = a3;
    v31 = swift_allocObject();
    v31[2] = a6;
    v31[3] = sub_1005C93B0;
    v31[4] = v30;
    v32 = *sub_10000C36C(a1, a1[3]);

    v33 = a2;
    v34 = a3;
    v35 = a6;

    sub_1000257DC(v32, sub_10003ACC8, v31);
  }
}

uint64_t sub_100025498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100058000(&unk_10077A660);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_100025600()
{
  result = qword_100772498;
  if (!qword_100772498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100772498);
  }

  return result;
}

void sub_100025654(const char *a1)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100790D98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }
}

uint64_t type metadata accessor for PinnedListsContentView()
{
  result = qword_100772460;
  if (!qword_100772460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100025788()
{
  v0 = [objc_allocWithZone(type metadata accessor for PinnedListsContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100026198();
  return v0;
}

void sub_1000257DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v6 = swift_allocObject();
  *(v6 + 16) = sub_10003A9B0;
  *(v6 + 24) = v5;
  swift_unknownObjectRetain();
  v7 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v8 = zalgo.getter();
  sub_100058000(&qword_10077FDB0);
  dispatch thunk of Promise.then<A>(on:closure:)();

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_1000259DC()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100025A64(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 _launchTestName];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1001A84C0;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001047C;
  v9[3] = &unk_100730080;
  v8 = _Block_copy(v9);

  [a1 finishedTest:v6 waitForCommit:1 extraResults:0 withTeardownBlock:v8];
  _Block_release(v8);
}

uint64_t sub_100025B78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for TTRIPinnedListsView()
{
  result = qword_10077D0D0;
  if (!qword_10077D0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025C00()
{
  sub_100025E0C(319, &qword_10077D0E0, &type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (v0 <= 0x3F)
  {
    sub_100025E0C(319, &qword_10077D0E8, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100025D3C()
{
  v1 = type metadata accessor for REMNavigationSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100025E0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id sub_100025ED0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor] = 0;
  v11 = &v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls];
  *v11 = xmmword_10063ADB0;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  v11[48] = 1;
  v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus] = 0;
  v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_usesLargeTextLayout] = 0;
  v12 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dropTargetPinnedListID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v21.receiver = v4;
  v21.super_class = type metadata accessor for TTRIPinnedListsView();
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  if (static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter())
  {
    v15 = 8.0;
  }

  else
  {
    v15 = 16.0;
  }

  v16 = v14;
  [v16 setColumnSpacing:v15];
  v17 = v16;
  [v17 setRowSpacing:v15];
  v18 = v17;
  [v18 setPreservesSuperviewLayoutMargins:1];
  [v18 setLayoutMarginsRelativeArrangement:1];
  [v18 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

  [v18 setHorizontalAlignment:0];
  [v18 setHorizontalDistribution:1];
  v19 = [objc_allocWithZone(UIDropInteraction) initWithDelegate:v18];

  [v18 addInteraction:v19];
  [v18 setDebugBoundingBoxesEnabled:0];

  return v18;
}

unint64_t sub_100026198()
{
  result = qword_1007724B8;
  if (!qword_1007724B8)
  {
    type metadata accessor for PinnedListsContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007724B8);
  }

  return result;
}

uint64_t sub_100026360()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000263A8()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for TTRIAccountsListsCollectionCell();
  return objc_msgSendSuper2(&v2, "invalidateIntrinsicContentSize");
}

void sub_100026468()
{
  if (static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter())
  {
    v1 = *&v0[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView];
    if (v1)
    {
      v2 = *&qword_1007723B8;
      v3 = unk_1007723C0;
      v4 = byte_1007723E8;
      v5 = &v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls];
      v6 = *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls];
      v7 = *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 8];
      v9 = xmmword_1007723C8;
      v8 = unk_1007723D8;
      v11 = *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 16];
      v10 = *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 32];
      v12 = v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 48];
      *&v5->f64[0] = qword_1007723B8;
      v5->f64[1] = v3;
      v5[1] = v9;
      v5[2] = v8;
      LOBYTE(v5[3].f64[0]) = v4;
      if (v2 == v6 && v3 == v7)
      {
        if (v4)
        {
          if (v12)
          {
            return;
          }
        }

        else if ((v12 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v11, v9), vceqq_f64(v10, v8)), xmmword_100634150)) & 0xF) == 0)
        {
          return;
        }
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  [v0 directionalLayoutMargins];
  v1 = *&v0[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView];
  if (!v1)
  {
    goto LABEL_25;
  }

  v16 = &v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls];
  v18 = *&v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 8];
  v19 = v1[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls + 48];
  *v16 = v14;
  v16[1] = v15;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 48) = 1;
  v20 = v14 == v17 && v15 == v18;
  if (!v20 || (v19 & 1) == 0)
  {
LABEL_21:
    v21 = v1;
    sub_1000265C4();
  }
}

void sub_1000265C4()
{
  v1 = v0;
  v166 = type metadata accessor for UUID();
  v156 = *(v166 - 8);
  __chkstk_darwin(v166);
  v129 = &v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_100058000(&qword_10077D158);
  __chkstk_darwin(v152);
  v151 = &v128 - v3;
  v4 = sub_100058000(&unk_10077D160);
  v5 = __chkstk_darwin(v4 - 8);
  v134 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v160 = &v128 - v8;
  __chkstk_darwin(v7);
  v159 = &v128 - v9;
  v150 = sub_100058000(&qword_10077D178);
  __chkstk_darwin(v150);
  v149 = &v128 - v10;
  v11 = sub_100058000(&qword_100771DD0);
  v12 = __chkstk_darwin(v11 - 8);
  v148 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v133 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v161 = &v128 - v17;
  __chkstk_darwin(v16);
  v167 = &v128 - v18;
  v168 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v153 = *(v168 - 8);
  v19 = __chkstk_darwin(v168);
  v135 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v158 = &v128 - v21;
  v147 = sub_100058000(&qword_10077D180);
  __chkstk_darwin(v147);
  v146 = &v128 - v22;
  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 preferredContentSizeCategory];

  LODWORD(v163) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v25 = [v1 subviews];
  v162 = sub_100003540(0, &qword_10076B020);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v1;
  v28 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
LABEL_88:
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v31 = 0;
  while (2)
  {
    if (v31 != v29)
    {
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v28 + 16))
          {
            goto LABEL_85;
          }

          v32 = *(v26 + 8 * v31 + 32);
        }

        v33 = v32;
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        type metadata accessor for TTRIPinnedListEmptyControl();
        v35 = swift_dynamicCastClass();

        if (!v35)
        {
          break;
        }

        ++v31;
        if (v34 == v29)
        {
          goto LABEL_16;
        }
      }

      ++v31;
      if (!__OFADD__(v30++, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_16:

  v37 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists;
  v38 = v27;
  v27 = *(*&v27[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists] + 16);
  v55 = v27 == v30;
  v39 = v38;
  v40 = v158;
  if (v55 && (v163 & 1) == v38[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_usesLargeTextLayout])
  {
    goto LABEL_38;
  }

  v41 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v157 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists;
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v169 = "didTapControl:";
    v42 = type metadata accessor for TTRIPinnedListControl();
    v164 = xmmword_10062D420;
    do
    {
      v43 = objc_allocWithZone(v42);

      sub_100029AC0(v44);
      v46 = v45;
      [v45 addTarget:v39 action:v169 forControlEvents:64];
      v47 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v39 action:"didSelectControl:"];
      sub_100003540(0, &qword_100780A30);
      v48 = v47;
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v48 setAllowedTouchTypes:isa];

      sub_100058000(&qword_10076B780);
      v50 = swift_allocObject();
      *(v50 + 16) = v164;
      *(v50 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:4];
      v51 = Array._bridgeToObjectiveC()().super.isa;

      [v48 setAllowedPressTypes:v51];

      [v46 addGestureRecognizer:v48];
      *&v46[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate + 8] = &off_1007202A8;
      swift_unknownObjectWeakAssign();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v27;
    }

    while (v27);
    v41 = aBlock[0];
    v40 = v158;
    v37 = v157;
  }

  if ((v163 & 1) == 0)
  {
    if (v41 >> 62)
    {
      v126 = _CocoaArrayWrapper.endIndex.getter();
      if (v126 != 1 && (v126 & 1) != 0)
      {

        v57 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_32;
      }
    }

    else
    {
      v55 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1 || (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) & 1) == 0;
      if (!v55)
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v57 = v41;
LABEL_32:
        sub_100058000(&qword_10076B780);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D420;
        *(inited + 32) = [objc_allocWithZone(type metadata accessor for TTRIPinnedListEmptyControl()) init];
        aBlock[0] = v57;
        sub_10002AC3C(inited);
        Array.chunked(by:)();
        goto LABEL_33;
      }
    }

    type metadata accessor for TTRIPinnedListControl();
    v56 = Array.chunked(by:)();
    sub_1003E06B4(v56);
LABEL_33:

    sub_100058000(&unk_10076BCD0);
    v59 = Array._bridgeToObjectiveC()().super.isa;

    [v39 setArrangedSubviewRows:v59];

    if (v41 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v60 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v60 == 1;
    goto LABEL_37;
  }

  type metadata accessor for TTRIPinnedListControl();
  v52 = 1;
  v53 = Array.chunked(by:)();
  sub_1003E06B4(v53);

  sub_100058000(&unk_10076BCD0);
  v54 = Array._bridgeToObjectiveC()().super.isa;

  [v39 setArrangedSubviewRows:v54];

LABEL_37:
  v39[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_usesLargeTextLayout] = v52;
  sub_10002B014(v41);

  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v39 setAccessibilityElements:v61];

LABEL_38:
  v62 = sub_100027EE8();
  v63 = v62;
  v64 = *&v39[v37];
  if (v62 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v161;
  v66 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  v144 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor;
  v28 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls;

  v145 = v66;
  swift_beginAccess();
  if (!v26)
  {
LABEL_83:

    return;
  }

  v169 = 0;
  v139 = &v39[v28];
  v143 = v63 & 0xC000000000000001;
  v142 = v63 & 0xFFFFFFFFFFFFFF8;
  v157 = v153 + 16;
  v155 = v153 + 32;
  v141 = v153 + 56;
  *&v164 = v153 + 48;
  v162 = (v153 + 8);
  v163 = v156 + 56;
  v140 = (v156 + 48);
  v128 = (v156 + 32);
  v132 = (v156 + 8);
  v131 = v171;
  v130 = 1107296256;
  v165 = v39;
  v138 = v63;
  v137 = v64;
  v136 = v26;
  while (1)
  {
    if (v143)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v169 >= *(v142 + 16))
      {
        goto LABEL_86;
      }

      v68 = *(v63 + 8 * v169 + 32);
    }

    v69 = v68;
    v70 = *(v64 + 16);
    if (v169 == v70)
    {

      goto LABEL_83;
    }

    if (v169 >= v70)
    {
      goto LABEL_87;
    }

    v71 = v153;
    v72 = v64 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v153 + 72) * v169;
    v73 = *(v147 + 48);
    v74 = *(v153 + 16);
    v75 = v146;
    v76 = v168;
    v74(&v146[v73], v72, v168);
    v154 = *(v71 + 32);
    v154(v40, &v75[v73], v76);
    v77 = v167;
    v156 = v74;
    v74(v167, v40, v76);
    (*(v71 + 56))(v77, 0, 1, v76);
    v78 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
    swift_beginAccess();
    sub_10000794C(&v69[v78], v65, &qword_100771DD0);
    swift_beginAccess();
    sub_10002B500(v77, &v69[v78]);
    swift_endAccess();
    v79 = *(v150 + 48);
    v80 = v149;
    sub_10000794C(&v69[v78], v149, &qword_100771DD0);
    sub_10000794C(v65, v80 + v79, &qword_100771DD0);
    v81 = *(v71 + 48);
    if (v81(v80, 1, v76) == 1)
    {
      if (v81(v80 + v79, 1, v76) == 1)
      {
        sub_1000079B4(v65, &qword_100771DD0);
        v82 = v167;
        v83 = v165;
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v84 = v133;
    sub_10000794C(v80, v133, &qword_100771DD0);
    if (v81(v80 + v79, 1, v76) == 1)
    {
      (*v162)(v84, v76);
      v65 = v161;
LABEL_53:
      sub_1000079B4(v80, &qword_10077D178);
      v83 = v165;
LABEL_54:
      sub_10002B570();
      v82 = v65;
      v80 = v167;
      goto LABEL_55;
    }

    v101 = v135;
    v154(v135, (v80 + v79), v76);
    sub_10031B444(&qword_10076D1C0, &type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    LODWORD(v154) = dispatch thunk of static Equatable.== infix(_:_:)();
    v102 = *v162;
    (*v162)(v101, v76);
    v102(v84, v76);
    sub_1000079B4(v80, &qword_100771DD0);
    v65 = v161;
    v82 = v161;
    v80 = v167;
    v83 = v165;
    if ((v154 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_55:
    sub_1000079B4(v82, &qword_100771DD0);
    sub_1000079B4(v80, &qword_100771DD0);
    v85 = v159;
    TTRAccountsListsViewModel.PinnedList.id.getter();
    v86 = *v163;
    (*v163)(v85, 0, 1, v166);
    v87 = v148;
    sub_10000794C(&v83[v145], v148, &qword_100771DD0);
    v88 = v168;
    if (v81(v87, 1, v168))
    {
      sub_1000079B4(v87, &qword_100771DD0);
      v89 = 1;
      v90 = v160;
    }

    else
    {
      v91 = v135;
      v156(v135, v87, v88);
      sub_1000079B4(v87, &qword_100771DD0);
      v92 = v160;
      TTRAccountsListsViewModel.PinnedList.id.getter();
      v90 = v92;
      (*v162)(v91, v88);
      v89 = 0;
    }

    v93 = v166;
    v86(v90, v89, 1, v166);
    v94 = *(v152 + 48);
    v95 = v151;
    v27 = &unk_10077D160;
    sub_10000794C(v85, v151, &unk_10077D160);
    sub_10000794C(v90, v95 + v94, &unk_10077D160);
    v96 = v90;
    v97 = *v140;
    if ((*v140)(v95, 1, v93) == 1)
    {
      sub_1000079B4(v96, &unk_10077D160);
      sub_1000079B4(v85, &unk_10077D160);
      v98 = v97(v95 + v94, 1, v93);
      v40 = v158;
      if (v98 == 1)
      {
        sub_1000079B4(v95, &unk_10077D160);
        v99 = 1;
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    v100 = v134;
    sub_10000794C(v95, v134, &unk_10077D160);
    if (v97(v95 + v94, 1, v93) == 1)
    {
      sub_1000079B4(v160, &unk_10077D160);
      sub_1000079B4(v159, &unk_10077D160);
      (*v132)(v100, v93);
      v40 = v158;
LABEL_63:
      sub_1000079B4(v95, &qword_10077D158);
      v99 = 0;
      goto LABEL_67;
    }

    v103 = v129;
    (*v128)(v129, v95 + v94, v93);
    sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID);
    v99 = dispatch thunk of static Equatable.== infix(_:_:)();
    v104 = *v132;
    (*v132)(v103, v93);
    sub_1000079B4(v160, &unk_10077D160);
    sub_1000079B4(v159, &unk_10077D160);
    v104(v100, v93);
    sub_1000079B4(v95, &unk_10077D160);
    v40 = v158;
LABEL_67:
    v105 = v165;
    v106 = type metadata accessor for TTRIPinnedListControl();
    v174.receiver = v69;
    v174.super_class = v106;
    v107 = objc_msgSendSuper2(&v174, "isSelected");
    v173.receiver = v69;
    v173.super_class = v106;
    objc_msgSendSuper2(&v173, "setSelected:", v99 & 1);
    v172.receiver = v69;
    v172.super_class = v106;
    if (v107 != objc_msgSendSuper2(&v172, "isSelected"))
    {
      type metadata accessor for TTRUserDefaults();
      v108 = static TTRUserDefaults.appUserDefaults.getter();
      TTRUserDefaults.animationSlowModeEnabled.getter();

      type metadata accessor for TTRIAnimationSlowMode();
      swift_allocObject();
      TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
      v109 = 0.15;
      if (v69[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor])
      {
        v109 = 0.25;
      }

      v110 = TTRIAnimationSlowMode.adjust(_:)(v109);
      v111 = swift_allocObject();
      *(v111 + 16) = v69;
      v112 = objc_allocWithZone(UIViewPropertyAnimator);
      v171[2] = sub_10031B4B8;
      v171[3] = v111;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = v130;
      v171[0] = sub_10001047C;
      v171[1] = &unk_1007203C0;
      v113 = _Block_copy(aBlock);
      v114 = v69;

      v115 = [v112 initWithDuration:v113 controlPoint1:v110 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      _Block_release(v113);
      [v115 startAnimation];
    }

    v116 = v105[v144];
    v117 = v69[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor];
    v69[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor] = v116;
    v65 = v161;
    if (v116 != v117)
    {
      sub_10002CBD0();
    }

    v118 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
    v119 = *&v69[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView];
    if (!v119)
    {
      break;
    }

    v120 = v119;
    v121 = dispatch thunk of TTRListBadgeView.image.getter();

    if (v121)
    {

      v64 = v137;
    }

    else
    {
      v122 = *&v69[v118];
      if (!v122)
      {
        goto LABEL_96;
      }

      v123 = v122;
      dispatch thunk of TTRListBadgeView.emoji.getter();
      v125 = v124;

      v64 = v137;
      if (v125)
      {
      }

      else
      {
        static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
      }
    }

    v28 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid;
    [*&v69[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid] directionalLayoutMargins];
    v67 = v169 + 1;
    [*&v69[v28] setDirectionalLayoutMargins:?];
    (*v162)(v40, v168);

    v26 = v136;
    v169 = v67;
    v55 = v136 == v67;
    v63 = v138;
    if (v55)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t type metadata accessor for TTRIPinnedListControl()
{
  result = qword_100771DB8;
  if (!qword_100771DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027DB4()
{
  sub_100027E90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100027E90()
{
  if (!qword_10077D0E0)
  {
    type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077D0E0);
    }
  }
}

void *sub_100027EE8()
{
  v1 = [v0 arrangedSubviewRows];
  if (v1)
  {
    v2 = v1;
    sub_100058000(&unk_10076BCD0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_10002B13C(v3);

    if (v4 >> 62)
    {
LABEL_20:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v8 = *(v4 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for TTRIPinnedListControl();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_21;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000280FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    *(a1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_delegate + 8) = &off_10072E7E0;
    result = swift_unknownObjectWeakAssign();
    v4 = *(a1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache) = *(*&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + 56);

      if (*&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
      {

        v5 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

        if (v5)
        {
          TTRObservableViewModelCollection.observableViewModel(forItemID:)();

          if (*(a1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsCollectionCell_viewModelObserver))
          {

            TTRViewModelObserver.subscribeIfNeeded(to:)();

            if (*(a1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_selectionRequestObserver))
            {
              if (*&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController])
              {

                TTRViewModelObserver.subscribeIfNeeded(to:)();
              }

LABEL_15:
              __break(1u);
              return result;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void sub_1000282AC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v4)
  {
    v6 = v4;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

    if (v9)
    {
      sub_100028388(a1, a2);

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
    (*(*(v8 - 8) + 56))(a2, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100028388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v18 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.presentationTreeForDiffableDataSource.getter();
  sub_10000C36C(v21, v21[3]);
  dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1001178F8(v10);
    v15 = v19;
    (*(v3 + 16))(v19, a1, v18);
    (*(v12 + 56))(v8, 1, 1, v11);
    sub_10002869C(v15, v8, v20);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = v19;
    (*(v3 + 16))(v19, a1, v18);
    (*(v12 + 16))(v8, v14, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_10002869C(v16, v8, v20);
    (*(v12 + 8))(v14, v11);
  }

  return sub_100004758(v21);
}

uint64_t sub_10002869C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v28 = a3;
  v21 = a3;
  v22 = v27;
  v20(v21, a1, v18);
  sub_10000794C(v22, v14, &unk_100771B40);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000079B4(v22, &unk_100771B40);
    (*(v19 + 8))(a1, v18);
    v23 = 1;
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v9, v11, v5);
    TTRDiffableEquatableWrapper.init(base:)();
    sub_1000079B4(v22, &unk_100771B40);
    (*(v19 + 8))(a1, v18);
    (*(v6 + 8))(v11, v5);
    v23 = 0;
  }

  v24 = sub_100058000(&qword_10077A670);
  (*(*(v24 - 8) + 56))(v17, v23, 1, v24);
  v25 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  return sub_100028A00(v17, v28 + *(v25 + 20));
}

uint64_t sub_100028A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077A660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100058000(&unk_10077A660);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100028B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_100058000(&qword_10077A670);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = sub_100058000(&unk_10077A660);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_100028CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_100058000(&qword_10077A670);
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t sub_100028DE8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100784758);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_100058000(&qword_10076EA28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsCollectionCell_viewModelObserver))
    {

      TTRViewModelObserver.localValue.getter();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        return sub_1000079B4(v4, &qword_100784758);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        (*((swift_isaMask & *v10) + 0x78))(v8, a1);

        return (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100029014()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v3 - 8);
  v5 = v41 - v4;
  v6 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v47 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v41 - v15;
  __chkstk_darwin(v14);
  v18 = v41 - v17;
  v43 = v0;
  sub_10002966C();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v9[*(v7 + 28)], v5, &unk_10077A660);
  v19 = sub_100058000(&qword_10077A670);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    sub_100029A60(v9, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    return sub_1000079B4(v5, &unk_10077A660);
  }

  TTRDiffableEquatableWrapper.base.getter();
  sub_100029A60(v9, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
  (*(v20 + 8))(v5, v19);
  v22 = v47;
  (*(v47 + 32))(v18, v16, v10);
  (*(v22 + 16))(v13, v18, v10);
  v23 = v10;
  v24 = v18;
  if ((*(v22 + 88))(v13, v10) != enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    v40 = *(v22 + 8);
    v40(v18, v10);
    return (v40)(v13, v10);
  }

  (*(v22 + 96))(v13, v10);
  v26 = v44;
  v25 = v45;
  v27 = v46;
  (*(v45 + 32))(v44, v13, v46);
  result = TTRAccountsListsViewModel.PinnedLists.lists.getter();
  v28 = OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView;
  v29 = v43;
  v30 = *(v43 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
  if (!v30)
  {
    __break(1u);
    goto LABEL_18;
  }

  *&v30[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists] = result;
  v31 = v30;

  sub_1000265C4();

  if (TTRAccountsListsViewModel.PinnedLists.isFirstNode.getter())
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 8.0;
  }

  v33 = OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListViewAdditionalTopLayoutMargin;
  v34 = *(v29 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListViewAdditionalTopLayoutMargin);
  *(v29 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListViewAdditionalTopLayoutMargin) = v32;
  result = sub_10002E9C4(v34, 0.0000000149011612, v32);
  if ((result & 1) == 0)
  {
    v35 = *(v29 + v28);
    if (v35)
    {
      v36 = v35;
      v37 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
      v38 = 16.0;
      if (v37)
      {
        v38 = 0.0;
      }

      v39 = v38 + *(v29 + v33);
      [v36 layoutMargins];
      [v36 setLayoutMargins:v39];

      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_13:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41[1] = TTRAccountsListsViewModel.PinnedLists.lists.getter();
    swift_allocObject();
    v42 = v24;
    swift_weakInit();

    TTRAccountsListsPresenterCapability.loadSharingContactsDataIfNeeded(for:contactsDidLoad:)();
    swift_unknownObjectRelease();

    v22 = v47;
    v24 = v42;
  }

  sub_10002EA78(0);
  (*(v25 + 8))(v26, v27);
  return (*(v22 + 8))(v24, v23);
}

uint64_t sub_100029634()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002966C()
{
  v1 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_100029934(&v7[*(v5 + 28)], v3);
  v15 = sub_100058000(&qword_10077A670);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    sub_1000299A4(v7);
    return sub_1000079B4(v3, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v7);
    (*(v16 + 8))(v3, v15);
    (*(v9 + 32))(v14, v12, v8);
    TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
    v18 = String._bridgeToObjectiveC()();

    [v0 setAccessibilityIdentifier:v18];

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_100029934(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077A660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000299A4(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029A00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100029AC0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = 0;
  v5 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_count] = 0;
  v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_usesLongTitle] = 0;
  v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_dynamicDateGlyphCache;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_dynamicDateGlyphCache] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_gradientBackgroundView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedListBackgroundView] = 0;
  v8 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView] = 0;
  v9 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel] = 0;
  v107 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel] = 0;
  v10 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView] = 0;
  v11 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView] = 0;
  v12 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
  *&v1[v7] = a1;

  v106 = v12;
  if (v12)
  {
    v13 = 48.0;
  }

  else
  {
    v13 = 32.0;
  }

  type metadata accessor for TTRListBadgeView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = *&v1[v8];
  *&v1[v8] = v14;
  v16 = v14;

  LODWORD(v17) = 1148846080;
  [v16 setLayoutSize:v13 withContentPriority:{v13, v17}];

  v18 = *&v2[v8];
  if (!v18)
  {
    __break(1u);
    goto LABEL_36;
  }

  [v18 setAccessibilityIgnoresInvertColors:1];
  v19 = [objc_allocWithZone(UILabel) init];
  v20 = *&v2[v9];
  *&v2[v9] = v19;
  v21 = v19;

  if (!v21)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v104 = ObjectType;
  UIAccessibilityIsBoldTextEnabled();
  sub_100003540(0, &qword_100771DF0);
  v22 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v21 setFont:v22];

  v23 = *&v2[v9];
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_100003540(0, &qword_100772610);
  v24 = v23;
  v25 = sub_10002A860();
  v26 = static UIColor.ttr_color(named:in:)();

  [v24 setTextColor:v26];
  v27 = *&v2[v9];
  if (!v27)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v27 setAdjustsFontForContentSizeCategory:1];
  v28 = *&v2[v9];
  if (!v28)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v28 setAdjustsFontSizeToFitWidth:1];
  v29 = *&v2[v9];
  if (!v29)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v29 setMinimumScaleFactor:0.5];
  v30 = *&v2[v9];
  if (!v30)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v105 = v9;
  [v30 setBaselineAdjustment:1];
  v31 = [objc_allocWithZone(UILabel) init];
  v32 = *&v2[v107];
  *&v2[v107] = v31;
  v33 = v31;

  if (!v33)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v33 setFont:v34];

  v35 = *&v2[v107];
  if (!v35)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v35 setAdjustsFontForContentSizeCategory:1];
  v36 = *&v2[v107];
  if (!v36)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 whiteColor];
  [v38 setTextColor:v39];

  type metadata accessor for TTRIStackedAvatarsView();
  v40 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v41 = *&v2[v10];
  *&v2[v10] = v40;
  v42 = v40;

  if (v106)
  {
    v43 = 0x4034000000000000;
  }

  else
  {
    v43 = 0x4030000000000000;
  }

  sub_10002AB18(v43, v43, 0);

  v44 = *&v2[v10];
  if (!v44)
  {
    goto LABEL_45;
  }

  v45 = v44;
  static CGSize.nuiUseDefault.getter();
  [v45 setLayoutSize:? withContentPriority:?];

  v46 = [objc_allocWithZone(UIImageView) init];
  v47 = *&v2[v11];
  *&v2[v11] = v46;
  v48 = v46;

  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  static CGSize.nuiUseDefault.getter();
  [v48 setLayoutSize:? withContentPriority:?];

  v49 = *&v2[v11];
  if (!v49)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100003540(0, &qword_10076FCB0);
  v50 = v49;
  v51 = static UIFont.roundedBodyFont.getter();
  v52 = [objc_opt_self() configurationWithFont:v51 scale:1];

  v53 = static UIImage.ttr_systemSymbolImage(named:withConfiguration:)();
  v109 = v53;
  sub_100058000(&qword_10077FBD0);
  Optional<A>.ensureNonNil()();

  v54 = [v37 ttr_systemWhiteColor];
  v55 = [v110 imageWithTintColor:v54 renderingMode:1];

  [v50 setImage:v55];
  sub_100058000(&unk_100771E00);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10062D3F0;
  v57 = *&v2[v105];
  if (!v57)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = v56;
  v102 = v37;
  *(v56 + 32) = v57;
  *(v56 + 40) = 1144750080;
  v59 = *&v2[v107];
  if (!v59)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_100003540(0, &qword_10076B020);
  *(v58 + 48) = v59;
  *(v58 + 56) = 1132068864;
  sub_100058000(&qword_1007884F0);
  v60 = type metadata accessor for TTRIViewContentPriorityType();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_10062D400;
  *(v63 + v62) = 0;
  v103 = *(v61 + 104);
  v103(v63 + v62, enum case for TTRIViewContentPriorityType.hugging(_:), v60);
  v64 = v59;
  v65 = v57;
  static UIView.setContentPriorities(_:for:)();

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10062D3F0;
  v67 = *&v2[v105];
  if (!v67)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v66 + 32) = v67;
  *(v66 + 40) = 1132068864;
  v68 = *&v2[v107];
  if (!v68)
  {
LABEL_51:
    __break(1u);
    return;
  }

  *(v66 + 48) = v68;
  *(v66 + 56) = 1144750080;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10062D400;
  *(v69 + v62) = 0;
  v103(v69 + v62, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v60);
  v70 = v67;
  v71 = v68;
  static UIView.setContentPriorities(_:for:)();

  v72 = [objc_allocWithZone(NUIContainerGridView) init];
  v73 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid;
  *&v2[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid] = v72;
  [v72 setVerticalAlignment:3];
  if (v106)
  {
    v74 = 10.0;
    v75 = 2.0;
    v76 = 8.0;
    left = 6.0;
    top = 0.0;
    bottom = 0.0;
    right = 0.0;
    v81 = 6.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v81 = 12.0;
    v76 = 10.0;
    v75 = 10.0;
    v74 = 12.0;
  }

  [*&v2[v73] setLayoutMarginsRelativeArrangement:1];
  [*&v2[v73] setPreservesSuperviewLayoutMargins:0];
  [*&v2[v73] setLayoutMargins:{v75, v81, 8.0, v74}];
  [*&v2[v73] setRowSpacing:v75];
  [*&v2[v73] setColumnSpacing:10.0];
  [*&v2[v73] setUserInteractionEnabled:0];
  [*&v2[v73] setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  [*&v2[v73] setDebugBoundingBoxesEnabled:0];
  v82 = objc_allocWithZone(NUIContainerStackView);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v84 = [v82 initWithArrangedSubviews:isa];

  v85 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_secondRowStackView;
  *&v2[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_secondRowStackView] = v84;
  [v84 setAxis:0];
  [*&v2[v85] setSpacing:v76];
  [*&v2[v85] setAlignment:3];
  [*&v2[v85] setLayoutMarginsRelativeArrangement:1];
  [*&v2[v85] setPreservesSuperviewLayoutMargins:0];
  [*&v2[v85] setLayoutMargins:{top, left, bottom, right}];
  v108.receiver = v2;
  v108.super_class = v104;
  v86 = objc_msgSendSuper2(&v108, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v87 = v86;
  if (v106)
  {
    type metadata accessor for TTRPinnedListBackgroundView();
    v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    if (qword_100766FD8 != -1)
    {
      swift_once();
    }

    TTRPinnedListBackgroundView.fillViewCornerRadius.setter();
    TTRPinnedListBackgroundView.glowBlurRadius.setter();
    TTRPinnedListBackgroundView.selectionBorderWidth.setter();
    [v88 setUserInteractionEnabled:0];
    v89 = v87;
    v90 = &OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedListBackgroundView;
    v91 = 1;
  }

  else
  {
    v92 = qword_100766FD8;
    v93 = v86;
    if (v92 != -1)
    {
      v101 = v93;
      swift_once();
      v93 = v101;
    }

    v94 = v93;
    [v93 _setContinuousCornerRadius:*&qword_100771D08];
    [v94 setClipsToBounds:1];
    v95 = [v102 secondarySystemGroupedBackgroundColor];
    [v94 setBackgroundColor:v95];

    type metadata accessor for TTRSingleColorGradientView();
    v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    dispatch thunk of TTRSingleColorGradientView.hasGradient.setter();
    v91 = 0;
    v90 = &OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_gradientBackgroundView;
  }

  [v87 addSubview:v88];
  v96 = *&v87[*v90];
  *&v87[*v90] = v88;

  [v87 setTintAdjustmentMode:v91];
  [v87 addSubview:*&v87[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid]];
  v97 = objc_allocWithZone(UIContextMenuInteraction);
  v98 = v87;
  v99 = [v97 initWithDelegate:v98];
  [v98 addInteraction:v99];
  v100 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v98];
  [v98 addInteraction:v100];

  [v98 setTtrFocusGroupIdentifier:0];
  [v98 setFocusEffect:0];
}

id sub_10002A860()
{
  if (qword_100793C88[0] != -1)
  {
    sub_10002A84C();
  }

  v1 = qword_100793C80;

  return v1;
}

void sub_10002A8A4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_100793C80;
  qword_100793C80 = v1;
}

uint64_t sub_10002A9FC()
{
  swift_getObjectType();
  LODWORD(v1) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  LODWORD(v2) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  LODWORD(v3) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v4];
  sub_100058000(&unk_10076BD70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  *(v5 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v5 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10002AB18(uint64_t result, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  v5 = *&v3[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  v6 = *&v3[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 8];
  v7 = v3[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 16];
  *v4 = *&result;
  v4[1] = *&a2;
  *(v4 + 16) = a3 & 1;
  if (a3)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v7 & 1) != 0 || (v5 == *&result ? (v8 = v6 == *&a2) : (v8 = 0), !v8))
  {
LABEL_11:
    v3[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 1;
    [v3 invalidateIntrinsicContentSize];

    *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  }

  return result;
}

uint64_t sub_10002AC68(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E188(&qword_10077D170, &unk_10076BCD0);
          for (i = 0; i != v6; ++i)
          {
            sub_100058000(&unk_10076BCD0);
            v9 = sub_10002B474(v13, i, a3);
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
        sub_100003540(0, &qword_10076B020);
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

char *sub_10002AE1C(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = &_swiftEmptyArrayStorage;
  result = sub_10002AFF4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_10002AFF4((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_100007DD8(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_10002AFF4((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_100007DD8(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_10002AFF4(char *a1, int64_t a2, char a3)
{
  result = sub_10002B02C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002B02C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100777760);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

uint64_t sub_10002B13C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_10076BCD0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10002B410();
      for (i = 0; i != v14; ++i)
      {
        sub_100058000(v3);
        v18 = v3;
        v19 = sub_10002B474(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100003540(0, &qword_10076B020);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10002B410()
{
  result = qword_10077D170;
  if (!qword_10077D170)
  {
    sub_10005D20C(&unk_10076BCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077D170);
  }

  return result;
}

void (*sub_10002B474(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return j__s9Reminders45TTRITemplateSavingDismissAnimationCoordinatorC10SourceViewVwxx;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B500(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771DD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10002B570()
{
  v1 = v0;
  v124 = sub_100058000(&qword_100771DD8);
  __chkstk_darwin(v124);
  v137 = &v121 - v2;
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v135 = *(v3 - 8);
  v136 = v3;
  __chkstk_darwin(v3);
  v138 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v147 = *(v139 - 8);
  __chkstk_darwin(v139);
  v148 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AppEntityID();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMFeatureFlags();
  v131 = *(v7 - 8);
  v132 = v7;
  __chkstk_darwin(v7);
  v130 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for TTRListBadgeView.Shape();
  v146 = *(v141 - 8);
  v9 = __chkstk_darwin(v141);
  v134 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v129 = &v121 - v12;
  v13 = __chkstk_darwin(v11);
  v128 = &v121 - v14;
  __chkstk_darwin(v13);
  v133 = &v121 - v15;
  v16 = type metadata accessor for TTRAccountsListsViewModel.List.Badge();
  v142 = *(v16 - 8);
  v143 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = (&v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v140 = &v121 - v20;
  v21 = sub_100058000(&qword_100771DE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v121 - v22;
  v24 = type metadata accessor for TTRAccountsListsViewModel.List();
  v144 = *(v24 - 8);
  v145 = v24;
  __chkstk_darwin(v24);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v27 - 8);
  v29 = &v121 - v28;
  v30 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v121 - v35;
  v37 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10002C688(v1 + v37, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1000079B4(v29, &qword_100771DD0);
    return;
  }

  (*(v31 + 32))(v36, v29, v30);
  (*(v31 + 16))(v34, v36, v30);
  v38 = (*(v31 + 88))(v34, v30);
  v123 = v36;
  v122 = v31;
  if (v38 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v31 + 96))(v34, v30);
    v39 = v139;
    (*(v147 + 32))(v148, v34, v139);
    v40 = v138;
    TTRAccountsListsViewModel.SmartList.type.getter();
    v41 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
    if (v41)
    {
      v42 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_usesLongTitle);
      v43 = v41;
      if (v42 == 1)
      {
        TTRListType.PredefinedSmartListType.longTitle.getter();
      }

      else
      {
        TTRListType.PredefinedSmartListType.title.getter();
      }

      v60 = v148;
      v61 = String._bridgeToObjectiveC()();

      [v43 setText:v61];

      v62 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel;
      v63 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel);
      if (v63)
      {
        v64 = v63;
        TTRAccountsListsViewModel.SmartList.countText.getter();
        v65 = String._bridgeToObjectiveC()();

        [v64 setText:v65];

        v66 = *(v1 + v62);
        if (v66)
        {
          v67 = v66;
          [v67 setHidden:TTRListType.PredefinedSmartListType.isCountHidden.getter() & 1];

          v68 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView);
          v69 = v146;
          v70 = v137;
          if (v68)
          {
            v71 = v68;
            sub_10002C6F8(&_swiftEmptyArrayStorage);

            TTRAccountsListsViewModel.SmartList.dynamicGlyph.getter();
            v72 = type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph();
            v73 = *(v72 - 8);
            if ((*(v73 + 48))(v70, 1, v72) == 1)
            {
              v74 = TTRListType.PredefinedSmartListType.glyph.getter();
              goto LABEL_22;
            }

            if ((*(v73 + 88))(v70, v72) == enum case for TTRAccountsListsViewModel.SmartList.DynamicGlyph.today(_:))
            {
              (*(v73 + 96))(v70, v72);
              v75 = *v70;
              v76 = v70[1];
              v77 = sub_10002CA28();
              __chkstk_darwin(v77);
              *(&v121 - 2) = v75;
              *(&v121 - 1) = v76;
              v74 = TTRIDynamicDateGlyphCache.fetch(dayString:_:)();

LABEL_22:
              v78 = v74;
              v79 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
              v80 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView);
              if (v80)
              {
                v81 = v80;
                dispatch thunk of TTRListBadgeView.image.setter();

                v82 = *(v1 + v79);
                if (v82)
                {
                  v83 = v82;
                  v84 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
                  v85 = &enum case for TTRListBadgeView.Shape.borderless(_:);
                  if ((v84 & 1) == 0)
                  {
                    v85 = &enum case for TTRListBadgeView.Shape.round(_:);
                  }

                  (*(v69 + 104))(v134, *v85, v141);
                  dispatch thunk of TTRListBadgeView.shape.setter();

                  (*(v135 + 8))(v40, v136);
                  (*(v147 + 8))(v60, v39);
LABEL_48:
                  sub_10002CBD0();
                  sub_10002DDA8();
                  (*(v122 + 8))(v123, v30);
                  return;
                }

                goto LABEL_58;
              }

LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
LABEL_69:
            if (qword_100766FD0 != -1)
            {
              swift_once();
            }

            v120 = type metadata accessor for Logger();
            sub_100003E30(v120, qword_100771CF0);
            sub_100008E04(&_swiftEmptyArrayStorage);
            sub_100008E04(&_swiftEmptyArrayStorage);
            v118 = "Unknown badge type";
            v119 = 18;
            goto LABEL_72;
          }

          goto LABEL_55;
        }

        goto LABEL_53;
      }

      goto LABEL_51;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v38 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    v44 = *(v31 + 96);
    v148 = v30;
    v44(v34, v30);
    (*(v144 + 32))(v26, v34, v145);
    v45 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
    if (v45)
    {
      v46 = v45;
      TTRAccountsListsViewModel.List.name.getter();
      v47 = String._bridgeToObjectiveC()();

      [v46 setText:v47];

      v48 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel;
      v49 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel);
      v50 = v143;
      if (v49)
      {
        v51 = v49;
        TTRAccountsListsViewModel.List.countText.getter();
        v52 = String._bridgeToObjectiveC()();

        [v51 setText:v52];

        v53 = *(v1 + v48);
        if (v53)
        {
          [v53 setHidden:0];
          v54 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView);
          v55 = v142;
          if (v54)
          {
            v56 = v54;
            TTRAccountsListsViewModel.List.sharingContactsData.getter();
            v57 = type metadata accessor for TTRAccountsListsViewModel.SharingContactsData();
            v58 = *(v57 - 8);
            if ((*(v58 + 48))(v23, 1, v57) == 1)
            {
              sub_1000079B4(v23, &qword_100771DE0);
              v59 = &_swiftEmptyArrayStorage;
            }

            else
            {
              v86 = TTRAccountsListsViewModel.SharingContactsData.contacts.getter();
              (*(v58 + 8))(v23, v57);
              v59 = v86;
            }

            sub_10002C6F8(v59);

            v87 = v140;
            TTRAccountsListsViewModel.List.badge.getter();
            (*(v55 + 16))(v19, v87, v50);
            v88 = (*(v55 + 88))(v19, v50);
            v89 = v146;
            if (v88 == enum case for TTRAccountsListsViewModel.List.Badge.image(_:))
            {
              (*(v55 + 96))(v19, v50);
              v90 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
              v91 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView);
              v92 = v141;
              if (!v91)
              {
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v93 = *v19;
              v94 = v91;
              REMListBadgeEmblem.image.getter();
              dispatch thunk of TTRListBadgeView.image.setter();

              v95 = *(v1 + v90);
              if (!v95)
              {
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v96 = v95;
              REMListBadgeEmblem.name.getter();
              dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
            }

            else
            {
              if (v88 != enum case for TTRAccountsListsViewModel.List.Badge.emoji(_:))
              {
                goto LABEL_69;
              }

              (*(v55 + 96))(v19, v50);
              v97 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
              v98 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView);
              if (!v98)
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              v99 = v98;
              dispatch thunk of TTRListBadgeView.emoji.setter();

              v100 = *(v1 + v97);
              if (!v100)
              {
LABEL_63:
                __break(1u);
                goto LABEL_64;
              }

              v101 = v100;
              static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
              dispatch thunk of TTRListBadgeView.emojiFontSize.setter();

              v102 = *(v1 + v97);
              if (!v102)
              {
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

              v96 = v102;
              dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
              v92 = v141;
            }

            v103 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
            v104 = v133;
            if (v103)
            {
              (*(v89 + 104))(v133, enum case for TTRListBadgeView.Shape.borderless(_:), v92);
            }

            else
            {
              if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
              {
                v105 = v128;
                static TTRListBadgeView.Shape.customSmartListInListRowView.getter();
              }

              else
              {
                v105 = v128;
                (*(v89 + 104))(v128, enum case for TTRListBadgeView.Shape.round(_:), v92);
              }

              (*(v89 + 32))(v104, v105, v92);
            }

            v106 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView);
            if (v106)
            {
              (*(v89 + 16))(v129, v104, v92);
              v107 = v106;
              dispatch thunk of TTRListBadgeView.shape.setter();

              v108 = v104;
              v109 = TTRAccountsListsViewModel.List.objectID.getter();
              v110 = v131;
              v111 = v132;
              v112 = v130;
              (*(v131 + 104))(v130, enum case for REMFeatureFlags.viewAnnotation(_:), v132);
              v113 = v92;
              v114 = REMFeatureFlags.isEnabled.getter();
              (*(v110 + 8))(v112, v111);
              if (v114)
              {
                type metadata accessor for ListEntity();
                v115 = v109;
                v116 = v125;
                AppEntityID.init(objectID:)();
                sub_1001AA5F0();
                UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

                (*(v126 + 8))(v116, v127);
              }

              else
              {
              }

              (*(v89 + 8))(v108, v113);
              (*(v142 + 8))(v140, v143);
              (*(v144 + 8))(v26, v145);
              v30 = v148;
              goto LABEL_48;
            }

            goto LABEL_59;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      goto LABEL_52;
    }

    goto LABEL_50;
  }

LABEL_65:
  if (qword_100766FD0 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for Logger();
  sub_100003E30(v117, qword_100771CF0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  v118 = "Unknown pinnedList type";
  v119 = 23;
LABEL_72:
  sub_1003F9818(v118, v119, 2);
  __break(1u);
}

uint64_t sub_10002C688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10002C6F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;

  LOBYTE(v3) = sub_10002C7AC(v5, v4);

  if ((v3 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10002C7C0(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_100003540(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_10002CA28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_dynamicDateGlyphCache;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_dynamicDateGlyphCache);
  if (v3)
  {
  }

  else
  {
    if (qword_100766FD0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100771CF0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "TTRIDynamicDateGlyphCache did not get passed down to TTRIPinnedListControl", v7, 2u);
    }

    type metadata accessor for TTRIDynamicDateGlyphCache();
    swift_allocObject();
    v3 = TTRIDynamicDateGlyphCache.init()();
    *(v1 + v2) = v3;
  }

  return v3;
}

Class sub_10002CB60(uint64_t a1, void *a2)
{
  type metadata accessor for TTRIDateIconGenerator();
  swift_allocObject();
  TTRIDateIconGenerator.init()();
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  isa = TTRIDateIconGenerator.generateTodaySmartListTemplateIcon(withText:)(v4).super.isa;

  return isa;
}

void sub_10002CBD0()
{
  v1 = v0;
  v77 = type metadata accessor for TTRAccountsListsViewModel.List.Badge();
  v84 = *(v77 - 8);
  v2 = __chkstk_darwin(v77);
  v83 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v81 = &v73 - v4;
  v82 = type metadata accessor for TTRAccountsListsViewModel.List();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v73 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v73 - v13;
  sub_10002D5F8();
  v88 = [v0 tintColor];
  v14 = objc_opt_self();
  v85 = v14;
  v87 = [v14 systemGray4Color];
  v15 = [v14 ttr_systemWhiteColor];
  if (static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter())
  {
LABEL_2:
    v16 = *&v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel];
    if (v16)
    {
      v17 = v15;
      v18 = v88;
      v19 = v88;
      [v16 setTextColor:v17];
      v20 = *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel];
      if (v20)
      {
        v21 = v20;
        [v21 setTextColor:v17];
        v76 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }

  v22 = [v0 state];
  v23 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget;
  if ((v22 & 4) != 0)
  {
    v26 = [v0 state];
    if ((v0[v23] & 1) == 0 && (v26 & 0x10000) == 0)
    {
      if (v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor])
      {
        goto LABEL_2;
      }

      goto LABEL_12;
    }
  }

  v24 = [v0 state];
  if ((v0[v23] & 1) != 0 || (v24 & 0x10000) != 0)
  {
LABEL_12:
    v25 = v87;
    v27 = v87;
    goto LABEL_13;
  }

  v25 = 0;
LABEL_13:
  v28 = *&v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel];
  if (!v28)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v29 = v28;
  v30 = v85;
  v31 = [v85 secondaryLabelColor];
  [v29 setTextColor:v31];

  v32 = *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel];
  if (!v32)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v21 = v32;
  v17 = [v30 labelColor];
  [v21 setTextColor:v17];
  v76 = 0;
  v18 = v25;
LABEL_16:

  v33 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10002C688(&v1[v33], v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v35 = v86;
    (*(v10 + 32))(v86, v8, v9);
    v36 = v78;
    (*(v10 + 16))(v78, v35, v9);
    v37 = (*(v10 + 88))(v36, v9);
    v75 = v10;
    v74 = v18;
    if (v37 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      (*(v10 + 8))(v36, v9);
      v38 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
      v34 = v88;
      if ((v38 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v34 = v88;
      if (v37 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
      {
LABEL_61:
        if (qword_100766FD0 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_100003E30(v69, qword_100771CF0);
        sub_100008E04(&_swiftEmptyArrayStorage);
        sub_100008E04(&_swiftEmptyArrayStorage);
        v70 = "Unknown pinned List type";
        v71 = 24;
LABEL_67:
        sub_1003F9818(v70, v71, 2);
        __break(1u);
        return;
      }

      (*(v10 + 96))(v36, v9);
      (*(v80 + 32))(v79, v36, v82);
      v39 = v81;
      TTRAccountsListsViewModel.List.badge.getter();
      v41 = v83;
      v40 = v84;
      v42 = v77;
      (*(v84 + 16))(v83, v39, v77);
      v43 = (*(v40 + 88))(v41, v42);
      v44 = v43;
      v45 = enum case for TTRAccountsListsViewModel.List.Badge.image(_:);
      if (v43 != enum case for TTRAccountsListsViewModel.List.Badge.image(_:) && v43 != enum case for TTRAccountsListsViewModel.List.Badge.emoji(_:))
      {
        if (qword_100766FD0 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_100003E30(v72, qword_100771CF0);
        sub_100008E04(&_swiftEmptyArrayStorage);
        sub_100008E04(&_swiftEmptyArrayStorage);
        v70 = "Unknown badge type";
        v71 = 18;
        goto LABEL_67;
      }

      v46 = *(v84 + 8);
      v46(v81, v42);
      (*(v80 + 8))(v79, v82);
      v46(v83, v42);
      if ((static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter() & 1) == 0)
      {
        if (v44 != v45)
        {
          v49 = v34;
          v47 = [v85 clearColor];
          v50 = v47;
          goto LABEL_35;
        }

LABEL_27:
        if (v76)
        {
          v51 = v15;
        }

        else
        {
          v51 = v34;
        }

        if (v76)
        {
          v50 = v34;
        }

        else
        {
          v50 = v15;
        }

        v49 = v51;
        v52 = v50;
        v53 = v15;
        v47 = v34;
LABEL_35:
        v54 = v47;
        v55 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
        v56 = *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView];
        if (v56)
        {
          v57 = v56;
          dispatch thunk of TTRListBadgeView.imageColor.setter();

          v58 = *&v1[v55];
          if (v58)
          {
            [v58 setTintColor:v49];

            if ((static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter() & 1) == 0)
            {
              (*(v75 + 8))(v86, v9);

              goto LABEL_41;
            }

            v59 = *&v1[v55];
            if (v59)
            {
              v60 = v59;
              v61 = dispatch thunk of TTRListBadgeView.backgroundParams.modify();
              TTRListBadgeView.BackgroundParams.gradientVisibilityOverride.setter();
              v61(v89, 0);

              (*(v75 + 8))(v86, v9);
LABEL_41:
              v18 = v74;
              goto LABEL_42;
            }

            goto LABEL_60;
          }

          goto LABEL_57;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    v47 = [v85 clearColor];
    v48 = v15;
    v49 = v47;
    v50 = v15;
    goto LABEL_35;
  }

  sub_1000079B4(v8, &qword_100771DD0);
  v34 = v88;
LABEL_42:
  v62 = *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_gradientBackgroundView];
  if (v62)
  {
    if (v18)
    {
      v63 = v62;
      v64 = v18;
      dispatch thunk of TTRSingleColorGradientView.color.setter();
      v65 = v63;
      [v65 setAlpha:1.0];
    }

    else
    {
      v64 = v62;
      [v64 setAlpha:0.0];
    }
  }

  else
  {
    v66 = *&v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedListBackgroundView];
    if (v66)
    {
      v67 = v18;
      v68 = v66;
      TTRPinnedListBackgroundView.fillColor.setter();
      if (([v1 state] & 4) != 0)
      {
        [v1 state];
      }

      TTRPinnedListBackgroundView.isSelected.setter();

      v34 = v67;
    }

    else
    {

      v34 = v18;
    }
  }
}

void sub_10002D5F8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListColors.Color();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TTRAccountsListsViewModel.List();
  v46 = *(v52 - 8);
  __chkstk_darwin(v52);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v40 - v22;
  v24 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  v25 = &v1[v24];
  v26 = v1;
  sub_10002C688(v25, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &qword_100771DD0);
    return;
  }

  (*(v18 + 32))(v23, v16, v17);
  (*(v18 + 16))(v21, v23, v17);
  v27 = (*(v18 + 88))(v21, v17);
  if (v27 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v18 + 96))(v21, v17);
    v29 = v47;
    v28 = v48;
    v30 = v49;
    (*(v48 + 32))(v47, v21, v49);
    v31 = *&v26[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView];
    if (v31)
    {
      v32 = v31;
      TTRAccountsListsViewModel.SmartList.type.getter();
      (*(v50 + 104))(v11, enum case for TTRListBadgeView.ColorInfo.predefinedSmartListColor(_:), v51);
      dispatch thunk of TTRListBadgeView.listColorInfo.setter();

      v33 = v43;
      TTRAccountsListsViewModel.SmartList.type.getter();
      v34 = TTRListType.PredefinedSmartListType.color.getter();
      (*(v44 + 8))(v33, v45);
      [v26 setTintColor:v34];

      (*(v28 + 8))(v29, v30);
LABEL_9:
      (*(v18 + 8))(v23, v17);
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v27 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v18 + 96))(v21, v17);
    v35 = v46;
    (*(v46 + 32))(v13, v21, v52);
    v36 = *&v26[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView];
    if (v36)
    {
      v37 = v36;
      TTRAccountsListsViewModel.List.badgeColor.getter();
      (*(v50 + 104))(v11, enum case for TTRListBadgeView.ColorInfo.listColor(_:), v51);
      dispatch thunk of TTRListBadgeView.listColorInfo.setter();

      TTRAccountsListsViewModel.List.badgeColor.getter();
      v38 = TTRListColors.Color.nativeColor.getter();
      (*(v41 + 8))(v8, v42);
      [v26 setTintColor:v38];

      (*(v35 + 8))(v13, v52);
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (qword_100766FD0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100003E30(v39, qword_100771CF0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown pinned List type", 24, 2);
  __break(1u);
}

id sub_10002DD50(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10002DDA8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v52[-v7];
  v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v52[-v14];
  v16 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10002C688(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100771DD0);
    return;
  }

  (*(v10 + 32))(v15, v8, v9);
  v17 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView;
  v18 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView);
  if (!v18)
  {
    goto LABEL_37;
  }

  v59 = v15;
  v55 = v3;
  v58 = [v18 isHidden];
  v19 = *(v1 + v17);
  if (!v19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = v19;
  v21 = dispatch thunk of TTRListBadgeView.image.getter();

  v54 = v2;
  if (v21)
  {

    goto LABEL_10;
  }

  v22 = *(v1 + v17);
  if (!v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = v22;
  dispatch thunk of TTRListBadgeView.emoji.getter();
  v21 = v24;

  if (v21)
  {

LABEL_10:
    v25 = 1;
    v26 = *(v1 + v17);
    if (v26)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = 0;
  v26 = *(v1 + v17);
  if (!v26)
  {
    goto LABEL_34;
  }

LABEL_11:
  [v26 setHidden:v25 ^ 1u];
  v21 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView;
  v27 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView);
  if (!v27)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v56 = [v27 isHidden];
  v28 = *&v21[v1];
  if (!v28)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v29 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts;
  swift_beginAccess();
  v30 = *(v28 + v29);
  if (!(v30 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_35:
  v31 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:
  v57 = v31 != 0;
  v32 = *&v21[v1];
  if (!v32)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v32 setHidden:v31 == 0];
  v33 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView;
  v34 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView);
  if (!v34)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = [v34 isHidden];
  (*(v10 + 16))(v13, v59, v9);
  v36 = (*(v10 + 88))(v13, v9);
  v53 = v35;
  if (v36 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    if (v36 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
LABEL_45:
      if (qword_100766FD0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100003E30(v51, qword_100771CF0);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinned List type", 24, 2);
      __break(1u);
      return;
    }

    (*(v10 + 96))(v13, v9);
    v37 = v55;
    v38 = v13;
    v39 = v54;
    (*(v55 + 32))(v5, v38, v54);
    v40 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
    (*(v37 + 8))(v5, v39);
    if (v40)
    {
      v41 = 2;
      v42 = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
      goto LABEL_23;
    }
  }

  v42 = 0;
  v41 = 1;
LABEL_23:
  v43 = v57;
  v44 = *(v1 + v33);
  if (!v44)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v44 setHidden:(v42 & 1) == 0];
  if ((v25 | v43))
  {
    v41 = 2;
  }

  [*(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_secondRowStackView) setHidden:v41 < 2];
  if ((v58 ^ v25) == 1 && ((v56 ^ (v31 == 0)) & 1) == 0 && [*(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid) numberOfRows] == v41 && ((v53 ^ v42) & 1) == 0)
  {
    (*(v10 + 8))(v59, v9);
    return;
  }

  v45 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid);
  v46 = swift_allocObject();
  *(v46 + 16) = v1;
  *(v46 + 24) = v42 & 1;
  *(v46 + 25) = v25;
  *(v46 + 26) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_10002E99C;
  *(v47 + 24) = v46;
  aBlock[4] = sub_100026410;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100719A50;
  v48 = _Block_copy(aBlock);
  v49 = v1;

  [v45 performBatchUpdates:v48];
  _Block_release(v48);
  (*(v10 + 8))(v59, v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

uint64_t sub_10002E4F0()
{

  return _swift_deallocObject(v0, 27, 7);
}

uint64_t sub_10002E54C(uint64_t a1, char a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  v8 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid);
  if ([v8 numberOfRows] >= 1)
  {
    do
    {
      [v8 removeRowAtIndex:0];
    }

    while ([v8 numberOfRows] > 0);
  }

  v9 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_secondRowStackView;
  if (([*(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_secondRowStackView) isHidden] & 1) == 0)
  {
    if (a2)
    {
      sub_100058000(&qword_10076B780);
      if ((a3 & 1) == 0)
      {
        result = swift_allocObject();
        *(result + 16) = xmmword_10062D420;
        v4 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView);
        if (v4)
        {
LABEL_20:
          v12 = result;
          *(result + 32) = v4;
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_16;
      }

      result = swift_allocObject();
      *(result + 16) = xmmword_10062D410;
      v11 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
      if (!v11)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v12 = result;
      *(result + 32) = v11;
      v4 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_customSmartListIconImageView);
      if (v4)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4)
    {
      sub_100058000(&qword_10076B780);
      if (a3)
      {
        result = swift_allocObject();
        *(result + 16) = xmmword_10062D410;
        v11 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
        if (!v11)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v12 = result;
        *(result + 32) = v11;
        v4 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView);
        if (!v4)
        {
LABEL_43:
          __break(1u);
          return result;
        }

LABEL_13:
        v12[5] = v4;
        v13 = v11;
LABEL_21:
        v14 = v4;
LABEL_22:
        v15 = *(a1 + v9);
        NUIContainerView.setArrangedSubviewsIfChanged(_:)(v12);

        goto LABEL_23;
      }

LABEL_19:
      result = swift_allocObject();
      *(result + 16) = xmmword_10062D420;
      v4 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_stackedAvatarsView);
      if (!v4)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      goto LABEL_20;
    }

LABEL_16:
    if ((a3 & 1) == 0)
    {
      v12 = &_swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    sub_100058000(&qword_10076B780);
    result = swift_allocObject();
    *(result + 16) = xmmword_10062D420;
    v4 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
    if (v4)
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_23:
  sub_100058000(&qword_10076B780);
  result = swift_allocObject();
  *(result + 16) = xmmword_10062D410;
  if ((a3 & 1) == 0)
  {
LABEL_27:
    v16 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
    if (!v16)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(result + 32) = v16;
    v17 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel);
    if (!v17)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v16 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_badgeView);
  if (!v16)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(result + 32) = v16;
  v17 = *(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel);
  if (!v17)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  *(result + 40) = v17;
  sub_100003540(0, &qword_10076B020);
  v18 = v16;
  v19 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v8 addRowWithArrangedSubviews:isa];

  [v21 setAlignment:3];
  swift_unknownObjectRelease();
  result = [*(a1 + v9) isHidden];
  if ((result & 1) == 0)
  {
    sub_100058000(&qword_10076B780);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10062D410;
    v23 = *(a1 + v9);
    *(v22 + 32) = v23;
    *(v22 + 40) = v23;
    v24 = v23;
    v25 = Array._bridgeToObjectiveC()().super.isa;

    v26 = [v8 addRowWithArrangedSubviews:v25];

    [v8 setAlignment:0 forView:*(a1 + v9) inAxis:0];
    [v26 setAlignment:3];
    result = swift_unknownObjectRelease();
  }

  if (!*(a1 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_countLabel))
  {
    __break(1u);
    goto LABEL_37;
  }

  return [v8 setAlignment:4 forView:? inAxis:?];
}

uint64_t sub_10002E9C4(double a1, double a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_100108794();
    v5 = FloatingPoint.rescaledAlmostEqual(to:tolerance:)();
  }

  else
  {
    v3 = fabs(a3);
    v4 = fabs(a1);
    if (v3 <= v4)
    {
      v3 = v4;
    }

    if (v3 <= 2.22507386e-308)
    {
      v3 = 2.22507386e-308;
    }

    v5 = vabdd_f64(a3, a1) < v3 * a2;
  }

  return v5 & 1;
}

uint64_t sub_10002EA78(int a1)
{
  v39 = a1;
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100058000(&qword_1007724A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38[-v8];
  v10 = sub_100058000(&qword_100771DD0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v44 = &v38[-v14];
  v15 = sub_100058000(&qword_10078D540);
  __chkstk_darwin(v15 - 8);
  v17 = &v38[-v16];
  v18 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.PinnedLists(0);
  v19 = *(v18 - 8);
  result = __chkstk_darwin(v18);
  v22 = &v38[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v1;
  if (!*(v1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_selectionRequestObserver))
  {
    __break(1u);
    goto LABEL_16;
  }

  TTRViewModelObserver.localValue.getter();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1000079B4(v17, &qword_10078D540);
  }

  sub_10002F0C0(v17, v22);
  sub_10000794C(v22, v9, &qword_1007724A0);
  v24 = v43;
  if ((*(v43 + 48))(v9, 1, v4) == 1)
  {
    v26 = v41;
    v25 = v42;
    v27 = v44;
    (*(v41 + 56))(v44, 1, 1, v42);
    v28 = v23;
    goto LABEL_8;
  }

  result = (*(v24 + 32))(v6, v9, v4);
  v29 = *(v23 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
  v27 = v44;
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v23;
  v30 = v24;
  v31 = *(v29 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists);
  __chkstk_darwin(result);
  *&v38[-16] = v6;

  sub_1002ECBA8(sub_1001C5E20, v31, v27);

  (*(v30 + 8))(v6, v4);
  v26 = v41;
  v25 = v42;
LABEL_8:
  sub_10000794C(v27, v13, &qword_100771DD0);
  v32 = (*(v26 + 48))(v13, 1, v25);
  v33 = v40;
  if (v32 != 1)
  {
    result = (*(v26 + 32))(v40, v13, v25);
    v36 = *(v28 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
    if (v36)
    {
      v37 = v36;
      sub_1003176FC(v33, v39 & 1);

      (*(v26 + 8))(v33, v25);
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  result = sub_1000079B4(v13, &qword_100771DD0);
  v34 = *(v28 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
  if (!v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = v34;
  sub_10002F124(v39 & 1);

LABEL_13:
  sub_1000079B4(v27, &qword_100771DD0);
  return sub_100029A60(v22, type metadata accessor for TTRIAccountsListsInnerSelectionRequest.PinnedLists);
}

void sub_10002F028()
{
  sub_100058000(&qword_1007724B0);
  v0 = TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10002EA78((v0 & 1) == 0);
  }
}

uint64_t sub_10002F0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.PinnedLists(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F124(char a1)
{
  v3 = sub_100058000(&qword_100771DD0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100771DD0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  result = sub_1000079B4(v8, &qword_100771DD0);
  if (v12 != 1)
  {
    v14 = objc_opt_self();
    if (a1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      v29 = sub_10031B4C4;
      v30 = v15;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10001047C;
      v28 = &unk_100720488;
      v16 = _Block_copy(&aBlock);
      v17 = v1;

      [v14 animateWithDuration:v16 animations:0.5];
      _Block_release(v16);
      v18 = 0;
    }

    else
    {
      v24 = v6;
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      v20 = swift_allocObject();
      v18 = sub_10031B48C;
      *(v20 + 16) = sub_10031B48C;
      *(v20 + 24) = v19;
      v29 = sub_100068444;
      v30 = v20;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100026440;
      v28 = &unk_100720438;
      v21 = _Block_copy(&aBlock);
      v22 = v1;

      [v14 performWithoutAnimation:v21];
      _Block_release(v21);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v6 = v24;
    }

    (*(v11 + 56))(v6, 1, 1, v10);
    swift_beginAccess();
    sub_10000D184(v6, v1 + v9, &qword_100771DD0);
    swift_endAccess();
    return sub_1000301AC(v18);
  }

  return result;
}

uint64_t sub_10002F4D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10002F528@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForPinnedListsContentView;
  result = sub_100025600();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002F55C(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

void sub_10002F6E4()
{
  v1 = v0;
  v2 = UICellConfigurationState.traitCollection.getter();
  v3 = [v2 _hasSplitViewControllerContextSidebarColumn];

  v4 = *(v1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView);
  if (v4)
  {
    v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus] = v3;
    v5 = v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor];
    v4[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor] = v3;
    if (v3 != v5)
    {
      v6 = v4;
      sub_1000265C4();
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_10002F7F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isInInsetGroupListEnvironment] = 0;
  v10 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_migrationButtonAccessory;
  type metadata accessor for MigrationButtonAccessory(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_accessoryState;
  v13 = sub_100058000(&qword_10077FF18);
  v14 = *(*(v13 - 8) + 56);
  v14(v11 + v12, 1, 1, v13);
  v15 = (v11 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler);
  *v15 = 0;
  v15[1] = 0;
  *(v11 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory____lazy_storage___migrationButton) = 0;
  *&v4[v10] = v11;
  v16 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_spinnerAccessory;
  type metadata accessor for SpinnerAccessory(0);
  v17 = swift_allocObject();
  v14(v17 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory_accessoryState, 1, 1, v13);
  *(v17 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory____lazy_storage___spinner) = 0;
  *&v4[v16] = v17;
  v14(&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_outlineDisclosureAccessory], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell____lazy_storage___spinner] = 0;
  v18 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account;
  v19 = type metadata accessor for TTRAccountsListsViewModel.Account();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = objc_allocWithZone(NSUserDefaults);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithSuiteName:v21];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isStoreDemoMode] = v24;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v26 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_migrationButtonAccessory;
  swift_beginAccess();
  v27 = *&v25[v26];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = (v27 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler);
  v30 = *(v27 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler);
  *v29 = sub_1003758DC;
  v29[1] = v28;

  sub_1000301AC(v30);

  return v25;
}

uint64_t sub_10002FB4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002FBA4()
{
  sub_100014A40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002FC68()
{
  sub_100014A40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10002FEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002FF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

char *sub_100030040(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TTRIAccountsListsCollectionListCell();
  v9 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100784750);
  swift_allocObject();
  v10 = v9;
  *&v10[OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver] = TTRViewModelObserver.init(didReceiveNewValue:)();

  return v10;
}

uint64_t sub_100030150()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000301AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000301BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    *(a1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_delegate + 8) = &off_10072E8B8;
    result = swift_unknownObjectWeakAssign();
    if (*&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v4 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v4)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000302D4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100784758);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_100058000(&qword_10076EA28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
    {

      TTRViewModelObserver.localValue.getter();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        return sub_1000079B4(v4, &qword_100784758);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        (*((swift_isaMask & *v10) + 0x78))(v8, a1);

        return (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100030500()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076B870);
  v3 = __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
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
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v12[*(v10 + 28)], v8, &unk_10077A660);
  v20 = sub_100058000(&qword_10077A670);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    sub_100030BD0(v12, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    return sub_1000079B4(v8, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_100030BD0(v12, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    (*(v21 + 8))(v8, v20);
    (*(v14 + 32))(v19, v17, v13);
    v23 = v26;
    TTRAccountsListsViewModel.Item.account.getter();
    v24 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account;
    swift_beginAccess();
    v25 = v27;
    sub_10000794C(v1 + v24, v27, &unk_10076B870);
    swift_beginAccess();
    sub_100030C30(v23, v1 + v24);
    swift_endAccess();
    sub_100030CA0(v25);
    sub_1000079B4(v25, &unk_10076B870);
    sub_1000079B4(v23, &unk_10076B870);
    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_100030908()
{
  v1 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_100029934(&v7[*(v5 + 28)], v3);
  v15 = sub_100058000(&qword_10077A670);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    sub_1000299A4(v7);
    return sub_1000079B4(v3, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v7);
    (*(v16 + 8))(v3, v15);
    (*(v9 + 32))(v14, v12, v8);
    TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
    v18 = String._bridgeToObjectiveC()();

    [v0 setAccessibilityIdentifier:v18];

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_100030BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076B870);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030CA0(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100780160);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &unk_10076B870);
  sub_10000794C(a1, &v12[v14], &unk_10076B870);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000079B4(v12, &unk_10076B870);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &unk_10076B870);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100780160);
    return sub_100030FEC();
  }

  v17 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_100031AC0(&qword_100780168, &type metadata accessor for TTRAccountsListsViewModel.Account);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v8, v3);
  result = sub_1000079B4(v12, &unk_10076B870);
  if ((v18 & 1) == 0)
  {
    return sub_100030FEC();
  }

  return result;
}

uint64_t sub_100030FEC()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  v22 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v21 = &v20 - v5;
  v6 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account;
  swift_beginAccess();
  sub_10000794C(v0 + v13, v8, &unk_10076B870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &unk_10076B870);
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = v21;
  sub_10003139C(v21);
  TTRAccountsListsViewModel.Account.name.getter();
  UIListContentConfiguration.text.setter();
  v16 = v22;
  v17 = *(v22 + 16);
  v17(v4, v15, v1);
  *(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized) = 1;
  v24[3] = v1;
  v24[4] = &protocol witness table for UIListContentConfiguration;
  v18 = sub_1000317B8(v24);
  v17(v18, v4, v1);
  UICollectionViewCell.contentConfiguration.setter();
  v19 = *(v16 + 8);
  v19(v4, v1);
  v23 = (TTRAccountsListsViewModel.Account.isTheOnlyAccount.getter() & 1) == 0;
  swift_beginAccess();
  type metadata accessor for OutlineDisclosureAccessory(0);
  sub_100031AC0(&qword_100780170, type metadata accessor for OutlineDisclosureAccessory);
  TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)();
  swift_endAccess();
  sub_100031E84();
  sub_100032168(v12);
  v19(v15, v1);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10003139C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100768860);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4 - 8];
  if (*(v1 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized))
  {
    UICollectionViewCell.contentConfiguration.getter();
    if (v13)
    {
      sub_100058000(&qword_10077A650);
      v6 = type metadata accessor for UIListContentConfiguration();
      v7 = swift_dynamicCast();
      v8 = *(v6 - 8);
      (*(v8 + 56))(v5, v7 ^ 1u, 1, v6);
      if ((*(v8 + 48))(v5, 1, v6) != 1)
      {
        return (*(v8 + 32))(a1, v5, v6);
      }
    }

    else
    {
      sub_1000079B4(v12, &qword_100768868);
      v6 = type metadata accessor for UIListContentConfiguration();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    }

    UICollectionViewListCell.defaultContentConfiguration()();
    type metadata accessor for UIListContentConfiguration();
    result = (*(*(v6 - 8) + 48))(v5, 1, v6);
    if (result != 1)
    {
      return sub_1000079B4(v5, &qword_100768860);
    }
  }

  else
  {
    v9 = *((swift_isaMask & *v1) + 0x118);

    return v9();
  }

  return result;
}

uint64_t sub_100031638()
{
  v1 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [v0 traitCollection];
  v6 = [v5 listEnvironment];

  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isInInsetGroupListEnvironment) = v6 == 4;
  if (v6 == 4)
  {
    static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  }

  else
  {
    static UIListContentConfiguration.header()();
  }

  UIListContentConfiguration.textProperties.getter();
  v7 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v2 + 8))(v4, v1);
  UIFont.withRoundedDesign()();

  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  return v8(v10, 0);
}

uint64_t *sub_1000317B8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10003198C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000319D4()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for TTRIAccountsListsCollectionListCell();
  return objc_msgSendSuper2(&v2, "invalidateIntrinsicContentSize");
}

void sub_100031A34()
{
  sub_100014A40();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_100031AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031B38()
{
  v0 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_100058000(&unk_10078A4D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v10);
  v14 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
  UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100031E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007800C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100031E84()
{
  v1 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TTRAccountsListsViewModel.Account.migrationState.getter();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:))
  {
    goto LABEL_7;
  }

  if (v5 == enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:))
  {
    goto LABEL_3;
  }

  if (v5 == enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:))
  {
    goto LABEL_9;
  }

  if (v5 == enum case for TTRCloudKitMigrationManager.MigrationState.error(_:))
  {
LABEL_7:
    if ((TTRAccountsListsViewModel.Account.isShownInUpgradeHintCard.getter() & 1) == 0 && *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isStoreDemoMode) != 1)
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
LABEL_10:
    v8[31] = v6;
    swift_beginAccess();
    type metadata accessor for MigrationButtonAccessory(0);
    sub_100031AC0(&qword_100780190, type metadata accessor for MigrationButtonAccessory);
    TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)();
    swift_endAccess();
    return;
  }

  if (v5 == enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:))
  {
LABEL_3:
    if ((TTRAccountsListsViewModel.Account.showsUpgradeForLocalOnlyAccount.getter() & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (qword_100767218 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10077FE88);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown migration state", 23, 2);
  __break(1u);
}

uint64_t sub_1000320F4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_10000794C(v4 + v5, a2, &qword_1007800C8);
}

void sub_100032168(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = __chkstk_darwin(v3);
  v73 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v72 = &v57 - v7;
  __chkstk_darwin(v6);
  v75 = &v57 - v8;
  v9 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v15 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  TTRAccountsListsViewModel.Account.networkActivity.getter();
  (*(v16 + 104))(v19, enum case for TTRCloudKitNetworkActivityMonitor.Activity.some(_:), v15);
  v74 = static TTRCloudKitNetworkActivityMonitor.Activity.== infix(_:_:)();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v65 = v22;
  v22(v21, v15);
  TTRAccountsListsViewModel.Account.migrationState.getter();
  v67 = v10;
  v68 = v9;
  v23 = (*(v10 + 88))(v14, v9);
  if (v23 == enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:) || v23 == enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:))
  {
    v25 = v75;
LABEL_11:
    v26 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_spinnerAccessory;
    swift_beginAccess();
    v76[0] = *(v1 + v26);
    v27 = type metadata accessor for SpinnerAccessory(0);
    v71 = sub_100031AC0(&qword_100780178, type metadata accessor for SpinnerAccessory);
    v28 = TTRICollectionViewManagedCellAccessory.isInstalled.getter();
    v29 = v74 & 1;
    if ((v74 & 1) != (v28 & 1))
    {
      v62 = v74 & 1;
      v63 = v27;
      v64 = v1;
      if (qword_100767218 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_10077FE88);
      v31 = v69;
      v32 = *(v69 + 16);
      v33 = v25;
      v34 = v70;
      v32(v33, a1, v70);
      v32(v72, a1, v34);
      v32(v73, a1, v34);
      v35 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v61))
      {
        v36 = v34;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v58 = v38;
        v60 = swift_slowAlloc();
        v76[0] = v60;
        *v37 = 138413058;
        v59 = v35;
        v39 = v75;
        v40 = TTRAccountsListsViewModel.Account.objectID.getter();
        v69 = *(v31 + 8);
        (v69)(v39, v36);
        *(v37 + 4) = v40;
        *v38 = v40;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v74 & 1;
        *(v37 + 18) = 2080;
        v41 = v66;
        v75 = v26;
        v42 = v72;
        TTRAccountsListsViewModel.Account.migrationState.getter();
        sub_100031AC0(&qword_100780180, &type metadata accessor for TTRCloudKitMigrationManager.MigrationState);
        v43 = v68;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v67 + 8))(v41, v43);
        v47 = v70;
        (v69)(v42, v70);
        v48 = sub_100004060(v44, v46, v76);

        *(v37 + 20) = v48;
        *(v37 + 28) = 2080;
        v49 = v73;
        TTRAccountsListsViewModel.Account.networkActivity.getter();
        sub_100031AC0(&qword_100780188, &type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v65(v21, v15);
        (v69)(v49, v47);
        v53 = sub_100004060(v50, v52, v76);

        *(v37 + 30) = v53;
        v54 = v59;
        _os_log_impl(&_mh_execute_header, v59, v61, "TTRIAccountsLists: update account spinner {account: %@, spinnerVisible: %{BOOL}d, migrationState: %s, networkActivityState: %s}", v37, 0x26u);
        sub_1000079B4(v58, &unk_10076DF80);

        swift_arrayDestroy();
      }

      else
      {

        v55 = *(v31 + 8);
        v55(v73, v34);
        v55(v72, v34);
        v55(v75, v34);
      }

      v29 = v62;
    }

    v77 = v29;
    swift_beginAccess();
    TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)();
    swift_endAccess();
    return;
  }

  v25 = v75;
  if (v23 == enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:))
  {
    v74 = 1;
    goto LABEL_11;
  }

  if (v23 == enum case for TTRCloudKitMigrationManager.MigrationState.error(_:) || v23 == enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:))
  {
    goto LABEL_11;
  }

  if (qword_100767218 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100003E30(v56, qword_10077FE88);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown migration state", 23, 2);
  __break(1u);
}

void sub_100032ACC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, "_bridgedUpdateConfigurationUsingState:", isa);

  v19 = UICellConfigurationState.traitCollection.getter();
  v20 = [v19 listEnvironment];

  if ((v20 == 4) != v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isInInsetGroupListEnvironment])
  {
    v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isInInsetGroupListEnvironment] = v20 == 4;
    if (v20 == 4)
    {
      static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
    }

    else
    {
      static UIListContentConfiguration.header()();
    }

    UIListContentConfiguration.textProperties.getter();
    v21 = UIListContentConfiguration.TextProperties.font.getter();
    (*(v27 + 8))(v5, v28);
    UIFont.withRoundedDesign()();

    v22 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v22(v30, 0);
    (*(v7 + 32))(v17, v15, v6);
    sub_10003139C(v12);
    UIListContentConfiguration.text.getter();
    UIListContentConfiguration.text.setter();
    v23 = *(v7 + 16);
    v24 = v29;
    v23(v29, v17, v6);
    v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized] = 1;
    v30[3] = v6;
    v30[4] = &protocol witness table for UIListContentConfiguration;
    v25 = sub_1000317B8(v30);
    v23(v25, v24, v6);
    UICollectionViewCell.contentConfiguration.setter();
    v26 = *(v7 + 8);
    v26(v24, v6);
    v26(v12, v6);
    v26(v17, v6);
  }
}

uint64_t sub_100032F2C(uint64_t a1)
{
  v2 = v1;
  v25 = type metadata accessor for DisclosureIndicatorAccessory.InputConfiguration(0);
  __chkstk_darwin(v25);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LabelAccessory.InputConfiguration(0);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized;
  if ((v1[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized] & 1) == 0)
  {
    sub_10003139C(v11);
    v1[v12] = 1;
    v28[3] = v8;
    v28[4] = &protocol witness table for UIListContentConfiguration;
    v13 = sub_1000317B8(v28);
    (*(v9 + 16))(v13, v11, v8);
    UICollectionViewCell.contentConfiguration.setter();
    (*(v9 + 8))(v11, v8);
  }

  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v15 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView(0);
  v27.receiver = v2;
  v27.super_class = v15;
  objc_msgSendSuper2(&v27, "_bridgedUpdateConfigurationUsingState:", isa);

  v17 = *&v2[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
  v16 = *&v2[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 8];
  v18 = v2[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 16];
  v19 = *(v5 + 20);
  v20 = type metadata accessor for UICellConfigurationState();
  v21 = *(*(v20 - 8) + 16);
  v21(&v7[v19], a1, v20);
  *v7 = v17;
  *(v7 + 1) = v16;
  v7[16] = v18;
  swift_beginAccess();
  type metadata accessor for LabelAccessory(0);
  sub_1000335B8(&qword_100768870, type metadata accessor for LabelAccessory);

  TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)();
  sub_100033844(v7, type metadata accessor for LabelAccessory.InputConfiguration);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
  swift_beginAccess();
  v23 = v26;
  sub_10000794C(&v2[v22], v26, &qword_100768830);
  v21((v23 + *(v25 + 20)), a1, v20);
  swift_beginAccess();
  type metadata accessor for DisclosureIndicatorAccessory(0);
  sub_1000335B8(&qword_100768878, type metadata accessor for DisclosureIndicatorAccessory);
  TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)();
  sub_100033844(v23, type metadata accessor for DisclosureIndicatorAccessory.InputConfiguration);
  return swift_endAccess();
}

void sub_100033348()
{
  sub_100013E8C(319, &qword_1007683C8, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UICellConfigurationState();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t sub_10003344C()
{
  result = type metadata accessor for UICellConfigurationState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_100033520(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_100014068(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1000335B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100033628(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100033628(uint64_t *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v9 = type metadata accessor for LabelAccessory.InputConfiguration(0);
  (*(v3 + 16))(v5, a1 + *(v9 + 20), v2);
  if (v6)
  {
    if (v8)
    {

      v10 = UICellConfigurationState.isExpanded.getter();
      (*(v3 + 8))(v5, v2);
      if (v10)
      {

        return 0;
      }
    }

    else
    {
      v11 = *(v3 + 8);

      v11(v5, v2);
    }
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v7;
}

uint64_t sub_1000337D0(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_100033844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000338E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100768830);
  v11 = __chkstk_darwin(v10 - 8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - v14;
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  sub_10000794C(a1, &v31 - v16, &qword_100768830);
  v18 = type metadata accessor for DisclosureIndicatorAccessory.InputConfiguration(0);
  (*(v7 + 16))(v9, a1 + *(v18 + 20), v6);
  sub_10000794C(v17, v15, &qword_100768830);
  v19 = *(v4 + 48);
  if (v19(v15, 1, v3) == 1)
  {
    (*(v7 + 8))(v9, v6);
    sub_1000079B4(v15, &qword_100768830);
LABEL_3:
    v20 = v17;
    goto LABEL_10;
  }

  v21 = v15;
  v22 = v33;
  sub_10003778C(v21, v33, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
  if (*(v22 + *(v3 + 20)) == 1)
  {
    v23 = UICellConfigurationState.traitCollection.getter();
    v24 = [v23 _hasSplitViewControllerContextSidebarColumn];

    sub_100033844(v22, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    (*(v7 + 8))(v9, v6);
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100033844(v22, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    (*(v7 + 8))(v9, v6);
  }

  v25 = v32;
  sub_1000380F4(v17, v32);
  if (v19(v25, 1, v3) != 1)
  {
    v28 = type metadata accessor for UICellAccessory.DisplayedState();
    v29 = *(v28 - 8);
    v30 = v34;
    (*(v29 + 16))(v34, v25, v28);
    sub_100033844(v25, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    return (*(v29 + 56))(v30, 0, 1, v28);
  }

  v20 = v25;
LABEL_10:
  sub_1000079B4(v20, &qword_100768830);
  v26 = type metadata accessor for UICellAccessory.DisplayedState();
  return (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
}

uint64_t sub_100033D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100033E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    v5 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *sub_10003404C(char *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v4 = sub_100058000(&qword_100768830);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v59 - v8;
  v9 = type metadata accessor for UICellAccessory.ReorderOptions();
  v79 = *(v9 - 8);
  __chkstk_darwin(v9);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UICellAccessory.DetailOptions();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v12 - 8);
  v74 = &v59 - v13;
  v72 = type metadata accessor for UICellAccessory.DeleteOptions();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v15 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = v16;
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICellAccessory.DisplayedState();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v80 = result;
    [a1 setIndentsAccessories:0];
    sub_100058000(&unk_10077C050);
    v23 = *(type metadata accessor for UICellAccessory() - 8);
    v64 = *(v23 + 72);
    v24 = *(v23 + 80);
    v68 = v7;
    v25 = (v24 + 32) & ~v24;
    v66 = 2 * v64;
    v26 = swift_allocObject();
    v67._rawValue = v26;
    v26[1] = xmmword_10062F800;
    v82 = v26 + v25;
    v83 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
    v88 = v18;
    v89 = v19;
    v27 = *(v19 + 104);
    v84 = v19 + 104;
    v85 = v27;
    v27(v21);
    v28 = swift_allocObject();
    v69 = a1;
    v29 = v28;
    swift_unknownObjectWeakInit();
    v63 = *(v15 + 16);
    v59 = v17;
    v30 = v86;
    v63(v17, v90, v86);
    v31 = *(v15 + 80);
    v65 = v9;
    v32 = (v31 + 24) & ~v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    v62 = *(v15 + 32);
    v62(v33 + v32, v17, v30);
    v60 = type metadata accessor for UICellAccessory.LayoutDimension();
    v34 = *(v60 - 8);
    v81 = *(v34 + 56);
    v61 = v34 + 56;
    v35 = v74;
    v81(v74, 1, 1, v60);

    v80 = v80;
    v36 = v70;
    UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.delete(displayed:options:actionHandler:)();

    (*(v71 + 8))(v36, v72);
    v37 = v88;
    v38 = *(v89 + 8);
    v89 += 8;
    v38(v21, v88);

    v85(v21, v83, v37);
    v39 = swift_allocObject();
    v40 = v80;
    swift_unknownObjectWeakInit();

    v41 = v59;
    v42 = v86;
    v63(v59, v90, v86);
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    v62(v43 + v32, v41, v42);
    v44 = v60;
    v81(v35, 1, 1, v60);

    v45 = v75;
    UICellAccessory.DetailOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.detail(displayed:options:actionHandler:)();

    (*(v76 + 8))(v45, v77);
    v46 = v88;
    v47 = v38;
    v38(v21, v88);
    v48 = v69;

    v49 = v85;
    v85(v21, v83, v46);
    v81(v35, 1, 1, v44);
    v50 = v78;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v79 + 8))(v50, v65);
    v51 = v21;
    v52 = v88;
    v47(v51, v88);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v67);

    *&v48[OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_delegate + 8] = &off_10072E7C0;
    v53 = v80;
    swift_unknownObjectWeakAssign();
    v54 = v73;
    v49(v73, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v52);
    v55 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
    *(v54 + *(v55 + 20)) = 1;
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
    swift_beginAccess();
    v57 = v68;
    sub_10000794C(&v48[v56], v68, &qword_100768830);
    swift_beginAccess();
    sub_100019180(v54, &v48[v56], &qword_100768830);
    swift_endAccess();
    sub_100034B14(v57);
    sub_1000079B4(v57, &qword_100768830);
    result = sub_1000079B4(v54, &qword_100768830);
    if (*&v53[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v58 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v58)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*&v48[OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver])
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

id sub_100034B14(uint64_t a1)
{
  v23 = a1;
  v2 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100768830);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100058000(&qword_100768858);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v22 = v1;
  sub_10000794C(v1 + v13, v12, &qword_100768830);
  sub_10000794C(v23, &v12[v14], &qword_100768830);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_1000079B4(v12, &qword_100768830);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &qword_100768830);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_100033844(v8, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
LABEL_6:
    v17 = &qword_100768858;
LABEL_7:
    sub_1000079B4(v12, v17);
    return [v22 setNeedsUpdateConfiguration];
  }

  sub_10003778C(&v12[v14], v5, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
  if ((static UICellAccessory.DisplayedState.== infix(_:_:)() & 1) == 0)
  {
    sub_100033844(v5, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    sub_100033844(v8, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    v17 = &qword_100768830;
    goto LABEL_7;
  }

  v18 = *(v2 + 20);
  v19 = v8[v18];
  v20 = v5[v18];
  sub_100033844(v5, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
  sub_100033844(v8, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
  result = sub_1000079B4(v12, &qword_100768830);
  if (v19 != v20)
  {
    return [v22 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_100034E70()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10078D450);
  v3 = __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
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
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
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
    (*(v14 + 32))(v19, v17, v13);
    v23 = v26;
    TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
    v24 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
    swift_beginAccess();
    v25 = v27;
    sub_10000794C(v1 + v24, v27, &unk_10078D450);
    swift_beginAccess();
    sub_100019180(v23, v1 + v24, &unk_10078D450);
    swift_endAccess();
    sub_100035258(v25);
    sub_1000079B4(v25, &unk_10078D450);
    sub_1000079B4(v23, &unk_10078D450);
    return (*(v14 + 8))(v19, v13);
  }
}

void sub_100035258(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100058000(&qword_10077EC20);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &unk_10078D450);
  sub_10000794C(a1, &v12[v14], &unk_10078D450);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000079B4(v12, &unk_10078D450);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &unk_10078D450);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_10077EC20);
LABEL_7:
    sub_1000355A4();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_100037DE4(&qword_10077EC28, &type metadata accessor for TTRAccountsListsViewModel.List);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1000079B4(v12, &unk_10078D450);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1000355A4()
{
  v1 = type metadata accessor for AppEntityID();
  v82 = *(v1 - 8);
  v83 = v1;
  __chkstk_darwin(v1);
  v81 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100768848);
  v4 = __chkstk_darwin(v3 - 8);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v64 - v6;
  v76 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListColors.Color();
  __chkstk_darwin(v8 - 8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TTRListDetailBadgeViewModel();
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for TTRAccountsListsViewModel.List.Badge();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRListDetailViewModelBadge();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = __chkstk_darwin(v12);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = (&v64 - v15);
  v16 = type metadata accessor for UIListContentConfiguration();
  v89 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v68 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v21 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v21 - 8);
  v23 = &v64 - v22;
  v24 = type metadata accessor for TTRAccountsListsViewModel.List();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  swift_beginAccess();
  sub_10000794C(&v0[v28], v23, &unk_10078D450);
  v84 = v25;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1000079B4(v23, &unk_10078D450);
    return;
  }

  v29 = *(v84 + 32);
  v66 = v24;
  v29(v27, v23, v24);
  v30 = v0;
  sub_10003139C(v20);
  TTRAccountsListsViewModel.List.name.getter();
  UIListContentConfiguration.text.setter();
  TTRAccountsListsViewModel.List.sharingStatusText.getter();
  UIListContentConfiguration.secondaryText.setter();
  v31 = v89;
  v32 = *(v89 + 16);
  v33 = v68;
  v32(v68, v20, v16);
  v0[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized] = 1;
  v90[3] = v16;
  v90[4] = &protocol witness table for UIListContentConfiguration;
  v34 = sub_1000317B8(v90);
  v32(v34, v33, v16);
  UICollectionViewCell.contentConfiguration.setter();
  v35 = *(v31 + 8);
  v35(v33, v16);
  v36 = v69;
  TTRAccountsListsViewModel.List.badge.getter();
  v37 = v70;
  v38 = v71;
  v39 = (*(v70 + 88))(v36, v71);
  v67 = v16;
  v89 = v31 + 8;
  v65 = v20;
  v64 = v35;
  if (v39 == enum case for TTRAccountsListsViewModel.List.Badge.image(_:))
  {
    (*(v37 + 96))(v36, v38);
    v40 = v85;
    *v85 = *v36;
    v41 = &enum case for TTRListDetailViewModelBadge.emblem(_:);
LABEL_7:
    v43 = v86;
    v44 = v87;
    (*(v86 + 104))(v40, *v41, v87);
    TTRAccountsListsViewModel.List.badgeName.getter();
    TTRAccountsListsViewModel.List.badgeColor.getter();
    (*(v43 + 16))(v72, v40, v44);
    v45 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
    v46 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:);
    if ((v45 & 1) == 0)
    {
      v46 = &enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
    }

    (*(v75 + 104))(v74, *v46, v76);
    v47 = v79;
    TTRListDetailBadgeViewModel.init(badgeName:badgeColor:badge:badgeDisplayStyle:)();
    v48 = v80;
    v49 = v77;
    (*(v80 + 16))(v77, v47, v88);
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
    swift_beginAccess();
    v52 = v78;
    sub_10000794C(&v30[v51], v78, &qword_100768848);
    swift_beginAccess();
    sub_100019180(v49, &v30[v51], &qword_100768848);
    swift_endAccess();
    sub_100036640(v52);
    sub_1000079B4(v52, &qword_100768848);
    sub_1000079B4(v49, &qword_100768848);
    v53 = TTRAccountsListsViewModel.List.countText.getter();
    v55 = &v30[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
    v56 = *&v30[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
    v57 = *&v30[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 8];
    v58 = v30[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 16];
    *v55 = v53;
    *(v55 + 1) = v54;
    v55[16] = 0;
    v59 = v65;
    if (!v57 || (v53 != v56 || v57 != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v58 & 1) != 0)
    {
      [v30 setNeedsUpdateConfiguration];
    }

    v60 = TTRAccountsListsViewModel.List.objectID.getter();
    type metadata accessor for ListEntity();
    v61 = v60;
    v62 = v81;
    AppEntityID.init(objectID:)();
    sub_100037DE4(&qword_100771DE8, &type metadata accessor for ListEntity);
    UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

    (*(v82 + 8))(v62, v83);
    (*(v48 + 8))(v47, v88);
    (*(v86 + 8))(v85, v87);
    v64(v59, v67);
    (*(v84 + 8))(v27, v66);
    return;
  }

  if (v39 == enum case for TTRAccountsListsViewModel.List.Badge.emoji(_:))
  {
    (*(v37 + 96))(v36, v38);
    v42 = v36[1];
    v40 = v85;
    *v85 = *v36;
    v40[1] = v42;
    v41 = &enum case for TTRListDetailViewModelBadge.emoji(_:);
    goto LABEL_7;
  }

  if (qword_1007671E8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100003E30(v63, qword_10077EBC0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown badge type", 18, 2);
  __break(1u);
}

uint64_t sub_100036110()
{
  v0 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UICollectionViewListCell.defaultContentConfiguration()();
  v4 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v4(v16, 0);
  v5 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.lineBreakMode.setter();
  v5(v16, 0);
  UIListContentConfiguration.textProperties.getter();
  v6 = UIListContentConfiguration.TextProperties.font.getter();
  v7 = *(v1 + 8);
  v7(v3, v0);
  UIFont.withRoundedDesign()();

  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v8(v16, 0);
  UIListContentConfiguration.secondaryTextProperties.getter();
  v9 = UIListContentConfiguration.TextProperties.font.getter();
  v7(v3, v0);
  UIFont.withRoundedDesign()();

  v10 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v10(v16, 0);
  v11 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v11(v16, 0);
  v12 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.lineBreakMode.setter();
  v12(v16, 0);
  v13 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v13(v16, 0);
  v14 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  return v14(v16, 0);
}

uint64_t sub_1000363FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void **sub_100036468(void **a1, void **a2)
{
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v6 = v5[5];
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    v7 = v4;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *(a2 + v6);
      *(a1 + v6) = v8;
      v9 = v8;
    }

    else
    {
      v11 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v11 - 8) + 16))(a1 + v6, a2 + v6, v11);
    }

    swift_storeEnumTagMultiPayload();
    v12 = v5[6];
    v13 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
    v14 = v5[7];
    v15 = type metadata accessor for TTRListBadgeView.ImageParams();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  }

  else
  {
    v10 = type metadata accessor for TTRListDetailBadgeViewModel();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100036640(uint64_t a1)
{
  v46 = a1;
  v2 = type metadata accessor for UIListContentConfiguration();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = __chkstk_darwin(v2);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v39 - v5;
  v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100768848);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_100058000(&qword_100768850);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v19 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v45 = v1;
  sub_10000794C(v1 + v19, v18, &qword_100768848);
  sub_10000794C(v46, &v18[v20], &qword_100768848);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      return sub_1000079B4(v18, &qword_100768848);
    }

    goto LABEL_6;
  }

  sub_10000794C(v18, v14, &qword_100768848);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_100033844(v14, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration);
LABEL_6:
    sub_1000079B4(v18, &qword_100768850);
    goto LABEL_7;
  }

  v32 = v40;
  sub_10003778C(&v18[v20], v40, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration);
  v33 = sub_1000603E4(v14, v32);
  sub_100033844(v32, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration);
  sub_100033844(v14, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration);
  result = sub_1000079B4(v18, &qword_100768848);
  if ((v33 & 1) == 0)
  {
LABEL_7:
    v23 = v42;
    v24 = v45;
    sub_10003139C(v42);
    sub_10000794C(v24 + v19, v12, &qword_100768848);
    v25 = v21(v12, 1, v6);
    sub_1000079B4(v12, &qword_100768848);
    v26 = UIListContentConfiguration.image.getter();
    if (qword_100766E90 == -1)
    {
      v27 = v43;
      if (v26)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v34 = v26;
      swift_once();
      v26 = v34;
      v27 = v43;
      if (v34)
      {
LABEL_9:
        v28 = qword_100768360;
        v29 = v26;

        v30 = v28 != v29;
        v31 = v44;
        if ((((v25 != 1) ^ v30) & 1) == 0)
        {
          if (v25 == 1)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    v31 = v44;
    if (v25 != 1)
    {
LABEL_16:
      v35 = qword_100768360;
LABEL_17:
      UIListContentConfiguration.image.setter();
      v36 = *(v27 + 16);
      v37 = v41;
      v36(v41, v23, v31);
      *(v24 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized) = 1;
      v47[3] = v31;
      v47[4] = &protocol witness table for UIListContentConfiguration;
      v38 = sub_1000317B8(v47);
      v36(v38, v37, v31);
      UICollectionViewCell.contentConfiguration.setter();
      (*(v27 + 8))(v37, v31);
    }

LABEL_18:
    sub_100036DCC();
    return (*(v27 + 8))(v23, v31);
  }

  return result;
}

uint64_t sub_100036BBC(id *a1)
{
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v3 = v2[5];
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v8 - 8) + 8))(a1 + v3, v8);
    }

    v9 = v2[6];
    v10 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v10 - 8) + 8))(a1 + v9, v10);
    v11 = v2[7];
    v6 = type metadata accessor for TTRListBadgeView.ImageParams();
    v5 = *(*(v6 - 8) + 8);
    v7 = (a1 + v11);
  }

  else
  {
    v4 = type metadata accessor for TTRListDetailBadgeViewModel();
    v5 = *(*(v4 - 8) + 8);
    v6 = v4;
    v7 = a1;
  }

  return v5(v7, v6);
}

void sub_100036D2C()
{
  sub_100003540(0, &qword_10076FCB0);
  v0 = [objc_opt_self() clearColor];
  v1 = static UIImage.image(color:size:)();

  v2 = [v1 imageWithRenderingMode:1];
  qword_100768360 = v2;
}

void sub_100036DCC()
{
  v1 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  __chkstk_darwin(v1 - 8);
  v64 = (&v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TTRListDetailViewModelBadge();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100768848);
  __chkstk_darwin(v8 - 8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - v16;
  __chkstk_darwin(v15);
  v19 = (&v58 - v18);
  v20 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  swift_beginAccess();
  v21 = v0;
  sub_10000794C(v0 + v20, v10, &qword_100768848);
  v22 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  if ((*(*(v22 - 8) + 48))(v10, 1, v22))
  {
    sub_1000079B4(v10, &qword_100768848);
    v23 = v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews;
    v24 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews);
    if (v24)
    {
      v25 = *(v23 + 8);
      v26 = v24;
      v27 = v25;
      [v26 removeFromSuperview];

      v28 = *v23;
      v29 = *(v23 + 8);
      *v23 = 0;
      *(v23 + 8) = 0;
      sub_100037C04(v28, v29);
    }

    return;
  }

  v30 = v64;
  v59 = v7;
  sub_100037554(v10, v17, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  sub_1000079B4(v10, &qword_100768848);
  sub_10003778C(v17, v19, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  sub_1000377F4();
  sub_100037554(v19, v14, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003778C(v14, v30, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
    v31 = v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews;
    v32 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews);
    if (v32)
    {
      v33 = *(v31 + 8);
      sub_100037C44(*(v21 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews), v33);
      v34 = v33;
      sub_100037C04(v32, v33);
      sub_10005C5C4(v30);
    }

    sub_100033844(v30, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
    v35 = v19;
    goto LABEL_24;
  }

  v64 = v19;
  v37 = v59;
  v36 = v60;
  (*(v60 + 32))(v59, v14, v5);
  v38 = v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews;
  v39 = *v38;
  if (*v38)
  {
    v40 = *(v38 + 8);
    sub_100037C44(*v38, v40);
    v41 = v40;
    sub_100037C04(v39, v40);
    TTRListBadgeView.configure(with:customSmartListShape:)();
  }

  v42 = v61;
  TTRListDetailBadgeViewModel.badge.getter();
  v44 = v62;
  v43 = v63;
  v45 = (*(v62 + 88))(v42, v63);
  if (v45 == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v44 + 96))(v42, v43);
    v46 = *v42;
    v47 = *v38;
    if (*v38)
    {
      v48 = *(v38 + 8);
      sub_100037C44(*v38, v48);
      v49 = v48;
      sub_100037C04(v47, v48);
      REMListBadgeEmblem.name.getter();
      dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();

      v46 = v49;
    }

    v50 = v64;

    (*(v36 + 8))(v37, v5);
    v35 = v50;
    goto LABEL_24;
  }

  if (v45 == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v44 + 96))(v42, v43);
    v51 = *v38;
    if (*v38)
    {
      v52 = *(v38 + 8);
      sub_100037C44(v51, v52);
      v53 = v52;
      sub_100037C04(v51, v52);
      dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
    }

    else
    {
    }

    (*(v36 + 8))(v37, v5);
    v35 = v64;
LABEL_24:
    sub_100033844(v35, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
    return;
  }

  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100003E30(v54, qword_1007A86A0);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Accessibility description could not be generated for badge type.", v57, 2u);
  }

  (*(v36 + 8))(v37, v5);
  sub_100033844(v64, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  (*(v44 + 8))(v42, v43);
}

uint64_t sub_100037554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void **sub_1000375BC(void **a1, void **a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v6 = v5[5];
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    v7 = v4;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *(a2 + v6);
      *(a1 + v6) = v8;
      v9 = v8;
    }

    else
    {
      v11 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v11 - 8) + 16))(a1 + v6, a2 + v6, v11);
    }

    swift_storeEnumTagMultiPayload();
    v12 = v5[6];
    v13 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
    v14 = v5[7];
    v15 = type metadata accessor for TTRListBadgeView.ImageParams();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  }

  else
  {
    v10 = type metadata accessor for TTRListDetailBadgeViewModel();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10003778C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000377F4()
{
  v1 = &v0[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews];
  if (!*&v0[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews])
  {
    v33 = [v0 contentView];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2 && (v3 = [v2 imageLayoutGuide]) != 0)
    {
      v4 = v3;
      type metadata accessor for TTRListBadgeView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_100058000(&qword_10076B780);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10062D420;
      *(v6 + 32) = v5;
      v7 = objc_allocWithZone(type metadata accessor for TTRNoAnimationContainerBoxView());
      sub_100003540(0, &qword_10076B020);
      v8 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v7 initWithArrangedSubviews:isa];

      v11 = v10;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [v0 contentView];
      [v12 addSubview:v11];

      v13 = *v1;
      v14 = *(v1 + 1);
      *v1 = v11;
      *(v1 + 1) = v8;
      v15 = v8;
      v16 = v11;
      sub_100037C04(v13, v14);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10062D450;
      v18 = [v4 topAnchor];
      v19 = [v16 topAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v17 + 32) = v20;
      v21 = [v4 leadingAnchor];
      v22 = [v16 leadingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v17 + 40) = v23;
      v24 = [v4 bottomAnchor];
      v25 = [v16 bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];

      *(v17 + 48) = v26;
      v27 = [v4 trailingAnchor];
      v28 = [v16 trailingAnchor];

      v29 = [v27 constraintEqualToAnchor:v28];
      *(v17 + 56) = v29;
      v30 = objc_opt_self();
      sub_100003540(0, &qword_10076BAD0);
      v31 = Array._bridgeToObjectiveC()().super.isa;

      [v30 activateConstraints:v31];

      v32 = v31;
    }

    else
    {
      v32 = v33;
    }
  }
}

void sub_100037C04(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_100037C44(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_100037C84(id *a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v3 = v2[5];
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v8 - 8) + 8))(a1 + v3, v8);
    }

    v9 = v2[6];
    v10 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v10 - 8) + 8))(a1 + v9, v10);
    v11 = v2[7];
    v6 = type metadata accessor for TTRListBadgeView.ImageParams();
    v5 = *(*(v6 - 8) + 8);
    v7 = (a1 + v11);
  }

  else
  {
    v4 = type metadata accessor for TTRListDetailBadgeViewModel();
    v5 = *(*(v4 - 8) + 8);
    v6 = v4;
    v7 = a1;
  }

  return v5(v7, v6);
}

uint64_t sub_100037DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100037E2C(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  v2 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for UICellAccessory.LabelOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v9);
  v13 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_100003540(0, &qword_100771DF0);
  static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
  static UICellAccessory.label(text:displayed:options:)();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000380F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100768830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038164()
{
  v0 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  return (*(v4 + 8))(v6, v3);
}

id sub_100038350()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  [v0 bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = *&v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_gradientBackgroundView];
  if (v9 || (v9 = *&v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedListBackgroundView]) != 0)
  {
    [v9 setFrame:{v1, v2, v3, v4}];
  }

  return [*&v0[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid] setFrame:{v5, v6, v7, v8}];
}

void sub_10003843C(char a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100015960();
    sub_10055D1DC(a1 & 1);
    sub_1000165F0();
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1000384C0(char a1, id a2)
{
  if (a1)
  {
    v2 = [a2 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = [a2 toolbarItems];
    if (v3)
    {
LABEL_5:
      sub_100003540(0, &qword_10076B800);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_1000182E0(&OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView____lazy_storage___addListButton, sub_100018344);
      v8 = v5;
      __chkstk_darwin(v5);
      v7[2] = &v8;
      LOBYTE(v3) = sub_10000C108(sub_1000386A4, v7, v4);
    }
  }

  return v3 & 1;
}

uint64_t sub_100038760()
{
  v48 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v1 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_10076BA58);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v5 = v37 - v4;
  v6 = sub_100058000(&qword_10076B9C8);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = v37 - v7;
  v9 = sub_100058000(&unk_10076B880);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - v11;

  TTRAccountsListsViewModel.accountCollection.getter();

  swift_getOpaqueTypeConformance2();
  v13 = dispatch thunk of Collection.count.getter();
  if (!v13)
  {
    (*(v10 + 8))(v12, v9);
    v19 = &_swiftEmptyArrayStorage;
LABEL_9:
    v35 = swift_allocObject();
    swift_weakInit();
    isa = sub_100038E84(v19, sub_100452B20, v35).super.super.isa;

    return isa;
  }

  v14 = v13;
  v43 = v1;
  v38 = v10;
  v50 = &_swiftEmptyArrayStorage;
  sub_100038C5C(0, v13 & ~(v13 >> 63), 0);
  v15 = v50;
  v16 = v8;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v37[1] = v0;
    v18 = v43++;
    v44 = (v18 + 2);
    v19 = v15;
    v41 = v16;
    v42 = v12;
    do
    {
      v20 = dispatch thunk of Collection.subscript.read();
      v21 = v45;
      v22 = *v44;
      v23 = v5;
      v24 = v48;
      (*v44)(v45);
      v20(v49, 0);
      (v22)(v23, v21, v24);
      v25 = TTRAccountsListsViewModel.Account.name.getter();
      v26 = v9;
      v28 = v27;
      v29 = v24;
      v5 = v23;
      (*v43)(v21, v29);
      v30 = (v23 + *(v47 + 28));
      *v30 = v25;
      v30[1] = v28;
      v50 = v19;
      v32 = v19[2];
      v31 = v19[3];
      if (v32 >= v31 >> 1)
      {
        sub_100038C5C(v31 > 1, v32 + 1, 1);
        v19 = v50;
      }

      v19[2] = v32 + 1;
      sub_100016588(v23, v19 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, &qword_10076BA58);
      v33 = v41;
      v34 = v42;
      dispatch thunk of Collection.formIndex(after:)();
      --v14;
      v9 = v26;
    }

    while (v14);
    (*(v39 + 8))(v33, v40);
    (*(v38 + 8))(v34, v26);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}