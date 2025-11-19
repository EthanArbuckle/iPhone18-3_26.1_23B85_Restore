uint64_t sub_10030FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10030FF24, 0, 0);
}

uint64_t sub_10030FF24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_100310018;

    return sub_1003102B0();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100310018()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10031012C, 0, 0);
}

void *sub_100310154()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_cloudDevices);
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (ASCloudDevice.isWithinTimeToLive.getter() & 1) == 0 || (ASCloudDevice.isEligibleForMigration.getter())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003102B0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100310350;

  return SecureCloudClient.fetchCloudDevices()();
}

uint64_t sub_100310350(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_1003104EC;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_100310478;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100310478()
{
  *(v0[2] + OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_cloudDevices) = v0[5];

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003104EC()
{
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v1, "Failed to fetch cloud devices %@", v4, 0xCu);
    sub_1001F3454(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100310634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10030FF04(a1, v4, v5, v6);
}

__n128 sub_1003106E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003106FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100310744(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1003107A4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v87 = a4;
  v88 = a6;
  v85 = a5;
  v90 = a7;
  v10 = a3;
  v86 = type metadata accessor for UUID();
  v89 = *(v86 - 1);
  __chkstk_darwin(v86);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v78 - v14;
  v16 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v78 - v20;
  __chkstk_darwin(v22);
  v24 = &v78 - v23;
  __chkstk_darwin(v25);
  v28 = &v78 - v27;
  if (v10 < 3 || a1 ^ 2 | a2)
  {
    v42 = v90;
    *(v90 + 32) = 0;
    *v42 = 0u;
    v42[1] = 0u;
  }

  else
  {
    v29 = *(v7 + 8);
    if (*(v29 + OBJC_IVAR___CHHistoryDataProvider_hasInitialWorkouts) == 1 && (*(v29 + OBJC_IVAR___CHHistoryDataProvider_hasInitialMindfulnessSessions) & 1) != 0 || *(v29 + OBJC_IVAR___CHHistoryDataProvider_shouldForceReload) == 1)
    {
      v30 = v7;
      v31 = *(v29 + OBJC_IVAR___CHHistoryDataProvider_lock);
      __chkstk_darwin(v26);
      *(&v78 - 2) = v32;
      __chkstk_darwin(v33);
      *(&v78 - 2) = sub_1001DF08C;
      *(&v78 - 1) = v34;
      os_unfair_lock_lock(v31 + 4);
      sub_100311964(v91);
      os_unfair_lock_unlock(v31 + 4);
      v35 = v91[0];
      if (*(v91[0] + 16) >= 4uLL)
      {
        sub_100311340(v91[0], v91[0] + 32, 0, 7uLL);
        v37 = v36;

        v35 = v37;
      }

      v84 = v35;
      sub_10001B104(v85, v91, &qword_1008DCC60);
      v38 = v92;
      if (v92)
      {
        v39 = v93;
        sub_1000066AC(v91, v92);
        (*(v39 + 8))(v38, v39);
        v40 = v89;
        v41 = v86;
        (*(v89 + 56))(v28, 0, 1, v86);
        sub_100005A40(v91);
      }

      else
      {
        sub_10000EA04(v91, &qword_1008DCC60);
        v40 = v89;
        v41 = v86;
        (*(v89 + 56))(v28, 1, 1, v86);
      }

      v47 = *v30;
      v48 = *(v30 + 24);
      v86 = *(v30 + 16);
      v49 = *(v30 + 32);
      v50 = *(v30 + 40);
      v51 = *(v30 + 56);
      v80 = *(v30 + 48);
      v81 = v50;
      v78 = v49;
      v79 = v51;
      v85 = type metadata accessor for HistoryItemsCard();
      v52 = swift_allocObject();
      v53 = v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type;
      *v53 = xmmword_1006D4AD0;
      *(v53 + 16) = 3;
      sub_10001B104(v28, v24, &unk_1008DB8A0);
      v54 = *(v40 + 48);
      v55 = v54(v24, 1, v41);
      v83 = v47;
      v82 = v86;
      v86 = v48;

      v56 = v78;
      v81 = v81;
      v80 = v80;
      v57 = v79;
      if (v55 == 1)
      {
        UUID.init()();
        sub_10000EA04(v28, &unk_1008DB8A0);
        v58 = v54(v24, 1, v41);
        v59 = v89;
        if (v58 != 1)
        {
          sub_10000EA04(v24, &unk_1008DB8A0);
        }
      }

      else
      {
        sub_10000EA04(v28, &unk_1008DB8A0);
        v59 = v89;
        (*(v89 + 32))(v15, v24, v41);
      }

      (*(v59 + 32))(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_uuid, v15, v41);
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size) = v87 & 1;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_editMode) = v88 & 1;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_loadingState) = 1;
      v60 = v83;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_historyItems) = v84;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_awardsDataProvider) = v60;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_workoutFormattingManager) = v82;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_workoutImageProvider) = v86;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_mindfulnessFormattingManager) = v56;
      v61 = v80;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_stackFormattingManager) = v81;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_seymourCatalogItemDataProvider) = v61;
      *(v52 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_fitnessAppContext) = v57;
      v62 = v90;
      *(v90 + 24) = v85;
      v62[4] = &off_100849298;
      *v62 = v52;
    }

    else
    {
      sub_10001B104(v85, v91, &qword_1008DCC60);
      v43 = v92;
      if (v92)
      {
        v44 = v93;
        sub_1000066AC(v91, v92);
        (*(v44 + 8))(v43, v44);
        v45 = v89;
        v46 = v86;
        (*(v89 + 56))(v21, 0, 1, v86);
        sub_100005A40(v91);
      }

      else
      {
        sub_10000EA04(v91, &qword_1008DCC60);
        v45 = v89;
        v46 = v86;
        (*(v89 + 56))(v21, 1, 1, v86);
      }

      v63 = *(v7 + 16);
      v64 = *(v7 + 24);
      v85 = *v7;
      v86 = v63;
      v65 = *(v7 + 32);
      v82 = *(v7 + 40);
      v83 = v65;
      v66 = *(v7 + 48);
      v80 = *(v7 + 56);
      v81 = v66;
      v67 = type metadata accessor for HistoryItemsCard();
      v68 = swift_allocObject();
      v69 = v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type;
      *v69 = xmmword_1006D4AD0;
      *(v69 + 16) = 3;
      sub_10001B104(v21, v18, &unk_1008DB8A0);
      v70 = *(v45 + 48);
      v71 = v70(v18, 1, v46);
      v85 = v85;
      v84 = v86;
      v86 = v64;

      v83 = v83;
      v82 = v82;
      v81 = v81;
      v72 = v80;
      if (v71 == 1)
      {
        UUID.init()();
        sub_10000EA04(v21, &unk_1008DB8A0);
        v73 = v70(v18, 1, v46);
        v74 = v89;
        if (v73 != 1)
        {
          sub_10000EA04(v18, &unk_1008DB8A0);
        }
      }

      else
      {
        sub_10000EA04(v21, &unk_1008DB8A0);
        v74 = v89;
        (*(v89 + 32))(v12, v18, v46);
      }

      (*(v74 + 32))(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_uuid, v12, v46);
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size) = v87 & 1;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_editMode) = v88 & 1;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_loadingState) = 0;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_historyItems) = _swiftEmptyArrayStorage;
      v75 = v84;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_awardsDataProvider) = v85;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_workoutFormattingManager) = v75;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_workoutImageProvider) = v86;
      v76 = v82;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_mindfulnessFormattingManager) = v83;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_stackFormattingManager) = v76;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_seymourCatalogItemDataProvider) = v81;
      *(v68 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_fitnessAppContext) = v72;
      v77 = v90;
      *(v90 + 24) = v67;
      v77[4] = &off_100849298;
      *v77 = v68;
    }
  }
}

void sub_100311170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100140278(&qword_1008DE400);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_10031125C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100140278(&qword_1008DE418);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100311340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100140278(&qword_1008DE4F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_100140278(&unk_1008E4E60);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100311450(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100140278(&qword_1008DF120);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 192);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_100311564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100140278(&qword_1008DE570);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  result = v3;
  v7 = v4 - 32;
  v6 = v4 < 32;
  v8 = v4 - 17;
  if (!v6)
  {
    v8 = v7;
  }

  v3[2] = v1;
  v3[3] = 2 * (v8 >> 4);
  v9 = (16 * v1 + a1 + 24);
  for (i = 4; ; i += 2)
  {
    v11 = &v3[i];
    v12 = *v9;
    *v11 = *(v9 - 1);
    *(v11 + 8) = v12;
    if (!--v1)
    {
      break;
    }

    v9 -= 16;
  }

  return result;
}

void *sub_10031164C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1001AB73C(v2, 0);

    v1 = sub_1001AA298(&v5, (v3 + 32), v2, v1);
    sub_100022DEC();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100311738(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1000059F8(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100140278(&unk_1008E4E20);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_100311860(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_100022DEC();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void *sub_100311920@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_100311964@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1003119A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003119C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100311A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_100311A6C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MetricFamilyChartView()
{
  result = qword_1008E8410;
  if (!qword_1008E8410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100311B1C()
{
  result = type metadata accessor for MetricDetailViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MetricFormattingHelper();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ActivityDashboardViewController();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100311BF4()
{
  v0 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.title(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = type metadata accessor for Font.Design();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  static Font.Weight.medium.getter();
  v11 = static Font.system(_:design:weight:)();
  sub_10000EA04(v2, &qword_1008DC448);
  result = (*(v4 + 8))(v7, v3);
  qword_100925668 = v11;
  return result;
}

uint64_t sub_100311DF4()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Font.TextStyle.footnote(_:), v0, v2);
  static Font.Weight.semibold.getter();
  v5 = static Font.system(_:weight:)();
  result = (*(v1 + 8))(v4, v0);
  qword_100925670 = v5;
  return result;
}

uint64_t sub_100311EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = type metadata accessor for AccessibilityActionKind();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v78 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v76 = *(v7 - 8);
  v77 = v7;
  __chkstk_darwin(v7);
  v75 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricFamilyChartView();
  v10 = *(v9 - 8);
  v73 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RoundedRectangle();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100140278(&qword_1008E2B10);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v20 = sub_100140278(&qword_1008E8458);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v62 - v22;
  v24 = sub_100140278(&qword_1008E8460);
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  v27 = sub_100140278(&qword_1008E8468);
  v28 = *(v27 - 8);
  v68 = v27;
  v69 = v28;
  __chkstk_darwin(v27);
  v65 = &v62 - v29;
  v70 = sub_100140278(&qword_1008E8470);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v62 - v30;
  v74 = sub_100140278(&qword_1008E8478);
  __chkstk_darwin(v74);
  v67 = &v62 - v31;
  *v23 = static HorizontalAlignment.leading.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v32 = &v23[*(sub_100140278(&qword_1008E8480) + 44)];
  v64 = v2;
  sub_1003127CC(v2, v32);
  v33 = static Edge.Set.all.getter();
  v34 = &v23[*(v21 + 44)];
  *v34 = v33;
  *(v34 + 8) = xmmword_1006D4E50;
  *(v34 + 24) = xmmword_1006D4E50;
  v34[40] = 0;
  if (static Solarium.isEnabled.getter())
  {
    v35 = 28.0;
  }

  else
  {
    v35 = 20.0;
  }

  v36 = *(v13 + 28);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  (*(*(v38 - 8) + 104))(v15 + v36, v37, v38);
  *v15 = v35;
  v15[1] = v35;
  v39 = sub_100046170();
  v40 = Color.init(uiColor:)();
  sub_100313794(v15, v19, &type metadata accessor for RoundedRectangle);
  *&v19[*(v17 + 60)] = v40;
  *&v19[*(v17 + 64)] = 256;
  v41 = static Alignment.center.getter();
  v43 = v42;
  v44 = &v26[*(v24 + 36)];
  sub_100015E80(v19, v44, &qword_1008E2B10);
  v45 = (v44 + *(sub_100140278(&qword_1008E3650) + 36));
  *v45 = v41;
  v45[1] = v43;
  sub_100015E80(v23, v26, &qword_1008E8458);
  v63 = type metadata accessor for MetricFamilyChartView;
  v46 = v2;
  v47 = v71;
  sub_10031372C(v46, v71, type metadata accessor for MetricFamilyChartView);
  v48 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v49 = swift_allocObject();
  v62 = type metadata accessor for MetricFamilyChartView;
  sub_100313794(v47, v49 + v48, type metadata accessor for MetricFamilyChartView);
  v50 = sub_100313568();
  v51 = v65;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v26, &qword_1008E8460);
  v52 = v75;
  static AccessibilityChildBehavior.combine.getter();
  v85 = v24;
  v86 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v66;
  v55 = v68;
  View.accessibilityElement(children:)();
  (*(v76 + 8))(v52, v77);
  (*(v69 + 8))(v51, v55);
  v56 = v78;
  static AccessibilityTraits.isButton.getter();
  v85 = v55;
  v86 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v57 = v67;
  v58 = v70;
  View.accessibilityAddTraits(_:)();
  (*(v79 + 8))(v56, v80);
  (*(v72 + 8))(v54, v58);
  sub_10031372C(v64, v47, v63);
  v59 = swift_allocObject();
  sub_100313794(v47, v59 + v48, v62);
  v60 = v81;
  static AccessibilityActionKind.default.getter();
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v83 + 8))(v60, v84);
  return sub_10008FC18(v57);
}

uint64_t sub_1003127CC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v115 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v115);
  v113 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v112 = &v104 - v5;
  v111 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v111);
  v110 = &v104 - v6;
  v7 = sub_100140278(&qword_1008DC470);
  __chkstk_darwin(v7 - 8);
  v130 = &v104 - v8;
  v9 = type metadata accessor for MetricFormattingHelper();
  __chkstk_darwin(v9 - 8);
  v120 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for MetricDetailViewModel();
  __chkstk_darwin(v109);
  v124 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for MetricDetailChartView();
  __chkstk_darwin(v116);
  v114 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v119 = &v104 - v14;
  v118 = sub_100140278(&qword_1008DC478);
  __chkstk_darwin(v118);
  v122 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v104 - v17;
  __chkstk_darwin(v18);
  v121 = &v104 - v19;
  v20 = type metadata accessor for AttributedString();
  __chkstk_darwin(v20 - 8);
  v108 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v135 = sub_10069AB14(*a1);
  v136 = v23;
  sub_10000FCBC();
  v24 = StringProtocol.localizedUppercase.getter();
  v26 = v25;

  *&v131 = v24;
  *(&v131 + 1) = v26;
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  if (qword_1008DA918 != -1)
  {
    swift_once();
  }

  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;
  sub_10004642C(v27, v29, v31 & 1);

  v128 = Text.tracking(_:)();
  v127 = v37;
  v39 = v38;
  v129 = v40;
  sub_10004642C(v32, v34, v36 & 1);

  v126 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v125 = v39 & 1;
  LOBYTE(v135) = v39 & 1;
  LOBYTE(v131) = 0;
  v49 = type metadata accessor for MetricFamilyChartView();
  v50 = v49[7];
  v51 = v49[8];
  v52 = &a1[v49[6]];
  v53 = *&a1[v50];
  v54 = a1[v50 + 8];
  if (qword_1008DA910 != -1)
  {
    swift_once();
  }

  v55 = qword_100925668;
  v56 = v52;
  if (((1 << v22) & 0x5DDBB8E070) == 0)
  {
    if (((1 << v22) & 0x2224471F80) != 0)
    {
      v56 = (v52 + 8);
    }

    else
    {
      v57 = 8;
      if ((v54 & (v53 == 0)) != 0)
      {
        v57 = 0;
      }

      v56 = (v52 + v57);
    }
  }

  v58 = *v56;
  v59 = *(v52 + *(v109 + 40));
  v60 = *v56;
  sub_10005C9EC(v58, v22, v55, 0, 0, 0, (v59 & 1) == 0, v108);

  v61 = Text.init(_:)();
  v63 = v62;
  LOBYTE(v60) = v64;
  sub_10005C1A0(v22);
  v135 = Color.init(uiColor:)();
  v107 = Text.foregroundStyle<A>(_:)();
  v106 = v65;
  LODWORD(v108) = v66;
  v109 = v67;
  sub_10004642C(v61, v63, v60 & 1);

  v105 = type metadata accessor for MetricDetailViewModel;
  sub_10031372C(v52, v124, type metadata accessor for MetricDetailViewModel);
  v68 = &a1[v51];
  v69 = v120;
  sub_10031372C(v68, v120, type metadata accessor for MetricFormattingHelper);
  v70 = type metadata accessor for MetricChartData();
  v71 = v110;
  (*(*(v70 - 8) + 56))(v110, 1, 1, v70);
  static Binding.constant(_:)();
  sub_10000EA04(v71, &unk_1008EAF50);
  v72 = v116;
  v73 = type metadata accessor for Date();
  v74 = v112;
  (*(*(v73 - 8) + 56))(v112, 1, 1, v73);
  sub_10001B104(v74, v113, &unk_1008F73A0);
  v75 = v114;
  State.init(wrappedValue:)();
  sub_10000EA04(v74, &unk_1008F73A0);
  v76 = &v75[v72[12]];
  LOBYTE(v131) = 0;
  GestureState.init(wrappedValue:)();
  v77 = v136;
  v78 = v137;
  *v76 = v135;
  *(v76 + 1) = v77;
  *(v76 + 1) = v78;
  *v75 = v22;
  v75[1] = 0;
  v79 = v124;
  sub_10031372C(v124, &v75[v72[6]], v105);
  sub_10031372C(v69, &v75[v72[7]], type metadata accessor for MetricFormattingHelper);
  v80 = v130;
  v81 = sub_10001B104(v130, &v75[v72[8]], &qword_1008DC470);
  __chkstk_darwin(v81);
  *(&v104 - 2) = v69;
  *(&v104 - 8) = v22;
  v83 = sub_100062474(sub_100152FD8, (&v104 - 4), v82);
  *&v84 = COERCE_DOUBLE(sub_100062430(v83));
  v86 = v85;

  v87 = *&v84;
  if (v86)
  {
    v87 = 0.0;
  }

  *&v75[v72[10]] = v87;
  v88 = sub_1004D43AC(v22, v87 * 1.05263158);
  sub_10000EA04(v80, &qword_1008DC470);
  sub_1000292B4(v79, type metadata accessor for MetricDetailViewModel);
  *&v75[v72[11]] = v88;
  v89 = v119;
  sub_100313794(v75, v119, type metadata accessor for MetricDetailChartView);
  sub_1000292B4(v69, type metadata accessor for MetricFormattingHelper);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v90 = v117;
  sub_100313794(v89, v117, type metadata accessor for MetricDetailChartView);
  v91 = (v90 + *(v118 + 36));
  v92 = v148;
  *v91 = v147;
  v91[1] = v92;
  v91[2] = v149;
  v93 = v121;
  sub_100015E80(v90, v121, &qword_1008DC478);
  v94 = v122;
  sub_10001B104(v93, v122, &qword_1008DC478);
  *&v131 = v128;
  *(&v131 + 1) = v127;
  LOBYTE(v132) = v125;
  *(&v132 + 1) = *v146;
  DWORD1(v132) = *&v146[3];
  *(&v132 + 1) = v129;
  LOBYTE(v133) = v126;
  *(&v133 + 1) = *v145;
  DWORD1(v133) = *&v145[3];
  *(&v133 + 1) = v42;
  *v134 = v44;
  *&v134[8] = v46;
  *&v134[16] = v48;
  v134[24] = 0;
  v95 = v131;
  v96 = v132;
  v97 = v123;
  *(v123 + 57) = *&v134[9];
  v98 = *v134;
  *(v97 + 32) = v133;
  *(v97 + 48) = v98;
  *v97 = v95;
  *(v97 + 16) = v96;
  v99 = v107;
  v100 = v106;
  *(v97 + 80) = v107;
  *(v97 + 88) = v100;
  v101 = v108 & 1;
  *(v97 + 96) = v108 & 1;
  *(v97 + 104) = v109;
  v102 = sub_100140278(&qword_1008E84A8);
  sub_10001B104(v94, v97 + *(v102 + 64), &qword_1008DC478);
  sub_10001B104(&v131, &v135, &qword_1008DC4C0);
  sub_10006965C(v99, v100, v101);

  sub_10000EA04(v93, &qword_1008DC478);
  sub_10000EA04(v94, &qword_1008DC478);
  sub_10004642C(v99, v100, v101);

  v135 = v128;
  v136 = v127;
  LOBYTE(v137) = v125;
  *(&v137 + 1) = *v146;
  DWORD1(v137) = *&v146[3];
  *(&v137 + 1) = v129;
  v138 = v126;
  *v139 = *v145;
  *&v139[3] = *&v145[3];
  v140 = v42;
  v141 = v44;
  v142 = v46;
  v143 = v48;
  v144 = 0;
  return sub_10000EA04(&v135, &qword_1008DC4C0);
}

