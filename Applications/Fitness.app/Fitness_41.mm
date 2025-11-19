uint64_t sub_1004ACBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10016200C;

  return (sub_1004B12AC)(a2, a3);
}

id sub_1004ACC98()
{
  result = [objc_allocWithZone(type metadata accessor for AwardIntentDataProvider()) init];
  qword_100925AA0 = result;
  return result;
}

char *sub_1004ACCC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_dataLoadingGroup;
  *&v1[v2] = dispatch_group_create();
  v3 = type metadata accessor for AAUIAwardsDataProvider();
  [objc_allocWithZone(HKHealthStore) init];
  v4 = AAUIAwardsDataProvider.__allocating_init(healthStore:layoutMode:)();
  v5 = &v1[OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider];
  v5[3] = v3;
  v5[4] = &protocol witness table for AAUIAwardsDataProvider;
  *v5 = v4;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AwardIntentDataProvider();
  v6 = objc_msgSendSuper2(&v13, "init");
  v7 = *&v6[OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_dataLoadingGroup];
  v8 = v6;
  dispatch_group_enter(v7);
  v9 = OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider;
  sub_100007C5C(&v8[OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider], v11);
  sub_1000066AC(v11, v12);
  sub_1004B0CA8();
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();
  sub_100005A40(v11);
  sub_100007C5C(&v8[v9], v11);
  sub_1000066AC(v11, v12);
  dispatch thunk of AAUIAwardsDataProviding.activate(isFitnessPlusSubscriber:)();

  sub_100005A40(v11);
  return v8;
}

void *sub_1004ACF2C()
{
  v1 = type metadata accessor for AAUIAwardsDataProviderSection();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  static DispatchTime.now()();
  *v7 = 3;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
  + infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  v15 = *(v9 + 8);
  v15(v11, v8);
  OS_dispatch_group.wait(timeout:)();
  v15(v14, v8);
  v16 = static AAUIAwardsDataProviderSection.allCases.getter();
  v34 = _swiftEmptyArrayStorage;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v0 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider);
    v19 = v33;
    v20 = v32 + 16;
    v21 = *(v32 + 16);
    v22 = *(v32 + 80);
    v29 = v16;
    v23 = v16 + ((v22 + 32) & ~v22);
    v31 = *(v32 + 72);
    v32 = v21;
    v24 = (v20 - 8);
    v30 = _swiftEmptyArrayStorage;
    v25 = v20;
    do
    {
      v26 = v25;
      (v32)(v3, v23, v19);
      sub_1000066AC(v18, v18[3]);
      v27 = dispatch thunk of AAUIAwardsDataProviding.topAchievement(forSection:)();
      (*v24)(v3, v19);
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v30 = v34;
      }

      v23 += v31;
      --v17;
      v25 = v26;
    }

    while (v17);

    return v30;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1004AD2DC()
{
  v70 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for DispatchTime();
  v3 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v51 - v6;
  v7 = type metadata accessor for AAUIAwardsDataProviderSection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static AAUIAwardsDataProviderSection.allCases.getter();
  v65 = *(v11 + 16);
  if (!v65)
  {

    v13 = &_swiftEmptyDictionarySingleton;
LABEL_31:
    v49 = sub_1004AC3BC(v13);

    return v49;
  }

  v12 = 0;
  v63 = *(v0 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_dataLoadingGroup);
  v64 = (v0 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider);
  v62 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v61 = v8 + 16;
  v60 = enum case for DispatchTimeInterval.seconds(_:);
  v58 = (v1 + 8);
  v59 = (v1 + 104);
  v57 = (v3 + 8);
  v52 = (v8 + 8);
  v13 = &_swiftEmptyDictionarySingleton;
  v56 = v7;
  v55 = v8;
  v54 = v10;
  v53 = v11;
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      goto LABEL_36;
    }

    (*(v8 + 16))(v10, v62 + *(v8 + 72) * v12, v7);
    v14 = v67;
    static DispatchTime.now()();
    v16 = v69;
    v15 = v70;
    *v69 = 3;
    (*v59)(v16, v60, v15);
    v17 = v66;
    + infix(_:_:)();
    (*v58)(v16, v15);
    v18 = *v57;
    v19 = v14;
    v20 = v68;
    (*v57)(v19, v68);
    OS_dispatch_group.wait(timeout:)();
    v18(v17, v20);
    sub_1000066AC(v64, v64[3]);
    v21 = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();
    v22 = v21;
    if (!(v21 >> 62))
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        break;
      }

      goto LABEL_3;
    }

    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23)
    {
      break;
    }

LABEL_3:
    ++v12;
    v10 = v54;
    v7 = v56;
    (*v52)(v54, v56);

    v8 = v55;
    v11 = v53;
    if (v12 == v65)
    {

      goto LABEL_31;
    }
  }

  v24 = 0;
  v73 = v22 & 0xFFFFFFFFFFFFFF8;
  v74 = v22 & 0xC000000000000001;
  v71 = v23;
  v72 = v22;
  while (1)
  {
    if (v74)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v73 + 16))
      {
        goto LABEL_33;
      }

      v27 = *(v22 + 8 * v24 + 32);
    }

    v28 = v27;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v29 = [v27 template];
    v30 = [v29 uniqueName];

    if (!v30)
    {
      goto LABEL_37;
    }

    v75 = v24 + 1;
    v31 = v12;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v13;
    v38 = sub_100066F20(v32, v34);
    v39 = v13[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_34;
    }

    v42 = v37;
    if (v13[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v37)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100495A94();
        if (v42)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_10048DD64(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_100066F20(v32, v34);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_38;
      }

      v38 = v43;
      if (v42)
      {
LABEL_8:

        v13 = v76;
        v25 = v76[7];
        v26 = *(v25 + 8 * v38);
        *(v25 + 8 * v38) = v35;

        goto LABEL_9;
      }
    }

    v13 = v76;
    v76[(v38 >> 6) + 8] |= 1 << v38;
    v45 = (v13[6] + 16 * v38);
    *v45 = v32;
    v45[1] = v34;
    *(v13[7] + 8 * v38) = v35;

    v46 = v13[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_35;
    }

    v13[2] = v48;
LABEL_9:
    ++v24;
    v12 = v31;
    v22 = v72;
    if (v75 == v71)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1004AD914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v16 = sub_100140278(&qword_1008E7F80);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for AAUIAwardsDataProviderSection();
  v60 = *(v19 - 8);
  v61 = v19;
  __chkstk_darwin(v19);
  v59 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v68 = a2;
  sub_10000FCBC();
  v21 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v22 = *(v21 + 16);
  if (v22)
  {
    v55 = v10;
    v56 = v7;
    v57 = v6;
    v58 = v3;
    v23 = (v21 + 32 * v22);
    v24 = *v23;
    v65 = v23[1];
    v66 = v24;
    v25 = v23[3];
    v64 = v23[2];

    v26 = static String._fromSubstring(_:)();
    v28 = v27;

    v29 = sub_100074048(v26, v28);
    if (v29 != 8)
    {
      v63 = v25;
      sub_1005C85CC(v29, v18);
      v33 = v60;
      v32 = v61;
      if ((*(v60 + 48))(v18, 1, v61) == 1)
      {

        sub_10000EA04(v18, &qword_1008E7F80);
        return 0;
      }

      (*(v33 + 32))(v59, v18, v32);
      v34 = v58;
      static DispatchTime.now()();
      *v9 = 3;
      v36 = v56;
      v35 = v57;
      (*(v56 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v57);
      + infix(_:_:)();
      (*(v36 + 8))(v9, v35);
      v37 = *(v62 + 8);
      v38 = v12;
      v39 = v55;
      v37(v38, v55);
      OS_dispatch_group.wait(timeout:)();
      v37(v15, v39);
      sub_1000066AC((v34 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider), *(v34 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider + 24));
      v40 = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();
      v41 = v40;
      if (v40 >> 62)
      {
        goto LABEL_31;
      }

      v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
LABEL_32:

        (*(v60 + 8))(v59, v61);
        return 0;
      }

LABEL_10:
      v43 = 0;
      v62 = v41 & 0xC000000000000001;
      while (1)
      {
        if (v62)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v30 = v44;
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v42 = _CocoaArrayWrapper.endIndex.getter();
          if (!v42)
          {
            goto LABEL_32;
          }

          goto LABEL_10;
        }

        v46 = [v44 template];
        v47 = [v46 uniqueName];

        if (!v47)
        {
          break;
        }

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = static String._fromSubstring(_:)();
        if (!v50)
        {
          goto LABEL_12;
        }

        if (v48 == v51 && v50 == v52)
        {

          goto LABEL_28;
        }

        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v54)
        {

LABEL_28:

          (*(v60 + 8))(v59, v61);
          return v30;
        }

LABEL_13:

        ++v43;
        if (v45 == v42)
        {
          goto LABEL_32;
        }
      }

      static String._fromSubstring(_:)();
LABEL_12:

      goto LABEL_13;
    }
  }

  return 0;
}

id sub_1004ADF20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AwardIntentDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004ADFD4()
{
  dispatch_group_leave(*(v0 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_dataLoadingGroup));
  sub_1000066AC((v0 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider), *(v0 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider + 24));
  return dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();
}

void sub_1004AE040(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AA564(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1004AE0AC(v4);
  *a1 = v2;
}

void sub_1004AE0AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1004AEC94(v7, v8, a1, v4);
      v6[2] = 0;

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
    sub_1004AE1A4(0, v2, 1, a1);
  }
}

void sub_1004AE1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v112 = type metadata accessor for Calendar();
  v8 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v95[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v10 - 8);
  v104 = &v95[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v103 = &v95[-v13];
  v14 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v14 - 8);
  v110 = &v95[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v119 = &v95[-v17];
  __chkstk_darwin(v18);
  v109 = &v95[-v19];
  __chkstk_darwin(v20);
  v116 = &v95[-v21];
  v127 = type metadata accessor for DateComponents();
  v22 = *(v127 - 8);
  __chkstk_darwin(v127);
  v102 = &v95[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v101 = &v95[-v25];
  v26 = type metadata accessor for Date();
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v123 = &v95[-v30];
  v96 = a2;
  if (a3 != a2)
  {
    v122 = (v22 + 56);
    v118 = (v22 + 48);
    v31 = *a4;
    v108 = (v22 + 32);
    v107 = (v8 + 8);
    v106 = (v22 + 8);
    v105 = (v28 + 48);
    v100 = (v28 + 32);
    v113 = v26;
    v114 = (v28 + 8);
    v117 = v31;
    v32 = v31 + 16 * a3 - 16;
    v33 = a1 - a3;
    v115 = v29;
LABEL_6:
    v99 = a3;
    v34 = *(v117 + 16 * a3);
    v97 = v33;
    v98 = v32;
    v35 = v32;
    while (1)
    {
      v124 = v34;
      v37 = *v35;
      v36 = *(v35 + 8);
      v120 = v34;

      v38 = *(&v124 + 1);
      *&v124 = v38;
      v121 = v37;

      v39 = v36;
      v40 = [v38 relevantEarnedInstance];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v42 = [v40 earnedDateComponents];

      if (v42)
      {
        v43 = v109;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v43;
        v45 = 0;
        v46 = v119;
      }

      else
      {
        v45 = 1;
        v46 = v119;
        v44 = v109;
      }

      v47 = *v122;
      v49 = v127;
      (*v122)(v44, v45, 1, v127);
      v50 = v44;
      v48 = v116;
      sub_10003BE9C(v50, v116);
      if ((*v118)(v48, 1, v49) == 1)
      {
        goto LABEL_13;
      }

      v58 = v39;
      v59 = v101;
      (*v108)(v101, v48, v49);
      v60 = v111;
      static Calendar.current.getter();
      v61 = v103;
      Calendar.date(from:)();
      (*v107)(v60, v112);
      v62 = v59;
      v26 = v113;
      (*v106)(v62, v49);
      if ((*v105)(v61, 1, v26) == 1)
      {
        sub_10000EA04(v61, &unk_1008F73A0);
        v39 = v58;
        goto LABEL_14;
      }

      (*v100)(v123, v61, v26);
      v39 = v58;
LABEL_15:
      v51 = [v39 relevantEarnedInstance];
      if (!v51)
      {
        v56 = v39;
        v47(v46, 1, 1, v49);
        v57 = v115;
LABEL_23:
        v65 = v46;
        v66 = &qword_1008DE590;
LABEL_24:
        sub_10000EA04(v65, v66);
        static Date.distantPast.getter();
        goto LABEL_25;
      }

      v52 = v51;
      v53 = [v51 earnedDateComponents];

      if (v53)
      {
        v54 = v110;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v55 = 0;
      }

      else
      {
        v55 = 1;
        v54 = v110;
      }

      v57 = v115;
      v56 = v39;
      v63 = v127;
      v47(v54, v55, 1, v127);
      v64 = v54;
      v46 = v119;
      sub_10003BE9C(v64, v119);
      if ((*v118)(v46, 1, v63) == 1)
      {
        goto LABEL_23;
      }

      v76 = v102;
      (*v108)(v102, v46, v63);
      v77 = v111;
      static Calendar.current.getter();
      v78 = v104;
      Calendar.date(from:)();
      (*v107)(v77, v112);
      (*v106)(v76, v127);
      if ((*v105)(v78, 1, v26) == 1)
      {
        v65 = v78;
        v66 = &unk_1008F73A0;
        goto LABEL_24;
      }

      (*v100)(v57, v78, v26);
LABEL_25:
      v67 = v123;
      v68 = Date.compare(_:)();
      v69 = *v114;
      (*v114)(v57, v26);
      v69(v67, v26);
      if (v68)
      {

        if (v68 != 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v70 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
        v71 = v124;
        v72 = [v70 titleForAchievement:v124];

        if (v72)
        {
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;
        }

        else
        {
          v73 = sub_100073DA0(v71);
          v75 = v79;
        }

        v125 = v73;
        v126 = v75;
        v80._countAndFlagsBits = 32;
        v80._object = 0xE100000000000000;
        String.append(_:)(v80);
        v81._countAndFlagsBits = sub_1005CA540(v71);
        String.append(_:)(v81);

        v83 = v125;
        v82 = v126;
        v84 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
        v85 = [v84 titleForAchievement:v56];

        if (v85)
        {
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;
        }

        else
        {
          v86 = sub_100073DA0(v56);
          v88 = v89;
        }

        v125 = v86;
        v126 = v88;
        v90._countAndFlagsBits = 32;
        v90._object = 0xE100000000000000;
        String.append(_:)(v90);
        v91._countAndFlagsBits = sub_1005CA540(v56);
        String.append(_:)(v91);

        if (v83 == v125 && v82 == v126)
        {

          v26 = v113;
LABEL_5:
          a3 = v99 + 1;
          v32 = v98 + 16;
          v33 = v97 - 1;
          if (v99 + 1 == v96)
          {
            return;
          }

          goto LABEL_6;
        }

        v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v26 = v113;
        if ((v92 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v117)
      {
        __break(1u);
        return;
      }

      v93 = *v35;
      v34 = *(v35 + 16);
      *v35 = v34;
      *(v35 + 16) = v93;
      v35 -= 16;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_5;
      }
    }

    v47 = *v122;
    v48 = v116;
    (*v122)(v116, 1, 1, v127);
    v46 = v119;
LABEL_13:
    sub_10000EA04(v48, &qword_1008DE590);
    v49 = v127;
LABEL_14:
    static Date.distantPast.getter();
    goto LABEL_15;
  }
}

void sub_1004AEC94(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v269 = a1;
  v299 = type metadata accessor for Calendar();
  v8 = *(v299 - 8);
  __chkstk_darwin(v299);
  v298 = &v263 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v10 - 8);
  v288 = &v263 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v287 = &v263 - v13;
  __chkstk_darwin(v14);
  v272 = &v263 - v15;
  __chkstk_darwin(v16);
  v18 = &v263 - v17;
  v19 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v19 - 8);
  v293 = &v263 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v306 = &v263 - v22;
  __chkstk_darwin(v23);
  v25 = &v263 - v24;
  __chkstk_darwin(v26);
  v302 = &v263 - v27;
  __chkstk_darwin(v28);
  v276 = &v263 - v29;
  __chkstk_darwin(v30);
  v282 = &v263 - v31;
  __chkstk_darwin(v32);
  v275 = &v263 - v33;
  __chkstk_darwin(v34);
  v279 = &v263 - v35;
  v36 = type metadata accessor for DateComponents();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v286 = &v263 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v285 = &v263 - v40;
  __chkstk_darwin(v41);
  v271 = &v263 - v42;
  __chkstk_darwin(v43);
  v270 = &v263 - v44;
  v300 = type metadata accessor for Date();
  __chkstk_darwin(v300);
  v301 = &v263 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v309 = &v263 - v47;
  __chkstk_darwin(v48);
  v280 = &v263 - v49;
  __chkstk_darwin(v50);
  v283 = &v263 - v52;
  v53 = a3[1];
  if (v53 < 1)
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_186:
    v18 = *v269;
    if (!*v269)
    {
      goto LABEL_227;
    }

    v8 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_221;
    }

    v258 = v8;
LABEL_189:
    v314 = v258;
    v8 = *(v258 + 2);
    if (v8 >= 2)
    {
      while (*a3)
      {
        v259 = *&v258[16 * v8];
        v260 = v258;
        v261 = *&v258[16 * v8 + 24];
        sub_1004B0874((*a3 + 16 * v259), (*a3 + 16 * *&v258[16 * v8 + 16]), (*a3 + 16 * v261), v18);
        if (v5)
        {
          goto LABEL_197;
        }

        if (v261 < v259)
        {
          goto LABEL_214;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v260 = sub_1001A99A4(v260);
        }

        if (v8 - 2 >= *(v260 + 2))
        {
          goto LABEL_215;
        }

        v262 = &v260[16 * v8];
        *v262 = v259;
        *(v262 + 1) = v261;
        v314 = v260;
        sub_1001A9918(v8 - 1);
        v258 = v314;
        v8 = *(v314 + 2);
        if (v8 <= 1)
        {
          goto LABEL_197;
        }
      }

      goto LABEL_225;
    }

LABEL_197:

    return;
  }

  v54 = 0;
  v310 = (v37 + 56);
  v305 = (v37 + 48);
  v297 = (v37 + 32);
  v296 = (v8 + 8);
  v295 = (v37 + 8);
  v294 = (v51 + 48);
  v289 = (v51 + 32);
  v304 = (v51 + 8);
  v290 = 0x8000000100747FE0;
  v55 = _swiftEmptyArrayStorage;
  v281 = 0x8000000100748010;
  v264 = a3;
  v268 = a4;
  v274 = v18;
  v292 = v25;
  v311 = v36;
