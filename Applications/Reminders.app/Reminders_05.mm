void *assignWithCopy for TTRIGroupMembershipViewController.Argument(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v4;
  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v7 = v5;

  return a1;
}

__n128 initializeWithTake for TTRIGroupMembershipViewController.Argument(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIGroupMembershipViewController.Argument(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIGroupMembershipViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRIGroupMembershipViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100092798()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1000927F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100769FB8);
  v1 = sub_100003E30(v0, qword_100769FB8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000928BC()
{
  if (qword_100766ED0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_100769FB8);
  sub_1003F99F4(0xD000000000000015, 0x8000000100670120);
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

uint64_t sub_1000929B8()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100092A50, v3, v2);
}

uint64_t sub_100092A50()
{
  if (qword_100766ED0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100769FB8);
  sub_1003F99F4(0xD000000000000015, 0x8000000100670120);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong presentingViewController], v0[6] = v4, v3, v4))
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100092BB8;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100092BB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10001E828, v4, v3);
}

uint64_t sub_100092D2C()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowGroupPresenter()
{
  result = qword_10076A0A0;
  if (!qword_10076A0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100092E48(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100093330();
  v9 = [a2 list];
  v10 = [v9 objectID];

  v11 = [a3 objectID];
  LOBYTE(v9) = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRListEditor();
  static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)();
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:))
  {
    (*(v6 + 96))(v8, v5);
    v13 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation.DisallowReason();
    (*(*(v13 - 8) + 8))(v8, v13);
    return 0;
  }

  if (v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.move(_:) || v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.copyAndDelete(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_100093068()
{
  v1 = [*v0 account];
  v2 = [v1 capabilities];

  v3 = [v2 supportsSubtasks];
  return v3;
}

id sub_1000930D8@<X0>(id *a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();

  return v3;
}

id sub_100093138@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

BOOL sub_100093194()
{
  v0 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRListEditor();
  static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = v4;
  v6 = enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:);
  if (v4 == enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:))
  {
    goto LABEL_7;
  }

  if (v4 != enum case for TTRListEditor.ReminderParentListMutationOperation.move(_:) && v4 != enum case for TTRListEditor.ReminderParentListMutationOperation.copyAndDelete(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_7:
    (*(v1 + 96))(v3, v0);
    v8 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation.DisallowReason();
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  return v5 != v6;
}

unint64_t sub_100093330()
{
  result = qword_100775690;
  if (!qword_100775690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100775690);
  }

  return result;
}

uint64_t sub_10009337C()
{
  v1 = *(v0 + 32);
  v17 = 0;
  v2 = [v1 fetchAccountsWithError:&v17];
  v3 = v17;
  if (v2)
  {
    v4 = v2;
    sub_100003540(0, &qword_10076ABC8);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;
  }

  else
  {
    v7 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10076AAE8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_100058000(&qword_1007699F0);
      v13 = String.init<A>(describing:)();
      v15 = sub_100004060(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error fetching accounts in root interactor {error: %{public}s}", v11, 0xCu);
      sub_100004758(v12);
    }

    else
    {
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1000935C4()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_100093644(unint64_t a1)
{
  if (!a1)
  {
    if (qword_100766ED8 == -1)
    {
LABEL_22:
      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_10076AAE8);
      v4 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v21))
      {
LABEL_69:

        return 0;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Nil accounts. Returning nil postWelcomeScreen list";
LABEL_54:
      _os_log_impl(&_mh_execute_header, v4, v21, v23, v22, 2u);

      goto LABEL_69;
    }

LABEL_58:
    swift_once();
    goto LABEL_22;
  }

  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_50:
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_10076AAE8);
    v4 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v21))
    {
      goto LABEL_69;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No Account. Returning nil postWelcomeScreen list";
    goto LABEL_54;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_50;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_58;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!v2)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    if (*(v3 + 16) == 1)
    {
      goto LABEL_8;
    }

LABEL_60:
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100003E30(v52, qword_10076AAE8);

    v34 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      if (v2)
      {
        v55 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v54 + 4) = v55;

      _os_log_impl(&_mh_execute_header, v34, v53, "Store has more than 1 account. Returning nil postWelcomeScreen {accounts.count: %ld}", v54, 0xCu);

      goto LABEL_68;
    }

    return 0;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
    goto LABEL_60;
  }

LABEL_8:
  v61 = 0;
  v5 = [v4 fetchListsWithError:&v61];
  v6 = v61;
  if (!v5)
  {
    v24 = v61;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100766ED8 == -1)
    {
LABEL_25:
      v25 = type metadata accessor for Logger();
      sub_100003E30(v25, qword_10076AAE8);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v61 = v28;
        *v27 = 136446210;
        swift_errorRetain();
        sub_100058000(&qword_1007699F0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100004060(v29, v30, &v61);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v4, v26, "Failed to fetchPostWelcomeScreenNewReminderList {error: %{public}s}", v27, 0xCu);
        sub_100004758(v28);

        goto LABEL_69;
      }

      return 0;
    }

LABEL_80:
    swift_once();
    goto LABEL_25;
  }

  v7 = v5;
  sub_100003540(0, &qword_10076ABC0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v6;

  v10 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_72:

    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100003E30(v56, qword_10076AAE8);
    v57 = v4;
    v4 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138543362;
      *(v59 + 4) = v57;
      *v60 = v57;
      v38 = v57;
      _os_log_impl(&_mh_execute_header, v4, v58, "Account has no lists. Returning nil postWelcomeScreen list {account: %{public}@}", v59, 0xCu);
      sub_100094164(v60);

      goto LABEL_76;
    }

    goto LABEL_69;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_72;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v8 + 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_80;
  }

  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v12 = v11;
  if (v10)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_16:
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_10076AAE8);

    v14 = v4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 134218242;
      if (v10)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v19;

      *(v17 + 12) = 2114;
      *(v17 + 14) = v14;
      *v18 = v14;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Account has more than 1 list. Returning nil postWelcomeScreen list {lists.count: %ld, account: %{public}@}", v17, 0x16u);
      sub_100094164(v18);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  if ([v12 isGroup])
  {
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100003E30(v32, qword_10076AAE8);
    v33 = v12;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      v39 = "The list is a group. Returning nil postWelcomeScreen list {list: %{public}@}";
LABEL_40:
      _os_log_impl(&_mh_execute_header, v34, v35, v39, v36, 0xCu);
      sub_100094164(v37);

LABEL_76:
      return 0;
    }

LABEL_41:

LABEL_68:
    goto LABEL_69;
  }

  if ([v12 sharingStatus])
  {
    if (qword_100766ED8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100003E30(v40, qword_10076AAE8);
    v33 = v12;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      v39 = "The list is shared. Returning nil postWelcomeScreen list {list: %{public}@}";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (qword_100766ED8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100003E30(v42, qword_10076AAE8);
  v43 = v12;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = v43;

  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138543362;
    *(v47 + 4) = v46;
    *v48 = v46;
    v49 = v46;
    _os_log_impl(&_mh_execute_header, v44, v45, "Returning postWelcomeScreen list {list: %{public}@}", v47, 0xCu);
    sub_100094164(v48);
  }

  return v46;
}

uint64_t sub_100094164(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076DF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000941CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRBoardColumnItemClusterCollection();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "prepareLayout");
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 dataSource];

    if (v10)
    {
      type metadata accessor for TTRBoardColumnDiffableDataSource();
      if (swift_dynamicCastClass())
      {
        TTRBoardColumnDiffableDataSource.clusters.getter();
        TTRBoardColumnItemClusterCollection.init(itemClusters:)();
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }
  }

  TTRBoardColumnItemClusterCollection.init(itemClusters:)();
LABEL_7:
  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v12 = v11;
  if (([v11 hasActiveDrag] & 1) == 0 && !objc_msgSend(v12, "hasActiveDrop"))
  {

    goto LABEL_12;
  }

  *(swift_allocObject() + 16) = v12;
  v13 = sub_100094EB0;
LABEL_13:
  type metadata accessor for TTRBoardColumnItemClusterAdjuster();
  swift_allocObject();
  sub_10003BE34(v13);
  TTRBoardColumnItemClusterAdjuster.init(presentationToDataSource:)();
  TTRBoardColumnItemClusterAdjuster.adjust(_:)();
  TTRBoardColumnCollectionViewLayoutHelper.itemClusters.setter();

  sub_1000301AC(v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100094460@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dataSourceIndexPathForPresentationIndexPath:isa];

  if (v5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for IndexPath();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_100094798(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = a1;
  v13.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v13, "layoutAttributesForElementsInRect:", a2, a3, a4, a5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_100094E64();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

Class sub_100094870(void *a1)
{
  v1 = a1;
  TTRBoardColumnCollectionViewLayoutHelper.layoutAttributesForElements(in:baseLayoutAttributesForElementsInRect:)();

  sub_100094E64();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

id sub_100094E1C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

unint64_t sub_100094E64()
{
  result = qword_10076AC60;
  if (!qword_10076AC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076AC60);
  }

  return result;
}

uint64_t sub_100094EC8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076AC70);
  v1 = sub_100003E30(v0, qword_10076AC70);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100094F90()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100003540(0, &qword_1007759E0);
    v2 = static HLPHelpViewController.viewController(forShowing:)();
    if (v2)
    {
      oslog = v2;
      [v1 presentViewController:? animated:? completion:?];

      goto LABEL_9;
    }
  }

  if (qword_100766EE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10076AC70);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Attempted to open help with an empty view controller or HLPHelpViewController", v5, 2u);
  }

LABEL_9:
}

void sub_1000950E8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for TTRLearnMoreContent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v33 = v4;
    v34 = &off_1007146A0;
    v31 = v2;
    type metadata accessor for TTRILearnMorePresenter();
    v11 = swift_allocObject();
    v12 = sub_10000AE84(&v31, v4);
    __chkstk_darwin(v12);
    v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[9] = v4;
    v11[10] = &off_1007146A0;
    v11[6] = v16;
    v11[3] = 0;
    swift_unknownObjectWeakInit();
    v11[5] = 0;
    swift_unknownObjectWeakInit();

    sub_100004758(&v31);
    (*(v6 + 16))(v8, a1, v5);
    v17 = (*(v6 + 88))(v8, v5);
    if (v17 == enum case for TTRLearnMoreContent.customSmartList(_:))
    {
      type metadata accessor for TTRILearnMoreCSLViewController();
      v31 = v11;
      v32 = &off_100719208;
      v18 = &qword_10077B180;
      v19 = type metadata accessor for TTRILearnMoreCSLViewController;
LABEL_13:
      sub_1000955C8(v18, v19);
      static TTRTypedController<>.instantiateFromStoryboard(with:)();
      v24 = v30;
      v11[5] = 0;
      swift_unknownObjectWeakAssign();
      sub_100058000(&qword_10076B780);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10062D420;
      *(v25 + 32) = v24;
      sub_100003540(0, &qword_10076AD28);
      v26 = v24;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 setViewControllers:isa animated:1];

      return;
    }

    if (v17 == enum case for TTRLearnMoreContent.hashtags(_:))
    {
      type metadata accessor for TTRILearnMoreTagsViewController();
      v31 = v11;
      v32 = &off_100719208;
      v18 = &qword_10076AD30;
      v19 = type metadata accessor for TTRILearnMoreTagsViewController;
      goto LABEL_13;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    if (qword_100766EE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_10076AC70);
    v29 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v29, v21, "Attempted to open learn more with empty navigation controller", v22, 2u);
    }

    v23 = v29;
  }
}

uint64_t sub_1000955C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100095610(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_learnMoreEllipsisPlaceholder];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x80000001006708A0;
  v6 = &v2[OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_howToPlaceholder];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000001006708D0;
  v7 = &v2[OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_learnMoreTagsPlaceholder];
  *v7 = 0xD000000000000029;
  *(v7 + 1) = 0x80000001006708F0;
  sub_100096A58();
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_presenter] = v10[1];
  v10[0].receiver = v2;
  v10[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v8 = [(objc_super *)v10 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

void sub_100095820()
{
  v1 = v0;
  sub_100058000(&qword_10076AE48);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062EDD0;
  *(v2 + 32) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 40) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 48) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 56) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 64) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 72) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 80) = swift_unknownObjectWeakLoadStrong();
  v3 = sub_100058000(&qword_10076AE50);
  v24 = sub_100003540(0, &unk_10076B090);
  v25 = v3;
  v23 = sub_100096990();
  v4 = Sequence.removingNils<A>()();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = 0;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v4 + 8 * v6 + 32);
    }

    v11 = v10;
    ++v6;
    [v10 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right, v23, v24, v25}];
    v12 = [v11 textContainer];
    [v12 setLineFragmentPadding:0.0];
  }

  while (v5 != v6);
LABEL_10:

  sub_100095F74();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D3F0;
  *(v13 + 32) = swift_unknownObjectWeakLoadStrong();
  *(v13 + 40) = swift_unknownObjectWeakLoadStrong();
  v14 = Sequence.removingNils<A>()();

  sub_1002F0AD4(v14);

  sub_100058000(&unk_10076AE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = *&v1[OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_learnMoreEllipsisPlaceholder];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_learnMoreEllipsisPlaceholder + 8];
  *(inited + 32) = Strong;
  *(inited + 40) = v18;
  *(inited + 48) = v17;
  *(inited + 56) = 1;

  sub_10009648C(inited, v1);
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    swift_setDeallocating();
    sub_1000969F4(inited + 32);
    sub_1002F0C88(v20, v22);

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_100095F74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = Strong;
  static TTRLocalizableStrings.LearnMore.tagsSummary.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  static TTRLocalizableStrings.LearnMore.whyTags.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  static TTRLocalizableStrings.LearnMore.tagsCreating.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  static TTRLocalizableStrings.LearnMore.usingTagsBody.getter();
  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  static TTRLocalizableStrings.LearnMore.tagsAdding.getter();
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  static TTRLocalizableStrings.LearnMore.tagsBrowser.getter();
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  static TTRLocalizableStrings.LearnMore.tagsTap.getter();
  v20 = String._bridgeToObjectiveC()();

  [v19 setText:v20];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v22 = v21;
  static TTRLocalizableStrings.LearnMore.smartListsBody.getter();
  v23 = String._bridgeToObjectiveC()();

  [v22 setText:v23];
}