unint64_t sub_100313568()
{
  result = qword_1008E8488;
  if (!qword_1008E8488)
  {
    sub_100141EEC(&qword_1008E8460);
    sub_100313620();
    sub_10014A6B0(&qword_1008E3648, &qword_1008E3650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8488);
  }

  return result;
}

unint64_t sub_100313620()
{
  result = qword_1008E8490;
  if (!qword_1008E8490)
  {
    sub_100141EEC(&qword_1008E8458);
    sub_10014A6B0(&qword_1008E8498, &qword_1008E84A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8490);
  }

  return result;
}

uint64_t sub_10031372C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100313794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003137FC()
{
  result = qword_1008E84B0;
  if (!qword_1008E84B0)
  {
    sub_100141EEC(&qword_1008E8478);
    sub_100141EEC(&qword_1008E8468);
    sub_100141EEC(&qword_1008E8460);
    sub_100313568();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100313908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E84B0);
  }

  return result;
}

unint64_t sub_100313908()
{
  result = qword_1008DCEF8;
  if (!qword_1008DCEF8)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEF8);
  }

  return result;
}

uint64_t sub_100313964(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v18 = objc_opt_self();
        v4 = [v18 mileUnit];
        sub_10018603C(0, 52, 0);
        v5 = _swiftEmptyArrayStorage;
        v19 = objc_opt_self();
        v20 = &stru_100000020;
        do
        {
          v21 = [v19 quantityWithUnit:v4 doubleValue:*(&off_1008440B8 + v20)];
          v22 = [v18 meterUnit];
          [v21 doubleValueForUnit:v22];
          v24 = v23;

          v26 = _swiftEmptyArrayStorage[2];
          v25 = _swiftEmptyArrayStorage[3];
          if (v26 >= v25 >> 1)
          {
            sub_10018603C((v25 > 1), v26 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v26 + 1;
          v27 = &_swiftEmptyArrayStorage[2 * v26];
          v27[4] = v24;
          *(v27 + 40) = 0;
          v20 += 8;
        }

        while (v20 != 448);
      }

      else
      {
        v37 = objc_opt_self();
        v38 = [v37 mileUnit];
        v39 = [v37 hourUnit];
        v4 = [v38 unitDividedByUnit:v39];

        sub_10018603C(0, 52, 0);
        v5 = _swiftEmptyArrayStorage;
        v40 = objc_opt_self();
        v41 = &stru_100000020;
        do
        {
          v42 = [v40 quantityWithUnit:v4 doubleValue:*(&off_1008447B8 + v41)];
          v43 = [v37 meterUnitWithMetricPrefix:9];
          v44 = [v37 hourUnit];
          v45 = [v43 unitDividedByUnit:v44];

          [v42 doubleValueForUnit:v45];
          v47 = v46;

          v49 = _swiftEmptyArrayStorage[2];
          v48 = _swiftEmptyArrayStorage[3];
          if (v49 >= v48 >> 1)
          {
            sub_10018603C((v48 > 1), v49 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v49 + 1;
          v50 = &_swiftEmptyArrayStorage[2 * v49];
          v50[4] = v47;
          *(v50 + 40) = 0;
          v41 += 8;
        }

        while (v41 != 448);
      }

      goto LABEL_34;
    }

    if (a1)
    {
      v17 = &off_100843B78;
    }

    else
    {
      v17 = &off_100843EF8;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      sub_10018603C(0, 52, 0);
      v28 = 0;
      v5 = _swiftEmptyArrayStorage;
      v29 = _swiftEmptyArrayStorage[2];
      v30 = 2 * v29;
      do
      {
        v31 = v29 + v28;
        v32 = *(&off_1008445F8 + v28 + 4);
        if (v32 >= 0.0)
        {
          v33 = *(&off_1008445F8 + v28 + 4);
        }

        else
        {
          v33 = 0;
        }

        v34 = _swiftEmptyArrayStorage[3];
        v35 = v31 + 1;
        if (v31 >= v34 >> 1)
        {
          sub_10018603C((v34 > 1), v31 + 1, 1);
        }

        ++v28;
        _swiftEmptyArrayStorage[2] = v35;
        v36 = &_swiftEmptyArrayStorage[v30];
        v36[4] = v33;
        *(v36 + 40) = v32 < 0.0;
        v30 += 2;
      }

      while (v28 != 52);
LABEL_35:
      v51 = _swiftEmptyArrayStorage[2];
      if (v51)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

    v17 = &off_100843D38;
  }

  else if (a1 == 6)
  {
    v17 = &off_100844438;
  }

  else
  {
    if (a1 == 7)
    {
      v1 = objc_opt_self();
      v2 = [v1 mileUnit];
      v3 = [v1 hourUnit];
      v4 = [v2 unitDividedByUnit:v3];

      sub_10018603C(0, 52, 0);
      v5 = _swiftEmptyArrayStorage;
      v6 = objc_opt_self();
      v7 = &stru_100000020;
      do
      {
        v8 = [v6 quantityWithUnit:v4 doubleValue:*(&off_100844978 + v7)];
        v9 = [v1 meterUnitWithMetricPrefix:9];
        v10 = [v1 hourUnit];
        v11 = [v9 unitDividedByUnit:v10];

        [v8 doubleValueForUnit:v11];
        v13 = v12;

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10018603C((v14 > 1), v15 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v15];
        v16[4] = v13;
        *(v16 + 40) = 0;
        v7 += 8;
      }

      while (v7 != 448);
LABEL_34:

      goto LABEL_35;
    }

    v17 = &off_100844278;
  }

  v5 = sub_10019F644(v17);
  v51 = v5[2];
  if (v51)
  {
LABEL_36:
    v52 = _swiftEmptyArrayStorage;
    v53 = v5 + 5;
    while (1)
    {
      v54 = *(v53 - 1);
      v55 = *v53;
      sub_100140278(&unk_1008F73E0);
      v56 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v56 + 16) = 7;
      *(v56 + 32) = v54;
      v57 = (v56 + 32);
      *(v56 + 40) = v55;
      *(v56 + 48) = v54;
      *(v56 + 56) = v55;
      *(v56 + 64) = v54;
      *(v56 + 72) = v55;
      *(v56 + 80) = v54;
      *(v56 + 88) = v55;
      *(v56 + 96) = v54;
      *(v56 + 104) = v55;
      *(v56 + 112) = v54;
      *(v56 + 120) = v55;
      *(v56 + 128) = v54;
      *(v56 + 136) = v55;
      v58 = *(v52 + 2);
      v59 = v58 + 7;
      if (__OFADD__(v58, 7))
      {
        break;
      }

      v60 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v59 > *(v52 + 3) >> 1)
      {
        if (v58 <= v59)
        {
          v62 = v58 + 7;
        }

        else
        {
          v62 = v58;
        }

        v52 = sub_10003732C(isUniquelyReferenced_nonNull_native, v62, 1, v52);
      }

      if (!*(v60 + 16))
      {
        goto LABEL_64;
      }

      v63 = *(v52 + 2);
      if ((*(v52 + 3) >> 1) - v63 < 7)
      {
        goto LABEL_62;
      }

      v64 = &v52[16 * v63];
      v65 = *v57;
      v66 = v57[2];
      *(v64 + 3) = v57[1];
      *(v64 + 4) = v66;
      *(v64 + 2) = v65;
      v67 = v57[3];
      v68 = v57[4];
      v69 = v57[6];
      *(v64 + 7) = v57[5];
      *(v64 + 8) = v69;
      *(v64 + 5) = v67;
      *(v64 + 6) = v68;

      v70 = *(v52 + 2);
      v71 = __OFADD__(v70, 7);
      v72 = v70 + 7;
      if (v71)
      {
        goto LABEL_63;
      }

      *(v52 + 2) = v72;
      v53 += 16;
      if (!--v51)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:

    __break(1u);
    goto LABEL_65;
  }

LABEL_52:
  v52 = _swiftEmptyArrayStorage;
LABEL_53:

  v73 = *(v52 + 2);
  if (v73 > 0x16C)
  {
    return v52;
  }

  while (v73)
  {
    v74 = &v52[16 * v73];
    v75 = *(v74 + 2);
    v76 = v74[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_10003732C(0, v73 + 1, 1, v52);
    }

    v78 = *(v52 + 2);
    v77 = *(v52 + 3);
    v73 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v52 = sub_10003732C((v77 > 1), v78 + 1, 1, v52);
    }

    *(v52 + 2) = v73;
    v79 = &v52[16 * v78];
    *(v79 + 4) = v75;
    v79[40] = v76;
    if (v78 >= 0x16C)
    {
      return v52;
    }
  }

LABEL_65:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10031418C(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = sub_100313964(a1);
  v7 = sub_100311564(v6);

  sub_100140278(&qword_1008DE480);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006E76B0;
  v9 = sub_1001A99B8(0x20000000000001uLL);
  v10 = vcvtd_n_f64_u64(v9, 0x35uLL) * 0.4 + -0.2;
  if (v9 == 0x20000000000000)
  {
    v10 = 0.2;
  }

  *(v8 + 32) = v10;
  v11 = sub_1001A99B8(0x20000000000001uLL);
  v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.1 + -0.05;
  if (v11 == 0x20000000000000)
  {
    v12 = 0.05;
  }

  *(v8 + 40) = v12;
  v13 = sub_1001A99B8(0x20000000000001uLL);
  v14 = vcvtd_n_f64_u64(v13, 0x35uLL) * 0.1 + -0.05;
  if (v13 == 0x20000000000000)
  {
    v14 = 0.05;
  }

  *(v8 + 48) = v14;
  v15 = sub_1001A99B8(0x20000000000001uLL);
  v16 = vcvtd_n_f64_u64(v15, 0x35uLL) * 0.1 + -0.05;
  if (v15 == 0x20000000000000)
  {
    v16 = 0.05;
  }

  *(v8 + 56) = v16;
  v17 = sub_1001A99B8(0x20000000000001uLL);
  v18 = vcvtd_n_f64_u64(v17, 0x35uLL) * 0.1 + -0.05;
  if (v17 == 0x20000000000000)
  {
    v18 = 0.05;
  }

  *(v8 + 64) = v18;
  v19 = sub_1001A99B8(0x20000000000001uLL);
  v20 = vcvtd_n_f64_u64(v19, 0x35uLL) * 0.1 + -0.05;
  if (v19 == 0x20000000000000)
  {
    v20 = 0.05;
  }

  *(v8 + 72) = v20;
  v21 = sub_1001A99B8(0x20000000000001uLL);
  v22 = vcvtd_n_f64_u64(v21, 0x35uLL) * 0.2 + -0.1;
  if (v21 == 0x20000000000000)
  {
    v22 = 0.1;
  }

  *(v8 + 80) = v22;
  v23 = *(a2 + 32);
  v147[0] = *(a2 + 16);
  v147[1] = v23;
  v147[2] = *(a2 + 48);
  v148 = *(a2 + 64);
  v24 = *(&v147[0] + 1);
  v25 = *&v147[0];
  v119 = v23;
  sub_100315628(v147, v146);
  sub_10001C204(7, v142, 0.0, 6.0);
  v26 = v142[0];
  v116 = v142[1];
  v115 = v142[2];
  v127 = *&v142[3];
  v27 = *&v142[5];
  v123 = *&v142[4];
  v28 = *&v142[6];
  sub_10001C204(7, v143, 0.0, 6.0);
  v29 = v143[0];
  v118 = v143[1];
  v117 = v143[2];
  v126 = *&v143[3];
  v30 = v144;
  v122 = *&v143[4];
  v31 = v145;
  v140 = *(v25 + 2);
  v128 = v26;
  if (!v140)
  {

    v132 = 0u;
    v133 = xmmword_1006E8D80;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v124 = v31;
    v125 = v30;
    v120 = v28;
    v121 = v27;
LABEL_130:
    v99 = v116;
    if (v4 > 3u)
    {
      v100 = v118;
      v101 = v128;
      if (v4 <= 5u)
      {
        if (v4 != 4)
        {
          v111 = 2;
          v104 = v119;
          v103 = v120;
          v105 = v117;
          v106 = v122;
          v107 = v123;
          v108 = v115;
          v110 = v132;
          v109 = v133;
          v102 = v121;
          goto LABEL_147;
        }

        v141[0] = v128;
        v141[1] = v116;
        v141[2] = v115;
        *&v141[3] = v127;
        *&v141[4] = v123;
        *&v141[5] = v27;
        *&v141[6] = v28;
        v141[7] = v29;
        v141[8] = v118;
        v141[9] = v117;
        *&v141[10] = v126;
        *&v141[11] = v122;
        *&v141[12] = v30;
        *&v141[13] = v31;
        *&v141[14] = v37;
        sub_100037AD8(v141);
        sub_100042604(v146);
        v29 = v146[7];
        v100 = v146[8];
        v105 = v146[9];
        v106 = *&v146[11];
        v125 = *&v146[12];
        v126 = *&v146[10];
        v37 = *&v146[14];
        v124 = *&v146[13];
        v101 = v146[0];
        v99 = v146[1];
        v108 = v146[2];
        v127 = *&v146[3];
        v107 = *&v146[4];
        v102 = *&v146[5];
        v111 = 6;
        v103 = *&v146[6];
        v104 = v119;
      }

      else
      {
        v103 = v120;
        v102 = v121;
        if (v4 != 6)
        {
          v104 = v119;
          v105 = v117;
          v106 = v122;
          v107 = v123;
          v108 = v115;
          v110 = v132;
          v109 = v133;
          if (v4 != 7)
          {
LABEL_137:
            v111 = 5;
LABEL_147:
            *a3 = v39;
            *(a3 + 8) = v38;
            *(a3 + 16) = v25;
            *(a3 + 24) = v24;
            *(a3 + 32) = v104;
            *(a3 + 40) = v110;
            *(a3 + 56) = v109;
            *(a3 + 72) = v101;
            *(a3 + 80) = v99;
            *(a3 + 88) = v108;
            *(a3 + 96) = v127;
            *(a3 + 104) = v107;
            *(a3 + 112) = v102;
            *(a3 + 120) = v103;
            *(a3 + 128) = v29;
            *(a3 + 136) = v100;
            *(a3 + 144) = v105;
            *(a3 + 152) = v126;
            *(a3 + 160) = v106;
            *(a3 + 168) = v125;
            *(a3 + 176) = v124;
            *(a3 + 184) = v37;
            *(a3 + 192) = v111;
            return;
          }

          goto LABEL_140;
        }

        v111 = 2;
        v104 = v119;
        v105 = v117;
        v106 = v122;
        v107 = v123;
        v108 = v115;
      }

      v110 = v132;
      v109 = v133;
      goto LABEL_147;
    }

    v104 = v119;
    v105 = v117;
    v106 = v122;
    v107 = v123;
    v108 = v115;
    v110 = v132;
    v109 = v133;
    if (v4 <= 1u)
    {
      v100 = v118;
      v103 = v120;
      v102 = v121;
      v101 = v128;
      if (v4)
      {
        v111 = 0;
        goto LABEL_147;
      }

      goto LABEL_137;
    }

    v100 = v118;
    v103 = v120;
    v102 = v121;
    v101 = v128;
    if (v4 == 2)
    {
      v111 = 1;
      goto LABEL_147;
    }

LABEL_140:
    v111 = 4;
    goto LABEL_147;
  }

  v112 = v4;
  v113 = v24;
  v114 = a3;
  v32 = 0;
  v33 = (v7 + 5);
  v131 = v8 + 32;
  v132 = 0u;
  v133 = xmmword_1006E8D80;
  v34 = -1;
  v35 = 32;
  v36 = -1.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = v28;
  v41 = v144;
  v130 = 0.0;
  v124 = v145;
  v125 = v144;
  v135 = v40;
  v136 = v27;
  v120 = v40;
  v121 = v27;
  v42 = v26;
  v138 = v26;
  while (v32 < v7[2])
  {
    if (*v33)
    {
      if (v32 < *(v25 + 2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10057F5E0(v25);
        }

        if (v32 >= *(v25 + 2))
        {
          goto LABEL_149;
        }

        v43 = &v25[v35];
        *v43 = 0;
        *(v43 + 1) = 0;
        v43[16] = 1;
      }
    }

    else
    {
      v44 = v7;
      v45 = *(v33 - 1);
      v46 = *(v25 + 2);
      v47 = v34 + v46;
      if (__CFADD__(v34, v46))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10057F5E0(v25);
        }

        if (v47 >= *(v25 + 2))
        {
          goto LABEL_150;
        }

        v48 = &v25[24 * v47];
        *(v48 + 4) = v45;
        *(v48 + 5) = 0x3FF0000000000000;
        v48[48] = 0;
        v49 = v130;
        v50 = vdup_n_s32(v130 < v45);
        v51.i64[0] = v50.u32[0];
        v51.i64[1] = v50.u32[1];
        __asm { FMOV            V1.2D, #1.0 }

        *_Q1.i64 = v45;
        v132 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v51, 0x3FuLL)), _Q1, v132);
        if (_NF)
        {
          v49 = v45;
        }

        v130 = v49;
        v57 = v36 < 0.0;
        if (v36 > v45)
        {
          v57 = 1;
        }

        if (v57)
        {
          v36 = v45;
          v58 = -1;
        }

        else
        {
          v58 = 0;
        }

        v133 = vbslq_s8(vdupq_n_s64(v58), _Q1, v133);
      }

      v59 = v32 % 7;
      v60 = *(v131 - 56 * (v32 / 7) + 8 * v32);
      if ((v32 % 7) <= 2 && v59)
      {
        v61 = v128;
        v42 = v128;
        if (v59 != 1)
        {
          v61 = v138;
          v42 = v138;
        }
      }

      else
      {
        v61 = v138;
      }

      v139 = v38;
      v134 = v31;
      if (v59 >= *(v42 + 16))
      {
        v68 = v135;
        v69 = v136;
        v138 = v61;
      }

      else
      {
        v129 = v30;
        v62 = v41;
        v63 = v36;
        v64 = v39;
        v65 = v42 + v35 - 168 * (v32 / 7);
        if (*(v65 + 16))
        {
          v66 = 1.0;
          v67 = 0.0;
        }

        else
        {
          v66 = *(v65 + 8);
          v67 = *(v42 - 168 * (v32 / 7) + v35);
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v70 = v42;
        }

        else
        {
          v70 = sub_10057F5E0(v42);
        }

        if (v59 >= *(v70 + 2))
        {
          goto LABEL_151;
        }

        v68 = v66 + 1.0;
        v69 = (v60 * v45 + v45 + v67 * v66) / (v66 + 1.0);
        *&v70[v35 + -168 * (v32 / 7)] = v69;
        v71 = &v70[v35 - 168 * (v32 / 7)];
        *(v71 + 1) = v68;
        v71[16] = 0;
        if (v127 < v69)
        {
          v127 = v69;
          v123 = v68;
        }

        v39 = v64;
        v128 = v70;
        if (v27 < 0.0)
        {
          v27 = v69;
          v120 = v68;
          v121 = v69;
          v42 = v70;
          v138 = v70;
          v36 = v63;
        }

        else
        {
          v36 = v63;
          if (v69 < v27)
          {
            v27 = v69;
            v120 = v68;
            v121 = v69;
          }

          else
          {
            v68 = v135;
            v69 = v136;
          }

          v42 = v70;
          v138 = v70;
        }

        v41 = v62;
        v30 = v129;
      }

      v72 = *(v29 + 2);
      if (v59 >= v72)
      {
        v81 = v30;
        v82 = v134;
        v7 = v44;
      }

      else
      {
        v73 = v30;
        v137 = v36;
        v74 = v41;
        v75 = v27;
        v76 = v39;
        v77 = &v29[v35 - 168 * (v32 / 7)];
        v78 = v68;
        if (v77[16])
        {
          v79 = 1.0;
          v80 = 0.0;
        }

        else
        {
          v79 = *(v77 + 1);
          v80 = *&v29[v35 + -168 * (v32 / 7)];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10057F5E0(v29);
        }

        v72 = *(v29 + 2);
        if (v59 >= v72)
        {
          goto LABEL_152;
        }

        v68 = v78;
        v82 = v79 + 1.0;
        v81 = (v80 * v79 + 1.0) / (v79 + 1.0);
        *&v29[v35 + -168 * (v32 / 7)] = v81;
        v83 = &v29[v35 - 168 * (v32 / 7)];
        *(v83 + 1) = v79 + 1.0;
        v83[16] = 0;
        if (v126 < v81)
        {
          v126 = (v80 * v79 + 1.0) / (v79 + 1.0);
          v122 = v79 + 1.0;
        }

        v39 = v76;
        v7 = v44;
        v27 = v75;
        if (v74 < 0.0 || v81 < v74)
        {
          v41 = v81;
          v124 = v82;
          v125 = v81;
        }

        else
        {
          v41 = v74;
          v81 = v73;
          v82 = v134;
        }

        v38 = v139;
        v36 = v137;
      }

      v84 = *(v42 + 16);
      v37 = 0.0;
      if (v84)
      {
        v85 = (v42 + 32);
        if ((*(v42 + 48) & 1) == 0)
        {
          if (v72)
          {
            v86 = (v29 + 32);
            if ((v29[48] & 1) == 0 && *v86 > 0.0)
            {
              if (*v85 / *v86 > 0.0)
              {
                v37 = *v85 / *v86;
              }

              else
              {
                v37 = 0.0;
              }
            }
          }
        }
      }

      if (v84 > 1)
      {
        v87 = (v42 + 56);
        if ((*(v42 + 72) & 1) == 0 && v72 > 1)
        {
          v88 = (v29 + 56);
          if ((v29[72] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v37)
          {
            v37 = *v87 / *v88;
          }
        }
      }

      if (v84 > 2)
      {
        v89 = (v42 + 80);
        if ((*(v42 + 96) & 1) == 0 && v72 > 2)
        {
          v90 = (v29 + 80);
          if ((v29[96] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v37)
          {
            v37 = *v89 / *v90;
          }
        }
      }

      if (v84 > 3)
      {
        v91 = (v42 + 104);
        if ((*(v42 + 120) & 1) == 0 && v72 > 3)
        {
          v92 = (v29 + 104);
          if ((v29[120] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v37)
          {
            v37 = *v91 / *v92;
          }
        }
      }

      if (v84 > 4)
      {
        v93 = (v42 + 128);
        if ((*(v42 + 144) & 1) == 0 && v72 > 4)
        {
          v94 = (v29 + 128);
          if ((v29[144] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v37)
          {
            v37 = *v93 / *v94;
          }
        }
      }

      if (v84 > 5)
      {
        v95 = (v42 + 152);
        if ((*(v42 + 168) & 1) == 0 && v72 > 5)
        {
          v96 = (v29 + 152);
          if ((v29[168] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v37)
          {
            v37 = *v95 / *v96;
          }
        }
      }

      v97 = v38 * v39 + v45;
      v38 = v38 + 1.0;
      v39 = v97 / v38;
      if (v84 > 6 && (*(v42 + 192) & 1) == 0 && v72 > 6)
      {
        v98 = (v29 + 176);
        if ((v29[192] & 1) == 0 && *v98 > 0.0 && *(v42 + 176) / *v98 > v37)
        {
          v37 = *(v42 + 176) / *v98;
        }
      }

      v135 = v68;
      v136 = v69;
      v30 = v81;
      v31 = v82;
    }

    ++v32;
    --v34;
    v33 += 2;
    v35 += 24;
    if (v140 == v32)
    {

      v24 = v113;
      a3 = v114;
      v4 = v112;
      v28 = v135;
      v27 = v136;
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

unint64_t sub_100314D28(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = v1[11];
  v106[10] = v1[10];
  v106[11] = v5;
  v107 = *(v1 + 192);
  v6 = v1[7];
  v106[6] = v1[6];
  v106[7] = v6;
  v7 = v1[8];
  v106[9] = v1[9];
  v106[8] = v7;
  v8 = v1[3];
  v106[2] = v1[2];
  v106[3] = v8;
  v9 = v1[4];
  v106[5] = v1[5];
  v106[4] = v9;
  v10 = *v1;
  v106[1] = v1[1];
  v106[0] = v10;
  sub_10031418C(1u, v106, &v77);
  v11 = *(v2 + 376);
  v104[10] = *(v2 + 360);
  v104[11] = v11;
  v105 = *(v2 + 392);
  v12 = *(v2 + 312);
  v104[6] = *(v2 + 296);
  v104[7] = v12;
  v13 = *(v2 + 328);
  v104[9] = *(v2 + 344);
  v104[8] = v13;
  v14 = *(v2 + 216);
  v15 = *(v2 + 248);
  v104[2] = *(v2 + 232);
  v104[3] = v15;
  v16 = *(v2 + 264);
  v104[5] = *(v2 + 280);
  v104[4] = v16;
  v17 = *(v2 + 200);
  v104[1] = v14;
  v104[0] = v17;
  sub_10031418C(5u, v104, v108);
  v18 = v2[36];
  v102[10] = v2[35];
  v102[11] = v18;
  v103 = *(v2 + 592);
  v19 = v2[32];
  v102[6] = v2[31];
  v102[7] = v19;
  v20 = v2[33];
  v102[9] = v2[34];
  v102[8] = v20;
  v21 = v2[28];
  v102[2] = v2[27];
  v102[3] = v21;
  v22 = v2[29];
  v102[5] = v2[30];
  v102[4] = v22;
  v23 = v2[25];
  v102[1] = v2[26];
  v102[0] = v23;
  sub_10031418C(0, v102, v110);
  v24 = *(v2 + 776);
  v100[10] = *(v2 + 760);
  v100[11] = v24;
  v101 = *(v2 + 792);
  v25 = *(v2 + 712);
  v100[6] = *(v2 + 696);
  v100[7] = v25;
  v26 = *(v2 + 728);
  v100[9] = *(v2 + 744);
  v100[8] = v26;
  v27 = *(v2 + 648);
  v100[2] = *(v2 + 632);
  v100[3] = v27;
  v28 = *(v2 + 664);
  v100[5] = *(v2 + 680);
  v100[4] = v28;
  v29 = *(v2 + 600);
  v100[1] = *(v2 + 616);
  v100[0] = v29;
  sub_10031418C(2u, v100, v112);
  v30 = v2[61];
  v98[10] = v2[60];
  v98[11] = v30;
  v99 = *(v2 + 992);
  v31 = v2[57];
  v98[6] = v2[56];
  v98[7] = v31;
  v32 = v2[58];
  v98[9] = v2[59];
  v98[8] = v32;
  v33 = v2[53];
  v98[2] = v2[52];
  v98[3] = v33;
  v34 = v2[54];
  v98[5] = v2[55];
  v98[4] = v34;
  v35 = v2[50];
  v98[1] = v2[51];
  v98[0] = v35;
  sub_10031418C(8u, v98, v114);
  v36 = *(v2 + 1176);
  v96[10] = *(v2 + 1160);
  v96[11] = v36;
  v97 = *(v2 + 1192);
  v37 = *(v2 + 1112);
  v96[6] = *(v2 + 1096);
  v96[7] = v37;
  v38 = *(v2 + 1128);
  v96[9] = *(v2 + 1144);
  v96[8] = v38;
  v39 = *(v2 + 1048);
  v96[2] = *(v2 + 1032);
  v96[3] = v39;
  v40 = *(v2 + 1064);
  v96[5] = *(v2 + 1080);
  v96[4] = v40;
  v41 = *(v2 + 1000);
  v96[1] = *(v2 + 1016);
  v96[0] = v41;
  sub_10031418C(4u, v96, v116);
  v42 = v2[84];
  v43 = v2[86];
  v94[10] = v2[85];
  v94[11] = v43;
  v95 = *(v2 + 1392);
  v44 = v2[80];
  v45 = v2[82];
  v94[6] = v2[81];
  v94[7] = v45;
  v46 = v2[83];
  v94[9] = v42;
  v94[8] = v46;
  v47 = v2[76];
  v48 = v2[78];
  v94[2] = v2[77];
  v94[3] = v48;
  v49 = v2[79];
  v94[5] = v44;
  v94[4] = v49;
  v50 = v2[75];
  v94[1] = v47;
  v94[0] = v50;
  sub_10031418C(6u, v94, v118);
  v51 = *(v2 + 1576);
  v92[10] = *(v2 + 1560);
  v92[11] = v51;
  v93 = *(v2 + 1592);
  v52 = *(v2 + 1512);
  v92[6] = *(v2 + 1496);
  v92[7] = v52;
  v53 = *(v2 + 1528);
  v92[9] = *(v2 + 1544);
  v92[8] = v53;
  v54 = *(v2 + 1448);
  v92[2] = *(v2 + 1432);
  v92[3] = v54;
  v55 = *(v2 + 1464);
  v92[5] = *(v2 + 1480);
  v92[4] = v55;
  v56 = *(v2 + 1400);
  v92[1] = *(v2 + 1416);
  v92[0] = v56;
  sub_10031418C(3u, v92, v120);
  v57 = v2[109];
  v58 = v2[111];
  v90[10] = v2[110];
  v90[11] = v58;
  v91 = *(v2 + 1792);
  v59 = v2[105];
  v60 = v2[107];
  v90[6] = v2[106];
  v90[7] = v60;
  v61 = v2[108];
  v90[9] = v57;
  v90[8] = v61;
  v62 = v2[101];
  v63 = v2[103];
  v90[2] = v2[102];
  v90[3] = v63;
  v64 = v2[104];
  v90[5] = v59;
  v90[4] = v64;
  v65 = v2[100];
  v90[1] = v62;
  v90[0] = v65;
  sub_10031418C(7u, v90, v122);
  v66 = *(v78 + 16);
  result = sub_1001A99B8(0x20000000000001uLL);
  v68 = vcvtd_n_f64_u64(result, 0x35uLL) * 0.04 + 0.68;
  if (result == 0x20000000000000)
  {
    v68 = 0.72;
  }

  v69 = v66;
  v70 = round(v68 * v66);
  if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v70 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v70 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_1001A99B8(0x20000000000001uLL);
  v71 = vcvtd_n_f64_u64(result, 0x35uLL) * 0.04 + 0.78;
  if (result == 0x20000000000000)
  {
    v71 = 0.82;
  }

  v72 = round(v71 * v69);
  if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v72 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v72 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_1001A99B8(0x20000000000001uLL);
  v73 = vcvtd_n_f64_u64(result, 0x35uLL) * 0.05 + 0.6;
  if (result == 0x20000000000000)
  {
    v73 = 0.65;
  }

  v74 = round(v73 * v69);
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v74 < 9.22337204e18)
  {
    v75 = v74;
    *&v76[160] = v87;
    *&v76[176] = v88;
    v76[192] = v89;
    *&v76[96] = v83;
    *&v76[112] = v84;
    *&v76[128] = v85;
    *&v76[144] = v86;
    *&v76[32] = v79;
    *&v76[48] = v80;
    *&v76[64] = v81;
    *&v76[80] = v82;
    *v76 = v77;
    *&v76[16] = v78;
    *&v76[360] = v108[10];
    *&v76[376] = v108[11];
    *&v76[296] = v108[6];
    *&v76[312] = v108[7];
    *&v76[328] = v108[8];
    *&v76[344] = v108[9];
    *&v76[264] = v108[4];
    *&v76[280] = v108[5];
    v76[392] = v109;
    *&v76[216] = v108[1];
    *&v76[232] = v108[2];
    *&v76[248] = v108[3];
    *&v76[200] = v108[0];
    *&v76[560] = v110[10];
    *&v76[576] = v110[11];
    v76[592] = v111;
    *&v76[496] = v110[6];
    *&v76[512] = v110[7];
    *&v76[528] = v110[8];
    *&v76[544] = v110[9];
    *&v76[432] = v110[2];
    *&v76[448] = v110[3];
    *&v76[464] = v110[4];
    *&v76[480] = v110[5];
    *&v76[400] = v110[0];
    *&v76[416] = v110[1];
    *&v76[760] = v112[10];
    *&v76[776] = v112[11];
    *&v76[696] = v112[6];
    *&v76[712] = v112[7];
    *&v76[728] = v112[8];
    *&v76[744] = v112[9];
    *&v76[632] = v112[2];
    *&v76[648] = v112[3];
    *&v76[664] = v112[4];
    *&v76[680] = v112[5];
    *&v76[600] = v112[0];
    *&v76[616] = v112[1];
    v76[792] = v113;
    *&v76[960] = v114[10];
    *&v76[976] = v114[11];
    v76[992] = v115;
    *&v76[896] = v114[6];
    *&v76[912] = v114[7];
    *&v76[928] = v114[8];
    *&v76[944] = v114[9];
    *&v76[832] = v114[2];
    *&v76[848] = v114[3];
    *&v76[864] = v114[4];
    *&v76[880] = v114[5];
    *&v76[800] = v114[0];
    *&v76[816] = v114[1];
    *&v76[1160] = v116[10];
    *&v76[1176] = v116[11];
    *&v76[1096] = v116[6];
    *&v76[1112] = v116[7];
    *&v76[1128] = v116[8];
    *&v76[1144] = v116[9];
    *&v76[1032] = v116[2];
    *&v76[1048] = v116[3];
    *&v76[1064] = v116[4];
    *&v76[1080] = v116[5];
    *&v76[1000] = v116[0];
    *&v76[1016] = v116[1];
    v76[1192] = v117;
    *&v76[1344] = v118[9];
    *&v76[1360] = v118[10];
    *&v76[1376] = v118[11];
    v76[1392] = v119;
    *&v76[1280] = v118[5];
    *&v76[1296] = v118[6];
    *&v76[1312] = v118[7];
    *&v76[1328] = v118[8];
    *&v76[1216] = v118[1];
    *&v76[1232] = v118[2];
    *&v76[1248] = v118[3];
    *&v76[1264] = v118[4];
    *&v76[1200] = v118[0];
    *&v76[1560] = v120[10];
    *&v76[1576] = v120[11];
    *&v76[1496] = v120[6];
    *&v76[1512] = v120[7];
    *&v76[1528] = v120[8];
    *&v76[1544] = v120[9];
    *&v76[1432] = v120[2];
    *&v76[1448] = v120[3];
    *&v76[1464] = v120[4];
    *&v76[1480] = v120[5];
    *&v76[1400] = v120[0];
    *&v76[1416] = v120[1];
    v76[1592] = v121;
    *&v76[1744] = v122[9];
    *&v76[1760] = v122[10];
    *&v76[1776] = v122[11];
    v76[1792] = v123;
    *&v76[1680] = v122[5];
    *&v76[1696] = v122[6];
    *&v76[1712] = v122[7];
    *&v76[1728] = v122[8];
    *&v76[1616] = v122[1];
    *&v76[1632] = v122[2];
    *&v76[1648] = v122[3];
    *&v76[1664] = v122[4];
    *&v76[1600] = v122[0];
    result = memcpy(v4, v76, 0x708uLL);
    v4[225] = v70;
    v4[226] = v72;
    v4[227] = v75;
    v4[228] = 0;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100315688(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v68) = a2;
  v5 = sub_100140278(&unk_1008DB8A0);
  v6 = __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v64 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v64 - v13;
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = *(v2 + 112);
  if (v17 && (, v18 = v17(a1), sub_1000245E0(v17), v18))
  {
    v19 = static os_log_type_t.default.getter();
    v20 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v19))
    {
      v66 = v19;
      v67 = v20;
      v21 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71 = v65;
      *v21 = 136315394;
      v22 = [a1 displayName];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v69 = v24;
      v70 = v26;
      sub_100140278(&qword_1008DC8F8);
      v48 = Optional.description.getter();
      v50 = v49;

      v51 = sub_10000AFDC(v48, v50, &v71);

      *(v21 + 4) = v51;
      *(v21 + 12) = 2080;
      v52 = [a1 UUID];
      if (v52)
      {
        v53 = v52;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = v66;
      v56 = type metadata accessor for UUID();
      (*(*(v56 - 8) + 56))(v14, v54, 1, v56);
      sub_100315E0C(v14, v16);
      v57 = Optional.description.getter();
      v59 = v58;
      sub_10020864C(v16);
      v60 = sub_10000AFDC(v57, v59, &v71);

      *(v21 + 14) = v60;
      v61 = v67;
      _os_log_impl(&_mh_execute_header, v67, v55, "Presenting friend detail for %s-%s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v62 = *(v3 + 144);
    if (v62)
    {
      v63 = v62;
      [v63 pushViewController:v18 animated:v68 & 1];
    }
  }

  else
  {
    v27 = static os_log_type_t.default.getter();
    v28 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v27))
    {
      v68 = v28;
      v29 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = [a1 displayName];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v69 = v32;
      v70 = v34;
      sub_100140278(&qword_1008DC8F8);
      v35 = Optional.description.getter();
      v37 = v36;

      v38 = sub_10000AFDC(v35, v37, &v71);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      v39 = [a1 UUID];
      if (v39)
      {
        v40 = v39;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 56))(v8, v41, 1, v42);
      sub_100315E0C(v8, v11);
      v43 = Optional.description.getter();
      v45 = v44;
      sub_10020864C(v11);
      v46 = sub_10000AFDC(v43, v45, &v71);

      *(v29 + 14) = v46;
      v47 = v68;
      _os_log_impl(&_mh_execute_header, v68, v27, "Failed to present friend detail for %s-%s", v29, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_100315C2C()
{
  v1 = *(v0 + 128);
  if (v1)
  {

    v3 = v0;
    v8 = v1(v2);
    sub_1000245E0(v1);
    static os_log_type_t.default.getter();
    v4 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
    v6 = *(v3 + 144);
    if (v6)
    {
      v7 = v6;
      [v7 presentViewController:v5 animated:1 completion:0];
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    v8 = HKLogActivity;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100315D88()
{
  sub_1000245E0(*(v0 + 112));
  sub_1000245E0(*(v0 + 128));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100315DD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingNavigationCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100315E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008DB8A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100315E7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_100315F7C();
}

uint64_t sub_100315F0C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory__entries) = a2;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100069D98(0x34u);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100315F7C()
{
  v1[9] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_1003160D8;

  return QuickStartWorkoutDataProvider.retrieveEntries(count:)(4);
}

uint64_t sub_1003160D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_100316458;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_100316200;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100316200()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v11 = v0[11];
  v5 = v0[9];
  sub_1000078CC();
  v10 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_100317C9C;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_100852A60;
  v7 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100317CA4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v11 + 8))(v3, v4);
  (*(v12 + 8))(v2, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100316458()
{
  v1 = static os_log_type_t.error.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v1, "Failed to retrieve quick start workout configurations due to: %@", v4, 0xCu);
    sub_10000EA04(v5, &unk_1008DB8B0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_1003165BC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100317D04(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10031662C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100140278(&qword_1008E8658);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  started = QuickStartWorkoutDataProvider.workoutVoiceAvailabilityProvider.getter();
  v8 = WorkoutVoiceAvailabilityProvider.availabilityStatePublisher.getter();

  v13[1] = v8;
  sub_100140278(&qword_1008E8660);
  sub_10014A6B0(&qword_1008E8668, &qword_1008E8660);
  sub_100317B8C();
  Publisher<>.removeDuplicates()();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  sub_10014A6B0(&qword_1008E8678, &qword_1008E8658);
  v11 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  *(v1 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_workoutVoiceAvailabilityCancellable) = v11;
}

uint64_t sub_100316880()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = static os_log_type_t.default.getter();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000AFDC(v9, v10, &v17);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = WorkoutVoiceAvailabilityProvider.State.description.getter();
      v14 = sub_10000AFDC(v12, v13, &v17);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v5, "%s availability changed to: %s, calling refreshConfigurations.", v8, 0x16u);
      swift_arrayDestroy();
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v4;
    sub_10026E198(0, 0, v2, &unk_1006E8FC8, v16);
  }

  return result;
}

uint64_t sub_100316ADC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_100315F7C();
}

uint64_t sub_100316B6C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_dataProvider;
  started = type metadata accessor for QuickStartWorkoutDataProvider();
  (*(*(started - 8) + 8))(v0 + v1, started);
  sub_1000A7304(v0 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QuickStartWorkoutCardFactory()
{
  result = qword_1008E8520;
  if (!qword_1008E8520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100316C9C()
{
  result = type metadata accessor for QuickStartWorkoutDataProvider();
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

uint64_t sub_100316D60@<X0>(int a1@<W3>, uint64_t a2@<X4>, int a3@<W5>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v32 = a1;
  v33 = a3;
  v34 = type metadata accessor for UUID();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for QuickStartWorkoutCard();
  __chkstk_darwin(started);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  sub_10001B104(a2, v35, &qword_1008DCC60);
  v19 = v36;
  if (v36)
  {
    v20 = v37;
    sub_1000066AC(v35, v36);
    (*(v20 + 8))(v19, v20);
    (*(v8 + 56))(v18, 0, 1, v34);
    v21 = sub_100005A40(v35);
  }

  else
  {
    sub_10000EA04(v35, &qword_1008DCC60);
    v21 = (*(v8 + 56))(v18, 1, 1, v34);
  }

  v22 = *(v5 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_lock);
  __chkstk_darwin(v21);
  *(&v30 - 2) = sub_100317AC8;
  *(&v30 - 1) = v5;
  os_unfair_lock_lock(v22 + 4);
  sub_100311964(v35);
  os_unfair_lock_unlock(v22 + 4);
  v23 = v35[0];
  a4[3] = started;
  a4[4] = &off_10085E8B0;
  v24 = sub_100005994(a4);
  v25 = &v12[started[5]];
  *v25 = xmmword_1006E8EA0;
  v25[16] = 3;
  v12[started[9]] = 1;
  sub_10001B104(v18, v15, &unk_1008DB8A0);
  v26 = *(v8 + 48);
  if (v26(v15, 1, v34) == 1)
  {
    v27 = v31;
    UUID.init()();
    sub_10000EA04(v18, &unk_1008DB8A0);
    v28 = v34;
    if (v26(v15, 1, v34) != 1)
    {
      sub_10000EA04(v15, &unk_1008DB8A0);
    }
  }

  else
  {
    sub_10000EA04(v18, &unk_1008DB8A0);
    v27 = v31;
    v28 = v34;
    (*(v8 + 32))(v31, v15, v34);
  }

  (*(v8 + 32))(v12, v27, v28);
  v12[started[6]] = v32 & 1;
  v12[started[7]] = v33 & 1;
  *&v12[started[8]] = v23;
  return sub_100317AF0(v12, v24);
}

_BYTE **sub_1003171BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1003171CC(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t sub_100317230(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000AFDC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_10031728C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008E8640);
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

id sub_100317380(uint64_t a1, void *a2)
{
  v3 = v2;
  started = type metadata accessor for QuickStartWorkoutDataProvider();
  v7 = *(started - 8);
  __chkstk_darwin(started);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_lock;
  sub_100140278(&qword_1008E8648);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v3 + v10) = v11;
  *(v3 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory__entries) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_workoutVoiceAvailabilityCancellable) = 0;
  if (a1)
  {
    v12 = *(a1 + OBJC_IVAR___CHStandardActivityItemsViewModel_occurrenceStore);
    v13 = *(a1 + OBJC_IVAR___CHStandardActivityItemsViewModel_standardActivityItemsDataSource);
    v14 = v12;
    v15 = v13;
LABEL_5:
    v44 = started;
    v33 = v15;
    v34 = a2;
    QuickStartWorkoutDataProvider.init(occurrenceStore:standardActivityItemsDataSource:workoutVoiceAvailabilityProvider:)();
    (*(v7 + 16))(v3 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_dataProvider, v9, started);
    v35 = QuickStartWorkoutDataProvider.retrieveConfigurationsEntries(count:)();
    v36 = *(v3 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_lock);
    __chkstk_darwin(v35);
    *(&v40 - 2) = v3;
    *(&v40 - 1) = v37;
    __chkstk_darwin(v37);
    *(&v40 - 2) = sub_100317B54;
    *(&v40 - 1) = v38;
    os_unfair_lock_lock(v36 + 4);
    sub_100317B70(v39);
    os_unfair_lock_unlock(v36 + 4);

    sub_10031662C();
    sub_100317CA4(&qword_1008E8650, type metadata accessor for QuickStartWorkoutCardFactory);

    StandardActivityItemsDataSource.addCompoundObserver(_:)();

    (*(v7 + 8))(v9, v44);
    return v3;
  }

  v42 = a2;
  v43 = v7;
  v16 = started;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  v17 = UIApplicationSignificantTimeChangeNotification;
  v18 = WorkoutConfigurationOccurrenceStore.__allocating_init(applicationSignificantTimeChangeNotificationName:)();
  v19 = objc_allocWithZone(HKHealthStore);
  v20 = v18;
  v21 = [v19 init];
  v22 = [objc_allocWithZone(NLSmartGoalStore) initWithHealthStore:v21];
  v23 = objc_allocWithZone(_HKWheelchairUseCharacteristicCache);
  v24 = v21;
  result = [v23 initWithHealthStore:v24];
  if (result)
  {
    v26 = result;
    v27 = objc_allocWithZone(WONPSDomainAccessor);
    v28 = v20;
    [v27 init];
    type metadata accessor for CompoundActivityTypeProvider();
    swift_allocObject();
    v29 = v28;
    v41 = v22;
    CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)();
    type metadata accessor for StandardActivityItemsDataSource();

    v30 = v26;
    FIActivityMoveModeWithHealthStore();

    v31 = objc_allocWithZone(type metadata accessor for ReducedActivityTypesProvider());
    ReducedActivityTypesProvider.init(reducedActivityTypes:)();
    v14 = v29;
    v32 = StandardActivityItemsDataSource.__allocating_init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:reducedActivityTypesProvider:occurrenceStore:)();

    v15 = v32;
    started = v16;
    a2 = v42;
    v7 = v43;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003177FC()
{
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000AFDC(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v6, v4, "%s compoundDataSourceDidUpdate, calling refreshConfigurations", v7, 0xCu);
    sub_100005A40(v8);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;

  sub_10026E198(0, 0, v3, &unk_1006E8F90, v13);
}

uint64_t sub_100317A14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_100315E7C();
}

uint64_t sub_100317AF0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for QuickStartWorkoutCard();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

unint64_t sub_100317B8C()
{
  result = qword_1008E8670;
  if (!qword_1008E8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8670);
  }

  return result;
}

uint64_t sub_100317BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_100316ADC();
}

uint64_t sub_100317CA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100317D1C()
{
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController____lazy_storage___itemWidth];
  if (v0[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController____lazy_storage___itemWidth + 8])
  {
    v2 = [v0 collectionView];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      *v1 = floor(CGRectGetWidth(v12) / 3.0);
      *(v1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100317DD8()
{
  sub_1000059F8(0, &qword_1008E7F60);
  result = _typeName(_:qualified:)();
  qword_1008E8680 = result;
  *algn_1008E8688 = v1;
  return result;
}

id sub_100317E18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_cellHeightsCache;
  *&v1[v3] = [objc_allocWithZone(NSCache) init];
  *&v1[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProviderObserver] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_achievementTransitionAnimator] = 0;
  v4 = &v1[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController____lazy_storage___itemWidth];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProvider] = a1;
  v5 = objc_allocWithZone(UICollectionViewFlowLayout);

  v6 = [v5 init];
  [v6 setMinimumInteritemSpacing:0.0];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ActivitySharingFriendDetailAwardsListViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCollectionViewLayout:", v6);

  return v7;
}

id sub_100317F10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ActivitySharingFriendDetailAwardsListViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:1];

  v4 = [v1 navigationItem];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v4 setTitle:v7];
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_1000059F8(0, &qword_1008E7F60);
    if (qword_1008DA920 != -1)
    {
      swift_once();
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = String._bridgeToObjectiveC()();
    [v9 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v11];

    type metadata accessor for ActivitySharingFriendDetailDataProvider();
    sub_10031A430(&unk_1008E8770, type metadata accessor for ActivitySharingFriendDetailDataProvider);
    ObservableObject<>.objectWillChange.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = ObjectType;
    type metadata accessor for ObservableObjectPublisher();
    v14 = Publisher<>.sink(receiveValue:)();

    *&v1[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProviderObserver] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031821C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  v11 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v10))
  {
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v4;
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10000AFDC(v16, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v10, "%s received object will change", v13, 0xCu);
    sub_100005A40(v15);
    v4 = v23;
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v19 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10031A428;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100852BC8;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10031A430(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v4 + 8))(v6, v3);
  return (*(v24 + 8))(v9, v25);
}