LABEL_4:
  v56 = v54;
  if (v54 + 1 >= v53)
  {
    v121 = v54 + 1;
    v122 = v269;
    goto LABEL_55;
  }

  v267 = v55;
  v57 = *a3;
  v58 = *(*a3 + 16 * v54);
  v307 = *(*a3 + 16 * (v54 + 1));
  v308 = v58;
  v312 = v58;
  v313 = v307;
  v8 = v307;

  v59 = *(&v307 + 1);
  v18 = v308;

  v60 = *(&v308 + 1);
  LODWORD(v303) = sub_1004AC90C(&v313, &v312);
  if (v5)
  {

    return;
  }

  v284 = v53;
  v266 = 0;

  v61 = v56 + 2;
  v265 = v56;
  v291 = 16 * v56;
  v62 = v57 + 16 * v56 + 24;
  v63 = v300;
  do
  {
    if (v284 == v61)
    {
      v121 = v284;
      goto LABEL_47;
    }

    v64 = *(v62 + 16);
    v66 = *(v62 - 8);
    v65 = *v62;
    *&v307 = *(v62 + 8);

    v67 = v64;

    v68 = v65;
    v69 = [v67 relevantEarnedInstance];
    *&v308 = v66;
    if (!v69)
    {
      v75 = *v310;
      v76 = v279;
      (*v310)(v279, 1, 1, v311);
      v77 = v76;
      v74 = v282;
LABEL_17:
      v81 = &qword_1008DE590;
LABEL_18:
      sub_10000EA04(v77, v81);
      static Date.distantPast.getter();
      goto LABEL_19;
    }

    v70 = v69;
    v71 = [v69 earnedDateComponents];

    if (v71)
    {
      v72 = v275;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
      v74 = v282;
    }

    else
    {
      v73 = 1;
      v74 = v282;
      v72 = v275;
    }

    v78 = v311;
    v75 = *v310;
    (*v310)(v72, v73, 1, v311);
    v79 = v72;
    v80 = v279;
    sub_10003BE9C(v79, v279);
    if ((*v305)(v80, 1, v78) == 1)
    {
      v77 = v80;
      v63 = v300;
      goto LABEL_17;
    }

    v87 = v270;
    (*v297)(v270, v80, v78);
    v88 = v298;
    static Calendar.current.getter();
    Calendar.date(from:)();
    (*v296)(v88, v299);
    v89 = v274;
    (*v295)(v87, v78);
    v63 = v300;
    if ((*v294)(v89, 1, v300) == 1)
    {
      v77 = v89;
      v81 = &unk_1008F73A0;
      goto LABEL_18;
    }

    (*v289)(v283, v89, v63);
LABEL_19:
    v82 = [v68 relevantEarnedInstance];
    if (!v82)
    {
      v75(v74, 1, 1, v311);
LABEL_27:
      v92 = v74;
      v93 = &qword_1008DE590;
LABEL_28:
      sub_10000EA04(v92, v93);
      v94 = v280;
      static Date.distantPast.getter();
      goto LABEL_29;
    }

    v83 = v82;
    v84 = [v82 earnedDateComponents];

    if (v84)
    {
      v85 = v276;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v86 = 0;
    }

    else
    {
      v86 = 1;
      v85 = v276;
    }

    v90 = v311;
    v75(v85, v86, 1, v311);
    v74 = v282;
    sub_10003BE9C(v85, v282);
    v91 = (*v305)(v74, 1, v90);
    v63 = v300;
    if (v91 == 1)
    {
      goto LABEL_27;
    }

    v104 = v271;
    v105 = v74;
    v106 = v311;
    (*v297)(v271, v105, v311);
    v107 = v298;
    static Calendar.current.getter();
    v108 = v272;
    Calendar.date(from:)();
    (*v296)(v107, v299);
    (*v295)(v104, v106);
    if ((*v294)(v108, 1, v63) == 1)
    {
      v92 = v108;
      v93 = &unk_1008F73A0;
      goto LABEL_28;
    }

    v94 = v280;
    (*v289)(v280, v108, v63);
LABEL_29:
    v95 = v283;
    v96 = Date.compare(_:)();
    v97 = v94;
    v98 = v96;
    v8 = *v304;
    (*v304)(v97, v63);
    (v8)(v95, v63);
    if (v98)
    {

      v18 = v98 == 1;
    }

    else
    {
      v99 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
      v100 = [v99 titleForAchievement:v67];

      if (v100)
      {
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;
      }

      else
      {
        v101 = sub_100073DA0(v67);
        v103 = v109;
      }

      *&v313 = v101;
      *(&v313 + 1) = v103;
      v110._countAndFlagsBits = 32;
      v110._object = 0xE100000000000000;
      String.append(_:)(v110);
      v111._countAndFlagsBits = sub_1005CA540(v67);
      String.append(_:)(v111);

      v112 = v313;
      v113 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
      v114 = [v113 titleForAchievement:v68];

      if (v114)
      {
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;
      }

      else
      {
        v115 = sub_100073DA0(v68);
        v117 = v118;
      }

      *&v313 = v115;
      *(&v313 + 1) = v117;
      v119._countAndFlagsBits = 32;
      v119._object = 0xE100000000000000;
      String.append(_:)(v119);
      v120._countAndFlagsBits = sub_1005CA540(v68);
      String.append(_:)(v120);

      v8 = *(&v313 + 1);
      v63 = v300;
      if (v112 == v313)
      {
        v18 = 0;
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    ++v61;
    v62 += 16;
  }

  while (((v303 ^ v18) & 1) == 0);
  v121 = v61 - 1;
LABEL_47:
  v5 = v266;
  a3 = v264;
  v122 = v269;
  a4 = v268;
  v55 = v267;
  v56 = v265;
  v123 = v291;
  if (v303)
  {
    if (v121 >= v265)
    {
      if (v265 < v121)
      {
        v124 = 16 * v121 - 16;
        v125 = v121;
        v126 = v265;
        do
        {
          if (v126 != --v125)
          {
            v127 = *a3;
            if (!*a3)
            {
              goto LABEL_224;
            }

            v128 = *(v127 + v123);
            *(v127 + v123) = *(v127 + v124);
            *(v127 + v124) = v128;
          }

          ++v126;
          v124 -= 16;
          v123 += 16;
        }

        while (v126 < v125);
      }

      goto LABEL_55;
    }

LABEL_220:
    __break(1u);
LABEL_221:
    v258 = sub_1001A99A4(v8);
    goto LABEL_189;
  }

LABEL_55:
  v129 = a3[1];
  if (v121 >= v129)
  {
    goto LABEL_64;
  }

  if (__OFSUB__(v121, v56))
  {
    goto LABEL_217;
  }

  if (v121 - v56 >= a4)
  {
    goto LABEL_64;
  }

  if (__OFADD__(v56, a4))
  {
    goto LABEL_218;
  }

  if (v56 + a4 >= v129)
  {
    v130 = a3[1];
  }

  else
  {
    v130 = v56 + a4;
  }

  if (v130 < v56)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  if (v121 == v130)
  {
LABEL_64:
    v131 = v121;
    if (v121 < v56)
    {
      goto LABEL_216;
    }

    goto LABEL_65;
  }

  v267 = v55;
  v266 = v5;
  v303 = *a3;
  v179 = v303 + 16 * v121 - 16;
  v265 = v56;
  v180 = v56 - v121;
  v181 = v300;
  v273 = v130;
  while (2)
  {
    v284 = v121;
    v182 = v179;
    v183 = *(v303 + 16 * v121);
    v277 = v180;
    v278 = v179;
LABEL_119:
    v308 = v183;
    v185 = *v182;
    v184 = *(v182 + 8);
    *&v307 = v183;

    v186 = *(&v308 + 1);
    *&v308 = v185;

    v187 = v184;
    v188 = [v186 relevantEarnedInstance];
    if (!v188)
    {
      v194 = *v310;
      v195 = v302;
      (*v310)(v302, 1, 1, v311);
      v196 = v195;
      v193 = v306;
      goto LABEL_126;
    }

    v189 = v188;
    v190 = [v188 earnedDateComponents];

    if (v190)
    {
      v191 = v292;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v192 = 0;
      v193 = v306;
    }

    else
    {
      v192 = 1;
      v193 = v306;
      v191 = v292;
    }

    v197 = v311;
    v194 = *v310;
    (*v310)(v191, v192, 1, v311);
    v198 = v191;
    v199 = v302;
    sub_10003BE9C(v198, v302);
    if ((*v305)(v199, 1, v197) == 1)
    {
      v196 = v199;
LABEL_126:
      sub_10000EA04(v196, &qword_1008DE590);
LABEL_127:
      static Date.distantPast.getter();
    }

    else
    {
      v291 = v180;
      v205 = v186;
      v206 = v187;
      v207 = v285;
      (*v297)(v285, v199, v197);
      v208 = v298;
      static Calendar.current.getter();
      v209 = v287;
      Calendar.date(from:)();
      (*v296)(v208, v299);
      v210 = v207;
      v181 = v300;
      (*v295)(v210, v197);
      if ((*v294)(v209, 1, v181) == 1)
      {
        sub_10000EA04(v209, &unk_1008F73A0);
        v187 = v206;
        v186 = v205;
        v180 = v291;
        goto LABEL_127;
      }

      (*v289)(v309, v209, v181);
      v187 = v206;
      v186 = v205;
      v180 = v291;
    }

    v200 = [v187 relevantEarnedInstance];
    if (!v200)
    {
      v194(v193, 1, 1, v311);
      goto LABEL_136;
    }

    v201 = v200;
    v202 = [v200 earnedDateComponents];

    if (v202)
    {
      v203 = v293;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v204 = 0;
    }

    else
    {
      v204 = 1;
      v203 = v293;
    }

    v211 = v311;
    v194(v203, v204, 1, v311);
    v193 = v306;
    sub_10003BE9C(v203, v306);
    if ((*v305)(v193, 1, v211) == 1)
    {
LABEL_136:
      v212 = v193;
      v213 = &qword_1008DE590;
      goto LABEL_137;
    }

    v223 = v286;
    v224 = v193;
    v225 = v311;
    (*v297)(v286, v224, v311);
    v226 = v298;
    static Calendar.current.getter();
    v227 = v288;
    Calendar.date(from:)();
    (*v296)(v226, v299);
    (*v295)(v223, v225);
    if ((*v294)(v227, 1, v181) == 1)
    {
      v212 = v227;
      v213 = &unk_1008F73A0;
LABEL_137:
      sub_10000EA04(v212, v213);
      v214 = v301;
      static Date.distantPast.getter();
    }

    else
    {
      v214 = v301;
      (*v289)(v301, v227, v181);
    }

    v215 = v309;
    v216 = Date.compare(_:)();
    v217 = v214;
    v18 = v216;
    v8 = *v304;
    (*v304)(v217, v181);
    (v8)(v215, v181);
    if (v18)
    {

      if (v18 != 1)
      {
        goto LABEL_117;
      }

      goto LABEL_177;
    }

    v218 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
    v219 = [v218 titleForAchievement:v186];

    if (v219)
    {
      v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v222 = v221;
    }

    else
    {
      v220 = sub_100073DA0(v186);
      v222 = v228;
    }

    *&v313 = v220;
    *(&v313 + 1) = v222;
    v229._countAndFlagsBits = 32;
    v229._object = 0xE100000000000000;
    String.append(_:)(v229);
    v230 = [v186 unearned];
    v231 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
    v232 = v231;
    if (v230)
    {
      v233 = [v231 unachievedShortDescriptionForAchievement:v186];
    }

    else
    {
      v233 = [v231 achievedShortDescriptionForAchievement:v186];
    }

    v234 = v233;

    if (v234)
    {
      v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v237 = v236;

      if (v235 == 0xD000000000000028 && v290 == v237 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v235 == 0xD000000000000026 && v281 == v237 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_159;
      }
    }

    else
    {
LABEL_159:
      v235 = 0;
      v237 = 0xE000000000000000;
    }

    v238._countAndFlagsBits = v235;
    v238._object = v237;
    String.append(_:)(v238);

    v239 = v313;
    v240 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
    v241 = [v240 titleForAchievement:v187];

    if (v241)
    {
      v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v244 = v243;
    }

    else
    {
      v242 = sub_100073DA0(v187);
      v244 = v245;
    }

    *&v313 = v242;
    *(&v313 + 1) = v244;
    v246._countAndFlagsBits = 32;
    v246._object = 0xE100000000000000;
    String.append(_:)(v246);
    v247 = [v187 unearned];
    v248 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
    v249 = v248;
    if (v247)
    {
      v250 = [v248 unachievedShortDescriptionForAchievement:v187];
    }

    else
    {
      v250 = [v248 achievedShortDescriptionForAchievement:v187];
    }

    v251 = v250;

    if (v251)
    {
      v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v253;

      if (v252 == 0xD000000000000028 && v290 == v254 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v252 == 0xD000000000000026 && v281 == v254 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_174;
      }
    }

    else
    {
LABEL_174:
      v252 = 0;
      v254 = 0xE000000000000000;
    }

    v8 = &v313;
    v255._countAndFlagsBits = v252;
    v255._object = v254;
    String.append(_:)(v255);

    v18 = *(&v313 + 1);
    if (v239 == v313)
    {

      v181 = v300;
LABEL_117:
      v121 = v284 + 1;
      v179 = v278 + 16;
      v180 = v277 - 1;
      v131 = v273;
      if (v284 + 1 != v273)
      {
        continue;
      }

      v5 = v266;
      a3 = v264;
      v122 = v269;
      v55 = v267;
      v56 = v265;
      if (v273 < v265)
      {
        goto LABEL_216;
      }

LABEL_65:
      v132 = v55;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v132;
      }

      else
      {
        v55 = sub_1001A1D54(0, *(v132 + 2) + 1, 1, v132);
      }

      v18 = *(v55 + 2);
      v133 = *(v55 + 3);
      v8 = v18 + 1;
      if (v18 >= v133 >> 1)
      {
        v55 = sub_1001A1D54((v133 > 1), v18 + 1, 1, v55);
      }

      *(v55 + 2) = v8;
      v134 = &v55[16 * v18];
      *(v134 + 4) = v56;
      *(v134 + 5) = v131;
      v135 = *v122;
      if (!*v122)
      {
        goto LABEL_226;
      }

      if (v18)
      {
        while (2)
        {
          v136 = v8 - 1;
          if (v8 >= 4)
          {
            v141 = &v55[16 * v8 + 32];
            v142 = *(v141 - 64);
            v143 = *(v141 - 56);
            v147 = __OFSUB__(v143, v142);
            v144 = v143 - v142;
            if (v147)
            {
              goto LABEL_203;
            }

            v146 = *(v141 - 48);
            v145 = *(v141 - 40);
            v147 = __OFSUB__(v145, v146);
            v139 = v145 - v146;
            v140 = v147;
            if (v147)
            {
              goto LABEL_204;
            }

            v148 = &v55[16 * v8];
            v150 = *v148;
            v149 = *(v148 + 1);
            v147 = __OFSUB__(v149, v150);
            v151 = v149 - v150;
            if (v147)
            {
              goto LABEL_206;
            }

            v147 = __OFADD__(v139, v151);
            v152 = v139 + v151;
            if (v147)
            {
              goto LABEL_209;
            }

            if (v152 >= v144)
            {
              v170 = &v55[16 * v136 + 32];
              v172 = *v170;
              v171 = *(v170 + 1);
              v147 = __OFSUB__(v171, v172);
              v173 = v171 - v172;
              if (v147)
              {
                goto LABEL_213;
              }

              if (v139 < v173)
              {
                v136 = v8 - 2;
              }
            }

            else
            {
LABEL_84:
              if (v140)
              {
                goto LABEL_205;
              }

              v153 = &v55[16 * v8];
              v155 = *v153;
              v154 = *(v153 + 1);
              v156 = __OFSUB__(v154, v155);
              v157 = v154 - v155;
              v158 = v156;
              if (v156)
              {
                goto LABEL_208;
              }

              v159 = &v55[16 * v136 + 32];
              v161 = *v159;
              v160 = *(v159 + 1);
              v147 = __OFSUB__(v160, v161);
              v162 = v160 - v161;
              if (v147)
              {
                goto LABEL_211;
              }

              if (__OFADD__(v157, v162))
              {
                goto LABEL_212;
              }

              if (v157 + v162 < v139)
              {
                goto LABEL_98;
              }

              if (v139 < v162)
              {
                v136 = v8 - 2;
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              v137 = *(v55 + 4);
              v138 = *(v55 + 5);
              v147 = __OFSUB__(v138, v137);
              v139 = v138 - v137;
              v140 = v147;
              goto LABEL_84;
            }

            v163 = &v55[16 * v8];
            v165 = *v163;
            v164 = *(v163 + 1);
            v147 = __OFSUB__(v164, v165);
            v157 = v164 - v165;
            v158 = v147;
LABEL_98:
            if (v158)
            {
              goto LABEL_207;
            }

            v166 = &v55[16 * v136];
            v168 = *(v166 + 4);
            v167 = *(v166 + 5);
            v147 = __OFSUB__(v167, v168);
            v169 = v167 - v168;
            if (v147)
            {
              goto LABEL_210;
            }

            if (v169 < v157)
            {
              break;
            }
          }

          v18 = v136 - 1;
          if (v136 - 1 >= v8)
          {
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
            goto LABEL_219;
          }

          if (!*a3)
          {
            goto LABEL_223;
          }

          v174 = v131;
          v175 = v55;
          v8 = *&v55[16 * v18 + 32];
          v176 = *&v55[16 * v136 + 40];
          sub_1004B0874((*a3 + 16 * v8), (*a3 + 16 * *&v55[16 * v136 + 32]), (*a3 + 16 * v176), v135);
          if (v5)
          {
            goto LABEL_197;
          }

          if (v176 < v8)
          {
            goto LABEL_201;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v177 = v175;
          }

          else
          {
            v177 = sub_1001A99A4(v175);
          }

          if (v18 >= *(v177 + 2))
          {
            goto LABEL_202;
          }

          v131 = v174;
          v178 = &v177[16 * v18];
          *(v178 + 4) = v8;
          *(v178 + 5) = v176;
          v314 = v177;
          sub_1001A9918(v136);
          v55 = v314;
          v8 = *(v314 + 2);
          if (v8 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v54 = v131;
      v53 = a3[1];
      a4 = v268;
      if (v54 >= v53)
      {
        goto LABEL_186;
      }

      goto LABEL_4;
    }

    break;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v181 = v300;
  if ((v8 & 1) == 0)
  {
    goto LABEL_117;
  }

LABEL_177:
  if (v303)
  {
    v256 = *v182;
    v183 = *(v182 + 16);
    *v182 = v183;
    *(v182 + 16) = v256;
    v182 -= 16;
    if (__CFADD__(v180++, 1))
    {
      goto LABEL_117;
    }

    goto LABEL_119;
  }

  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
}

uint64_t sub_1004B0874(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
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
    v14 = __dst;
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v60 = (v5 + 16 * v10);
    if (v8 < 16)
    {
      v7 = v14;
      goto LABEL_52;
    }

    v15 = v4;
    if (v7 >= v6)
    {
LABEL_19:
      v7 = v14;
      goto LABEL_52;
    }

    while (1)
    {
      v54 = v14;
      v16 = *(v7 + 1);
      v17 = v7;
      v58 = *v7;
      v59 = v16;
      v18 = v5;
      v19 = v15;
      v20 = *(v5 + 8);
      v56 = *v5;
      v57 = v20;

      v21 = v16;

      v22 = v20;
      v23 = sub_1004AC90C(&v58, &v56);
      v15 = v19;
      if (v19)
      {

        v42 = v18;
        v43 = v60 - v18 + 15;
        if (v60 - v18 >= 0)
        {
          v43 = v60 - v18;
        }

        v44 = v54;
        if (v54 < v18 || v54 >= &v18[v43 & 0xFFFFFFFFFFFFFFF0] || v54 != v18)
        {
          v45 = 16 * (v43 >> 4);
          goto LABEL_58;
        }

        return 1;
      }

      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v17;
      v7 = v17 + 16;
      v26 = v54;
      v5 = v18;
      if (v54 != v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v14 = v26 + 16;
      if (v5 >= v60 || v7 >= v6)
      {
        goto LABEL_19;
      }
    }

    v25 = v18;
    v5 = (v18 + 16);
    v26 = v54;
    v7 = v17;
    if (v54 == v18)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v26 = *v25;
    goto LABEL_17;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v60 = (v5 + 16 * v13);
  v27 = v4;
  if (v11 < 16 || v7 <= __dst)
  {
LABEL_52:
    v48 = &v60[-v5 + 15];
    if (&v60[-v5] >= 0)
    {
      v48 = &v60[-v5];
    }

    if (v7 >= v5 && v7 < v5 + (v48 & 0xFFFFFFFFFFFFFFF0) && v7 == v5)
    {
      return 1;
    }

    v45 = 16 * (v48 >> 4);
    v44 = v7;
    v42 = v5;
LABEL_58:
    memmove(v44, v42, v45);
    return 1;
  }

  v28 = -v5;
  __srca = v5;
  v50 = -v5;
LABEL_26:
  v53 = v27;
  v51 = v7 - 16;
  v29 = v60;
  v30 = &v60[v28];
  v31 = v6 - 16;
  while (1)
  {
    v32 = v31;
    v34 = *(v29 - 2);
    v33 = *(v29 - 1);
    v29 -= 16;
    v58 = v34;
    v59 = v33;
    v35 = *(v7 - 1);
    v36 = v7;
    v56 = *(v7 - 2);
    v57 = v35;

    v37 = v33;

    v38 = v35;
    v39 = sub_1004AC90C(&v58, &v56);
    if (v53)
    {
      break;
    }

    v40 = v39;

    v6 = v32;
    v41 = v32 + 16;
    if (v40)
    {
      v5 = __srca;
      if (v41 != v36)
      {
        *v32 = *v51;
      }

      v27 = 0;
      if (v60 <= __srca || (v7 = v51, v28 = v50, v51 <= __dst))
      {
        v7 = v51;
        goto LABEL_52;
      }

      goto LABEL_26;
    }

    v5 = __srca;
    v7 = v36;
    if (v41 != v60)
    {
      *v32 = *v29;
    }

    v30 -= 16;
    v31 = v32 - 16;
    v60 = v29;
    if (v29 <= __srca)
    {
      v60 = v29;
      goto LABEL_52;
    }
  }

  if (v30 >= 0)
  {
    v46 = v30;
  }

  else
  {
    v46 = v30 + 15;
  }

  v47 = v46 >> 4;
  v42 = __srca;
  if (v36 < __srca || v36 >= &__srca[v46 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v36, __srca, 16 * v47);
    return 1;
  }

  if (v36 != __srca)
  {
    v45 = 16 * v47;
    v44 = v36;
    goto LABEL_58;
  }

  return 1;
}

unint64_t sub_1004B0CA8()
{
  result = qword_1008EF108;
  if (!qword_1008EF108)
  {
    type metadata accessor for AwardIntentDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF108);
  }

  return result;
}

uint64_t sub_1004B0CFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for LocalizedStringResource();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1004B0D8C, 0, 0);
}

void sub_1004B0D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    v5 = _swiftEmptyArrayStorage;
    v19 = v4;
    do
    {
      v20 = v5;
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v8 = *(v6 - 1);
        v9 = *v6;
        v10 = qword_1008DAC48;

        if (v10 != -1)
        {
          swift_once();
        }

        v11 = sub_1004AD914(v8, v9);
        if (v11)
        {
          break;
        }

        ++v7;
        v6 += 2;
        if (v3 == v2)
        {
          v5 = v20;
          goto LABEL_18;
        }
      }

      v12 = v11;
      sub_100140278(&unk_1008F8F40);
      LocalizedStringResource.init(stringLiteral:)();
      v13 = EntityProperty<>.init(title:)();

      v14 = v12;
      *(v0 + 32) = [v14 unearned] ^ 1;
      EntityProperty.wrappedValue.setter();

      v5 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1001A34A8(0, *(v20 + 2) + 1, 1, v20);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1001A34A8((v15 > 1), v16 + 1, 1, v5);
      }

      *(v5 + 2) = v16 + 1;
      v17 = &v5[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      v4 = v19;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v18 = *(v0 + 8);

  v18(v5);
}

uint64_t sub_1004B0FD8()
{
  type metadata accessor for LocalizedStringResource();
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_1004B1064, 0, 0);
}

char *sub_1004B1064()
{
  if (qword_1008DAC48 != -1)
  {
    swift_once();
  }

  v1 = sub_1004ACF2C();
  if (v1 >> 62)
  {
    v16 = v1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v16;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  v3 = v1;
  result = sub_100186428(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  sub_100140278(&unk_1008F8F40);
  v5 = 0;
  v6 = v3;
  v18 = v3 & 0xC000000000000001;
  v7 = v3;
  v8 = v2;
  do
  {
    if (v18)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * v5 + 32);
    }

    v10 = v9;
    LocalizedStringResource.init(stringLiteral:)();
    v11 = EntityProperty<>.init(title:)();

    v12 = v10;
    *(v0 + 24) = [v12 unearned] ^ 1;
    EntityProperty.wrappedValue.setter();

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      sub_100186428((v13 > 1), v14 + 1, 1);
    }

    ++v5;
    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v6 = v7;
  }

  while (v8 != v5);
LABEL_15:

  v17 = *(v0 + 8);

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_1004B12AC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  type metadata accessor for LocalizedStringResource();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004B133C, 0, 0);
}

uint64_t sub_1004B133C()
{
  v37 = v0;
  if (qword_1008DAC48 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = sub_1004AD2DC();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_27:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v34 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_4:
  v4 = 0;
  v33 = v2 & 0xC000000000000001;
  v5 = _swiftEmptyArrayStorage;
  v31 = v3;
  v32 = v2;
  do
  {
    v30 = v5;
    v6 = v4;
    while (1)
    {
      if (v33)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v34 + 16))
        {
          goto LABEL_24;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_100140278(&unk_1008F8F40);
      LocalizedStringResource.init(stringLiteral:)();
      v9 = EntityProperty<>.init(title:)();

      v10 = v8;
      *(v0 + 72) = [v10 unearned] ^ 1;
      EntityProperty.wrappedValue.setter();

      v35 = 0;
      v36 = 0xE000000000000000;
      v11 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
      v12 = [v11 titleForAchievement:v10];

      if (v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v13 = sub_100073DA0(v10);
        v15 = v16;
      }

      v17 = *(v0 + 48);
      v18 = *(v0 + 56);
      v19._countAndFlagsBits = v13;
      v19._object = v15;
      String.append(_:)(v19);

      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = sub_1005CA540(v10);
      String.append(_:)(v21);

      v22 = v36;
      *(v0 + 16) = v35;
      *(v0 + 24) = v22;
      *(v0 + 32) = v17;
      *(v0 + 40) = v18;
      sub_10000FCBC();
      v23 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

      if (v23)
      {
        break;
      }

      ++v6;
      v2 = v32;
      if (v4 == v31)
      {
        v5 = v30;
        goto LABEL_28;
      }
    }

    v5 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1001A34A8(0, *(v30 + 2) + 1, 1, v30);
    }

    v25 = *(v5 + 2);
    v24 = *(v5 + 3);
    if (v25 >= v24 >> 1)
    {
      v5 = sub_1001A34A8((v24 > 1), v25 + 1, 1, v5);
    }

    *(v5 + 2) = v25 + 1;
    v26 = &v5[16 * v25];
    *(v26 + 4) = v9;
    *(v26 + 5) = v10;
    v2 = v32;
  }

  while (v4 != v31);