void sub_10009648C(uint64_t a1, uint64_t a2)
{
  sub_100003540(0, &qword_100772610);
  v18 = static UIColor.ttrLinkColor.getter();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 56);
    while (1)
    {
      v5 = *v4;
      v6 = *(v4 - 3);
      swift_bridgeObjectRetain_n();
      v7 = v6;
      v8 = [v7 text];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10007D420();
      LOBYTE(v9) = StringProtocol.contains<A>(_:)();

      if (v9)
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v10 = 0x1000000000000051;
            v11 = 0x8000000100670760;
            v12 = 0x6F4D206E7261654CLL;
            v13 = 0xAD0000A680E26572;
          }

          else
          {
            v13 = 0x80000001006707C0;
            v10 = 0x100000000000005CLL;
            v11 = 0x80000001006707E0;
            v12 = 0x1000000000000018;
          }
        }

        else
        {
          v11 = 0x8000000100670840;
          v12 = 0x41206F542D776F48;
          v13 = 0xEE00656C63697472;
          v10 = 0xD000000000000052;
        }

        TTRLocalizedString(_:comment:)(*&v12, *&v10);
        [v7 setSelectable:1];
        [v7 _setInteractiveTextSelectionDisabled:1];
        [v7 setDelegate:a2];
        v14 = [v7 attributedText];
        if (!v14)
        {
          goto LABEL_16;
        }

        v15 = v14;
        __chkstk_darwin(v14);
        v16 = NSAttributedString.withMutations(_:)();

        [v7 setAttributedText:v16];
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v4 += 4;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t sub_1000967A0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRLearnMoreContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100003540(0, &unk_10076B090);
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRILearnMoreTagsViewController_presenter);
      (*(v5 + 104))(v7, enum case for TTRLearnMoreContent.customSmartList(_:), v4);
      if (qword_100766FC0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003E30(v13, qword_1007712B0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_10000FD44();

      sub_10000C36C((v12 + 48), *(v12 + 72));
      sub_1000950E8(v7);
      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

unint64_t sub_100096990()
{
  result = qword_10076AE58;
  if (!qword_10076AE58)
  {
    sub_10005D20C(&qword_10076AE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076AE58);
  }

  return result;
}

unint64_t sub_100096A58()
{
  result = qword_10076AD30;
  if (!qword_10076AD30)
  {
    type metadata accessor for TTRILearnMoreTagsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076AD30);
  }

  return result;
}

void *assignWithCopy for TTRILearnMoreTagsViewController.Argument(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v3;
  return a1;
}

_OWORD *assignWithTake for TTRILearnMoreTagsViewController.Argument(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  return a1;
}

void sub_100096B68()
{
  sub_10009C0F8();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100096CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_100058000(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_10000794C(a1, &v14 - v11, a5);
  return a7(v12);
}

id sub_100096D88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID);
  *a2 = v4;

  return v4;
}

void sub_100096E48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100061F90(v1);
}

uint64_t sub_100096ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_10000794C(v7 + v8, a4, a3);
}

uint64_t sub_100097098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  swift_beginAccess();
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100097190(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1000626E4(v4);
}

uint64_t sub_1000972AC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100097388()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076AE80);
  v1 = sub_100003E30(v0, qword_10076AE80);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100097450@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076B038);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
  if (result)
  {
    TTRViewModelObserver.localValue.getter();

    v10 = sub_100058000(&unk_10076B040);
    if ((*(*(v10 - 8) + 48))(v8, 1, v10))
    {
      sub_1000079B4(v8, &qword_10076B038);
      v11 = 1;
    }

    else
    {
      TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
      sub_1000079B4(v8, &qword_10076B038);
      TTRIRemindersListItemIntermediateViewModel.itemID.getter();
      (*(v3 + 8))(v5, v2);
      v11 = 0;
    }

    v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100097668(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v65 = type metadata accessor for TTRISeparator.Thickness();
  v10 = *(v65 - 8);
  __chkstk_darwin(v65);
  v12 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v13 - 8);
  *&v4[qword_10076AEA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[qword_10076AEC8] = 0;
  v14 = qword_10076AED0;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v15 = qword_10076AED8;
  type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel();
  swift_allocObject();
  *&v5[v15] = sub_100063A04();
  v16 = qword_10076AEE0;
  sub_100058000(&unk_10076B080);
  swift_allocObject();
  *&v5[v16] = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  v5[qword_10076AEE8] = 0;
  v17 = qword_10076AEF0;
  v18 = sub_100058000(&qword_100781830);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = objc_allocWithZone(type metadata accessor for TTRIRemindersListEditableSectionNameTextView());
  v20 = TTRIExpandingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)();
  sub_100003540(0, &qword_100771DF0);
  v21 = v20;
  v22 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v21 setFont:v22];

  v23 = [v21 textContainer];
  [v23 setLineBreakMode:4];

  v24 = [v21 textContainer];
  [v24 setWidthTracksTextView:1];

  v25 = NUIContainerViewSizeUnbounded[0];
  v26 = NUIContainerViewSizeUnbounded[1];
  v27 = v21;
  LODWORD(v28) = 1132068864;
  [v27 setLayoutSize:v25 withContentPriority:{v26, v28}];
  type metadata accessor for TTRIOutlineDisclosureButton();
  static UIButton.Configuration.outlineDisclosure()();
  v29 = UIButton.init(configuration:primaryAction:)();
  static CGSize.nuiUseDefault.getter();
  [v29 setLayoutSize:? withContentPriority:?];
  v67 = sub_100058000(&qword_10076B780);
  v30 = swift_allocObject();
  v66 = xmmword_10062D410;
  *(v30 + 16) = xmmword_10062D410;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v31 = objc_allocWithZone(NUIContainerStackView);
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v31 initWithArrangedSubviews:isa];

  [v33 setAxis:0];
  v34 = v33;
  [v34 setArrangedSubviewRemovalPolicy:2];
  [v34 setSpacing:12.0];
  v35 = v34;
  [v35 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  [v35 setEdgesPreservingSuperviewLayoutMargins:10];
  v36 = 0.0;
  [v35 setDirectionalLayoutMargins:{12.0, 0.0, 8.0, 0.0}];
  [v35 setLayoutMarginsRelativeArrangement:1];
  [v35 setDebugBoundingBoxesEnabled:0];

  v37 = objc_allocWithZone(type metadata accessor for TTRISeparator());
  v38 = TTRISeparator.init(axis:)();
  *v12 = 0x4000000000000000;
  (*(v10 + 104))(v12, enum case for TTRISeparator.Thickness.custom(_:), v65);
  TTRISeparator.thickness.setter();
  v39 = [objc_opt_self() tertiarySystemFillColor];
  TTRISeparator.backgroundColor.setter();
  LOBYTE(isa) = static REMFeatureFlags.isSolariumEnabled.getter();
  v40 = v38;
  v41 = v40;
  if (isa)
  {
    [v40 setPreservesSuperviewLayoutMargins:1];
    v42 = -4.0;
    v36 = -8.0;
  }

  else
  {
    [v40 setPreservesSuperviewLayoutMargins:0];
    [v41 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v42 = 10.0;
  }

  [v41 setCustomAlignmentRectInsets:{v36, 0.0, v42, 0.0}];

  *&v5[qword_10076AEA8] = v27;
  *&v5[qword_10076AEB0] = v29;
  *&v5[qword_10076AEB8] = v35;
  *&v5[qword_10076AEC0] = v41;
  v72.receiver = v5;
  v72.super_class = ObjectType;
  v43 = v27;
  v44 = v29;
  v45 = v35;
  v46 = v41;
  v47 = objc_msgSendSuper2(&v72, "initWithFrame:", a1, a2, a3, a4);
  v70 = &type metadata for ContentConfigurationForContentStackView;
  v71 = sub_10009DC18();
  v69 = 0;
  v48 = v47;
  UICollectionViewCell.contentConfiguration.setter();
  v49 = [v48 contentView];
  type metadata accessor for ContentStackView(0);
  v50 = swift_dynamicCastClass();
  if (!v50)
  {

    if (qword_100766EE8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_10076AE80);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "TTRIRemindersListEditableSectionCell_collectionView: failed to create ContentStackView", v54, 2u);
    }

    v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v49 = v50;
  }

  v55 = v50;
  v56 = v49;
  v57 = *&v48[qword_10076AEC8];
  *&v48[qword_10076AEC8] = v55;
  v58 = v55;

  [v58 setAxis:1];
  [v58 setPreservesSuperviewLayoutMargins:1];
  v59 = v58;
  [v59 setLayoutMarginsRelativeArrangement:0];
  [v59 setDebugBoundingBoxesEnabled:0];
  v60 = swift_allocObject();
  *(v60 + 16) = v66;
  *(v60 + 32) = v46;
  *(v60 + 40) = v45;
  v61 = v46;
  v62 = Array._bridgeToObjectiveC()().super.isa;

  [v59 setArrangedSubviews:v62];

  [v44 addTarget:v48 action:"reminderSubtaskDisclosureAction:" forControlEvents:0x2000];
  sub_100003540(0, &unk_10076B090);
  UITextDraggable<>.disableDragInteraction_rdar93793341()();
  [v43 setTextDropDelegate:*&v48[qword_10076AED0]];

  return v48;
}

uint64_t sub_100097FD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_10076B038);
  __chkstk_darwin(v3 - 8);
  v34 = &v33 - v4;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v38.receiver = v1;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, "_bridgedUpdateConfigurationUsingState:", isa);

  v6 = *&v1[qword_10076AED8];
  swift_getKeyPath();
  v37 = v6;
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent;
  v35 = *(v6 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent);
  v7 = UICellConfigurationState.isEditing.getter();
  v8 = v7 & 1;
  swift_getKeyPath();
  v37 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode;
  v10 = *(v6 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode);

  if (v8 != v10)
  {
    if (v8 == *(v6 + v9))
    {
      *(v6 + v9) = v7 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v33 = &v33;
      __chkstk_darwin(KeyPath);
      *(&v33 - 2) = v6;
      *(&v33 - 8) = v7 & 1;
      v37 = v6;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v12 = UICellConfigurationState.isExpanded.getter();
  v13 = v12 & 1;
  swift_getKeyPath();
  v37 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isExpanded;
  v15 = *(v6 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isExpanded);

  if (v13 != v15)
  {
    if (v13 == *(v6 + v14))
    {
      *(v6 + v14) = v12 & 1;
    }

    else
    {
      v16 = swift_getKeyPath();
      v33 = &v33;
      __chkstk_darwin(v16);
      *(&v33 - 2) = v6;
      *(&v33 - 8) = v12 & 1;
      v37 = v6;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  sub_100065308();
  swift_getKeyPath();
  v37 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = qword_10076AEE8;
  v1[qword_10076AEE8] = (v35 ^ *(v6 + v36)) & 1;
  result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
  if (result)
  {
    v19 = v34;
    TTRViewModelObserver.localValue.getter();

    v20 = sub_100058000(&unk_10076B040);
    v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
    result = sub_1000079B4(v19, &qword_10076B038);
    if (v21 != 1)
    {

      updated = TTRObservationTrackingUpdateHelper.hasUpdates.getter();

      if (updated)
      {
        LOBYTE(v37) = 0;
        __chkstk_darwin(result);
        *(&v33 - 16) = 0;
        *(&v33 - 1) = v1;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v37) = 1;
        __chkstk_darwin(v23);
        *(&v33 - 16) = v24;
        *(&v33 - 1) = v1;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v37) = 2;
        __chkstk_darwin(v25);
        *(&v33 - 16) = v26;
        *(&v33 - 1) = v1;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v37) = 3;
        __chkstk_darwin(v27);
        *(&v33 - 16) = v28;
        *(&v33 - 1) = v1;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v37) = 4;
        __chkstk_darwin(v29);
        *(&v33 - 16) = v30;
        *(&v33 - 1) = v1;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v37) = 5;
        __chkstk_darwin(v31);
        *(&v33 - 16) = v32;
        *(&v33 - 1) = v1;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        TTRObservationTrackingUpdateHelper.assertNoRemainingUpdates()();
      }
    }

    v1[v17] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098724(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  sub_100097FD0();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10009880C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_10076B038);
  __chkstk_darwin(v6 - 8);
  v89 = &v73 - v7;
  v8 = sub_100058000(&unk_100792D90);
  __chkstk_darwin(v8 - 8);
  v79 = &v73 - v9;
  v78 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v11 - 8);
  v76 = &v73 - v12;
  v13 = sub_100058000(&qword_100781830);
  v80 = *(v13 - 8);
  v81 = v13;
  __chkstk_darwin(v13);
  v75 = &v73 - v14;
  v15 = sub_100058000(&qword_100772140);
  v16 = __chkstk_darwin(v15 - 8);
  v82 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v73 - v18;
  v90 = type metadata accessor for TTRRemindersListViewModel.Item();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v83 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v73 - v26;
  type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v28 = method lookup function for TTRIRemindersListIntermediateViewModelObservingCell();
  v28(a1, a2);
  v29 = sub_100058000(&unk_10076B040);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  v85 = v29;
  v30 = v88;
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_100063C48(v25);
  v31 = *(v22 + 8);
  v84 = v21;
  v86 = v31;
  v87 = v22 + 8;
  v31(v25, v21);
  v32 = v27;
  v33 = v90;
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  if ((*(v30 + 48))(v19, 1, v33) == 1)
  {
    sub_1000079B4(v19, &qword_100772140);
    v34 = v89;
    v35 = v3;
  }

  else
  {
    v36 = v83;
    (*(v30 + 32))(v83, v19, v33);
    Strong = swift_unknownObjectWeakLoadStrong();
    v35 = v3;
    if (Strong)
    {
      v38 = Strong;
      v39 = qword_10076AEF0;
      swift_beginAccess();
      v41 = v80;
      v40 = v81;
      if ((*(v80 + 48))(v3 + v39, 1, v81))
      {
        v42 = v30;
        v43 = *(v30 + 56);
        v44 = v82;
        v43(v82, 1, 1, v33);
      }

      else
      {
        v73 = v38;
        v45 = v75;
        (*(v41 + 16))(v75, v3 + v39, v40);
        TTRRemindersListInCellModule.interface.getter();
        (*(v41 + 8))(v45, v40);
        v46 = v91;
        v47 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
        swift_beginAccess();
        v48 = v76;
        sub_10000794C(v46 + v47, v76, &unk_100776BC0);
        v49 = v77;
        v50 = v78;
        if ((*(v77 + 48))(v48, 1, v78))
        {
          swift_unknownObjectRelease();
          sub_1000079B4(v48, &unk_100776BC0);
          v51 = 1;
          v52 = v82;
        }

        else
        {
          v53 = v74;
          (*(v49 + 16))(v74, v48, v50);
          sub_1000079B4(v48, &unk_100776BC0);
          v52 = v82;
          TTRRemindersListEditableSectionNameViewModel.item.getter();
          swift_unknownObjectRelease();
          (*(v49 + 8))(v53, v50);
          v51 = 0;
        }

        v42 = v30;
        (*(v30 + 56))(v52, v51, 1, v33);
        v44 = v52;
        v38 = v73;
      }

      v54 = *(v38 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v55 = *(v38 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v38 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v54);
      v56 = *(*(v55 + 8) + 312);
      v57 = v83;
      v58 = v56(v83, v44, v54);
      sub_1000079B4(v44, &qword_100772140);
      if (v58)
      {
        v59 = v79;
        sub_100522098(v57, v79);
        swift_beginAccess();
        sub_100019180(v59, v35 + v39, &unk_100792D90);
        swift_endAccess();
        sub_100099A94();
        swift_unknownObjectRelease();
        sub_1000079B4(v59, &unk_100792D90);
        (*(v42 + 8))(v57, v90);
      }

      else
      {
        (*(v42 + 8))(v57, v33);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v30 + 8))(v36, v33);
    }

    v34 = v89;
  }

  result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
  if (result)
  {
    TTRViewModelObserver.localValue.getter();

    if ((*(*(v85 - 8) + 48))(v34, 1) == 1)
    {
      v86(v32, v84);
      return sub_1000079B4(v34, &qword_10076B038);
    }

    else
    {
      sub_1000079B4(v34, &qword_10076B038);

      updated = TTRObservationTrackingUpdateHelper.hasUpdates.getter();

      if (updated)
      {
        LOBYTE(v91) = 0;
        __chkstk_darwin(v62);
        *(&v73 - 16) = 0;
        *(&v73 - 1) = v35;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v91) = 1;
        __chkstk_darwin(v63);
        *(&v73 - 16) = v64;
        *(&v73 - 1) = v35;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v91) = 2;
        __chkstk_darwin(v65);
        *(&v73 - 16) = v66;
        *(&v73 - 1) = v35;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v91) = 3;
        __chkstk_darwin(v67);
        *(&v73 - 16) = v68;
        *(&v73 - 1) = v35;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v91) = 4;
        __chkstk_darwin(v69);
        *(&v73 - 16) = v70;
        *(&v73 - 1) = v35;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        LOBYTE(v91) = 5;
        __chkstk_darwin(v71);
        *(&v73 - 16) = v72;
        *(&v73 - 1) = v35;

        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();

        TTRObservationTrackingUpdateHelper.assertNoRemainingUpdates()();
      }

      return (v86)(v32, v84);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100099404(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "dragStateDidChange:", a3);
  [v4 setNeedsUpdateConfiguration];
}