void sub_1003185D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1003188C8(void *a1)
{
  if (qword_1008DA920 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v5;
  static Published.subscript.getter();

  *&v19[9] = *&v17[9];
  v18[3] = v16;
  *v19 = *v17;
  v18[1] = v14;
  v18[2] = v15;
  v18[0] = v13;

  sub_100319D40(v18);
  result = IndexPath.row.getter();
  if ((*&v17[8] & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*&v17[8] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(*&v17[8] + 8 * result + 32);
LABEL_8:
    v12 = v11;

    sub_100317D1C();
    [v7 setPreferredWidth:?];
    [v7 configureWithAchievement:v12 badgeImageFactory:*(v8 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementBadgeImageFactory) locProvider:*(v8 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementLocalizationProvider) shouldShowProgressBar:0 formatForFriend:1];

    return v5;
  }

  __break(1u);
  return result;
}

void sub_100318D24(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProvider];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v129[9] = *(v127 + 9);
  v128[3] = v126;
  *v129 = v127[0];
  v128[1] = v124;
  v128[2] = v125;
  v128[0] = v123;

  sub_100319D40(v128);
  v4 = IndexPath.row.getter();
  v109 = a1;
  v111 = v1;
  if ((*(&v127[0] + 1) & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((*(&v127[0] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(*(&v127[0] + 1) + 8 * v4 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v6 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v125 = v120;
  v126 = v121;
  v127[0] = v122[0];
  *(v127 + 9) = *(v122 + 9);
  v123 = aBlock;
  v124 = v119;
  v112 = *(&v120 + 1);
  sub_100319D40(&v123);
  v7 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_healthStore);
  v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendListSectionManager);
  v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_awardsDataProvider);
  v10 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementBadgeImageFactory);
  v11 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementResourceProvider);
  v12 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fiuiFormattingManager);
  v13 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementLocalizationProvider);
  v14 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_pauseRingsCoordinator);
  v106 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fitnessAppContext);
  v113 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutFormattingManager);
  v15 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutDataProvider);
  v102 = v6;
  v100 = v7;
  v104 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v98 = v106;
  v96 = v113;
  v114 = v15;
  v92 = [v112 isMe];
  v117[3] = type metadata accessor for CHAwardsDataProvider();
  v117[4] = sub_10031A430(&unk_1008E8740, type metadata accessor for CHAwardsDataProvider);
  v117[0] = v16;
  v107 = type metadata accessor for TrophyCaseAwardDetailViewController();
  v22 = objc_allocWithZone(v107);
  v23 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer;
  v24 = objc_allocWithZone(UIView);
  v93 = v16;
  v25 = [v24 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = [objc_opt_self() blackColor];
  [v25 setBackgroundColor:v26];

  v27 = UIView.forAutoLayout()();
  *&v22[v23] = v27;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell] = 0;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout] = 0;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer] = 0;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView] = 0;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage] = 0;
  v28 = &v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText];
  *v28 = 0;
  v28[1] = 0;
  v95 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement] = _swiftEmptyArrayStorage;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement] = v102;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_healthStore] = v100;
  sub_100007C5C(v117, &v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider]);
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeImageFactory] = v17;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_resourceProvider] = v18;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formattingManager] = v19;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider] = v20;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_pauseRingsCoordinator] = v21;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_fitnessAppContext] = v98;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutFormattingManager] = v96;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider] = v114;
  v94 = objc_allocWithZone(AAUIBadgeView);
  v29 = v102;
  v101 = v100;
  v103 = v17;
  v91 = v18;
  v90 = v19;
  v89 = v20;
  v88 = v21;
  v99 = v98;
  v97 = v96;
  v87 = v114;
  v30 = [v94 initUsingEarnedShader:1];
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeView] = v30;
  *&v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendListManager] = v104;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowCelebration] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowEarned] = 1;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowAssociatedWorkout] = 0;
  v22[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formatsForFriend] = v92 ^ 1;
  type metadata accessor for FriendsAchievementDataProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v29;
  *(inited + 24) = v104;
  v32 = v104;
  v33 = v29;
  v105 = v32;
  v34 = sub_100288680();
  swift_setDeallocating();

  *&v22[v95] = v34;

  v35 = [objc_allocWithZone(UICollectionViewLayout) init];
  v116.receiver = v22;
  v116.super_class = v107;
  v36 = objc_msgSendSuper2(&v116, "initWithCollectionViewLayout:", v35);

  v37 = v36;
  v38 = [v37 navigationItem];
  [v38 setLargeTitleDisplayMode:2];

  v39 = [v37 collectionView];
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  v115 = v33;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  *&v120 = sub_100319D94;
  *(&v120 + 1) = v41;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v119 = sub_10006871C;
  *(&v119 + 1) = &unk_100852AB0;
  v43 = _Block_copy(&aBlock);
  v44 = [v42 initWithSectionProvider:v43];
  _Block_release(v43);

  [v40 setCollectionViewLayout:v44];

  v45 = [v37 collectionView];
  if (!v45)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = v45;
  type metadata accessor for TrophyCaseAwardDetailBadgeCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = String._bridgeToObjectiveC()();
  [v46 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v48];

  v49 = [v37 collectionView];
  if (!v49)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v50 = v49;
  type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
  v51 = swift_getObjCClassFromMetadata();
  v52 = String._bridgeToObjectiveC()();
  [v50 registerClass:v51 forCellWithReuseIdentifier:v52];

  v53 = [v37 collectionView];
  if (!v53)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v54 = v53;
  type metadata accessor for TrophyCaseAwardDetailFriendCell();
  v55 = swift_getObjCClassFromMetadata();
  v56 = String._bridgeToObjectiveC()();
  [v54 registerClass:v55 forCellWithReuseIdentifier:v56];

  v57 = [v37 collectionView];
  if (!v57)
  {
LABEL_26:
    __break(1u);
    return;
  }

  type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
  v58 = swift_getObjCClassFromMetadata();
  v59 = UICollectionElementKindSectionHeader;
  v60 = String._bridgeToObjectiveC()();
  [v57 registerClass:v58 forSupplementaryViewOfKind:v59 withReuseIdentifier:v60];

  v61 = v37;
  if (v92)
  {
    v62 = [v37 navigationItem];
    v61 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v37 action:"shareTapped:"];

    [v62 setRightBarButtonItem:v61];
  }

  sub_10031A430(&unk_1008EAEE0, type metadata accessor for TrophyCaseAwardDetailViewController);
  sub_1000066AC(&v93[OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider], *&v93[OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider + 24]);
  v63 = v37;
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();

  sub_100650294();
  sub_100005A40(v117);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v65 = [v109 cellForItemAtIndexPath:isa];

  if (v65)
  {
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    if (v66)
    {
      v67 = v66;
      v68 = swift_allocObject();
      *(v68 + 16) = v67;
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      v70 = v65;
      v108 = v63;
      v110 = v70;
      [v67 badgeRect];
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v79 = [v67 contentView];
      v80 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
      *&v120 = sub_100319D9C;
      *(&v120 + 1) = v68;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v119 = sub_1000449A8;
      *(&v119 + 1) = &unk_100852B28;
      v81 = _Block_copy(&aBlock);

      *&v120 = sub_100319DB0;
      *(&v120 + 1) = v69;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v33 = v115;
      *&v119 = sub_1000449A8;
      *(&v119 + 1) = &unk_100852B50;
      v82 = _Block_copy(&aBlock);

      v83 = [v80 initWithPresentingViewController:v111 detailViewController:v108 shouldPlayFlipInAnimation:1 initialBadgeFrame:v79 conversionView:v81 didStartAnimationBlock:v82 didFinishAnimationBlock:{v72, v74, v76, v78}];

      _Block_release(v82);
      _Block_release(v81);

      v65 = *&v111[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_achievementTransitionAnimator];
      *&v111[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_achievementTransitionAnimator] = v83;
    }
  }

  v84 = [v111 navigationController];
  if (v84)
  {
    v85 = v84;
    [v84 setDelegate:v111];
  }

  v86 = [v111 navigationController];
  [v86 pushViewController:v63 animated:1];
}