LABEL_28:

  v35 = v5;

  sub_1004AE040(&v35);

  v27 = v35;

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t type metadata accessor for TrendArrowIndicatorViewRepresentable()
{
  result = qword_1008EF168;
  if (!qword_1008EF168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B17A4()
{
  type metadata accessor for TrendListMetric();
  if (v0 <= 0x3F)
  {
    sub_1004B1830();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004B1830()
{
  if (!qword_1008E63B8)
  {
    type metadata accessor for DashboardCardCellViewCache();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E63B8);
    }
  }
}

uint64_t sub_1004B1888(void *a1)
{
  v3 = type metadata accessor for TrendArrowIndicatorViewRepresentable();
  v4 = *&v1[*(v3 + 24)];
  if (v1[*(v3 + 20)] == 1)
  {
    if (!v4 || (v5 = *v1, swift_beginAccess(), v6 = *(v4 + 32), !*(v6 + 16)))
    {
LABEL_9:
      v11 = 1;
      return sub_1004B1998(a1, v1[1], v11);
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *v1;
    swift_beginAccess();
    v6 = *(v4 + 24);
    if (!*(v6 + 16))
    {
      goto LABEL_9;
    }
  }

  v7 = sub_1004CD4B0(v5);
  if (v8)
  {
    v9 = *(*(v6 + 56) + v7);
    v10 = *(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection);
    *(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection) = v9;
    *(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_oldDirection) = v10;
    v11 = v9 == 1;
  }

  else
  {
    v11 = 1;
  }

  return sub_1004B1998(a1, v1[1], v11);
}

uint64_t sub_1004B1998(void *a1, char a2, char a3)
{
  v7 = type metadata accessor for TrendArrowIndicatorViewRepresentable();
  v8 = *&v3[*(v7 + 24)];
  if (v3[*(v7 + 20)] == 1)
  {
    if (v8)
    {
      v9 = *v3;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v8 + 32);
      *(v8 + 32) = 0x8000000000000000;
      sub_100491740(a2, v9, isUniquelyReferenced_nonNull_native);
      *(v8 + 32) = v16;
LABEL_6:
      swift_endAccess();
    }
  }

  else if (v8)
  {
    v11 = *v3;
    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v8 + 24);
    *(v8 + 24) = 0x8000000000000000;
    sub_100491740(a2, v11, v12);
    *(v8 + 24) = v17;
    goto LABEL_6;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 25) = a3 & 1;
  v14 = a1;
  sub_1001B1314(sub_1004B1D24, v13);
}

char *sub_1004B1B0C()
{
  type metadata accessor for TrendArrowIndicatorView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_100582888(*v0);
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors];
  *&v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors] = v3;
  v5 = v3;

  sub_100513D74();
  return v1;
}

uint64_t sub_1004B1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B1D54(&qword_1008EF1B0);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004B1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B1D54(&qword_1008EF1B0);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1004B1CAC()
{
  sub_1004B1D54(&qword_1008EF1B0);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1004B1D54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrendArrowIndicatorViewRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004B1D98()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_1004B1E7C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivityRingsCard();
      if (v2 <= 0x3F)
      {
        sub_10005C6EC();
        if (v3 <= 0x3F)
        {
          sub_1004A9304();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1004B1E7C()
{
  if (!qword_1008EF228)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EF228);
    }
  }
}

uint64_t sub_1004B1EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v38 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityRingsCardView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34[2] = v8;
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdaptiveStackType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v34 - v15;
  v17 = sub_100140278(&qword_1008EF270);
  v36 = *(v17 - 8);
  v37 = v17;
  __chkstk_darwin(v17);
  v35 = v34 - v18;
  v19 = v2 + *(v6 + 28);
  v20 = *(v19 + 40);
  v21 = *(v19 + 48);
  v43 = *v19;
  v44 = *(v19 + 8);
  v45 = *(v19 + 24);
  v46 = v20;
  v47 = v21;
  sub_100140278(&qword_1008EF278);
  State.wrappedValue.getter();
  v22 = &enum case for AdaptiveStackType.horizontal(_:);
  if (v42 >= 2u)
  {
    v22 = &enum case for AdaptiveStackType.vertical(_:);
  }

  (*(v11 + 104))(v13, *v22, v10);
  v23 = *(v11 + 32);
  v34[1] = v16;
  v23(v16, v13, v10);
  v34[0] = static VerticalAlignment.top.getter();
  v24 = *(v19 + 40);
  v25 = *(v19 + 48);
  v43 = *v19;
  v44 = *(v19 + 8);
  v45 = *(v19 + 24);
  v46 = v24;
  v47 = v25;
  State.wrappedValue.getter();
  if (v42 >= 2u && (static Solarium.isEnabled.getter() & 1) != 0)
  {
    static HorizontalAlignment.leading.getter();
  }

  else
  {
    static HorizontalAlignment.center.getter();
  }

  sub_1004B69AC(v2, v9);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  sub_1004B6A10(v9, v27 + v26);
  sub_100140278(&qword_1008EF280);
  sub_10014A6B0(&qword_1008EF288, &qword_1008EF280);
  v28 = v35;
  AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
  v29 = v38;
  sub_10005491C(v38);
  sub_1004B69AC(v2, v9);
  v30 = swift_allocObject();
  sub_1004B6A10(v9, v30 + v26);
  sub_10014A6B0(&qword_1008EF290, &qword_1008EF270);
  sub_100073CB0(&qword_1008EF298, &type metadata accessor for DynamicTypeSize);
  v31 = v37;
  v32 = v41;
  View.onChange<A>(of:initial:_:)();

  (*(v40 + 8))(v29, v32);
  return (*(v36 + 8))(v28, v31);
}

uint64_t sub_1004B2458@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100140278(&qword_1008EF2A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47[-v5];
  v49 = sub_100140278(&qword_1008EF2A8);
  __chkstk_darwin(v49);
  v8 = &v47[-v7];
  v9 = sub_100140278(&qword_1008EF2B0);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v51 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v50 = &v47[-v12];
  sub_1004B2B24(v81);
  v13 = a1 + *(type metadata accessor for ActivityRingsCardView() + 20);
  v14 = *(v13 + 40);
  v15 = *(v13 + 48);
  LOBYTE(v62[0]) = *v13;
  *(v62 + 8) = *(v13 + 8);
  *(&v62[1] + 8) = *(v13 + 24);
  *(&v62[2] + 1) = v14;
  *&v63 = v15;
  sub_100140278(&qword_1008EF278);
  State.wrappedValue.getter();
  if (!v83 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    sub_1004D4E20();
  }

  v16 = *(v13 + 40);
  v17 = *(v13 + 48);
  LOBYTE(v62[0]) = *v13;
  *(v62 + 8) = *(v13 + 8);
  *(&v62[1] + 8) = *(v13 + 24);
  *(&v62[2] + 1) = v16;
  *&v63 = v17;
  State.wrappedValue.getter();
  if (!v82 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    sub_1004D4E20();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v73 = v81[0];
  v74 = v81[1];
  v75 = v81[2];
  v18 = *(v13 + 40);
  v19 = *(v13 + 48);
  LOBYTE(v62[0]) = *v13;
  *(v62 + 8) = *(v13 + 8);
  *(&v62[1] + 8) = *(v13 + 24);
  *(&v62[2] + 1) = v18;
  *&v63 = v19;
  State.wrappedValue.getter();
  sub_1004D4E20();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v48 = static Edge.Set.all.getter();
  v79 = 0;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v28 = sub_100140278(&qword_1008EF2B8);
  sub_1004B2F84(a1, &v6[*(v28 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10009914C(v6, v8);
  v29 = &v8[*(v49 + 36)];
  v30 = v81[8];
  v29[4] = v81[7];
  v29[5] = v30;
  v29[6] = v81[9];
  v31 = v81[4];
  *v29 = v81[3];
  v29[1] = v31;
  v32 = v81[6];
  v29[2] = v81[5];
  v29[3] = v32;
  v33 = Solarium.init()();
  __chkstk_darwin(v33);
  sub_100140278(&qword_1008EF2C0);
  sub_1004B6B04();
  sub_1004B6D58(&qword_1008EF2D8, &qword_1008EF2C0, &unk_1006F3F00, sub_1004B6B04);
  v34 = v50;
  View.staticIf<A, B>(_:then:)();
  sub_10000EA04(v8, &qword_1008EF2A8);
  v36 = v51;
  v35 = v52;
  v37 = *(v52 + 16);
  v38 = v53;
  v37(v51, v34, v53);
  v56 = v75;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v54 = v73;
  v55 = v74;
  v39 = v48;
  LOBYTE(v60) = v48;
  *(&v60 + 1) = *v80;
  DWORD1(v60) = *&v80[3];
  *(&v60 + 1) = v21;
  *&v61[0] = v23;
  *(&v61[0] + 1) = v25;
  *&v61[1] = v27;
  BYTE8(v61[1]) = 0;
  v40 = v76;
  a2[2] = v75;
  a2[3] = v40;
  v41 = v59;
  a2[4] = v58;
  a2[5] = v41;
  v42 = v55;
  *a2 = v54;
  a2[1] = v42;
  *(a2 + 121) = *(v61 + 9);
  v43 = v61[0];
  a2[6] = v60;
  a2[7] = v43;
  v44 = sub_100140278(&qword_1008EF2E0);
  v37(a2 + *(v44 + 48), v36, v38);
  sub_10001B104(&v54, v62, &qword_1008EF2E8);
  v45 = *(v35 + 8);
  v45(v34, v38);
  v45(v36, v38);
  v62[2] = v75;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  v62[0] = v73;
  v62[1] = v74;
  v66 = v39;
  *v67 = *v80;
  *&v67[3] = *&v80[3];
  v68 = v21;
  v69 = v23;
  v70 = v25;
  v71 = v27;
  v72 = 0;
  return sub_10000EA04(v62, &qword_1008EF2E8);
}

double sub_1004B2B24@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for ActivityRingsCardView();
  v37 = *(v3 - 1);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = v1 + v3[6];
  v9 = type metadata accessor for ActivityRingsCard();
  v10 = *(v8 + v9[9]);
  v11 = v1 + v3[5];
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);
  LOBYTE(v45) = *v11;
  v46 = *(v11 + 8);
  v47 = *(v11 + 24);
  v48 = v12;
  v49 = v13;
  v40 = v10;
  sub_100140278(&qword_1008EF278);
  State.wrappedValue.getter();
  if (v50)
  {
    if (v50 == 1)
    {
      v14 = (v51 + -15.0 + -15.0) / 3.0;
    }

    else
    {
      v14 = 80.0;
    }
  }

  else if (static Solarium.isEnabled.getter())
  {
    v14 = 138.0;
  }

  else
  {
    v15 = (v51 + -15.0 + -15.0) * 0.5;
    sub_1004D4E20();
    v14 = v15 - v16;
  }

  v17 = *(v8 + v9[12]);
  if (v17 == 2)
  {
    if (!v10 || [v40 _wheelchairUse] != 2)
    {
      goto LABEL_11;
    }
  }

  else if ((v17 & 1) == 0)
  {
LABEL_11:
    v18 = 1;
    goto LABEL_14;
  }

  v18 = 2;
LABEL_14:
  sub_10001B104(v8 + v9[10], v7, &unk_1008F73A0);
  v19 = type metadata accessor for Date();
  v20 = 1;
  v21 = (*(*(v19 - 8) + 48))(v7, 1, v19);
  sub_10000EA04(v7, &unk_1008F73A0);
  if (v21 == 1)
  {
    if (v10)
    {
      v20 = [v40 paused];
    }

    else
    {
      v20 = 0;
    }
  }

  v22 = *(*(v2 + v3[8] + 8) + 16);
  v23 = v38;
  sub_1004B69AC(v2, v38);
  v24 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v25 = swift_allocObject();
  sub_1004B6A10(v23, v25 + v24);
  v26 = objc_opt_self();
  [v26 preferredActivityRingThicknessForDiameter:v14];
  v28 = v27;
  [v26 preferredActivityRingInterspacingForDiameter:v14];
  v30 = v29;
  if (v10)
  {
    v20 = [v40 paused];
  }

  *&v31 = v14;
  *&v42 = v10;
  *&v32 = v28;
  *&v33 = v30;
  BYTE8(v42) = v20;
  HIDWORD(v42) = v31;
  *&v43 = __PAIR64__(v33, v32);
  WORD4(v43) = 258;
  BYTE10(v43) = 0;
  BYTE11(v43) = v18;
  BYTE12(v43) = v22;
  *&v44 = sub_1004B6F7C;
  *(&v44 + 1) = v25;
  v45 = v10;
  LOBYTE(v46) = v20;
  *(&v46 + 4) = __PAIR64__(v32, v31);
  HIDWORD(v46) = v33;
  LOWORD(v47) = 258;
  BYTE2(v47) = 0;
  BYTE3(v47) = v18;
  BYTE4(v47) = v22;
  *(&v47 + 1) = sub_1004B6F7C;
  v48 = v25;
  sub_1004B7008(&v42, v41);
  sub_1004B7064(&v45);
  v34 = v43;
  v35 = v39;
  *v39 = v42;
  v35[1] = v34;
  result = *&v44;
  v35[2] = v44;
  return result;
}

uint64_t sub_1004B2F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v60 = type metadata accessor for Text.Sizing();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008EF2F0);
  __chkstk_darwin(v4 - 8);
  v54 = (&v54 - v5);
  v65 = sub_100140278(&qword_1008EF2F8);
  __chkstk_darwin(v65);
  v55 = &v54 - v6;
  v66 = sub_100140278(&qword_1008EF300);
  v58 = *(v66 - 8);
  __chkstk_darwin(v66);
  v56 = &v54 - v7;
  v62 = sub_100140278(&qword_1008EF308);
  __chkstk_darwin(v62);
  v61 = &v54 - v8;
  v63 = sub_100140278(&qword_1008EF310);
  __chkstk_darwin(v63);
  v10 = &v54 - v9;
  v11 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_100140278(&qword_1008EF318);
  __chkstk_darwin(v14 - 8);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for ActivityRingsCardView();
  v20 = a1;
  v21 = a1 + *(v19 + 24);
  v22 = type metadata accessor for ActivityRingsCard();
  sub_10001B104(v21 + *(v22 + 40), v13, &unk_1008F73A0);
  v23 = type metadata accessor for Date();
  LODWORD(a1) = (*(*(v23 - 8) + 48))(v13, 1, v23);
  sub_10000EA04(v13, &unk_1008F73A0);
  if (a1 != 1 || (v24 = *(v21 + *(v22 + 36))) != 0 && [v24 paused])
  {
    *v10 = static HorizontalAlignment.leading.getter();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v25 = sub_100140278(&qword_1008EF348);
    sub_1004B3B88(v20, &v10[*(v25 + 44)]);
    sub_10001B104(v10, v61, &qword_1008EF310);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008EF338, &qword_1008EF310);
    v26 = sub_1004B6BBC();
    v68 = v65;
    *&v69 = v26;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v10, &qword_1008EF310);
  }

  else
  {
    v27 = static HorizontalAlignment.leading.getter();
    v28 = v54;
    *v54 = v27;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    v29 = sub_100140278(&qword_1008EF320);
    sub_1004B478C(v20, v28 + *(v29 + 44));
    v30 = static Edge.Set.top.getter();
    v31 = v20 + *(v19 + 20);
    v32 = *(v31 + 40);
    v33 = *(v31 + 48);
    LOBYTE(v68) = *v31;
    v69 = *(v31 + 8);
    v70 = *(v31 + 24);
    v71 = v32;
    v72 = v33;
    sub_100140278(&qword_1008EF278);
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v55;
    sub_100015E80(v28, v55, &qword_1008EF2F0);
    v43 = v65;
    v44 = v42 + *(v65 + 36);
    *v44 = v30;
    *(v44 + 8) = v35;
    *(v44 + 16) = v37;
    *(v44 + 24) = v39;
    *(v44 + 32) = v41;
    *(v44 + 40) = 0;
    v45 = v57;
    static Text.Sizing.adjustsForOversizedCharacters.getter();
    v46 = sub_1004B6BBC();
    v47 = v56;
    View.textSizing(_:)();
    (*(v59 + 8))(v45, v60);
    sub_10000EA04(v42, &qword_1008EF2F8);
    v48 = v58;
    v49 = v66;
    (*(v58 + 16))(v61, v47, v66);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008EF338, &qword_1008EF310);
    v68 = v43;
    *&v69 = v46;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v48 + 8))(v47, v49);
  }

  v50 = v64;
  sub_10001B104(v18, v64, &qword_1008EF318);
  v51 = v67;
  sub_10001B104(v50, v67, &qword_1008EF318);
  v52 = v51 + *(sub_100140278(&qword_1008EF340) + 48);
  *v52 = 0;
  *(v52 + 8) = 0;
  sub_10000EA04(v18, &qword_1008EF318);
  return sub_10000EA04(v50, &qword_1008EF318);
}

uint64_t sub_1004B3790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.trailing.getter();
  type metadata accessor for ActivityRingsCardView();
  sub_100140278(&qword_1008EF278);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10001B104(a1, a2, &qword_1008EF2A8);
  result = sub_100140278(&qword_1008EF2C0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1004B38A4(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005491C(v5);
  v6 = type metadata accessor for ActivityRingsCardView();
  v7 = v6[10];
  *&v8 = *(a1 + v6[9]);
  v25 = v8;
  *&v8 = *(a1 + v7);
  v23 = v8;
  v24 = *(a1 + v7 + 8);
  v9 = *(a1 + v7 + 24);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for DynamicTypeSize.xSmall(_:) || v10 == enum case for DynamicTypeSize.small(_:) || v10 == enum case for DynamicTypeSize.medium(_:) || v10 == enum case for DynamicTypeSize.large(_:))
  {
    v14 = 0;
  }

  else
  {
    if (v10 == enum case for DynamicTypeSize.xLarge(_:) || v10 == enum case for DynamicTypeSize.xxLarge(_:) || v10 == enum case for DynamicTypeSize.xxxLarge(_:))
    {
      goto LABEL_26;
    }

    v14 = 2;
    if (v10 != enum case for DynamicTypeSize.accessibility1(_:) && v10 != enum case for DynamicTypeSize.accessibility2(_:) && v10 != enum case for DynamicTypeSize.accessibility3(_:) && v10 != enum case for DynamicTypeSize.accessibility4(_:) && v10 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v3 + 8))(v5, v2);
LABEL_26:
      v14 = 1;
    }
  }

  v17 = (a1 + v6[5]);
  v18 = *(v17 + 5);
  v19 = *(v17 + 6);
  v30 = *v17;
  v20 = *(v17 + 24);
  v31 = *(v17 + 8);
  v32 = v20;
  v33 = v18;
  v34 = v19;
  v26 = v14;
  *&v21 = v25;
  *(&v21 + 1) = v23;
  v27 = v21;
  v28 = v24;
  v29 = v9;

  sub_100140278(&qword_1008EF278);
  State.wrappedValue.setter();
}

uint64_t sub_1004B3B28(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRingsCardView();
  v3 = a1 + *(v2 + 24);
  result = type metadata accessor for ActivityRingsCard();
  if (*(v3 + *(result + 36)))
  {
    *(*(a1 + *(v2 + 32) + 8) + 16) = 0;
  }

  return result;
}