uint64_t sub_100099474()
{
  result = sub_1004B61C8(&off_100712608);
  qword_10076AE98 = result;
  return result;
}

Swift::Int sub_1000994B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000995E0()
{
  String.hash(into:)();
}

Swift::Int sub_100099700()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10009982C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DEC4(*a1);
  *a2 = result;
  return result;
}

void sub_10009985C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000077656956;
  v4 = 0x74786554656D616ELL;
  v5 = 0xEE006E6F69746174;
  v6 = 0x6F6E6E4177656976;
  v7 = 0xEF65746174536572;
  v8 = 0x75736F6C63736964;
  if (v2 != 4)
  {
    v8 = 0xD000000000000016;
    v7 = 0x800000010066E7D0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x6F74617261706573;
    v3 = 0xE900000000000072;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x800000010066E780;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100099954()
{
  if (qword_100766EF0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000999B0()
{
  v1 = *v0;
  v2 = 0x74786554656D616ELL;
  v3 = 0x6F6E6E4177656976;
  v4 = 0x75736F6C63736964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6F74617261706573;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100099A94()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100781830);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = qword_10076AEF0;
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v6, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    TTRRemindersListInCellModule.interface.getter();
    (*(v3 + 8))(v5, v2);
    v8 = v12;
    *(v12 + 40) = &off_100714800;
    swift_unknownObjectWeakAssign();
    v9 = *(v1 + qword_10076AEA8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100276240(v9);
      swift_unknownObjectRelease();
    }

    *(v8 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle) = 0;
    sub_1004E5374([v9 isEditing]);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = swift_unknownObjectRelease();
    if (Strong)
    {
      swift_unknownObjectWeakAssign();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100099C74(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_10009AC44();
    }

    else if (a1 == 4)
    {
      sub_10009B2FC();
    }

    else
    {
      v4 = *(a2 + qword_10076AED8);
      swift_getKeyPath();
      sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(v4 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden) & 1) == 0)
      {
        v5 = *(a2 + qword_10076AEA8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v5 setUserInteractionEnabled:*(v4 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled)];
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_100099EBC();
    }

    else
    {
      sub_10009A7DC();
    }
  }

  else
  {
    v3 = *(a2 + qword_10076AED8);
    swift_getKeyPath();
    sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden) == 1)
    {
      sub_10009DC6C();
    }

    else
    {
      v6 = *(a2 + qword_10076AEC8);
      sub_10009DC18();
      v7 = v6;
    }

    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100099EBC()
{
  v1 = v0;
  v2 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v2 - 8);
  v56 = &v49 - v3;
  v4 = sub_100058000(&qword_100781830);
  v60 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v49 - v5;
  v6 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v6 - 8);
  v57 = &v49 - v7;
  v61 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v61);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v49 - v10;
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  v16 = __chkstk_darwin(v14);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v49 - v17;
  v18 = *&v0[qword_10076AED8];
  swift_getKeyPath();
  aBlock[0] = v18;
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v18 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden) & 1) == 0)
  {
    v52 = v4;
    swift_getKeyPath();
    aBlock[0] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__item;
    swift_beginAccess();
    sub_10000794C(v18 + v20, v13, &qword_100772140);
    if ((*(v63 + 48))(v13, 1, v64) == 1)
    {
      v21 = &qword_100772140;
      v22 = v13;
      goto LABEL_6;
    }

    v51 = *(v63 + 32);
    v51(v62, v13, v64);
    swift_getKeyPath();
    aBlock[0] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__title;
    swift_beginAccess();
    v24 = v57;
    sub_10000794C(v18 + v23, v57, &unk_10076B050);
    v25 = v59;
    v26 = v61;
    if ((*(v59 + 48))(v24, 1, v61) == 1)
    {
      (*(v63 + 8))(v62, v64);
      v21 = &unk_10076B050;
      v22 = v24;
LABEL_6:
      sub_1000079B4(v22, v21);
      [*&v1[qword_10076AEA8] setText:0];
      v27 = qword_10076AEF0;
      swift_beginAccess();
      v28 = v60;
      v29 = v52;
      result = (v60)[6](&v1[v27], 1, v52);
      if (!result)
      {
        v30 = v55;
        (v28)[2](v55, &v1[v27], v29);
        TTRRemindersListInCellModule.interface.getter();
        (v28[1])(v30, v29);
        v31 = aBlock[12];
        v32 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
        v33 = v56;
        (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
        v34 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
        swift_beginAccess();
        sub_100019180(v33, v31 + v34, &unk_100776BC0);
        swift_endAccess();
        sub_1004E49D0();
        swift_unknownObjectRelease();
        return sub_1000079B4(v33, &unk_100776BC0);
      }

      return result;
    }

    v56 = *(v25 + 32);
    v35 = v58;
    (v56)(v58, v24, v26);
    v50 = v1;
    v36 = v26;
    v60 = *&v1[qword_10076AEB8];
    v37 = v54;
    (*(v25 + 16))(v54, v35, v36);
    v38 = v63;
    v39 = v53;
    (*(v63 + 16))(v53, v62, v64);
    v40 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v41 = (v8 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v38 + 80) + v41 + 8) & ~*(v38 + 80);
    v43 = swift_allocObject();
    (v56)(v43 + v40, v37, v61);
    v44 = v50;
    *(v43 + v41) = v50;
    v45 = v64;
    v51((v43 + v42), v39, v64);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_10009DFAC;
    *(v46 + 24) = v43;
    aBlock[4] = sub_100026410;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_1007148B8;
    v47 = _Block_copy(aBlock);
    v48 = v44;

    [v60 performBatchUpdates:v47];
    _Block_release(v47);
    (*(v25 + 8))(v58, v61);
    (*(v63 + 8))(v62, v45);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10009A7DC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[qword_10076AED8];
  swift_getKeyPath();
  aBlock[0] = v6;
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v6 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden) & 1) == 0)
  {
    swift_getKeyPath();
    aBlock[0] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
    swift_beginAccess();
    (*(v3 + 16))(v5, v6 + v7, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
    {
      if (qword_100766EE8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100003E30(v9, qword_10076AE80);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "TTRIRemindersListEditableSectionCell inset separator not supported", v12, 2u);
      }
    }

    else
    {
      v13 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:);
      if (v8 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:) || v8 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
      {
        v15 = *&v1[qword_10076AEC0];
        v16 = v8;
        [v15 setHidden:v8 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:)];
        if (v16 != v13 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) != 0)
        {
          v17 = swift_allocObject();
          *(v17 + 16) = v1;
          if (v1[qword_10076AEE8] == 1)
          {
            v18 = objc_opt_self();
            aBlock[4] = sub_10009E088;
            aBlock[5] = v17;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10001047C;
            aBlock[3] = &unk_100714908;
            v19 = _Block_copy(aBlock);
            v20 = v1;

            [v18 animateWithDuration:196608 delay:v19 options:0 animations:0.2 completion:0.0];

            _Block_release(v19);
          }

          else
          {
            swift_getKeyPath();
            aBlock[0] = v6;
            v21 = v1;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v22 = 1.0;
            if (*(v6 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent))
            {
              v22 = 0.0;
            }

            [v15 setAlpha:v22];
          }
        }
      }

      else
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }
}

uint64_t sub_10009AC44()
{
  v1 = v0;
  v2 = type metadata accessor for SectionEntityID();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AppEntityID();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v42 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMFeatureFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for REMFeatureFlags.viewAnnotation(_:), v14);
  v18 = REMFeatureFlags.isEnabled.getter();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v34[1] = v1;
    v20 = *(v1 + qword_10076AED8);
    swift_getKeyPath();
    v44 = v20;
    sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__sectionID;
    swift_beginAccess();
    sub_10000794C(v20 + v21, v10, &qword_10076B070);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_1000079B4(v10, &qword_10076B070);
    }

    (*(v12 + 32))(v42, v10, v11);
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    v22 = v41;
    v23 = (*(v41 + 88))(v7, v5);
    v34[0] = v12;
    if (v23 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v22 + 96))(v7, v5);
      v24 = *v7;
      v25 = &enum case for SectionEntityID.sectioned(_:);
    }

    else if (v23 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {
      (*(v22 + 96))(v7, v5);
      v24 = *v7;
      v25 = &enum case for SectionEntityID.sectionless(_:);
    }

    else
    {
      if (v23 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        (*(v22 + 8))(v7, v5);
      }

      else if (v23 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      swift_getKeyPath();
      v43 = v20;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = *(v20 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID);
      if (!v26)
      {
        return (*(v12 + 8))(v42, v11);
      }

      v24 = v26;
      v25 = &enum case for SectionEntityID.sectioned(_:);
    }

    v27 = v24;
    v28 = v35;
    AppEntityID.init(objectID:)();
    v30 = v36;
    v29 = v37;
    v31 = v38;
    (*(v36 + 16))(v37, v28, v38);
    v33 = v39;
    v32 = v40;
    (*(v39 + 104))(v29, *v25, v40);
    type metadata accessor for SectionEntity();
    sub_10009DF10(&qword_10076B078, &type metadata accessor for SectionEntity);
    UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

    (*(v33 + 8))(v29, v32);
    (*(v30 + 8))(v28, v31);
    v12 = v34[0];
    return (*(v12 + 8))(v42, v11);
  }

  return result;
}

id sub_10009B2FC()
{
  v1 = *(v0 + qword_10076AED8);
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden) & 1) == 0)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode))
    {
      return [*(v0 + qword_10076AEB0) setHidden:1];
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isCollapsable) != 1)
    {
      return [*(v0 + qword_10076AEB0) setHidden:1];
    }

    else
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v0 + qword_10076AEB0) setHidden:0];
      return TTRIOutlineDisclosureButton.isExpanded.setter();
    }
  }

  return result;
}

void sub_10009B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v5 - 8);
  v62 = &v53 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRRemindersListViewModel.Item();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v10 - 8);
  v60 = &v53 - v11;
  v12 = sub_100058000(&qword_100781830);
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v53 = &v53 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  TTRRemindersListViewModel.SectionHeaderTitle.defaultTextColor.getter();
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:))
  {
    v24 = &selRef_labelColor;
    v25 = v22;
  }

  else
  {
    v25 = a1;
    if (v23 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:))
    {
      v24 = &selRef_secondaryLabelColor;
    }

    else
    {
      if (v23 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_23;
      }

      v24 = &selRef_tertiaryLabelColor;
    }
  }

  v26 = [objc_opt_self() *v24];
  v27 = *(a2 + qword_10076AEB8);
  isa = v26;
  [v27 directionalLayoutMargins];
  v30 = v29;
  v32 = v31;
  TTRRemindersListViewModel.SectionHeaderTitle.textSize.getter();
  v33 = (*(v15 + 88))(v17, v14);
  if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:))
  {
    v34 = 12.0;
    v35 = 8.0;
    goto LABEL_13;
  }

  if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:))
  {
    v35 = 13.0;
    v34 = 13.0;
    goto LABEL_13;
  }

  if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:))
  {
    v35 = 12.0;
    v34 = 12.0;
LABEL_13:
    sub_100003540(0, &qword_100771DF0);
    v36 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    v37.super.isa = UIFont.withBoldTrait()().super.isa;

    v38 = *(a2 + qword_10076AEA8);
    [v38 setFont:v37.super.isa];
    [v38 setDirectionalLayoutMargins:{v34, v30, v35, v32}];
    [v38 setTextColor:isa];

    v39 = [objc_opt_self() clearColor];
    [v38 setBackgroundColor:v39];

    v40 = qword_10076AEF0;
    swift_beginAccess();
    v41 = v63;
    if ((*(v63 + 48))(a2 + v40, 1, v12))
    {
      if (static REMFeatureFlags.isSolariumEnabled.getter())
      {
LABEL_15:
        v42 = isa;
        isa = v37.super.isa;
LABEL_21:

        return;
      }
    }

    else
    {
      v43 = v53;
      (*(v41 + 16))(v53, a2 + v40, v12);
      TTRRemindersListInCellModule.interface.getter();
      (*(v41 + 8))(v43, v12);
      v44 = v64;
      (*(v54 + 16))(v55, v61, v56);
      (*(v58 + 16))(v57, v25, v59);
      v45 = v60;
      TTRRemindersListEditableSectionNameViewModel.init(item:sectionHeaderTitle:)();
      v46 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      v47 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
      swift_beginAccess();
      sub_100019180(v45, v44 + v47, &unk_100776BC0);
      swift_endAccess();
      sub_1004E49D0();
      swift_unknownObjectRelease();
      sub_1000079B4(v45, &unk_100776BC0);
      if (static REMFeatureFlags.isSolariumEnabled.getter())
      {
        goto LABEL_15;
      }
    }

    v48 = *(a2 + qword_10076AEB0);
    v49 = v62;
    TTRRemindersListViewModel.SectionHeaderTitle.disclosureColor.getter();
    v50 = type metadata accessor for TTRListColors.Color();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      sub_1000079B4(v49, &unk_10076B060);
      v52 = isa;
    }

    else
    {
      v52 = TTRListColors.Color.nativeColor.getter();
      (*(v51 + 8))(v49, v50);
    }

    [v48 setTintColor:v52];

    v42 = v37.super.isa;
    goto LABEL_21;
  }

LABEL_23:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

id sub_10009BD28(uint64_t a1)
{
  v1 = *(a1 + qword_10076AEC0);
  v2 = *(a1 + qword_10076AED8);
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = 1.0;
  if (*(v2 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent))
  {
    v3 = 0.0;
  }

  return [v1 setAlpha:v3];
}

uint64_t sub_10009BE04()
{
  v1 = *(v0 + qword_10076AED8);
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isExpanded);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005221E8(v0, v2 ^ 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10009BEE4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_10009BE04();

  return sub_1000079B4(v7, &qword_10076AE40);
}

uint64_t sub_10009BF64()
{
  sub_10003B788(v0 + qword_10076AEA0);

  return sub_1000079B4(v0 + qword_10076AEF0, &unk_100792D90);
}

uint64_t sub_10009C028(uint64_t a1)
{
  sub_10003B788(a1 + qword_10076AEA0);

  return sub_1000079B4(a1 + qword_10076AEF0, &unk_100792D90);
}

void sub_10009C0F8()
{
  if (!qword_10076AF30[0])
  {
    sub_10005D20C(&qword_100781830);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_10076AF30);
    }
  }
}