id sub_100319C64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendDetailAwardsListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100319DC4(unint64_t a1)
{
  v5 = v2;
  v7 = IndexPath.row.getter();
  v8 = IndexPath.row.getter();
  v9 = v7 - v8 % 3;
  if (__OFSUB__(v7, v8 % 3))
  {
    goto LABEL_51;
  }

  v1 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
    goto LABEL_52;
  }

  v7 = &v50;
  v4 = *(v5 + OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v56 + 9) = *(v54 + 9);
  v55[3] = v53;
  v56[0] = v54[0];
  v55[1] = v51;
  v55[2] = v52;
  v55[0] = v50;
  a1 = *(&v54[0] + 1);

  sub_100319D40(v55);
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (__OFSUB__(i, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v47 = v5;
    if (i - 1 >= v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = i - 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v7 + 73) = *&v49[9];
    v53 = v48[3];
    v54[0] = *v49;
    v51 = v48[1];
    v52 = v48[2];
    v50 = v48[0];
    a1 = *&v49[8];

    sub_100319D40(&v50);
    if (v3 < v9)
    {
      goto LABEL_55;
    }

    v1 = a1 >> 62;
    if (!(a1 >> 62))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v9)
      {
        goto LABEL_57;
      }

      goto LABEL_12;
    }