void sub_1004B3B88(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v140 = a1;
  v138 = a2;
  v2 = sub_100140278(&qword_1008EF350);
  v136 = *(v2 - 8);
  v137 = v2;
  __chkstk_darwin(v2);
  v131 = v116 - v3;
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v6 = v116 - v5;
  v7 = type metadata accessor for Date();
  v143 = *(v7 - 8);
  __chkstk_darwin(v7);
  v141 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008EF358);
  __chkstk_darwin(v9 - 8);
  v139 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v116 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v19 = Text.font(_:)();
  v144 = v20;
  v145 = v19;
  v22 = v21;
  v135 = v23;

  sub_10004642C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v134 = static Edge.Set.top.getter();
  v24 = type metadata accessor for ActivityRingsCardView();
  v25 = v140;
  v26 = v140 + *(v24 + 20);
  v27 = *(v26 + 40);
  v28 = *(v26 + 48);
  LOBYTE(v154[0]) = *v26;
  *(v154 + 8) = *(v26 + 8);
  *(&v154[1] + 8) = *(v26 + 24);
  *(&v154[2] + 1) = v27;
  *&v155 = v28;
  v29 = sub_100140278(&qword_1008EF278);
  State.wrappedValue.getter();
  v167 = v22 & 1;
  v166 = 0;
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v38) = v167;
  v132 = v166;
  v171 = 0;
  v39 = v25 + *(v24 + 24);
  v40 = v39 + *(type metadata accessor for ActivityRingsCard() + 40);
  v41 = v143;
  sub_10001B104(v40, v6, &unk_1008F73A0);
  v42 = (*(v41 + 48))(v6, 1, v7);
  v142 = v38;
  if (v42 == 1)
  {
    sub_10000EA04(v6, &unk_1008F73A0);
    (*(v136 + 56))(v13, 1, 1, v137);
    v43 = v13;
LABEL_7:
    v105 = v139;
    sub_10001B104(v43, v139, &qword_1008EF358);
    *&v148 = v145;
    *(&v148 + 1) = v144;
    LOBYTE(v149) = v38;
    *(&v149 + 1) = v170[0];
    DWORD1(v149) = *(v170 + 3);
    v106 = v135;
    *(&v149 + 1) = v135;
    *&v150 = 0x3FF0000000000000;
    v107 = KeyPath;
    *(&v150 + 1) = KeyPath;
    *&v151 = 4;
    v108 = v132;
    BYTE8(v151) = v132;
    *(&v151 + 9) = *v169;
    HIDWORD(v151) = *&v169[3];
    v109 = v134;
    LOBYTE(v152) = v134;
    DWORD1(v152) = *&v168[3];
    *(&v152 + 1) = *v168;
    *(&v152 + 1) = v31;
    *&v153[0] = v33;
    *(&v153[0] + 1) = v35;
    *&v153[1] = v37;
    BYTE8(v153[1]) = 0;
    v110 = v149;
    v111 = v138;
    *v138 = v148;
    v111[1] = v110;
    v112 = v150;
    v113 = v151;
    *(v111 + 89) = *(v153 + 9);
    v114 = v153[0];
    v111[4] = v152;
    v111[5] = v114;
    v111[2] = v112;
    v111[3] = v113;
    v115 = v111 + *(sub_100140278(&qword_1008EF360) + 48);
    sub_10001B104(v105, v115, &qword_1008EF358);
    sub_10001B104(&v148, v154, &qword_1008EF368);
    sub_10000EA04(v43, &qword_1008EF358);
    sub_10000EA04(v105, &qword_1008EF358);
    *&v154[0] = v145;
    *(&v154[0] + 1) = v144;
    LOBYTE(v154[1]) = v142;
    *(&v154[1] + 1) = v170[0];
    DWORD1(v154[1]) = *(v170 + 3);
    *(&v154[1] + 1) = v106;
    *&v154[2] = 0x3FF0000000000000;
    *(&v154[2] + 1) = v107;
    *&v155 = 4;
    BYTE8(v155) = v108;
    *(&v155 + 9) = *v169;
    HIDWORD(v155) = *&v169[3];
    LOBYTE(v156) = v109;
    DWORD1(v156) = *&v168[3];
    *(&v156 + 1) = *v168;
    *(&v156 + 1) = v31;
    *&v157 = v33;
    *(&v157 + 1) = v35;
    *&v158 = v37;
    BYTE8(v158) = 0;
    sub_10000EA04(v154, &qword_1008EF368);
    return;
  }

  v140 = v29;
  v120 = v37;
  v121 = v35;
  v122 = v33;
  v123 = v31;
  v124 = v13;
  v44 = *(v41 + 32);
  v119 = v7;
  v44(v141, v6, v7);
  v129 = objc_opt_self();
  v45 = [v129 mainBundle];
  v130 = "PAUSE_RINGS_TODAY_DESCRIPTION";
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 localizedStringForKey:v46 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = sub_100140278(&unk_1008E4E50);
  v48 = swift_allocObject();
  v127 = xmmword_1006D46C0;
  *(v48 + 16) = xmmword_1006D46C0;
  if (qword_1008DAC50 != -1)
  {
    swift_once();
  }

  v49 = qword_1008EF1B8;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v51 = [v49 stringFromDate:isa];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(v48 + 56) = &type metadata for String;
  v117 = sub_10000A788();
  *(v48 + 64) = v117;
  *(v48 + 32) = v52;
  *(v48 + 40) = v54;
  v55 = String.init(format:_:)();
  v57 = v56;

  *&v154[0] = v55;
  *(&v154[0] + 1) = v57;
  v58 = sub_10000FCBC();
  v116[1] = v57;

  v118 = v58;
  v59 = Text.init<A>(_:)();
  v61 = v60;
  LOBYTE(v57) = v62;
  static Font.footnote.getter();
  v125 = Text.font(_:)();
  v126 = v63;
  v65 = v64;
  v67 = v66;

  sub_10004642C(v59, v61, v57 & 1);

  v68 = swift_getKeyPath();
  v165 = v67 & 1;
  v164 = 0;
  LOBYTE(v57) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v165;
  v78 = v164;
  v162 = 0;
  LOBYTE(v52) = static Edge.Set.bottom.getter();
  v79 = *(v26 + 40);
  v80 = *(v26 + 48);
  LOBYTE(v154[0]) = *v26;
  *(v154 + 8) = *(v26 + 8);
  *(&v154[1] + 8) = *(v26 + 24);
  *(&v154[2] + 1) = v79;
  *&v155 = v80;
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v163 = 0;
  v89 = static HierarchicalShapeStyle.secondary.getter();
  *&v154[0] = v125;
  *(&v154[0] + 1) = v65;
  LOBYTE(v154[1]) = v77;
  *(&v154[1] + 1) = v126;
  *&v154[2] = 0x3FF0000000000000;
  *(&v154[2] + 1) = v68;
  *&v155 = 4;
  BYTE8(v155) = v78;
  LOBYTE(v156) = v57;
  *(&v156 + 1) = v70;
  *&v157 = v72;
  *(&v157 + 1) = v74;
  *&v158 = v76;
  BYTE8(v158) = 0;
  LOBYTE(v159) = v52;
  v90 = v141;
  *(&v159 + 1) = v82;
  *&v160 = v84;
  *(&v160 + 1) = v86;
  *&v161 = v88;
  BYTE8(v161) = 0;
  HIDWORD(v161) = v89;
  v91 = [v129 mainBundle];
  v92 = String._bridgeToObjectiveC()();
  v93 = [v91 localizedStringForKey:v92 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = swift_allocObject();
  *(v38 + 16) = v127;
  v94 = Date._bridgeToObjectiveC()().super.isa;
  v95 = String._bridgeToObjectiveC()();
  v96 = AXDateStringForFormat();

  if (v96)
  {

    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = v117;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = v100;
    *(v38 + 32) = v97;
    *(v38 + 40) = v99;
    v101 = String.init(format:_:)();
    v103 = v102;

    v146 = v101;
    v147 = v103;
    sub_100140278(&qword_1008EF370);
    sub_1004B6C74();
    v104 = v131;
    View.accessibilityLabel<A>(_:)();

    v153[1] = v158;
    v153[2] = v159;
    v153[3] = v160;
    v153[4] = v161;
    v150 = v154[2];
    v151 = v155;
    v152 = v156;
    v153[0] = v157;
    v148 = v154[0];
    v149 = v154[1];
    sub_10000EA04(&v148, &qword_1008EF370);
    (*(v143 + 8))(v90, v119);
    v43 = v124;
    sub_100015E80(v104, v124, &qword_1008EF350);
    (*(v136 + 56))(v43, 0, 1, v137);
    v33 = v122;
    v31 = v123;
    v37 = v120;
    v35 = v121;
    LOBYTE(v38) = v142;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004B471C()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  qword_1008EF1B8 = v0;
}

id sub_1004B478C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v267 = a1;
  v260 = a2;
  v2 = sub_100140278(&qword_1008EF3C8);
  v252 = *(v2 - 8);
  v253 = v2;
  __chkstk_darwin(v2);
  v238 = &v219 - v3;
  v4 = sub_100140278(&qword_1008EF3D0);
  __chkstk_darwin(v4 - 8);
  v259 = &v219 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v264 = &v219 - v7;
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin(v8 - 8);
  v266 = &v219 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.Leading();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008DC450);
  __chkstk_darwin(v14 - 8);
  v251 = &v219 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v268 = &v219 - v17;
  __chkstk_darwin(v18);
  v262 = &v219 - v19;
  __chkstk_darwin(v20);
  v261 = &v219 - v21;
  __chkstk_darwin(v22);
  v24 = &v219 - v23;
  LocalizedStringKey.init(stringLiteral:)();
  v265 = Text.init(_:tableName:bundle:comment:)();
  v263 = v25;
  v27 = v26;
  v29 = v28;
  v30 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v325[0]) = v27 & 1;
  LOBYTE(v321[0]) = 0;
  static Font.body.getter();
  v39 = *(v11 + 104);
  v245 = enum case for Font.Leading.tight(_:);
  v246 = v11 + 104;
  v244 = v39;
  v39(v13);
  v40 = Font.leading(_:)();

  v41 = *(v11 + 8);
  v248 = v13;
  v249 = v11 + 8;
  v250 = v10;
  v243 = v41;
  v41(v13, v10);
  KeyPath = swift_getKeyPath();
  *&v321[0] = v265;
  *(&v321[0] + 1) = v263;
  LOBYTE(v321[1]) = v27 & 1;
  *(&v321[1] + 1) = v29;
  LOBYTE(v321[2]) = v30;
  *(&v321[2] + 1) = v32;
  *&v322 = v34;
  *(&v322 + 1) = v36;
  *&v323 = v38;
  BYTE8(v323) = 0;
  *&v324 = KeyPath;
  *(&v324 + 1) = v40;
  static FitnessAccessibilityIdentifier.ActivityRingsCardView.moveText.getter();
  v43 = sub_100140278(&qword_1008DC4A8);
  v44 = sub_100152FFC();
  v265 = v24;
  v241 = v44;
  v242 = v43;
  View.accessibilityIdentifier(_:)();

  v325[2] = v321[2];
  v325[3] = v322;
  v325[4] = v323;
  v325[5] = v324;
  v325[0] = v321[0];
  v325[1] = v321[1];
  sub_10000EA04(v325, &qword_1008DC4A8);
  v45 = v267;
  sub_1004B5D64(0, v266);
  v46 = Text.init(_:)();
  v48 = v47;
  LOBYTE(v10) = v49;
  v50 = sub_1001C8DCC();
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
  v52 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
  v53 = type metadata accessor for GradientColors();
  v54 = objc_allocWithZone(v53);
  *&v54[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v54[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v52;
  v316.receiver = v54;
  v240 = v53;
  v316.super_class = v53;
  v55 = objc_msgSendSuper2(&v316, "init");
  v247 = v50;
  v56 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
  v57 = type metadata accessor for MetricColors();
  v58 = objc_allocWithZone(v57);
  *&v58[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v55;
  *&v58[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v56;
  v315.receiver = v58;
  v239 = v57;
  v315.super_class = v57;
  v59 = objc_msgSendSuper2(&v315, "init");
  v60 = *&v59[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  *&v321[0] = Color.init(uiColor:)();
  v61 = Text.foregroundStyle<A>(_:)();
  v256 = v62;
  v257 = v61;
  LOBYTE(v57) = v63;
  v258 = v64;
  sub_10004642C(v46, v48, v10 & 1);

  v65 = type metadata accessor for ActivityRingsCardView();
  v66 = v45 + *(v65 + 20);
  v67 = *(v66 + 40);
  v68 = *(v66 + 48);
  LOBYTE(v321[0]) = *v66;
  *(v321 + 8) = *(v66 + 8);
  *(&v321[1] + 8) = *(v66 + 24);
  *(&v321[2] + 1) = v67;
  *&v322 = v68;
  v263 = sub_100140278(&qword_1008EF278);
  State.wrappedValue.getter();
  v69 = LOBYTE(v310[0]);
  v70 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LODWORD(v57) = v57 & 1;
  v320 = v57;
  v317 = 0;
  v79 = v45 + *(v65 + 24);
  v237 = type metadata accessor for ActivityRingsCard();
  v80 = *(v79 + *(v237 + 36));
  v255 = v70;
  v254 = v57;
  if (!v80)
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v84 = result;
    v85 = [result isStandalonePhoneFitnessMode];

    if (v85)
    {
      goto LABEL_3;
    }

LABEL_6:
    v220 = v80;
    v228 = v69;
    v229 = v72;
    LocalizedStringKey.init(stringLiteral:)();
    v236 = Text.init(_:tableName:bundle:comment:)();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = static Edge.Set.top.getter();
    v221 = v79;
    v93 = v92;
    v94 = *(v66 + 40);
    v95 = *(v66 + 48);
    LOBYTE(v321[0]) = *v66;
    *(v321 + 8) = *(v66 + 8);
    *(&v321[1] + 8) = *(v66 + 24);
    *(&v321[2] + 1) = v94;
    *&v322 = v95;
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = v89 & 1;
    v314 = v89 & 1;
    v313 = 0;
    static Font.body.getter();
    v105 = v248;
    v106 = v250;
    v244(v248, v245, v250);
    v107 = Font.leading(_:)();

    v243(v105, v106);
    v108 = swift_getKeyPath();
    *&v310[0] = v236;
    *(&v310[0] + 1) = v87;
    LOBYTE(v310[1]) = v104;
    *(&v310[1] + 1) = v91;
    LOBYTE(v310[2]) = v93;
    *(&v310[2] + 1) = v97;
    *&v311 = v99;
    *(&v311 + 1) = v101;
    *&v312[0] = v103;
    BYTE8(v312[0]) = 0;
    *&v312[1] = v108;
    *(&v312[1] + 1) = v107;
    static FitnessAccessibilityIdentifier.ActivityRingsCardView.exerciseText.getter();
    View.accessibilityIdentifier(_:)();

    v321[2] = v310[2];
    v322 = v311;
    v323 = v312[0];
    v324 = v312[1];
    v321[0] = v310[0];
    v321[1] = v310[1];
    sub_10000EA04(v321, &qword_1008DC4A8);
    sub_1004B5D64(1, v266);
    v109 = Text.init(_:)();
    v111 = v110;
    LOBYTE(v105) = v112;
    v113 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.6, 1.0, 0.0, 1.0).super.isa;
    v114 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.84706, 1.0, 0.0, 1.0).super.isa;
    v115 = v240;
    v116 = objc_allocWithZone(v240);
    *&v116[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v113;
    *&v116[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v114;
    v305.receiver = v116;
    v305.super_class = v115;
    v117 = objc_msgSendSuper2(&v305, "init");
    v118 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.65068, 1.0, 0.0, 1.0).super.isa;
    v119 = v239;
    v120 = objc_allocWithZone(v239);
    *&v120[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v117;
    *&v120[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v118;
    v304.receiver = v120;
    v304.super_class = v119;
    v121 = objc_msgSendSuper2(&v304, "init");
    v122 = *&v121[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    *&v310[0] = Color.init(uiColor:)();
    v123 = Text.foregroundStyle<A>(_:)();
    v234 = v124;
    v235 = v123;
    v126 = v125;
    v236 = v127;
    sub_10004642C(v109, v111, v105 & 1);

    v128 = *(v66 + 40);
    v129 = *(v66 + 48);
    LOBYTE(v310[0]) = *v66;
    *(v310 + 8) = *(v66 + 8);
    *(&v310[1] + 8) = *(v66 + 24);
    *(&v310[2] + 1) = v128;
    *&v311 = v129;
    State.wrappedValue.getter();
    v130 = -7.0;
    if (LOBYTE(v298[0]) < 2u)
    {
      v130 = -4.0;
    }

    v233 = v130;
    v232 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v226 = v131;
    v227 = v74;
    v224 = v132;
    v225 = v76;
    v231 = v133;
    v222 = v134;
    v223 = v78;
    v230 = v126 & 1;
    v309 = v126 & 1;
    v306 = 0;
    if (*(v221 + *(v237 + 48)) == 2 && v220)
    {
      [v220 _wheelchairUse];
    }

    LocalizedStringKey.init(stringLiteral:)();
    v237 = Text.init(_:tableName:bundle:comment:)();
    v221 = v135;
    v137 = v136;
    v139 = v138;
    v140 = static Edge.Set.top.getter();
    v141 = *(v66 + 40);
    v142 = *(v66 + 48);
    LOBYTE(v310[0]) = *v66;
    *(v310 + 8) = *(v66 + 8);
    *(&v310[1] + 8) = *(v66 + 24);
    *(&v310[2] + 1) = v141;
    *&v311 = v142;
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v151 = v137 & 1;
    v303 = v137 & 1;
    v302 = 0;
    static Font.body.getter();
    v152 = v248;
    v153 = v250;
    v244(v248, v245, v250);
    v154 = Font.leading(_:)();

    v243(v152, v153);
    v155 = swift_getKeyPath();
    *&v298[0] = v237;
    *(&v298[0] + 1) = v221;
    LOBYTE(v298[1]) = v151;
    *(&v298[1] + 1) = v139;
    LOBYTE(v298[2]) = v140;
    *(&v298[2] + 1) = v144;
    *&v299 = v146;
    *(&v299 + 1) = v148;
    *&v300 = v150;
    BYTE8(v300) = 0;
    *&v301 = v155;
    *(&v301 + 1) = v154;
    static FitnessAccessibilityIdentifier.ActivityRingsCardView.standOrRollText.getter();
    View.accessibilityIdentifier(_:)();

    v310[2] = v298[2];
    v311 = v299;
    v312[0] = v300;
    v312[1] = v301;
    v310[0] = v298[0];
    v310[1] = v298[1];
    sub_10000EA04(v310, &qword_1008DC4A8);
    sub_1004B5D64(2, v266);
    v156 = Text.init(_:)();
    v158 = v157;
    v160 = v159;
    v161 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
    v162 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
    v163 = v240;
    v164 = objc_allocWithZone(v240);
    *&v164[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v161;
    *&v164[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v162;
    v293.receiver = v164;
    v293.super_class = v163;
    v165 = objc_msgSendSuper2(&v293, "init");
    v166 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
    v167 = v239;
    v168 = objc_allocWithZone(v239);
    *&v168[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v165;
    *&v168[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v166;
    v292.receiver = v168;
    v292.super_class = v167;
    v169 = objc_msgSendSuper2(&v292, "init");
    v170 = *&v169[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    *&v298[0] = Color.init(uiColor:)();
    v171 = Text.foregroundStyle<A>(_:)();
    v249 = v172;
    v250 = v171;
    v174 = v173;
    v266 = v175;
    sub_10004642C(v156, v158, v160 & 1);

    v176 = *(v66 + 40);
    v177 = *(v66 + 48);
    LOBYTE(v298[0]) = *v66;
    *(v298 + 8) = *(v66 + 8);
    *(&v298[1] + 8) = *(v66 + 24);
    *(&v298[2] + 1) = v176;
    *&v299 = v177;
    State.wrappedValue.getter();
    if (LOBYTE(v279[0]) >= 2u)
    {
      v178 = -7.0;
    }

    else
    {
      v178 = -4.0;
    }

    LODWORD(v267) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v180 = v179;
    v182 = v181;
    v184 = v183;
    v186 = v185;
    v187 = v174 & 1;
    v297 = v174 & 1;
    LODWORD(v263) = v174 & 1;
    v294 = 0;
    v188 = v268;
    sub_10001B104(v261, v268, &qword_1008DC450);
    v189 = v251;
    sub_10001B104(v262, v251, &qword_1008DC450);
    v190 = v188;
    v191 = v238;
    sub_10001B104(v190, v238, &qword_1008DC450);
    v192 = sub_100140278(&qword_1008EF3D8);
    v193 = (v191 + v192[12]);
    *&v269 = v235;
    *(&v269 + 1) = v234;
    LOBYTE(v270) = v230;
    *(&v270 + 1) = *v308;
    DWORD1(v270) = *&v308[3];
    *(&v270 + 1) = v236;
    *&v271 = 0;
    *(&v271 + 1) = v233;
    LOBYTE(v272) = v232;
    *(&v272 + 1) = *v307;
    DWORD1(v272) = *&v307[3];
    v194 = v226;
    v195 = v224;
    *(&v272 + 1) = v226;
    *&v273[0] = v224;
    v196 = v222;
    *(&v273[0] + 1) = v231;
    *&v273[1] = v222;
    BYTE8(v273[1]) = 0;
    v197 = v272;
    v193[2] = v271;
    v193[3] = v197;
    v193[4] = v273[0];
    *(v193 + 73) = *(v273 + 9);
    v198 = v270;
    *v193 = v269;
    v193[1] = v198;
    sub_10001B104(v189, v191 + v192[16], &qword_1008DC450);
    v199 = (v191 + v192[20]);
    v201 = v249;
    v200 = v250;
    *&v274 = v250;
    *(&v274 + 1) = v249;
    LOBYTE(v275) = v187;
    *(&v275 + 1) = *v296;
    DWORD1(v275) = *&v296[3];
    v202 = v266;
    *(&v275 + 1) = v266;
    *&v276 = 0;
    *(&v276 + 1) = v178;
    LOBYTE(v277) = v267;
    *(&v277 + 1) = *v295;
    DWORD1(v277) = *&v295[3];
    *(&v277 + 1) = v180;
    *&v278[0] = v182;
    *(&v278[0] + 1) = v184;
    *&v278[1] = v186;
    BYTE8(v278[1]) = 0;
    v203 = v278[0];
    v204 = v276;
    v199[3] = v277;
    v199[4] = v203;
    *(v199 + 73) = *(v278 + 9);
    v205 = v275;
    *v199 = v274;
    v199[1] = v205;
    v199[2] = v204;
    v206 = v191 + v192[24];
    *v206 = 0;
    *(v206 + 8) = 0;
    sub_10001B104(&v269, v298, &qword_1008E6C68);
    sub_10001B104(&v274, v298, &qword_1008E6C68);
    sub_10000EA04(v262, &qword_1008DC450);
    sub_10000EA04(v261, &qword_1008DC450);
    v279[0] = v200;
    v279[1] = v201;
    v280 = v263;
    v82 = v268;
    *v281 = *v296;
    *&v281[3] = *&v296[3];
    v282 = v202;
    v283 = 0;
    v284 = v178;
    v285 = v267;
    *v286 = *v295;
    *&v286[3] = *&v295[3];
    v287 = v180;
    v288 = v182;
    v289 = v184;
    v290 = v186;
    v291 = 0;
    sub_10000EA04(v279, &qword_1008E6C68);
    sub_10000EA04(v251, &qword_1008DC450);
    *&v298[0] = v235;
    *(&v298[0] + 1) = v234;
    LOBYTE(v298[1]) = v230;
    *(&v298[1] + 1) = *v308;
    DWORD1(v298[1]) = *&v308[3];
    *(&v298[1] + 1) = v236;
    *&v298[2] = 0;
    *(&v298[2] + 1) = v233;
    LOBYTE(v299) = v232;
    *(&v299 + 1) = *v307;
    DWORD1(v299) = *&v307[3];
    *(&v299 + 1) = v194;
    *&v300 = v195;
    *(&v300 + 1) = v231;
    *&v301 = v196;
    BYTE8(v301) = 0;
    sub_10000EA04(v298, &qword_1008E6C68);
    sub_10000EA04(v82, &qword_1008DC450);
    v81 = v264;
    sub_100015E80(v191, v264, &qword_1008EF3C8);
    (*(v252 + 56))(v81, 0, 1, v253);
    v72 = v229;
    v69 = v228;
    v74 = v227;
    v76 = v225;
    v78 = v223;
    goto LABEL_15;
  }

  if (([v80 _isStandalonePhoneSummary] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v81 = v264;
  (*(v252 + 56))(v264, 1, 1, v253);
  v82 = v268;
LABEL_15:
  if (v69 >= 2)
  {
    v207 = -7.0;
  }

  else
  {
    v207 = -4.0;
  }

  sub_10001B104(v265, v82, &qword_1008DC450);
  v208 = v259;
  sub_10001B104(v81, v259, &qword_1008EF3D0);
  v209 = v260;
  sub_10001B104(v82, v260, &qword_1008DC450);
  v210 = sub_100140278(&qword_1008EF3E0);
  v211 = (v209 + *(v210 + 48));
  v213 = v256;
  v212 = v257;
  *&v310[0] = v257;
  *(&v310[0] + 1) = v256;
  v214 = v254;
  LOBYTE(v310[1]) = v254;
  *(&v310[1] + 1) = *v319;
  DWORD1(v310[1]) = *&v319[3];
  v215 = v258;
  *(&v310[1] + 1) = v258;
  *&v310[2] = 0;
  *(&v310[2] + 1) = v207;
  v216 = v255;
  LOBYTE(v311) = v255;
  *(&v311 + 1) = *v318;
  DWORD1(v311) = *&v318[3];
  *(&v311 + 1) = v72;
  *&v312[0] = v74;
  *(&v312[0] + 1) = v76;
  *&v312[1] = v78;
  BYTE8(v312[1]) = 0;
  v217 = v311;
  v211[2] = v310[2];
  v211[3] = v217;
  v211[4] = v312[0];
  *(v211 + 73) = *(v312 + 9);
  v218 = v310[1];
  *v211 = v310[0];
  v211[1] = v218;
  sub_10001B104(v208, v209 + *(v210 + 64), &qword_1008EF3D0);
  sub_10001B104(v310, v321, &qword_1008E6C68);
  sub_10000EA04(v264, &qword_1008EF3D0);
  sub_10000EA04(v265, &qword_1008DC450);
  sub_10000EA04(v208, &qword_1008EF3D0);
  *&v321[0] = v212;
  *(&v321[0] + 1) = v213;
  LOBYTE(v321[1]) = v214;
  *(&v321[1] + 1) = *v319;
  DWORD1(v321[1]) = *&v319[3];
  *(&v321[1] + 1) = v215;
  *&v321[2] = 0;
  *(&v321[2] + 1) = v207;
  LOBYTE(v322) = v216;
  *(&v322 + 1) = *v318;
  DWORD1(v322) = *&v318[3];
  *(&v322 + 1) = v72;
  *&v323 = v74;
  *(&v323 + 1) = v76;
  *&v324 = v78;
  BYTE8(v324) = 0;
  sub_10000EA04(v321, &qword_1008E6C68);
  return sub_10000EA04(v268, &qword_1008DC450);
}

id sub_1004B5D64@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v107 - v9;
  v11 = v2 + *(type metadata accessor for ActivityRingsCardView() + 24);
  v12 = type metadata accessor for ActivityRingsCard();
  v13 = *(v11 + *(v12 + 36));
  if (v13)
  {
    v14 = *(v11 + *(v12 + 44));
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      if (a1)
      {
        if (a1 == 1)
        {
          v17 = [v15 appleExerciseTime];
          v18 = [v15 appleExerciseTimeGoal];
          if (qword_1008DACA8 != -1)
          {
            swift_once();
          }

          sub_10021D988(v17, v18, qword_100925BA0, v10);
        }

        else
        {
          v17 = [v15 appleStandHours];
          v18 = [v15 appleStandHoursGoal];
          if (qword_1008DACA8 != -1)
          {
            swift_once();
          }

          sub_10021DD98(v17, v18, qword_100925BA0, v10);
        }

        goto LABEL_48;
      }

      v20 = [v15 activityMoveMode];
      v114 = v16;
      if (v20 == 2)
      {
        v21 = [v15 appleMoveTime];
        v22 = [v15 appleMoveTimeGoal];
        if (qword_1008DACA8 != -1)
        {
          swift_once();
        }

        v113 = qword_100925BA0;
        if (v21)
        {
          v23 = v22 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          v24 = objc_opt_self();
          v25 = [v24 mainBundle];
          v112 = v21;
          v26 = v25;
          v27 = String._bridgeToObjectiveC()();
          v28 = [v26 localizedStringForKey:v27 value:0 table:0];

          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = [v24 mainBundle];
          v32 = String._bridgeToObjectiveC()();
          v33 = [v31 localizedStringForKey:v32 value:0 table:0];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          sub_1004C2DD4(v111, v30, v34, v36, 0, 0xE000000000000000, v113, v10);

LABEL_35:
          v75 = type metadata accessor for AttributedString();
          (*(*(v75 - 8) + 56))(v10, 0, 1, v75);
LABEL_47:
          v16 = v114;
LABEL_48:
          sub_10001B104(v10, v7, &unk_1008EE8E0);
          v104 = type metadata accessor for AttributedString();
          v105 = *(v104 - 8);
          v106 = *(v105 + 48);
          if (v106(v7, 1, v104) == 1)
          {
            AttributedString.init()();

            sub_10000EA04(v10, &unk_1008EE8E0);
            result = v106(v7, 1, v104);
            if (result != 1)
            {
              return sub_10000EA04(v7, &unk_1008EE8E0);
            }
          }

          else
          {
            sub_10000EA04(v10, &unk_1008EE8E0);

            return (*(v105 + 32))(a2, v7, v104);
          }

          return result;
        }

        v53 = objc_opt_self();
        v54 = v21;
        v112 = v22;
        v55 = [v53 minuteUnit];
        v56 = objc_opt_self();
        v110 = v54;
        v111 = v55;
        [v54 doubleValueForUnit:v55];
        v58 = [objc_allocWithZone(NSNumber) initWithDouble:v57];
        v59 = [v56 stringWithNumber:v58 decimalPrecision:1 roundingMode:1];

        if (v59)
        {
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v109 = v60;

          [v112 doubleValueForUnit:v111];
          v62 = [objc_allocWithZone(NSNumber) initWithDouble:v61];
          v63 = [v56 stringWithNumber:v62 decimalPrecision:1 roundingMode:1];

          if (v63)
          {
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;

            v67 = [objc_opt_self() mainBundle];
            v68 = String._bridgeToObjectiveC()();
            v69 = [v67 localizedStringForKey:v68 value:0 table:0];

            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            sub_1004C2DD4(v108, v109, v64, v66, v70, v72, v113, v10);

            v73 = v110;
            v74 = v112;

            goto LABEL_35;
          }
        }

        v101 = v110;
LABEL_46:

        v102 = v112;
        v103 = type metadata accessor for AttributedString();
        (*(*(v103 - 8) + 56))(v10, 1, 1, v103);
        goto LABEL_47;
      }

      v37 = [v15 activeEnergyBurned];
      v38 = [v15 activeEnergyBurnedGoal];
      if (qword_1008DACA8 != -1)
      {
        swift_once();
      }

      if (v37)
      {
        v39 = v38 == 0;
      }

      else
      {
        v39 = 1;
      }

      v113 = qword_100925BA0;
      if (v39)
      {
        v112 = v37;
        v40 = objc_opt_self();
        v41 = [v40 mainBundle];
        v42 = String._bridgeToObjectiveC()();
        v43 = [v41 localizedStringForKey:v42 value:0 table:0];

        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = [v40 mainBundle];
        v47 = String._bridgeToObjectiveC()();
        v48 = [v46 localizedStringForKey:v47 value:0 table:0];

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = v49;
        v16 = v114;
        sub_1004C2DD4(v111, v45, v52, v51, 0, 0xE000000000000000, v113, v10);

LABEL_41:
        v100 = type metadata accessor for AttributedString();
        (*(*(v100 - 8) + 56))(v10, 0, 1, v100);
        goto LABEL_48;
      }

      v76 = v37;
      v112 = v38;
      result = [v16 unitManager];
      if (result)
      {
        v77 = result;
        v78 = [result userActiveEnergyBurnedUnit];

        v79 = objc_opt_self();
        v111 = v76;
        [v76 doubleValueForUnit:v78];
        v81 = [objc_allocWithZone(NSNumber) initWithDouble:v80];
        v82 = [v79 stringWithNumber:v81 decimalPrecision:1 roundingMode:1];

        if (v82)
        {
          v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;

          v110 = v78;
          [v112 doubleValueForUnit:v78];
          v86 = [objc_allocWithZone(NSNumber) initWithDouble:v85];
          v87 = [v79 stringWithNumber:v86 decimalPrecision:1 roundingMode:1];

          if (v87)
          {
            v88 = v84;
            v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v90 = v89;

            v16 = v114;
            result = [v114 localizedShortActiveEnergyUnitString];
            if (result)
            {
              v91 = result;
              v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v94 = v93;

              v115 = v92;
              v116 = v94;
              sub_10000FCBC();
              v95 = StringProtocol.localizedUppercase.getter();
              v97 = v96;

              sub_1004C2DD4(v109, v88, v108, v90, v95, v97, v113, v10);

              v98 = v111;
              v99 = v112;

              goto LABEL_41;
            }

LABEL_54:
            __break(1u);
            return result;
          }

          v78 = v110;
        }

        v101 = v111;
        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_54;
    }
  }

  return AttributedString.init()();
}

uint64_t sub_1004B69AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRingsCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B6A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRingsCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B6A74@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityRingsCardView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004B2458(v4, a1);
}

unint64_t sub_1004B6B04()
{
  result = qword_1008EF2C8;
  if (!qword_1008EF2C8)
  {
    sub_100141EEC(&qword_1008EF2A8);
    sub_10014A6B0(&qword_1008EF2D0, &qword_1008EF2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF2C8);
  }

  return result;
}

unint64_t sub_1004B6BBC()
{
  result = qword_1008EF328;
  if (!qword_1008EF328)
  {
    sub_100141EEC(&qword_1008EF2F8);
    sub_10014A6B0(&qword_1008EF330, &qword_1008EF2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF328);
  }

  return result;
}

unint64_t sub_1004B6C74()
{
  result = qword_1008EF378;
  if (!qword_1008EF378)
  {
    sub_100141EEC(&qword_1008EF370);
    sub_1004B6D58(&qword_1008EF380, &qword_1008EF388, &unk_1006F3FC8, sub_1004B6DDC);
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF378);
  }

  return result;
}

uint64_t sub_1004B6D58(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004B6E0C()
{
  result = qword_1008EF398;
  if (!qword_1008EF398)
  {
    sub_100141EEC(&qword_1008EF3A0);
    sub_1004B6EC4();
    sub_10014A6B0(&qword_1008DCB40, &qword_1008DCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF398);
  }

  return result;
}

unint64_t sub_1004B6EC4()
{
  result = qword_1008EF3A8;
  if (!qword_1008EF3A8)
  {
    sub_100141EEC(&qword_1008EF3B0);
    sub_10014A6B0(&qword_1008EF3B8, &qword_1008EF3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF3A8);
  }

  return result;
}

uint64_t sub_1004B6F94(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivityRingsCardView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1004B70B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AAUIAwardsDataProviderSection() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1004BBF2C(&unk_1008E4DE0, &type metadata accessor for AAUIAwardsDataProviderSection);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

__n128 sub_1004B71D8@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *&v8[1] = *&v7[9];
  *v8 = *&v7[8];
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = *v7;
  *(a1 + 73) = *&v8[1];
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1004B7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a4;
  v6[15] = a6;
  v6[16] = type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[18] = v9;
  *v9 = v6;
  v9[1] = sub_1004B7350;

  return sub_1004BBBD8(a4, a5);
}

uint64_t sub_1004B7350(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1004B7468, v2, 0);
}

uint64_t sub_1004B7468()
{
  sub_1004B7CF8(*(v0 + 152), *(v0 + 112), v0 + 16);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004B750C, v2, v1);
}

uint64_t sub_1004B750C()
{

  sub_1004B7AFC(v0 + 16);
  sub_100319D40(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B7580()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_10026E198(0, 0, v2, &unk_1006F41D8, v6);
  }

  return result;
}

uint64_t sub_1004B76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 208) = a4;
  sub_100140278(&unk_1008DB8A0);
  *(v4 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1004B773C, 0, 0);
}

uint64_t sub_1004B773C()
{
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004B77D0, v2, v1);
}

uint64_t sub_1004B77D0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[10];
  v0[3] = v0[9];
  v0[4] = v1;
  v0[5] = v0[11];
  *(v0 + 89) = *(v0 + 185);
  v2 = v0[8];
  v0[1] = v0[7];
  v0[2] = v2;

  return _swift_task_switch(sub_1004B78A8, 0, 0);
}

uint64_t sub_1004B78A8()
{
  v1 = *(v0 + 56);
  sub_100319D40(v0 + 16);
  v2 = [v1 UUID];

  if (v2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 216);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1004B79D4;
  v7 = *(v0 + 216);

  return sub_1004B7EE4(v7);
}

uint64_t sub_1004B79D4()
{
  v1 = *(*v0 + 216);
  v4 = *v0;

  sub_10000EA04(v1, &unk_1008DB8A0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1004B7AFC(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v17[0] = v7;
    *v5 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000AFDC(v8, v9, v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = *(a1 + 40);
    *(v5 + 14) = v11;
    *v6 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v4, v2, "%s updating friend %@", v5, 0x16u);
    sub_10000EA04(v6, &unk_1008DB8B0);

    sub_100005A40(v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v13 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v13;
  v18[0] = *(a1 + 64);
  *(v18 + 9) = *(a1 + 73);
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  sub_1002F7A50(a1, &v16);

  return static Published.subscript.setter();
}

void sub_1004B7CF8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_alertCoordinator);

  if ([a2 isMe])
  {
    v7 = [*(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_pauseRingsCoordinator) isPaused];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendManager);
  v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_navigationCoordinator);
  v21 = v8;
  v22 = v9;

  v10 = a2;
  v11 = [v10 currentSnapshot];
  v23 = v7;
  if (v11)
  {
    v12 = v11;
    if ([v11 hasCarriedForwardGoals])
    {
      v13 = 0;
    }

    else
    {
      v14 = [v12 activitySummary];
      v13 = v14;
      if (v14)
      {
        [v14 setDeprecatedPauseForInternalSwiftClient:v7];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_1005307C0(v10);
  v16 = FIExperienceTypeWithHealthStore();
  v17 = sub_100530990(v10, v16);
  v18 = FIDeviceMeetsMinimumOSVersionGlory();
  v19 = [v10 currentCacheIndex];
  v20 = [v10 estimatedIsStandaloneForSnapshotIndex:v19];

  *a3 = v24;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v16;
  *(a3 + 32) = v18;
  *(a3 + 40) = v10;
  *(a3 + 48) = v23;
  *(a3 + 56) = v13;
  *(a3 + 64) = v15;
  *(a3 + 72) = a1;
  *(a3 + 80) = v17;
  *(a3 + 88) = v20;
}

uint64_t sub_1004B7EE4(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_100140278(&unk_1008DB8A0);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1004B7FDC, v1, 0);
}

uint64_t sub_1004B7FDC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_10001B104(v0[14], v3, &unk_1008DB8A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(v0[16], &unk_1008DB8A0);
LABEL_8:

    v11 = v0[1];

    return v11();
  }

  v4 = v0[15];
  (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
  v5 = *(v4 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendListSectionManager);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = [v5 friendWithUUID:isa];
  v0[20] = v7;

  if (!v7)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    goto LABEL_8;
  }

  v8 = *(v0[15] + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementsDataProvider);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_1004B81AC;

  return sub_1004BBBD8(v7, v8);
}

uint64_t sub_1004B81AC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1004B82C4, v2, 0);
}

uint64_t sub_1004B82C4()
{
  sub_1004B7CF8(*(v0 + 176), *(v0 + 160), v0 + 16);

  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004B8378, v2, v1);
}

uint64_t sub_1004B8378()
{
  v1 = *(v0 + 120);

  sub_1004B7AFC(v0 + 16);

  return _swift_task_switch(sub_1004B83EC, v1, 0);
}

uint64_t sub_1004B83EC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  sub_100319D40((v0 + 2));

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004B848C(id *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v34 = type metadata accessor for Date();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*a1 relevantEarnedInstance];
  if (!v20)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_7:
    v23 = &qword_1008DE590;
    v24 = v14;
    goto LABEL_8;
  }

  v30 = a3;
  v21 = v20;
  v22 = [v20 earnedDateComponents];

  if (v22)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v16 + 56))(v11, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  sub_100015E80(v11, v14, &qword_1008DE590);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  (*(v16 + 32))(v19, v14, v15);
  Calendar.date(from:)();
  v27 = v33;
  v28 = v34;
  if ((*(v33 + 48))(v7, 1, v34) != 1)
  {
    v29 = v31;
    (*(v27 + 32))(v31, v7, v28);
    v25 = Date.isAfterOrEqualTo(date:)();
    (*(v27 + 8))(v29, v28);
    (*(v16 + 8))(v19, v15);
    return v25 & 1;
  }

  (*(v16 + 8))(v19, v15);
  v23 = &unk_1008F73A0;
  v24 = v7;
LABEL_8:
  sub_10000EA04(v24, v23);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1004B88A8(uint64_t a1)
{
  v50 = type metadata accessor for Date();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008EF578);
  __chkstk_darwin(v4 - 8);
  v6 = v45 - v5;
  v7 = sub_100140278(&qword_1008DE4B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = v45 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.notOnQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v45[1] = a1;
    v17 = sub_100022B64();
    v18 = v17;
    v19 = *(v17 + 16);
    v20 = _swiftEmptyArrayStorage;
    v47 = v8;
    v53 = v19;
    if (v19)
    {
      v21 = 0;
      v48 = (v2 + 32);
      v51 = (v8 + 48);
      v52 = (v8 + 56);
      v22 = (v17 + 40);
      while (v21 < *(v18 + 16))
      {
        v23 = *v22;
        v24 = *(v22 - 1);
        v25 = sub_100022E90(v24);
        if (v25)
        {
          if (v23 < 0)
          {
            goto LABEL_27;
          }

          v26 = v25;
          [v25 setEarnedInstanceCount:v23];
          v27 = [v24 completedDate];
          if (!v27)
          {
            goto LABEL_29;
          }

          v28 = v27;
          v55 = *(v7 + 48);
          v29 = v7;
          v30 = v49;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v31 = v30;
          v7 = v29;
          (*v48)(v6, v31, v50);
          v32 = 0;
          *&v6[v55] = v26;
        }

        else
        {
          v32 = 1;
        }

        (*v52)(v6, v32, 1, v7);

        if ((*v51)(v6, 1, v7) == 1)
        {
          sub_10000EA04(v6, &qword_1008EF578);
        }

        else
        {
          v33 = v46;
          sub_100015E80(v6, v46, &qword_1008DE4B8);
          sub_100015E80(v33, v54, &qword_1008DE4B8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1001A35B4(0, v20[2] + 1, 1, v20);
          }

          v35 = v20[2];
          v34 = v20[3];
          if (v35 >= v34 >> 1)
          {
            v20 = sub_1001A35B4(v34 > 1, v35 + 1, 1, v20);
          }

          v20[2] = v35 + 1;
          sub_100015E80(v54, v20 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35, &qword_1008DE4B8);
        }

        ++v21;
        v22 += 2;
        if (v53 == v21)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      v56 = v20;

      sub_1004B9A0C(&v56);

      v36 = v56;
      v37 = v56[2];
      v38 = v47;
      if (!v37)
      {

        v43 = _swiftEmptyArrayStorage;
LABEL_24:
        v56 = v43;
        sub_100140278(&qword_1008EF580);
        return CheckedContinuation.resume(returning:)();
      }

      v56 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v39 = 0;
      v40 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      while (v39 < v36[2])
      {
        v41 = v39 + 1;
        v42 = *&v40[*(v38 + 72) * v39 + *(v7 + 48)];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v39 = v41;
        if (v37 == v41)
        {

          v43 = v56;
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1004B8EC8(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_100140278(&qword_1008E7F80);
  __chkstk_darwin(v3 - 8);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v70 - v6;
  v7 = type metadata accessor for AAUIAwardsDataProviderSection();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v70 - v10;
  v11 = sub_100140278(&qword_1008DE4B8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v70 - v20;
  sub_10001B104(a1, v14, &qword_1008DE4B8);
  v81 = *&v14[*(v12 + 56)];
  v22 = *(v16 + 32);
  v22(v21, v14, v15);
  sub_10001B104(v80, v14, &qword_1008DE4B8);
  v23 = *&v14[*(v12 + 56)];
  v22(v18, v14, v15);
  sub_1004BBF2C(&qword_1008E1D78, &type metadata accessor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    static Date.> infix(_:_:)();

    v31 = *(v16 + 8);
    v31(v18, v15);
    v31(v21, v15);
    return;
  }

  v24 = v23;
  v72 = v16;
  v73 = v18;
  v80 = v15;
  v25 = v81;
  v26 = [v81 section];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v77;
  AAUIAwardsDataProviderSection.init(rawValue:)();
  v29 = v78;
  v28 = v79;
  v30 = *(v78 + 48);
  if (v30(v27, 1, v79) == 1)
  {
    sub_10000EA04(v27, &qword_1008E7F80);
    goto LABEL_10;
  }

  v71 = v21;
  v32 = v76;
  v70 = *(v29 + 32);
  v70(v76, v27, v28);
  v33 = static AAUIAwardsDataProviderSection.allCases.getter();
  v77 = sub_1004B70B8(v32, v33);
  v35 = v34;

  if (v35)
  {
    (*(v29 + 8))(v32, v79);
LABEL_9:
    v21 = v71;
    v25 = v81;
    goto LABEL_10;
  }

  v36 = [v23 section];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v75;
  AAUIAwardsDataProviderSection.init(rawValue:)();
  v38 = v79;
  if (v30(v37, 1, v79) == 1)
  {
    (*(v78 + 8))(v76, v38);
    sub_10000EA04(v37, &qword_1008E7F80);
    goto LABEL_9;
  }

  v61 = v74;
  v70(v74, v37, v38);
  v62 = static AAUIAwardsDataProviderSection.allCases.getter();
  v63 = v38;
  v64 = sub_1004B70B8(v61, v62);
  v66 = v65;

  v67 = *(v78 + 8);
  v67(v61, v63);
  v67(v76, v63);
  v21 = v71;
  v25 = v81;
  if ((v66 & 1) == 0 && v77 != v64)
  {

    v68 = *(v72 + 8);
    v69 = v80;
    v68(v73, v80);
    v68(v21, v69);
    return;
  }

LABEL_10:
  v39 = [v25 template];
  v40 = [v39 displayOrder];

  v41 = v24;
  v42 = [v24 template];
  v43 = [v42 displayOrder];

  v44 = [v25 template];
  v45 = v44;
  if (v40 != v43)
  {
    [v44 displayOrder];

    v55 = [v24 template];
    [v55 displayOrder];

    v56 = *(v72 + 8);
    v57 = v80;
    v56(v73, v80);
    v56(v21, v57);
    return;
  }

  v46 = [v44 uniqueName];

  if (!v46)
  {
    __break(1u);
    goto LABEL_23;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = [v24 template];
  v51 = [v50 uniqueName];

  if (!v51)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (v47 != v52 || v49 != v54)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v58 = v72;

  v59 = *(v58 + 8);
  v60 = v80;
  v59(v73, v80);
  v59(v21, v60);
}

uint64_t sub_1004B96B8()
{
  v1 = OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider__viewModel;
  v2 = sub_100140278(&qword_1008EF588);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004B982C()
{
  sub_1004B96B8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ActivitySharingFriendDetailDataProvider()
{
  result = qword_1008EF418;
  if (!qword_1008EF418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B98AC()
{
  sub_1004B997C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004B997C()
{
  if (!qword_1008EF428)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EF428);
    }
  }
}

uint64_t sub_1004B99CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingFriendDetailDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_1004B9A0C(void **a1)
{
  v2 = *(sub_100140278(&qword_1008DE4B8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA578(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1004B9AC0(v5);
  *a1 = v3;
}

void sub_1004B9AC0(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&qword_1008DE4B8);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100140278(&qword_1008DE4B8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004B9E64(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_1004B9C04(0, v2, 1, a1);
  }
}

void sub_1004B9C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_100140278(&qword_1008DE4B8);
  __chkstk_darwin(v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v21;
    v31 = v20;
    v22 = v19;
    while (1)
    {
      sub_10001B104(v21, v16, &qword_1008DE4B8);
      sub_10001B104(v22, v12, &qword_1008DE4B8);
      sub_1004B8EC8(v16, v12);
      v24 = v23;
      sub_10000EA04(v12, &qword_1008DE4B8);
      sub_10000EA04(v16, &qword_1008DE4B8);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v35)
        {
          __break(1u);
          return;
        }

        v25 = v36;
        sub_100015E80(v21, v36, &qword_1008DE4B8);
        swift_arrayInitWithTakeFrontToBack();
        sub_100015E80(v25, v22, &qword_1008DE4B8);
        v22 += v34;
        v21 += v34;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v20 = v31 - 1;
      v21 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1004B9E64(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v133 = sub_100140278(&qword_1008DE4B8);
  v9 = *(v133 - 8);
  __chkstk_darwin(v133);
  v128 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v130 = &v117 - v12;
  __chkstk_darwin(v13);
  v15 = &v117 - v14;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v137 = &v117 - v19;
  __chkstk_darwin(v20);
  v125 = &v117 - v21;
  __chkstk_darwin(v22);
  v124 = &v117 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_103:
    v5 = *v126;
    if (*v126)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_105;
    }

    goto LABEL_145;
  }

  v122 = a4;
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v131 = v15;
  v129 = v23;
  v135 = v24;
  v127 = a3;
  v121 = v9;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v30 >= v26)
    {
      v45 = v30;
    }

    else
    {
      v138 = v26;
      v132 = v6;
      v31 = *a3;
      v32 = v29;
      v33 = *(v9 + 72);
      v5 = *a3 + v33 * v30;
      v34 = v124;
      sub_10001B104(v5, v124, &qword_1008DE4B8);
      v35 = v125;
      sub_10001B104(v31 + v33 * v32, v125, &qword_1008DE4B8);
      v36 = v132;
      sub_1004B8EC8(v34, v35);
      LODWORD(v136) = v37;
      v132 = v36;
      if (v36)
      {
        sub_10000EA04(v35, &qword_1008DE4B8);
        sub_10000EA04(v34, &qword_1008DE4B8);

        return;
      }

      sub_10000EA04(v35, &qword_1008DE4B8);
      sub_10000EA04(v34, &qword_1008DE4B8);
      v123 = v32;
      v38 = v32 + 2;
      v39 = v31 + v33 * v38;
      v6 = v132;
      v40 = v33;
      v139 = v33;
      v134 = v28;
      while (1)
      {
        v41 = v137;
        if (v138 == v38)
        {
          break;
        }

        sub_10001B104(v39, v137, &qword_1008DE4B8);
        v42 = v135;
        sub_10001B104(v5, v135, &qword_1008DE4B8);
        sub_1004B8EC8(v41, v42);
        if (v6)
        {
          sub_10000EA04(v42, &qword_1008DE4B8);
          sub_10000EA04(v41, &qword_1008DE4B8);

          return;
        }

        v44 = v43;
        sub_10000EA04(v42, &qword_1008DE4B8);
        sub_10000EA04(v41, &qword_1008DE4B8);
        ++v38;
        v40 = v139;
        v39 += v139;
        v5 += v139;
        v6 = 0;
        v28 = v134;
        if ((v136 ^ v44))
        {
          v45 = v38 - 1;
          goto LABEL_12;
        }
      }

      v45 = v138;
LABEL_12:
      v15 = v131;
      v29 = v123;
      if ((v136 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v45 < v123)
      {
        goto LABEL_139;
      }

      if (v123 < v45)
      {
        v46 = v40 * (v45 - 1);
        v47 = v45 * v40;
        v138 = v45;
        v48 = v45;
        v49 = v123;
        v50 = v123 * v40;
        do
        {
          if (v49 != --v48)
          {
            v132 = v6;
            v51 = *v127;
            if (!*v127)
            {
              goto LABEL_143;
            }

            v5 = v51 + v50;
            sub_100015E80(v51 + v50, v128, &qword_1008DE4B8);
            if (v50 < v46 || v5 >= v51 + v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100015E80(v128, v51 + v46, &qword_1008DE4B8);
            v6 = v132;
            v40 = v139;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        a3 = v127;
        v9 = v121;
        v15 = v131;
        v29 = v123;
        v45 = v138;
      }

      else
      {
LABEL_25:
        a3 = v127;
        v9 = v121;
      }
    }

    v52 = a3[1];
    if (v45 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v45, v29))
    {
      goto LABEL_135;
    }

    if (v45 - v29 >= v122)
    {
LABEL_36:
      v5 = v45;
      if (v45 < v29)
      {
        goto LABEL_134;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v122))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v29 + v122 >= v52)
    {
      v53 = a3[1];
    }

    else
    {
      v53 = v29 + v122;
    }

    if (v53 < v29)
    {
      goto LABEL_138;
    }

    if (v45 == v53)
    {
      goto LABEL_36;
    }

    v101 = *a3;
    v102 = *(v9 + 72);
    v103 = *a3 + v102 * (v45 - 1);
    v136 = -v102;
    v123 = v29;
    v104 = v29 - v45;
    v139 = v101;
    v117 = v102;
    v105 = v101 + v45 * v102;
    v132 = v53;
    do
    {
      v138 = v45;
      v118 = v105;
      v106 = v105;
      v119 = v104;
      v120 = v103;
      while (1)
      {
        v107 = v129;
        sub_10001B104(v106, v129, &qword_1008DE4B8);
        sub_10001B104(v103, v15, &qword_1008DE4B8);
        sub_1004B8EC8(v107, v15);
        v109 = v15;
        if (v6)
        {
          sub_10000EA04(v15, &qword_1008DE4B8);
          sub_10000EA04(v107, &qword_1008DE4B8);
LABEL_116:

          return;
        }

        v110 = v108;
        sub_10000EA04(v109, &qword_1008DE4B8);
        sub_10000EA04(v107, &qword_1008DE4B8);
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_141;
        }

        v111 = v130;
        sub_100015E80(v106, v130, &qword_1008DE4B8);
        swift_arrayInitWithTakeFrontToBack();
        sub_100015E80(v111, v103, &qword_1008DE4B8);
        v103 += v136;
        v106 += v136;
        v112 = __CFADD__(v104++, 1);
        v15 = v131;
        if (v112)
        {
          goto LABEL_99;
        }
      }

      v15 = v131;
LABEL_99:
      v45 = v138 + 1;
      v103 = v120 + v117;
      v104 = v119 - 1;
      v105 = v118 + v117;
      v5 = v132;
    }

    while (v138 + 1 != v132);
    a3 = v127;
    v9 = v121;
    v29 = v123;
    if (v132 < v123)
    {
      goto LABEL_134;
    }

LABEL_37:
    v54 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1001A1D54(0, *(v28 + 2) + 1, 1, v28);
    }

    v56 = *(v28 + 2);
    v55 = *(v28 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v28 = sub_1001A1D54((v55 > 1), v56 + 1, 1, v28);
    }

    *(v28 + 2) = v57;
    v58 = &v28[16 * v56];
    *(v58 + 4) = v29;
    *(v58 + 5) = v5;
    v132 = v5;
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_144;
    }

    if (v56)
    {
      break;
    }

    v6 = v54;
LABEL_88:
    v26 = a3[1];
    v15 = v131;
    v27 = v132;
    if (v132 >= v26)
    {
      goto LABEL_103;
    }
  }

  v6 = v54;
  while (1)
  {
    v59 = v57 - 1;
    if (v57 >= 4)
    {
      v64 = &v28[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_121;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_122;
      }

      v71 = &v28[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_124;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_127;
      }

      if (v75 >= v67)
      {
        v93 = &v28[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_133;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v57 == 3)
    {
      v60 = *(v28 + 4);
      v61 = *(v28 + 5);
      v70 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      v63 = v70;
LABEL_57:
      if (v63)
      {
        goto LABEL_123;
      }

      v76 = &v28[16 * v57];
      v78 = *v76;
      v77 = *(v76 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_126;
      }

      v82 = &v28[16 * v59 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_129;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_130;
      }

      if (v80 + v85 >= v62)
      {
        if (v62 < v85)
        {
          v59 = v57 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v86 = &v28[16 * v57];
    v88 = *v86;
    v87 = *(v86 + 1);
    v70 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v70;
LABEL_71:
    if (v81)
    {
      goto LABEL_125;
    }

    v89 = &v28[16 * v59];
    v91 = *(v89 + 4);
    v90 = *(v89 + 5);
    v70 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v70)
    {
      goto LABEL_128;
    }

    if (v92 < v80)
    {
      goto LABEL_88;
    }

LABEL_78:
    v97 = v59 - 1;
    if (v59 - 1 >= v57)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_140;
    }

    v98 = *&v28[16 * v97 + 32];
    v99 = *&v28[16 * v59 + 40];
    sub_1004BA91C(*a3 + *(v9 + 72) * v98, *a3 + *(v9 + 72) * *&v28[16 * v59 + 32], *a3 + *(v9 + 72) * v99, v5);
    if (v6)
    {
      goto LABEL_116;
    }

    if (v99 < v98)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1001A99A4(v28);
    }

    if (v97 >= *(v28 + 2))
    {
      goto LABEL_120;
    }

    v100 = &v28[16 * v97];
    *(v100 + 4) = v98;
    *(v100 + 5) = v99;
    v140 = v28;
    sub_1001A9918(v59);
    v28 = v140;
    v57 = *(v140 + 2);
    if (v57 <= 1)
    {
      goto LABEL_88;
    }
  }

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
  v28 = sub_1001A99A4(v28);
LABEL_105:
  v140 = v28;
  v113 = *(v28 + 2);
  if (v113 < 2)
  {
    goto LABEL_116;
  }

  while (*a3)
  {
    v114 = *&v28[16 * v113];
    v115 = *&v28[16 * v113 + 24];
    sub_1004BA91C(*a3 + *(v9 + 72) * v114, *a3 + *(v9 + 72) * *&v28[16 * v113 + 16], *a3 + *(v9 + 72) * v115, v5);
    if (v6)
    {
      goto LABEL_116;
    }

    if (v115 < v114)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1001A99A4(v28);
    }

    if (v113 - 2 >= *(v28 + 2))
    {
      goto LABEL_132;
    }

    v116 = &v28[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    v140 = v28;
    sub_1001A9918(v113 - 1);
    v28 = v140;
    v113 = *(v140 + 2);
    if (v113 <= 1)
    {
      goto LABEL_116;
    }
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_1004BA91C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v71 = sub_100140278(&qword_1008DE4B8);
  __chkstk_darwin(v71);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = a2;
  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v21 != -1)
  {
    v25 = (a2 - a1) / v21;
    v76 = a1;
    v26 = a4;
    v75 = a4;
    if (v25 < v24 / v21)
    {
      v27 = v25 * v21;
      if (a4 < v23 || v23 + v27 <= a4)
      {
        v28 = v23;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        v28 = v23;
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v28;
      v26 = a4;
      v22 = a2;
LABEL_17:
      v72 = v4;
      v70 = v26 + v27;
      v74 = v26 + v27;
      if (v27 >= 1 && v22 < a3)
      {
        v68 = v15;
        v69 = v19;
        v67 = a3;
        while (1)
        {
          v73 = v23;
          v33 = v21;
          v34 = v22;
          v35 = v69;
          sub_10001B104(v22, v69, &qword_1008DE4B8);
          sub_10001B104(v26, v15, &qword_1008DE4B8);
          v36 = v72;
          sub_1004B8EC8(v35, v15);
          v72 = v36;
          if (v36)
          {
            sub_10000EA04(v15, &qword_1008DE4B8);
            sub_10000EA04(v35, &qword_1008DE4B8);
            goto LABEL_65;
          }

          v38 = v37;
          sub_10000EA04(v15, &qword_1008DE4B8);
          sub_10000EA04(v35, &qword_1008DE4B8);
          if ((v38 & 1) == 0)
          {
            v21 = v33;
            v40 = v26;
            v26 += v33;
            v39 = v73;
            if (v73 < v40 || v73 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v73;
            }

            else if (v73 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v39 = v73;
            }

            v75 = v26;
            v22 = v34;
            goto LABEL_37;
          }

          v21 = v33;
          v39 = v73;
          if (v73 < v34 || v73 >= v34 + v33)
          {
            break;
          }

          if (v73 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v39 = v73;
          }

          v22 = v34 + v33;
LABEL_37:
          v23 = v39 + v21;
          v76 = v23;
          if (v26 < v70)
          {
            v15 = v68;
            if (v22 < v67)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v29 = v24 / v21 * v21;
    v69 = v17;
    if (a4 < v22 || v22 + v29 <= a4)
    {
      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v22)
      {
LABEL_42:
        v41 = v26 + v29;
        if (v29 < 1)
        {
LABEL_60:
          v72 = v5;
          v76 = v22;
          v74 = v41;
          goto LABEL_65;
        }

        v42 = -v21;
        v43 = &qword_1008DE4B8;
        v44 = v26 + v29;
        v45 = &unk_1006D7C20;
        v65 = v26;
        v73 = v23;
        v68 = -v21;
LABEL_44:
        v63 = v41;
        v46 = v22 + v42;
        v66 = v22 + v42;
        v67 = v22;
        while (1)
        {
          if (v22 <= v23)
          {
            v72 = v5;
            v76 = v22;
            v74 = v63;
            goto LABEL_65;
          }

          v47 = a3;
          v64 = v41;
          v49 = v68;
          v48 = v69;
          v70 = v44;
          v50 = v44 + v68;
          v51 = v5;
          v52 = v43;
          v53 = v45;
          sub_10001B104(v44 + v68, v69, v43);
          sub_10001B104(v46, v11, v52);
          sub_1004B8EC8(v48, v11);
          v55 = v11;
          if (v51)
          {
            break;
          }

          v56 = v54;
          a3 = v47 + v49;
          v57 = v55;
          sub_10000EA04(v55, v52);
          sub_10000EA04(v48, v52);
          if (v56)
          {
            v72 = 0;
            if (v47 < v67 || a3 >= v67)
            {
              v61 = v66;
              swift_arrayInitWithTakeFrontToBack();
              v11 = v57;
              v22 = v61;
              v23 = v73;
            }

            else
            {
              v11 = v57;
              v22 = v66;
              v23 = v73;
              if (v47 != v67)
              {
                v59 = v66;
                v60 = v73;
                swift_arrayInitWithTakeBackToFront();
                v23 = v60;
                v22 = v59;
              }
            }

            v41 = v64;
            v44 = v70;
            v42 = v68;
            v43 = v52;
            v45 = v53;
            v5 = v72;
            if (v70 <= v65)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v41 = v50;
          if (v47 < v70 || a3 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v50;
            v11 = v57;
            v23 = v73;
          }

          else
          {
            v11 = v57;
            v23 = v73;
            if (v47 != v70)
            {
              v58 = v73;
              swift_arrayInitWithTakeBackToFront();
              v23 = v58;
              v41 = v50;
            }
          }

          v44 = v41;
          v46 = v66;
          v43 = v52;
          v45 = v53;
          v5 = 0;
          v22 = v67;
          if (v50 <= v65)
          {
            goto LABEL_60;
          }
        }

        sub_10000EA04(v11, &qword_1008DE4B8);
        sub_10000EA04(v48, &qword_1008DE4B8);
        v76 = v67;
        v74 = v64;
LABEL_65:
        sub_1004ABB24(&v76, &v75, &v74);
        return;
      }

      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v31;
    v26 = a4;
    v22 = v30;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

id sub_1004BAFE8(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
  v7 = [a2 unitManager];
  if (v7)
  {
    v8 = v7;
    [v6 setAchUnitManager:swift_dynamicCastObjCProtocolUnconditional()];
  }

  else
  {
    static os_log_type_t.default.getter();
    v9 = HKLogActivity;
    os_log(_:dso:log:_:_:)();
  }

  v10 = [a1 displayName];
  [v6 setName:v10];

  if ([a1 isMe])
  {
    v11 = [a3 isWheelchairUser];
  }

  else
  {
    v12 = [a1 currentSnapshot];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 wheelchairUse];

      v11 = v14 == 2;
    }

    else
    {
      v11 = 0;
    }
  }

  [v6 setWheelchairUser:v11];
  return v6;
}

void *sub_1004BB1A8(void *a1, void *a2, void **a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t (*a11)(uint64_t a1), void *a12, void *a13, void *a14, void *a15)
{
  v16 = v15;
  v71 = a7;
  v79 = a3;
  v72 = a2;
  v68 = a1;
  v76 = a14;
  v77 = a15;
  v75 = a13;
  v78 = a11;
  v70 = a12;
  v69 = a9;
  v74 = *v15;
  v23 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v23 - 8);
  v73 = &v68 - v24;
  swift_defaultActor_initialize();
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementBadgeImageFactory) = a1;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementsDataProvider) = a2;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_alertCoordinator) = v79;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_awardsDataProvider) = a4;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fitnessAppContext) = a5;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_fiuiFormattingManager) = a6;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendListSectionManager) = a8;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_friendManager) = a9;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_healthStore) = a10;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_navigationCoordinator) = v78;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_wheelchairUseCache) = a12;
  v25 = v76;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutDataProvider) = v75;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_workoutFormattingManager) = v25;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_pauseRingsCoordinator) = v77;
  v26 = objc_allocWithZone(AAUIAchievementResourceProvider);
  v27 = v68;
  v72 = v72;

  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a8;
  v32 = v69;
  v33 = a10;

  v34 = v70;
  v35 = v75;
  v36 = v76;
  v37 = v77;
  v38 = [v26 init];
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementResourceProvider) = v38;
  v39 = v71;
  *(v15 + OBJC_IVAR____TtC10FitnessApp39ActivitySharingFriendDetailDataProvider_achievementLocalizationProvider) = sub_1004BAFE8(v71, v30, v34);

  v77 = v32;
  v40 = v33;

  v41 = v39;
  v42 = [v41 currentSnapshot];
  if (v42)
  {
    v43 = v42;
    if ([v42 hasCarriedForwardGoals])
    {
      v44 = 0;
    }

    else
    {
      v45 = [v43 activitySummary];
      v44 = v45;
      if (v45)
      {
        [v45 setDeprecatedPauseForInternalSwiftClient:0];
      }
    }
  }

  else
  {
    v44 = 0;
  }

  v46 = sub_1005307C0(v41);
  v47 = FIExperienceTypeWithHealthStore();
  v48 = sub_100530990(v41, v47);
  v49 = FIDeviceMeetsMinimumOSVersionGlory();
  v50 = [v41 currentCacheIndex];
  v51 = [v41 estimatedIsStandaloneForSnapshotIndex:v50];

  swift_beginAccess();
  aBlock = v79;
  v81 = v77;
  v82 = v78;
  v83 = v47;
  LOBYTE(v84) = v49;
  v85 = v41;
  v86 = 0;
  v87 = v44;
  v88 = v46;
  v89 = &_swiftEmptyArrayStorage;
  v90 = v48;
  v91 = v51;
  Published.init(initialValue:)();
  swift_endAccess();
  v52 = type metadata accessor for TaskPriority();
  v53 = v73;
  (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
  type metadata accessor for MainActor();
  v54 = v72;
  v55 = v41;

  v56 = static MainActor.shared.getter();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = &protocol witness table for MainActor;
  v57[4] = v55;
  v57[5] = v54;
  v58 = v74;
  v57[6] = v16;
  v57[7] = v58;
  sub_10026E198(0, 0, v53, &unk_1006F41C8, v57);

  v59 = [objc_opt_self() defaultCenter];
  v60 = kASFriendListChangedNotificationKey;
  v61 = objc_opt_self();
  v62 = v60;
  v63 = [v61 mainQueue];
  v64 = swift_allocObject();
  swift_weakInit();
  v84 = sub_1004BC048;
  v85 = v64;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_100026F8C;
  v83 = &unk_10085CB60;
  v65 = _Block_copy(&aBlock);

  v66 = [v59 addObserverForName:v62 object:0 queue:v63 usingBlock:v65];
  _Block_release(v65);
  swift_unknownObjectRelease();

  return v16;
}

void *sub_1004BB7E8(void *a1)
{
  v25 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v26 = type metadata accessor for Calendar();
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  Date.init()();
  (*(v2 + 104))(v4, enum case for Calendar.Component.day(_:), v1);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000EA04(v7, &unk_1008F73A0);
    (*(v9 + 8))(v14, v8);
    v18 = _swiftEmptyArrayStorage;
LABEL_5:
    (*(v15 + 8))(v17, v26);
    return v18;
  }

  (*(v9 + 32))(v11, v7, v8);
  result = [v25 allAchievementsSortedByEarnedDate];
  if (result)
  {
    v20 = result;
    sub_1000059F8(0, &qword_1008E8750);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v22);
    *(&v24 - 2) = v17;
    *(&v24 - 1) = v11;
    v18 = sub_1005AD40C(sub_1004BBF0C, &v24 - 4, v21);
    v23 = *(v9 + 8);
    v23(v14, v8);
    v23(v11, v8);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004BBBD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_1004BBBF8, 0, 0);
}