id sub_10009C164@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v7 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  result = (*(v8 + 88))(v10, v7);
  if (result == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [v3 bounds];
LABEL_5:
    result = [a2 convertRect:v3 fromCoordinateSpace:?];
    v16 = 0;
LABEL_6:
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    return result;
  }

  if (result == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    sub_10009DF10(&unk_10076B000, type metadata accessor for TTRIRemindersListEditableSectionCell_collectionView);
    TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(to:)();
    goto LABEL_5;
  }

  if (result == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    sub_10009DF10(&unk_10076B000, type metadata accessor for TTRIRemindersListEditableSectionCell_collectionView);
    result = TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(toCaretIn:)();
    v12 = v18[1];
    v13 = v18[2];
    v14 = v18[3];
    v15 = v18[4];
    v16 = v19;
    if (v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (result == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:) || result == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v16 = 1;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_10009C414@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10009C164(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_10009C45C(void *a1)
{
  v1 = a1;
  v2 = sub_10009C490();

  return v2 & 1;
}

uint64_t sub_10009C490()
{
  v1 = *(v0 + qword_10076AED8);
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden))
  {
    return 0;
  }

  else
  {
    return [*(v0 + qword_10076AEA8) isEditing] ^ 1;
  }
}

uint64_t sub_10009C570(char *a1)
{
  v2 = *&a1[qword_10076AED8];
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  v3 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden);

  return v4;
}

uint64_t sub_10009C644()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_10076AED8];
  swift_getKeyPath();
  v6[0] = v2;
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode);
  if ((v3 & 1) == 0)
  {
    v6[3] = ObjectType;
    v6[0] = v0;
    v4 = v0;
    sub_10009BE04();
    sub_1000079B4(v6, &qword_10076AE40);
  }

  return v3 ^ 1u;
}

uint64_t sub_10009C744(void *a1)
{
  v1 = a1;
  v2 = sub_10009C644();

  return v2 & 1;
}

id sub_10009C778(void *a1)
{
  v1 = a1;
  sub_10009C7F0();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10009C7F0()
{
  v1 = *(v0 + qword_10076AEA8);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }
  }

  result = [v1 attributedPlaceholder];
  if (result)
  {
    v9 = result;
    v10 = [result string];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v11;
  }

  return result;
}

id sub_10009C908(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  sub_10009C9C0(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10009C9C0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = *(v2 + qword_10076AED8);
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode))
  {
    return 0;
  }

  if (TTRIOutlineDisclosureButton.isExpanded.getter())
  {
    return a1();
  }

  return a2();
}

Class sub_10009CAC0(void *a1)
{
  v1 = a1;
  v2 = sub_10009CB2C();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

char *sub_10009CB2C()
{
  v1 = v0;
  v2 = sub_10009C7F0();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v2;
  v5 = v3;
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_9:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v7 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100546970((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v5;
LABEL_10:
  v11 = *(v1 + qword_10076AED8);
  swift_getKeyPath();
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v11 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode) & 1) == 0)
  {
    if (TTRIOutlineDisclosureButton.isExpanded.getter())
    {
      v12 = static TTRAccesibility.AccountsList.Action.Collapse.getter();
    }

    else
    {
      v12 = static TTRAccesibility.AccountsList.Action.Expand.getter();
    }

    v14 = v12;
    v15 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100546970(0, *(v7 + 2) + 1, 1, v7);
    }

    v17 = *(v7 + 2);
    v16 = *(v7 + 3);
    if (v17 >= v16 >> 1)
    {
      v7 = sub_100546970((v16 > 1), v17 + 1, 1, v7);
    }

    *(v7 + 2) = v17 + 1;
    v18 = &v7[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
  }

  return v7;
}

Class sub_10009CD14(void *a1)
{
  v1 = a1;
  v2 = sub_10009CD94();

  if (v2)
  {
    sub_100003540(0, &qword_10076BCE0);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

void *sub_10009CD94()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v15, "accessibilityCustomActions");
  if (v2)
  {
    v3 = v2;
    sub_100003540(0, &qword_10076BCE0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v16 = v4;
  v5 = *&v1[qword_10076AED8];
  swift_getKeyPath();
  aBlock[0] = v5;
  sub_10009DF10(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v5 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode) & 1) == 0)
  {
    swift_getKeyPath();
    aBlock[0] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v5 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled) == 1)
    {
      v6._countAndFlagsBits = 0x656D616E6552;
      v7._object = 0x8000000100670B80;
      v6._object = 0xE600000000000000;
      v7._countAndFlagsBits = 0xD00000000000003FLL;
      TTRLocalizedString(_:comment:)(v6, v7);
      sub_100003540(0, &qword_10076FCB0);
      v8 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = objc_allocWithZone(UIAccessibilityCustomAction);

      v11 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10009DF58;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10044E9F0;
      aBlock[3] = &unk_100714840;
      v12 = _Block_copy(aBlock);
      [v10 initWithName:v11 image:v8 actionHandler:v12];

      _Block_release(v12);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return v16;
    }
  }

  return v4;
}

void sub_10009D0C8(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076BCE0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityCustomActions:", isa);
}

BOOL sub_10009D180()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = qword_10076AEA8;
    type metadata accessor for TTRIRemindersListEditableSectionNameTextView();
    UITextInput<>.ttrBeginEditing()();
    v2 = UIAccessibilityLayoutChangedNotification;
    v3 = *&Strong[v1];
    UIAccessibilityPostNotification(v2, v3);
  }

  return Strong != 0;
}

UIAccessibilityTraits sub_10009D220(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  v2 = objc_msgSendSuper2(&v5, "accessibilityTraits");
  v3 = UIAccessibilityTraitHeader;

  return v3 | v2;
}

id sub_10009D28C(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, "setAccessibilityTraits:", a3);
}

id sub_10009D334(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_10009D3A4(void *a1, uint64_t a2, Class isa)
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

id sub_10009D450(void *a1, uint64_t a2, void *a3)
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

unint64_t sub_10009D4D0@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ContentConfigurationForContentStackView;
  result = sub_10009DC18();
  a1[4] = result;
  *a1 = 0;
  return result;
}

void (*sub_10009D508(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 24) = &type metadata for ContentConfigurationForContentStackView;
  *(v2 + 32) = sub_10009DC18();
  *v3 = 0;
  return sub_10009D584;
}

void sub_10009D584(uint64_t *a1)
{
  v1 = *a1;
  sub_100004758(*a1);

  free(v1);
}

uint64_t sub_10009D5C0(uint64_t a1)
{
  sub_10000B0D8(a1, v4);
  sub_100058000(&qword_10077A650);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

id sub_10009D638()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    type metadata accessor for ContentStackView(0);
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  sub_10009DF10(&qword_10076B0A0, type metadata accessor for ContentStackView);
  v3 = v1;
  return v2;
}

id sub_10009D6D0@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

unint64_t sub_10009D814@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForZeroHeightContentView;
  result = sub_10009DC6C();
  *(a1 + 32) = result;
  return result;
}

void (*sub_10009D848(uint64_t *a1))(uint64_t *)
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
  *(v2 + 24) = &type metadata for ContentConfigurationForZeroHeightContentView;
  *(v2 + 32) = sub_10009DC6C();
  return sub_10009E1E4;
}

uint64_t sub_10009D8C0(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

double sub_10009D910(void *a1)
{
  v1 = a1;
  [v1 bounds];
  Width = CGRectGetWidth(v4);

  return Width + 100.0;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListEditableSectionCell_collectionView.UpdateFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListEditableSectionCell_collectionView.UpdateFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009DABC()
{
  result = qword_10076AFE0;
  if (!qword_10076AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076AFE0);
  }

  return result;
}

unint64_t sub_10009DB14()
{
  result = qword_10076AFE8;
  if (!qword_10076AFE8)
  {
    sub_10005D20C(&qword_10076AFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076AFE8);
  }

  return result;
}

unint64_t sub_10009DB7C()
{
  result = qword_10076AFF8;
  if (!qword_10076AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076AFF8);
  }

  return result;
}

unint64_t sub_10009DC18()
{
  result = qword_10076B010;
  if (!qword_10076B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B010);
  }

  return result;
}

unint64_t sub_10009DC6C()
{
  result = qword_10076B018;
  if (!qword_10076B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B018);
  }

  return result;
}

id sub_10009DCC0()
{
  type metadata accessor for ZeroHeightContentView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10009DF10(&qword_10076B0A8, type metadata accessor for ZeroHeightContentView);
  return v0;
}

void sub_10009DD38()
{
  v1 = v0;
  *(v0 + qword_10076AEA0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_10076AEC8) = 0;
  v2 = qword_10076AED0;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v3 = qword_10076AED8;
  type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel();
  swift_allocObject();
  *(v1 + v3) = sub_100063A04();
  v4 = qword_10076AEE0;
  sub_100058000(&unk_10076B080);
  swift_allocObject();
  *(v1 + v4) = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  *(v1 + qword_10076AEE8) = 0;
  v5 = qword_10076AEF0;
  v6 = sub_100058000(&qword_100781830);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10009DEC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100712658, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009DF10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10009DFAC()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_10009B4CC(v0 + v2, v5, v6);
}

void **assignWithCopy for ContentConfigurationForContentStackView(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **assignWithTake for ContentConfigurationForContentStackView(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ContentConfigurationForContentStackView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ContentConfigurationForContentStackView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10009E200()
{
  result = qword_10076FE50;
  if (!qword_10076FE50)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076FE50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListNavigationItemOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListNavigationItemOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10009E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009E914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100058000(&qword_10076B298);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100058000(&qword_10076B298);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100058000(&qword_10076B280);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100058000(&qword_10076B280);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100058000(&qword_10076B288);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100058000(&qword_10076B288);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009F250()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076B0D8);
  v1 = sub_100003E30(v0, qword_10076B0D8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10009F318(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRTemplateSharingViewModel();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v8, v2 + v11, v4);
  sub_1000A9100();
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    v14._object = 0x8000000100670CE0;
    v14._countAndFlagsBits = 0xD000000000000011;
    TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v14);
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

uint64_t sub_10009F518()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v18 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRTemplateSharingViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100766EF8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10076B0D8);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  [*(v0 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_previewUndoManager) removeAllActions];
  v17 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v0 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
  swift_getObjectType();
  v16 = dispatch thunk of TTRTemplateSharingInteractorType.template.getter();
  v9 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v7, v0 + v9, v4);
  v11 = TTRTemplateSharingViewModel.makePublicLinkConfiguration()();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v10(v7, v0 + v9, v4);
  v13 = v18;
  TTRTemplateSharingViewModel.purpose.getter();
  v12(v7, v4);
  v14 = v16;
  sub_1000A8810(v16, v11, v13, v1, *v17);

  return (*(v19 + 8))(v13, v20);
}

uint64_t sub_10009F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10009F88C, v6, v5);
}

uint64_t sub_10009F88C()
{
  v0[7] = *sub_10000C36C((v0[2] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v0[2] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
  v0[8] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v2;
  v0[10] = v1;

  return _swift_task_switch(sub_10009F934, v2, v1);
}

uint64_t sub_10009F934()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10009FA1C;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[5];
    v4 = v0[6];

    return _swift_task_switch(sub_10009FBC0, v3, v4);
  }
}

uint64_t sub_10009FA1C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_10009FB5C, v4, v3);
}

uint64_t sub_10009FB5C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10009FBC0, v1, v2);
}

uint64_t sub_10009FBC0()
{

  sub_10009FC2C(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009FC2C(char a1)
{
  v3 = sub_100058000(&qword_10076B240);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = sub_100058000(&unk_10076B170);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_continuationForPerformAction;
  swift_beginAccess();
  sub_10000794C(v1 + v13, v8, &qword_10076B240);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &qword_10076B240);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (!a1)
  {
    v15 = v1;
    if (qword_100766EF8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_10076B0D8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "TTRITemplateSharingPresenter: action performed; resume continuationForPerformAction", v23, 2u);
    }

    v24[0] = 1;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v15 = v1;
    if (qword_100766EF8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076B0D8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRITemplateSharingPresenter: action canceled; resume continuationForPerformAction", v19, 2u);
    }

    v24[0] = 0;
LABEL_15:
    CheckedContinuation.resume(returning:)();
    (*(v10 + 8))(v12, v9);
    (*(v10 + 56))(v6, 1, 1, v9);
    swift_beginAccess();
    sub_1000A7EF0(v6, v15 + v13);
    return swift_endAccess();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000A0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1000A00D0;

  return sub_1000A0284(a4);
}

uint64_t sub_1000A00D0(char a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A0214, v3, v2);
}

uint64_t sub_1000A0214()
{
  v1 = *(v0 + 48);

  sub_10009FC2C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A0284(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_100058000(&unk_100775660);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for TTRTemplateSharingViewModel();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_100058000(&qword_10076B290);
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;
  v1[19] = v4;

  return _swift_task_switch(sub_1000A0460, v5, v4);
}

uint64_t sub_1000A0460()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  v0[20] = *(v5 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_presenterCapability);
  v6 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  swift_beginAccess();
  v39 = *(v3 + 16);
  v39(v2, v5 + v6, v4);
  TTRTemplateSharingPresenterCapability.alertNeededForCommittingLink(viewModel:)();
  v7 = *(v3 + 8);
  v7(v2, v4);
  v8 = type metadata accessor for TTRTemplateSharingPresenterCapability.IncludePropertyAlert();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v1, 1, v8) == 1)
  {
    v10 = v0[11];
    v11 = v0[6];
    v12 = v0[7];
    v13 = *(v12 + 56);
    v0[29] = v13;
    v0[30] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v10, 1, 1, v11);
    v14 = swift_task_alloc();
    v0[31] = v14;
    *v14 = v0;
    v14[1] = sub_1000A0DD8;
    v15 = v0[10];

    return sub_1000A1990(v15);
  }

  v17 = (*(v9 + 88))(v0[16], v8);
  if (v17 == enum case for TTRTemplateSharingPresenterCapability.IncludePropertyAlert.includeSelectedProperties(_:))
  {
    v18 = v0[16];
    v19 = v0[14];
    v37 = v0[12];
    (*(v9 + 96))(v18, v8);
    v0[21] = *v18;
    v0[22] = v18[1];
    v38 = static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.title.getter();
    v21 = v20;
    v0[23] = v20;
    v39(v19, v5 + v6, v37);
    v22 = TTRTemplateSharingViewModel.localizedMessageForIncludePropertiesAlert.getter();
    v24 = v23;
    v0[24] = v23;
    v7(v19, v37);
    v25 = swift_task_alloc();
    v0[25] = v25;
    *v25 = v0;
    v25[1] = sub_1000A083C;
    v26 = v38;
    v27 = v21;
    v28 = v22;
    v29 = v24;
LABEL_9:

    return sub_1000A14B4(v26, v27, v28, v29, 0, 0);
  }

  if (v17 == enum case for TTRTemplateSharingPresenterCapability.IncludePropertyAlert.includeLocations(_:))
  {
    v30 = static TTRLocalizableStrings.Templates.publicTemplateIncludeLocationsAlertTitle.getter();
    v32 = v31;
    v0[26] = v31;
    v33 = static TTRLocalizableStrings.Templates.publicTemplateIncludeLocationsAlertMessage.getter();
    v35 = v34;
    v0[27] = v34;
    v36 = swift_task_alloc();
    v0[28] = v36;
    *v36 = v0;
    v36[1] = sub_1000A0B14;
    v26 = v30;
    v27 = v32;
    v28 = v33;
    v29 = v35;
    goto LABEL_9;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_1000A083C(char a1)
{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return _swift_task_switch(sub_1000A09A4, v4, v3);
}

uint64_t sub_1000A09A4()
{
  v1 = *(v0 + 272);
  (*(v0 + 168))();

  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v4 + 56);
    *(v0 + 232) = v5;
    *(v0 + 240) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = sub_1000A0DD8;
    v7 = *(v0 + 80);

    return sub_1000A1990(v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(1);
  }
}