LABEL_56:
    if (_CocoaArrayWrapper.endIndex.getter() < v9)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_12:
    if (v9 < 0)
    {
      goto LABEL_58;
    }

    if (v1)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 <= v3)
    {
      goto LABEL_59;
    }

    v12 = v3 + 1;
    if ((a1 & 0xC000000000000001) == 0 || v9 == v12)
    {
    }

    else
    {
      sub_1000059F8(0, &qword_1008E8750);

      v13 = v9;
      do
      {
        v5 = v13 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v13);
        v13 = v5;
      }

      while (v3 + 1 != v5);
    }

    if (v1)
    {
      _CocoaArrayWrapper.subscript.getter();
      v46 = v14;
      v9 = v15;
      v17 = v16;

      v12 = v17 >> 1;
    }

    else
    {
      v46 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v18 = v12 - v9;
    if (__OFSUB__(v12, v9))
    {
      goto LABEL_60;
    }

    v45 = v4;
    if (!v18)
    {
      break;
    }

    *&v48[0] = _swiftEmptyArrayStorage;
    v3 = v18 & ~(v18 >> 63);
    swift_unknownObjectRetain();
    a1 = v48;
    sub_100073020(0, v3, 0);
    if (v18 < 0)
    {
      goto LABEL_61;
    }

    v7 = 0;
    v19 = *&v48[0];
    while (1)
    {
      v1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((v9 + v7) >= v12 || v7 >= v18)
      {
        goto LABEL_50;
      }

      v20 = v19;
      a1 = *(v46 + 8 * v9 + 8 * v7);
      v21 = [a1 template];
      v22 = [v21 uniqueName];

      if (!v22)
      {
        goto LABEL_63;
      }

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v24;

      v19 = v20;
      *&v48[0] = v20;
      v5 = v20[2];
      v25 = v19[3];
      v3 = v5 + 1;
      if (v5 >= v25 >> 1)
      {
        a1 = v48;
        sub_100073020((v25 > 1), v5 + 1, 1);
        v19 = *&v48[0];
      }

      v19[2] = v3;
      v26 = &v19[2 * v5];
      v26[4] = v23;
      v26[5] = v4;
      ++v7;
      if (v1 == v18)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  swift_unknownObjectRetain();
  v19 = _swiftEmptyArrayStorage;
LABEL_39:
  *&v48[0] = v19;
  sub_100140278(&unk_1008E99C0);
  sub_10014A6B0(&qword_1008E8760, &unk_1008E99C0);
  BidirectionalCollection<>.joined(separator:)();

  v27 = String._bridgeToObjectiveC()();

  v28 = OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_cellHeightsCache;
  v29 = v47;
  v30 = [*(v47 + OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_cellHeightsCache) objectForKey:v27];
  if (v30)
  {
    v31 = v30;
    swift_unknownObjectRelease();
    sub_100317D1C();
    [v31 doubleValue];
    swift_unknownObjectRelease();

    v27 = v31;
LABEL_48:

    return;
  }

  v32 = 0.0;
  if (v9 == v12)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v41 = *(v29 + v28);
    v42 = objc_allocWithZone(NSNumber);
    v43 = v41;
    v44 = [v42 initWithDouble:v32];
    [v43 setObject:v44 forKey:v27];

    sub_100317D1C();
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v33 = objc_opt_self();
  if (v9 < v12)
  {
    v34 = v33;
    v35 = OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementLocalizationProvider;
    v36 = (v46 + 8 * v9);
    v29 = v47;
    do
    {
      v37 = *v36++;
      v38 = v37;
      sub_100317D1C();
      [v34 cellHeightForAchievement:v38 preferredWidth:0 appliesLargeCellInsets:*(v45 + v35) locProvider:0 withProgressBar:1 formatForFriend:?];
      v40 = v39;

      if (v40 > v32)
      {
        v32 = v40;
      }

      --v18;
    }

    while (v18);
    goto LABEL_47;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_10031A430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031A488()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    if (*(v1 + 32) <= *(v1 + 32 + 16 * v2 - 8))
    {
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10031A51C(double a1, double a2)
{
  v59 = type metadata accessor for ZoneViewType();
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > a2)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_10031A488();
  if (v10 <= a1 || v9 >= a2 || a1 == a2 || v9 == v10)
  {
    v58 = v2;
    v14 = enum case for ZoneViewType.heartRateZone(_:);
    v15 = *(v5 + 104);
    v16 = v8;
    v17 = v8;
    v18 = v59;
    v15(v17, enum case for ZoneViewType.heartRateZone(_:), v59);
    v57 = zoneColor(for:index:count:)();
    v19 = *(v5 + 8);
    v19(v16, v18);
    v15(v16, v14, v18);
    zoneColor(for:index:count:)();
    v19(v16, v18);
    sub_10031A488();

    sub_100140278(&qword_1008E8920);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006D46C0;
    *(v20 + 32) = Color.opacity(_:)();
    Gradient.init(colors:)();

    return;
  }

  v21 = *(v2 + 16);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_64;
  }

  v23 = 0;
  v24 = v22 - 1;
  LODWORD(v58) = enum case for ZoneViewType.heartRateZone(_:);
  v56 = (v5 + 8);
  v57 = (v5 + 104);
  v25 = (v21 + 40);
  v26 = _swiftEmptyArrayStorage;
  while (1)
  {
    v27 = *(v25 - 1);
    v28 = *v25;
    if (v27 > a1 || v28 <= a1)
    {
      if (v27 <= a2 && v28 > a2)
      {
        goto LABEL_46;
      }

      if (v27 != v28 && v28 > a1 && v27 < a2)
      {
        v38 = v59;
        (*v57)(v8, v58, v59);
        v39 = zoneColor(for:index:count:)();
        (*v56)(v8, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1001A2DB4(0, v26[2] + 1, 1, v26);
        }

        v41 = v26[2];
        v40 = v26[3];
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v26 = sub_1001A2DB4((v40 > 1), v41 + 1, 1, v26);
        }

        v43 = (v27 + v28) * 0.5;
        goto LABEL_51;
      }
    }

    else
    {
      sub_10031AAA8(v23, a1);
      v30 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1001A2DB4(0, v26[2] + 1, 1, v26);
      }

      v32 = v26[2];
      v31 = v26[3];
      if (v32 >= v31 >> 1)
      {
        v26 = sub_1001A2DB4((v31 > 1), v32 + 1, 1, v26);
      }

      v26[2] = v32 + 1;
      v33 = &v26[2 * v32];
      v33[4] = a1;
      *(v33 + 5) = v30;
      if (v27 <= a2 && v28 > a2)
      {
LABEL_46:
        sub_10031AAA8(v23, a2);
        v39 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1001A2DB4(0, v26[2] + 1, 1, v26);
        }

        v41 = v26[2];
        v45 = v26[3];
        v42 = v41 + 1;
        if (v41 >= v45 >> 1)
        {
          v26 = sub_1001A2DB4((v45 > 1), v41 + 1, 1, v26);
        }

        v43 = a2;
LABEL_51:
        v26[2] = v42;
        v46 = &v26[2 * v41];
        v46[4] = v43;
        *(v46 + 5) = v39;
      }
    }

    if (v24 == v23)
    {
      break;
    }

    ++v23;
    v25 += 2;
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v47 = v26[2];
  if (v47)
  {
    v48 = v26 + 5;
    v49 = _swiftEmptyArrayStorage;
    do
    {

      Color.opacity(_:)();
      v50 = Gradient.Stop.init(color:location:)();
      v52 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1001A2CA8(0, *(v49 + 2) + 1, 1, v49);
      }

      v54 = *(v49 + 2);
      v53 = *(v49 + 3);
      if (v54 >= v53 >> 1)
      {
        v49 = sub_1001A2CA8((v53 > 1), v54 + 1, 1, v49);
      }

      *(v49 + 2) = v54 + 1;
      v55 = &v49[16 * v54];
      *(v55 + 4) = v50;
      *(v55 + 5) = v52;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  Gradient.init(stops:)();
}

void sub_10031AAA8(unint64_t a1, double a2)
{
  v5 = type metadata accessor for ZoneViewType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v2 + 16);
  v10 = *(v9 + 16);
  if (v10 <= a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v9 + 32;
  v12 = (v9 + 32 + 16 * a1);
  v13 = *v12 + v12[1];
  v14 = v13 * 0.5;
  if (v10 - 1 == a1)
  {
    v15 = *v12;
  }

  else
  {
    v15 = v13 * 0.5;
  }

  v16 = (v6 + 8);
  if (v15 >= a2)
  {
    v20 = enum case for ZoneViewType.heartRateZone(_:);
    v21 = *(v6 + 104);
    v21(v8, enum case for ZoneViewType.heartRateZone(_:), v5);
    if (!a1)
    {
      zoneColor(for:index:count:)();
      (*v16)(v8, v5);
      return;
    }

    v24 = zoneColor(for:index:count:)();
    v23 = *v16;
    v23(v8, v5);
    if (*(v9 + 16) >= a1)
    {
      v22 = (*(v11 + 16 * (a1 - 1)) + *(v11 + 16 * (a1 - 1) + 8)) * 0.5;
      v21(v8, v20, v5);
      zoneColor(for:index:count:)();
      v23(v8, v5);
      sub_1005A7280((a2 - v22) / (v15 - v22));

      return;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v17 = *(v6 + 104);
  LODWORD(v24) = enum case for ZoneViewType.heartRateZone(_:);
  v23 = v17;
  (v17)(v8);
  zoneColor(for:index:count:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  if (v10 - 1 != a1)
  {
    if (a1 + 1 < *(v9 + 16))
    {
      v19 = (*(v11 + 16 * (a1 + 1)) + *(v11 + 16 * (a1 + 1) + 8)) * 0.5;
      (v23)(v8, v24, v5);
      zoneColor(for:index:count:)();
      v18(v8, v5);
      sub_1005A7280((a2 - v14) / (v19 - v14));

      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_10031ADE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_100307CF8(v13, v10, type metadata accessor for WorkoutChartDataElement);
    if (!v11)
    {
      break;
    }

    sub_100307CF8(v14, v6, type metadata accessor for WorkoutChartDataElement);
    if ((static Date.== infix(_:_:)() & 1) == 0 || *&v10[v4[5]] != *&v6[v4[5]] || *&v10[v4[6]] != *&v6[v4[6]])
    {
      sub_100307D60(v6, type metadata accessor for WorkoutChartDataElement);
      sub_100307D60(v10, type metadata accessor for WorkoutChartDataElement);
      return 0;
    }

    v17 = *&v10[v4[7]];
    sub_100307D60(v10, type metadata accessor for WorkoutChartDataElement);
    v18 = *&v6[v4[7]];
    sub_100307D60(v6, type metadata accessor for WorkoutChartDataElement);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10031B010(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_10031B088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      if (*v4)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        if (*(v4 - 2) != *(v3 - 2) || *(v4 - 1) != *(v3 - 1))
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10031B100(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10031B15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10031B1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogLockup();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10031B7BC(&qword_1008E8918, 255, &type metadata accessor for CatalogLockup);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031B418(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for MindfulnessSessionViewModel();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10031B66C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10031B724()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100307848(v3, *(v1 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_10031B778()
{
  Hasher.init(_seed:)();
  sub_100307848(v2, *(*v0 + 16));
  return Hasher._finalize()();
}

uint64_t sub_10031B7BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10031B89C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10031B95C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008DD230);
    if (v1 <= 0x3F)
    {
      sub_10031BB3C(319, &qword_1008E8A28, type metadata accessor for WorkoutChartDataElement, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_10031BB3C(319, &qword_1008E8A30, type metadata accessor for ChartZones, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WorkoutChartDataElementFormattingManager();
            if (v5 <= 0x3F)
            {
              sub_10031BBA0();
              if (v6 <= 0x3F)
              {
                sub_1000059F8(319, &unk_1008E8A40);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10031BB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10031BBA0()
{
  if (!qword_1008E8A38)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E8A38);
    }
  }
}

uint64_t sub_10031BBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for WorkoutChartViewModel(0);
  v9 = *(v2 + *(result + 32));
  v10 = *(v9 + 16);
  if (v10)
  {
    v20 = a2;
    v11 = 0;
    while (1)
    {
      if (__OFSUB__(v10, v11))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v12 = v11 + (v10 - v11) / 2;
      if (__OFADD__(v11, (v10 - v11) / 2))
      {
        goto LABEL_19;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v12 >= *(v9 + 16))
      {
        goto LABEL_21;
      }

      v13 = v9 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v12;
      sub_10031CC38(v13, v7);
      v14 = static Date.== infix(_:_:)();
      v15 = type metadata accessor for Date();
      v16 = *(*(v15 - 8) + 8);
      result = v16(v7, v15);
      v17 = *(v9 + 16);
      if (v14)
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_22;
      }

      sub_10031CC38(v13, v7);
      v18 = static Date.< infix(_:_:)();
      result = v16(v7, v15);
      if (v18)
      {
        v11 = v12 + 1;
      }

      else
      {
        v10 = v11 + (v10 - v11) / 2;
      }

      if (v11 >= v10)
      {
        v19 = 1;
        a2 = v20;
        return (*(v22 + 56))(a2, v19, 1, v21);
      }
    }

    if (v12 < v17)
    {
      a2 = v20;
      sub_10031CC38(v13, v20);
      v19 = 0;
      return (*(v22 + 56))(a2, v19, 1, v21);
    }

LABEL_23:
    __break(1u);
  }

  else
  {
    v19 = 1;
    return (*(v22 + 56))(a2, v19, 1, v21);
  }

  return result;
}

uint64_t sub_10031BE28(uint64_t a1, void *a2)
{
  v5 = sub_100140278(&qword_1008E8AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37[-v6];
  v8 = type metadata accessor for WorkoutChartDataElement(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v37[-v13];
  sub_10031BBF8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_100223960(v7, v14);
    v27 = type metadata accessor for WorkoutChartViewModel(0);
    v28 = *(v2 + *(v27 + 20));
    if (v28 > 5)
    {
      if (*(v2 + *(v27 + 20)) <= 7u)
      {
        if (v28 == 6)
        {
          v29 = sub_100197098(v14, a2);
        }

        else
        {
          v29 = sub_100197394(v14, a2);
        }

        goto LABEL_30;
      }

      if (v28 - 8 < 2)
      {
LABEL_20:
        v29 = sub_1001968A0(v14, a2);
        goto LABEL_30;
      }
    }

    else
    {
      if (*(v2 + *(v27 + 20)) <= 2u)
      {
        if (*(v2 + *(v27 + 20)))
        {
          if (v28 != 1)
          {
            v29 = sub_10019623C(v14, a2);
            goto LABEL_30;
          }

          goto LABEL_20;
        }

        v29 = sub_10019656C(v14, a2);
LABEL_30:
        v36 = v29;
        sub_10019836C(v14);
        return v36;
      }

      if (v28 != 3)
      {
        if (v28 == 4)
        {
          sub_100197FD4(v14, a2);
        }

        else
        {
          sub_100197CB0(v14, a2);
        }

        goto LABEL_30;
      }
    }

    sub_100195E90(v14, a2);
    goto LABEL_30;
  }

  sub_10000EA04(v7, &qword_1008E8AC0);
  result = type metadata accessor for WorkoutChartViewModel(0);
  v16 = 0;
  v17 = *(v2 + *(result + 48));
  v18 = *(v17 + 16);
  while (1)
  {
    if (v18 == v16)
    {
      v30 = [objc_opt_self() mainBundle];
      v31 = String._bridgeToObjectiveC()();
      v22 = [v30 localizedStringForKey:v31 value:0 table:0];

      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
      }

      sub_100140278(&unk_1008E7FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006D46C0;
      *(inited + 32) = NSFontAttributeName;
      v24 = inited + 32;
      *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
      *(inited + 40) = a2;
      v32 = a2;
      v33 = NSFontAttributeName;
      goto LABEL_17;
    }

    if (v16 >= *(v17 + 16))
    {
      break;
    }

    sub_10031CC38(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16++, v11);
    v19 = static Date.== infix(_:_:)();
    result = sub_10019836C(v11);
    if (v19)
    {
      v20 = [objc_opt_self() mainBundle];
      v21 = String._bridgeToObjectiveC()();
      v22 = [v20 localizedStringForKey:v21 value:0 table:0];

      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
      }

      sub_100140278(&unk_1008E7FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006D46C0;
      *(inited + 32) = NSFontAttributeName;
      v24 = inited + 32;
      *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
      *(inited + 40) = a2;
      v25 = NSFontAttributeName;
      v26 = a2;
LABEL_17:
      sub_1004C9200(inited);
      swift_setDeallocating();
      sub_10000EA04(v24, &unk_1008EE730);
      v34 = objc_allocWithZone(NSAttributedString);
      type metadata accessor for Key(0);
      sub_10031C98C(&qword_1008E7FD0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v36 = [v34 initWithString:v22 attributes:isa];

      return v36;
    }
  }

  __break(1u);
  return result;
}

id sub_10031C3D4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v8 = type metadata accessor for WorkoutChartViewModel(0);
  v9 = *(v2 + v8[15]);
  v10 = *(v2 + v8[16]);
  *&v7[v5[8]] = v9;
  *&v7[v5[9]] = v10;
  *&v7[v5[7]] = (v9 + v10) * 0.5;
  v11 = *(v2 + v8[5]);
  if (v11 <= 5)
  {
    if (*(v2 + v8[5]) <= 2u)
    {
      if (!*(v2 + v8[5]))
      {
        v12 = sub_10019656C(v7, a1);
        goto LABEL_18;
      }

      if (v11 != 1)
      {
        v12 = sub_10019623C(v7, a1);
        goto LABEL_18;
      }

LABEL_8:
      v12 = sub_1001968A0(v7, a1);
      goto LABEL_18;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        sub_100197FD4(v7, a1);
      }

      else
      {
        sub_100197CB0(v7, a1);
      }

      goto LABEL_18;
    }

LABEL_12:
    sub_100195E90(v7, a1);
    goto LABEL_18;
  }

  if (*(v2 + v8[5]) > 7u)
  {
    if (v11 - 8 < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v11 == 6)
  {
    v12 = sub_100197098(v7, a1);
  }

  else
  {
    v12 = sub_100197394(v7, a1);
  }

LABEL_18:
  v13 = v12;
  sub_10019836C(v7);
  return v13;
}

uint64_t sub_10031C560(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for WorkoutChartViewModel(0);
  Date.timeIntervalSince(_:)();
  v6 = [*(v2 + *(v5 + 76)) stringFromTimeInterval:?];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if ((a2 & 1) == 0)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
    if ((a2 & 1) == 0)
    {
      return v8;
    }
  }

  if (*(*(v3 + *(v5 + 48)) + 16))
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10000A788();
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
    v8 = String.init(format:_:)();
  }

  return v8;
}

void sub_10031C700(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10031C98C(&qword_1008E4E10, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for WorkoutChartViewModel(0);
  sub_1005D69B8(*(v1 + v3[5]));
  String.hash(into:)();

  String.hash(into:)();
  sub_1003078C4(a1, *(v1 + v3[8]));
  Hasher._combine(_:)(*(v1 + v3[9]));
  type metadata accessor for Date();
  sub_10031C98C(&qword_1008DEF18, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  sub_1003078C4(a1, *(v1 + v3[12]));
  v4 = *(v1 + v3[13]);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v5 = *(v4 + 16);

    sub_100307848(a1, v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10031C98C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10031C9D4()
{
  type metadata accessor for Date();
  sub_10031C98C(&qword_1008DEF18, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for WorkoutChartDataElement(0);
  v2 = *(v0 + v1[5]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v0 + v1[6]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v0 + v1[7]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
}

Swift::Int sub_10031CACC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10031CB30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_10031CC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031CC9C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutChartViewModel(0);
  v5 = v4[5];
  v6 = *(a2 + v5);
  v7 = sub_1005D69B8(*(a1 + v5));
  v9 = v8;
  if (v7 == sub_1005D69B8(v6) && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10031ADE8(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]) || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (sub_10031ADE8(*(a1 + v4[12]), *(a2 + v4[12])) & 1) == 0)
  {
    return 0;
  }

  v18 = v4[13];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    v22 = *(v19 + 16);
    v23 = *(v20 + 16);

    return sub_10031B010(v22, v23);
  }

  return result;
}

char *sub_10031CE38(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_bucket] = 3;
  v9 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v9] = sub_100555C98();
  v10 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_separator;
  sub_1000059F8(0, &qword_1008E7580);
  *&v4[v10] = sub_10065AF60();
  v63.receiver = v4;
  v63.super_class = type metadata accessor for TrendDetailVO2MaxLabelView();
  v11 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label;
  v13 = *&v11[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label];
  v14 = objc_opt_self();
  v15 = v11;
  v16 = v13;
  v17 = [v14 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v16 setFont:v17];

  [*&v11[v12] setTextAlignment:0];
  v18 = *&v11[v12];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 secondaryLabelColor];
  [v20 setTextColor:v21];

  v22 = v15;
  v23 = *&v11[v12];
  v24 = v22;
  [v24 addSubview:v23];
  v25 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_separator;
  v26 = *&v24[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_separator];
  v27 = [v19 separatorColor];
  [v26 setBackgroundColor:v27];

  [v24 addSubview:*&v24[v25]];
  v28 = [*&v11[v12] leftAnchor];
  v29 = [v24 leftAnchor];

  v61 = [v28 constraintEqualToAnchor:v29 constant:15.0];
  v30 = [*&v11[v12] rightAnchor];
  v31 = [v24 rightAnchor];

  v59 = [v30 constraintLessThanOrEqualToAnchor:v31 constant:-15.0];
  v32 = [*&v11[v12] topAnchor];
  v33 = [v24 topAnchor];

  v58 = [v32 constraintEqualToAnchor:v33 constant:1.0];
  v34 = [*&v11[v12] bottomAnchor];
  v35 = [v24 bottomAnchor];

  v57 = [v34 constraintEqualToAnchor:v35 constant:-1.0];
  v36 = [*&v24[v25] leftAnchor];
  v37 = [*&v11[v12] leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  v39 = [*&v24[v25] rightAnchor];
  v40 = [v24 rightAnchor];

  v56 = [v39 constraintEqualToAnchor:v40 constant:-15.0];
  v41 = [*&v24[v25] heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v54 = [v41 constraintEqualToConstant:*&qword_100925B90];

  v42 = [*&v24[v25] bottomAnchor];
  v43 = [v24 bottomAnchor];

  v53 = [v42 constraintEqualToAnchor:v43];
  v55 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006D68B0;
  *(v44 + 32) = v61;
  *(v44 + 40) = v59;
  *(v44 + 48) = v58;
  *(v44 + 56) = v57;
  *(v44 + 64) = v38;
  *(v44 + 72) = v56;
  *(v44 + 80) = v54;
  *(v44 + 88) = v53;
  sub_1000059F8(0, &qword_1008DC980);
  v62 = v61;
  v60 = v59;
  v45 = v58;
  v46 = v57;
  v47 = v38;
  v48 = v56;
  v49 = v54;
  v50 = v53;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];

  return v24;
}

uint64_t sub_10031D4E4(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_bucket) = 3;
  v4 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v1 + v4) = sub_100555C98();
  v5 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_separator;
  sub_1000059F8(0, &qword_1008E7580);
  v6 = sub_10065AF60();

  *(v2 + v5) = v6;
  type metadata accessor for TrendDetailVO2MaxLabelView();
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_10031D668(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_pill;
  type metadata accessor for TrendAveragePlatterView();
  *&v4[v10] = sub_10065AF60();
  v11 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashContainer;
  sub_1000059F8(0, &qword_1008E7580);
  *&v4[v11] = sub_10065AF60();
  v12 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashLayer;
  *&v5[v12] = [objc_allocWithZone(CAShapeLayer) init];
  v20.receiver = v5;
  v20.super_class = type metadata accessor for TrendDetailVO2MaxPill();
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashContainer;
  v15 = *&v13[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashContainer];
  v16 = v13;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_pill]];
  v17 = [*&v13[v14] layer];
  v18 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashLayer;
  [v17 addSublayer:*&v16[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashLayer]];

  [*&v16[v18] setLineCap:kCALineCapRound];
  [*&v16[v18] setLineWidth:1.0];
  sub_10031D930();

  return v16;
}

uint64_t sub_10031D828(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_pill;
  type metadata accessor for TrendAveragePlatterView();
  *(v1 + v4) = sub_10065AF60();
  v5 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashContainer;
  sub_1000059F8(0, &qword_1008E7580);
  *(v1 + v5) = sub_10065AF60();
  v6 = OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashLayer;
  v7 = [objc_allocWithZone(CAShapeLayer) init];

  *(v2 + v6) = v7;
  type metadata accessor for TrendDetailVO2MaxPill();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10031D930()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashContainer];
  v2 = [v1 widthAnchor];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_pill];
  v4 = [v3 widthAnchor];
  v36 = [v2 constraintEqualToAnchor:v4 constant:10.0];

  v5 = [v3 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v34 = [v5 constraintEqualToAnchor:v6];

  v7 = [v3 topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  v10 = [v3 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v32 = [v10 constraintEqualToAnchor:v11];

  v12 = [v1 topAnchor];
  v13 = [v0 topAnchor];
  v33 = [v12 constraintEqualToAnchor:v13];

  v14 = [v1 bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = [v1 leftAnchor];
  v18 = [v0 leftAnchor];
  v30 = [v17 constraintEqualToAnchor:v18];

  v19 = [v1 rightAnchor];
  v20 = [v0 rightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  v31 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006D68B0;
  *(v22 + 32) = v36;
  *(v22 + 40) = v34;
  *(v22 + 48) = v9;
  *(v22 + 56) = v32;
  *(v22 + 64) = v33;
  *(v22 + 72) = v16;
  *(v22 + 80) = v30;
  *(v22 + 88) = v21;
  sub_1000059F8(0, &qword_1008DC980);
  v29 = v36;
  v35 = v34;
  v23 = v9;
  v24 = v32;
  v25 = v33;
  v26 = v16;
  v27 = v30;
  v28 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

void sub_10031DD70()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TrendDetailVO2MaxPill();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashLayer];
  [*&v0[OBJC_IVAR____TtC10FitnessApp21TrendDetailVO2MaxPill_dashContainer] bounds];
  [v1 setFrame:?];
  v2 = [objc_allocWithZone(UIBezierPath) init];
  [v1 bounds];
  MidY = CGRectGetMidY(v6);
  [v2 moveToPoint:{0.0, MidY}];
  [v2 addLineToPoint:{4.0, MidY}];
  [v1 bounds];
  [v2 moveToPoint:{CGRectGetMaxX(v7) + -4.0, MidY}];
  [v1 bounds];
  [v2 addLineToPoint:{CGRectGetMaxX(v8), MidY}];
  v4 = [v2 CGPath];
  [v1 setPath:v4];
}

char *sub_10031DFCC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_gradientLayer;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_shapeLayer;
  *&v4[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for TrendDetailVO2MaxMeter();
  v11 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 addSublayer:*&v11[OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_shapeLayer]];

  v13 = [v11 layer];
  v14 = OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_gradientLayer;
  [v13 addSublayer:*&v11[OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_gradientLayer]];

  v15 = *&v11[v14];
  v16 = kCAFilterSourceAtop;
  v17 = objc_allocWithZone(CAFilter);
  v18 = v15;
  v19 = [v17 initWithType:v16];
  [v18 setCompositingFilter:v19];

  return v11;
}

void sub_10031E244(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_gradientLayer);
  sub_100140278(&qword_1008E7590);
  v4 = swift_allocObject();
  v5 = *(a1 + OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient);
  *(v4 + 16) = xmmword_1006D1F70;
  v6 = [*(v5 + OBJC_IVAR____TtC10FitnessApp14GradientColors_light) CGColor];
  type metadata accessor for CGColor(0);
  v8 = v7;
  *(v4 + 56) = v7;
  *(v4 + 32) = v6;
  v9 = [*(v5 + OBJC_IVAR____TtC10FitnessApp14GradientColors_dark) CGColor];
  *(v4 + 88) = v8;
  *(v4 + 64) = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setColors:isa];
}

void sub_10031E374(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_shapeLayer];
  [a1 bounds];
  [v2 setFrame:?];
  v3 = *&a1[OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_gradientLayer];
  [a1 bounds];
  [v3 setFrame:?];
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v12 = CGRectGetWidth(v16) * 0.5;
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v12}];
  v14 = [v13 CGPath];

  [v2 setPath:v14];
}

uint64_t sub_10031E5E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v4 + v10) = sub_100555C98();
  v11 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelStack;
  sub_1000059F8(0, &qword_1008E6F30);
  *(v4 + v11) = sub_10065AF60();
  v12 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelRightLayoutGuide;
  *(v5 + v12) = [objc_allocWithZone(UILayoutGuide) init];
  v13 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title365;
  *(v5 + v13) = sub_100555C98();
  v14 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title90;
  *(v5 + v14) = sub_100555C98();
  v15 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter365;
  type metadata accessor for TrendDetailVO2MaxMeter();
  *(v5 + v15) = sub_10065AF60();
  v16 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter90;
  *(v5 + v16) = sub_10065AF60();
  v17 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365;
  type metadata accessor for TrendDetailVO2MaxPill();
  *(v5 + v17) = sub_10065AF60();
  v18 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90;
  v134 = v5;
  *(v5 + v18) = sub_10065AF60();
  v151 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for TrendDetailVO2MaxLabelView();
  v141 = objc_opt_self();
  v19 = 0;
  v20 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  do
  {
    v21 = *(&off_1008450F0 + v19 + 37);
    v22 = sub_10065AF60();
    v23 = *&v22[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label];
    v24 = [v141 v20[290]];
    v25 = String._bridgeToObjectiveC()();

    v26 = [v24 localizedStringForKey:v25 value:0 table:0];

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    [v23 setText:v26];
    v22[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_bucket] = v21;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v19;
    v20 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  }

  while (v19 != -6);
  v27 = v151;
  *(v134 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labels) = v151;
  *(v134 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90CenterYConstraint) = 0;
  *(v134 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365CenterYConstraint) = 0;
  *(v134 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_normalizedValue90) = 0;
  *(v134 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_normalizedValue365) = 0;
  if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *(v27 + 16);
  }

  if (v28)
  {
    v29 = 0;
    v139 = (v27 & 0xC000000000000001);
    v30 = &_swiftEmptyDictionarySingleton;
    v137 = v27;
    while (1)
    {
      if (v139)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_53;
        }

        v34 = *(v27 + 8 * v29 + 32);
      }

      v35 = v34;
      v36 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v27 = v28;
      v37 = *(v34 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_bucket);

      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = v30;
      v41 = sub_1004C566C(v37);
      v42 = v30[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_54;
      }

      v45 = v40;
      if (v30[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v151;
          if (v40)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_10049427C();
          v48 = v151;
          if (v45)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_10048BB18(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_1004C566C(v37);
        if ((v45 & 1) != (v47 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v41 = v46;
        v48 = v151;
        if (v45)
        {
LABEL_10:
          v31 = v48[7];
          v32 = *(v31 + 8 * v41);
          *(v31 + 8 * v41) = v38;

          goto LABEL_11;
        }
      }

      v48[(v41 >> 6) + 8] |= 1 << v41;
      *(v48[6] + v41) = v37;
      *(v48[7] + 8 * v41) = v38;

      v49 = v48[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_57;
      }

      v48[2] = v51;
LABEL_11:
      ++v29;
      v30 = v48;
      v28 = v27;
      v33 = v36 == v27;
      v27 = v137;
      if (v33)
      {
        goto LABEL_29;
      }
    }
  }

  v48 = &_swiftEmptyDictionarySingleton;
LABEL_29:

  *(v134 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelsByBucket) = v48;
  v52 = type metadata accessor for TrendDetailVO2MaxChartView();
  v150.receiver = v134;
  v150.super_class = v52;
  v53 = objc_msgSendSuper2(&v150, "initWithFrame:", a1, a2, a3, a4);
  v54 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_titleLabel;
  v55 = *&v53[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_titleLabel];
  v56 = objc_opt_self();
  v140 = v53;
  v57 = v55;
  v58 = [v56 labelColor];
  [v57 setTextColor:v58];

  v59 = *&v53[v54];
  v60 = objc_opt_self();
  v61 = v59;
  v135 = v60;
  v62 = [v60 preferredFontForTextStyle:UIFontTextStyleCallout];
  [v61 setFont:v62];

  [*&v53[v54] setNumberOfLines:0];
  [v140 addSubview:*&v53[v54]];
  v63 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter365;
  [v140 addSubview:*&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter365]];
  v64 = *&v140[v63];
  sub_1000059F8(0, &qword_1008E7FC0);
  v65 = v64;
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v67 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
  v68 = type metadata accessor for GradientColors();
  v69 = objc_allocWithZone(v68);
  *&v69[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v69[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v67;
  v149.receiver = v69;
  v149.super_class = v68;
  v70 = objc_msgSendSuper2(&v149, "init");
  v71 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v72 = type metadata accessor for MetricColors();
  v73 = objc_allocWithZone(v72);
  *&v73[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v70;
  *&v73[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v71;
  v148.receiver = v73;
  v148.super_class = v72;
  v74 = objc_msgSendSuper2(&v148, "init");
  sub_10031E244(v74);

  v75 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter90;
  [v140 addSubview:*&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter90]];
  v76 = *&v140[v75];
  LODWORD(a3) = 1054925025;
  LODWORD(a2) = 1046799589;
  v77 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.43922, 0.22353, 1.0).super.isa;
  v78 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.61961, 0.12549, 1.0).super.isa;
  v79 = objc_allocWithZone(v68);
  *&v79[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v77;
  *&v79[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v78;
  v147.receiver = v79;
  v147.super_class = v68;
  v136 = v68;
  v80 = objc_msgSendSuper2(&v147, "init");
  v81 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.43922, 0.22353, 1.0).super.isa;
  v82 = objc_allocWithZone(v72);
  *&v82[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v80;
  *&v82[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v81;
  v146.receiver = v82;
  v146.super_class = v72;
  v134 = v72;
  v83 = objc_msgSendSuper2(&v146, "init");
  sub_10031E244(v83);

  v84 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelStack;
  [*&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelStack] setAxis:1];
  [*&v140[v84] setAlignment:0];
  [*&v140[v84] setSpacing:0.0];
  [*&v140[v84] setDistribution:0];
  v138 = v84;
  [v140 addSubview:*&v140[v84]];
  v85 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labels;
  v86 = *&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labels];
  if (v86 >> 62)
  {
    v87 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = &selRef_setNavigationBarHidden_animated_;
  v89 = v141;
  v90 = &selRef_initWithFitnessAppContext_activitySharingClient_;

  if (v87)
  {
    v91 = 0;
    v27 = v86 & 0xC000000000000001;
    a4 = 19.66667;
    do
    {
      if (v27)
      {
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v88 = v140;
        v90 = (v91 + 1);
        if (__OFADD__(v91, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v88 = v140;
        if (v91 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v89 = *(v86 + 8 * v91 + 32);
        v90 = (v91 + 1);
        if (__OFADD__(v91, 1))
        {
          goto LABEL_55;
        }
      }

      v96 = *(v88 + v85);
      if (v96 >> 62)
      {
        v99 = _CocoaArrayWrapper.endIndex.getter();
        v98 = v99 - 1;
        if (__OFSUB__(v99, 1))
        {
LABEL_46:
          __break(1u);
          break;
        }
      }

      else
      {
        v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v98 = v97 - 1;
        if (__OFSUB__(v97, 1))
        {
          goto LABEL_46;
        }
      }

      if (v91 == v98)
      {
        [*&v89[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_separator] setHidden:1];
      }

      v92 = *(v88 + v138);
      v93 = v89;
      [v92 addArrangedSubview:v93];
      v94 = [v93 heightAnchor];

      v95 = [v94 constraintGreaterThanOrEqualToConstant:19.66667];
      [v95 setActive:1];

      ++v91;
      v33 = v90 == v87;
      v88 = &selRef_setNavigationBarHidden_animated_;
      v89 = v141;
      v90 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    }

    while (!v33);
  }

  v100 = v140;
  [v140 addLayoutGuide:*&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelRightLayoutGuide]];
  [v100 addSubview:*&v100[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90]];
  [v100 addSubview:*&v100[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365]];
  v101 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title365;
  v102 = *&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title365];
  v103 = [v89 v90[290]];
  v104 = String._bridgeToObjectiveC()();
  v105 = [v103 localizedStringForKey:v104 value:0 table:0];

  if (!v105)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = String._bridgeToObjectiveC()();
  }

  [v102 v88[168]];
  v106 = *&v140[v101];
  v107 = [v135 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
  [v106 setFont:v107];

  v108 = *&v140[v101];
  v109 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v110 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
  v111 = objc_allocWithZone(v136);
  *&v111[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v109;
  *&v111[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v110;
  v145.receiver = v111;
  v145.super_class = v136;
  v112 = objc_msgSendSuper2(&v145, "init");
  v113 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v114 = objc_allocWithZone(v134);
  *&v114[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v112;
  *&v114[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v113;
  v144.receiver = v114;
  v144.super_class = v134;
  v115 = objc_msgSendSuper2(&v144, "init");
  v116 = *&v115[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  [v108 setTextColor:v116];
  [v140 addSubview:*&v140[v101]];
  v117 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title90;
  v118 = *&v140[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title90];
  v119 = [v141 mainBundle];
  v120 = String._bridgeToObjectiveC()();
  v121 = [v119 localizedStringForKey:v120 value:0 table:0];

  if (!v121)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = String._bridgeToObjectiveC()();
  }

  [v118 setText:v121];
  v122 = *&v140[v117];
  v123 = [v135 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
  [v122 setFont:v123];

  v124 = *&v140[v117];
  v125 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.43922, 0.22353, 1.0).super.isa;
  v126 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.61961, 0.12549, 1.0).super.isa;
  v127 = objc_allocWithZone(v136);
  *&v127[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v125;
  *&v127[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v126;
  v143.receiver = v127;
  v143.super_class = v136;
  v128 = objc_msgSendSuper2(&v143, "init");
  v129 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.43922, 0.22353, 1.0).super.isa;
  v130 = objc_allocWithZone(v134);
  *&v130[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v128;
  *&v130[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v129;
  v142.receiver = v130;
  v142.super_class = v134;
  v131 = objc_msgSendSuper2(&v142, "init");
  v132 = *&v131[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  [v124 setTextColor:v132];
  [v140 addSubview:*&v140[v117]];
  sub_10031F838();

  return v140;
}

void sub_10031F838()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_titleLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v1 leadingAnchor];
  v102 = [v3 constraintEqualToAnchor:v4 constant:16.0];

  v5 = [v2 trailingAnchor];
  v6 = [v1 trailingAnchor];
  v100 = [v5 constraintEqualToAnchor:v6 constant:-16.0];

  v7 = [v2 topAnchor];
  v8 = [v1 topAnchor];
  v98 = [v7 constraintEqualToAnchor:v8 constant:12.0];

  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title365];
  v10 = [v9 topAnchor];
  v11 = [v2 bottomAnchor];
  v96 = [v10 constraintEqualToAnchor:v11 constant:1.0];

  v12 = [v9 centerXAnchor];
  v113 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365];
  v13 = [v113 centerXAnchor];
  v94 = [v12 constraintEqualToAnchor:v13];

  v14 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title90];
  v15 = [v14 centerYAnchor];
  v16 = [v9 centerYAnchor];
  v136 = [v15 constraintEqualToAnchor:v16];

  v17 = [v14 centerXAnchor];
  v18 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90];
  v19 = [v18 centerXAnchor];
  v93 = [v17 constraintEqualToAnchor:v19];

  v20 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelStack];
  v21 = [v20 leadingAnchor];
  v22 = [v1 leadingAnchor];
  v134 = [v21 constraintEqualToAnchor:v22];

  v23 = [v20 trailingAnchor];
  v24 = [v1 trailingAnchor];
  v130 = [v23 constraintEqualToAnchor:v24];

  v25 = [v20 topAnchor];
  v26 = [v9 bottomAnchor];
  v132 = [v25 constraintEqualToAnchor:v26 constant:5.0];

  v27 = [v20 bottomAnchor];
  v28 = [v1 bottomAnchor];
  v128 = [v27 constraintEqualToAnchor:v28];

  v29 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelRightLayoutGuide];
  v30 = [v29 leftAnchor];
  v31 = [v1 leftAnchor];
  v126 = [v30 constraintEqualToAnchor:v31 constant:15.0];

  v32 = [v29 topAnchor];
  v33 = [v20 topAnchor];
  v124 = [v32 constraintEqualToAnchor:v33];

  v34 = [v29 bottomAnchor];
  v111 = v20;
  v35 = [v20 bottomAnchor];
  v122 = [v34 constraintEqualToAnchor:v35 constant:-12.0];

  v36 = [v18 centerYAnchor];
  v37 = [v20 bottomAnchor];
  v108 = [v36 constraintEqualToAnchor:v37 constant:0.0];

  v38 = [v113 leftAnchor];
  v138 = v29;
  v39 = [v29 rightAnchor];
  v120 = [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:7.0];

  LODWORD(v40) = 1144750080;
  [v120 setPriority:v40];
  v41 = [v113 rightAnchor];
  v42 = [v18 leftAnchor];
  v118 = [v41 constraintLessThanOrEqualToAnchor:v42 constant:-15.0];

  LODWORD(v43) = 1148846080;
  [v118 setPriority:v43];
  v44 = [v113 rightAnchor];
  v45 = [v18 leftAnchor];
  v116 = [v44 constraintEqualToAnchor:v45 constant:-29.0];

  LODWORD(v46) = 1144750080;
  [v116 setPriority:v46];
  v47 = [v113 centerYAnchor];
  v48 = v20;
  v49 = [v20 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:0.0];

  v51 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90CenterYConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90CenterYConstraint] = v108;
  v91 = v108;

  v52 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365CenterYConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365CenterYConstraint] = v50;
  v89 = v50;

  v53 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter365];
  v54 = [v53 centerXAnchor];
  v55 = [v113 centerXAnchor];
  v114 = [v54 constraintEqualToAnchor:v55];

  v56 = [v53 topAnchor];
  v57 = [v48 topAnchor];
  v109 = [v56 constraintEqualToAnchor:v57 constant:-1.0];

  v58 = [v53 bottomAnchor];
  v59 = [v48 bottomAnchor];
  v107 = [v58 constraintEqualToAnchor:v59];

  v60 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter90];
  v61 = [v60 centerXAnchor];
  v62 = [v18 centerXAnchor];
  v106 = [v61 constraintEqualToAnchor:v62];

  v63 = [v60 topAnchor];
  v64 = [v53 topAnchor];
  v104 = [v63 constraintEqualToAnchor:v64];

  v65 = [v60 bottomAnchor];
  v66 = [v53 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  v88 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1006E9250;
  *(v68 + 32) = v102;
  *(v68 + 40) = v100;
  *(v68 + 48) = v98;
  *(v68 + 56) = v96;
  *(v68 + 64) = v94;
  *(v68 + 72) = v93;
  *(v68 + 80) = v136;
  *(v68 + 88) = v134;
  *(v68 + 96) = v130;
  *(v68 + 104) = v132;
  *(v68 + 112) = v128;
  *(v68 + 120) = v126;
  *(v68 + 128) = v124;
  *(v68 + 136) = v122;
  *(v68 + 144) = v91;
  *(v68 + 152) = v120;
  *(v68 + 160) = v118;
  *(v68 + 168) = v116;
  *(v68 + 176) = v89;
  *(v68 + 184) = v114;
  *(v68 + 192) = v109;
  *(v68 + 200) = v107;
  *(v68 + 208) = v106;
  *(v68 + 216) = v104;
  *(v68 + 224) = v67;
  sub_1000059F8(0, &qword_1008DC980);
  v92 = v91;
  v90 = v89;
  v69 = v102;
  v70 = v100;
  v71 = v98;
  v103 = v96;
  v72 = v94;
  v73 = v93;
  v137 = v136;
  v135 = v134;
  v131 = v130;
  v133 = v132;
  v129 = v128;
  v127 = v126;
  v125 = v124;
  v95 = v122;
  v97 = v120;
  v99 = v118;
  v101 = v116;
  v115 = v114;
  v117 = v109;
  v119 = v107;
  v121 = v106;
  v123 = v104;
  v110 = v67;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v88 activateConstraints:isa];

  v75 = [v111 arrangedSubviews];
  sub_1000059F8(0, &qword_1008E7580);
  v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v76 >> 62)
  {
    v77 = _CocoaArrayWrapper.endIndex.getter();
    if (v77)
    {
      goto LABEL_3;
    }

LABEL_15:

LABEL_16:

    return;
  }

  v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v77)
  {
    goto LABEL_15;
  }