uint64_t sub_1004BBBF8()
{
  if ([*(v0 + 24) isMe])
  {
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004BBD84, v2, v1);
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *(v4 + 16) = v3;
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    v6 = sub_100140278(&qword_1008E80D0);
    *v5 = v0;
    v5[1] = sub_1004BBDEC;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000019, 0x800000010075F4A0, sub_1004BBF04, v4, v6);
  }
}

uint64_t sub_1004BBD84()
{
  v1 = *(v0 + 32);

  v2 = sub_1004BB7E8(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004BBDEC()
{

  return _swift_task_switch(sub_1002EEB08, 0, 0);
}

uint64_t sub_1004BBF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004BBF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BBC0;

  return sub_1004B7290(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004BC050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1004B76A0(a1, v4, v5, v6);
}

char *sub_1004BC104(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v16] = sub_100555C98();
  v17 = OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_topConstraint;
  *&v4[v17] = [objc_allocWithZone(NSLayoutConstraint) init];
  v18 = type metadata accessor for TrendListHeaderView();
  v31.receiver = v4;
  v31.super_class = v18;
  v19 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemBackgroundColor];
  [v21 setBackgroundColor:v22];

  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  [v21 setDirectionalLayoutMargins:?];

  v23 = OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label;
  v24 = *&v21[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label];
  UIListContentConfiguration.textProperties.getter();
  v25 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v10 + 8))(v12, v9);
  [v24 setFont:v25];

  [*&v21[v23] setNumberOfLines:0];
  v26 = *&v21[v23];
  v27 = [v20 labelColor];
  [v26 setTextColor:v27];

  [v21 addSubview:*&v21[v23]];
  sub_1004BC45C();

  (*(v13 + 8))(v15, v30);
  return v21;
}