uint64_t sub_1000A0B14(char a1)
{
  v2 = *v1;
  *(*v1 + 273) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return _swift_task_switch(sub_1000A0C7C, v4, v3);
}

uint64_t sub_1000A0C7C()
{
  if (*(v0 + 273))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v3 + 56);
    *(v0 + 232) = v4;
    *(v0 + 240) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v4(v1, 1, 1, v2);
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_1000A0DD8;
    v6 = *(v0 + 80);

    return sub_1000A1990(v6);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8(1);
  }
}

uint64_t sub_1000A0DD8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1000A1124;
  }

  else
  {
    v5 = sub_1000A0F14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A0F14()
{
  v1 = v0[29];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];

  sub_1000079B4(v3, &unk_100775660);
  v1(v2, 0, 1, v4);
  sub_1000A9578(v2, v3);
  v5 = v0[11];
  if (*(v0[5] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_allowsShareSheets) == 1)
  {
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    sub_10000794C(v5, v6, &unk_100775660);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = v0[9];
      sub_1000079B4(v0[11], &unk_100775660);
      v5 = v9;
    }

    else
    {
      v10 = v0[11];
      v11 = v0[8];
      v12 = v0[6];
      v13 = v0[7];
      v14 = v0[5];
      (*(v13 + 32))(v11, v0[9], v12);
      isa = TTRTemplateSharingPresenterCapability.templateLinkMetadataForShareSheet()().super.isa;
      sub_10000C36C((v14 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v14 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
      sub_100283BE4(v11, isa);

      (*(v13 + 8))(v11, v12);
      v5 = v10;
    }
  }

  sub_1000079B4(v5, &unk_100775660);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1000A1124()
{
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1000A11BC;
  v2 = *(v0 + 256);

  return sub_1000A2850(v2);
}

uint64_t sub_1000A11BC()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1000A12DC, v3, v2);
}

uint64_t sub_1000A12DC()
{

  v1 = v0[11];
  if (*(v0[5] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_allowsShareSheets) == 1)
  {
    v2 = v0[9];
    v3 = v0[6];
    v4 = v0[7];
    sub_10000794C(v1, v2, &unk_100775660);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      v5 = v0[9];
      sub_1000079B4(v0[11], &unk_100775660);
      v1 = v5;
    }

    else
    {
      v6 = v0[11];
      v7 = v0[8];
      v8 = v0[6];
      v9 = v0[7];
      v10 = v0[5];
      (*(v9 + 32))(v7, v0[9], v8);
      isa = TTRTemplateSharingPresenterCapability.templateLinkMetadataForShareSheet()().super.isa;
      sub_10000C36C((v10 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v10 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
      sub_100283BE4(v7, isa);

      (*(v9 + 8))(v7, v8);
      v1 = v6;
    }
  }

  sub_1000079B4(v1, &unk_100775660);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1000A14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  type metadata accessor for MainActor();
  v7[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[15] = v9;
  v7[16] = v8;

  return _swift_task_switch(sub_1000A1558, v9, v8);
}

uint64_t sub_1000A1558()
{
  v1 = *(v0 + 80);
  v2 = String._bridgeToObjectiveC()();
  if (v1)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  *(v0 + 136) = v6;

  sub_10000B0D8(v5 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router, v0 + 16);
  sub_10000C36C((v0 + 16), *(v0 + 40));
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v7 = swift_allocObject();
  *(v0 + 144) = v7;
  *(v7 + 16) = xmmword_10062D3F0;
  if (!v4)
  {
    static TTRLocalizableStrings.Common.continueButton.getter();
  }

  *(v0 + 160) = 1;

  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 161) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_1000A17C8;

  return sub_1000A8080(v6, v7);
}

uint64_t sub_1000A17C8(char a1)
{
  v2 = *v1;
  *(*v1 + 162) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_1000A1914, v4, v3);
}

uint64_t sub_1000A1914()
{
  v1 = *(v0 + 162);

  sub_100004758(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_1000A1990(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = sub_100058000(&qword_10076B268);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for TTRTemplateSharingViewModel();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v6;
  v2[20] = v5;

  return _swift_task_switch(sub_1000A1B38, v6, v5);
}

uint64_t sub_1000A1B38()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);
  v9 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  *(v0 + 168) = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  swift_beginAccess();
  v10 = *(v2 + 16);
  *(v0 + 176) = v10;
  *(v0 + 184) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8 + v9, v4);
  TTRTemplateSharingViewModel.purpose.getter();
  v11 = *(v2 + 8);
  *(v0 + 192) = v11;
  *(v0 + 200) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v4);
  (*(v6 + 104))(v5, enum case for TTRTemplateSharingViewModel.Purpose.createPublicLink(_:), v7);
  LOBYTE(v1) = static TTRTemplateSharingViewModel.Purpose.== infix(_:_:)();
  *(v0 + 320) = v1 & 1;
  v12 = *(v6 + 8);
  v12(v5, v7);
  v12(v3, v7);
  if (v1)
  {
    *(v0 + 240) = *sub_10000C36C((*(v0 + 48) + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(*(v0 + 48) + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
    *(v0 + 248) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 256) = v14;
    *(v0 + 264) = v13;

    return _swift_task_switch(sub_1000A20AC, v14, v13);
  }

  else
  {
    updated = static TTRLocalizableStrings.Templates.publicTemplateUpdateLinkAlertTitle.getter();
    v17 = v16;
    *(v0 + 208) = v16;
    v18 = static TTRLocalizableStrings.Templates.publicTemplateUpdateLinkAlertMessage.getter();
    v20 = v19;
    *(v0 + 216) = v19;
    v21 = static TTRLocalizableStrings.Common.updateButton.getter();
    v23 = v22;
    *(v0 + 224) = v22;
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_1000A1DC0;

    return sub_1000A14B4(updated, v17, v18, v20, v21, v23);
  }
}

uint64_t sub_1000A1DC0(char a1)
{
  v2 = *v1;
  *(*v1 + 321) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_1000A1F4C, v4, v3);
}

uint64_t sub_1000A1F4C()
{
  if (*(v0 + 321))
  {
    *(v0 + 240) = *sub_10000C36C((*(v0 + 48) + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(*(v0 + 48) + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
    *(v0 + 248) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 256) = v2;
    *(v0 + 264) = v1;

    return _swift_task_switch(sub_1000A20AC, v2, v1);
  }

  else
  {

    [objc_opt_self() cancelledError];
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000A20AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_1000A2194;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[19];
    v4 = v0[20];

    return _swift_task_switch(sub_1000A2338, v3, v4);
  }
}

uint64_t sub_1000A2194()
{
  v1 = *v0;
  v2 = *(*v0 + 272);

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return _swift_task_switch(sub_1000A22D4, v4, v3);
}

uint64_t sub_1000A22D4()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_1000A2338, v1, v2);
}

uint64_t sub_1000A2338()
{
  v1 = *(v0 + 320);
  v15 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 48);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRPotentiallyLongOperationPerformer();
  swift_allocObject();
  *(v0 + 288) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
  v2(v4, v6 + v3, v5);
  v9 = TTRTemplateSharingViewModel.makePublicLinkConfiguration()();
  *(v0 + 296) = v9;
  v15(v4, v5);
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  *v11 = v0;
  v11[1] = sub_1000A2544;
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v12, &unk_10062F728, v10, v13);
}

uint64_t sub_1000A2544()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1000A2688, v3, v2);
}

uint64_t sub_1000A2688()
{
  v1 = v0[8];
  v2 = v0[9];

  sub_10000794C(v2, v1, &qword_10076B268);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[37];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[9];
    swift_willThrow();

    sub_1000079B4(v5, &qword_10076B268);
  }

  else
  {
    v7 = v0[8];
    v8 = v0[5];
    sub_1000079B4(v0[9], &qword_10076B268);

    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 32))(v8, v7, v9);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000A2850(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_1000A2910, v4, v3);
}

uint64_t sub_1000A2910()
{
  v22 = v0;
  swift_getErrorValue();
  if (Error.isREMError(withErrorCode:)())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_100766EF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_10076B0D8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[13];
      v7 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v7 = 136446466;
      v0[8] = v6;
      swift_getMetatypeMetadata();
      v8 = String.init<A>(describing:)();
      v10 = sub_100004060(v8, v9, &v21);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      swift_getErrorValue();
      v11 = Error.rem_errorDescription.getter();
      v13 = sub_100004060(v11, v12, &v21);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: failed to create or update public link {error: %{public}s}", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = static TTRLocalizableStrings.Templates.publicTemplateSharingErrorAlertTitle.getter();
    v16 = v15;
    v0[17] = v15;
    v17 = static TTRLocalizableStrings.Templates.publicTemplateSharingRetryLaterErrorAlertMessage.getter();
    v19 = v18;
    v0[18] = v18;
    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_1000A2BD8;

    return sub_1000A3168(v14, v16, v17, v19);
  }
}

uint64_t sub_1000A2BD8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1000A2D38, v3, v2);
}

uint64_t sub_1000A2D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000A2E34, v6, v5);
}

uint64_t sub_1000A2E34()
{
  v0[7] = *sub_10000C36C((v0[2] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v0[2] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
  v0[8] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v2;
  v0[10] = v1;

  return _swift_task_switch(sub_1000A2EDC, v2, v1);
}

uint64_t sub_1000A2EDC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1000A2FC4;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[5];
    v4 = v0[6];

    return _swift_task_switch(sub_1000A97B0, v3, v4);
  }
}

uint64_t sub_1000A2FC4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_1000A3104, v4, v3);
}

uint64_t sub_1000A3104()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1000A97B0, v1, v2);
}

uint64_t sub_1000A3168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1000A3208, v7, v6);
}

uint64_t sub_1000A3208()
{
  v1 = *(v0 + 40);
  v2 = String._bridgeToObjectiveC()();
  if (v1)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 48);
  v5 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  *(v0 + 80) = v5;

  sub_10000C36C((v4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v4 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = xmmword_10062D400;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 104) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1000A33FC;

  return (sub_1000A8080)(v5, v6);
}

uint64_t sub_1000A33FC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000A3540, v3, v2);
}

uint64_t sub_1000A3540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A35AC(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router, v11);

    sub_10000C36C(v11, v11[3]);
    if (a2)
    {
      v4 = static TTRLocalizableStrings.Templates.publicTemplateCreating.getter();
    }

    else
    {
      v4 = static TTRLocalizableStrings.Templates.publicTemplateUpdating.getter();
    }

    v6 = v4;
    v7 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = [Strong presentingViewController];
      if (v10)
      {

LABEL_10:
        sub_10048DE3C(v6, v7, v9);

        return sub_100004758(v11);
      }
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1000A36BC(uint64_t a1)
{
  v1[10] = a1;
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_1000A3754, v3, v2);
}

uint64_t sub_1000A3754()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router, (v0 + 2));

    sub_10000C36C(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1000A386C;

    return sub_100284090();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000A386C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000A97AC, v3, v2);
}

uint64_t sub_1000A398C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return _swift_task_switch(sub_1000A3A84, v6, v5);
}

uint64_t sub_1000A3A84()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1000A3B50;
  v4 = v0[7];
  v5 = v0[4];

  return dispatch thunk of TTRTemplateSharingInteractorType.createOrUpdatePublicLink(with:)(v4, v5, ObjectType, v1);
}

uint64_t sub_1000A3B50()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1000A3D44;
  }

  else
  {
    v5 = sub_1000A3C8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A3C8C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];

  (*(v3 + 32))(v4, v1, v2);
  sub_100058000(&qword_10076B268);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A3D44()
{
  v1 = v0[12];
  v2 = v0[2];

  *v2 = v1;
  sub_100058000(&qword_10076B268);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A3DDC()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  v1 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  v2 = type metadata accessor for TTRTemplateSharingViewModel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_continuationForPerformAction, &qword_10076B240);
  return v0;
}

uint64_t sub_1000A3ECC()
{
  sub_1000A3DDC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRITemplateSharingPresenter()
{
  result = qword_10076B158;
  if (!qword_10076B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A3F78()
{
  type metadata accessor for TTRTemplateSharingViewModel();
  if (v0 <= 0x3F)
  {
    sub_1000A4088();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000A4088()
{
  if (!qword_10076B168)
  {
    sub_10005D20C(&unk_10076B170);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10076B168);
    }
  }
}

uint64_t sub_1000A40EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v6 = type metadata accessor for TTRTemplateSharingAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v10 - 8);
  v12 = &v29[-v11];
  v13 = sub_100058000(&qword_10076B240);
  __chkstk_darwin(v13 - 8);
  v15 = &v29[-v14];
  v16 = sub_100058000(&unk_10076B170);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_continuationForPerformAction;
  swift_beginAccess();
  sub_1000A7EF0(v15, a2 + v18);
  swift_endAccess();
  if (qword_100766EF8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_10076B0D8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "TTRITemplateSharingPresenter: continuationForPerformAction is set", v22, 2u);
  }

  *(a2 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_allowsShareSheets) = v30 & 1;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  (*(v7 + 16))(&v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v31, v6);
  type metadata accessor for MainActor();

  v24 = static MainActor.shared.getter();
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v27 + v25, v9, v6);
  *(v27 + v26) = a2;
  sub_10009E31C(0, 0, v12, &unk_10062F680, v27);
}

uint64_t sub_1000A44CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for TTRTemplateSharingAction();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_1000A45C0, v8, v7);
}

uint64_t sub_1000A45C0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for TTRTemplateSharingAction.createLink(_:) || v4 == enum case for TTRTemplateSharingAction.updateLink(_:))
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1000A47D4;

    return sub_1000A5C1C();
  }

  else if (v4 == enum case for TTRTemplateSharingAction.sendLink(_:))
  {

    v8 = sub_1000A4B14();
    sub_10009FC2C(v8);

    v9 = v0[1];

    return v9();
  }

  else if (v4 == enum case for TTRTemplateSharingAction.stopSharing(_:))
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_1000A4974;

    return sub_1000A5004();
  }

  else
  {

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_1000A47D4(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_1000A48FC, v4, v3);
}