LABEL_3:
  v112 = v71;
  v78 = v77 - 1;
  if (v77 >= 1)
  {
    v105 = v72;
    v79 = 0;
    if ((v76 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v76 + 8 * v79 + 32))
    {
      v81 = i;
      type metadata accessor for TrendDetailVO2MaxLabelView();
      v82 = swift_dynamicCastClass();
      if (v82)
      {
        v83 = v82;
        v84 = v81;
        v85 = [v138 rightAnchor];
        v86 = [*(v83 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label) rightAnchor];
        v87 = [v85 constraintGreaterThanOrEqualToAnchor:v86];

        [v87 setActive:1];
        if (v78 == v79)
        {
          goto LABEL_13;
        }
      }

      else
      {

        if (v78 == v79)
        {
LABEL_13:

          v71 = v112;
          v72 = v105;
          goto LABEL_16;
        }
      }

      ++v79;
      if ((v76 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }
  }

  __break(1u);
}

uint64_t sub_100320730(void *a1)
{
  v2 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  v25 = v2;
  *(v1 + v2) = sub_100555C98();
  v3 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelStack;
  sub_1000059F8(0, &qword_1008E6F30);
  v24 = v3;
  *(v1 + v3) = sub_10065AF60();
  v22 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelRightLayoutGuide;
  *(v1 + v22) = [objc_allocWithZone(UILayoutGuide) init];
  v21 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title365;
  *(v1 + v21) = sub_100555C98();
  v20 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_title90;
  *(v1 + v20) = sub_100555C98();
  v4 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter365;
  type metadata accessor for TrendDetailVO2MaxMeter();
  v19 = v4;
  *(v1 + v4) = sub_10065AF60();
  v18 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_meter90;
  *(v1 + v18) = sub_10065AF60();
  v5 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365;
  type metadata accessor for TrendDetailVO2MaxPill();
  v17 = v5;
  *(v1 + v5) = sub_10065AF60();
  v26 = v1;
  v16 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90;
  *(v1 + v16) = sub_10065AF60();
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for TrendDetailVO2MaxLabelView();
  v27 = objc_opt_self();
  for (i = 0; i != -6; --i)
  {
    v7 = *(&off_100845118 + i + 37);
    v8 = sub_10065AF60();
    v9 = *&v8[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_label];
    v10 = [v27 mainBundle];
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 localizedStringForKey:v11 value:0 table:0];

    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [v9 setText:v12];
    v8[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxLabelView_bucket] = v7;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  *(v26 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labels) = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90CenterYConstraint;
  *(v26 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90CenterYConstraint) = 0;
  v14 = OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365CenterYConstraint;
  *(v26 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365CenterYConstraint) = 0;
  *(v26 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_normalizedValue90) = 0;
  *(v26 + OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_normalizedValue365) = 0;

  type metadata accessor for TrendDetailVO2MaxChartView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100320BA4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TrendDetailVO2MaxChartView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_labelStack] frame];
  Height = CGRectGetHeight(v6);
  v2 = Height;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill90CenterYConstraint];
  if (v3)
  {
    [v3 setConstant:-(Height * *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_normalizedValue90])];
  }

  result = *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_pill365CenterYConstraint];
  if (result)
  {
    return [result setConstant:-(v2 * *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailVO2MaxChartView_normalizedValue365])];
  }

  return result;
}