void sub_1004BC45C()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label];
  v2 = [v1 leadingAnchor];
  v3 = [v0 leadingAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:16.0];

  v5 = [v1 trailingAnchor];
  v6 = [v0 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:-16.0];

  v8 = [v1 topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v11 = OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_topConstraint;
  v12 = *&v0[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_topConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_topConstraint] = v10;

  v13 = [v1 lastBaselineAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-14.0];

  v16 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D5300;
  *(v17 + 32) = v4;
  *(v17 + 40) = v7;
  v18 = *&v0[v11];
  *(v17 + 48) = v18;
  *(v17 + 56) = v15;
  sub_1000059F8(0, &qword_1008DC980);
  v19 = v4;
  v20 = v7;
  v21 = v18;
  v25 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  LODWORD(v23) = 1148846080;
  [v1 setContentHuggingPriority:1 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v24];
}

id sub_1004BC80C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendListHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004BC8B4()
{
  result = qword_1008EF5C8;
  if (!qword_1008EF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5C8);
  }

  return result;
}

unint64_t sub_1004BC90C()
{
  result = qword_1008EF5D0;
  if (!qword_1008EF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5D0);
  }

  return result;
}

unint64_t sub_1004BC964()
{
  result = qword_1008EF5D8;
  if (!qword_1008EF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5D8);
  }

  return result;
}