uint64_t sub_1000A48FC()
{

  sub_10009FC2C(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A4974(char a1)
{
  v2 = *v1;
  *(*v1 + 97) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_1000A4A9C, v4, v3);
}

uint64_t sub_1000A4A9C()
{

  sub_10009FC2C(*(v0 + 97));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A4B14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100775660);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for REMTemplate.PublicLinkStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v0;
  swift_getObjectType();
  v15 = dispatch thunk of TTRTemplateSharingInteractorType.template.getter();
  REMTemplate.publicLinkStatus.getter();
  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == enum case for REMTemplate.PublicLinkStatus.created(_:))
  {
    (*(v12 + 96))(v14, v11);
    v17 = *v14;
    v18 = [*v14 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 56))(v10, 0, 1, v1);
    sub_10000794C(v10, v8, &unk_100775660);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_1000079B4(v10, &unk_100775660);

      v19 = v8;
    }

    else
    {
      (*(v2 + 32))(v4, v8, v1);
      v28 = v32;
      isa = TTRTemplateSharingPresenterCapability.templateLinkMetadataForShareSheet()().super.isa;
      sub_10000C36C((v28 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v28 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
      sub_100283BE4(v4, isa);

      (*(v2 + 8))(v4, v1);
      v19 = v10;
    }

    sub_1000079B4(v19, &unk_100775660);
  }

  else
  {
    if (v16 != enum case for REMTemplate.PublicLinkStatus.notRequested(_:) && v16 != enum case for REMTemplate.PublicLinkStatus.pendingCreation(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    if (qword_100766EF8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10076B0D8);
    v22 = v15;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = [v22 objectID];
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "TTRITemplateSharingPresenter: unable to show share sheet; publicLinkURL is not available {templateID: %@}", v25, 0xCu);
      sub_1000079B4(v26, &unk_10076DF80);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000A5004()
{
  v1[9] = v0;
  v1[10] = *v0;
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_1000A50C4, v3, v2);
}

uint64_t sub_1000A50C4()
{
  v1 = *(v0 + 72);
  static TTRLocalizableStrings.Templates.publicTemplateStopSharingAlertTitle.getter();
  static TTRLocalizableStrings.Templates.publicTemplateStopSharingAlertMessage.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  *(v0 + 112) = v4;

  sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v5 = swift_allocObject();
  *(v0 + 120) = v5;
  *(v5 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Templates.publicTemplateStopSharingAlertStopSharingButton.getter();
  *(v0 + 49) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 50) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1000A530C;

  return sub_1000A8080(v4, v5);
}

uint64_t sub_1000A530C(char a1)
{
  v2 = *v1;
  *(*v1 + 51) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return _swift_task_switch(sub_1000A5458, v4, v3);
}

uint64_t sub_1000A5458()
{
  v1 = *(v0 + 51);
  if (v1 == 2 || (v1 & 1) == 0)
  {

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for TTRPotentiallyLongOperationPerformer();
    swift_allocObject();
    *(v0 + 136) = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    v3 = sub_100058000(&qword_10076B278);
    *v2 = v0;
    v2[1] = sub_1000A562C;
    v4 = *(v0 + 72);

    return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v0 + 40, &unk_10062F750, v4, v3);
  }
}

uint64_t sub_1000A562C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000A574C, v3, v2);
}

uint64_t sub_1000A574C()
{
  v24 = v0;
  v1 = *(v0 + 40);
  *(v0 + 152) = v1;
  if (*(v0 + 48) == 1)
  {
    swift_errorRetain();
    if (qword_100766EF8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_10076B0D8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000A928C(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 80);
      v6 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v6 = 136446466;
      *(v0 + 56) = v5;
      swift_getMetatypeMetadata();
      v7 = String.init<A>(describing:)();
      v9 = sub_100004060(v7, v8, &v23);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = Error.rem_errorDescription.getter();
      v12 = sub_100004060(v10, v11, &v23);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: failed to stop sharing public link {error: %{public}s}", v6, 0x16u);
      swift_arrayDestroy();
    }

    v13 = static TTRLocalizableStrings.Templates.publicTemplateStopSharingErrorAlertTitle.getter();
    v15 = v14;
    *(v0 + 160) = v14;
    v16 = static TTRLocalizableStrings.Templates.publicTemplateStopSharingErrorAlertMessage.getter();
    v18 = v17;
    *(v0 + 168) = v17;
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_1000A5A20;

    return sub_1000A3168(v13, v15, v16, v18);
  }

  else
  {
    v21 = *(v0 + 112);

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_1000A5A20()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000A5B80, v3, v2);
}

uint64_t sub_1000A5B80()
{
  v1 = v0[19];
  v2 = v0[14];

  sub_1000A928C(v1, 1);
  sub_1000A928C(v1, 1);
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1000A5C1C()
{
  v1[2] = v0;
  sub_100058000(&unk_100775660);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_100058000(&qword_10076B248);
  v1[9] = swift_task_alloc();
  v1[10] = sub_100058000(&qword_10076B250);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for TTRTemplateSharingPresenterCapability.ActionPriorToCommit();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for TTRTemplateSharingViewModel();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v6;
  v1[22] = v5;

  return _swift_task_switch(sub_1000A5EA4, v6, v5);
}

uint64_t sub_1000A5EA4()
{
  v0[23] = *(v0[2] + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_presenterCapability);
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1000A5F50;
  v2 = v0[9];

  return TTRTemplateSharingPresenterCapability.prepareToStartOrManageSharing()(v2);
}

uint64_t sub_1000A5F50()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1000A6070, v3, v2);
}

uint64_t sub_1000A6070()
{
  v1 = v0[9];
  v2 = sub_100058000(&qword_10076B258);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_1000079B4(v1, &qword_10076B248);
    v3 = 1;
LABEL_12:
    v44 = v3;

    v27 = v0[1];

    return v27(v44);
  }

  v4 = v0[17];
  v40 = v0[19];
  v41 = v0[15];
  v42 = v0[18];
  v43 = v0[14];
  v5 = v0[13];
  v38 = v0[16];
  v39 = v0[12];
  v6 = v0[10];
  v7 = v0[11];
  v34 = *(v6 + 48);
  v35 = *(v2 + 48);
  v37 = *(v4 + 32);
  v37(v7, v1);
  v8 = *(v5 + 32);
  v8(v7 + v34, v1 + v35, v39);
  v36 = *(v6 + 48);
  (v37)(v40, v7, v38);
  v8(v41, v7 + v36, v39);
  (*(v4 + 16))(v42, v40, v38);
  sub_10009F318(v42);
  (*(v5 + 16))(v43, v41, v39);
  v9 = (*(v5 + 88))(v43, v39);
  if (v9 == enum case for TTRTemplateSharingPresenterCapability.ActionPriorToCommit.showMaxReminderCountExceededAlert(_:))
  {
    v10 = static TTRLocalizableStrings.Templates.publicTemplateSharingMaxReminderCountExceededAlertTitle.getter();
    v12 = v11;
    v0[25] = v11;
    v13 = static TTRLocalizableStrings.Templates.publicTemplateSharingMaxReminderCountExceededAlertMessage.getter();
    v15 = v14;
    v0[26] = v14;
    v16 = swift_task_alloc();
    v0[27] = v16;
    *v16 = v0;
    v16[1] = sub_1000A6614;

    return sub_1000A3168(v10, v12, v13, v15);
  }

  if (v9 == enum case for TTRTemplateSharingPresenterCapability.ActionPriorToCommit.showInternetUnreachable(_:))
  {
    v18 = v0[19];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[2];

    sub_10000C36C((v24 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v24 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
    sub_1000A8B94(v24);
LABEL_11:
    (*(v23 + 8))(v21, v22);
    (*(v20 + 8))(v18, v19);
    v3 = 2;
    goto LABEL_12;
  }

  if (v9 == enum case for TTRTemplateSharingPresenterCapability.ActionPriorToCommit.showConfiguration(_:))
  {
    v18 = v0[19];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    v25 = v0[2];

    v26 = sub_10000C36C((v25 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v25 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
    sub_1000A8D00(v25, *v26);
    goto LABEL_11;
  }

  if (v9 == enum case for TTRTemplateSharingPresenterCapability.ActionPriorToCommit.showImageAlert(_:))
  {
    v28 = static TTRLocalizableStrings.Templates.publicTemplateContainsNoImagesText.getter();
    v30 = v29;
    v0[28] = v29;
    v31 = swift_task_alloc();
    v0[29] = v31;
    *v31 = v0;
    v31[1] = sub_1000A6898;

    return sub_1000A14B4(v28, v30, 0, 0, 0, 0);
  }

  else if (v9 == enum case for TTRTemplateSharingPresenterCapability.ActionPriorToCommit.proceedDirectly(_:))
  {
    v32 = swift_task_alloc();
    v0[30] = v32;
    *v32 = v0;
    v32[1] = sub_1000A6B90;
    v33 = v0[8];

    return sub_1000A1990(v33);
  }

  else
  {

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_1000A6614()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1000A6774, v3, v2);
}

uint64_t sub_1000A6774()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1000A6898(char a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_1000A69E4, v4, v3);
}

uint64_t sub_1000A69E4()
{
  if (*(v0 + 264))
  {
    v1 = swift_task_alloc();
    *(v0 + 240) = v1;
    *v1 = v0;
    v1[1] = sub_1000A6B90;
    v2 = *(v0 + 64);

    return sub_1000A1990(v2);
  }

  else
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    (*(v9 + 8))(v7, v8);
    (*(v6 + 8))(v4, v5);

    v10 = *(v0 + 8);

    return v10(1);
  }
}

uint64_t sub_1000A6B90()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1000A7058;
  }

  else
  {
    v5 = sub_1000A6CCC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A6CCC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  if (*(v5 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_allowsShareSheets) == 1)
  {
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[3];
    sub_10000794C(v0[4], v8, &unk_100775660);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      v42 = v0[19];
      v9 = v0[16];
      v10 = v0[17];
      v11 = v0[15];
      v12 = v0[12];
      v13 = v0[13];
      v14 = v0[8];
      v16 = v0[5];
      v15 = v0[6];
      v17 = v0[3];
      sub_1000079B4(v0[4], &unk_100775660);
      (*(v15 + 8))(v14, v16);
      (*(v13 + 8))(v11, v12);
      (*(v10 + 8))(v42, v9);
      sub_1000079B4(v17, &unk_100775660);
    }

    else
    {
      v27 = v0[17];
      v41 = v0[16];
      v43 = v0[19];
      v28 = v0[13];
      v39 = v0[12];
      v40 = v0[15];
      v29 = v0[7];
      v38 = v0[8];
      v31 = v0[5];
      v30 = v0[6];
      v32 = v0[4];
      v33 = v0[2];
      (*(v30 + 32))(v29, v0[3], v31);
      isa = TTRTemplateSharingPresenterCapability.templateLinkMetadataForShareSheet()().super.isa;
      sub_10000C36C((v33 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router), *(v33 + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router + 24));
      sub_100283BE4(v29, isa);

      v35 = *(v30 + 8);
      v35(v29, v31);
      sub_1000079B4(v32, &unk_100775660);
      v35(v38, v31);
      (*(v28 + 8))(v40, v39);
      (*(v27 + 8))(v43, v41);
    }
  }

  else
  {
    v18 = v0[19];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[8];
    v25 = v0[5];
    v26 = v0[6];
    sub_1000079B4(v0[4], &unk_100775660);
    (*(v26 + 8))(v24, v25);
    (*(v23 + 8))(v21, v22);
    (*(v20 + 8))(v18, v19);
  }

  v36 = v0[1];

  return v36(0);
}

uint64_t sub_1000A7058()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_1000A70F0;
  v2 = *(v0 + 248);

  return sub_1000A2850(v2);
}

uint64_t sub_1000A70F0()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1000A7210, v3, v2);
}

uint64_t sub_1000A7210()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1000A7340()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router, v7);

    sub_10000C36C(v7, v7[3]);
    v1 = static TTRLocalizableStrings.Templates.publicTemplateDeleting.getter();
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong presentingViewController];
      if (v6)
      {

LABEL_7:
        sub_10048DE3C(v1, v3, v5);

        return sub_100004758(v7);
      }
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000A7440(uint64_t a1)
{
  v1[10] = a1;
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_1000A74D8, v3, v2);
}

uint64_t sub_1000A74D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_router, (v0 + 2));

    sub_10000C36C(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1000A75F0;

    return sub_100284090();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000A75F0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000A7710, v3, v2);
}

uint64_t sub_1000A7710()
{

  sub_100004758(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000A7810, v4, v3);
}

uint64_t sub_1000A7810()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000A78D0;

  return dispatch thunk of TTRTemplateSharingInteractorType.stopSharing()(ObjectType, v1);
}

uint64_t sub_1000A78D0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1000A7A84;
  }

  else
  {
    v5 = sub_1000A7A0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A7A0C()
{

  v1 = v0[2];
  v2 = v0[8] != 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A7A84()
{
  v1 = v0[8];

  v2 = v0[2];
  v3 = v0[8] != 0;
  *v2 = v1;
  *(v2 + 8) = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A7B00(uint64_t a1, char a2)
{
  *(v3 + 89) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1000A7BA0, v5, v4);
}

uint64_t sub_1000A7BA0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 89);
  v3 = *(v0 + 16);
  v4 = static MainActor.shared.getter();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1000A7CC0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD00000000000001DLL, 0x8000000100670CC0, sub_1000A7EE0, v5, &type metadata for Bool);
}

uint64_t sub_1000A7CC0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1000A7E20, v3, v2);
}

uint64_t sub_1000A7E20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7E80()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002959C4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000A7EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7F60(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRTemplateSharingAction() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_1000A44CC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000A8080(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1000A811C, v5, v4);
}

uint64_t sub_1000A811C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];
    if (v3)
    {

LABEL_6:
      v0[8] = v2;
      v4 = swift_task_alloc();
      v0[9] = v4;
      *v4 = v0;
      v4[1] = sub_1000A8258;
      v5 = v0[2];
      v6 = v0[3];

      return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v5, v6, 0, 0, 1, &type metadata for Bool);
    }
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    goto LABEL_6;
  }

  v7 = v0[1];

  return v7(2);
}

uint64_t sub_1000A8258()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 81) = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_1000A839C, v4, v3);
}

uint64_t sub_1000A839C()
{

  v1 = *(v0 + 81);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000A8400(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000A84F4;

  return v5(v2 + 32);
}

uint64_t sub_1000A84F4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000A8608(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1000A86FC;

  return v5(v2 + 16);
}

uint64_t sub_1000A86FC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void sub_1000A8810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a5 + 80) == 1)
  {
    if (qword_100767088 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_1007775D0);
    v35 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v19 = sub_10028342C();
      v21 = sub_100004060(v19, v20, &v36);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v35, v16, "%s Ignore request to show public template preview. Preview creation in progress.", v17, 0xCu);
      sub_100004758(v18);
    }

    else
    {
      v30 = v35;
    }
  }

  else
  {
    *(a5 + 80) = 1;
    v35 = a5[2];
    sub_1000A96A0();
    v34 = a2;
    v33 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    v32 = v10;
    v23 = v22;
    swift_weakInit();
    (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
    v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = a1;
    (*(v12 + 32))(v26 + v24, v14, v11);
    v27 = (v26 + v25);
    *v27 = a4;
    v27[1] = &off_100714A80;
    *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;

    v28 = a1;

    v29 = v33;
    REMStore.createPublicContentPreview(of:with:completionHandlerQueue:completion:)();
  }
}

void sub_1000A8B94(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  v3 = Strong;
  v4 = [Strong presentingViewController];
  if (!v4)
  {

    goto LABEL_5;
  }

LABEL_6:
  v5 = type metadata accessor for TTRITemplateSharingOffineViewController();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC9Reminders39TTRITemplateSharingOffineViewController_presenter];
  *v7 = a1;
  *(v7 + 1) = &off_100714AA8;
  v13.receiver = v6;
  v13.super_class = v5;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  v9 = objc_allocWithZone(UINavigationController);
  v10 = [v9 initWithRootViewController:{v8, v13.receiver, v13.super_class}];
  [v10 setModalPresentationStyle:2];
  v11 = [v10 presentationController];
  if (v11)
  {
    v12 = v11;
    [v11 setDelegate:v8];
  }

  swift_unknownObjectWeakAssign();
  [v3 presentViewController:v10 animated:1 completion:0];
}

void sub_1000A8D00(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, v17 = [Strong presentingViewController], v5, (v6 = v17) == 0))
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = *(a2 + 48);
    v10 = objc_allocWithZone(type metadata accessor for TTRITemplateSharingConfigurationViewController());
    v11 = v9;

    v13 = sub_1000A8EA8(v12, v11, v10);
    *(a1 + 24) = &off_10071DAE0;
    swift_unknownObjectWeakAssign();
    v18 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v13];
    v14 = [v18 navigationBar];
    [v14 setPrefersLargeTitles:1];

    v15 = [v18 presentationController];
    if (v15)
    {
      v16 = v15;
      [v15 setDelegate:v13];
    }

    swift_unknownObjectWeakAssign();
    [v8 presentViewController:v18 animated:1 completion:0];

    v6 = v18;
  }
}