id sub_100320CBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100320E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_catalogTipView;
  v8 = [objc_allocWithZone(type metadata accessor for CatalogTipPlainView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = sub_100046170();
  [v8 setBackgroundColor:v9];

  v10 = sub_10013A904();
  v11 = [v8 layer];
  [v11 setCornerRadius:v10];

  [v8 setClipsToBounds:1];
  v12 = UIView.forAutoLayout()();

  *&v4[v7] = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_tipSectionItem;
  v14 = type metadata accessor for CatalogTipSectionItem();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for CatalogTipActivityTile();
  v16 = objc_msgSendSuper2(&v19, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  sub_100321168();

  return v17;
}

void sub_100321168()
{
  swift_getObjectType();
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_catalogTipView];
  [v1 addSubview:v2];

  v23 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D5300;
  v4 = [v2 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:sub_1004313D0()];
  *(v3 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  sub_1004313D0();
  v12 = [v8 constraintEqualToAnchor:v10 constant:v11];

  *(v3 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  sub_1004313D0();
  v17 = [v13 constraintEqualToAnchor:v15 constant:-v16];

  *(v3 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  sub_1004313D0();
  v22 = [v18 constraintEqualToAnchor:v20 constant:-v21];

  *(v3 + 56) = v22;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

id sub_100321494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogTipActivityTile();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CatalogTipActivityTile()
{
  result = qword_1008E8C58;
  if (!qword_1008E8C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032156C()
{
  sub_10032160C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10032160C()
{
  if (!qword_1008E8C68)
  {
    type metadata accessor for CatalogTipSectionItem();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E8C68);
    }
  }
}

uint64_t sub_100321664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[2] = a2;
  v24[3] = a3;
  v24[1] = a1;
  v25 = a4;
  v5 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for MetricClickElement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E4EC8);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for CatalogTipSectionItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_tipSectionItem;
  swift_beginAccess();
  sub_1003219E8(v4 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100321A58(v12);
    v18 = 1;
    v19 = v25;
  }

  else
  {
    sub_1002FC1E0(v12, v16);
    v24[0] = *&v16[*(v13 + 28)];

    v20 = ShelfLockupAttributedTagStrings.title.getter();
    v21 = [v20 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 104))(v9, enum case for MetricClickElement.button(_:), v6);
    static MetricConstants.itemIdentifierType.getter();
    sub_1002FC244(_swiftEmptyArrayStorage);
    ScalarDictionary.init()();
    v19 = v25;
    ImpressionMetrics.init(parentId:elementId:name:clickElement:index:idType:additionalFields:custom:)();
    sub_100321AC0(v16);
    v18 = 0;
  }

  v22 = type metadata accessor for ImpressionMetrics();
  return (*(*(v22 - 8) + 56))(v19, v18, 1, v22);
}

uint64_t sub_1003219E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100321A58(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E4EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100321AC0(uint64_t a1)
{
  v2 = type metadata accessor for CatalogTipSectionItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100321B1C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_catalogTipView;
  v3 = [objc_allocWithZone(type metadata accessor for CatalogTipPlainView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = sub_100046170();
  [v3 setBackgroundColor:v4];

  v5 = sub_10013A904();
  v6 = [v3 layer];
  [v6 setCornerRadius:v5];

  [v3 setClipsToBounds:1];
  v7 = UIView.forAutoLayout()();

  *(v1 + v2) = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_tipSectionItem;
  v9 = type metadata accessor for CatalogTipSectionItem();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100321C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 48))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100321CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_100321D2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_10001D510(v8, v9, v10);
      v11 = a1(v14);
      sub_10001D4F8(v8, v9, v10);
      if (v3)
      {
        break;
      }

      v7 += 24;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100321E00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 49);
    do
    {
      v8 = *(v7 - 17);
      v9 = *(v7 - 9);
      v10 = *v7;
      v11 = *(v7 - 1);
      v15[0] = v8;
      v15[1] = v9;
      v16 = v11;
      v17 = v10;
      sub_10001D510(v8, v9, v11);
      v12 = a1(v15);
      sub_10001D4F8(v8, v9, v11);
      if (v3)
      {
        break;
      }

      v13 = v6-- == 0;
      v7 += 24;
    }

    while (((v12 | v13) & 1) == 0);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

uint64_t sub_100321EE0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100321F8C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_10032203C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100322164(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1003222A0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v21[0] = *v7;
      v21[1] = v9;
      v11 = *v7;
      v10 = v7[1];
      v22[0] = v7[2];
      *(v22 + 9) = *(v7 + 41);
      v18 = v11;
      v19 = v10;
      v20[0] = v7[2];
      *(v20 + 9) = *(v7 + 41);
      sub_1001AB434(v21, &v15);
      v12 = a1(&v18);
      if (v3)
      {
        break;
      }

      v4 = v12;
      v15 = v18;
      v16 = v19;
      v17[0] = v20[0];
      *(v17 + 9) = *(v20 + 9);
      sub_100324274(&v15);
      v13 = v8-- == 0;
      v7 += 4;
      if ((v4 | v13))
      {
        return v4 & 1;
      }
    }

    v15 = v18;
    v16 = v19;
    v17[0] = v20[0];
    *(v17 + 9) = *(v20 + 9);
    sub_100324274(&v15);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1003223B4()
{
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    if (qword_1008DA5A0 != -1)
    {
      swift_once();
    }

    v4 = qword_100925168;
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 mainQueue];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_1003245FC;
    v23 = v8;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100026F8C;
    v21 = &unk_100852DB8;
    v9 = _Block_copy(&v18);

    v10 = [v3 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
    _Block_release(v9);

    v11 = [v2 defaultCenter];
    v12 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v13 = [v5 mainQueue];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_100324604;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100026F8C;
    v21 = &unk_100852DE0;
    v15 = _Block_copy(&v18);

    v16 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
    _Block_release(v15);

    sub_100140278(&qword_1008E7590);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006D1F70;
    *(v17 + 56) = swift_getObjectType();
    *(v17 + 32) = v10;
    *(v17 + 88) = swift_getObjectType();
    *(v17 + 64) = v16;
    *(v0 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_observers) = v17;
  }

  return result;
}

void sub_1003226D0()
{
  v0 = Notification.userInfo.getter();
  if (v0)
  {
    v1 = v0;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_1004C5BC0(v11), (v3 & 1) != 0))
    {
      sub_10000B1B4(*(v1 + 56) + 32 * v2, v12);
      sub_100282EF8(v11);

      if (swift_dynamicCast())
      {
        static os_log_type_t.default.getter();
        v4 = HKLogActivity;
        os_log(_:dso:log:_:_:)();

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = *(Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementLocalizationProvider);

          [v7 setWheelchairUser:16];
        }

        swift_beginAccess();
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = *(v8 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_onModelDidUpdate);
          v10 = v8;
          sub_10000B210(v9);

          if (v9)
          {
            v9();
            sub_1000245E0(v9);
          }
        }
      }
    }

    else
    {

      sub_100282EF8(v11);
    }
  }
}

void sub_1003228B8()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_onModelDidUpdate);
    v3 = Strong;
    sub_10000B210(v2);

    if (v2)
    {
      v2();
      sub_1000245E0(v2);
    }
  }
}

void sub_100322990()
{
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v61 - 1);
  __chkstk_darwin(v61);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000066AC((v0 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider), *(v0 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider + 24));
  v7 = dispatch thunk of AAUIAwardsDataProviding.topThreeAchievements()();
  if (v7 >> 62)
  {
    v49 = v7;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v49;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v5;
  v60 = v4;
  v57 = v3;
  if (v8 < 3)
  {

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (!*(v0 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards))
    {
      goto LABEL_19;
    }

LABEL_25:
    sub_1000059F8(0, &qword_1008E3FD0);
    v56 = static OS_dispatch_queue.main.getter();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v41[2] = v11;
    v41[3] = v10;
    v41[4] = v9;
    v41[5] = v40;
    aBlock[4] = sub_1003245F0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100852D90;
    v42 = _Block_copy(aBlock);
    sub_100282C74(v11, v10, v9);

    v43 = v9;
    v44 = v10;
    v45 = v58;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100045D88(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    v46 = v57;
    v47 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v48 = v56;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    sub_1003245A0(v11, v44, v43);
    (*(v1 + 8))(v46, v47);
    (*(v59 + 8))(v45, v60);
    return;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      if (v13 != 1)
      {
        if (v13 >= 3)
        {
          v14 = *(v7 + 40);
          v15 = *(v7 + 48);
          v11 = *(v7 + 32);
          v10 = v14;
          v16 = v15;
          goto LABEL_11;
        }

LABEL_30:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v9 = v16;

  v17 = v0 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards;
  v18 = *(v0 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards);
  if (v18)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    v55 = v1;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_1000059F8(0, &qword_1008E8750);
    sub_100282C74(v18, v19, v20);
    sub_100282C74(v11, v10, v9);
    v21 = v18;
    v56 = v19;
    v22 = v20;
    v23 = v11;
    v24 = v10;
    v25 = v9;
    if (static NSObject.== infix(_:_:)())
    {
      v52 = v23;
      v26 = v56;
      v56 = v22;
      v50 = v24;
      v27 = v24;
      v28 = v25;
      v51 = v26;
      if (static NSObject.== infix(_:_:)())
      {
        v29 = v56;
        v30 = v28;
        v31 = static NSObject.== infix(_:_:)();

        v32 = v51;
        v33 = v52;

        v12 = v11;
        v1 = v55;
        if ((v31 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      v53 = v27;
      v54 = v25;

      v35 = v51;
      v36 = v52;
      v21 = v56;
      v23 = v56;
      v37 = v28;
      v24 = v50;
    }

    else
    {
      v53 = v22;
      v54 = v25;
      v35 = v21;
      v36 = v56;
      v37 = v24;
    }

    v38 = v53;
    v39 = v54;

    v1 = v55;
    goto LABEL_25;
  }

  if (v11)
  {
    goto LABEL_25;
  }

  v12 = 0;
LABEL_19:
  static os_log_type_t.default.getter();
  v61 = HKLogActivity;
  os_log(_:dso:log:_:_:)();
  sub_1003245A0(v12, v10, v9);
  v34 = v61;
}

void sub_100323034(void *a1, void *a2, void *a3)
{
  static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  v8 = v6;
  if (a1)
  {
    sub_100140278(&qword_1008E8D98);
    _print_unlocked<A, B>(_:_:)();
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10000A788();
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = (Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards);
    v13 = *(Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards);
    v14 = *(Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards + 8);
    v15 = *(Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards + 16);
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
    v16 = Strong;
    sub_100282C74(a1, a2, a3);
    sub_1003245A0(v13, v14, v15);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_onModelDidUpdate);
    v19 = v17;
    sub_10000B210(v18);

    if (v18)
    {
      v18();
      sub_1000245E0(v18);
    }
  }
}

void sub_10032323C()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  (*(v3 + 8))(v5, v2);
  v14 = [*(*(v1 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
  if (v14)
  {
    v15 = v14;
    v16 = v1 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityMoveMode;
    v17 = *(v1 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityMoveMode);
    v18 = *(v1 + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityMoveMode + 8);
    v19 = [v14 activityMoveMode];
    if ((v18 & 1) == 0 && v17 == v19)
    {
      v13(v12, v6);

      return;
    }

    *v16 = [v15 activityMoveMode];
    *(v16 + 8) = 0;
    sub_100322990();
  }

  v13(v12, v6);
}

id sub_100323498()
{
  v1 = v0;
  sub_100007C5C(&v0[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider], v10);
  sub_1000066AC(v10, v11);
  sub_100045D88(&unk_1008E8DA0, v2, type metadata accessor for AwardsActivityTileDataModel);
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();
  sub_100005A40(v10);
  [*(*(*&v1[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) removeObject:v1];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_observers];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v3 + 32;

    do
    {
      sub_10000B1B4(v6, v10);
      v7 = [v5 defaultCenter];
      sub_1000066AC(v10, v11);
      [v7 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v10);
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for AwardsActivityTileDataModel();
  return objc_msgSendSuper2(&v9, "dealloc");
}

void sub_10032376C(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v34 = a4;
  swift_beginAccess();
  v33 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider, v39);

    sub_1000066AC(v39, v39[3]);
    v9 = dispatch thunk of AAUIAwardsDataProviding.topThreeAchievements()();
    sub_100005A40(v39);
    if (!(a2 >> 62))
    {
LABEL_3:
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
  v11 = _swiftEmptyArrayStorage;
  v38 = v9;
  if (v10)
  {
    v39[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v12 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(a2 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 template];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v12);
    v11 = v39[0];
    v9 = v38;
  }

  if (a3 >> 62)
  {
LABEL_44:
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v39[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(a3 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        v21 = [v19 template];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v16 != v18);
      v17 = v39[0];
      v9 = v38;
      goto LABEL_22;
    }

LABEL_47:
    __break(1u);
    return;
  }

LABEL_22:
  v36 = v17;
  v37 = v11;
  v35 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v11 = (v9 & 0xC000000000000001);
  while (1)
  {
    if (a3 == v22)
    {

      return;
    }

    if (v11)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v35 + 16))
      {
        goto LABEL_43;
      }

      v23 = *(v9 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v25 = [v23 template];
    v39[0] = v25;
    __chkstk_darwin(v25);
    v32 = v39;
    v26 = sub_10032203C(sub_1003241F0, v31, v37);

    if (v26)
    {
      break;
    }

    v27 = [v24 template];
    v39[0] = v27;
    __chkstk_darwin(v27);
    v32 = v39;
    v28 = sub_10032203C(sub_100324664, v31, v36);

    ++v22;
    v9 = v38;
    if (v28)
    {
      goto LABEL_38;
    }
  }

LABEL_38:

  if (v34)
  {
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      sub_100322990();
    }
  }
}

void sub_100323C60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100322990();
  }
}

id sub_100323D38(void *a1, void *a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityMoveMode];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v9 = &v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_onModelDidUpdate];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_observers] = _swiftEmptyArrayStorage;
  sub_100007C5C(a1, &v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementsDataProvider]);
  *&v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_achievementLocalizationProvider] = a2;
  *&v3[OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_activityDataProvider] = a3;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for AwardsActivityTileDataModel();
  v10 = a2;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v16, "init");
  sub_1000066AC(a1, a1[3]);
  sub_100045D88(&unk_1008E8DA0, v13, type metadata accessor for AwardsActivityTileDataModel);
  v14 = v12;
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();
  [*(*&v11[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener] + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:{v14, v16.receiver, v16.super_class}];
  sub_1003223B4();

  sub_100005A40(a1);
  return v14;
}

uint64_t sub_100323ED0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  aBlock[4] = sub_1003241E0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100852CF0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045D88(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1003242C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045D88(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

void sub_1003245A0(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_100324680()
{
  v1 = sub_100140278(&qword_1008E8ED0);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v4 = type metadata accessor for ContentAvailability();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_contentAvailablity;
  swift_beginAccess();
  sub_10001B104(v0 + v11, v3, &qword_1008E8ED0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000EA04(v3, &qword_1008E8ED0);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 104))(v7, enum case for ContentAvailability.available(_:), v4);
  sub_10032B67C(&qword_1008F54E0, &type metadata accessor for ContentAvailability);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v16[3] == v16[1] && v16[4] == v16[2])
  {
    v13 = *(v5 + 8);
    v13(v7, v4);
    v13(v10, v4);
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v10, v4);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100324980()
{
  v1 = sub_100140278(&qword_1008E8EC8);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for NoticePrivacyPreference();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_userDefaults);
  v9 = String._bridgeToObjectiveC()();
  LOBYTE(v8) = [v8 BOOLForKey:v9];

  if (v8)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_noticePrivacyPreference;
  swift_beginAccess();
  sub_10001B104(v0 + v10, v3, &qword_1008E8EC8);
  v11 = 1;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000EA04(v3, &qword_1008E8EC8);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v16 = NoticePrivacyPreference.state.getter();
  v17 = v12 & 1;
  v15[7] = 1;
  sub_1001CE93C();
  sub_1001CE990();
  v13 = static PortableEnum<>.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return v11;
}

id sub_100324BD4(char *a1, uint64_t a2, uint64_t a3)
{
  sub_100007C5C(&a1[OBJC_IVAR___CHFitnessAppContext_contentAvailabilityClient], v15);
  sub_100007C5C(&a1[OBJC_IVAR___CHFitnessAppContext_engagementClient], v14);
  sub_100007C5C(&a1[OBJC_IVAR___CHFitnessAppContext_privacyPreferenceClient], v13);
  v7 = *&a1[OBJC_IVAR___CHFitnessAppContext_eventHub];
  v6 = *&a1[OBJC_IVAR___CHFitnessAppContext_eventHub + 8];
  v8 = objc_opt_self();
  swift_unknownObjectRetain();
  v9 = [v8 standardUserDefaults];
  v10 = objc_allocWithZone(type metadata accessor for SeymourDiscoverySheetCoordinator());
  v11 = sub_10032B6C4(a2, v15, v14, v13, a3, v7, v6, v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

void sub_100324DBC()
{
  v1 = v0;
  v56 = sub_100140278(&unk_1008F2010);
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v56);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_isActive;
  if ((v1[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_isActive] & 1) == 0)
  {
    static Log.default.getter();
    v18._object = 0x8000000100755B50;
    v52 = 0x8000000100755B50;
    v19._countAndFlagsBits = 0x6574617669746361;
    v18._countAndFlagsBits = 0xD000000000000031;
    v19._object = 0xEA00000000002928;
    Logger.trace(file:function:)(v18, v19);
    (*(v14 + 8))(v16, v13);
    v1[v17] = 1;
    sub_100140278(&qword_1008DFEA8);
    v20 = *(v2 + 72);
    v54 = *(v2 + 80);
    v21 = (v54 + 32) & ~v54;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D6950;
    v51 = v9;
    sub_1003253EC(v22 + v21);
    sub_1003258C8(v22 + v21 + v20);
    v53 = v12;
    sub_100326124(v22 + v21 + 2 * v20);
    sub_100326600(v22 + v21 + 3 * v20);
    v57 = v22;
    sub_1000078CC();
    v23 = static OS_dispatch_queue.main.getter();
    static PromiseConstants.defaultMaxConcurrentOperations.getter();
    sub_100140278(&qword_1008DFEB0);
    sub_10032B468();
    v47 = v6;
    static Promise<>.parallel<A>(queue:maxConcurrent:_:)();

    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10032B4CC;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_10032B4F0;
    *(v26 + 24) = v25;
    v50 = *(v2 + 16);
    v27 = v55;
    v28 = v6;
    v29 = v56;
    v50(v55, v28, v56);
    v30 = v1;
    v31 = (v54 + 16) & ~v54;
    v48 = v31;
    v32 = (v3 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v49 = *(v2 + 32);
    v49(v33 + v31, v27, v29);
    v34 = (v33 + v32);
    *v34 = sub_1001CE8A4;
    v34[1] = v26;
    v35 = v30;
    v36 = v51;
    Promise.init(asyncOperation:)();
    v55 = *(v2 + 8);
    v37 = v47;
    (v55)(v47, v29);
    v38 = swift_allocObject();
    v38[2] = 0xD000000000000031;
    v38[3] = v52;
    v38[4] = 133;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10032B540;
    *(v39 + 24) = v38;
    v50(v37, v36, v29);
    v40 = swift_allocObject();
    v49(v40 + v48, v37, v29);
    v41 = (v40 + v32);
    *v41 = sub_10032B560;
    v41[1] = v39;
    v42 = v53;
    Promise.init(asyncOperation:)();
    v43 = v55;
    (v55)(v36, v29);
    v44 = Promise.operation.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    v44(sub_100173F20, v45);

    v43(v42, v29);
  }
}

uint64_t sub_1003253EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100140278(&qword_1008DFD10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v37 = sub_100140278(&unk_1008F2010);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v33 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v17._countAndFlagsBits = 0xD000000000000031;
  v17._object = 0x8000000100755B50;
  v18._object = 0x8000000100755C50;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v17, v18);
  (*(v14 + 8))(v16, v13);
  sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_contentAvailabilityClient), *(v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_contentAvailabilityClient + 24));
  dispatch thunk of ContentAvailabilityClientProtocol.queryContentAvailability()();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10032B3F0;
  *(v20 + 24) = v19;
  v21 = v34;
  (*(v4 + 16))(v34, v8, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v21, v3);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_10032B438;
  v24[1] = v20;
  v25 = v35;
  Promise.init(asyncOperation:)();
  (*(v4 + 8))(v8, v3);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1003258A0;
  *(v26 + 24) = 0;
  v28 = v36;
  v27 = v37;
  (*(v9 + 16))(v36, v25, v37);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v28, v27);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100173EDC;
  v31[1] = v26;
  Promise.init(asyncOperation:)();
  return (*(v9 + 8))(v25, v27);
}