uint64_t sub_1004BC9C4()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD198);
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_100925B28 = v0;
  unk_100925B30 = v1;
  qword_100925B38 = result;
  return result;
}

uint64_t sub_1004BCAD0()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925B40);
  sub_10001AC90(v5, qword_100925B40);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004BCC34()
{
  v0 = sub_100140278(&qword_1008EF620);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008EF628);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008EF618);
  sub_100163368(v5, qword_100925B58);
  sub_10001AC90(v5, qword_100925B58);
  sub_1002C831C();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010075F550;
  v6._countAndFlagsBits = 0xD000000000000015;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1004BCE30@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v26 = a1;
  v31 = a2;
  v3 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v3 - 8);
  v30 = &v25[-v4];
  v5 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v5 - 8);
  v29 = &v25[-v6];
  v28 = type metadata accessor for LocalizedStringResource();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v36 = sub_1000492D8(v2);
  v37 = v15;
  v34 = 12559343;
  v35 = 0xA300000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_10000FCBC();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v36 = v16;
  v37 = v18;
  static CharacterSet.whitespacesAndNewlines.getter();
  v19 = StringProtocol.trimmingCharacters(in:)();
  v21 = v20;
  (*(v10 + 8))(v12, v9);

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v7 + 56))(v29, 1, 1, v28);
  sub_100183C84(v26);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1004BD1C4@<X0>(void *a1@<X8>)
{
  if (qword_1008DAC58 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_100925B30;
  v2 = qword_100925B38;
  *a1 = qword_100925B28;
  a1[1] = v1;
  a1[2] = v2;
}

unint64_t sub_1004BD258()
{
  result = qword_1008EF5E0;
  if (!qword_1008EF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5E0);
  }

  return result;
}

uint64_t sub_1004BD2AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAC68 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008EF618);
  v3 = sub_10001AC90(v2, qword_100925B58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1004BD364()
{
  result = qword_1008EF5E8;
  if (!qword_1008EF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5E8);
  }

  return result;
}

unint64_t sub_1004BD3B8()
{
  result = qword_1008EF5F0;
  if (!qword_1008EF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5F0);
  }

  return result;
}

unint64_t sub_1004BD410()
{
  result = qword_1008EF5F8;
  if (!qword_1008EF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF5F8);
  }

  return result;
}

uint64_t sub_1004BD464()
{
  sub_1002C8418();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004BD4D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAC60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1004BD57C()
{
  result = qword_1008EF600;
  if (!qword_1008EF600)
  {
    sub_100141EEC(&qword_1008EF608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF600);
  }

  return result;
}

uint64_t sub_1004BD5E0(uint64_t a1)
{
  v2 = sub_1002C831C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1004BD630()
{
  result = qword_1008EF610;
  if (!qword_1008EF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF610);
  }

  return result;
}

uint64_t sub_1004BD68C(uint64_t a1)
{
  v2 = sub_1004BD410();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

id sub_1004BD6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FriendInboxAddTableViewCell();
  v22.receiver = v3;
  v22.super_class = v6;
  v7 = objc_msgSendSuper2(&v22, "initWithStyle:reuseIdentifier:", a1, v5);

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 secondarySystemBackgroundColor];
  [v9 setBackgroundColor:v10];

  v11 = [v9 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 localizedStringForKey:v14 value:0 table:0];

    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    [v12 setText:v15];
  }

  v16 = [v9 textLabel];

  if (v16)
  {
    v17 = [v8 tintColor];
    [v16 setTextColor:v17];
  }

  sub_1004BDA38();
  sub_100140278(&qword_1008EF658);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D46C0;
  *(v18 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v18 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v21[3] = v6;
  v21[0] = v9;
  v19 = v9;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100005A40(v21);
  return v19;
}

void sub_1004BDA38()
{
  v1 = sub_1004BDCC8();
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];

  v9 = v2;
  [v9 setContentMode:1];
  v3 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D4E70;
  v5 = [v9 widthAnchor];
  v6 = [v9 heightAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  [v0 setAccessoryView:v9];
}

id sub_1004BDC70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendInboxAddTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004BDCC8()
{
  v0 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_opt_self() tintColor];
    v4 = [v2 imageWithTintColor:v3];
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1004BDDE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004BDE54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004BDEC8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v19 = a1;
  v5 = sub_100140278(&qword_1008EF830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  v9 = sub_100140278(&unk_1008F6FE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtCV10FitnessApp20WorkoutDetailMapView9ViewModel__isLoading;
  LOBYTE(v24) = 1;
  Published.init(initialValue:)();
  (*(v10 + 32))(v4 + v13, v12, v9);
  v14 = OBJC_IVAR____TtCV10FitnessApp20WorkoutDetailMapView9ViewModel__mapImage;
  v24 = 0;
  sub_100140278(&qword_1008DC850);
  Published.init(initialValue:)();
  (*(v6 + 32))(v4 + v14, v8, v5);
  swift_beginAccess();
  (*(v10 + 8))(v4 + v13, v9);
  LOBYTE(v23) = v19;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  (*(v6 + 8))(v4 + v14, v5);
  v23 = v20;
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = (v4 + OBJC_IVAR____TtCV10FitnessApp20WorkoutDetailMapView9ViewModel_mapTappedAction);
  v16 = v22;
  *v15 = v21;
  v15[1] = v16;
  return v4;
}

uint64_t sub_1004BE164()
{
  v1 = OBJC_IVAR____TtCV10FitnessApp20WorkoutDetailMapView9ViewModel__isLoading;
  v2 = sub_100140278(&unk_1008F6FE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV10FitnessApp20WorkoutDetailMapView9ViewModel__mapImage;
  v4 = sub_100140278(&qword_1008EF830);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDetailMapView.ViewModel()
{
  result = qword_1008EF6A8;
  if (!qword_1008EF6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BE2C0()
{
  sub_100055E7C();
  if (v0 <= 0x3F)
  {
    sub_1004BE398();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004BE398()
{
  if (!qword_1008EF6B8)
  {
    sub_100141EEC(&qword_1008DC850);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EF6B8);
    }
  }
}

uint64_t sub_1004BE428@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDetailMapView.ViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_1004BE468()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = sub_1000B7B88();
  result = v2 - (v3 + v3) + -32.0;
  qword_1008EF660 = *&result;
  return result;
}

uint64_t sub_1004BE4E4()
{
  result = static Solarium.isEnabled.getter();
  v1 = 8.0;
  if (result)
  {
    v1 = 14.0;
  }

  qword_1008EF668 = *&v1;
  return result;
}

double sub_1004BE514()
{
  if (qword_1008DAC70 != -1)
  {
    swift_once();
  }

  result = *&qword_1008EF660;
  qword_100925B70 = qword_1008EF660;
  qword_100925B78 = 0x4061800000000000;
  return result;
}

uint64_t sub_1004BE57C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008EF7D8);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_100140278(&qword_1008EF7E0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v22;
  if (v22)
  {
    if (qword_1008DAC70 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v9 = v22;
    v10 = BYTE8(v22);
    v11 = v23;
    v12 = BYTE8(v23);
    *v7 = v8;
    *(v7 + 1) = v9;
    v7[16] = v10;
    *(v7 + 3) = v11;
    v7[32] = v12;
    *(v7 + 40) = v24;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008EF800);
    sub_1004BEB30();
    sub_1004BEBB4();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v22 & 1) == 0)
    {
      v19 = 1;
      goto LABEL_10;
    }

    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    sub_100140278(&qword_1008EF7F0);
    ProgressView<>.init<>()();
    if (qword_1008DAC70 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v13 = &v4[*(sub_100140278(&qword_1008EF7F8) + 36)];
    v14 = v23;
    *v13 = v22;
    *(v13 + 1) = v14;
    *(v13 + 2) = v24;
    v15 = [objc_opt_self() darkGrayColor];
    v16 = Color.init(_:)();
    v17 = static Edge.Set.all.getter();
    v18 = &v4[*(v2 + 36)];
    *v18 = v16;
    v18[8] = v17;
    sub_1004BEAC0(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008EF800);
    sub_1004BEB30();
    sub_1004BEBB4();
    _ConditionalContent<>.init(storage:)();
    sub_1004BED24(v4);
  }

  v19 = 0;
LABEL_10:
  v20 = sub_100140278(&qword_1008EF7E8);
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_1004BE98C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_100140278(&qword_1008EF7C8);
  sub_1004BE57C(a1 + *(v2 + 44));
  if (qword_1008DAC78 != -1)
  {
    swift_once();
  }

  v3 = qword_1008EF668;
  v4 = (a1 + *(sub_100140278(&qword_1008EF7D0) + 36));
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = v3;
  v4[1] = v3;
  result = sub_100140278(&qword_1008DE1E0);
  *(v4 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1004BEAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EF7D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004BEB30()
{
  result = qword_1008EF808;
  if (!qword_1008EF808)
  {
    sub_100141EEC(&qword_1008EF800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF808);
  }

  return result;
}

unint64_t sub_1004BEBB4()
{
  result = qword_1008EF810;
  if (!qword_1008EF810)
  {
    sub_100141EEC(&qword_1008EF7D8);
    sub_1004BEC6C();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF810);
  }

  return result;
}

unint64_t sub_1004BEC6C()
{
  result = qword_1008EF818;
  if (!qword_1008EF818)
  {
    sub_100141EEC(&qword_1008EF7F8);
    sub_10014A6B0(&qword_1008EF820, &qword_1008EF828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF818);
  }

  return result;
}

uint64_t sub_1004BED24(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004BED8C()
{
  result = qword_1008EF838;
  if (!qword_1008EF838)
  {
    sub_100141EEC(&qword_1008EF7D0);
    sub_10014A6B0(&qword_1008EF840, &qword_1008EF848);
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF838);
  }

  return result;
}

void sub_1004BEE80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v98 = a4;
  v97 = a3;
  v101 = a2;
  v100 = type metadata accessor for FriendCard();
  __chkstk_darwin(v100);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v84 - v10;
  v11 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v11 - 8);
  v90 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v84 - v14;
  __chkstk_darwin(v15);
  v94 = &v84 - v16;
  __chkstk_darwin(v17);
  v95 = &v84 - v18;
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v89 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v93 = &v84 - v26;
  __chkstk_darwin(v27);
  v99 = &v84 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v102[0]) == 1)
  {
    v88 = a5;
    UUID.init(uuidString:)();
    v29 = *(v23 + 48);
    if (v29(v21, 1, v22) == 1)
    {
      sub_10000EA04(v21, &unk_1008DB8A0);
      static os_log_type_t.error.getter();
      v30 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      v31 = v88;
      *(v88 + 32) = 0;
      *v31 = 0u;
      v31[1] = 0u;
    }

    else
    {
      v86 = a1;
      v87 = v23;
      v85 = *(v23 + 32);
      v85(v99, v21, v22);
      v32 = v5;
      v33 = *v5;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v84 = v33;
      v35 = [v33 friendWithUUID:isa];

      if (v35)
      {
        sub_10001B104(v97, v102, &qword_1008DCC60);
        v36 = v103;
        if (v103)
        {
          v37 = v104;
          sub_1000066AC(v102, v103);
          v38 = v95;
          (*(v37 + 8))(v36, v37);
          (*(v87 + 56))(v38, 0, 1, v22);
          sub_100005A40(v102);
        }

        else
        {
          sub_10000EA04(v102, &qword_1008DCC60);
          v38 = v95;
          (*(v87 + 56))(v95, 1, 1, v22);
        }

        v43 = [v84 me];
        v95 = v35;
        v44 = [v95 currentSnapshotWithGoalsCarriedForward];
        v45 = v32[5];
        v46 = v88;
        *(v88 + 24) = v100;
        v46[4] = &off_1008643D8;
        v97 = sub_100005994(v46);
        v47 = v94;
        sub_10001B104(v38, v94, &unk_1008DB8A0);
        if (v29(v47, 1, v22) == 1)
        {
          v48 = v45;
          v92 = v44;
          v49 = v38;
          v50 = v45;
          v51 = v43;
          v52 = v35;
          v53 = v29;
          v54 = v93;
          UUID.init()();
          v55 = v53(v47, 1, v22);
          v35 = v52;
          v43 = v51;
          v45 = v50;
          v38 = v49;
          v44 = v92;
          v56 = v55 == 1;
          v57 = v47;
          v58 = v85;
          if (!v56)
          {
            sub_10000EA04(v57, &unk_1008DB8A0);
          }
        }

        else
        {
          v54 = v93;
          v59 = v47;
          v58 = v85;
          v85(v93, v59, v22);
          v60 = v45;
        }

        v61 = v96;
        v58(v96, v54, v22);
        v63 = v100;
        v62 = v101;
        v64 = v61 + *(v100 + 20);
        *v64 = v86;
        *(v64 + 8) = v62;
        *(v64 + 16) = 1;
        *(v61 + v63[6]) = 0;
        *(v61 + v63[7]) = v98 & 1;
        *(v61 + v63[8]) = 1;
        *(v61 + v63[9]) = v43;
        *(v61 + v63[10]) = v35;
        *(v61 + v63[11]) = v44;

        v65 = v95;
        v66 = [v95 currentCompetition];
        sub_10000EA04(v38, &unk_1008DB8A0);
        *(v61 + v63[12]) = v66;
        *(v61 + v63[13]) = v45;
        sub_1004C0AC4(v61, v97, type metadata accessor for FriendCard);

        (*(v87 + 8))(v99, v22);
      }

      else
      {
        sub_10001B104(v97, v102, &qword_1008DCC60);
        v39 = v103;
        if (v103)
        {
          v40 = v104;
          sub_1000066AC(v102, v103);
          v41 = v91;
          (*(v40 + 8))(v39, v40);
          v42 = v22;
          (*(v87 + 56))(v41, 0, 1, v22);
          sub_100005A40(v102);
        }

        else
        {
          sub_10000EA04(v102, &qword_1008DCC60);
          v41 = v91;
          v42 = v22;
          (*(v87 + 56))(v91, 1, 1, v22);
        }

        v67 = v88;
        v68 = v90;
        v69 = [v84 me];
        v70 = v32[5];
        v67[3] = v100;
        v67[4] = &off_1008643D8;
        v71 = sub_100005994(v67);
        sub_10001B104(v41, v68, &unk_1008DB8A0);
        v72 = v29(v68, 1, v42);
        v73 = v89;
        if (v72 == 1)
        {
          v74 = v70;
          UUID.init()();
          v75 = v29(v68, 1, v42);
          v76 = v85;
          if (v75 != 1)
          {
            sub_10000EA04(v68, &unk_1008DB8A0);
          }
        }

        else
        {
          v76 = v85;
          v85(v89, v68, v42);
          v77 = v70;
        }

        v78 = v92;
        v76(v92, v73, v42);
        v80 = v100;
        v79 = v101;
        v81 = v78 + *(v100 + 20);
        *v81 = v86;
        *(v81 + 8) = v79;
        *(v81 + 16) = 1;
        *(v78 + v80[6]) = 0;
        *(v78 + v80[7]) = v98 & 1;
        *(v78 + v80[8]) = 0;
        *(v78 + v80[9]) = v69;
        *(v78 + v80[10]) = 0;
        *(v78 + v80[11]) = 0;

        v82 = v42;
        v83 = [0 currentCompetition];
        sub_10000EA04(v41, &unk_1008DB8A0);
        *(v78 + v80[12]) = v83;
        *(v78 + v80[13]) = v70;
        sub_1004C0AC4(v78, v71, type metadata accessor for FriendCard);
        (*(v87 + 8))(v99, v82);
      }
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t sub_1004BF854@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v124 = a2;
  v125 = a1;
  v123 = a3;
  v4 = type metadata accessor for UUID();
  v128 = *(v4 - 8);
  v129 = v4;
  __chkstk_darwin(v4);
  v135 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = v120 - v7;
  v130 = type metadata accessor for FriendsHighlightCard();
  __chkstk_darwin(v130);
  v9 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (v120 - v11);
  v13 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v13 - 8);
  v15 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v120 - v17;
  __chkstk_darwin(v19);
  v126 = v120 - v20;
  __chkstk_darwin(v21);
  v127 = v120 - v22;
  v23 = type metadata accessor for Calendar();
  __chkstk_darwin(v23 - 8);
  v137 = v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ActivitySharingHighlight();
  v132 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  v27 = v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120[2] = 0;
  v28 = type metadata accessor for ActivitySharingHighlightViewModel();
  v136 = *(v28 - 1);
  __chkstk_darwin(v28);
  v30 = v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = *v140;
  if (!*v140)
  {
    v50 = v18;
    v51 = v15;
    v52 = v135;
    sub_10001B104(v125, v140, &qword_1008DCC60);
    v53 = v141;
    if (v141)
    {
      v54 = v142;
      sub_1000066AC(v140, v141);
      (*(v54 + 8))(v53, v54);
      v56 = v128;
      v55 = v129;
      (*(v128 + 56))(v50, 0, 1, v129);
      sub_100005A40(v140);
    }

    else
    {
      sub_10000EA04(v140, &qword_1008DCC60);
      v56 = v128;
      v55 = v129;
      (*(v128 + 56))(v50, 1, 1, v129);
    }

    v113 = v130;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LODWORD(v137) = v140[0];
    v114 = v123;
    v123[3] = v113;
    v114[4] = &off_10085B970;
    v104 = sub_100005994(v114);
    v115 = &v9[v113[5]];
    *v115 = xmmword_1006F4700;
    v115[16] = 3;
    v9[v113[6]] = 1;
    sub_10001B104(v50, v51, &unk_1008DB8A0);
    v116 = v50;
    v117 = *(v56 + 48);
    if (v117(v51, 1, v55) == 1)
    {
      UUID.init()();
      sub_10000EA04(v116, &unk_1008DB8A0);
      if (v117(v51, 1, v55) != 1)
      {
        sub_10000EA04(v51, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v116, &unk_1008DB8A0);
      (*(v56 + 32))(v52, v51, v55);
    }

    (*(v56 + 32))(v9, v52, v55);
    v9[v113[7]] = v124 & 1;
    v9[v113[8]] = 0;
    *&v9[v113[9]] = _swiftEmptyArrayStorage;
    *&v9[v113[10]] = 0;
    v9[v113[11]] = v137;
    v9[v113[12]] = 0;
    v112 = v9;
    return sub_1004C0AC4(v112, v104, type metadata accessor for FriendsHighlightCard);
  }

  v32 = *(*v140 + 16);
  v122 = v12;
  if (v32)
  {
    *v140 = _swiftEmptyArrayStorage;
    v33 = v31;
    sub_100185C78(0, v32, 0);
    v34 = *v140;
    v35 = *(v131 + 24);
    v134 = *(v131 + 16);
    v135 = v35;
    v36 = *(v131 + 32);
    v133 = *(v131 + 40);
    v37 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v120[1] = v33;
    v38 = v33 + v37;
    v132 = *(v132 + 72);
    do
    {
      sub_10002E710(v38, v27);
      sub_10002E710(v27, v30);
      v40 = v134;
      v39 = v135;
      *&v30[v28[5]] = v135;
      *&v30[v28[6]] = v40;
      v41 = v133;
      *&v30[v28[7]] = v133;
      *&v30[v28[8]] = v36;
      v30[v28[9]] = 1;
      v42 = v39;
      v43 = v40;
      v44 = v41;
      v45 = v36;
      static Calendar.autoupdatingCurrent.getter();
      FIUIRelativeDateTimeFormatter.init(calendar:)();
      v46 = v28[11];
      v47 = [objc_allocWithZone(NSDateFormatter) init];
      [v47 setDateStyle:1];
      sub_10002E870(v27);
      *&v30[v46] = v47;
      *v140 = v34;
      v49 = *(v34 + 2);
      v48 = *(v34 + 3);
      if (v49 >= v48 >> 1)
      {
        sub_100185C78(v48 > 1, v49 + 1, 1);
        v34 = *v140;
      }

      *(v34 + 2) = v49 + 1;
      sub_1004C0AC4(v30, &v34[((*(v136 + 80) + 32) & ~*(v136 + 80)) + v136[9] * v49], type metadata accessor for ActivitySharingHighlightViewModel);
      v38 += v132;
      --v32;
    }

    while (v32);
    v137 = v34;

    v12 = v122;
  }

  else
  {

    v137 = _swiftEmptyArrayStorage;
  }

  v57 = [*v131 allFriends];
  v59 = v129;
  v58 = v130;
  v60 = v128;
  v61 = v126;
  if (!v57)
  {
    v65 = 0;
    goto LABEL_34;
  }

  v62 = v57;
  sub_100288F9C();
  sub_1003E2D24();
  v63 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v63 & 0xC000000000000001) == 0)
  {
    v81 = *(v63 + 32);
    v135 = ((1 << v81) + 63) >> 6;
    if ((v81 & 0x3Fu) <= 0xD)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

  v65 = &_swiftEmptySetSingleton;
  *v140 = &_swiftEmptySetSingleton;
  v63 = __CocoaSet.makeIterator()();
  v66 = __CocoaSet.Iterator.next()();
  if (!v66)
  {
LABEL_32:

    v59 = v129;
    v58 = v130;
    v60 = v128;
    v12 = v122;
    v61 = v126;
    goto LABEL_34;
  }

  v61 = &type metadata for Swift.AnyObject;
  v58 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v12 = &selRef_initWithLayer_;
  v59 = -1;
  v60 = 1;
  while (1)
  {
    v138 = v66;
    swift_dynamicCast();
    v67 = v139;
    if ([v139 isMe] & 1) == 0 && (objc_msgSend(v67, "isFriendshipCurrentlyActive"))
    {
      break;
    }

LABEL_16:
    v66 = __CocoaSet.Iterator.next()();
    if (!v66)
    {
      goto LABEL_32;
    }
  }

  v68 = v139;
  v69 = *(v65 + 16);
  if (*(v65 + 24) <= v69)
  {
    sub_100066904(v69 + 1);
  }

  v65 = *v140;
  v70 = NSObject._rawHashValue(seed:)(*(*v140 + 40));
  v71 = v65 + 56;
  v72 = -1 << *(v65 + 32);
  v73 = v70 & ~v72;
  v74 = v73 >> 6;
  if (((-1 << v73) & ~*(v65 + 56 + 8 * (v73 >> 6))) != 0)
  {
    v75 = __clz(__rbit64((-1 << v73) & ~*(v65 + 56 + 8 * (v73 >> 6)))) | v73 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v71 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
    *(*(v65 + 48) + 8 * v75) = v68;
    ++*(v65 + 16);
    goto LABEL_16;
  }

  v76 = 0;
  v77 = (63 - v72) >> 6;
  while (++v74 != v77 || (v76 & 1) == 0)
  {
    v78 = v74 == v77;
    if (v74 == v77)
    {
      v74 = 0;
    }

    v76 |= v78;
    v79 = *(v71 + 8 * v74);
    if (v79 != -1)
    {
      v75 = __clz(__rbit64(~v79)) + (v74 << 6);
      goto LABEL_31;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_75:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_36:
    v134 = v120;
    __chkstk_darwin(v64);
    v83 = v120 - ((v82 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v83, v82);
    v136 = 0;
    v60 = 0;
    v12 = (v63 + 56);
    v84 = 1 << *(v63 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v63 + 56);
    v59 = (v84 + 63) >> 6;
    v58 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    while (v86)
    {
      v87 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
LABEL_47:
      v91 = v87 | (v60 << 6);
      v92 = *(*(v63 + 48) + 8 * v91);
      if ([v92 isMe])
      {
      }

      else
      {
        v61 = [v92 isFriendshipCurrentlyActive];

        if (v61)
        {
          v93 = (v91 >> 3) & 0x1FFFFFFFFFFFFFF8;
          v89 = *&v83[v93];
          *&v83[v93] = v89 | (1 << v91);
          v94 = __OFADD__(v136, 1);
          v136 = (v136 + 1);
          if (v94)
          {
            __break(1u);
LABEL_52:
            v95 = v89;
            v65 = sub_1004C0D28(v83, v135, v136, v63);
            v80 = v95;
            v59 = v129;
            v58 = v130;
            v60 = v128;
            v12 = v122;
            goto LABEL_53;
          }
        }
      }
    }

    v88 = v60;
    v61 = v126;
    v89 = v125;
    while (1)
    {
      v60 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v60 >= v59)
      {
        goto LABEL_52;
      }

      v90 = v12[v60];
      ++v88;
      if (v90)
      {
        v87 = __clz(__rbit64(v90));
        v86 = (v90 - 1) & v90;
        goto LABEL_47;
      }
    }
  }

  v119 = swift_slowAlloc();
  v65 = sub_1004C0C98(v119, v135, v63, sub_1004C083C);

LABEL_34:
  v80 = v125;
LABEL_53:
  sub_10001B104(v80, v140, &qword_1008DCC60);
  v96 = v141;
  if (v141)
  {
    v97 = v142;
    sub_1000066AC(v140, v141);
    v98 = v127;
    (*(v97 + 8))(v96, v97);
    (*(v60 + 56))(v98, 0, 1, v59);
    sub_100005A40(v140);
  }

  else
  {
    sub_10000EA04(v140, &qword_1008DCC60);
    (*(v60 + 56))(v127, 1, 1, v59);
  }

  v99 = *(v131 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v99;
  static Published.subscript.getter();

  v136 = v100;
  LODWORD(v135) = v140[0];
  if (v65)
  {
    if ((v65 & 0xC000000000000001) != 0)
    {
      v101 = __CocoaSet.count.getter();
    }

    else
    {
      v101 = *(v65 + 16);
    }

    v103 = v127;

    LOBYTE(v65) = v101 != 0;
    v102 = v123;
  }

  else
  {
    v102 = v123;
    v103 = v127;
  }

  v102[3] = v58;
  v102[4] = &off_10085B970;
  v104 = sub_100005994(v102);
  v105 = v12 + v58[5];
  *v105 = xmmword_1006F4700;
  v105[16] = 3;
  *(v12 + v58[6]) = 1;
  sub_10001B104(v103, v61, &unk_1008DB8A0);
  v106 = v61;
  v107 = *(v60 + 48);
  if (v107(v106, 1, v59) == 1)
  {
    v108 = v121;
    UUID.init()();
    sub_10000EA04(v103, &unk_1008DB8A0);
    v109 = v107(v106, 1, v59);
    v110 = v108;
    v12 = v122;
    if (v109 != 1)
    {
      sub_10000EA04(v106, &unk_1008DB8A0);
    }
  }

  else
  {
    sub_10000EA04(v103, &unk_1008DB8A0);
    v110 = v121;
    (*(v60 + 32))(v121, v106, v59);
  }

  (*(v60 + 32))(v12, v110, v59);
  *(v12 + v58[7]) = v124 & 1;
  *(v12 + v58[8]) = 1;
  v111 = v136;
  *(v12 + v58[9]) = v137;
  *(v12 + v58[10]) = v111;
  *(v12 + v58[11]) = v135;
  *(v12 + v58[12]) = v65;
  v112 = v12;
  return sub_1004C0AC4(v112, v104, type metadata accessor for FriendsHighlightCard);
}

id sub_1004C083C(id *a1)
{
  v1 = *a1;
  if ([*a1 isMe])
  {
    return 0;
  }

  else
  {
    return [v1 isFriendshipCurrentlyActive];
  }
}

void sub_1004C0890(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  if (a3 == 1)
  {
    sub_1004BEE80(a1, a2, a4, a5 & 1, a6);
  }

  else if (a3 == 3 && a1 == 4 && !a2)
  {
    sub_1004BF854(a4, a5 & 1, a6);
  }

  else
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }
}

uint64_t sub_1004C08D8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1004C0958()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1004C09D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1004C0A54(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1004C0AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1004C0B2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1004C0D28(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1004C0C98(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1004C0B2C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1004C0D28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100140278(&qword_1008DF0C0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1004C0F1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100140278(&qword_1008DF1E0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1004C1124(uint64_t a1, uint64_t a2, int a3)
{
  v28 = a3;
  v27 = a2;
  v32 = type metadata accessor for AttributedString.Runs.Index();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AttributedString.Runs.Run();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008EF8A8);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  (*(v10 + 16))(v12, a1, v9);
  sub_10005FBE4(&qword_1008EF8B0, &type metadata accessor for AttributedString.Runs);
  dispatch thunk of Sequence.makeIterator()();
  sub_10005FBE4(&qword_1008EF8B8, &type metadata accessor for AttributedString.Runs);
  v29 = (v5 + 8);
  v23 = (v7 + 8);
  v24 = (v7 + 16);
  while (1)
  {
    v16 = v30;
    dispatch thunk of Collection.endIndex.getter();
    sub_10005FBE4(&qword_1008EF8C0, &type metadata accessor for AttributedString.Runs.Index);
    v17 = v32;
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v29)(v16, v17);
    if (v18)
    {
      break;
    }

    v19 = dispatch thunk of Collection.subscript.read();
    v20 = v25;
    v21 = v26;
    (*v24)(v25);
    v19(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    sub_1004C49F8(v20, v27, v28 & 1);
    if (v3)
    {
      (*v23)(v20, v21);
      return sub_10000EA04(v15, &qword_1008EF8A8);
    }

    (*v23)(v20, v21);
  }

  return sub_10000EA04(v15, &qword_1008EF8A8);
}

id sub_1004C154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a4;
  v50 = a3;
  v9 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = [objc_opt_self() mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D1F70;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_10000A788();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v16;
  *(v15 + 64) = v16;
  *(v15 + 72) = a3;
  v17 = v49;
  *(v15 + 80) = v49;

  v18 = String.init(format:_:)();
  v20 = v19;

  v48 = sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  v46 = xmmword_1006D46C0;
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  v47 = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 64) = v47;
  *(inited + 40) = a5;
  v44 = NSFontAttributeName;
  v45 = a5;
  sub_1004C9888(inited, &qword_1008E2568, &unk_1006E3D40, &unk_1008EE730);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &unk_1008EE730);
  v22 = objc_allocWithZone(NSMutableAttributedString);
  v23 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  v25 = v24;
  sub_10005FBE4(&qword_1008E7FD0, type metadata accessor for Key);
  v43[1] = v25;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = [v22 initWithString:v23 attributes:isa];

  v53 = v18;
  v54 = v20;
  v51 = v50;
  v52 = v17;
  v28 = type metadata accessor for Locale();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  sub_10000FCBC();
  v29 = StringProtocol.range<A>(of:options:range:locale:)();
  v31 = v30;
  LOBYTE(v22) = v32;
  sub_10000EA04(v11, &qword_1008EB540);
  if (v22)
  {
  }

  else
  {
    v53 = v29;
    v54 = v31;
    v51 = v18;
    v52 = v20;
    sub_100140278(&qword_1008EB548);
    sub_1004CAD58(&qword_1008EB550, &qword_1008EB548);
    v33 = _NSRange.init<A, B>(_:in:)();
    v35 = v34;
    v36 = swift_initStackObject();
    *(v36 + 16) = v46;
    v37 = v44;
    *(v36 + 32) = v44;
    v38 = v37;
    v39 = sub_1004CD164(v45, 38, 1);
    *(v36 + 64) = v47;
    *(v36 + 40) = v39;
    sub_1004C9888(v36, &qword_1008E2568, &unk_1006E3D40, &unk_1008EE730);
    swift_setDeallocating();
    sub_10000EA04(v36 + 32, &unk_1008EE730);
    v40 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v27 setAttributes:v40 range:{v33, v35}];
  }

  v41 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v27];

  return v41;
}

uint64_t sub_1004C1ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a3;
  v37 = a6;
  v38 = a7;
  v39 = a5;
  v35 = a1;
  v9 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v40 = sub_100140278(&qword_1008E1908);
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = &v34 - v16;
  v17 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v17 - 8);
  v18 = [objc_opt_self() mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D1F70;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_10000A788();
  *(v21 + 32) = v35;
  *(v21 + 40) = a2;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  v23 = v36;
  *(v21 + 64) = v22;
  *(v21 + 72) = v23;
  *(v21 + 80) = a4;

  String.init(format:_:)();
  v24 = v37;

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v25 = v39;
  v42[0] = v39;
  sub_1001ED5AC();
  v25;
  AttributedString.subscript.setter();
  if (v24)
  {
    v42[0] = v24;
    sub_1002EFC08();
    v26 = v24;
    AttributedString.subscript.setter();
  }

  v42[0] = v23;
  v42[1] = a4;
  v27 = type metadata accessor for Locale();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  type metadata accessor for AttributedString();
  sub_10005FBE4(&qword_1008E1918, &type metadata accessor for AttributedString);
  sub_10000FCBC();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v11, &qword_1008EB540);
  if ((*(v15 + 48))(v14, 1, v40) == 1)
  {
    v28 = &qword_1008E1900;
    v29 = v14;
  }

  else
  {
    v30 = v34;
    sub_10007BE08(v14, v34);
    isa = UIFont.smallCapsVersion()().super.isa;
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908);
    v32 = AttributedString.subscript.modify();
    v41 = isa;
    AttributedSubstring.subscript.setter();
    v32(v42, 0);
    v29 = v30;
    v28 = &qword_1008E1908;
  }

  return sub_10000EA04(v29, v28);
}