id sub_1000A8EA8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_commitButton] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableDataController] = 0;
  a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_needsTableCellResize] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeCell] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsCell] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsCell] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeSection] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsSection] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsSection] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___imageSection] = 0;
  v7 = &a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter];
  *v7 = a1;
  v7[1] = &off_100714AA8;
  *&a3[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_localUndoManager] = a2;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1000A8FC4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_1000A36BC(v0);
}

uint64_t sub_1000A9054(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001AA38;

  return sub_1000A398C(a1, v5, v4);
}

unint64_t sub_1000A9100()
{
  result = qword_10076B270;
  if (!qword_10076B270)
  {
    type metadata accessor for TTRTemplateSharingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B270);
  }

  return result;
}

uint64_t sub_1000A9160()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_1000A7440(v0);
}

uint64_t sub_1000A91F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001AA3C;

  return sub_1000A7778(a1, v1);
}

uint64_t sub_1000A928C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000A9298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA38;

  return sub_1000A8608(a1, v4);
}

uint64_t sub_1000A9350(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return sub_1000A8608(a1, v4);
}

uint64_t sub_1000A9408(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA38;

  return sub_1000A8400(a1, v4);
}

uint64_t sub_1000A94C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA38;

  return sub_1000A8400(a1, v4);
}

uint64_t sub_1000A9578(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100775660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A95E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA38;

  return sub_1000A8400(a1, v4);
}

unint64_t sub_1000A96A0()
{
  result = qword_100777780;
  if (!qword_100777780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100777780);
  }

  return result;
}

void sub_1000A96EC(void *a1, char a2)
{
  v5 = *(type metadata accessor for TTRTemplateSharingViewModel.Purpose() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + v7;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v2 + v8);

  sub_10028345C(a1, a2 & 1, v9, v10, v2 + v6, v12, v13, v14);
}

uint64_t sub_1000A97CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_10057E714(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for TTRSectionID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1000A9888(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.startIndex.getter();
    v5 = v4;
    v6 = __CocoaDictionary.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaDictionary.Index.== infix(_:_:)();
    sub_10000FBA0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10000FBA0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000EF3E4(&v13, v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10000FBA0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1000A99B8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10057E950(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1000A9A4C(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10059A5B4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000A9AF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000A9D10(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&unk_10076BB20, &type metadata accessor for TTRRemindersListViewModel.SectionID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000A9F28(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100003540(0, &qword_10076BA50), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000AA040(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&qword_10076BE48, &type metadata accessor for REMRemindersListDataView.SortingStyle), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&qword_10076BE50, &type metadata accessor for REMRemindersListDataView.SortingStyle);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000AA258(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&unk_10076BAF0, &type metadata accessor for TTRRemindersListLayout), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&qword_1007809E0, &type metadata accessor for TTRRemindersListLayout);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_1000AA470(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (Hasher.init(_seed:)(), v6 = *(a1 + 16), Hasher._combine(_:)(v6), v7 = Hasher._finalize()(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(*(a2 + 48) + 8 * v9) + 16);
      result = v11 == v6;
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000AA574(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000AA78C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&qword_100769AC0, &type metadata accessor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&unk_100772710, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000AA9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1000AAA9C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1000AAB68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001013F4(&qword_10076BB40, &type metadata accessor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001013F4(&qword_10076BB48, &type metadata accessor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000AAD80(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 88);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_10062FFD0[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 88);
  *(v5 + 88) = 0x8000000000000000;
  sub_100126B44(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 88) = v23;
  return swift_endAccess();
}

uint64_t sub_1000AAF3C(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 88);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_10062FFD0[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(&_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 88);
  *(v5 + 88) = 0x8000000000000000;
  sub_100127484(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 88) = v23;
  return swift_endAccess();
}

uint64_t sub_1000AB0F8(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = a1;
  if (a1 >> 62)
  {
LABEL_56:
    v43 = v7;
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = v43;
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

  v9 = 0;
  v49 = a2;
  v50 = v7 & 0xC000000000000001;
  v44 = a2;
  v45 = v7 & 0xFFFFFFFFFFFFFF8;
  v47 = result;
  v48 = v7;
  while (1)
  {
    if (v50)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v9 >= *(v45 + 16))
      {
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v9 + 32);

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
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
    }

    swift_beginAccess();
    v13 = *(v5 + 88);
    if (*(v13 + 16))
    {
      v14 = sub_1003B3EDC(v11);
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        swift_endAccess();

        if (a4)
        {
LABEL_36:
          v29 = qword_10062FFD0[v44] | v17;
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_1003AB368(a2);
        v21 = v18[2];
        v22 = (v7 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_54;
        }

        v25 = v7;
        if (v18[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = v20;
            sub_1003AE128();
            v20 = v30;
            if (v25)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }
        }

        else
        {
          sub_1005491B4(v24, isUniquelyReferenced_nonNull_native);
          v20 = sub_1003AB368(a2);
          if ((v25 & 1) != (v7 & 1))
          {
            goto LABEL_59;
          }
        }

        if (v25)
        {
LABEL_32:
          *(v18[7] + 8 * v20) = a3;
          goto LABEL_36;
        }

LABEL_34:
        v18[(v20 >> 6) + 8] |= 1 << v20;
        *(v18[6] + v20) = a2;
        *(v18[7] + 8 * v20) = a3;
        v31 = v18[2];
        v23 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v23)
        {
          goto LABEL_55;
        }

        v18[2] = v32;
        goto LABEL_36;
      }
    }

    swift_endAccess();
    v18 = &_swiftEmptyDictionarySingleton;
    if ((a4 & 1) == 0)
    {
      sub_100058000(&unk_10076B980);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v26 = sub_1003AB368(a2);
      if (v7)
      {
        goto LABEL_52;
      }

      v18[(v26 >> 6) + 8] |= 1 << v26;
      *(v18[6] + v26) = a2;
      *(v18[7] + 8 * v26) = a3;
      v27 = v18[2];
      v23 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v23)
      {
        goto LABEL_53;
      }

      v18[2] = v28;
    }

    if (a2 > 2u)
    {
      v29 = a2 == 3 ? 1 : 4;
    }

    else
    {
      v29 = a2 >= 2u ? 2 : 0;
    }

LABEL_37:
    swift_beginAccess();
    a2 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v5 + 88);
    *(v5 + 88) = 0x8000000000000000;
    v34 = sub_1003B3EDC(v11);
    v35 = *(v33 + 16);
    v36 = (v7 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_49;
    }

    v38 = v7;
    if (*(v33 + 24) < v37)
    {
      break;
    }

    if (a2)
    {
      a2 = v33;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1003AE114();
      a2 = v33;
      if (v38)
      {
LABEL_4:
        v10 = (*(a2 + 56) + 16 * v34);
        *v10 = v18;
        v10[1] = v29;

        goto LABEL_5;
      }
    }

LABEL_44:
    *(a2 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    *(*(a2 + 48) + 8 * v34) = v11;
    v40 = (*(a2 + 56) + 16 * v34);
    *v40 = v18;
    v40[1] = v29;
    v41 = *(a2 + 16);
    v23 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v23)
    {
      goto LABEL_50;
    }

    *(a2 + 16) = v42;
LABEL_5:
    *(v5 + 88) = a2;
    result = swift_endAccess();
    ++v9;
    v7 = v48;
    a2 = v49;
    if (v12 == v47)
    {
      return result;
    }
  }

  sub_1005491A0(v37, a2);
  v39 = sub_1003B3EDC(v11);
  if ((v38 & 1) == (v7 & 1))
  {
    v34 = v39;
    a2 = v33;
    if (v38)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  sub_100058000(&qword_10076BB78);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000AB57C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = a1;
  if (a1 >> 62)
  {
LABEL_56:
    v43 = v7;
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = v43;
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

  v9 = 0;
  v49 = a2;
  v50 = v7 & 0xC000000000000001;
  v44 = a2;
  v45 = v7 & 0xFFFFFFFFFFFFFF8;
  v47 = result;
  v48 = v7;
  while (1)
  {
    if (v50)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v9 >= *(v45 + 16))
      {
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v9 + 32);

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
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
    }

    swift_beginAccess();
    v13 = *(v5 + 88);
    if (*(v13 + 16))
    {
      v14 = sub_1003B3EDC(v11);
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        swift_endAccess();

        if (a4)
        {
LABEL_36:
          v29 = qword_10062FFD0[v44] | v17;
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_1003AB368(a2);
        v21 = v18[2];
        v22 = (v7 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_54;
        }

        v25 = v7;
        if (v18[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = v20;
            sub_1003AE128();
            v20 = v30;
            if (v25)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }
        }

        else
        {
          sub_1005491B4(v24, isUniquelyReferenced_nonNull_native);
          v20 = sub_1003AB368(a2);
          if ((v25 & 1) != (v7 & 1))
          {
            goto LABEL_59;
          }
        }

        if (v25)
        {
LABEL_32:
          *(v18[7] + 8 * v20) = a3;
          goto LABEL_36;
        }

LABEL_34:
        v18[(v20 >> 6) + 8] |= 1 << v20;
        *(v18[6] + v20) = a2;
        *(v18[7] + 8 * v20) = a3;
        v31 = v18[2];
        v23 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v23)
        {
          goto LABEL_55;
        }

        v18[2] = v32;
        goto LABEL_36;
      }
    }

    swift_endAccess();
    v18 = &_swiftEmptyDictionarySingleton;
    if ((a4 & 1) == 0)
    {
      sub_100058000(&unk_10076B980);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v26 = sub_1003AB368(a2);
      if (v7)
      {
        goto LABEL_52;
      }

      v18[(v26 >> 6) + 8] |= 1 << v26;
      *(v18[6] + v26) = a2;
      *(v18[7] + 8 * v26) = a3;
      v27 = v18[2];
      v23 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v23)
      {
        goto LABEL_53;
      }

      v18[2] = v28;
    }

    if (a2 > 2u)
    {
      v29 = a2 == 3 ? 1 : 4;
    }

    else
    {
      v29 = a2 >= 2u ? 2 : 0;
    }

LABEL_37:
    swift_beginAccess();
    a2 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v5 + 88);
    *(v5 + 88) = 0x8000000000000000;
    v34 = sub_1003B3EDC(v11);
    v35 = *(v33 + 16);
    v36 = (v7 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_49;
    }

    v38 = v7;
    if (*(v33 + 24) < v37)
    {
      break;
    }

    if (a2)
    {
      a2 = v33;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1003AF6F4();
      a2 = v33;
      if (v38)
      {
LABEL_4:
        v10 = (*(a2 + 56) + 16 * v34);
        *v10 = v18;
        v10[1] = v29;

        goto LABEL_5;
      }
    }

LABEL_44:
    *(a2 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    *(*(a2 + 48) + 8 * v34) = v11;
    v40 = (*(a2 + 56) + 16 * v34);
    *v40 = v18;
    v40[1] = v29;
    v41 = *(a2 + 16);
    v23 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v23)
    {
      goto LABEL_50;
    }

    *(a2 + 16) = v42;
LABEL_5:
    *(v5 + 88) = a2;
    result = swift_endAccess();
    ++v9;
    v7 = v48;
    a2 = v49;
    if (v12 == v47)
    {
      return result;
    }
  }

  sub_10054B93C(v37, a2);
  v39 = sub_1003B3EDC(v11);
  if ((v38 & 1) == (v7 & 1))
  {
    v34 = v39;
    a2 = v33;
    if (v38)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  sub_100058000(&qword_10076B788);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000ABA00(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 80);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_10062FFD0[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 80);
  *(v5 + 80) = 0x8000000000000000;
  sub_100126B44(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 80) = v23;
  return swift_endAccess();
}

uint64_t sub_1000ABBBC(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 80);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_10062FFD0[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(&_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 80);
  *(v5 + 80) = 0x8000000000000000;
  sub_100127484(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 80) = v23;
  return swift_endAccess();
}

double sub_1000ABD78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = v7;
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[4];
  v76 = *(v11 + 40);
  v15 = v11;
  *&v135 = v13;
  *(&v135 + 1) = v12;
  v136 = v14;
  v137 = v76;
  *&v138 = a1;
  *(&v138 + 1) = a2;
  v139 = a3;
  v140 = a4;
  swift_beginAccess();
  v16 = v15[10];
  v60 = v15;

  sub_10000794C(&v135, v148, &qword_10076BB88);
  sub_1000F18BC(v16, v12, a2, &v123);

  sub_10000794C(&v135, v148, &qword_10076BB88);

  sub_1000F18BC(v17, v12, a2, v127);

  v18 = a1;

  v19 = v125;
  v20 = v124;
  v66 = v124;
  v21 = v123;
  v78 = v125;
  v79 = v123;
  sub_10000794C(&v135, v148, &qword_10076BB88);
  v65 = a2;
  sub_1000F1D8C(v127, v21, v20, v19, v13, v12, v14, v76, v128, v18, a2, a3, a4);

  v134 = v127[0];
  sub_1000079B4(&v134, &qword_10076BB90);
  v133 = v127[1];
  sub_1000079B4(&v133, &qword_10076BB90);
  v132 = v127[2];
  sub_1000079B4(&v132, &qword_10076BB90);
  v131 = v127[3];
  sub_1000079B4(&v131, &qword_10076BB90);
  v130 = v127[4];
  sub_1000079B4(&v130, &qword_10076BB90);
  v71 = v128[2];
  v72 = v128[4];
  v67 = v128[1];
  v61 = v128[3];
  v63 = v128[0];
  swift_beginAccess();
  v109 = &v123;

  v70 = sub_1000F4984(v22, sub_1000FD7B4, v108, &qword_10076BB98);

  v23 = v60[10];
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 1;
  v106 = sub_1000FD7C0;
  v107 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v12;
  *(v25 + 32) = v14;
  *(v25 + 40) = v76;
  v103 = sub_1001014D0;
  v104 = v25;

  sub_1000F097C(v79, sub_10008C190, v102, sub_10008C184, v105, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80);
  v69 = v26;

  v27 = v60[11];
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 1;
  v100 = sub_100101538;
  v101 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v13;
  *(v29 + 24) = v12;
  *(v29 + 32) = v14;
  *(v29 + 40) = v76;

  v68 = sub_1000F01F4(v63, sub_100100714, v29, sub_10008C184, v99, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80);

  v30 = v60[10];
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = 3;
  v97 = sub_100101538;
  v98 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v13;
  *(v32 + 24) = v12;
  *(v32 + 32) = v14;
  *(v32 + 40) = v76;
  v94 = sub_1000FD80C;
  v95 = v32;

  sub_1000F097C(v78, sub_10008C190, v93, sub_10008C184, v96, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80);
  v64 = v33;

  v34 = v60[11];
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = 3;
  v91 = sub_100101538;
  v92 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v13;
  *(v36 + 24) = v12;
  *(v36 + 32) = v14;
  *(v36 + 40) = v76;

  v77 = sub_1000F01F4(v61, sub_100101464, v36, sub_10008C184, v90, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80);

  v37 = v60[10];
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = 0;
  v88 = sub_100101538;
  v89 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v18;
  *(v39 + 24) = v65;
  *(v39 + 32) = a3;
  *(v39 + 40) = a4;
  v85 = sub_1001014D0;
  v86 = v39;

  sub_1000F097C(v66, sub_10008C190, v84, sub_10008C184, v87, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80);
  v62 = v40;

  v41 = v60[11];
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = 0;
  v82 = sub_100101538;
  v83 = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v18;
  *(v43 + 24) = v65;
  *(v43 + 32) = a3;
  *(v43 + 40) = a4;

  v44 = sub_1000F01F4(v67, sub_100101464, v43, sub_10008C184, v81, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80);

  sub_10000794C(&v135, v148, &qword_10076BB88);
  v117 = v135;
  v118 = v136;
  v119 = v137;
  v120 = v138;
  v121 = v139;
  v122 = v140;

  v46 = sub_1000EFC58(v45, &v117, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80, sub_1003B3EDC);
  sub_1000079B4(&v135, &qword_10076BB88);

  v129 = v126;
  sub_1000079B4(&v129, &qword_10076BB90);

  sub_10000794C(&v135, v148, &qword_10076BB88);
  v111 = v135;
  v112 = v136;
  v113 = v137;
  v114 = v138;
  v115 = v139;
  v116 = v140;
  v47 = sub_1000EF6BC(v71, &v111, &qword_10076BB78, &unk_10062FDD0, &qword_10076BB80, sub_1000C73C4);
  sub_1000079B4(&v135, &qword_10076BB88);
  sub_1000079B4(&v135, &qword_10076BB88);
  v48 = swift_allocObject();
  *(v48 + 16) = v70;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1000FD824;
  *(v49 + 24) = v48;

  v51 = sub_1000F0CF4(v50, sub_10008C184, v49);
  swift_bridgeObjectRelease_n();

  v52 = sub_10057CC60(v72, v71);

  *&v141 = v62;
  *(&v141 + 1) = v69;
  *&v142 = v64;
  *(&v142 + 1) = v46;
  *&v143 = v44;
  *(&v143 + 1) = v68;
  *&v144 = v77;
  *(&v144 + 1) = v47;
  v145 = v51;
  v146 = a5;
  v147 = a6;
  v148[0] = v62;
  v148[1] = v69;
  v148[2] = v64;
  v148[3] = v46;
  v148[4] = v44;
  v148[5] = v68;
  v148[6] = v77;
  v148[7] = v47;
  v148[8] = v51;
  v148[9] = a5;
  v148[10] = a6;
  sub_10008B7A4(&v141, v110);
  sub_10008B800(v148);
  v53 = v145;
  v54 = v146;
  v55 = v147;
  result = *&v141;
  v57 = v142;
  v58 = v143;
  v59 = v144;
  *a7 = v141;
  *(a7 + 16) = v57;
  *(a7 + 32) = v58;
  *(a7 + 48) = v59;
  *(a7 + 64) = v53;
  *(a7 + 72) = v54;
  *(a7 + 80) = v55;
  *(a7 + 88) = v52;
  return result;
}

double sub_1000AC9F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = v7;
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[4];
  v76 = *(v11 + 40);
  v15 = v11;
  *&v135 = v13;
  *(&v135 + 1) = v12;
  v136 = v14;
  v137 = v76;
  *&v138 = a1;
  *(&v138 + 1) = a2;
  v139 = a3;
  v140 = a4;
  swift_beginAccess();
  v16 = v15[10];
  v75 = v15;

  sub_10000794C(&v135, v148, &qword_10076B928);
  sub_1000F349C(v16, v12, a2, &v123);

  sub_10000794C(&v135, v148, &qword_10076B928);

  sub_1000F349C(v17, v12, a2, v127);

  v18 = a1;

  v19 = v125;
  v20 = v124;
  v65 = v124;
  v21 = v123;
  v78 = v125;
  v79 = v123;
  sub_10000794C(&v135, v148, &qword_10076B928);
  v64 = a2;
  sub_1000F396C(v127, v21, v20, v19, v13, v12, v14, v76, v128, v18, a2, a3, a4);

  v134 = v127[0];
  sub_1000079B4(&v134, &qword_10076B930);
  v133 = v127[1];
  sub_1000079B4(&v133, &qword_10076B930);
  v132 = v127[2];
  sub_1000079B4(&v132, &qword_10076B930);
  v131 = v127[3];
  sub_1000079B4(&v131, &qword_10076B930);
  v130 = v127[4];
  sub_1000079B4(&v130, &qword_10076B930);
  v70 = v128[2];
  v71 = v128[4];
  v66 = v128[1];
  v60 = v128[3];
  v62 = v128[0];
  swift_beginAccess();
  v109 = &v123;

  v69 = sub_1000F4984(v22, sub_1000FD7B4, v108, &qword_10076B970);

  v23 = v75[10];
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 1;
  v106 = sub_1000FD7C0;
  v107 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v12;
  *(v25 + 32) = v14;
  *(v25 + 40) = v76;
  v103 = sub_1001014D0;
  v104 = v25;

  sub_1000F097C(v79, sub_10008B68C, v102, sub_10008B654, v105, &qword_10076B788, &unk_10062FB80, &unk_10076B910);
  v68 = v26;

  v27 = v75[11];
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 1;
  v100 = sub_100101538;
  v101 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v13;
  *(v29 + 24) = v12;
  *(v29 + 32) = v14;
  *(v29 + 40) = v76;

  v67 = sub_1000F01F4(v62, sub_1000FD7F8, v29, sub_10008C184, v99, &qword_10076B788, &unk_10062FB80, &unk_10076B910);

  v30 = v75[10];
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = 3;
  v97 = sub_100101538;
  v98 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v13;
  *(v32 + 24) = v12;
  *(v32 + 32) = v14;
  *(v32 + 40) = v76;
  v94 = sub_1000FD80C;
  v95 = v32;

  sub_1000F097C(v78, sub_10008C190, v93, sub_10008C184, v96, &qword_10076B788, &unk_10062FB80, &unk_10076B910);
  v63 = v33;

  v34 = v75[11];
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = 3;
  v91 = sub_100101538;
  v92 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v13;
  *(v36 + 24) = v12;
  *(v36 + 32) = v14;
  *(v36 + 40) = v76;

  v77 = sub_1000F01F4(v60, sub_100101460, v36, sub_10008C184, v90, &qword_10076B788, &unk_10062FB80, &unk_10076B910);

  v37 = v75[10];
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = 0;
  v88 = sub_100101538;
  v89 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v18;
  *(v39 + 24) = v64;
  *(v39 + 32) = a3;
  *(v39 + 40) = a4;
  v85 = sub_1001014D0;
  v86 = v39;

  sub_1000F097C(v65, sub_10008C190, v84, sub_10008C184, v87, &qword_10076B788, &unk_10062FB80, &unk_10076B910);
  v61 = v40;

  v41 = v75[11];
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = 0;
  v82 = sub_100101538;
  v83 = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v18;
  *(v43 + 24) = v64;
  *(v43 + 32) = a3;
  *(v43 + 40) = a4;

  v44 = sub_1000F01F4(v66, sub_100101460, v43, sub_10008C184, v81, &qword_10076B788, &unk_10062FB80, &unk_10076B910);

  sub_10000794C(&v135, v148, &qword_10076B928);
  v117 = v135;
  v118 = v136;
  v119 = v137;
  v120 = v138;
  v121 = v139;
  v122 = v140;

  v46 = sub_1000EFC58(v45, &v117, &qword_10076B788, &unk_10062FB80, &unk_10076B910, sub_1003B3EDC);
  sub_1000079B4(&v135, &qword_10076B928);

  v129 = v126;
  sub_1000079B4(&v129, &qword_10076B930);

  sub_10000794C(&v135, v148, &qword_10076B928);
  v111 = v135;
  v112 = v136;
  v113 = v137;
  v114 = v138;
  v115 = v139;
  v116 = v140;
  v47 = sub_1000EF6BC(v70, &v111, &qword_10076B788, &unk_10062FB80, &unk_10076B910, sub_1000C77E8);
  sub_1000079B4(&v135, &qword_10076B928);
  sub_1000079B4(&v135, &qword_10076B928);
  v48 = swift_allocObject();
  *(v48 + 16) = v69;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1000FD824;
  *(v49 + 24) = v48;

  v51 = sub_1000F11C0(v50, sub_10008C184, v49);
  swift_bridgeObjectRelease_n();

  v52 = sub_10057CE90(v71, v70);

  *&v141 = v61;
  *(&v141 + 1) = v68;
  *&v142 = v63;
  *(&v142 + 1) = v46;
  *&v143 = v44;
  *(&v143 + 1) = v67;
  *&v144 = v77;
  *(&v144 + 1) = v47;
  v145 = v51;
  v146 = a5;
  v147 = a6;
  v148[0] = v61;
  v148[1] = v68;
  v148[2] = v63;
  v148[3] = v46;
  v148[4] = v44;
  v148[5] = v67;
  v148[6] = v77;
  v148[7] = v47;
  v148[8] = v51;
  v148[9] = a5;
  v148[10] = a6;
  sub_10008B7A4(&v141, v110);
  sub_10008B800(v148);
  v53 = v145;
  v54 = v146;
  v55 = v147;
  result = *&v141;
  v57 = v142;
  v58 = v143;
  v59 = v144;
  *a7 = v141;
  *(a7 + 16) = v57;
  *(a7 + 32) = v58;
  *(a7 + 48) = v59;
  *(a7 + 64) = v53;
  *(a7 + 72) = v54;
  *(a7 + 80) = v55;
  *(a7 + 88) = v52;
  return result;
}

uint64_t sub_1000AD668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (*(*(a2 + 16) + 16) && (v7 = *(a2 + 48), a3(), (v8 & 1) != 0) && *(v7 + 16) && ((a3)(a1), (v9 & 1) != 0))
  {
    FromTo.init(_:_:)();
    v10 = sub_100058000(&qword_100769AA8);
    return (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
  }

  else
  {
    if (qword_100766EC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100769A10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Cannot lookup from, to for moved section", v15, 2u);
    }

    v16 = sub_100058000(&qword_100769AA8);
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t sub_1000AD868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t, void, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v6 = a2[1];
  v51 = *a2;
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = a2[4];
  v48 = a2[5];
  v49 = v9;
  v47 = a2[6];
  v46 = *(a2 + 56);
  v10 = sub_100058000(&unk_100771B10);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v43 = &v42 - v21;
  v22 = __chkstk_darwin(v20);
  v44 = &v42 - v23;
  __chkstk_darwin(v22);
  v52 = &v42 - v24;
  v50 = a1;
  v25 = a1;
  v26 = a3;
  a3(v25, v8, v51, v6, v7, v8);
  v27 = v17[6];
  if (v27(v15, 1, v16) == 1)
  {
    v13 = v15;
  }

  else
  {
    v28 = v17[4];
    v28(v52, v15, v16);
    v26(v50, v46, v49, v48, v47, v46);
    if (v27(v13, 1, v16) != 1)
    {
      v36 = v44;
      v28(v44, v13, v16);
      v37 = v17[2];
      v38 = v52;
      v37(v43, v52, v16);
      v37(v45, v36, v16);
      sub_1001013F4(&qword_100769AC0, &type metadata accessor for IndexPath);
      v33 = v53;
      FromTo.init(_:_:)();
      v39 = v17[1];
      v39(v36, v16);
      v39(v38, v16);
      v35 = 0;
      goto LABEL_11;
    }

    (v17[1])(v52, v16);
  }

  sub_1000079B4(v13, &unk_100771B10);
  if (qword_100766EC0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100003E30(v29, qword_100769A10);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.fault.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v53;
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Cannot lookup from, to for moved cell", v34, 2u);
  }

  v35 = 1;
LABEL_11:
  v40 = sub_100058000(&unk_10076B940);
  return (*(*(v40 - 8) + 56))(v33, v35, 1, v40);
}

BOOL sub_1000ADD14()
{
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      return 0;
    }
  }

  else if (*(*v0 + 16))
  {
    return 0;
  }

  v1 = v0[1];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      return 0;
    }
  }

  else if (*(v1 + 16))
  {
    return 0;
  }

  v2 = v0[2];
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (__CocoaSet.count.getter())
  {
    return 0;
  }