uint64_t sub_1003258C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100140278(&qword_1008DFEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v37 = sub_100140278(&unk_1008F2010);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v33 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v17._countAndFlagsBits = 0xD000000000000031;
  v17._object = 0x8000000100755B50;
  v18._object = 0x8000000100755C30;
  v18._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v17, v18);
  (*(v14 + 8))(v16, v13);
  sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_privacyPreferenceClient), *(v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_privacyPreferenceClient + 24));
  dispatch thunk of PrivacyPreferenceClientProtocol.fetchNoticePrivacyPreference(ignoreCaches:)();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10032B378;
  *(v20 + 24) = v19;
  v21 = v34;
  (*(v4 + 16))(v34, v8, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v21, v3);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_10032B3C0;
  v24[1] = v20;
  v25 = v35;
  Promise.init(asyncOperation:)();
  (*(v4 + 8))(v8, v3);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100325F14;
  *(v26 + 24) = 0;
  v28 = v36;
  v27 = v37;
  (*(v9 + 16))(v36, v25, v37);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v28, v27);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100173EDC;
  v31[1] = v26;
  Promise.init(asyncOperation:)();
  return (*(v9 + 8))(v25, v27);
}

void sub_100325D80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v10 = sub_100140278(a3);
  __chkstk_darwin(v10 - 8);
  v12 = &v18[-v11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = a5(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(v12, a1, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    v17 = *a6;
    swift_beginAccess();
    sub_100060E68(v12, v14 + v17, a3);
    swift_endAccess();
  }
}

uint64_t sub_100325F3C(int8x8_t a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v24 = v14;
    *v13 = vuzp1_s8(a1, v16).u32[0];
    swift_getErrorValue();
    v17 = Error.logOutput.getter();
    v19 = sub_10000AFDC(v17, v18, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, v22, v13, 0xCu);
    sub_100005A40(v15);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100326124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100140278(&qword_1008E8EC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v37 = sub_100140278(&unk_1008F2010);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v33 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v17._countAndFlagsBits = 0xD000000000000031;
  v17._object = 0x8000000100755B50;
  v18._object = 0x8000000100755C10;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v17, v18);
  (*(v14 + 8))(v16, v13);
  sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_engagementClient), *(v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_engagementClient + 24));
  dispatch thunk of EngagementClientProtocol.queryIntroSheet()();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10032B300;
  *(v20 + 24) = v19;
  v21 = v34;
  (*(v4 + 16))(v34, v8, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v21, v3);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_10032B348;
  v24[1] = v20;
  v25 = v35;
  Promise.init(asyncOperation:)();
  (*(v4 + 8))(v8, v3);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1003265D8;
  *(v26 + 24) = 0;
  v28 = v36;
  v27 = v37;
  (*(v9 + 16))(v36, v25, v37);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v28, v27);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100173EDC;
  v31[1] = v26;
  Promise.init(asyncOperation:)();
  return (*(v9 + 8))(v25, v27);
}

uint64_t sub_100326600@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100140278(&qword_1008E8EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v37 = sub_100140278(&unk_1008F2010);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v33 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v17._countAndFlagsBits = 0xD000000000000031;
  v17._object = 0x8000000100755B50;
  v18._object = 0x8000000100755BE0;
  v18._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v17, v18);
  (*(v14 + 8))(v16, v13);
  sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_engagementClient), *(v2 + OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_engagementClient + 24));
  dispatch thunk of EngagementClientProtocol.queryWhatsNewSheet()();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10032B288;
  *(v20 + 24) = v19;
  v21 = v34;
  (*(v4 + 16))(v34, v8, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v21, v3);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_10032B2D0;
  v24[1] = v20;
  v25 = v35;
  Promise.init(asyncOperation:)();
  (*(v4 + 8))(v8, v3);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100326AB4;
  *(v26 + 24) = 0;
  v28 = v36;
  v27 = v37;
  (*(v9 + 16))(v36, v25, v37);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v28, v27);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100173A14;
  v31[1] = v26;
  Promise.init(asyncOperation:)();
  return (*(v9 + 8))(v25, v27);
}

void sub_100326ADC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v4._countAndFlagsBits = 0xD000000000000031;
  v4._object = 0x8000000100755B50;
  v5._object = 0x8000000100755BB0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v4, v5);
  (*(v1 + 8))(v3, v0);
  if (sub_100326C6C())
  {
    v6 = sub_100328628();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    if ((sub_100327560() & 1) == 0)
    {
      return;
    }

    v6 = sub_100328D80();
    if (!v6)
    {
      return;
    }
  }

  v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong presentModelOnSummaryTabWithViewController:v7];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100326C6C()
{
  v1 = type metadata accessor for Date();
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v69 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v68 = &v64 - v4;
  v5 = type metadata accessor for IntroSheet();
  v72 = *(v5 - 8);
  __chkstk_darwin(v5);
  v70 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v73 = &v64 - v8;
  v9 = sub_100140278(&qword_1008E8EB0);
  __chkstk_darwin(v9);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v64 - v18;
  __chkstk_darwin(v19);
  v77 = &v64 - v20;
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  static Log.default.getter();
  v24 = v0;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v66 = v14;
    v28 = v27;
    v29 = swift_slowAlloc();
    v65 = v15;
    v30 = v29;
    v78[0] = v29;
    *v28 = 136315138;
    v31 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_introSheetConfiguration;
    swift_beginAccess();
    sub_10001B104(&v24[v31], v13, &qword_1008E8EB0);
    v32 = Optional.description.getter();
    v34 = v33;
    sub_10000EA04(v13, &qword_1008E8EB0);
    v35 = sub_10000AFDC(v32, v34, v78);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "SeymourDiscoverySheetCoordinator: evaluate should show intro sheet %s", v28, 0xCu);
    sub_100005A40(v30);
    v15 = v65;

    v14 = v66;
  }

  v36 = *(v15 + 8);
  v36(v23, v14);
  if (v24[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_forceShowingIntroSheet] == 1)
  {
    v37 = v77;
    static Log.default.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "SeymourDiscoverySheetCoordinator: forceShowingIntroSheet";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v42 = v24;
  if ([*&v24[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_badgingProvider] hasAmeliaBadge])
  {
    v37 = v76;
    static Log.default.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "SeymourDiscoverySheetCoordinator: showing IntroSheet for Amelia badging";
      goto LABEL_9;
    }

LABEL_10:

    v36(v37, v14);
    return 1;
  }

  if ((sub_100324680() & 1) == 0)
  {
    return 0;
  }

  if (sub_100324980())
  {
    return 0;
  }

  if (v24[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_hasVisitedSeymourTab])
  {
    return 0;
  }

  v44 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastIntroSheetViewDate;
  swift_beginAccess();
  v45 = &v24[v44];
  v46 = v73;
  sub_10001B104(v45, v73, &unk_1008F73A0);
  LODWORD(v44) = (*(v74 + 48))(v46, 1, v75);
  sub_10000EA04(v46, &unk_1008F73A0);
  if (v44 != 1)
  {
    return 0;
  }

  v47 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_introSheetConfiguration;
  swift_beginAccess();
  v48 = &v42[v47];
  v49 = v71;
  sub_10001B104(v48, v71, &qword_1008E8EB0);
  v50 = v72;
  if ((*(v72 + 48))(v49, 1, v5) == 1)
  {
    sub_10000EA04(v49, &qword_1008E8EB0);
    return 0;
  }

  (*(v50 + 32))(v70, v49, v5);
  result = IntroSheet.firstAppLaunchTriggerConditionInDays.getter();
  if ((result * 24) >> 64 != (24 * result) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((24 * result * 60) >> 64 != (1440 * result) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((1440 * result * 60) >> 64 != (86400 * result) >> 63)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v51 = (86400 * result);
  v52 = v68;
  Date.init()();
  v53 = v74;
  v54 = &v42[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_firstAppLaunchDate];
  v55 = v69;
  v56 = v75;
  (*(v74 + 16))(v69, v54, v75);
  Date.timeIntervalSince(_:)();
  v58 = v57;
  v59 = *(v53 + 8);
  v59(v55, v56);
  v59(v52, v56);
  if (v58 <= v51)
  {
    (*(v50 + 8))(v70, v5);
    return 0;
  }

  v60 = v67;
  static Log.default.getter();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "SeymourDiscoverySheetCoordinator: qualified to show intro sheet", v63, 2u);
  }

  v36(v60, v14);
  (*(v50 + 8))(v70, v5);
  return 1;
}

uint64_t sub_100327560()
{
  v128 = type metadata accessor for DateComponents();
  v132 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Calendar();
  v131 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v117 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v116 = &v112 - v6;
  __chkstk_darwin(v7);
  v120 = &v112 - v8;
  __chkstk_darwin(v9);
  v123 = &v112 - v10;
  v124 = type metadata accessor for Date();
  v129 = *(v124 - 8);
  __chkstk_darwin(v124);
  v114 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v118 = &v112 - v13;
  __chkstk_darwin(v14);
  v119 = &v112 - v15;
  __chkstk_darwin(v16);
  v121 = &v112 - v17;
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  v21 = type metadata accessor for WhatsNewSheet();
  v133 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100140278(&qword_1008E8EA8);
  __chkstk_darwin(v24);
  v130 = (&v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v28 = &v112 - v27;
  v29 = type metadata accessor for Logger();
  v135 = *(v29 - 8);
  v136 = v29;
  __chkstk_darwin(v29);
  v115 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v134 = &v112 - v32;
  __chkstk_darwin(v33);
  v35 = &v112 - v34;
  static Log.default.getter();
  v36 = v0;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v122 = v21;
    v40 = v39;
    v113 = swift_slowAlloc();
    v137 = v113;
    *v40 = 136315138;
    v41 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_whatsNewSheetConfiguraion;
    swift_beginAccess();
    sub_10001B104(&v36[v41], v28, &qword_1008E8EA8);
    v42 = Optional.description.getter();
    v44 = v43;
    sub_10000EA04(v28, &qword_1008E8EA8);
    v45 = sub_10000AFDC(v42, v44, &v137);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "SeymourDiscoverySheetCoordinator: evaluate should show what's new sheet %s", v40, 0xCu);
    sub_100005A40(v113);

    v21 = v122;
  }

  v46 = v136;
  v47 = *(v135 + 8);
  v47(v35, v136);
  if (v36[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_forceShowingWhatsNewSheet] == 1)
  {
    v48 = v134;
    static Log.default.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "SeymourDiscoverySheetCoordinator: forceShowingWhatsNewSheet", v51, 2u);
    }

    v47(v48, v46);
    return 1;
  }

  if (sub_100324680() & 1) == 0 || (sub_100324980())
  {
    return 0;
  }

  v53 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_whatsNewSheetConfiguraion;
  swift_beginAccess();
  v54 = &v36[v53];
  v55 = v130;
  sub_10001B104(v54, v130, &qword_1008E8EA8);
  if ((*(v133 + 48))(v55, 1, v21) == 1)
  {
    v56 = &qword_1008E8EA8;
    v57 = v55;
LABEL_19:
    sub_10000EA04(v57, v56);
    return 0;
  }

  v113 = v36;
  (*(v133 + 32))(v23, v55, v21);
  Date.init()();
  v58 = v125;
  static Calendar.current.getter();
  v59 = v127;
  WhatsNewSheet.startDate.getter();
  v60 = v123;
  Calendar.date(from:)();
  v61 = *(v132 + 8);
  v132 += 8;
  v61(v59, v128);
  v62 = *(v131 + 8);
  v131 += 8;
  v62(v58, v126);
  v63 = v129;
  v64 = v124;
  v130 = *(v129 + 48);
  if ((v130)(v60, 1, v124) == 1)
  {
    (*(v63 + 8))(v20, v64);
    (*(v133 + 8))(v23, v21);
    v56 = &unk_1008F73A0;
    v57 = v60;
    goto LABEL_19;
  }

  v134 = v23;
  v122 = v21;
  v65 = v121;
  v123 = *(v63 + 32);
  (v123)(v121, v60, v64);
  sub_10032B67C(&qword_1008E4080, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v66 = *(v63 + 8);
    v66(v65, v64);
    v66(v20, v64);
LABEL_15:
    (*(v133 + 8))(v134, v122);
    return 0;
  }

  v112 = v20;
  v67 = v125;
  static Calendar.current.getter();
  v68 = v127;
  WhatsNewSheet.expirationDate.getter();
  v69 = v120;
  Calendar.date(from:)();
  v61(v68, v128);
  v62(v67, v126);
  if ((v130)(v69, 1, v64) == 1)
  {
    v70 = *(v129 + 8);
    v70(v121, v64);
    v71 = v112;
    v72 = v64;
LABEL_18:
    v70(v71, v72);
    (*(v133 + 8))(v134, v122);
    v56 = &unk_1008F73A0;
    v57 = v69;
    goto LABEL_19;
  }

  v73 = v119;
  (v123)(v119, v69, v64);
  v74 = v112;
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v82 = *(v129 + 8);
    v82(v73, v64);
    v82(v121, v64);
    v82(v74, v64);
    goto LABEL_15;
  }

  v132 = v63 + 32;
  result = WhatsNewSheet.introSheetTriggerConditionInDays.getter();
  v75 = v121;
  if ((result * 24) >> 64 != (24 * result) >> 63)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v76 = v118;
  v77 = v117;
  v69 = v116;
  if ((24 * result * 60) >> 64 != (1440 * result) >> 63)
  {
    goto LABEL_45;
  }

  v78 = 86400 * result;
  if ((1440 * result * 60) >> 64 != (86400 * result) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v79 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastIntroSheetViewDate;
  v80 = v113;
  swift_beginAccess();
  sub_10001B104(v80 + v79, v69, &unk_1008F73A0);
  v81 = v124;
  if ((v130)(v69, 1, v124) == 1)
  {
    v70 = *(v129 + 8);
    v70(v73, v81);
    v70(v75, v81);
    v71 = v112;
    v72 = v81;
    goto LABEL_18;
  }

  v83 = v78;
  (v123)(v76, v69, v81);
  v84 = v112;
  Date.timeIntervalSince(_:)();
  if (v85 < v83)
  {
    v86 = *(v129 + 8);
    v86(v76, v81);
    v86(v73, v81);
    v86(v75, v81);
    v87 = v84;
    v88 = v81;
LABEL_31:
    v86(v87, v88);
    goto LABEL_15;
  }

  v89 = WhatsNewSheet.version.getter();
  if ((v113[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewVersion + 8] & 1) == 0 && *&v113[OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewVersion] >= v89)
  {
    v86 = *(v129 + 8);
    v111 = v124;
    v86(v76, v124);
    v86(v73, v111);
    v86(v75, v111);
    v87 = v112;
    v88 = v111;
    goto LABEL_31;
  }

  result = WhatsNewSheet.whatsNewSheetTriggerConditionInDays.getter();
  if ((result * 24) >> 64 != (24 * result) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((24 * result * 60) >> 64 != (1440 * result) >> 63)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v90 = 86400 * result;
  if ((1440 * result * 60) >> 64 != (86400 * result) >> 63)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v91 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_lastWhatsNewSheetViewDate;
  v92 = v113;
  swift_beginAccess();
  sub_10001B104(v92 + v91, v77, &unk_1008F73A0);
  v93 = v124;
  if ((v130)(v77, 1, v124) == 1)
  {
    sub_10000EA04(v77, &unk_1008F73A0);
    v94 = v121;
  }

  else
  {
    v95 = v90;
    v96 = v114;
    (v123)(v114, v77, v93);
    v97 = v112;
    Date.timeIntervalSince(_:)();
    v99 = v98;
    v100 = *(v129 + 8);
    v100(v96, v93);
    v94 = v121;
    if (v99 < v95)
    {
      v101 = v124;
      v100(v76, v124);
      v100(v73, v101);
      v100(v94, v101);
      v100(v97, v101);
      goto LABEL_15;
    }
  }

  v102 = v115;
  static Log.default.getter();
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v106 = v122;
  v107 = v134;
  if (v105)
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v103, v104, "SeymourDiscoverySheetCoordinator: qualified to show what's new sheet", v108, 2u);
  }

  v47(v102, v136);
  v109 = *(v129 + 8);
  v110 = v124;
  v109(v118, v124);
  v109(v73, v110);
  v109(v94, v110);
  v109(v112, v110);
  (*(v133 + 8))(v107, v106);
  return 1;
}

id sub_100328628()
{
  v1 = v0;
  *&v54 = type metadata accessor for Logger();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008EAEF0);
  __chkstk_darwin(v4 - 8);
  v58 = &v48 - v5;
  v6 = sub_100140278(&unk_1008E4DA0);
  __chkstk_darwin(v6 - 8);
  v57 = &v48 - v7;
  v8 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v8 - 8);
  v56 = &v48 - v9;
  v10 = sub_100140278(&qword_1008E4DB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v55 = type metadata accessor for MetricPage();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008E8EB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for IntroSheet();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_introSheetConfiguration;
  swift_beginAccess();
  sub_10001B104(v1 + v21, v16, &qword_1008E8EB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000EA04(v16, &qword_1008E8EB0);
    static Log.default.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "SeymourDiscoverySheetCoordinator: unexpected nil for intro sheet configuration", v24, 2u);
    }

    (*(v52 + 1))(v3, v54);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v26 = sub_100517D50();
    v28 = v27;
    v49 = v12;
    v50 = v27;
    v30 = v29;
    v32 = v31;
    v33 = OBJC_IVAR____TtC10FitnessApp32SeymourDiscoverySheetCoordinator_eventHub;
    v52 = type metadata accessor for DiscoverySheetViewController();
    v34 = v26 & 1;
    v54 = *(v1 + v33);
    v35 = objc_allocWithZone(v52);
    *&v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_delegate + 8] = 0;
    v36 = swift_unknownObjectWeakInit();
    v37 = &v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_dataModel];
    *v37 = v34;
    *(v37 + 1) = v28;
    *(v37 + 2) = v30;
    *(v37 + 3) = v32;
    *(v36 + 8) = &off_100852E08;
    swift_unknownObjectWeakAssign();
    *&v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_eventHub] = v54;
    v38 = enum case for MetricPageCategory.discovery(_:);
    v39 = type metadata accessor for MetricPageCategory();
    v40 = *(v39 - 8);
    v41 = v49;
    (*(v40 + 104))(v49, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    v42 = type metadata accessor for URL();
    (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
    v43 = type metadata accessor for MetricClickDestination();
    (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
    v44 = type metadata accessor for MetricPlaybackEntitlement();
    (*(*(v44 - 8) + 56))(v58, 1, 1, v44);

    swift_unknownObjectRetain();
    v45 = v51;
    MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
    (*(v53 + 32))(&v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_metricPage], v45, v55);
    v35[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_pageIdentifier] = 0;
    v46 = String._bridgeToObjectiveC()();

    v59.receiver = v35;
    v59.super_class = v52;
    v47 = objc_msgSendSuper2(&v59, "initWithTitle:detailText:icon:contentLayout:", v46, 0, 0, 2);

    (*(v18 + 8))(v20, v17);
    return v47;
  }
}