unint64_t sub_1004C1FE0(uint64_t a1)
{
  v19 = [objc_allocWithZone(NSMutableAttributedString) init];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v19;
  }

  sub_100140278(&qword_1008E2568);
  v18 = sub_1000059F8(0, &qword_1008E7FC0);
  for (i = (a1 + 48); ; i += 3)
  {
    v20 = v2;
    v4 = *i;
    v23[4] = v18;
    v23[0] = NSForegroundColorAttributeName;
    v23[1] = v4;
    v5 = static _DictionaryStorage.allocate(capacity:)();
    v6 = v4;

    v7 = NSForegroundColorAttributeName;
    sub_10001B104(v23, &v21, &unk_1008EE730);
    v8 = v21;
    result = sub_1004C5470(v21);
    if (v10)
    {
      break;
    }

    v5[(result >> 6) + 8] |= 1 << result;
    *(v5[6] + 8 * result) = v8;
    result = sub_1001AA76C(&v22, (v5[7] + 32 * result));
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      goto LABEL_8;
    }

    v5[2] = v13;
    sub_10000EA04(v23, &unk_1008EE730);
    v14 = objc_allocWithZone(NSAttributedString);
    v15 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10005FBE4(&qword_1008E7FD0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v14 initWithString:v15 attributes:isa];

    [v19 appendAttributedString:v17];
    --v2;
    if (v20 == 1)
    {
      return v19;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

id sub_1004C2254(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v55 = a6;
  v53 = a5;
  v54 = a3;
  v12 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D64F0;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_10000A788();
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v19;
  v20 = v54;
  *(v18 + 64) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = a4;
  *(v18 + 136) = &type metadata for String;
  *(v18 + 144) = v19;
  *(v18 + 112) = a5;
  *(v18 + 120) = v55;

  v21 = String.init(format:_:)();
  v23 = v22;

  v52 = a7;
  v24 = sub_1004CD164(a7, 33, 0);
  v51 = sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  v49 = xmmword_1006D46C0;
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  v50 = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 64) = v50;
  *(inited + 40) = v24;
  v48 = NSFontAttributeName;
  v54 = v24;
  sub_1004C9888(inited, &qword_1008E2568, &unk_1006E3D40, &unk_1008EE730);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &unk_1008EE730);
  v26 = objc_allocWithZone(NSMutableAttributedString);
  v27 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  v29 = v28;
  sub_10005FBE4(&qword_1008E7FD0, type metadata accessor for Key);
  v47 = v29;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v26 initWithString:v27 attributes:isa];

  v58 = v21;
  v59 = v23;
  v56 = v53;
  v57 = v55;
  v32 = type metadata accessor for Locale();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  sub_10000FCBC();
  v33 = StringProtocol.range<A>(of:options:range:locale:)();
  v35 = v34;
  LOBYTE(isa) = v36;
  sub_10000EA04(v14, &qword_1008EB540);
  if (isa)
  {
  }

  else
  {
    v58 = v33;
    v59 = v35;
    v56 = v21;
    v57 = v23;
    sub_100140278(&qword_1008EB548);
    sub_1004CAD58(&qword_1008EB550, &qword_1008EB548);
    v37 = _NSRange.init<A, B>(_:in:)();
    v39 = v38;
    v40 = swift_initStackObject();
    *(v40 + 16) = v49;
    v41 = v48;
    *(v40 + 32) = v48;
    v42 = v41;
    v43 = sub_1004CD164(v52, 38, 1);
    *(v40 + 64) = v50;
    *(v40 + 40) = v43;
    sub_1004C9888(v40, &qword_1008E2568, &unk_1006E3D40, &unk_1008EE730);
    swift_setDeallocating();
    sub_10000EA04(v40 + 32, &unk_1008EE730);
    v44 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 setAttributes:v44 range:{v37, v39}];
  }

  v45 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v31];

  return v45;
}

uint64_t sub_1004C2838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a6;
  v47 = a7;
  v44 = a8;
  v45 = a5;
  v42 = a1;
  v43 = a3;
  v10 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v10 - 8);
  v40 = &v38 - v11;
  v12 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v41 = sub_100140278(&qword_1008E1908);
  v48 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v38 - v18;
  v19 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v19 - 8);
  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1006D64F0;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_10000A788();
  v25 = v43;
  *(v23 + 32) = v42;
  *(v23 + 40) = a2;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = a4;
  *(v23 + 136) = &type metadata for String;
  *(v23 + 144) = v24;
  v26 = v46;
  *(v23 + 112) = v45;
  *(v23 + 120) = v26;

  String.init(format:_:)();

  AttributeContainer.init()();
  v27 = v41;
  AttributedString.init(_:attributes:)();
  v50[0] = v47;
  sub_10005F988();

  AttributedString.subscript.setter();
  v50[0] = 32;
  v50[1] = 0xE100000000000000;
  v28 = type metadata accessor for Locale();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  type metadata accessor for AttributedString();
  sub_10005FBE4(&qword_1008E1918, &type metadata accessor for AttributedString);
  sub_10000FCBC();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v14, &qword_1008EB540);
  if ((*(v48 + 48))(v17, 1, v27) == 1)
  {
    v29 = &qword_1008E1900;
    v30 = v17;
  }

  else
  {
    v31 = v17;
    v32 = v39;
    sub_10007BE08(v31, v39);
    v33 = type metadata accessor for Font.Design();
    v34 = v40;
    (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
    v35 = static Font.system(size:weight:design:)();
    sub_10000EA04(v34, &qword_1008DC448);
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908);
    v36 = AttributedString.subscript.modify();
    v49 = v35;
    AttributedSubstring.subscript.setter();
    v36(v50, 0);
    v30 = v32;
    v29 = &qword_1008E1908;
  }

  return sub_10000EA04(v30, v29);
}

uint64_t sub_1004C2DD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a8;
  v79 = a7;
  v75 = a3;
  v76 = a5;
  v74 = a1;
  v11 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v11 - 8);
  v71 = v66 - v12;
  v13 = sub_100140278(&qword_1008EF8C8);
  __chkstk_darwin(v13 - 8);
  v68 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = v66 - v16;
  v17 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v17 - 8);
  v73 = v66 - v18;
  v19 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v19 - 8);
  v80 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = v66 - v22;
  v23 = sub_100140278(&qword_1008E1908);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v70 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v67 = v66 - v27;
  v28 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v28 - 8);
  v29 = [objc_opt_self() mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 localizedStringForKey:v30 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006D64F0;
  *(v32 + 56) = &type metadata for String;
  v33 = sub_10000A788();
  v34 = v75;
  *(v32 + 32) = v74;
  *(v32 + 40) = a2;
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = v33;
  *(v32 + 64) = v33;
  *(v32 + 72) = v34;
  *(v32 + 80) = a4;
  *(v32 + 136) = &type metadata for String;
  *(v32 + 144) = v33;
  v35 = v76;
  *(v32 + 112) = v76;
  *(v32 + 120) = a6;
  v36 = v23;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v82 = v79;
  v37 = sub_10005F988();

  AttributedString.subscript.setter();
  v82 = v35;
  v83 = a6;
  v38 = v73;
  v39 = type metadata accessor for Locale();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v42 = v40 + 56;
  v41(v38, 1, 1, v39);
  v43 = type metadata accessor for AttributedString();
  v44 = sub_10005FBE4(&qword_1008E1918, &type metadata accessor for AttributedString);
  v45 = sub_10000FCBC();
  v76 = v43;
  v46 = v77;
  v74 = v45;
  v75 = v44;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v38, &qword_1008EB540);
  v47 = *(v24 + 48);
  v48 = v36;
  v79 = v24 + 48;
  v72 = v47;
  if (v47(v46, 1, v36) == 1)
  {
    v49 = &qword_1008E1900;
    v50 = v46;
  }

  else
  {
    v77 = v37;
    v51 = v67;
    sub_10007BE08(v46, v67);
    v52 = v69;
    static Text.Scale.secondary.getter();
    v53 = type metadata accessor for Text.Scale();
    (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908);
    v54 = AttributedString.subscript.modify();
    v66[1] = v42;
    v55 = v41;
    v56 = v54;
    sub_10001B104(v52, v68, &qword_1008EF8C8);
    sub_10007C248();
    AttributedSubstring.subscript.setter();
    v48 = v36;
    sub_10000EA04(v52, &qword_1008EF8C8);
    v56(&v82, 0);
    v41 = v55;
    v50 = v51;
    v49 = &qword_1008E1908;
  }

  sub_10000EA04(v50, v49);
  v82 = 32;
  v83 = 0xE100000000000000;
  v41(v38, 1, 1, v39);
  v57 = v80;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v38, &qword_1008EB540);
  if (v72(v57, 1, v48) == 1)
  {
    v58 = &qword_1008E1900;
    v59 = v57;
  }

  else
  {
    v60 = v70;
    sub_10007BE08(v57, v70);
    v61 = type metadata accessor for Font.Design();
    v62 = v71;
    (*(*(v61 - 8) + 56))(v71, 1, 1, v61);
    v63 = static Font.system(size:weight:design:)();
    sub_10000EA04(v62, &qword_1008DC448);
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908);
    v64 = AttributedString.subscript.modify();
    v81 = v63;
    AttributedSubstring.subscript.setter();
    v64(&v82, 0);
    v59 = v60;
    v58 = &qword_1008E1908;
  }

  return sub_10000EA04(v59, v58);
}

uint64_t sub_1004C3650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a6;
  v44 = a5;
  v41 = a1;
  v42 = a7;
  v10 = sub_100140278(&qword_1008EF8C8);
  v11 = __chkstk_darwin(v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = &v37 - v13;
  v14 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v17 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v17 - 8);
  v19 = &v37 - v18;
  v20 = sub_100140278(&qword_1008E1908);
  v45 = *(v20 - 8);
  v46 = v20;
  __chkstk_darwin(v20);
  v38 = &v37 - v21;
  v22 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v22 - 8);
  v23 = [objc_opt_self() mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 localizedStringForKey:v24 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006D1F70;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_10000A788();
  *(v26 + 32) = v41;
  *(v26 + 40) = a2;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = a3;
  *(v26 + 80) = a4;

  String.init(format:_:)();

  AttributeContainer.init()();
  v28 = v43;
  AttributedString.init(_:attributes:)();
  v47[0] = v44;
  sub_10005F988();

  AttributedString.subscript.setter();
  if (v28)
  {
    v47[0] = v28;
    sub_10005FAB0();

    AttributedString.subscript.setter();
  }

  v47[0] = a3;
  v47[1] = a4;
  v29 = type metadata accessor for Locale();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  type metadata accessor for AttributedString();
  sub_10005FBE4(&qword_1008E1918, &type metadata accessor for AttributedString);
  sub_10000FCBC();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v16, &qword_1008EB540);
  if ((*(v45 + 48))(v19, 1, v46) == 1)
  {
    v30 = &qword_1008E1900;
    v31 = v19;
  }

  else
  {
    v32 = v38;
    sub_10007BE08(v19, v38);
    v33 = v40;
    static Text.Scale.secondary.getter();
    v34 = type metadata accessor for Text.Scale();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    sub_1004CAD58(&qword_1008E1920, &qword_1008E1908);
    v35 = AttributedString.subscript.modify();
    sub_10001B104(v33, v39, &qword_1008EF8C8);
    sub_10007C248();
    AttributedSubstring.subscript.setter();
    sub_10000EA04(v33, &qword_1008EF8C8);
    v35(v47, 0);
    v31 = v32;
    v30 = &qword_1008E1908;
  }

  return sub_10000EA04(v31, v30);
}