LABEL_13:
  v3 = v0[3];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      return 0;
    }
  }

  else if (*(v3 + 16))
  {
    return 0;
  }

  v5 = v0[4];
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  return v6 == 0;
}

uint64_t sub_1000ADE0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a3[2];
  if (!*(v4 + 16))
  {
    return 1;
  }

  v6 = *a3;
  result = a4();
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = *(*(v4 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v6 + 16))
  {
    return *(v6 + 16 * v9 + 32) != a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ADE88(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(uint64_t *, uint64_t))
{
  v7 = *(a2 + 6);
  if (*(v7 + 16))
  {
    v11 = *(a2 + 2);
    v12 = *(a2 + 24);
    v18 = *a2;
    v19 = a2[2];
    v13 = *(a2 + 56);
    result = a5();
    if (v15)
    {
      v16 = *(*(v7 + 56) + 8 * result);
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *(v19 + 16))
      {
        if (*(v19 + 16 * v16 + 32) == a3)
        {
          v20 = v18;
          v21 = v11;
          v22 = v12;
          v23 = v19;
          v24 = v7;
          v25 = v13;
          if (sub_1000ADE0C(a1, a3, &v20, a6))
          {

            a7(&v26, a1);

            return 1;
          }
        }

        return 0;
      }

      __break(1u);
      return result;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_1000ADFC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a2[2];
  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = *a2;
  result = a4();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v4 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v6 + 16))
  {
    return *(v6 + 16 * v9 + 32) == a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE04C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(uint64_t *, uint64_t))
{
  v7 = *(a2 + 6);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v11 = *(a2 + 2);
  v12 = *(a2 + 24);
  v18 = *a2;
  v19 = a2[2];
  v13 = *(a2 + 56);
  result = a5();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(*(v7 + 56) + 8 * result);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= *(v19 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(v19 + 16 * v16 + 32) != a3)
  {
    return 0;
  }

  v20 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v19;
  v24 = v7;
  v25 = v13;
  if (sub_1000ADE0C(a1, a3, &v20, a6))
  {

    a7(&v26, a1);
  }

  return 1;
}

uint64_t sub_1000AE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a2 + 48);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 32);
  result = a4();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v4 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v6 + 16))
  {
    return *(v6 + 16 * v9 + 32) == a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE26C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(void))
{
  if (!*(a2 + 16))
  {
    return 100;
  }

  v6 = a4();
  if (v7 & 1) != 0 && (v8 = *(*(a2 + 56) + 16 * v6), *(v8 + 16)) && (v9 = sub_1003AB368(a3), (v10))
  {
    return *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    return 100;
  }
}

uint64_t sub_1000AE2E0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076B2A0);
  v1 = sub_100003E30(v0, qword_10076B2A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000AE568()
{
  [v0 setDefinesPresentationContext:1];
  [v0 setTitle:0];
  [v0 setExtendedLayoutIncludesOpaqueBars:1];
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode:2];

  v2 = [v0 navigationItem];
  [v2 setTitle:0];

  v3 = [v0 navigationItem];
  v4._countAndFlagsBits = 0x737473694CLL;
  v5._object = 0x80000001006714B0;
  v4._object = 0xE500000000000000;
  v5._countAndFlagsBits = 0xD00000000000002CLL;
  TTRLocalizedString(_:comment:)(v4, v5);
  v6 = String._bridgeToObjectiveC()();

  [v3 setBackButtonTitle:v6];
}