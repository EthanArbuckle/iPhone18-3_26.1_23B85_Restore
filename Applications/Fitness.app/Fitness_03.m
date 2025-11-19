uint64_t type metadata accessor for ActivityRingsCard()
{
  result = qword_1008EB150;
  if (!qword_1008EB150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049160(unsigned __int8 a1, Swift::Int a2, uint64_t a3, void *a4)
{
  v7 = a1;
  _StringGuts.grow(_:)(a2);

  strcpy(v16, "CARD_FAMILY_");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  v8._countAndFlagsBits = sub_1000492F0(a1);
  String.append(_:)(v8);

  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();

  v12 = 0;
  if (v7 == 19)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t sub_1000492F0(char a1)
{
  result = 0x53474E4952;
  switch(a1)
  {
    case 1:
      return 0x454D5F5350455453;
    case 2:
      v3 = 0x534548535550;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4D5F000000000000;
    case 3:
      return 0x59524F54534948;
    case 4:
      return 1397770580;
    case 5:
      return 0x505353454E544946;
    case 6:
      return 0xD00000000000001ALL;
    case 7:
      return 1145130828;
    case 8:
      return 0x53444E455254;
    case 9:
      return 0x53444E45495246;
    case 10:
      return 0x534452415741;
    case 11:
      return 0xD00000000000001FLL;
    case 12:
      return 0xD00000000000001FLL;
    case 13:
      v4 = 1313756498;
      goto LABEL_18;
    case 14:
      v4 = 1279482179;
      goto LABEL_18;
    case 15:
      return 0xD000000000000010;
    case 16:
      v3 = 0x474E494B4948;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4D5F000000000000;
    case 17:
      v4 = 1263288663;
LABEL_18:
      result = v4 | 0x5F474E4900000000;
      break;
    case 18:
      result = 0x5F4C5546444E494DLL;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100049548()
{
  result = qword_1008EE310;
  if (!qword_1008EE310)
  {
    sub_100141EEC(&qword_1008EE290);
    sub_100463890(&qword_1008EE318, &qword_1008EE288, &unk_1006F22B8, sub_100463940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE310);
  }

  return result;
}

unint64_t sub_100049614()
{
  result = qword_1008EE338;
  if (!qword_1008EE338)
  {
    sub_100141EEC(&qword_1008EE330);
    sub_100048AF0(&qword_1008EE340, &qword_1008EE348, &unk_1006F2378, sub_10034171C);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE338);
  }

  return result;
}

unint64_t sub_1000496F8()
{
  result = qword_1008EE350;
  if (!qword_1008EE350)
  {
    sub_100141EEC(&qword_1008EE260);
    sub_100141EEC(&qword_1008EE330);
    sub_100049614();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE350);
  }

  return result;
}

uint64_t sub_1000497EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = __chkstk_darwin(result);
    UnfairLock.acquire<A>(_:)();

    PassthroughSubject.send(_:)();

    sub_100049A20(1);
    sub_10001D544();
  }

  return result;
}

uint64_t sub_1000498F8(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100049C98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

char *sub_1000499F0(char *a1, int64_t a2, char a3)
{
  result = sub_100049BAC(a1, a2, a3, *v3, &qword_1008DE400);
  *v3 = result;
  return result;
}

void *sub_100049A20(char a1)
{
  for (i = 0; i != 39; ++i)
  {
    v5 = *(&off_100845858 + i + 32);
    if (v5 - 4 >= 0x22)
    {
      if (v5 >= 4)
      {
        if (a1 != 2)
        {
          continue;
        }
      }

      else if (a1)
      {
        continue;
      }
    }

    else if (a1 != 1)
    {
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000499F0(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v4 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage[3];
    if (v4 >= v3 >> 1)
    {
      sub_1000499F0((v3 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v4 + 1;
    *(&_swiftEmptyArrayStorage[4] + v4) = v5;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100049B38(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100049DE4();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000498F8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_100049BAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

Swift::Int sub_100049C98(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001A5D8C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001A7604();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001A85D4();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100049DE4()
{
  result = qword_1008DF1D8;
  if (!qword_1008DF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF1D8);
  }

  return result;
}

uint64_t sub_100049E38()
{
  **(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activeMetrics);
}

void sub_100049E80()
{
  static os_log_type_t.info.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);

    v4 = *&v3[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider];
    v5 = FIUICopyUserFirstNameFromAddressBook();
    [v4 setName:v5];
  }
}

void sub_100049F88(uint64_t a1)
{
  v121 = a1;
  v95 = *v1;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v94 = &v91 - v3;
  v4 = sub_100140278(&qword_1008DE950);
  __chkstk_darwin(v4 - 8);
  v6 = &v91 - v5;
  v120 = type metadata accessor for ActivitySharingFriendListItem();
  v116 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v8 - 8);
  v110 = &v91 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v101 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v91 - v14;
  v15 = type metadata accessor for ActivitySharingFriendListDateItemGroup();
  v16 = *(v15 - 8);
  v108 = v15;
  v109 = v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v96 = &v91 - v19;
  v20 = static os_log_type_t.default.getter();
  v21 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v20))
  {
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v125 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10000AFDC(0xD00000000000001ELL, 0x8000000100749E50, &v125);
    _os_log_impl(&_mh_execute_header, v22, v20, "%s", v23, 0xCu);
    sub_100005A40(v24);
  }

  v25 = *(v122 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendListSectionManager);
  if (![v25 hasInitializedFriendData])
  {
    v34 = static os_log_type_t.default.getter();
    v35 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v34))
    {
      v36 = v35;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v125 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10000AFDC(0xD00000000000001ELL, 0x8000000100749E50, &v125);
      _os_log_impl(&_mh_execute_header, v36, v34, "%s friend data is not initialized.", v37, 0xCu);
      sub_100005A40(v38);
    }

    return;
  }

  v26 = [v25 sectionForFriendsCompetingWithMe];
  v27 = [v26 rows];

  v106 = sub_1000059F8(0, &qword_1008DE958);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = _swiftEmptyArrayStorage;
  if (v28 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v93 = v25;
    if (i)
    {
      v124 = v11;
      v25 = 0;
      v11 = v28 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v30 = *(v28 + 8 * v25 + 32);
        }

        v31 = v30;
        v32 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v33 = [v30 friend];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v125[2] >= v125[3] >> 1)
        {
          v103 = v10;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v103;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v25;
        if (v32 == i)
        {
          v92 = v125;
          v11 = v124;
          goto LABEL_20;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v92 = _swiftEmptyArrayStorage;
LABEL_20:

    v39 = [objc_allocWithZone(ASFriendListDisplayContext) init];
    [v39 setDisplayMode:v121];
    [v39 setDisplayFilter:1];
    v91 = v39;
    v40 = [v93 sectionsForDisplayContext:v39];
    sub_1000059F8(0, &qword_1008DE960);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = v41;
    if (!(v41 >> 62))
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        break;
      }

      goto LABEL_22;
    }

    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (!v42)
    {
      break;
    }

LABEL_22:
    v125 = _swiftEmptyArrayStorage;
    sub_10004AF88(0, v42 & ~(v42 >> 63), 0);
    if (v42 < 0)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return;
    }

    v43 = 0;
    v115 = v125;
    v118 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_pauseRingsCoordinator;
    v105 = v100 & 0xC000000000000001;
    v99 = v100 & 0xFFFFFFFFFFFFFF8;
    v97 = v100 + 32;
    v111 = (v11 + 32);
    v104 = (v11 + 56);
    v98 = (v11 + 48);
    v117 = (v116 + 48);
    v103 = v10;
    v102 = v42;
    while (!__OFADD__(v43, 1))
    {
      v113 = v43 + 1;
      if (v105)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *(v99 + 16))
        {
          goto LABEL_60;
        }

        v44 = *(v97 + 8 * v43);
      }

      v45 = v44;
      v46 = [v44 startDate];
      if (v46)
      {
        v47 = v101;
        v48 = v46;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v110;
        v50 = *v111;
        (*v111)(v110, v47, v10);
        (*v104)(v49, 0, 1, v10);
        v50(v114, v49, v10);
      }

      else
      {
        v51 = v110;
        (*v104)(v110, 1, 1, v10);
        Date.init()();
        if ((*v98)(v51, 1, v10) != 1)
        {
          sub_10000EA04(v110, &unk_1008F73A0);
        }
      }

      v52 = [v45 rows];
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v112 = v45;
        if (v10)
        {
LABEL_35:
          v25 = 0;
          v123 = v28 & 0xFFFFFFFFFFFFFF8;
          v124 = v28 & 0xC000000000000001;
          v53 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v124)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v25 >= *(v123 + 16))
              {
                goto LABEL_56;
              }

              v54 = *(v28 + 8 * v25 + 32);
            }

            v55 = v54;
            v11 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            v56 = [v54 friend];
            v57 = v6;
            v58 = [v55 snapshot];
            sub_10004B018(v56, v58, v121, *(v122 + v118), v57);

            v6 = v57;
            if ((*v117)(v57, 1, v120) == 1)
            {
              sub_10000EA04(v57, &qword_1008DE950);
            }

            else
            {
              sub_100052954(v57, v119, type metadata accessor for ActivitySharingFriendListItem);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_100052B00(0, v53[2] + 1, 1, v53);
              }

              v60 = v53[2];
              v59 = v53[3];
              if (v60 >= v59 >> 1)
              {
                v53 = sub_100052B00(v59 > 1, v60 + 1, 1, v53);
              }

              v53[2] = v60 + 1;
              sub_100052954(v119, v53 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v60, type metadata accessor for ActivitySharingFriendListItem);
            }

            ++v25;
            if (v11 == v10)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
        v10 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v112 = v45;
        if (v10)
        {
          goto LABEL_35;
        }
      }

      v53 = _swiftEmptyArrayStorage;
LABEL_51:

      v25 = v107;
      v10 = v103;
      (*v111)(v107, v114, v103);
      *(v25 + *(v108 + 20)) = v53;
      v61 = v115;
      v125 = v115;
      v63 = v115[2];
      v62 = v115[3];
      v28 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        sub_10004AF88(v62 > 1, v63 + 1, 1);
        v61 = v125;
      }

      v61[2] = v28;
      v64 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v115 = v61;
      sub_100052954(v25, v61 + v64 + *(v109 + 72) * v63, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v43 = v113;
      if (v113 == v102)
      {

        v65 = v115;
        goto LABEL_64;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v65 = _swiftEmptyArrayStorage;
LABEL_64:
  v66 = v65[2];
  v67 = v96;
  v115 = v65;
  v68 = 0;
  if (v66)
  {
    v69 = *(v108 + 20);
    v70 = v65 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v71 = *(v109 + 72);
    do
    {
      sub_100057D00(v70, v67, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v72 = *(*(v67 + v69) + 16);
      v73 = __OFADD__(v68, v72);
      v68 += v72;
      if (v73)
      {
        __break(1u);
        goto LABEL_81;
      }

      sub_100057BF0(v67, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v70 += v71;
      --v66;
    }

    while (v66);
  }

  v74 = [v93 sectionForFriendsInvitedByMe];
  v75 = [v74 rows];

  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v66 >> 62)
  {
    goto LABEL_83;
  }

  for (j = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v125 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (j < 0)
    {
      goto LABEL_88;
    }

    v77 = 0;
    v124 = v66 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if ((v66 & 0xC000000000000001) != 0)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v77 >= *(v124 + 16))
        {
          goto LABEL_82;
        }

        v79 = *(v66 + 8 * v77 + 32);
      }

      v80 = v79;
      v81 = [v79 friend];
      v82 = [v81 contact];

      if (!v82)
      {
        goto LABEL_89;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v77;
      if (v78 == j)
      {

        v83 = v125;
        goto LABEL_85;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_85:
  v84 = type metadata accessor for TaskPriority();
  v85 = v94;
  (*(*(v84 - 8) + 56))(v94, 1, 1, v84);
  type metadata accessor for MainActor();
  v86 = v122;

  v87 = static MainActor.shared.getter();
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = &protocol witness table for MainActor;
  v88[4] = v92;
  v88[5] = v68;
  v89 = v115;
  v88[6] = v86;
  v88[7] = v89;
  v90 = v95;
  v88[8] = v83;
  v88[9] = v90;
  sub_10026E198(0, 0, v85, &unk_1006D8388, v88);
}

uint64_t sub_10004AF30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

size_t sub_10004AF88(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE5D0, &unk_1006D7D50, type metadata accessor for ActivitySharingFriendListDateItemGroup);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for ActivitySharingFriendListDateItemGroup()
{
  result = qword_1008E1460;
  if (!qword_1008E1460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004B018(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v128 = a1;
  v111 = type metadata accessor for UUID();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Date();
  v124 = *(v118 - 8);
  v15 = __chkstk_darwin(v118);
  v112 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v122 = &v101 - v18;
  __chkstk_darwin(v17);
  v119 = &v101 - v19;
  v20 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v20 - 8);
  v123 = &v101 - v21;
  v22 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v22 - 8);
  v127 = type metadata accessor for AttributedString();
  v120 = *(v127 - 8);
  v23 = __chkstk_darwin(v127);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v125 = &v101 - v27;
  __chkstk_darwin(v26);
  v126 = &v101 - v28;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = String._bridgeToObjectiveC()();

  v30 = [objc_opt_self() displayContextWithName:v29];

  if (v30)
  {
    v108 = a5;
    v121 = v30;
    v106 = v13;
    v31 = [v128 displayName];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      if (![v128 isMe])
      {
        v107 = 0;
        v35 = v119;
        v33 = v121;
        if (!a2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v33 = v121;
      v34 = [v121 keyColorForDisplayMode:a3];
      v35 = v119;
      if (v34)
      {
        v107 = Color.init(uiColor:)();
        if (!a2)
        {
          goto LABEL_12;
        }

LABEL_11:
        if (([a2 hasCarriedForwardGoals] & 1) == 0)
        {
          v38 = [a2 activitySummary];
LABEL_14:
          if ([v128 isMe])
          {
            v39 = [a4 isPaused];
            if (v38)
            {
LABEL_16:
              v40 = v38;
              v41 = v38;
              goto LABEL_19;
            }
          }

          else
          {
            v39 = 0;
            if (v38)
            {
              goto LABEL_16;
            }
          }

          v41 = [objc_allocWithZone(HKActivitySummary) init];
          v40 = 0;
LABEL_19:
          v42 = v40;
          [v41 setDeprecatedPauseForInternalSwiftClient:v39];
          v105 = v41;
          v104 = v39;
          if (a3 <= 2)
          {
            if (a3 >= 2)
            {
              if (a3 != 2)
              {
LABEL_50:
                v79 = static os_log_type_t.fault.getter();
                v80 = HKLogActivity;
                if (os_log_type_enabled(HKLogActivity, v79))
                {
                  v81 = v80;
                  v82 = swift_slowAlloc();
                  v83 = swift_slowAlloc();
                  v130 = v83;
                  *v82 = 136315394;
                  *(v82 + 4) = sub_10000AFDC(0xD000000000000049, 0x8000000100749E00, &v130);
                  *(v82 + 12) = 2048;
                  *(v82 + 14) = a3;
                  _os_log_impl(&_mh_execute_header, v81, v79, "%s found unexpected ASFriendListDisplayMode %ld", v82, 0x16u);
                  sub_100005A40(v83);

                  v33 = v121;
                }

                (*(v120 + 8))(v126, v127);

                v84 = type metadata accessor for ActivitySharingFriendListItem();
                (*(*(v84 - 8) + 56))(v108, 1, 1, v84);
                return;
              }

              v103 = v12;
              if (![v41 as_exerciseProgressStringWithContext:v33])
              {
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              AttributedString.init(_:)();
              v42 = v120;
              v12 = v120 + 32;
              isa = *(v120 + 32);
              (isa)(v125, v25, v127);
              if ([v41 as_exerciseDurationStringWithContext:v33])
              {
                goto LABEL_35;
              }

              __break(1u);
              goto LABEL_33;
            }

            v103 = v12;
            if (![v41 as_movePercentStringWithContext:v33 snapshot:a2])
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            AttributedString.init(_:)();
            v42 = v120;
            v12 = v120 + 32;
            isa = *(v120 + 32);
            (isa)(v125, v25, v127);
            if ([v41 as_moveProgressStringWithContext:v33 formattingManager:*(v113 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_fiuiFormattingManager) snapshot:a2])
            {
              goto LABEL_35;
            }

            __break(1u);
          }

          if (a3 != 3)
          {
            if (a3 != 4)
            {
              if (a3 == 5)
              {
                v103 = v12;
                if (![v41 as_pushesStringWithContext:v33])
                {
LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

                AttributedString.init(_:)();
                v42 = v120;
                isa = *(v120 + 32);
                (isa)(v125, v25, v127);
                v43 = 1;
                v45 = v122;
                v44 = v123;
                goto LABEL_37;
              }

              goto LABEL_50;
            }

            if (a2)
            {
              [a2 snapshotIndex];
            }

            isa = Int64._bridgeToObjectiveC()().super.super.isa;
            v85 = [v128 friendWorkouts];
            if (v85)
            {

              v86 = [v128 friendWorkouts];
              if (!v86)
              {
LABEL_94:
                __break(1u);
                goto LABEL_95;
              }

              v87 = v86;
              sub_1000059F8(0, &qword_1008E1750);
              sub_100140278(&qword_1008DE948);
              sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750);
              v88 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (!*(v88 + 16) || (sub_1004C5AA8(isa), (v89 & 1) == 0))
              {

                v90 = 0;
                goto LABEL_63;
              }
            }

            else if (_swiftEmptyArrayStorage >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                sub_10029CFD4(_swiftEmptyArrayStorage);
              }

              v35 = v119;
            }

            sub_1000059F8(0, &qword_1008DE938);
            sub_10001D4A8(&qword_1008DE940, &qword_1008DE938);
            v90 = Set._bridgeToObjectiveC()().super.isa;

LABEL_63:
            v103 = v12;
            v91 = ASWorkoutNameString();

            if (!v91)
            {
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            AttributedString.init(_:)();
            v92 = *(v120 + 32);
            (v92)(v125, v25, v127);
            if (a2)
            {
              [a2 snapshotIndex];
            }

            v93.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
            v94 = [v128 friendWorkouts];
            isa = v92;
            if (v94)
            {

              v95 = [v128 friendWorkouts];
              if (!v95)
              {
LABEL_95:
                __break(1u);
                return;
              }

              v96 = v95;
              sub_1000059F8(0, &qword_1008E1750);
              sub_100140278(&qword_1008DE948);
              sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750);
              v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (!*(v97 + 16) || (sub_1004C5AA8(v93.super.super.isa), (v98 & 1) == 0))
              {

                v99 = 0;
LABEL_74:
                v100 = ASWorkoutCaloriesString();

                if (!v100)
                {
LABEL_93:
                  __break(1u);
                  goto LABEL_94;
                }

                v45 = v122;
                v44 = v123;
                v42 = v120;
                goto LABEL_36;
              }
            }

            else if (_swiftEmptyArrayStorage >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                sub_10029CFD4(_swiftEmptyArrayStorage);
              }

              v35 = v119;
            }

            sub_1000059F8(0, &qword_1008DE938);
            sub_10001D4A8(&qword_1008DE940, &qword_1008DE938);
            v99 = Set._bridgeToObjectiveC()().super.isa;

            goto LABEL_74;
          }

LABEL_33:
          v103 = v12;
          if (![v41 as_stepsStringWithContext:v33])
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          AttributedString.init(_:)();
          v42 = v120;
          isa = *(v120 + 32);
          (isa)(v125, v25, v127);
          if (![v41 as_distanceStringWithContext:v33 formattingManager:*(v113 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_fiuiFormattingManager)])
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

LABEL_35:
          v45 = v122;
          v44 = v123;
LABEL_36:
          AttributedString.init(_:)();
          v43 = 0;
LABEL_37:
          (*(v42 + 7))(v44, v43, 1, v127);
          Date.init()();
          v101 = v38;
          if (a2)
          {
            v46 = [a2 startDate];
            v47 = v112;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v48 = v118;
            (*(v124 + 32))(v45, v47, v118);
          }

          else
          {
            v48 = v118;
            (*(v124 + 16))(v45, v35, v118);
          }

          v49 = v114;
          static Calendar.current.getter();
          sub_100140278(&unk_1008E51B0);
          v50 = type metadata accessor for Calendar.Component();
          v51 = *(v50 - 8);
          v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_1006D46C0;
          (*(v51 + 104))(v53 + v52, enum case for Calendar.Component.day(_:), v50);
          sub_10001C970(v53);
          swift_setDeallocating();
          (*(v51 + 8))(v53 + v52, v50);
          swift_deallocClassInstance();
          v54 = v117;
          Calendar.dateComponents(_:from:to:)();

          (*(v115 + 8))(v49, v116);
          if ([v128 isMe])
          {
            v55 = 0xE200000000000000;
            v56 = 25965;
            v57 = v108;
            v58 = v105;
LABEL_44:
            v130 = 0;
            v131 = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            v130 = 0x725F646E65697266;
            v131 = 0xEB000000005F776FLL;
            v63 = DateComponents.day.getter();
            if (v64)
            {
              v65 = 0;
            }

            else
            {
              v65 = v63;
            }

            v129 = v65;
            v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v66);

            v67._countAndFlagsBits = 95;
            v67._object = 0xE100000000000000;
            String.append(_:)(v67);
            v68._countAndFlagsBits = v56;
            v68._object = v55;
            String.append(_:)(v68);

            v69 = v130;
            v70 = v131;
            (*(v106 + 8))(v54, v103);
            v71 = *(v124 + 8);
            v71(v122, v48);
            v71(v35, v48);
            v72 = type metadata accessor for ActivitySharingFriendListItem();
            v73 = v127;
            v74 = isa;
            (isa)(v57 + v72[6], v126, v127);
            (v74)(v57 + v72[7], v125, v73);
            v75 = v107;
            *v57 = v128;
            v57[1] = v75;
            sub_100015E80(v123, v57 + v72[8], &unk_1008EE8E0);
            *(v57 + v72[9]) = v101;
            *(v57 + v72[10]) = v104;
            v76 = (v57 + v72[11]);
            *v76 = v69;
            v76[1] = v70;
            (*(*(v72 - 1) + 56))(v57, 0, 1, v72);
            v77 = v128;

            v78 = v77;
            return;
          }

          v59 = [v128 UUID];
          v57 = v108;
          v58 = v105;
          if (v59)
          {
            v60 = v59;
            v61 = v109;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v56 = UUID.uuidString.getter();
            v55 = v62;
            (*(v110 + 8))(v61, v111);
            goto LABEL_44;
          }

          goto LABEL_86;
        }

LABEL_12:
        v38 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v36 = type metadata accessor for ActivitySharingFriendListItem();
  v37 = *(*(v36 - 8) + 56);

  v37(a5, 1, 1, v36);
}

uint64_t sub_10004C2FC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = sub_100140278(&qword_1008DCD08);
  __chkstk_darwin(v3);
  v5 = &v19[-v4];
  v6 = sub_100140278(&qword_1008DCF38);
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  v9 = sub_100140278(&qword_1008DCCF8);
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  v12 = (v2 + *(type metadata accessor for DashboardCardView() + 20));
  v13 = v12[3];
  v14 = v12[4];
  sub_1000066AC(v12, v13);
  if ((*(v14 + 56))(v13, v14))
  {
    sub_1000521F8();
    v16 = &qword_1008DCD08;
    sub_10001B104(v5, v8, &qword_1008DCD08);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DCCF0, &qword_1008DCCF8);
    sub_100054474();
    _ConditionalContent<>.init(storage:)();
    v17 = v5;
  }

  else
  {
    *v11 = static HorizontalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v15 = sub_100140278(&qword_1008DCF40);
    sub_1001609CC(v20 & 1, v2, &v11[*(v15 + 44)]);
    v16 = &qword_1008DCCF8;
    sub_10001B104(v11, v8, &qword_1008DCCF8);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DCCF0, &qword_1008DCCF8);
    sub_100054474();
    _ConditionalContent<>.init(storage:)();
    v17 = v11;
  }

  return sub_10000EA04(v17, v16);
}

uint64_t sub_10004C5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v506 = a2;
  started = type metadata accessor for QuickStartWorkoutCardView();
  v396 = *(started - 8);
  __chkstk_darwin(started);
  v371 = &v349 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DCF60);
  __chkstk_darwin(v4 - 8);
  v395 = &v349 - v5;
  v394 = type metadata accessor for QuickStartWorkoutCard();
  v393 = *(v394 - 8);
  __chkstk_darwin(v394);
  v370 = &v349 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = sub_100140278(&qword_1008DCEE8);
  __chkstk_darwin(v478);
  v421 = &v349 - v7;
  v476 = sub_100140278(&qword_1008DCF68);
  __chkstk_darwin(v476);
  v477 = &v349 - v8;
  v502 = sub_100140278(&qword_1008DCEC0);
  __chkstk_darwin(v502);
  v470 = &v349 - v9;
  v10 = type metadata accessor for MetricDetailViewModel();
  __chkstk_darwin(v10 - 8);
  v448 = &v349 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v445 = &v349 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for MetricCardView();
  v461 = *(v462 - 8);
  v14 = __chkstk_darwin(v462);
  v460 = (&v349 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v447 = &v349 - v16;
  v17 = sub_100140278(&qword_1008DCF70);
  __chkstk_darwin(v17 - 8);
  v458 = &v349 - v18;
  v489 = type metadata accessor for MetricCard();
  v457 = *(v489 - 8);
  v19 = __chkstk_darwin(v489);
  v459 = &v349 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v446 = &v349 - v21;
  v469 = sub_100140278(&qword_1008DCED0);
  __chkstk_darwin(v469);
  v463 = &v349 - v22;
  v496 = type metadata accessor for TrendsCardView(0);
  v468 = *(v496 - 8);
  __chkstk_darwin(v496);
  v495 = &v349 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100140278(&qword_1008DCF78);
  __chkstk_darwin(v24 - 8);
  v467 = &v349 - v25;
  v466 = type metadata accessor for TrendsCard();
  v465 = *(v466 - 8);
  __chkstk_darwin(v466);
  *&v504 = &v349 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = sub_100140278(&qword_1008DCEA8);
  __chkstk_darwin(v481);
  v475 = &v349 - v27;
  *&v503 = sub_100140278(&qword_1008DCF80);
  __chkstk_darwin(v503);
  v500 = &v349 - v28;
  v483 = sub_100140278(&qword_1008DCF88);
  __chkstk_darwin(v483);
  v479 = &v349 - v29;
  v499 = sub_100140278(&qword_1008DCE80);
  __chkstk_darwin(v499);
  v480 = &v349 - v30;
  v505 = sub_100140278(&qword_1008DCE70);
  __chkstk_darwin(v505);
  v501 = &v349 - v31;
  v418 = type metadata accessor for CatalogTipCardView();
  v417 = *(v418 - 8);
  __chkstk_darwin(v418);
  v369 = (&v349 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v33 - 8);
  v391 = &v349 - v34;
  v390 = type metadata accessor for CatalogTipCard();
  v389 = *(v390 - 8);
  v35 = __chkstk_darwin(v390);
  v368 = &v349 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v367 = &v349 - v37;
  v482 = sub_100140278(&qword_1008DCE90);
  __chkstk_darwin(v482);
  v419 = &v349 - v38;
  v414 = type metadata accessor for FitnessPlusSampleContentView();
  v392 = *(v414 - 8);
  __chkstk_darwin(v414);
  v366 = &v349 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100140278(&qword_1008DCF98);
  __chkstk_darwin(v40 - 8);
  v387 = &v349 - v41;
  v386 = type metadata accessor for FitnessPlusSampleContentCard();
  v385 = *(v386 - 8);
  __chkstk_darwin(v386);
  v364 = &v349 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = sub_100140278(&qword_1008DCE58);
  __chkstk_darwin(v435);
  v416 = &v349 - v43;
  v433 = sub_100140278(&qword_1008DCFA0);
  __chkstk_darwin(v433);
  v434 = &v349 - v44;
  v487 = sub_100140278(&qword_1008DCE30);
  __chkstk_darwin(v487);
  v436 = &v349 - v45;
  View = type metadata accessor for FitnessPlusUpNextView();
  v388 = *(View - 8);
  __chkstk_darwin(View);
  v365 = (&v349 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100140278(&qword_1008DCFA8);
  __chkstk_darwin(v47 - 8);
  v384 = &v349 - v48;
  Card = type metadata accessor for FitnessPlusUpNextCard();
  v382 = *(Card - 8);
  v49 = __chkstk_darwin(Card);
  v363 = &v349 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v362 = &v349 - v51;
  v432 = sub_100140278(&qword_1008DCE40);
  __chkstk_darwin(v432);
  v415 = &v349 - v52;
  v411 = type metadata accessor for FriendsHighlightCardView();
  v410 = *(v411 - 8);
  __chkstk_darwin(v411);
  v361 = (&v349 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100140278(&qword_1008DCFB0);
  __chkstk_darwin(v54 - 8);
  v381 = &v349 - v55;
  v380 = type metadata accessor for FriendsHighlightCard();
  v379 = *(v380 - 8);
  __chkstk_darwin(v380);
  v360 = &v349 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_100140278(&qword_1008DCE18);
  __chkstk_darwin(v474);
  v412 = &v349 - v57;
  v488 = sub_100140278(&qword_1008DCFB8);
  __chkstk_darwin(v488);
  v485 = &v349 - v58;
  v472 = sub_100140278(&qword_1008DCFC0);
  __chkstk_darwin(v472);
  v473 = &v349 - v59;
  v484 = sub_100140278(&qword_1008DCDF0);
  __chkstk_darwin(v484);
  v464 = &v349 - v60;
  v493 = sub_100140278(&qword_1008DCDE0);
  __chkstk_darwin(v493);
  v486 = &v349 - v61;
  v455 = type metadata accessor for FriendCardView();
  v454 = *(v455 - 8);
  __chkstk_darwin(v455);
  v444 = &v349 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100140278(&qword_1008DCFC8);
  __chkstk_darwin(v63 - 8);
  v453 = &v349 - v64;
  v452 = type metadata accessor for FriendCard();
  v451 = *(v452 - 8);
  __chkstk_darwin(v452);
  v443 = &v349 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = sub_100140278(&qword_1008DCE00);
  __chkstk_darwin(v471);
  v456 = &v349 - v66;
  v359 = sub_100140278(&unk_1008DC740);
  v67 = __chkstk_darwin(v359);
  v358 = &v349 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v357 = &v349 - v69;
  v408 = type metadata accessor for AwardsCardView();
  v407 = *(v408 - 8);
  __chkstk_darwin(v408);
  v356 = (&v349 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_100140278(&qword_1008DCFD0);
  __chkstk_darwin(v71 - 8);
  v378 = &v349 - v72;
  v377 = type metadata accessor for AwardsCard();
  v376 = *(v377 - 8);
  __chkstk_darwin(v377);
  v406 = &v349 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_100140278(&qword_1008DCDC8);
  __chkstk_darwin(v428);
  v409 = &v349 - v74;
  v424 = sub_100140278(&qword_1008DCFD8);
  __chkstk_darwin(v424);
  v425 = &v349 - v75;
  v441 = sub_100140278(&qword_1008DCDA0);
  __chkstk_darwin(v441);
  v429 = &v349 - v76;
  v401 = type metadata accessor for HistoryItemsCardView();
  v400 = *(v401 - 8);
  __chkstk_darwin(v401);
  v352 = (&v349 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v423 = sub_100140278(&qword_1008DCDB0);
  __chkstk_darwin(v423);
  v405 = &v349 - v78;
  CardView = type metadata accessor for LoadCardView();
  __chkstk_darwin(CardView);
  v354 = (&v349 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v403 = sub_100140278(&qword_1008DCFE0);
  v402 = *(v403 - 8);
  __chkstk_darwin(v403);
  v353 = &v349 - v80;
  v81 = sub_100140278(&qword_1008DCFE8);
  __chkstk_darwin(v81 - 8);
  v373 = &v349 - v82;
  v374 = type metadata accessor for LoadCard();
  v372 = *(v374 - 8);
  __chkstk_darwin(v374);
  v351 = &v349 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_100140278(&qword_1008DCD80);
  __chkstk_darwin(v431);
  v437 = &v349 - v84;
  v508 = sub_100140278(&qword_1008DCFF0);
  __chkstk_darwin(v508);
  v509 = &v349 - v85;
  v494 = sub_100140278(&qword_1008DCFF8);
  __chkstk_darwin(v494);
  v491 = &v349 - v86;
  v438 = sub_100140278(&qword_1008DD000);
  __chkstk_darwin(v438);
  v442 = &v349 - v87;
  v426 = sub_100140278(&qword_1008DD008);
  __chkstk_darwin(v426);
  v427 = &v349 - v88;
  v439 = sub_100140278(&qword_1008DCD58);
  __chkstk_darwin(v439);
  v430 = &v349 - v89;
  v490 = sub_100140278(&qword_1008DCD48);
  __chkstk_darwin(v490);
  v440 = &v349 - v90;
  v507 = sub_100140278(&qword_1008DCD38);
  __chkstk_darwin(v507);
  v492 = &v349 - v91;
  v92 = sub_100140278(&qword_1008DCC58);
  __chkstk_darwin(v92 - 8);
  v94 = &v349 - v93;
  v449 = type metadata accessor for DynamicTypeSize();
  v450 = *(v449 - 8);
  __chkstk_darwin(v449);
  v397 = &v349 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for ActivityRingsCardView();
  v375 = *(v399 - 8);
  v96 = __chkstk_darwin(v399);
  v398 = (&v349 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v96);
  v350 = &v349 - v98;
  v99 = sub_100140278(&qword_1008DD010);
  __chkstk_darwin(v99 - 8);
  v101 = &v349 - v100;
  v102 = type metadata accessor for ActivityRingsCard();
  v103 = *(v102 - 8);
  v104 = __chkstk_darwin(v102);
  v106 = &v349 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v108 = &v349 - v107;
  v422 = sub_100140278(&qword_1008DCD68);
  __chkstk_darwin(v422);
  v404 = &v349 - v109;
  v497 = type metadata accessor for DashboardCardView();
  v110 = v497[5];
  v498 = a1;
  v111 = (a1 + v110);
  v112 = *(a1 + v110 + 24);
  v113 = *(a1 + v110 + 32);
  sub_1000066AC((a1 + v110), v112);
  v114 = (*(v113 + 16))(v112, v113);
  if (v116 <= 1u)
  {
    if (v116)
    {
      sub_10001D4F8(v114, v115, 1);
      sub_100007C5C(v111, v511);
      sub_100140278(&unk_1008EE6B0);
      v160 = v453;
      v161 = v452;
      v162 = swift_dynamicCast();
      v163 = *(v451 + 56);
      if (v162)
      {
        v163(v160, 0, 1, v161);
        v164 = v160;
        v165 = v443;
        sub_1000523E8(v164, v443, type metadata accessor for FriendCard);
        v166 = v165;
        v167 = v444;
        sub_1000523E8(v166, v444, type metadata accessor for FriendCard);
        v168 = v455;
        sub_10001B104(v498 + v497[7], v167 + *(v455 + 20), &qword_1008DC808);
        v169 = v456;
        sub_1000523E8(v167, v456, type metadata accessor for FriendCardView);
        v170 = 0;
        v171 = v509;
        v172 = v473;
      }

      else
      {
        v170 = 1;
        v163(v160, 1, 1, v161);
        sub_10000EA04(v160, &qword_1008DCFC8);
        v171 = v509;
        v172 = v473;
        v169 = v456;
        v168 = v455;
      }

      (*(v454 + 56))(v169, v170, 1, v168);
      sub_10001B104(v169, v172, &qword_1008DCE00);
      swift_storeEnumTagMultiPayload();
      sub_1001614D4();
      sub_100161588();
      v196 = v464;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v196, v485, &qword_1008DCDF0);
      swift_storeEnumTagMultiPayload();
      sub_10006DD60();
      sub_10006DFE8();
      v197 = v486;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v196, &qword_1008DCDF0);
      sub_10001B104(v197, v491, &qword_1008DCDE0);
      swift_storeEnumTagMultiPayload();
      sub_10006C528();
      sub_10006C614();
      v198 = v492;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v197, &qword_1008DCDE0);
      sub_10001B104(v198, v171, &qword_1008DCD38);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v198, &qword_1008DCD38);
      v191 = v169;
      v192 = &qword_1008DCE00;
    }

    else
    {
      sub_100007C5C(v111, v511);
      sub_100140278(&unk_1008EE6B0);
      v117 = v458;
      v118 = v489;
      v119 = swift_dynamicCast();
      v120 = *(v457 + 56);
      if (v119)
      {
        v120(v117, 0, 1, v118);
        v121 = v446;
        sub_1000523E8(v117, v446, type metadata accessor for MetricCard);
        v122 = v459;
        sub_100051EE4(v121, v459, type metadata accessor for MetricCard);
        v123 = *(v121 + *(v118 + 40));
        sub_10001B104(v498 + v497[7], v511, &qword_1008DC808);
        KeyPath = swift_getKeyPath();
        v125 = v460;
        *v460 = KeyPath;
        sub_100140278(&qword_1008EE6A0);
        swift_storeEnumTagMultiPayload();
        v126 = v462;
        sub_100051EE4(v122, v125 + *(v462 + 20), type metadata accessor for MetricCard);
        *(v125 + v126[6]) = v123;
        sub_10001B104(v511, v125 + v126[7], &qword_1008DC808);
        v127 = *(v122 + *(v118 + 44));
        v128 = (v125 + v126[9]);
        *v128 = v127;
        v129 = type metadata accessor for MetricFormattingHelper();
        v130 = objc_opt_self();
        v131 = v127;
        v132 = [v130 mainBundle];
        v133 = String._bridgeToObjectiveC()();
        v134 = [v132 localizedStringForKey:v133 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v135 = *(v129 + 24);
        *(v128 + v135) = sub_10005772C();
        v136 = v448;
        v137 = sub_100051EE4(v122 + *(v489 + 36), v448, type metadata accessor for MetricDetailViewModel);
        v138 = v509;
        if (*(v136 + 40) == 1 && *(v136 + 32) == 1)
        {
          __chkstk_darwin(v137);
          *(&v349 - 2) = v136;
          v139 = v460;
          sub_100415330(sub_1001616A8, v140, v460 + v126[8]);
          sub_10000EA04(v511, &qword_1008DC808);
          sub_100053C78(v459, type metadata accessor for MetricCard);
          sub_100053C78(v121, type metadata accessor for MetricCard);
        }

        else
        {
          sub_10000EA04(v511, &qword_1008DC808);
          sub_100053C78(v459, type metadata accessor for MetricCard);
          sub_100053C78(v121, type metadata accessor for MetricCard);
          v212 = v126[8];
          v213 = type metadata accessor for MetricChartData();
          v139 = v460;
          (*(*(v213 - 8) + 56))(v460 + v212, 1, 1, v213);
        }

        v194 = v477;
        v195 = v463;
        sub_100053C78(v136, type metadata accessor for MetricDetailViewModel);
        v214 = v447;
        sub_1000523E8(v139, v447, type metadata accessor for MetricCardView);
        sub_1000523E8(v214, v195, type metadata accessor for MetricCardView);
        v193 = 0;
      }

      else
      {
        v193 = 1;
        v120(v117, 1, 1, v118);
        sub_10000EA04(v117, &qword_1008DCF70);
        v138 = v509;
        v194 = v477;
        v195 = v463;
        v126 = v462;
      }

      (*(v461 + 56))(v195, v193, 1, v126);
      sub_10001B104(v195, v194, &qword_1008DCED0);
      swift_storeEnumTagMultiPayload();
      sub_100059C44();
      sub_100059B80();
      v215 = v470;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v215, v500, &qword_1008DCEC0);
      swift_storeEnumTagMultiPayload();
      sub_100054254();
      sub_1000541C8();
      v216 = v501;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v215, &qword_1008DCEC0);
      sub_10001B104(v216, v138, &qword_1008DCE70);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v216, &qword_1008DCE70);
      v191 = v195;
      v192 = &qword_1008DCED0;
    }

    return sub_10000EA04(v191, v192);
  }

  v141 = v496;
  v142 = v495;
  v143 = v504;
  if (v116 == 2)
  {
LABEL_8:
    sub_100007C5C(v111, v511);
    sub_100140278(&unk_1008EE6B0);
    v144 = v467;
    v145 = v466;
    v146 = swift_dynamicCast();
    v147 = *(v465 + 56);
    if (v146)
    {
      v147(v144, 0, 1, v145);
      sub_1000523E8(v144, v143, type metadata accessor for TrendsCard);
      sub_100051EE4(v143, v142 + v141[5], type metadata accessor for TrendsCard);
      v148 = v497;
      v149 = v498;
      sub_10001B104(v498 + v497[7], v142 + v141[6], &qword_1008DC808);
      v150 = *(v149 + v148[8]);
      v151 = qword_1008DAB08;

      v152 = v151 == -1;
      v153 = v142;
      v154 = v501;
      v155 = v500;
      if (!v152)
      {
        swift_once();
      }

      v156 = *&qword_100925958;
      sub_10005491C(v94);
      (*(v450 + 56))(v94, 0, 1, v449);
      v157 = sub_10001DB1C(v111, v94, v156);
      sub_100007C5C(v111, v511);
      sub_10001E120(v511, v94, v157);
      sub_10000EA04(v511, &qword_1008DCC60);
      sub_10000EA04(v94, &qword_1008DCC58);
      sub_100053C78(v504, type metadata accessor for TrendsCard);
      *v153 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0);
      swift_storeEnumTagMultiPayload();
      *(v153 + v141[7]) = v150;
      *(v153 + v141[8]) = v157;
      v158 = v475;
      sub_1000523E8(v153, v475, type metadata accessor for TrendsCardView);
      v159 = 0;
    }

    else
    {
      v159 = 1;
      v147(v144, 1, 1, v145);
      sub_10000EA04(v144, &qword_1008DCF78);
      v154 = v501;
      v155 = v500;
      v158 = v475;
    }

    (*(v468 + 56))(v158, v159, 1, v141);
    v189 = &qword_1008DCEA8;
    sub_10001B104(v158, v479, &qword_1008DCEA8);
    swift_storeEnumTagMultiPayload();
    sub_100054114();
    sub_100054060();
    v190 = v480;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v190, v155, &qword_1008DCE80);
    swift_storeEnumTagMultiPayload();
    sub_100054254();
    sub_1000541C8();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v190, &qword_1008DCE80);
    sub_10001B104(v154, v509, &qword_1008DCE70);
    swift_storeEnumTagMultiPayload();
    sub_10005436C();
    sub_1000542E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v154, &qword_1008DCE70);
LABEL_24:
    v191 = v158;
    goto LABEL_25;
  }

  if (v114 > 4)
  {
    if (v114 <= 6)
    {
      v236 = v498;
      if (v114 ^ 5 | v115)
      {
        sub_100007C5C(v111, v511);
        sub_100140278(&unk_1008EE6B0);
        v302 = v387;
        v303 = v386;
        v304 = swift_dynamicCast();
        v305 = *(v385 + 56);
        if (v304)
        {
          v305(v302, 0, 1, v303);
          v306 = v302;
          v307 = v364;
          sub_1000523E8(v306, v364, type metadata accessor for FitnessPlusSampleContentCard);
          v308 = v366;
          sub_1000523E8(v307, v366, type metadata accessor for FitnessPlusSampleContentCard);
          v309 = v497;
          v310 = v497[6];
          v311 = v414;
          v312 = *(v414 + 20);
          v313 = type metadata accessor for AppComposer();
          (*(*(v313 - 8) + 16))(v308 + v312, v236 + v310, v313);
          sub_10001B104(v236 + v309[7], v308 + *(v311 + 24), &qword_1008DC808);
          *(v308 + *(v311 + 28)) = *(v236 + v309[9]);
          v314 = v308;
          v315 = v416;
          sub_1000523E8(v314, v416, type metadata accessor for FitnessPlusSampleContentView);
          v316 = 0;
          v317 = v509;
        }

        else
        {
          v316 = 1;
          v305(v302, 1, 1, v303);
          sub_10000EA04(v302, &qword_1008DCF98);
          v317 = v509;
          v315 = v416;
          v311 = v414;
        }

        (*(v392 + 56))(v315, v316, 1, v311);
        sub_10001B104(v315, v434, &qword_1008DCE58);
        swift_storeEnumTagMultiPayload();
        sub_10006DC9C();
        sub_10006DB08();
        v339 = v436;
        _ConditionalContent<>.init(storage:)();
        sub_10001B104(v339, v485, &qword_1008DCE30);
        swift_storeEnumTagMultiPayload();
        sub_10006DD60();
        sub_10006DFE8();
        v340 = v486;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v339, &qword_1008DCE30);
        sub_10001B104(v340, v491, &qword_1008DCDE0);
        swift_storeEnumTagMultiPayload();
        sub_10006C528();
        sub_10006C614();
        v341 = v492;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v340, &qword_1008DCDE0);
        sub_10001B104(v341, v317, &qword_1008DCD38);
        swift_storeEnumTagMultiPayload();
        sub_10005436C();
        sub_1000542E0();
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v341, &qword_1008DCD38);
        v191 = v315;
        v192 = &qword_1008DCE58;
      }

      else
      {
        sub_100007C5C(v111, v511);
        sub_100140278(&unk_1008EE6B0);
        v237 = v384;
        v238 = Card;
        v239 = swift_dynamicCast();
        v240 = *(v382 + 56);
        if (v239)
        {
          v240(v237, 0, 1, v238);
          v241 = v362;
          sub_1000523E8(v237, v362, type metadata accessor for FitnessPlusUpNextCard);
          v242 = v363;
          sub_100051EE4(v241, v363, type metadata accessor for FitnessPlusUpNextCard);
          v243 = v497;
          sub_10001B104(v236 + v497[7], v511, &qword_1008DC808);
          LOBYTE(v243) = *(v236 + v243[9]);
          v244 = swift_getKeyPath();
          v245 = v365;
          *v365 = v244;
          sub_100140278(&qword_1008EE6A0);
          swift_storeEnumTagMultiPayload();
          v246 = View;
          sub_100051EE4(v242, v245 + *(View + 24), type metadata accessor for FitnessPlusUpNextCard);
          sub_10001B104(v511, v245 + v246[7], &qword_1008DC808);
          *(v245 + v246[8]) = v243;
          *(v245 + v246[9]) = v243 ^ 1;
          type metadata accessor for DashboardCardCellViewCache();
          sub_10006D128(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache);

          v247 = ObservedObject.init(wrappedValue:)();
          v249 = v248;
          sub_10000EA04(v511, &qword_1008DC808);
          sub_100053C78(v242, type metadata accessor for FitnessPlusUpNextCard);
          sub_100053C78(v241, type metadata accessor for FitnessPlusUpNextCard);
          v250 = (v245 + v246[5]);
          *v250 = v247;
          v250[1] = v249;
          v251 = v415;
          sub_1000523E8(v245, v415, type metadata accessor for FitnessPlusUpNextView);
          v252 = 0;
          v253 = v509;
        }

        else
        {
          v252 = 1;
          v240(v237, 1, 1, v238);
          sub_10000EA04(v237, &qword_1008DCFA8);
          v253 = v509;
          v251 = v415;
          v246 = View;
        }

        (*(v388 + 56))(v251, v252, 1, v246);
        sub_10001B104(v251, v434, &qword_1008DCE40);
        swift_storeEnumTagMultiPayload();
        sub_10006DC9C();
        sub_10006DB08();
        v332 = v436;
        _ConditionalContent<>.init(storage:)();
        sub_10001B104(v332, v485, &qword_1008DCE30);
        swift_storeEnumTagMultiPayload();
        sub_10006DD60();
        sub_10006DFE8();
        v333 = v486;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v332, &qword_1008DCE30);
        sub_10001B104(v333, v491, &qword_1008DCDE0);
        swift_storeEnumTagMultiPayload();
        sub_10006C528();
        sub_10006C614();
        v334 = v492;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v333, &qword_1008DCDE0);
        sub_10001B104(v334, v253, &qword_1008DCD38);
        swift_storeEnumTagMultiPayload();
        sub_10005436C();
        sub_1000542E0();
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v334, &qword_1008DCD38);
        v191 = v251;
        v192 = &qword_1008DCE40;
      }

      return sub_10000EA04(v191, v192);
    }

    if (!(v114 ^ 7 | v115))
    {
      sub_100007C5C(v111, v511);
      sub_100140278(&unk_1008EE6B0);
      v261 = v391;
      v262 = v390;
      v263 = swift_dynamicCast();
      v264 = *(v389 + 56);
      if (v263)
      {
        v264(v261, 0, 1, v262);
        v265 = v367;
        sub_1000523E8(v261, v367, type metadata accessor for CatalogTipCard);
        v266 = v368;
        sub_100051EE4(v265, v368, type metadata accessor for CatalogTipCard);
        sub_10001B104(v498 + v497[7], v511, &qword_1008DC808);
        v267 = v369;
        sub_100052EEC(v266, v511, v369);
        sub_100053C78(v265, type metadata accessor for CatalogTipCard);
        v268 = v419;
        sub_1000523E8(v267, v419, type metadata accessor for CatalogTipCardView);
        v269 = 0;
        v270 = v509;
      }

      else
      {
        v269 = 1;
        v264(v261, 1, 1, v262);
        sub_10000EA04(v261, &qword_1008DCF90);
        v270 = v509;
        v268 = v419;
      }

      (*(v417 + 56))(v268, v269, 1, v418);
      sub_10001B104(v268, v479, &qword_1008DCE90);
      swift_storeEnumTagMultiPayload();
      sub_100054114();
      sub_100054060();
      v321 = v480;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v321, v500, &qword_1008DCE80);
      swift_storeEnumTagMultiPayload();
      sub_100054254();
      sub_1000541C8();
      v322 = v501;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v321, &qword_1008DCE80);
      sub_10001B104(v322, v270, &qword_1008DCE70);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v322, &qword_1008DCE70);
      v191 = v268;
      v192 = &qword_1008DCE90;
      return sub_10000EA04(v191, v192);
    }

    if (v114 ^ 8 | v115)
    {
      sub_100007C5C(v111, v511);
      sub_100140278(&unk_1008EE6B0);
      v199 = v395;
      v200 = v394;
      v201 = swift_dynamicCast();
      v202 = *(v393 + 56);
      if (v201)
      {
        v202(v199, 0, 1, v200);
        v203 = v199;
        v204 = v370;
        sub_1000523E8(v203, v370, type metadata accessor for QuickStartWorkoutCard);
        v205 = v204;
        v206 = v371;
        sub_1000523E8(v205, v371, type metadata accessor for QuickStartWorkoutCard);
        v207 = started;
        sub_10001B104(v498 + v497[7], v206 + *(started + 20), &qword_1008DC808);
        v208 = v421;
        sub_1000523E8(v206, v421, type metadata accessor for QuickStartWorkoutCardView);
        v209 = 0;
        v210 = v509;
        v211 = v477;
      }

      else
      {
        v209 = 1;
        v202(v199, 1, 1, v200);
        sub_10000EA04(v199, &qword_1008DCF60);
        v210 = v509;
        v211 = v477;
        v208 = v421;
        v207 = started;
      }

      (*(v396 + 56))(v208, v209, 1, v207);
      sub_10001B104(v208, v211, &qword_1008DCEE8);
      swift_storeEnumTagMultiPayload();
      sub_100059C44();
      sub_100059B80();
      v326 = v470;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v326, v500, &qword_1008DCEC0);
      swift_storeEnumTagMultiPayload();
      sub_100054254();
      sub_1000541C8();
      v327 = v501;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v326, &qword_1008DCEC0);
      sub_10001B104(v327, v210, &qword_1008DCE70);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v327, &qword_1008DCE70);
      v191 = v208;
      v192 = &qword_1008DCEE8;
      return sub_10000EA04(v191, v192);
    }

    goto LABEL_8;
  }

  if (v114 > 1)
  {
    if (!(v114 ^ 2 | v115))
    {
      sub_100007C5C(v111, v511);
      sub_100140278(&unk_1008EE6B0);
      type metadata accessor for HistoryItemsCard();
      if (swift_dynamicCast())
      {
        v254 = v510;
        v255 = v401;
        v256 = v352;
        sub_10001B104(v498 + v497[7], v352 + *(v401 + 24), &qword_1008DC808);
        *v256 = swift_getKeyPath();
        sub_100140278(&qword_1008EE6A0);
        swift_storeEnumTagMultiPayload();
        *(v256 + *(v255 + 20)) = v254;
        v257 = v405;
        sub_1000523E8(v256, v405, type metadata accessor for HistoryItemsCardView);
        v258 = 0;
        v259 = v509;
        v260 = v442;
      }

      else
      {
        v258 = 1;
        v259 = v509;
        v260 = v442;
        v257 = v405;
        v255 = v401;
      }

      (*(v400 + 56))(v257, v258, 1, v255);
      sub_10001B104(v257, v425, &qword_1008DCDB0);
      swift_storeEnumTagMultiPayload();
      sub_10006BEE4();
      sub_10006BE30();
      v318 = v429;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v318, v260, &qword_1008DCDA0);
      swift_storeEnumTagMultiPayload();
      sub_10006BF98();
      sub_10006C3F8();
      v319 = v440;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v318, &qword_1008DCDA0);
      sub_10001B104(v319, v491, &qword_1008DCD48);
      swift_storeEnumTagMultiPayload();
      sub_10006C528();
      sub_10006C614();
      v320 = v492;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v319, &qword_1008DCD48);
      sub_10001B104(v320, v259, &qword_1008DCD38);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v320, &qword_1008DCD38);
      v191 = v257;
      v192 = &qword_1008DCDB0;
      return sub_10000EA04(v191, v192);
    }

    v173 = v498;
    if (v114 ^ 3 | v115)
    {
      sub_100007C5C(v111, v511);
      sub_100140278(&unk_1008EE6B0);
      v271 = v381;
      v272 = v380;
      v273 = swift_dynamicCast();
      v274 = *(v379 + 56);
      if (v273)
      {
        v274(v271, 0, 1, v272);
        v275 = v360;
        sub_1000523E8(v271, v360, type metadata accessor for FriendsHighlightCard);
        v276 = v497;
        v277 = v411;
        v278 = v361;
        sub_100051EE4(v275, v361 + *(v411 + 28), type metadata accessor for FriendsHighlightCard);
        sub_10001B104(v173 + v276[7], v278 + v277[8], &qword_1008DC808);
        LOBYTE(v276) = *(v173 + v276[9]);
        *v278 = swift_getKeyPath();
        sub_100140278(&qword_1008EE6A0);
        swift_storeEnumTagMultiPayload();
        v279 = v277[6];
        v280 = objc_allocWithZone(type metadata accessor for MessagesAppInstallationObserver());

        *(v278 + v279) = [v280 init];
        type metadata accessor for DashboardCardCellViewCache();
        sub_10006D128(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache);
        v281 = ObservedObject.init(wrappedValue:)();
        v283 = v282;
        sub_100053C78(v275, type metadata accessor for FriendsHighlightCard);
        v284 = (v278 + v277[5]);
        *v284 = v281;
        v284[1] = v283;
        *(v278 + v277[9]) = v276;
        v285 = v412;
        sub_1000523E8(v278, v412, type metadata accessor for FriendsHighlightCardView);
        v286 = 0;
        v287 = v509;
        v288 = v473;
      }

      else
      {
        v286 = 1;
        v274(v271, 1, 1, v272);
        sub_10000EA04(v271, &qword_1008DCFB0);
        v287 = v509;
        v285 = v412;
        v288 = v473;
        v277 = v411;
      }

      (*(v410 + 56))(v285, v286, 1, v277);
      sub_10001B104(v285, v288, &qword_1008DCE18);
      swift_storeEnumTagMultiPayload();
      sub_1001614D4();
      sub_100161588();
      v328 = v464;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v328, v485, &qword_1008DCDF0);
      swift_storeEnumTagMultiPayload();
      sub_10006DD60();
      sub_10006DFE8();
      v329 = v486;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v328, &qword_1008DCDF0);
      sub_10001B104(v329, v491, &qword_1008DCDE0);
      swift_storeEnumTagMultiPayload();
      sub_10006C528();
      sub_10006C614();
      v330 = v492;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v329, &qword_1008DCDE0);
      sub_10001B104(v330, v287, &qword_1008DCD38);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v330, &qword_1008DCD38);
      v191 = v285;
      v192 = &qword_1008DCE18;
      return sub_10000EA04(v191, v192);
    }

    sub_100007C5C(v111, v511);
    sub_100140278(&unk_1008EE6B0);
    v174 = v378;
    v175 = v377;
    v176 = swift_dynamicCast();
    v177 = *(v376 + 56);
    if (v176)
    {
      v177(v174, 0, 1, v175);
      v178 = v406;
      sub_1000523E8(v174, v406, type metadata accessor for AwardsCard);
      v179 = v408;
      v180 = v356;
      sub_100051EE4(v178, v356 + *(v408 + 20), type metadata accessor for AwardsCard);
      v181 = v409;
      v182 = v407;
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v183 = *&qword_100925958;
      sub_10005491C(v94);
      (*(v450 + 56))(v94, 0, 1, v449);
      v184 = sub_10001DB1C(v111, v94, v183);
      sub_100007C5C(v111, v511);
      sub_10001E120(v511, v94, v184);
      sub_10000EA04(v511, &qword_1008DCC60);
      sub_10000EA04(v94, &qword_1008DCC58);
      v185 = v497;
      sub_10001B104(v173 + v497[7], v180 + v179[7], &qword_1008DC808);
      LOBYTE(v185) = *(v173 + v185[9]);
      v186 = type metadata accessor for GeometryProxy();
      v187 = v357;
      (*(*(v186 - 8) + 56))(v357, 1, 1, v186);
      *v180 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0);
      swift_storeEnumTagMultiPayload();
      *(v180 + v179[6]) = v184;
      *(v180 + v179[8]) = v185;
      sub_10001B104(v187, v358, &unk_1008DC740);
      State.init(wrappedValue:)();
      sub_10000EA04(v187, &unk_1008DC740);
      sub_100053C78(v406, type metadata accessor for AwardsCard);
      sub_1000523E8(v180, v181, type metadata accessor for AwardsCardView);
      v188 = 0;
    }

    else
    {
      v188 = 1;
      v177(v174, 1, 1, v175);
      sub_10000EA04(v174, &qword_1008DCFD0);
      v181 = v409;
      v179 = v408;
      v182 = v407;
    }

    (*(v182 + 56))(v181, v188, 1, v179);
    v189 = &qword_1008DCDC8;
    sub_10001B104(v181, v425, &qword_1008DCDC8);
    swift_storeEnumTagMultiPayload();
    sub_10006BEE4();
    sub_10006BE30();
    v323 = v429;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v323, v442, &qword_1008DCDA0);
    swift_storeEnumTagMultiPayload();
    sub_10006BF98();
    sub_10006C3F8();
    v324 = v440;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v323, &qword_1008DCDA0);
    sub_10001B104(v324, v491, &qword_1008DCD48);
    swift_storeEnumTagMultiPayload();
    sub_10006C528();
    sub_10006C614();
    v325 = v492;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v324, &qword_1008DCD48);
    sub_10001B104(v325, v509, &qword_1008DCD38);
    swift_storeEnumTagMultiPayload();
    sub_10005436C();
    sub_1000542E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v325, &qword_1008DCD38);
    v191 = v181;
LABEL_25:
    v192 = v189;
    return sub_10000EA04(v191, v192);
  }

  if (!(v114 | v115))
  {
    sub_100007C5C(v111, v511);
    sub_100140278(&unk_1008EE6B0);
    v218 = swift_dynamicCast();
    v219 = *(v103 + 56);
    if (v218)
    {
      v219(v101, 0, 1, v102);
      sub_1000523E8(v101, v108, type metadata accessor for ActivityRingsCard);
      sub_100051EE4(v108, v106, type metadata accessor for ActivityRingsCard);
      sub_10001B104(v498 + v497[7], v511, &qword_1008DC808);
      sub_10005491C(v397);
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v220 = *&qword_100925958;
      sub_10005491C(v94);
      (*(v450 + 56))(v94, 0, 1, v449);
      v221 = sub_10001DB1C(v111, v94, v220);
      sub_100007C5C(v111, &v510);
      sub_10001E120(&v510, v94, v221);
      sub_10000EA04(&v510, &qword_1008DCC60);
      sub_10000EA04(v94, &qword_1008DCC58);
      v222 = swift_getKeyPath();
      v223 = v398;
      *v398 = v222;
      sub_100140278(&qword_1008EE6A0);
      swift_storeEnumTagMultiPayload();
      v224 = v399;
      sub_100051EE4(v106, v223 + *(v399 + 24), type metadata accessor for ActivityRingsCard);
      sub_10001B104(v511, v223 + v224[7], &qword_1008DC808);
      v225 = (v223 + v224[8]);
      type metadata accessor for DashboardCardCellViewCache();
      sub_10006D128(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache);

      v226 = ObservedObject.init(wrappedValue:)();
      v228 = v227;
      sub_10000EA04(v511, &qword_1008DC808);
      sub_100053C78(v106, type metadata accessor for ActivityRingsCard);
      v229 = v224;
      sub_100053C78(v108, type metadata accessor for ActivityRingsCard);
      *v225 = v226;
      v225[1] = v228;
      v230 = v449;
      *(v223 + v224[9]) = v221;
      v231 = (v223 + v224[10]);
      v504 = xmmword_1006D5580;
      *v231 = xmmword_1006D5580;
      v231[1] = xmmword_1006D4E50;
      v503 = xmmword_1006D4E50;
      v232 = v397;
      v233 = (*(v450 + 88))(v397, v230);
      v234 = 0;
      if (v233 == enum case for DynamicTypeSize.xSmall(_:))
      {
        v235 = v509;
        v158 = v404;
      }

      else
      {
        v235 = v509;
        v158 = v404;
        if (v233 != enum case for DynamicTypeSize.small(_:) && v233 != enum case for DynamicTypeSize.medium(_:) && v233 != enum case for DynamicTypeSize.large(_:))
        {
          v234 = 1;
          if (v233 != enum case for DynamicTypeSize.xLarge(_:) && v233 != enum case for DynamicTypeSize.xxLarge(_:) && v233 != enum case for DynamicTypeSize.xxxLarge(_:))
          {
            v234 = 2;
            if (v233 != enum case for DynamicTypeSize.accessibility1(_:) && v233 != enum case for DynamicTypeSize.accessibility2(_:) && v233 != enum case for DynamicTypeSize.accessibility3(_:) && v233 != enum case for DynamicTypeSize.accessibility4(_:) && v233 != enum case for DynamicTypeSize.accessibility5(_:))
            {
              (*(v450 + 8))(v232, v230);
              v234 = 1;
            }
          }
        }
      }

      v342 = v398;
      v343 = (v398 + *(v229 + 20));
      *v343 = v234;
      v343[1] = v221;
      v344 = v503;
      *(v343 + 1) = v504;
      *(v343 + 2) = v344;
      v343[6] = 0.0;
      v345 = v350;
      sub_1000523E8(v342, v350, type metadata accessor for ActivityRingsCardView);
      sub_1000523E8(v345, v158, type metadata accessor for ActivityRingsCardView);
      v331 = 0;
    }

    else
    {
      v331 = 1;
      v219(v101, 1, 1, v102);
      sub_10000EA04(v101, &qword_1008DD010);
      v235 = v509;
      v158 = v404;
      v229 = v399;
    }

    (*(v375 + 56))(v158, v331, 1, v229);
    v189 = &qword_1008DCD68;
    sub_10001B104(v158, v427, &qword_1008DCD68);
    swift_storeEnumTagMultiPayload();
    sub_10007108C();
    sub_100070EEC();
    v346 = v430;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v346, v442, &qword_1008DCD58);
    swift_storeEnumTagMultiPayload();
    sub_10006BF98();
    sub_10006C3F8();
    v347 = v440;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v346, &qword_1008DCD58);
    sub_10001B104(v347, v491, &qword_1008DCD48);
    swift_storeEnumTagMultiPayload();
    sub_10006C528();
    sub_10006C614();
    v348 = v492;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v347, &qword_1008DCD48);
    sub_10001B104(v348, v235, &qword_1008DCD38);
    swift_storeEnumTagMultiPayload();
    sub_10005436C();
    sub_1000542E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v348, &qword_1008DCD38);
    goto LABEL_24;
  }

  sub_100007C5C(v111, v511);
  sub_100140278(&unk_1008EE6B0);
  v289 = v373;
  v290 = v374;
  v291 = swift_dynamicCast();
  v292 = *(v372 + 56);
  if (v291)
  {
    v292(v289, 0, 1, v290);
    v293 = v351;
    sub_1000523E8(v289, v351, type metadata accessor for LoadCard);
    v294 = CardView;
    v295 = v354;
    sub_100051EE4(v293, v354 + *(CardView + 20), type metadata accessor for LoadCard);
    sub_10001B104(v498 + v497[7], v295 + *(v294 + 24), &qword_1008DC808);
    *v295 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    v296 = v295 + *(v294 + 28);
    type metadata accessor for BalanceDataProvider();
    sub_10006D128(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    *v296 = Environment.init<A>(_:)();
    v296[8] = v297 & 1;
    sub_10006D128(&qword_1008DCD88, type metadata accessor for LoadCardView);
    v298 = v353;
    View.environment<A>(_:)();
    sub_100053C78(v295, type metadata accessor for LoadCardView);
    v299 = v402;
    v300 = v437;
    v301 = v403;
    (*(v402 + 32))(v437, v298, v403);
    (*(v299 + 56))(v300, 0, 1, v301);
    sub_100053C78(v293, type metadata accessor for LoadCard);
  }

  else
  {
    v292(v289, 1, 1, v290);
    sub_10000EA04(v289, &qword_1008DCFE8);
    v300 = v437;
    (*(v402 + 56))(v437, 1, 1, v403);
  }

  v335 = v509;
  sub_10001B104(v300, v427, &qword_1008DCD80);
  swift_storeEnumTagMultiPayload();
  sub_10007108C();
  sub_100070EEC();
  v336 = v430;
  _ConditionalContent<>.init(storage:)();
  sub_10001B104(v336, v442, &qword_1008DCD58);
  swift_storeEnumTagMultiPayload();
  sub_10006BF98();
  sub_10006C3F8();
  v337 = v440;
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v336, &qword_1008DCD58);
  sub_10001B104(v337, v491, &qword_1008DCD48);
  swift_storeEnumTagMultiPayload();
  sub_10006C528();
  sub_10006C614();
  v338 = v492;
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v337, &qword_1008DCD48);
  sub_10001B104(v338, v335, &qword_1008DCD38);
  swift_storeEnumTagMultiPayload();
  sub_10005436C();
  sub_1000542E0();
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v338, &qword_1008DCD38);
  return sub_10000EA04(v437, &qword_1008DCD80);
}

uint64_t sub_100051EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008DCC58);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4 - 8];
  sub_10015F17C(v1, a1);
  if (qword_1008DAB08 != -1)
  {
    swift_once();
  }

  v6 = *&qword_100925958;
  v7 = *(type metadata accessor for DashboardCardView() + 20);
  sub_10005491C(v5);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 0, 1, v8);
  v10 = sub_10001DB1C((v1 + v7), v5, v6);
  sub_100007C5C(v1 + v7, v22);
  sub_10001E120(v22, v5, v10);
  sub_10000EA04(v22, &qword_1008DCC60);
  sub_10000EA04(v5, &qword_1008DCC58);
  v11 = a1 + *(sub_100140278(&qword_1008DCC68) + 36);
  *v11 = 1;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  sub_10005491C(v5);
  v9(v5, 0, 1, v8);
  v12 = sub_10001DB1C((v1 + v7), v5, v6);
  sub_100007C5C(v1 + v7, v22);
  v13 = sub_10001E120(v22, v5, v12);
  LOBYTE(v8) = v14;
  sub_10000EA04(v22, &qword_1008DCC60);
  sub_10000EA04(v5, &qword_1008DCC58);
  v15 = a1 + *(sub_100140278(&qword_1008DCC70) + 36);
  *v15 = 1;
  *(v15 + 8) = v13;
  *(v15 + 16) = v8 & 1;
  v16 = static Alignment.center.getter();
  v18 = v17;
  result = sub_100140278(&qword_1008DCC78);
  v20 = (a1 + *(result + 36));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t sub_1000521F8()
{
  v1 = sub_100140278(&qword_1008DCD18);
  __chkstk_darwin(v1);
  v3 = v15 - v2;
  sub_10004C5EC(v0, v15 - v2);
  sub_100140278(&qword_1008DCF58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D1F70;
  *(v4 + 32) = static FitnessAccessibilityIdentifier.SummaryView.base.getter();
  *(v4 + 40) = v5;
  v17 = 0;
  v18 = 0xE000000000000000;
  v6 = (v0 + *(type metadata accessor for DashboardCardView() + 20));
  v7 = v6[3];
  v8 = v6[4];
  sub_1000066AC(v6, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v11 = v10;
  LOBYTE(v8) = v12;
  v15[1] = v9;
  v15[2] = v10;
  v16 = v12;
  _print_unlocked<A, B>(_:_:)();
  sub_10001D4F8(v9, v11, v8);
  v13 = v18;
  *(v4 + 48) = v17;
  *(v4 + 56) = v13;
  static FitnessAccessibilityIdentifier.build(_:)();

  sub_1000543F8(&qword_1008DCD10, &qword_1008DCD18, &unk_1006D56A8, sub_100161448);
  View.accessibilityIdentifier(_:)();

  return sub_10000EA04(v3, &qword_1008DCD18);
}

uint64_t sub_1000523E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for QuickStartWorkoutCardView()
{
  result = qword_1008E77A8;
  if (!qword_1008E77A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MetricCard()
{
  result = qword_1008F4ED8;
  if (!qword_1008F4ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005250C()
{
  result = qword_1008DC818;
  if (!qword_1008DC818)
  {
    sub_100141EEC(&qword_1008DC810);
    sub_10015C4FC(&qword_1008DC820, &qword_1008DC828, &unk_1006D57A0, sub_10015C580);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC818);
  }

  return result;
}

uint64_t type metadata accessor for AwardsCard()
{
  result = qword_1008E80B8;
  if (!qword_1008E80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendsHighlightCard()
{
  result = qword_1008EE3C0;
  if (!qword_1008EE3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TrendsCard()
{
  result = qword_1008F2F60;
  if (!qword_1008F2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusSampleContentView()
{
  result = qword_1008EAB38;
  if (!qword_1008EAB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusUpNextView()
{
  result = qword_1008EEFE0;
  if (!qword_1008EEFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AwardsCardView()
{
  result = qword_1008DC710;
  if (!qword_1008DC710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusSampleContentCard()
{
  result = qword_1008E08F0;
  if (!qword_1008E08F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendsHighlightCardView()
{
  result = qword_1008F65F8;
  if (!qword_1008F65F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendCardView()
{
  result = qword_1008E3BE0;
  if (!qword_1008E3BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LoadCardView()
{
  result = qword_1008F6AC8;
  if (!qword_1008F6AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HistoryItemsCardView()
{
  result = qword_1008E2F18;
  if (!qword_1008E2F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000529D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100140278(&unk_1008EE8E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100052B3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributedString();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100140278(&unk_1008EE8E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t type metadata accessor for ActivitySharingFriendListItem()
{
  result = qword_1008E4A00;
  if (!qword_1008E4A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivityRingsCardView()
{
  result = qword_1008EF218;
  if (!qword_1008EF218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052D18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CatalogTipSectionItem();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100052DD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100140278(&qword_1008E4E80);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100052EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100140278(&unk_1008E4D90);
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = __chkstk_darwin(v6);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v8;
  __chkstk_darwin(v7);
  v74 = &v69 - v9;
  v10 = sub_100140278(&unk_1008F2010);
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v75 = &v69 - v11;
  v12 = type metadata accessor for Artwork();
  v88 = *(v12 - 8);
  v89 = v12;
  __chkstk_darwin(v12);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008EF830);
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v81 = &v69 - v15;
  v16 = type metadata accessor for CatalogTipSectionItem();
  __chkstk_darwin(v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008E4E80);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v69 - v23;
  v25 = sub_100140278(&unk_1008EAF20);
  v26 = __chkstk_darwin(v25 - 8);
  v80 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v69 - v28;
  *a3 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for CatalogTipCardView();
  sub_100053AC0(a1, a3 + *(v30 + 20), type metadata accessor for CatalogTipCard);
  v84 = v30;
  v31 = *(v30 + 24);
  v86 = a3;
  v87 = a2;
  sub_10001B104(a2, a3 + v31, &qword_1008DC808);
  v32 = *(type metadata accessor for CatalogTipCard() + 36);
  v90 = a1;
  sub_10001B104(a1 + v32, v24, &qword_1008E4E80);
  v33 = type metadata accessor for CatalogTipSection();
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v24, 1, v33);
  v71 = v18;
  if (v35 == 1)
  {
    sub_10000EA04(v24, &qword_1008E4E80);
    v36 = v88;
    v37 = v29;
  }

  else
  {
    sub_100053AC0(&v24[*(v33 + 36)], v18, type metadata accessor for CatalogTipSectionItem);
    sub_100053C18(v24, type metadata accessor for CatalogTipSection);
    v38 = *(v16 + 20);
    v70 = v22;
    v39 = v88;
    (*(v88 + 16))(v29, &v18[v38], v89);
    sub_100053C18(v18, type metadata accessor for CatalogTipSectionItem);
    v36 = v39;
    v37 = v29;
    v22 = v70;
  }

  v40 = v37;
  (*(v36 + 56))();
  sub_10001B104(v90 + v32, v22, &qword_1008E4E80);
  if (v34(v22, 1, v33) == 1)
  {
    sub_10000EA04(v22, &qword_1008E4E80);
    static CropCode.standard.getter();
  }

  else
  {
    v41 = v71;
    sub_100053AC0(&v22[*(v33 + 36)], v71, type metadata accessor for CatalogTipSectionItem);
    sub_100053C18(v22, type metadata accessor for CatalogTipSection);

    sub_100053C18(v41, type metadata accessor for CatalogTipSectionItem);
  }

  v42 = type metadata accessor for TipArtworkImageLoader();
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC10FitnessApp21TipArtworkImageLoader__image;
  v91[0] = 0;
  sub_100140278(&qword_1008DC850);
  v45 = v81;
  Published.init(initialValue:)();
  (*(v82 + 32))(v43 + v44, v45, v83);
  sub_100140278(&unk_1008F13B0);
  Dependencies.resolve<A>(failureHandler:)();
  v46 = v80;
  sub_10001B104(v40, v80, &unk_1008EAF20);
  v48 = v88;
  v47 = v89;
  if ((*(v88 + 48))(v46, 1, v89) == 1)
  {

    sub_10000EA04(v40, &unk_1008EAF20);
    v49 = v46;
  }

  else
  {
    (*(v48 + 32))(v85, v46, v47);
    sub_1000066AC(v91, v91[3]);
    v82 = v40;
    v50 = v74;
    dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:cropCode:)();

    v51 = swift_allocObject();
    *(v51 + 16) = sub_1006741E4;
    *(v51 + 24) = v43;
    v53 = v76;
    v52 = v77;
    v54 = *(v76 + 16);
    v83 = v42;
    v55 = v73;
    v54(v73, v50, v77);
    v56 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    (*(v53 + 32))(v58 + v56, v55, v52);
    v59 = (v58 + v57);
    *v59 = sub_10042B55C;
    v59[1] = v51;

    v60 = v75;
    Promise.init(asyncOperation:)();
    (*(v53 + 8))(v50, v52);
    v61 = v79;
    v62 = Promise.operation.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    v62(sub_100173A1C, v63);

    (*(v78 + 8))(v60, v61);
    (*(v48 + 8))(v85, v89);
    v49 = v82;
  }

  sub_10000EA04(v49, &unk_1008EAF20);
  sub_100005A40(v91);
  v64 = (v86 + *(v84 + 28));
  sub_100053BC0();
  v65 = ObservedObject.init(wrappedValue:)();
  v67 = v66;
  sub_10000EA04(v87, &qword_1008DC808);
  result = sub_100053C18(v90, type metadata accessor for CatalogTipCard);
  *v64 = v65;
  v64[1] = v67;
  return result;
}

uint64_t sub_100053950()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053988()
{
  v1 = sub_100140278(&unk_1008E4D90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100053A34()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for CatalogTipSectionItem()
{
  result = qword_1008EE070;
  if (!qword_1008EE070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100053AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CatalogTipSection()
{
  result = qword_1008E10A8;
  if (!qword_1008E10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TipArtworkImageLoader()
{
  result = qword_1008F83C8;
  if (!qword_1008F83C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100053BC0()
{
  result = qword_1008F81C8;
  if (!qword_1008F81C8)
  {
    type metadata accessor for TipArtworkImageLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F81C8);
  }

  return result;
}

uint64_t sub_100053C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100053C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100053CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CatalogTipCard();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100053E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CatalogTipCard();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100053F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100140278(&qword_1008E4E80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

unint64_t sub_100054060()
{
  result = qword_1008DCEA0;
  if (!qword_1008DCEA0)
  {
    sub_100141EEC(&qword_1008DCEA8);
    sub_10006D128(&qword_1008DCEB0, type metadata accessor for TrendsCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEA0);
  }

  return result;
}

unint64_t sub_100054114()
{
  result = qword_1008DCE88;
  if (!qword_1008DCE88)
  {
    sub_100141EEC(&qword_1008DCE90);
    sub_10006D128(&qword_1008DCE98, type metadata accessor for CatalogTipCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE88);
  }

  return result;
}

unint64_t sub_1000541C8()
{
  result = qword_1008DCEB8;
  if (!qword_1008DCEB8)
  {
    sub_100141EEC(&qword_1008DCEC0);
    sub_100059C44();
    sub_100059B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEB8);
  }

  return result;
}

unint64_t sub_100054254()
{
  result = qword_1008DCE78;
  if (!qword_1008DCE78)
  {
    sub_100141EEC(&qword_1008DCE80);
    sub_100054114();
    sub_100054060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE78);
  }

  return result;
}

unint64_t sub_1000542E0()
{
  result = qword_1008DCE68;
  if (!qword_1008DCE68)
  {
    sub_100141EEC(&qword_1008DCE70);
    sub_100054254();
    sub_1000541C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE68);
  }

  return result;
}

unint64_t sub_10005436C()
{
  result = qword_1008DCD30;
  if (!qword_1008DCD30)
  {
    sub_100141EEC(&qword_1008DCD38);
    sub_10006C528();
    sub_10006C614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD30);
  }

  return result;
}

uint64_t sub_1000543F8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_100054474()
{
  result = qword_1008DCD00;
  if (!qword_1008DCD00)
  {
    sub_100141EEC(&qword_1008DCD08);
    sub_1000543F8(&qword_1008DCD10, &qword_1008DCD18, &unk_1006D56A8, sub_100161448);
    sub_10006D128(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD00);
  }

  return result;
}

uint64_t sub_10005455C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1000545E0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_100054664()
{
  result = qword_1008DCCE8;
  if (!qword_1008DCCE8)
  {
    sub_100141EEC(&qword_1008DCC80);
    sub_10014A6B0(&qword_1008DCCF0, &qword_1008DCCF8);
    sub_100054474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCCE8);
  }

  return result;
}

uint64_t sub_10005471C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10001B104(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

__n128 initializeBufferWithCopyOfBuffer for MetricsDataProvider.MetricDataCacheEntry(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t ConditionalFrameHeightModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = sub_100140278(&qword_1008F1D80);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = sub_100140278(&qword_1008F1D88);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  if (a2 & 1) == 0 || (a4)
  {
    v17 = sub_100140278(&qword_1008F1D90);
    (*(*(v17 - 8) + 16))(v9, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_10052B800();
    sub_100054C1C(&qword_1008F1DA0, &qword_1008F1D90);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v13 = sub_100140278(&qword_1008F1D90);
    (*(*(v13 - 8) + 16))(v12, a1, v13);
    v14 = &v12[*(v10 + 36)];
    v15 = v18[1];
    *v14 = v18[0];
    *(v14 + 1) = v15;
    *(v14 + 2) = v18[2];
    sub_10001B104(v12, v9, &qword_1008F1D88);
    swift_storeEnumTagMultiPayload();
    sub_10052B800();
    sub_100054C1C(&qword_1008F1DA0, &qword_1008F1D90);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v12, &qword_1008F1D88);
  }
}

uint64_t sub_100054C1C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100054C8C(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return a4 == a1;
      }
    }

    else if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 ^ 5 | a2)
        {
          if (a6 == 3 && a4 == 6 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 5 && !a5)
        {
          return 1;
        }
      }

      else if (a1 ^ 7 | a2)
      {
        if (a1 ^ 8 | a2)
        {
          if (a6 == 3 && a4 == 9 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 8 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 7 && !a5)
      {
        return 1;
      }
    }

    else if (a1 <= 1)
    {
      if (a1 | a2)
      {
        if (a6 == 3 && a4 == 1 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && !(a5 | a4))
      {
        return 1;
      }
    }

    else if (a1 ^ 2 | a2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && a4 == 2 && !a5)
    {
      return 1;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      return a4 == a1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100054EC8()
{
  result = qword_1008F82E0;
  if (!qword_1008F82E0)
  {
    sub_100141EEC(&qword_1008F8278);
    sub_100141EEC(&qword_1008F8280);
    sub_1000564D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F82E0);
  }

  return result;
}

unint64_t sub_100054F90()
{
  result = qword_1008F82B0;
  if (!qword_1008F82B0)
  {
    sub_100141EEC(&qword_1008F82B8);
    sub_10014A6B0(&qword_1008F82C0, &qword_1008F82C8);
    sub_10014A6B0(&qword_1008F82D0, &qword_1008F82D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F82B0);
  }

  return result;
}

uint64_t sub_100055074@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TipArtworkImageLoader();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void *sub_1000550B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for CatalogTipCardView() + 20);
  v8 = type metadata accessor for CatalogTipCard();
  v9 = v7 + *(v8 + 20);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  sub_10005491C(v6);
  LODWORD(v10) = sub_10001DEC8(v6, v10, v11, v12);
  (*(v4 + 8))(v6, v3);
  if (v10 == 2)
  {
    v13 = static HorizontalAlignment.leading.getter();
    v21[0] = 0;
    sub_100672D24(a1, v26);
    memcpy(v24, v26, 0x121uLL);
    memcpy(v25, v26, 0x121uLL);
    sub_10001B104(v24, v22, &qword_1008F82F8);
    sub_10000EA04(v25, &qword_1008F82F8);
    memcpy(&v19[7], v24, 0x121uLL);
    v22[0] = v13;
    v22[1] = 0;
    LOBYTE(v22[2]) = v21[0];
    memcpy(&v22[2] + 1, v19, 0x128uLL);
    sub_1006744DC(v22);
  }

  else
  {
    if (*(v7 + *(v8 + 24)) == 1)
    {
      v14 = static VerticalAlignment.top.getter();
      v25[0] = 0;
      sub_100673424(a1, v26);
      memcpy(v24, v26, 0x199uLL);
      memcpy(v21, v26, 0x199uLL);
      sub_10001B104(v24, v22, &qword_1008F82F0);
      sub_10000EA04(v21, &qword_1008F82F0);
      memcpy(&v20[7], v24, 0x199uLL);
      v26[0] = v14;
      v26[1] = 0;
      LOBYTE(v26[2]) = v25[0];
      memcpy(&v26[2] + 1, v20, 0x1A0uLL);
      sub_1006744D4(v26);
    }

    else
    {
      v15 = static HorizontalAlignment.leading.getter();
      v25[0] = 0;
      sub_100055584(a1, v26);
      memcpy(v24, v26, 0x1F1uLL);
      memcpy(v21, v26, 0x1F1uLL);
      sub_10001B104(v24, v22, &qword_1008F82E8);
      sub_10000EA04(v21, &qword_1008F82E8);
      memcpy(&v23[7], v24, 0x1F1uLL);
      v26[0] = v15;
      v26[1] = 0;
      LOBYTE(v26[2]) = v25[0];
      memcpy(&v26[2] + 1, v23, 0x1F8uLL);
      sub_100057590(v26);
    }

    memcpy(v22, v26, 0x20AuLL);
    sub_100140278(&qword_1008F82C8);
    sub_100140278(&qword_1008F82D8);
    sub_10014A6B0(&qword_1008F82C0, &qword_1008F82C8);
    sub_10014A6B0(&qword_1008F82D0, &qword_1008F82D8);
    _ConditionalContent<>.init(storage:)();
    memcpy(v22, v25, 0x20AuLL);
    sub_100055D8C(v22);
  }

  memcpy(v21, v22, 0x20BuLL);
  sub_100140278(&qword_1008F82A8);
  sub_100140278(&qword_1008F82B8);
  sub_10014A6B0(&qword_1008F82A0, &qword_1008F82A8);
  sub_100054F90();
  _ConditionalContent<>.init(storage:)();
  return memcpy(v18, v26, 0x20BuLL);
}

uint64_t sub_100055584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  sub_100055AD8(&ShelfLockupAttributedTagStrings.title.getter);
  v7 = Text.init(_:)();
  v9 = v8;
  v11 = v10;
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v5) = v15;

  sub_10004642C(v7, v9, v11 & 1);

  static Font.Weight.semibold.getter();
  v16 = Text.fontWeight(_:)();
  v41 = v16;
  v42 = v17;
  v19 = v18;
  v21 = v20;
  v22 = v17;
  sub_10004642C(v12, v14, v5 & 1);

  KeyPath = swift_getKeyPath();
  v40 = KeyPath;
  LOBYTE(v5) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v21 & 1;
  LOBYTE(v82[0]) = v21 & 1;
  LOBYTE(v74[0]) = 0;
  LOBYTE(v45[0]) = 0;
  v33 = static VerticalAlignment.center.getter();
  LOBYTE(v45[0]) = 0;
  sub_100056DF4(v43, v82);
  memcpy(v65, v82, 0x161uLL);
  memcpy(v66, v82, 0x161uLL);
  sub_10001B104(v65, v74, &qword_1008F8378);
  sub_10000EA04(v66, &qword_1008F8378);
  memcpy(&v61[7], v65, 0x161uLL);
  LOBYTE(v3) = v45[0];
  *&v67 = v16;
  *(&v67 + 1) = v19;
  LOBYTE(v68) = v32;
  *(&v68 + 1) = *v64;
  DWORD1(v68) = *&v64[3];
  *(&v68 + 1) = v22;
  *&v69 = KeyPath;
  *(&v69 + 1) = 3;
  LOBYTE(v70) = 0;
  DWORD1(v70) = *&v63[3];
  *(&v70 + 1) = *v63;
  BYTE8(v70) = v5;
  HIDWORD(v70) = *&v62[3];
  *(&v70 + 9) = *v62;
  *&v71 = v25;
  *(&v71 + 1) = v27;
  *&v72 = v29;
  *(&v72 + 1) = v31;
  v73 = 0;
  LOBYTE(v81) = 0;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  v75 = v67;
  v76 = v68;
  v60[384] = 0;
  v74[0] = v33;
  v74[1] = 0;
  LOBYTE(v74[2]) = v45[0];
  memcpy(&v74[2] + 1, v61, 0x168uLL);
  memcpy(&v60[7], v74, 0x179uLL);
  v34 = v72;
  v35 = v44;
  *(v44 + 64) = v71;
  *(v35 + 80) = v34;
  v36 = v81;
  v37 = v76;
  *v35 = v75;
  *(v35 + 16) = v37;
  v38 = v78;
  *(v35 + 32) = v77;
  *(v35 + 48) = v38;
  *(v35 + 96) = v36;
  *(v35 + 104) = 0x4020000000000000;
  *(v35 + 112) = 0;
  memcpy((v35 + 113), v60, 0x180uLL);
  v82[0] = v33;
  v82[1] = 0;
  LOBYTE(v82[2]) = v3;
  memcpy(&v82[2] + 1, v61, 0x168uLL);
  sub_10001B104(&v67, v45, &qword_1008EE300);
  sub_10001B104(v74, v45, &qword_1008F8380);
  sub_10000EA04(v82, &qword_1008F8380);
  v45[0] = v41;
  v45[1] = v19;
  v46 = v32;
  *v47 = *v64;
  *&v47[3] = *&v64[3];
  v48 = v42;
  v49 = v40;
  v50 = 3;
  v51 = 0;
  *v52 = *v63;
  *&v52[3] = *&v63[3];
  v53 = v5;
  *&v54[3] = *&v62[3];
  *v54 = *v62;
  v55 = v25;
  v56 = v27;
  v57 = v29;
  v58 = v31;
  v59 = 0;
  return sub_10000EA04(v45, &qword_1008EE300);
}

uint64_t sub_100055AD8(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for ShelfLockupAttributedTagStrings();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CatalogTipSectionItem();
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = v1 + *(type metadata accessor for CatalogTipCardView() + 20);
  v14 = type metadata accessor for CatalogTipCard();
  sub_10001B104(v13 + *(v14 + 36), v12, &qword_1008E4E80);
  v15 = type metadata accessor for CatalogTipSection();
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
  {
    sub_10000EA04(v12, &qword_1008E4E80);
    [objc_allocWithZone(NSAttributedString) init];
  }

  else
  {
    sub_100053AC0(&v12[*(v15 + 36)], v9, type metadata accessor for CatalogTipSectionItem);
    sub_100053C18(v12, type metadata accessor for CatalogTipSection);
    (*(v4 + 16))(v6, v9, v3);
    v16 = sub_100053C18(v9, type metadata accessor for CatalogTipSectionItem);
    a1(v16);
    (*(v4 + 8))(v6, v3);
  }

  return AttributedString.init(_:)();
}

void sub_100055D98()
{
  sub_100055E7C();
  if (v0 <= 0x3F)
  {
    sub_100043AA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100055E7C()
{
  if (!qword_1008F6F50)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F6F50);
    }
  }
}

uint64_t sub_100055EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WorkoutBrowsingViewController()
{
  result = qword_1008EBAF8;
  if (!qword_1008EBAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for QuickStartWorkoutCard()
{
  result = qword_1008F16B0;
  if (!qword_1008F16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DashboardCardView()
{
  result = qword_1008DCC00;
  if (!qword_1008DCC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CatalogTipCardView()
{
  result = qword_1008F8228;
  if (!qword_1008F8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CatalogTipCard()
{
  result = qword_1008E7A18;
  if (!qword_1008E7A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendCard()
{
  result = qword_1008F5C00;
  if (!qword_1008F5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MetricCardView()
{
  result = qword_1008F4C58;
  if (!qword_1008F4C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LoadCard()
{
  result = qword_1008F41F0;
  if (!qword_1008F41F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConditionalFrameWidthModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = sub_100140278(&qword_1008F1DA8);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = sub_100140278(&qword_1008F1DB0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  if (a2 & 1) == 0 || (a4)
  {
    v17 = sub_100140278(&qword_1008F1DB8);
    (*(*(v17 - 8) + 16))(v9, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_10052B8A4();
    sub_100054C1C(&qword_1008F1DC8, &qword_1008F1DB8);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v13 = sub_100140278(&qword_1008F1DB8);
    (*(*(v13 - 8) + 16))(v12, a1, v13);
    v14 = &v12[*(v10 + 36)];
    v15 = v18[1];
    *v14 = v18[0];
    *(v14 + 1) = v15;
    *(v14 + 2) = v18[2];
    sub_10001B104(v12, v9, &qword_1008F1DB0);
    swift_storeEnumTagMultiPayload();
    sub_10052B8A4();
    sub_100054C1C(&qword_1008F1DC8, &qword_1008F1DB8);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v12, &qword_1008F1DB0);
  }
}

uint64_t sub_10005646C()
{
  sub_100141EEC(&qword_1008F8278);
  sub_100054EC8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000564D0()
{
  result = qword_1008F8288;
  if (!qword_1008F8288)
  {
    sub_100141EEC(&qword_1008F8280);
    sub_100056554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8288);
  }

  return result;
}

unint64_t sub_100056554()
{
  result = qword_1008F8290;
  if (!qword_1008F8290)
  {
    sub_100141EEC(&qword_1008F8298);
    sub_10014A6B0(&qword_1008F82A0, &qword_1008F82A8);
    sub_100054F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8290);
  }

  return result;
}

uint64_t sub_10005660C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CatalogTipCardView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v20 = sub_100140278(&qword_1008F8270);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v20 - v7;
  v9 = sub_100140278(&qword_1008F8278);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_1000550B8(v1, v25);
  sub_100053AC0(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatalogTipCardView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_10005759C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_100140278(&qword_1008F8280);
  sub_1000564D0();
  View.onTapGesture(count:perform:)();

  memcpy(v26, v25, 0x20BuLL);
  sub_10000EA04(v26, &qword_1008F8280);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v6 + 32))(v11, v8, v20);
  v14 = &v11[*(v9 + 36)];
  v15 = v25[5];
  *(v14 + 4) = v25[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v25[6];
  v16 = v25[1];
  *v14 = v25[0];
  *(v14 + 1) = v16;
  v17 = v25[3];
  *(v14 + 2) = v25[2];
  *(v14 + 3) = v17;
  v18 = v21;
  static AccessibilityChildBehavior.combine.getter();
  sub_100054EC8();
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v18, v24);
  return sub_100056D8C(v11);
}

uint64_t sub_1000569D8()
{
  v1 = type metadata accessor for CatalogTipCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CatalogTipCard();
  sub_10001D4F8(*(v7 + *(v9 + 20)), *(v7 + *(v9 + 20) + 8), *(v7 + *(v9 + 20) + 16));
  v10 = v7 + *(v9 + 36);
  v11 = type metadata accessor for CatalogTipSection();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v24 = v4;
    v25 = v1;
    v26 = v0;

    v12 = v10 + *(v11 + 36);
    v13 = type metadata accessor for ShelfLockupAttributedTagStrings();
    (*(*(v13 - 8) + 8))(v12, v13);
    v14 = type metadata accessor for CatalogTipSectionItem();
    v15 = v14[5];
    v16 = type metadata accessor for Artwork();
    v17 = *(v16 - 8);
    v23 = *(v17 + 8);
    v23(v12 + v15, v16);

    v18 = v14[8];
    if (!(*(v17 + 48))(v12 + v18, 1, v16))
    {
      v23(v12 + v18, v16);
    }

    v19 = v14[12];
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(v12 + v19, v20);

    v1 = v25;
    v0 = v26;
    v3 = (v2 + 16) & ~v2;
    v4 = v24;
  }

  v21 = v5 + *(v1 + 24);
  if (*(v21 + 24))
  {
    sub_100005A40(v21);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100056D8C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F8278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056DF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for Font.Leading();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CatalogTipCardView();
  v42 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v77[0])
  {
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v55 = Image.resizable(capInsets:resizingMode:)();

    (*(v8 + 8))(v10, v7);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v105 = 1;
    v53 = v108;
    v54 = v107;
    v51 = v110;
    v52 = v109;
    v49 = v112;
    v50 = v111;
    v41 = 1;
    v11 = static Edge.Set.all.getter();
    v106 = 0;
    v48 = 0x4020000000000000;
    v46 = v11;
    v47 = 0x4000000000000000;
    v40 = 16777472;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v40 = 0;
    v41 = 0;
  }

  sub_100055AD8(&ShelfLockupAttributedTagStrings.subtitle.getter);
  v12 = Text.init(_:)();
  v36 = v12;
  v38 = v13;
  v15 = v14;
  v42 = v16;
  v39 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v37 = v15 & 1;
  v102 = v15 & 1;
  v101 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v103[55] = v116;
  *&v103[71] = v117;
  *&v103[87] = v118;
  *&v103[103] = v119;
  *&v103[7] = v113;
  *&v103[23] = v114;
  *&v103[39] = v115;
  static Font.caption.getter();
  v26 = v43;
  v25 = v44;
  (*(v43 + 104))(v5, enum case for Font.Leading.tight(_:), v44);
  v27 = v5;
  v28 = Font.leading(_:)();

  (*(v26 + 8))(v27, v25);
  KeyPath = swift_getKeyPath();
  v43 = KeyPath;
  LODWORD(v27) = static HierarchicalShapeStyle.secondary.getter();
  v30 = swift_getKeyPath();
  v104 = 0;
  v44 = v40 | v41;
  v61[0] = v55;
  v61[1] = 0;
  *&v62 = v40 | v41;
  *(&v62 + 1) = v54;
  *&v63 = v53;
  *(&v63 + 1) = v52;
  *&v64 = v51;
  *(&v64 + 1) = v50;
  *&v65 = v49;
  *(&v65 + 1) = v46;
  v66 = v47;
  v67 = 0;
  *&v68 = 0;
  *(&v68 + 1) = v48;
  v69 = 0;
  v58[112] = 0;
  *&v58[64] = v65;
  *&v58[80] = v47;
  *&v58[96] = v68;
  *v58 = v55;
  *&v58[16] = v62;
  *&v58[32] = v63;
  *&v58[48] = v64;
  *&v70 = v12;
  v31 = v38;
  *(&v70 + 1) = v38;
  v32 = v37;
  LOBYTE(v71) = v37;
  DWORD1(v71) = *&v60[3];
  *(&v71 + 1) = *v60;
  v33 = v42;
  *(&v71 + 1) = v42;
  LOBYTE(v12) = v39;
  LOBYTE(v72) = v39;
  DWORD1(v72) = *&v59[3];
  *(&v72 + 1) = *v59;
  *(&v72 + 1) = v18;
  *&v73 = v20;
  *(&v73 + 1) = v22;
  *&v74[0] = v24;
  BYTE8(v74[0]) = 0;
  *(&v74[3] + 9) = *&v103[48];
  *(&v74[2] + 9) = *&v103[32];
  *(&v74[1] + 9) = *&v103[16];
  *(v74 + 9) = *v103;
  *(&v74[7] + 1) = *&v103[111];
  *(&v74[6] + 9) = *&v103[96];
  *(&v74[5] + 9) = *&v103[80];
  *(&v74[4] + 9) = *&v103[64];
  *&v75 = KeyPath;
  *(&v75 + 1) = v28;
  LODWORD(v76[0]) = v27;
  *(&v76[0] + 1) = v30;
  v34 = v30;
  *&v76[1] = 2;
  BYTE8(v76[1]) = 0;
  *&v58[264] = v74[5];
  *&v58[280] = v74[6];
  *&v58[337] = *(v76 + 9);
  *&v58[312] = v75;
  *&v58[328] = v76[0];
  *&v58[296] = v74[7];
  *&v58[152] = v72;
  *&v58[136] = v71;
  *&v58[120] = v70;
  *&v58[216] = v74[2];
  *&v58[200] = v74[1];
  *&v58[184] = v74[0];
  *&v58[168] = v73;
  *&v58[248] = v74[4];
  *&v58[232] = v74[3];
  memcpy(v45, v58, 0x161uLL);
  v77[0] = v36;
  v77[1] = v31;
  v78 = v32;
  *v79 = *v60;
  *&v79[3] = *&v60[3];
  v80 = v33;
  v81 = v12;
  *v82 = *v59;
  *&v82[3] = *&v59[3];
  v83 = v18;
  v84 = v20;
  v85 = v22;
  v86 = v24;
  v87 = 0;
  v92 = *&v103[64];
  v93 = *&v103[80];
  *v94 = *&v103[96];
  v88 = *v103;
  v89 = *&v103[16];
  v90 = *&v103[32];
  v91 = *&v103[48];
  *&v94[15] = *&v103[111];
  v95 = v43;
  v96 = v28;
  v97 = v27;
  v98 = v34;
  v99 = 2;
  v100 = 0;
  sub_10001B104(v61, v56, &qword_1008F8388);
  sub_10001B104(&v70, v56, &qword_1008F8390);
  sub_10000EA04(v77, &qword_1008F8390);
  v56[0] = v55;
  v56[1] = 0;
  v56[2] = v44;
  v56[3] = v54;
  v56[4] = v53;
  v56[5] = v52;
  v56[6] = v51;
  v56[7] = v50;
  v56[8] = v49;
  v56[9] = v46;
  v56[10] = v47;
  v56[11] = 0;
  v56[12] = 0;
  v56[13] = v48;
  v57 = 0;
  return sub_10000EA04(v56, &qword_1008F8388);
}

uint64_t sub_10005759C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MetricDetailViewModel();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

id sub_10005772C()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setRoundingMode:2];
  [v0 setNumberStyle:1];
  [v0 setMaximumFractionDigits:0];
  v1 = [objc_allocWithZone(NSLengthFormatter) init];
  [v1 setNumberFormatter:v0];
  [v1 setUnitStyle:2];

  return v1;
}

unint64_t sub_100057B48()
{
  result = qword_1008F8C88;
  if (!qword_1008F8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8C88);
  }

  return result;
}

unint64_t sub_100057B9C()
{
  result = qword_1008DC648;
  if (!qword_1008DC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC648);
  }

  return result;
}

uint64_t sub_100057BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ActivitySharingReplyMenuContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100057D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivitySharingReplyMenuContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100057DF8(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = sub_100140278(&qword_1008DC620);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_1000066AC(a1, a1[3]);
  sub_10005850C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = 0;
  sub_1000585AC();
  v12 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v15) = HIBYTE(a4) & 1;
    v18 = 1;
    sub_10005C14C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100057FA0()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v18[-1] - v1;
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, v18);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10000AFDC(v10, v11, v18);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s received notification %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    sub_10026E198(0, 0, v2, &unk_1006D8358, v16);
  }

  return result;
}

uint64_t sub_1000581FC(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100057DF8(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

size_t sub_100058240()
{
  v1 = sub_100140278(&qword_1008DE5A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = v0[1];
  v17 = &_swiftEmptyArrayStorage;
  result = sub_100059900(0, v6, 0);
  if (v6 <= *(v8 + 16))
  {
    v7 = v17;
    v10 = v8 + 32;
    v11 = (v5 + 48);
    do
    {
      v12 = &v4[*(v1 + 48)];
      Date.init(timeIntervalSinceReferenceDate:)();
      v13 = *v11;
      *v12 = *(v11 - 1);
      v12[16] = v13;
      v17 = v7;
      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        sub_100059900(v14 > 1, v15 + 1, 1);
        v7 = v17;
      }

      v7[2] = v15 + 1;
      sub_10005849C(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15);
      v11 += 24;
      v10 += 8;
      --v6;
    }

    while (v6);
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1000583F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005849C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005850C()
{
  result = qword_1008DC608;
  if (!qword_1008DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC608);
  }

  return result;
}

uint64_t type metadata accessor for MetricChartData()
{
  result = qword_1008DEEC0;
  if (!qword_1008DEEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000585AC()
{
  result = qword_1008DC628;
  if (!qword_1008DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC628);
  }

  return result;
}

size_t sub_100058600(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100140278(a5);
  v14 = *(sub_100140278(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_100140278(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000587FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MetricCard();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 24) = a2;
    return result;
  }

  v16 = sub_100140278(&unk_1008EAF50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = type metadata accessor for MetricFormattingHelper();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1000589E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MetricCard();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[7] + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100140278(&unk_1008EAF50);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = type metadata accessor for MetricFormattingHelper();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_100058BCC(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v90 = a4;
  v86 = a3;
  v91 = a2;
  v5 = sub_100140278(&qword_1008F5758);
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v76 = &v51 - v6;
  v7 = sub_100140278(&qword_1008F5760);
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = &v51 - v8;
  v9 = sub_100140278(&qword_1008F5768);
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v73 = &v51 - v10;
  v72 = sub_100140278(&qword_1008F5770);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v51 - v11;
  v69 = sub_100140278(&qword_1008F5778);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v51 - v12;
  v66 = sub_100140278(&qword_1008F5780);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v51 - v13;
  v63 = sub_100140278(&qword_1008F5788);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v51 - v14;
  v15 = sub_100140278(&qword_1008F5790);
  v81 = *(v15 - 8);
  v82 = v15;
  __chkstk_darwin(v15);
  v80 = &v51 - v16;
  v60 = sub_100140278(&qword_1008F5798);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v51 - v17;
  v18 = sub_100140278(&qword_1008F57A0);
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v57 = sub_100140278(&qword_1008F57A8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - v21;
  v54 = sub_100140278(&qword_1008F57B0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v23 = &v51 - v22;
  v24 = sub_100140278(&qword_1008F57B8);
  v52 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v51 - v25;
  v27 = sub_100140278(&qword_1008F57C0);
  v28 = *(v27 - 8);
  v88 = v27;
  v89 = v28;
  __chkstk_darwin(v27);
  v30 = &v51 - v29;
  sub_1000066AC(a1, a1[3]);
  sub_10005AA98();
  v87 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v90 <= 1u)
  {
    if (!v90)
    {
      v96 = 3;
      sub_10005C8C8();
      v32 = v87;
      v31 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v95 = v91;
      sub_10005F82C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v79 + 8))(v20, v18);
      return (*(v89 + 8))(v32, v31);
    }

    v98 = 5;
    sub_1005F80E4();
    v33 = v80;
    v32 = v87;
    v31 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v34 = v82;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = v81;
LABEL_7:
    (*(v35 + 8))(v33, v34);
    return (*(v89 + 8))(v32, v31);
  }

  if (v90 == 2)
  {
    v106 = 11;
    sub_1005F7F94();
    v33 = v83;
    v32 = v87;
    v31 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v105 = v91;
    sub_1005F8234();
    v34 = v85;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v35 = v84;
    goto LABEL_7;
  }

  if (v91 > 4)
  {
    if (v91 <= 6)
    {
      if (v91 ^ 5 | v86)
      {
        v102 = 8;
        sub_1005F803C();
        v50 = v67;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v68 + 8);
        v41 = v50;
        v42 = &v109;
      }

      else
      {
        v101 = 7;
        sub_10005AAEC();
        v46 = v64;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v65 + 8);
        v41 = v46;
        v42 = &v108;
      }
    }

    else
    {
      if (v91 ^ 7 | v86)
      {
        if (v91 ^ 8 | v86)
        {
          v107 = 12;
          sub_1005F7F40();
          v43 = v76;
          v39 = v87;
          v38 = v88;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v77;
          v44 = v78;
        }

        else
        {
          v104 = 10;
          sub_10006169C();
          v43 = v73;
          v39 = v87;
          v38 = v88;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v74;
          v44 = v75;
        }

        (*(v45 + 8))(v43, v44);
        return (*(v89 + 8))(v39, v38);
      }

      v103 = 9;
      sub_1000613DC();
      v48 = v70;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v71 + 8);
      v41 = v48;
      v42 = &v110;
    }

    goto LABEL_29;
  }

  if (v91 > 1)
  {
    if (v91 ^ 2 | v86)
    {
      if (v91 ^ 3 | v86)
      {
        v100 = 6;
        sub_1005F8090();
        v49 = v61;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v62 + 8);
        v41 = v49;
        v42 = &v99;
      }

      else
      {
        v97 = 4;
        sub_100061584();
        v37 = v58;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v59 + 8);
        v41 = v37;
        v42 = &v91;
      }
    }

    else
    {
      v94 = 2;
      sub_1005F818C();
      v47 = v55;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v56 + 8);
      v41 = v47;
      v42 = &v89;
    }

    goto LABEL_29;
  }

  if (v91 | v86)
  {
    v93 = 1;
    sub_1005F81E0();
    v39 = v87;
    v38 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = *(v53 + 8);
    v41 = v23;
    v42 = &v86;
LABEL_29:
    v40(v41, *(v42 - 32));
    return (*(v89 + 8))(v39, v38);
  }

  v92 = 0;
  sub_100061648();
  v39 = v87;
  v38 = v88;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v52 + 8))(v26, v24);
  return (*(v89 + 8))(v39, v38);
}

size_t sub_100059900(size_t a1, int64_t a2, char a3)
{
  result = sub_100058600(a1, a2, a3, *v3, &qword_1008DE598, &unk_1006D7D18, &qword_1008DE5A0);
  *v3 = result;
  return result;
}

uint64_t sub_100059994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MetricDetailViewModel();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100059AD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_100059B80()
{
  result = qword_1008DCEE0;
  if (!qword_1008DCEE0)
  {
    sub_100141EEC(&qword_1008DCEE8);
    sub_10006D128(&qword_1008DCEF0, type metadata accessor for QuickStartWorkoutCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEE0);
  }

  return result;
}

unint64_t sub_100059C44()
{
  result = qword_1008DCEC8;
  if (!qword_1008DCEC8)
  {
    sub_100141EEC(&qword_1008DCED0);
    sub_10006D128(&qword_1008DCED8, type metadata accessor for MetricCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEC8);
  }

  return result;
}

uint64_t sub_100059D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E5C70);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100140278(&qword_1008ECEB8);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_1000059F8(0, &qword_1008DB898);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (sub_10005A1F8(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_10005A744(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_31;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  if (*(a1 + 40) == 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        if (v15 != 1)
        {
          v16 = 0;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v15 <= 1)
        {
          v16 = 0;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (v15)
      {
        v16 = 0;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v14 != v15)
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_31;
    }
  }

  v25 = type metadata accessor for MetricDetailViewModel();
  v17 = *(v25 + 36);
  v18 = *(v11 + 48);
  sub_10005A758(a1 + v17, v13);
  sub_10005A758(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_10005A758(v13, v10);
    if (v19(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_10005AA50(&qword_1008ECEC0, &type metadata accessor for DateInterval);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_10000EA04(v13, &qword_1008E5C70);
      if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    (*(v5 + 8))(v10, v4);
LABEL_28:
    sub_10000EA04(v13, &qword_1008ECEB8);
    goto LABEL_31;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_28;
  }

  sub_10000EA04(v13, &qword_1008E5C70);
LABEL_30:
  if (*(a1 + *(v25 + 40)) == *(a2 + *(v25 + 40)))
  {
    v22 = static Date.== infix(_:_:)();
    return v22 & 1;
  }

LABEL_31:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_10005A184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005A1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricChartData();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_1000059F8(0, &qword_1008DB898);
    v15 = *(v5 + 72);
    while (1)
    {
      sub_100307CF8(v13, v10, type metadata accessor for MetricChartData);
      sub_100307CF8(v14, v8, type metadata accessor for MetricChartData);
      if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v16 = static NSObject.== infix(_:_:)();
      sub_100307D60(v8, type metadata accessor for MetricChartData);
      sub_100307D60(v10, type metadata accessor for MetricChartData);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_100307D60(v8, type metadata accessor for MetricChartData);
    sub_100307D60(v10, type metadata accessor for MetricChartData);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10005A430()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = v6 + v4;
  v8 = (v6 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v5, v1);
  v9(v0 + v6, v1);
  if (*(v0 + v8 + 16))
  {
  }

  return _swift_deallocObject(v0, ((((v7 + 239) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_10005A5A4()
{
  v1 = (type metadata accessor for WorkoutItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[12];
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100140278(&qword_1008E09C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005A758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A7D8(unint64_t a1, uint64_t a2, unint64_t *a3)
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

    v5 = sub_1000059F8(0, a3);
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

uint64_t sub_10005AA50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005AA98()
{
  result = qword_1008F56D0;
  if (!qword_1008F56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56D0);
  }

  return result;
}

unint64_t sub_10005AAEC()
{
  result = qword_1008F5710;
  if (!qword_1008F5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5710);
  }

  return result;
}

uint64_t sub_10005AB6C()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F4CA8);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = sub_100140278(&qword_1008F4CB0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = sub_100140278(&qword_1008F4CB8);
  sub_10005AF5C(v0, &v7[*(v11 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000615D8(v7, v10);
  v12 = &v10[*(v8 + 36)];
  v13 = v17[5];
  *(v12 + 4) = v17[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v17[6];
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v14;
  v15 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v15;
  static AccessibilityChildBehavior.combine.getter();
  sub_1000616F0();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v10, &qword_1008F4CB0);
}

unint64_t sub_10005ADDC(char a1)
{
  result = 0x73676E6972;
  switch(a1)
  {
    case 1:
      result = 1684107116;
      break;
    case 2:
      result = 0x79726F74736968;
      break;
    case 3:
      result = 0x63697274656DLL;
      break;
    case 4:
      result = 0x6472617761;
      break;
    case 5:
      result = 0x646E65697266;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x54676F6C61746163;
      break;
    case 10:
      result = 0x73646E657274;
      break;
    case 11:
      result = 0x646E657274;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005AF5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a2;
  v82 = sub_100140278(&qword_1008F4CD0) - 8;
  v3 = __chkstk_darwin(v82);
  v99 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v86 = &v78 - v5;
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.Leading();
  v92 = *(v8 - 8);
  *&v93 = v8;
  __chkstk_darwin(v8);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v78 - v15;
  v100 = a1;
  v133 = sub_10005BA54();
  v134 = v17;
  sub_10000FCBC();
  v18 = Text.init<A>(_:)();
  v96 = v19;
  v97 = v18;
  v94 = v20;
  v98 = v21;
  sub_10005491C(v16);
  v88 = enum case for DynamicTypeSize.large(_:);
  v22 = *(v11 + 104);
  v22(v14);
  *v87 = v22;
  v80 = sub_10005BE1C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v81 = dispatch thunk of static Comparable.< infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v16, v10);
  v95 = static Edge.Set.bottom.getter();
  sub_10005491C(v16);
  (v22)(v14, v88, v10);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v85 = v11 + 8;
  v23(v14, v10);
  v23(v16, v10);
  v24 = 0.0;
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v94 &= 1u;
  v156 = v94;
  v153 = 0;
  static Font.footnote.getter();
  v34 = v91;
  v33 = v92;
  v35 = v93;
  (*(v92 + 104))(v91, enum case for Font.Leading.tight(_:), v93);
  *(&v93 + 1) = Font.leading(_:)();

  (*(v33 + 8))(v34, v35);
  *&v93 = swift_getKeyPath();
  v36 = v100;
  sub_10005BEF4(v84);
  v37 = Text.init(_:)();
  v90 = v38;
  v91 = v37;
  LOBYTE(v34) = v39;
  v92 = v40;
  KeyPath = swift_getKeyPath();
  sub_10005491C(v16);
  (*v87)(v14, v88, v10);
  LODWORD(v80) = dispatch thunk of static Comparable.< infix(_:_:)();
  v79 = v23;
  v23(v14, v10);
  v23(v16, v10);
  v88 = static Edge.Set.all.getter();
  v87[0] = v34 & 1;
  v152 = v34 & 1;
  v149 = 0;
  v41 = v86;
  sub_10005FD04(v36, v86);
  v42 = v36 + *(type metadata accessor for MetricCardView() + 20);
  v43 = type metadata accessor for MetricCard();
  v44 = v42 + *(v43 + 20);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v33) = *(v44 + 16);
  sub_10005491C(v16);
  LODWORD(v36) = sub_10001DEC8(v16, v45, v46, v33);
  v79(v16, v10);
  v47 = v41 + *(v82 + 44);
  *v47 = v36 == 2;
  *(v47 + 8) = 0x404B800000000000;
  *(v47 + 16) = 0;
  v48 = v42 + *(v43 + 36);
  if (*(v48 + 40) == 1 && *(v48 + 32) == 1)
  {
    sub_1005C6C04(v84);
    v82 = Text.init(_:)();
    v100 = v49;
    v51 = v50;
    v85 = v52;
    v53 = static Edge.Set.all.getter();
    LOBYTE(v133) = v51 & 1;
    LOBYTE(v101) = 0;
    v54 = v51 & 1;
    v55 = v53;
    v84 = 0x4000000000000000;
  }

  else
  {
    v82 = 0;
    v100 = 0;
    v84 = 0;
    v85 = 0;
    v55 = 0;
    v54 = 0;
  }

  v78 = v54;
  v79 = v55;
  if (v80)
  {
    v56 = 0x4010000000000000;
  }

  else
  {
    v56 = 0x4020000000000000;
  }

  v80 = v56;
  if (v81)
  {
    v24 = -2.0;
  }

  v57 = v41;
  v58 = v99;
  sub_10001B104(v57, v99, &qword_1008F4CD0);
  *&v101 = v97;
  *(&v101 + 1) = v96;
  LOBYTE(v102) = v94;
  *(&v102 + 1) = *v155;
  DWORD1(v102) = *&v155[3];
  *(&v102 + 1) = v98;
  *&v103 = 0;
  *(&v103 + 1) = v24;
  LOBYTE(v104) = v95;
  *(&v104 + 1) = *v154;
  DWORD1(v104) = *&v154[3];
  *(&v104 + 1) = v26;
  *&v105 = v28;
  *(&v105 + 1) = v30;
  *&v106 = v32;
  BYTE8(v106) = 0;
  *(&v106 + 9) = v157[0];
  HIDWORD(v106) = *(v157 + 3);
  v107 = v93;
  v59 = v102;
  v60 = v83;
  *v83 = v101;
  v60[1] = v59;
  v61 = v103;
  v62 = v104;
  v63 = v106;
  v64 = v107;
  v60[4] = v105;
  v60[5] = v63;
  v60[2] = v61;
  v60[3] = v62;
  *&v108 = v91;
  *(&v108 + 1) = v90;
  LOBYTE(v109) = v87[0];
  DWORD1(v109) = *&v151[3];
  *(&v109 + 1) = *v151;
  *(&v109 + 1) = v92;
  *&v110 = KeyPath;
  *(&v110 + 1) = 0x3FE999999999999ALL;
  LOBYTE(v111) = v88;
  DWORD1(v111) = *&v150[3];
  *(&v111 + 1) = *v150;
  *(&v111 + 1) = 0;
  *&v112[0] = 0;
  *(&v112[0] + 1) = v56;
  *&v112[1] = 0;
  BYTE8(v112[1]) = 0;
  v65 = v108;
  v66 = v109;
  v60[6] = v64;
  v60[7] = v65;
  v67 = v110;
  v68 = v111;
  *(v60 + 185) = *(v112 + 9);
  v69 = v112[0];
  v60[10] = v68;
  v60[11] = v69;
  v60[8] = v66;
  v60[9] = v67;
  v70 = sub_100140278(&qword_1008F4CD8);
  sub_10001B104(v58, v60 + *(v70 + 64), &qword_1008F4CD0);
  v71 = (v60 + *(v70 + 80));
  v72 = v82;
  v73 = v100;
  *&v113 = v82;
  *(&v113 + 1) = v100;
  v74 = v85;
  *&v114 = v54;
  *(&v114 + 1) = v85;
  *&v115 = v55;
  v75 = v84;
  *(&v115 + 1) = v84;
  v116 = 0;
  memset(v117, 0, sizeof(v117));
  v71[2] = v115;
  v71[3] = 0u;
  *(v71 + 57) = *&v117[1];
  v76 = v114;
  *v71 = v113;
  v71[1] = v76;
  sub_10001B104(&v101, &v133, &qword_1008F4CE0);
  sub_10001B104(&v108, &v133, &qword_1008F4CE8);
  sub_10001B104(&v113, &v133, &qword_1008F2C30);
  sub_10000EA04(v86, &qword_1008F4CD0);
  v118[0] = v72;
  v118[1] = v73;
  v118[2] = v78;
  v118[3] = v74;
  v118[4] = v79;
  v118[5] = v75;
  memset(&v118[6], 0, 24);
  v119 = 0;
  sub_10000EA04(v118, &qword_1008F2C30);
  sub_10000EA04(v99, &qword_1008F4CD0);
  v120[0] = v91;
  v120[1] = v90;
  v121 = v87[0];
  *v122 = *v151;
  *&v122[3] = *&v151[3];
  v123 = v92;
  v124 = KeyPath;
  v125 = 0x3FE999999999999ALL;
  v126 = v88;
  *v127 = *v150;
  *&v127[3] = *&v150[3];
  v128 = 0;
  v129 = 0;
  v130 = v80;
  v131 = 0;
  v132 = 0;
  sub_10000EA04(v120, &qword_1008F4CE8);
  v133 = v97;
  v134 = v96;
  v135 = v94;
  *v136 = *v155;
  *&v136[3] = *&v155[3];
  v137 = v98;
  v138 = 0;
  v139 = v24;
  v140 = v95;
  *v141 = *v154;
  *&v141[3] = *&v154[3];
  v142 = v26;
  v143 = v28;
  v144 = v30;
  v145 = v32;
  v146 = 0;
  *v147 = v157[0];
  *&v147[3] = *(v157 + 3);
  v148 = v93;
  return sub_10000EA04(&v133, &qword_1008F4CE0);
}

uint64_t storeEnumTagSinglePayload for CardType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10005BA54()
{
  v1 = type metadata accessor for MetricCardView();
  v2 = v0 + *(v1 + 20);
  v3 = v2 + *(type metadata accessor for MetricCard() + 36);
  v4 = *(v3 + 40);
  if (v4 == 1 && !*(v3 + 32))
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0x4C41544F54;
    v6 = *(v0 + *(v1 + 24));
    v7 = 0xE500000000000000;
    if (((1 << v6) & 0x5DDBB8E070) == 0 && (((1 << v6) & 0x2224471F80) != 0 || (v4 & 1) == 0))
    {
      v7 = 0xE700000000000000;
      v5 = 0x45474152455641;
    }

    _StringGuts.grow(_:)(17);

    strcpy(v16, "METRIC_CARD_");
    BYTE5(v16[1]) = 0;
    HIWORD(v16[1]) = -5120;
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 95;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_10002A094(v6);
    String.append(_:)(v10);

    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v14;
}

uint64_t getEnumTagSinglePayload for CardType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10005BD20()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10005BD44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BD8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BDD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BE1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BEAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005BEF4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MetricCardView();
  v4 = *(v1 + *(v3 + 24));
  v5 = v1 + *(v3 + 20);
  v6 = v5 + *(type metadata accessor for MetricCard() + 36);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  if (qword_1008DAEB8 != -1)
  {
    swift_once();
  }

  v9 = qword_1008F4BF0;
  sub_10005C1A0(v4);
  v10 = Color.init(uiColor:)();
  v11 = v6;
  if (((1 << v4) & 0x5DDBB8E070) == 0)
  {
    if (((1 << v4) & 0x2224471F80) != 0)
    {
      v11 = (v6 + 8);
    }

    else
    {
      v12 = 8;
      if ((v8 & (v7 == 0)) != 0)
      {
        v12 = 0;
      }

      v11 = (v6 + v12);
    }
  }

  v13 = *v11;
  v14 = *(v6 + *(type metadata accessor for MetricDetailViewModel() + 40));
  v15 = v13;
  sub_10005C9EC(v13, v4, v9, 0, v10, 0, (v14 & 1) == 0, a1);
}

void sub_10005C070()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_10005C818();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppComposer();
      if (v2 <= 0x3F)
      {
        sub_10005C6EC();
        if (v3 <= 0x3F)
        {
          type metadata accessor for DashboardCardCellViewCache();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10005C14C()
{
  result = qword_1008DC630;
  if (!qword_1008DC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC630);
  }

  return result;
}

id sub_10005C1A0(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      v18 = [objc_opt_self() distanceColors];
      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v18;
      v3 = [v18 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_17:
      v20 = [objc_opt_self() powerColors];
      v3 = [v20 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_19:
      v21 = [objc_opt_self() cadenceColors];
      v3 = [v21 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      goto LABEL_28;
    case 4:
    case 11:
    case 12:
    case 13:
    case 19:
    case 23:
    case 27:
    case 30:
    case 34:
      v1 = [objc_opt_self() distanceColors];
      if (!v1)
      {
        goto LABEL_24;
      }

      v2 = v1;
      v3 = [v1 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_5:
      v4 = [objc_opt_self() elapsedTimeColors];
      if (!v4)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v5 = v4;
      v3 = [v4 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_8:
      v6 = [objc_opt_self() paceColors];
      if (!v6)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        JUMPOUT(0x10005C588);
      }

      v7 = v6;
      v3 = [v6 nonGradientTextColor];

      if (!v3)
      {
        __break(1u);
LABEL_11:
        v8 = [objc_opt_self() elevationColors];
        v3 = [v8 nonGradientTextColor];

        if (!v3)
        {
          __break(1u);
LABEL_13:
          sub_1000059F8(0, &qword_1008E7FC0);
          isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.59216, 0.4902, 0.88235, 1.0).super.isa;
          v10 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.76078, 0.63137, 1.0, 1.0).super.isa;
          v11 = type metadata accessor for GradientColors();
          v12 = objc_allocWithZone(v11);
          *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
          *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v10;
          v24.receiver = v12;
          v24.super_class = v11;
          v13 = objc_msgSendSuper2(&v24, "init");
          v14 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.63529, 0.5451, 0.88235, 1.0).super.isa;
          v15 = type metadata accessor for MetricColors();
          v16 = objc_allocWithZone(v15);
          *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v13;
          *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v14;
          v23.receiver = v16;
          v23.super_class = v15;
          v17 = objc_msgSendSuper2(&v23, "init");
          v3 = *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];
        }
      }

      return v3;
    case 5:
    case 10:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
      goto LABEL_5;
    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      goto LABEL_11;
    case 7:
    case 16:
    case 22:
    case 26:
    case 29:
    case 33:
    case 37:
      goto LABEL_8;
    case 8:
    case 17:
      goto LABEL_17;
    case 9:
    case 18:
      goto LABEL_19;
    case 38:
      result = [objc_opt_self() fiui_meditationTeal];
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    default:
      goto LABEL_13;
  }
}

unint64_t sub_10005C674()
{
  result = qword_1008F4608;
  if (!qword_1008F4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4608);
  }

  return result;
}

void sub_10005C6EC()
{
  if (!qword_1008DC728)
  {
    sub_100141EEC(&qword_1008DC730);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DC728);
    }
  }
}

uint64_t sub_10005C780()
{
  if (*v0)
  {
    return 0x65746143657A6973;
  }

  else
  {
    return 0x706D655464726163;
  }
}

unint64_t sub_10005C818()
{
  result = qword_1008DCC10;
  if (!qword_1008DCC10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1008DCC10);
  }

  return result;
}

unint64_t sub_10005C8C8()
{
  result = qword_1008F5730;
  if (!qword_1008F5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5730);
  }

  return result;
}

void sub_10005C91C()
{
  if (!qword_1008DC720)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DC720);
    }
  }
}

uint64_t sub_10005C9EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v9 = v8;
  LODWORD(v366) = a7;
  LODWORD(v360) = a6;
  LODWORD(v359) = a4;
  v367 = a3;
  v368 = a8;
  v362 = a2;
  v363 = a5;
  v11 = sub_100140278(&qword_1008EF8C8);
  v12 = __chkstk_darwin(v11 - 8);
  v332 = &v322 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v333 = &v322 - v14;
  v15 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v15 - 8);
  v354 = &v322 - v16;
  v17 = sub_100140278(&qword_1008E1900);
  v18 = __chkstk_darwin(v17 - 8);
  v335 = &v322 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v350 = &v322 - v21;
  __chkstk_darwin(v20);
  v334 = &v322 - v22;
  v355 = sub_100140278(&qword_1008E1908);
  v353 = *(v355 - 8);
  v23 = __chkstk_darwin(v355);
  v330 = &v322 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v331 = &v322 - v26;
  __chkstk_darwin(v25);
  v329 = &v322 - v27;
  v348 = type metadata accessor for AttributedString.Runs();
  v347 = *(v348 - 8);
  __chkstk_darwin(v348);
  v346 = &v322 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AttributedString();
  v365 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v349 = &v322 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v356 = &v322 - v33;
  v34 = __chkstk_darwin(v32);
  v351 = &v322 - v35;
  __chkstk_darwin(v34);
  v345 = &v322 - v36;
  v37 = type metadata accessor for Locale();
  v38 = *(v37 - 8);
  v357 = v37;
  v358 = v38;
  __chkstk_darwin(v37);
  v342 = &v322 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  __chkstk_darwin(v40 - 8);
  v340 = &v322 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  __chkstk_darwin(v42 - 8);
  v339 = &v322 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  __chkstk_darwin(v44 - 8);
  v336 = &v322 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = type metadata accessor for Duration.UnitsFormatStyle();
  v337 = *(v338 - 8);
  __chkstk_darwin(v338);
  v47 = &v322 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v343 = *(v344 - 8);
  v48 = __chkstk_darwin(v344);
  v50 = &v322 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v341 = &v322 - v51;
  v52 = sub_100140278(&qword_1008EFF38);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v322 - v54;
  v56 = type metadata accessor for AttributeContainer();
  v57 = __chkstk_darwin(v56);
  __chkstk_darwin(v57);
  v61 = &v322 - v60;
  if (!a1)
  {
    v73 = type metadata accessor for MetricFormattingHelper();
    v74 = *(v365 + 16);
    v75 = v9 + *(v73 + 20);
    v76 = v368;

    return v74(v76, v75, v29);
  }

  v325 = v47;
  v328 = v9;
  v327 = v29;
  v62 = v58;
  v63 = v59;
  v364 = a1;
  AttributeContainer.init()();
  KeyPath = swift_getKeyPath();
  *(&v322 - 2) = __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  v326 = sub_10005F988();
  AttributeContainer.subscript.getter();

  v361 = v63;
  v67 = *(v63 + 8);
  v66 = v63 + 8;
  v65 = v67;
  v352 = v62;
  v67(v62, v56);
  v370 = v367;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v53 + 8))(v55, v52);
  v68 = v56;
  if (v366)
  {
    v370 = v363;
    sub_10005FAB0();

    AttributeContainer.subscript.setter();
    v69 = [objc_opt_self() mainBundle];
    v70 = String._bridgeToObjectiveC()();
    v71 = [v69 localizedStringForKey:v70 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v361 + 16))(v352, v61, v56);
    AttributedString.init(_:attributes:)();

    return v65(v61, v56);
  }

  v77 = v361;
  v366 = v65;
  v322 = v66;
  v323 = v61;
  v324 = v68;
  v78 = 1;
  v80 = v367;
  v79 = v368;
  v81 = v362;
  v82 = v364;
  v83 = v328;
  switch(v362)
  {
    case 1:
    case 3:
    case 4:
    case 19:
    case 23:
    case 30:
    case 34:
      goto LABEL_8;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
      v109 = v50;
      v110 = [objc_opt_self() secondUnit];
      [v82 doubleValueForUnit:v110];

      v111 = static Duration.seconds(_:)();
      v113 = v112;
      if (v360)
      {
        v114 = [v82 _isZero];
        v115 = v366;
        if (v114)
        {
          v116 = static Color.secondary.getter();
          v117 = 0;
        }

        else
        {
          v116 = static Color.white.getter();
          sub_10005C1A0(v81);
          v117 = Color.init(uiColor:)();
        }

        sub_1004C3C38(v111, v113, v80, v359 & 1, v116, v117, v79);

        return v115(v323, v324);
      }

      else
      {
        sub_100140278(&qword_1008EF898);
        type metadata accessor for Duration.UnitsFormatStyle.Unit();
        v134 = v80;
        v362 = v113;
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_1006D1F70;
        static Duration.UnitsFormatStyle.Unit.hours.getter();
        static Duration.UnitsFormatStyle.Unit.minutes.getter();
        sub_10029CB54(v135);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
        static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
        static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
        v136 = v325;
        Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
        Duration.UnitsFormatStyle.attributed.getter();
        (*(v337 + 8))(v136, v338);
        v137 = v342;
        static Locale.autoupdatingCurrent.getter();
        v138 = v341;
        Duration.UnitsFormatStyle.Attributed.locale(_:)();
        (*(v358 + 8))(v137, v357);
        v139 = *(v343 + 8);
        v140 = v344;
        v139(v109, v344);
        sub_1004D4DC8(&qword_1008EF8A0, &type metadata accessor for Duration.UnitsFormatStyle.Attributed);
        v141 = v345;
        Duration.formatted<A>(_:)();
        v370 = v134;

        AttributedString.subscript.setter();
        v142 = v366;
        if (v363)
        {
          v370 = v363;
          sub_10005FAB0();

          AttributedString.subscript.setter();
        }

        v143 = v346;
        AttributedString.runs.getter();
        sub_1004D3DAC(v143, v141, v359 & 1);
        (*(v347 + 8))(v143, v348);
        v139(v138, v140);
        (*(v365 + 32))(v368, v141, v327);

        return v142(v323, v324);
      }

    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      v118 = [objc_opt_self() meterUnit];
      [v82 doubleValueForUnit:v118];
      v120 = v119;

      v121 = *v83;
      v122 = [*v83 unitManager];
      if (!v122)
      {
        goto LABEL_113;
      }

      v123 = v122;
      v124 = [v122 userDistanceElevationUnit];

      v125 = [v121 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v120];
      if (!v125)
      {
LABEL_73:
        v366(v323, v324);

        goto LABEL_76;
      }

      v126 = v125;
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v127;

      v128 = [v121 localizedShortUnitStringForDistanceUnit:v124 textCase:1];
      if (!v128)
      {
LABEL_43:
        v366(v323, v324);

        goto LABEL_76;
      }

      v129 = v128;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;

      v370 = v130;
      v371 = v132;
      sub_10000FCBC();
      v361 = StringProtocol.localizedUppercase.getter();
      v99 = v133;
LABEL_39:

      if ((v360 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    case 7:
    case 22:
    case 26:
    case 33:
    case 37:
      goto LABEL_55;
    case 8:
    case 17:
      v168 = [objc_opt_self() localizedShortPowerUnitString];
      if (!v168)
      {
        goto LABEL_75;
      }

      v169 = v168;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v170;

      v171 = objc_opt_self();
      [v82 _value];
      v155 = [objc_allocWithZone(NSNumber) initWithDouble:v172];
      v156 = [v171 localizedStringFromNumber:v155 numberStyle:0];
      goto LABEL_38;
    case 9:
    case 18:
      v144 = sub_10069ABB0(v362);
      if (v145)
      {
        goto LABEL_73;
      }

      v146 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType:v144];
      if (!v146)
      {
        goto LABEL_73;
      }

      v147 = v146;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v149;

      v151 = [objc_opt_self() _countPerMinuteUnit];
      [v82 doubleValueForUnit:v151];
      v153 = v152;

      v154 = objc_opt_self();
      v155 = [objc_allocWithZone(NSNumber) initWithDouble:v153];
      v156 = [v154 localizedStringFromNumber:v155 numberStyle:0];
LABEL_38:
      v173 = v156;

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v174;

      v370 = v148;
      v371 = v150;
      sub_10000FCBC();
      v361 = StringProtocol.localizedUppercase.getter();
      v99 = v175;
      goto LABEL_39;
    case 10:
      v176 = sub_1004D3AD8(10);
      [v82 doubleValueForUnit:v176];
      v178 = v177;

      v179 = objc_opt_self();
      v180 = [objc_allocWithZone(NSNumber) initWithDouble:v178];
      v181 = [v179 stringWithNumber:v180 decimalPrecision:1];

      if (!v181)
      {
        goto LABEL_73;
      }

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v182;

      v183 = [objc_opt_self() mainBundle];
      v184 = String._bridgeToObjectiveC()();
      v185 = [v183 localizedStringForKey:v184 value:0 table:0];

      v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v186;

      v99 = v187;
      if ((v360 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    case 11:
      v188 = sub_1004D3AD8(11);
      [v82 doubleValueForUnit:v188];
      v190 = v189;

      v191 = [*v83 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:v190];
      if (!v191)
      {
        goto LABEL_73;
      }

      v192 = v191;
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v193;

      v96 = [*(v83 + *(type metadata accessor for MetricFormattingHelper() + 24)) unitStringFromValue:9 unit:100.0];
      goto LABEL_11;
    case 12:
      v236 = sub_1004D3AD8(12);
      [v82 doubleValueForUnit:v236];
      v238 = v237;

      v239 = *v83;
      v240 = [*v83 localizedShortUnitStringForDistanceUnit:1];
      if (!v240)
      {
        goto LABEL_73;
      }

      v241 = v240;
      v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v242;

      v243 = [v239 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:v238];
      if (!v243)
      {
        goto LABEL_43;
      }

      v97 = v243;
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v244;
      goto LABEL_12;
    case 13:
      v78 = 2;
      goto LABEL_8;
    case 16:
      v78 = 2;
      goto LABEL_55;
    case 27:
      v78 = 3;
LABEL_8:
      v84 = [objc_opt_self() meterUnit];
      [v82 doubleValueForUnit:v84];
      v86 = v85;

      v87 = *v83;
      v88 = [*v83 unitManager];
      if (!v88)
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        JUMPOUT(0x10005F6C8);
      }

      v89 = v88;
      v90 = [v88 userDistanceUnitForDistanceType:v78];

      v91 = [v87 localizedStringWithDistanceInMeters:v90 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:"defaultPrecisionForDistanceUnit:" roundingMode:v90) decimalTrimmingMode:{2, 1, v86}];
      if (!v91)
      {
LABEL_75:

        v366(v323, v324);
LABEL_76:
        v245 = type metadata accessor for MetricFormattingHelper();
        return (*(v365 + 16))(v79, v83 + *(v245 + 20), v327);
      }

      v92 = v91;
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96 = [v87 localizedShortUnitStringForDistanceUnit:v90 textCase:1];
      if (!v96)
      {

        goto LABEL_75;
      }

LABEL_11:
      v97 = v96;
      v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;
LABEL_12:

      if ((v360 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_86:
      v262 = [v364 _isZero];
      v348 = v93;
      if (v262)
      {
        v263 = static Color.secondary.getter();
        v363 = 0;
      }

      else
      {
        v263 = static Color.white.getter();
        sub_10005C1A0(v362);
        v363 = Color.init(uiColor:)();
      }

      v264 = v361;
      if ((v359 & 1) == 0)
      {
        v284 = objc_opt_self();

        v285 = [v284 mainBundle];
        v286 = String._bridgeToObjectiveC()();
        v287 = [v285 localizedStringForKey:v286 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v288 = swift_allocObject();
        *(v288 + 16) = xmmword_1006D1F70;
        v289 = v367;
        *(v288 + 56) = &type metadata for String;
        v290 = sub_10000A788();
        *(v288 + 32) = v348;
        *(v288 + 40) = v95;
        *(v288 + 96) = &type metadata for String;
        *(v288 + 104) = v290;
        *(v288 + 64) = v290;
        *(v288 + 72) = v264;
        *(v288 + 80) = v99;

        String.init(format:_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v370 = v289;

        AttributedString.subscript.setter();
        v370 = v263;
        v291 = sub_10005FAB0();
        v367 = v263;

        v359 = v291;
        AttributedString.subscript.setter();
        v370 = v264;
        v371 = v99;
        v362 = v99;
        v292 = *(v358 + 56);
        v293 = v354;
        v358 += 56;
        v292(v354, 1, 1, v357);
        v294 = sub_1004D4DC8(&qword_1008E1918, &type metadata accessor for AttributedString);
        sub_10000FCBC();
        v295 = v350;
        v360 = v294;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_10000EA04(v293, &qword_1008EB540);
        v296 = *(v353 + 48);
        if (v296(v295, 1, v355) == 1)
        {
          v297 = &qword_1008E1900;
        }

        else
        {
          v298 = v295;
          v295 = v331;
          sub_10007BE08(v298, v331);
          v299 = v333;
          static Text.Scale.secondary.getter();
          v300 = type metadata accessor for Text.Scale();
          (*(*(v300 - 8) + 56))(v299, 0, 1, v300);
          sub_10007C0F0();
          v301 = AttributedString.subscript.modify();
          sub_10007C1D8(v299, v332);
          sub_10007C248();
          AttributedSubstring.subscript.setter();
          v302 = v299;
          v264 = v361;
          sub_10000EA04(v302, &qword_1008EF8C8);
          v301(&v370, 0);
          v297 = &qword_1008E1908;
        }

        sub_10000EA04(v295, v297);
        v303 = v362;
        v304 = v363;
        if (v363)
        {
          v370 = v348;
          v371 = v95;

          v305._countAndFlagsBits = v264;
          v305._object = v303;
          String.append(_:)(v305);
          v306 = v354;
          v292(v354, 1, 1, v357);
          v307 = v335;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v306, &qword_1008EB540);

          if (v296(v307, 1, v355) == 1)
          {

            v308 = &qword_1008E1900;
            v309 = v307;
          }

          else
          {
            v313 = v330;
            sub_10007BE08(v307, v330);

            sub_10007C0F0();
            v314 = AttributedString.subscript.modify();
            v369 = v304;
            AttributedSubstring.subscript.setter();
            v314(&v370, 0);

            v308 = &qword_1008E1908;
            v309 = v313;
          }

          sub_10000EA04(v309, v308);
        }

        (*(v365 + 32))(v368, v356, v327);

        goto LABEL_106;
      }

      v265 = objc_opt_self();

      v266 = v263;
      v267 = [v265 mainBundle];
      v268 = String._bridgeToObjectiveC()();
      v269 = [v267 localizedStringForKey:v268 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v270 = swift_allocObject();
      *(v270 + 16) = xmmword_1006D1F70;
      *(v270 + 56) = &type metadata for String;
      v271 = sub_10000A788();
      v272 = v348;
      *(v270 + 32) = v348;
      *(v270 + 40) = v95;
      *(v270 + 96) = &type metadata for String;
      *(v270 + 104) = v271;
      *(v270 + 64) = v271;
      *(v270 + 72) = v264;
      v273 = v264;
      *(v270 + 80) = v99;

      String.init(format:_:)();

      AttributeContainer.init()();
      v274 = v95;
      v275 = v351;
      AttributedString.init(_:attributes:)();
      v370 = v367;

      AttributedString.subscript.setter();
      v370 = v266;
      sub_10005FAB0();

      AttributedString.subscript.setter();
      v276 = v363;
      if (v363)
      {
        v367 = v266;
        v370 = v272;
        v371 = v274;

        v277._countAndFlagsBits = 32;
        v277._object = 0xE100000000000000;
        String.append(_:)(v277);

        v278._countAndFlagsBits = v273;
        v278._object = v99;
        String.append(_:)(v278);

        v279 = v354;
        (*(v358 + 56))(v354, 1, 1, v357);
        sub_1004D4DC8(&qword_1008E1918, &type metadata accessor for AttributedString);
        sub_10000FCBC();
        v280 = v334;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_10000EA04(v279, &qword_1008EB540);

        v281 = (*(v353 + 48))(v280, 1, v355);
        v282 = v366;
        v283 = v364;
        if (v281 == 1)
        {

          v282(v323, v324);
          sub_10000EA04(v280, &qword_1008E1900);
        }

        else
        {
          v310 = v280;
          v311 = v329;
          sub_10007BE08(v310, v329);

          sub_10007C0F0();
          v312 = AttributedString.subscript.modify();
          v369 = v276;
          AttributedSubstring.subscript.setter();
          v312(&v370, 0);

          sub_10000EA04(v311, &qword_1008E1908);
          v282(v323, v324);
        }
      }

      else
      {

        v366(v323, v324);
      }

      return (*(v365 + 32))(v368, v275, v327);
    case 29:
      v78 = 3;
LABEL_55:
      v200 = *v328;
      v201 = [*v328 unitManager];
      if (!v201)
      {
        goto LABEL_112;
      }

      v202 = v201;
      v203 = [v201 paceDistanceUnitForDistanceType:v78];

      v204 = FIUIPaceFormatForDistanceType();
      v205 = sub_10069ABB0(v81);
      v347 = v78;
      v346 = v200;
      v348 = v204;
      if (v204 == 4)
      {
        v207 = [v200 localizedSpeedUnitStringForDistanceType:v78 unitStyle:1];
        if (v207)
        {
          v208 = v207;
          v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v210 = v209;

LABEL_80:
          v246 = objc_opt_self();
          v247 = [v246 secondUnit];
          v248 = [v246 meterUnit];
          v249 = [v247 unitDividedByUnit:v248];

          [v82 doubleValueForUnit:v249];
          v251 = v250;

          v252 = v348;
          if (v348 == 4 && v251 == 0.0)
          {
            v253 = [objc_opt_self() mainBundle];
            v254 = String._bridgeToObjectiveC()();
            v255 = [v253 localizedStringForKey:v254 value:0 table:0];

            v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v257 = v256;
          }

          else
          {
            v258 = [v246 meterUnit];
            v259 = [objc_opt_self() quantityWithUnit:v258 doubleValue:1.0];

            v260 = [v346 localizedPaceStringWithDistance:v259 overDuration:v252 paceFormat:v347 distanceType:v251];
            if (!v260)
            {
              v366(v323, v324);

              v79 = v368;
              goto LABEL_76;
            }

            v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v257 = v261;
          }

          v79 = v368;
          v99 = v210;
          v95 = v257;
          if ((v360 & 1) == 0)
          {
LABEL_13:
            if (v359)
            {
              v100 = [objc_opt_self() mainBundle];
              v101 = String._bridgeToObjectiveC()();
              v102 = v99;
              v103 = [v100 localizedStringForKey:v101 value:0 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_100140278(&unk_1008E4E50);
              v104 = swift_allocObject();
              *(v104 + 16) = xmmword_1006D1F70;
              *(v104 + 56) = &type metadata for String;
              v105 = sub_10000A788();
              *(v104 + 32) = v93;
              *(v104 + 40) = v95;
              *(v104 + 96) = &type metadata for String;
              *(v104 + 104) = v105;
              v106 = v361;
              *(v104 + 64) = v105;
              *(v104 + 72) = v106;
              *(v104 + 80) = v102;
              String.init(format:_:)();

              AttributeContainer.init()();
              v107 = v349;
              AttributedString.init(_:attributes:)();
              v370 = v80;

              AttributedString.subscript.setter();
              v108 = v366;
              if (v363)
              {
                v370 = v363;
                sub_10005FAB0();

                AttributedString.subscript.setter();
              }

              v108(v323, v324);
              return (*(v365 + 32))(v79, v107, v327);
            }

            sub_1004C3650(v93, v95, v361, v99, v80, v363, v79);

LABEL_106:

            return v366(v323, v324);
          }

          goto LABEL_86;
        }
      }

      else
      {
        if ((v206 & 1) != 0 || v205 != 46)
        {
          v219 = [v200 localizedShortUnitStringForDistanceUnit:v203];
          if (!v219)
          {
            goto LABEL_79;
          }

          v213 = v219;
          v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v218 = v220;
        }

        else
        {
          v211 = [v200 unitManager];
          if (!v211)
          {
            goto LABEL_114;
          }

          v212 = v211;
          v213 = [v211 userLapLengthHKUnit];

          v214 = [v200 localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
          if (!v214)
          {

            goto LABEL_79;
          }

          v215 = v214;
          v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v218 = v217;

          v204 = v348;
        }

        if ((v204 - 2) < 2)
        {

          v221 = FIUINumberOfUnitsInPaceForPaceFormat();
          v222 = [objc_opt_self() mainBundle];
          v223 = String._bridgeToObjectiveC()();
          v224 = [v222 localizedStringForKey:v223 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v225 = swift_allocObject();
          *(v225 + 16) = xmmword_1006D1F70;
          v226 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v221];
          v83 = v328;
          *(v225 + 56) = sub_1000059F8(0, &qword_1008E1750);
          *(v225 + 64) = sub_1001983C8();
          *(v225 + 32) = v226;
          *(v225 + 96) = &type metadata for String;
          *(v225 + 104) = sub_10000A788();
          *(v225 + 72) = v216;
          *(v225 + 80) = v218;
          v80 = v367;
          v361 = String.init(format:_:)();
          v210 = v227;

          goto LABEL_80;
        }

        if (v204 == 1)
        {

          v228 = [objc_opt_self() mainBundle];
          v229 = String._bridgeToObjectiveC()();
          v230 = [v228 localizedStringForKey:v229 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v231 = swift_allocObject();
          *(v231 + 16) = xmmword_1006D46C0;
          v370 = v216;
          v371 = v218;
          sub_10000FCBC();
          v232 = StringProtocol.localizedUppercase.getter();
          v234 = v233;
          *(v231 + 56) = &type metadata for String;
          v80 = v367;
          *(v231 + 64) = sub_10000A788();
          *(v231 + 32) = v232;
          *(v231 + 40) = v234;
          v83 = v328;

          v361 = String.init(format:_:)();
          v210 = v235;

          goto LABEL_80;
        }
      }

LABEL_79:
      v361 = 0;
      v210 = 0xE000000000000000;
      goto LABEL_80;
    case 38:
      v194 = [objc_opt_self() minuteUnit];
      [v82 doubleValueForUnit:v194];

      v195.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v196 = [objc_opt_self() stringWithNumber:v195.super.super.isa decimalPrecision:1 roundingMode:6];
      if (v196)
      {
        v197 = v196;
        v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v199;
      }

      else
      {
        v95 = 0xE100000000000000;
        v198 = 48;
      }

      v315 = [objc_opt_self() mainBundle];
      v316 = String._bridgeToObjectiveC()();
      v317 = [v315 localizedStringForKey:v316 value:0 table:0];

      v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v320 = v319;

      v370 = v318;
      v371 = v320;
      sub_10000FCBC();
      v361 = StringProtocol.localizedUppercase.getter();
      v99 = v321;

      v79 = v368;
      v93 = v198;
      if ((v360 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    default:
      v157 = [objc_opt_self() countUnit];
      [v82 doubleValueForUnit:v157];
      v159 = v158;

      if (qword_1008DACA0 != -1)
      {
        swift_once();
      }

      v160 = qword_1008EFE90;
      v161 = objc_allocWithZone(NSNumber);
      v162 = v160;
      v163 = [v161 initWithDouble:v159];
      v164 = [v162 stringFromNumber:v163];

      v165 = v366;
      if (v164)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v370 = v363;
        sub_10005FAB0();

        v166 = v323;
        AttributeContainer.subscript.setter();
        v167 = v324;
        (*(v77 + 16))(v352, v166, v324);
        AttributedString.init(_:attributes:)();

        return v165(v166, v167);
      }

      goto LABEL_75;
  }
}

void sub_10005F784()
{
  sub_10005F988();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

unint64_t sub_10005F82C()
{
  result = qword_1008F57D0;
  if (!qword_1008F57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57D0);
  }

  return result;
}

void sub_10005F884(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ActivityDashboardCardCell();
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, "bounds");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.receiver = v4;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, "setBounds:", a1, a2, a3, a4);
  [v4 bounds];
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  if (!CGRectEqualToRect(v21, v22))
  {
    v18 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling;
    if (*(v4 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling))
    {
      sub_1006712E8(0, v4);
      *(v4 + v18) = 0;
      sub_1006712E8(1, v4);
      *(v4 + v18) = 1;
    }
  }
}

unint64_t sub_10005F988()
{
  result = qword_1008DC590;
  if (!qword_1008DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC590);
  }

  return result;
}

unint64_t sub_10005F9DC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10005FBE4(&qword_1008E4E10, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100060C00(a1, v2, &type metadata accessor for UUID, &qword_1008EAFA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10005FAB0()
{
  result = qword_1008DC588;
  if (!qword_1008DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC588);
  }

  return result;
}

uint64_t sub_10005FB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FB54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FB9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FBE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FCBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for MetricCardLineChartView();
  __chkstk_darwin(v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100140278(&qword_1008F4CF0);
  __chkstk_darwin(v108);
  v7 = &v82 - v6;
  v106 = sub_100140278(&qword_1008F4CF8);
  __chkstk_darwin(v106);
  v107 = &v82 - v8;
  v9 = type metadata accessor for Locale.Language();
  v100 = *(v9 - 8);
  v101 = v9;
  __chkstk_darwin(v9);
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E3708);
  __chkstk_darwin(v11 - 8);
  v102 = &v82 - v12;
  v13 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v13 - 8);
  v96 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TimeZone();
  __chkstk_darwin(v15 - 8);
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Calendar();
  __chkstk_darwin(v17 - 8);
  v91 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Locale();
  v94 = *(v95 - 8);
  v19 = __chkstk_darwin(v95);
  v92 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v90 = &v82 - v21;
  v22 = sub_100140278(&qword_1008E36F8);
  __chkstk_darwin(v22 - 8);
  v89 = &v82 - v23;
  v24 = sub_100140278(&qword_1008E3700);
  __chkstk_darwin(v24 - 8);
  v88 = &v82 - v25;
  v26 = type metadata accessor for Calendar.Component();
  v87 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v110 = *(v29 - 8);
  v111 = v29;
  __chkstk_darwin(v29);
  v103 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MetricFormattingHelper();
  __chkstk_darwin(v31 - 8);
  v104 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MetricCardBarChartView();
  v34 = __chkstk_darwin(v33);
  v36 = (&v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v97 = &v82 - v37;
  v105 = sub_100140278(&qword_1008F4D00);
  __chkstk_darwin(v105);
  v98 = &v82 - v38;
  v39 = type metadata accessor for MetricCardView();
  v40 = v39;
  v41 = *(a1 + *(v39 + 24));
  if (v41 <= 0x11 && ((1 << v41) & 0x21D00) != 0)
  {
    v42 = a1 + *(v39 + 20);
    v43 = v42 + *(type metadata accessor for MetricCard() + 36);
    v44 = *(v43 + 16);

    sub_10005C1A0(v41);
    v45 = Color.init(uiColor:)();
    sub_100060ED0(a1 + *(v40 + 36), &v5[v3[7]], type metadata accessor for MetricFormattingHelper);
    v46 = *(v43 + 32);
    v47 = *(v43 + 40);
    v48 = type metadata accessor for MetricDetailViewModel();
    (*(v110 + 16))(&v5[v3[9]], v43 + *(v48 + 44), v111);
    *v5 = v41;
    *(v5 + 1) = v44;
    *(v5 + 2) = v45;
    v49 = &v5[v3[8]];
    *v49 = v46;
    v49[8] = v47;
    sub_10005BE1C(&qword_1008F4D20, type metadata accessor for MetricCardLineChartView);
    View.accessibilityHidden(_:)();
    sub_1000611CC(v5, type metadata accessor for MetricCardLineChartView);
    v50 = &qword_1008F4CF0;
    sub_10001B104(v7, v107, &qword_1008F4CF0);
    swift_storeEnumTagMultiPayload();
    sub_100061430();
    sub_1000612F0();
  }

  else
  {
    v52 = a1 + *(v39 + 20);
    v53 = type metadata accessor for MetricCard();
    v54 = v52 + *(v53 + 36);
    v85 = *(v54 + 16);

    sub_10005C1A0(v41);
    v84 = Color.init(uiColor:)();
    v55 = *(v40 + 36);
    v83 = type metadata accessor for MetricFormattingHelper;
    sub_100060ED0(a1 + v55, v104, type metadata accessor for MetricFormattingHelper);
    v56 = *(v54 + 32);
    v86 = *(v54 + 40);
    v116[3] = v53;
    v116[4] = &off_1008627E8;
    v57 = sub_100005994(v116);
    sub_100060ED0(v52, v57, type metadata accessor for MetricCard);
    v58 = type metadata accessor for MetricDetailViewModel();
    v59 = *(v110 + 16);
    v60 = v54 + *(v58 + 44);
    v61 = v103;
    v62 = v111;
    v59(v103, v60, v111);
    *v36 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    *(v36 + v33[5]) = v41;
    *(v36 + v33[6]) = v85;
    *(v36 + v33[7]) = v84;
    sub_100060ED0(v104, v36 + v33[9], v83);
    v63 = v36 + v33[8];
    *v63 = v56;
    v64 = v86;
    v63[8] = v86;
    sub_100007C5C(v116, v36 + v33[10]);
    v59(v36 + v33[11], v61, v62);
    v85 = v56;
    v65 = v87;
    v66 = &enum case for Calendar.Component.day(_:);
    if ((v64 & (v56 == 1)) == 0)
    {
      v66 = &enum case for Calendar.Component.hour(_:);
    }

    (*(v87 + 104))(v28, *v66, v26);
    (*(v65 + 32))(v36 + v33[12], v28, v26);
    v67 = type metadata accessor for Date.FormatStyle.DateStyle();
    (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
    v68 = type metadata accessor for Date.FormatStyle.TimeStyle();
    (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static FormatStyleCapitalizationContext.unknown.getter();
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v69 = [objc_allocWithZone(NSDateFormatter) init];
    *(v36 + v33[14]) = v69;
    v70 = v69;
    v71 = v92;
    static Locale.current.getter();
    v72 = v99;
    Locale.language.getter();
    (*(v94 + 8))(v71, v95);
    v73 = v102;
    Locale.Language.languageCode.getter();
    (*(v100 + 8))(v72, v101);
    v74 = type metadata accessor for Locale.LanguageCode();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_10000EA04(v73, &qword_1008E3708);
    }

    else
    {
      v76 = Locale.LanguageCode.identifier.getter();
      v78 = v77;
      (*(v75 + 8))(v73, v74);
      v114 = v76;
      v115 = v78;
      v112 = 26746;
      v113 = 0xE200000000000000;
      sub_10000FCBC();
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        v114 = v76;
        v115 = v78;
        v112 = 24938;
        v113 = 0xE200000000000000;
        StringProtocol.contains<A>(_:)();
      }
    }

    v79 = v85;
    v80 = String._bridgeToObjectiveC()();
    [v70 setLocalizedDateFormatFromTemplate:v80];

    sub_100060F38(v79, v86);
    (*(v110 + 8))(v103, v111);
    sub_1000611CC(v104, type metadata accessor for MetricFormattingHelper);
    sub_100005A40(v116);
    v81 = v97;
    sub_10006128C(v36, v97);
    sub_10005BE1C(&qword_1008F4D08, type metadata accessor for MetricCardBarChartView);
    v7 = v98;
    View.accessibilityHidden(_:)();
    sub_1000611CC(v81, type metadata accessor for MetricCardBarChartView);
    v50 = &qword_1008F4D00;
    sub_10001B104(v7, v107, &qword_1008F4D00);
    swift_storeEnumTagMultiPayload();
    sub_100061430();
    sub_1000612F0();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_10000EA04(v7, v50);
}

_WORD *storeEnumTagSinglePayload for TrendsCoachingError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for MetricCardLineChartView()
{
  result = qword_1008EC368;
  if (!qword_1008EC368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100060C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10005FBE4(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t type metadata accessor for MetricCardBarChartView()
{
  result = qword_1008E2830;
  if (!qword_1008E2830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrendsCoachingError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_100060E68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100140278(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100060ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100060F38(uint64_t a1, char a2)
{
  v4 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = *(v8 + 104);
    if (a1)
    {
      v11(v10, enum case for Calendar.Component.day(_:), v7);
    }

    else
    {
      v11(v10, enum case for Calendar.Component.hour(_:), v7);
    }
  }

  else
  {
    (*(v8 + 104))(v10, enum case for Calendar.Component.month(_:), v7);
  }

  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_10000EA04(v6, &unk_1008E51A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000611CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006122C()
{
  result = qword_1008F9820;
  if (!qword_1008F9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9820);
  }

  return result;
}

uint64_t sub_10006128C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCardBarChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000612F0()
{
  result = qword_1008F4D18;
  if (!qword_1008F4D18)
  {
    sub_100141EEC(&qword_1008F4CF0);
    sub_10005BE1C(&qword_1008F4D20, type metadata accessor for MetricCardLineChartView);
    sub_10005BE1C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4D18);
  }

  return result;
}

unint64_t sub_1000613DC()
{
  result = qword_1008F5700;
  if (!qword_1008F5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5700);
  }

  return result;
}

unint64_t sub_100061430()
{
  result = qword_1008F4D10;
  if (!qword_1008F4D10)
  {
    sub_100141EEC(&qword_1008F4D00);
    sub_10005BE1C(&qword_1008F4D08, type metadata accessor for MetricCardBarChartView);
    sub_10005BE1C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4D10);
  }

  return result;
}

uint64_t sub_10006151C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100061584()
{
  result = qword_1008F5728;
  if (!qword_1008F5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5728);
  }

  return result;
}

uint64_t sub_1000615D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F4CA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100061648()
{
  result = qword_1008F5750;
  if (!qword_1008F5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5750);
  }

  return result;
}

unint64_t sub_10006169C()
{
  result = qword_1008F56F8;
  if (!qword_1008F56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56F8);
  }

  return result;
}

unint64_t sub_1000616F0()
{
  result = qword_1008F4CC0;
  if (!qword_1008F4CC0)
  {
    sub_100141EEC(&qword_1008F4CB0);
    sub_1005C6E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4CC0);
  }

  return result;
}

uint64_t sub_10006177C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000617C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000617E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 sub_100061808@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_100140278(&qword_1008E1C78);
  __chkstk_darwin(v3 - 8);
  v48 = &v44 - v4;
  v5 = sub_100140278(&qword_1008E28A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v49 = sub_100140278(&qword_1008E28A8);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v44 - v9;
  v53 = sub_100140278(&qword_1008E28B0);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v45 = &v44 - v10;
  v55 = sub_100140278(&qword_1008E28B8);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v44 - v11;
  v58 = sub_100140278(&qword_1008E28C0);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = &v44 - v12;
  v63 = v2;
  sub_100140278(&qword_1008E28C8);
  sub_100233498();
  Chart.init(content:)();
  v13 = sub_10014A6B0(&qword_1008E28F8, &qword_1008E28A0);
  View.chartYAxis<A>(content:)();
  (*(v6 + 8))(v8, v5);
  v46 = type metadata accessor for MetricCardBarChartView();
  v14 = v2;
  v15 = *(v2 + *(v46 + 24));
  v62 = v2;
  v44 = v2;
  v16 = sub_100062474(sub_10023351C, v61, v15);
  v17 = sub_100062430(v16);
  LOBYTE(v6) = v18;

  v19 = fmax(*&v17, 1.0) * 1.6;
  if (v6)
  {
    v19 = 1.6;
  }

  v64 = 0;
  v65 = v19;
  v20 = type metadata accessor for ScaleType();
  v21 = *(*(v20 - 8) + 56);
  v22 = v48;
  v21(v48, 1, 1, v20);
  v23 = sub_100140278(&qword_1008E2900);
  *&v66 = v5;
  *(&v66 + 1) = &type metadata for BuilderEmpty;
  *&v67 = v13;
  *(&v67 + 1) = &protocol witness table for BuilderEmpty;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_10023353C();
  v26 = v49;
  v27 = v47;
  View.chartYScale<A>(domain:type:)();
  sub_10000EA04(v22, &qword_1008E1C78);
  (*(v51 + 8))(v27, v26);
  v28 = sub_1000625DC(*(v14 + *(v46 + 32)), *(v14 + *(v46 + 32) + 8));
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v64 = v29;
  v21(v22, 1, 1, v20);
  v30 = sub_100140278(&qword_1008E1D00);
  *&v66 = v26;
  *(&v66 + 1) = v23;
  *&v67 = OpaqueTypeConformance2;
  *(&v67 + 1) = v25;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_1002335B8();
  v33 = v50;
  v34 = v22;
  v35 = v53;
  v36 = v45;
  View.chartXScale<A>(domain:type:)();
  sub_10000EA04(v34, &qword_1008E1C78);

  (*(v54 + 8))(v36, v35);
  v60 = v44;
  sub_100140278(&qword_1008E2910);
  *&v66 = v35;
  *(&v66 + 1) = v30;
  *&v67 = v31;
  *(&v67 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  sub_10006468C();
  v37 = v52;
  v38 = v55;
  View.chartXAxis<A>(content:)();
  (*(v56 + 8))(v33, v38);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v59;
  (*(v57 + 32))(v59, v37, v58);
  v40 = v39 + *(sub_100140278(&qword_1008E2950) + 36);
  v41 = v71;
  *(v40 + 64) = v70;
  *(v40 + 80) = v41;
  *(v40 + 96) = v72;
  v42 = v67;
  *v40 = v66;
  *(v40 + 16) = v42;
  result = v69;
  *(v40 + 32) = v68;
  *(v40 + 48) = result;
  return result;
}

uint64_t sub_100062080(uint64_t a1)
{
  v2 = type metadata accessor for MetricCardBarChartView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v8[1] = *(a1 + *(__chkstk_darwin(v2 - 8) + 32));
  swift_getKeyPath();
  sub_100062284(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10006128C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_100140278(&qword_1008E29B8);
  sub_100140278(&qword_1008E28E0);
  sub_10014A6B0(&qword_1008E29C0, &qword_1008E29B8);
  sub_100018D14(&qword_1008DEF18, &type metadata accessor for Date);
  sub_1000622E8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100062284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCardBarChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000622E8()
{
  result = qword_1008E28D8;
  if (!qword_1008E28D8)
  {
    sub_100141EEC(&qword_1008E28E0);
    sub_100141EEC(&qword_1008E28E8);
    sub_100141EEC(&qword_1008E28F0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E28D8);
  }

  return result;
}

uint64_t sub_100062430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_100062474(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_100185AF4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v8 = *(type metadata accessor for MetricChartData() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_100185AF4((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    v5[2] = v13 + 1;
    v5[v13 + 4] = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000625DC(uint64_t (*a1)(char *, uint64_t, uint64_t), char a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E5C70);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062880(a1, a2 & 1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000EA04(v10, &qword_1008E5C70);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_100140278(&unk_1008E51C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006D1F70;
    DateInterval.start.getter();
    DateInterval.end.getter();
    Date.addingTimeInterval(_:)();
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v16;
  }
}

uint64_t sub_100062880@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v233) = a2;
  v234 = a1;
  v235 = a3;
  v3 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v195 - v4);
  v6 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v195 - v7;
  v9 = type metadata accessor for Calendar.Identifier();
  v217 = *(v9 - 8);
  v218 = v9;
  __chkstk_darwin(v9);
  v215 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar.Component();
  v228 = *(v11 - 8);
  v229 = v11;
  __chkstk_darwin(v11);
  v220 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for DateComponents();
  v232 = *(v236 - 1);
  v13 = __chkstk_darwin(v236);
  v15 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v227 = &v195 - v16;
  v17 = sub_100140278(&unk_1008F73A0);
  v18 = __chkstk_darwin(v17 - 8);
  v210 = &v195 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v219 = &v195 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v195 - v23;
  v25 = __chkstk_darwin(v22);
  v201 = &v195 - v26;
  v27 = __chkstk_darwin(v25);
  v208 = &v195 - v28;
  v29 = __chkstk_darwin(v27);
  v216 = (&v195 - v30);
  v31 = __chkstk_darwin(v29);
  v207 = &v195 - v32;
  v33 = __chkstk_darwin(v31);
  v214 = &v195 - v34;
  v35 = __chkstk_darwin(v33);
  v200 = &v195 - v36;
  v37 = __chkstk_darwin(v35);
  v206 = &v195 - v38;
  __chkstk_darwin(v37);
  v213 = &v195 - v39;
  v40 = type metadata accessor for Calendar();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v195 - v45;
  v47 = type metadata accessor for Date();
  v48 = *(v47 - 8);
  v49 = __chkstk_darwin(v47);
  v202 = &v195 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v209 = &v195 - v52;
  v53 = __chkstk_darwin(v51);
  v226 = &v195 - v54;
  v55 = __chkstk_darwin(v53);
  v197 = &v195 - v56;
  v57 = __chkstk_darwin(v55);
  v203 = &v195 - v58;
  v59 = __chkstk_darwin(v57);
  v211 = (&v195 - v60);
  v61 = __chkstk_darwin(v59);
  v199 = &v195 - v62;
  v63 = __chkstk_darwin(v61);
  v204 = &v195 - v64;
  v65 = __chkstk_darwin(v63);
  v223 = &v195 - v66;
  v67 = __chkstk_darwin(v65);
  v212 = &v195 - v68;
  v69 = __chkstk_darwin(v67);
  v222 = &v195 - v70;
  v71 = __chkstk_darwin(v69);
  v196 = &v195 - v72;
  v73 = __chkstk_darwin(v71);
  v198 = &v195 - v74;
  v75 = __chkstk_darwin(v73);
  v205 = &v195 - v76;
  __chkstk_darwin(v75);
  v237 = &v195 - v77;
  Date.init()();
  static Calendar.autoupdatingCurrent.getter();
  v221 = v5;
  if ((v233 & 1) == 0)
  {
    v97 = *(v41 + 56);
    v220 = (v41 + 56);
    v218 = v97;
    v97(v8, 1, 1, v40);
    v98 = type metadata accessor for TimeZone();
    v99 = *(v98 - 8);
    v100 = *(v99 + 56);
    v217 = v98;
    v216 = v100;
    v215 = (v99 + 56);
    (v100)(v5, 1, 1);
    v223 = v8;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.year.setter();
    Calendar.date(from:)();
    v234 = *(v48 + 48);
    if (v234(v24, 1, v47) == 1)
    {
      (*(v232 + 1))(v15, v236);
      (*(v41 + 8))(v46, v40);
      (*(v48 + 8))(v237, v47);
      v95 = v235;
    }

    else
    {
      v214 = v15;
      v231 = v40;
      v233 = v41;
      v101 = *(v48 + 32);
      v213 = (v48 + 32);
      v211 = v101;
      v101(v226, v24, v47);
      sub_100140278(&unk_1008E51B0);
      v102 = v228;
      v103 = *(v228 + 80);
      v230 = v47;
      v104 = (v103 + 32) & ~v103;
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1006D46C0;
      v106 = v229;
      (v102[13])(v105 + v104, enum case for Calendar.Component.year(_:), v229);
      sub_10001C970(v105);
      swift_setDeallocating();
      (v102[1])(v105 + v104, v106);
      swift_deallocClassInstance();
      v107 = v227;
      Calendar.dateComponents(_:from:)();

      v108 = v219;
      Calendar.date(from:)();
      v109 = (v232 + 8);
      v110 = v236;
      v229 = *(v232 + 1);
      v229(v107, v236);
      v111 = v230;
      if ((v234)(v108, 1) == 1)
      {
        v112 = *(v48 + 8);
        v112(v226, v111);
        v229(v214, v110);
        (*(v233 + 8))(v46, v231);
        v112(v237, v111);
        v24 = v108;
        v95 = v235;
      }

      else
      {
        v225 = v48;
        v140 = v209;
        v141 = v111;
        v211(v209, v108, v111);
        v218(v223, 1, 1, v231);
        v216(v221, 1, 1, v217);
        v142 = v140;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v143 = v210;
        Calendar.date(byAdding:to:wrappingComponents:)();
        v229(v107, v110);
        v144 = v234(v143, 1, v141);
        v145 = v110;
        v95 = v235;
        if (v144 != 1)
        {
          v161 = v202;
          v211(v202, v143, v141);
          v162 = v225;
          v232 = v109;
          v163 = v225[2];
          v163(v222, v142, v141);
          v163(v212, v161, v141);
          DateInterval.init(start:end:)();
          v164 = v162[1];
          v164(v161, v141);
          v164(v142, v141);
          v164(v226, v141);
          v229(v214, v236);
          (*(v233 + 8))(v46, v231);
          v164(v237, v141);
          v165 = 0;
          goto LABEL_33;
        }

        v146 = v225[1];
        v146(v140, v141);
        v146(v226, v141);
        v229(v214, v145);
        (*(v233 + 8))(v46, v231);
        v146(v237, v141);
        v24 = v143;
      }
    }

    v126 = v24;
LABEL_32:
    sub_10000EA04(v126, &unk_1008F73A0);
    v165 = 1;
    goto LABEL_33;
  }

  v224 = v46;
  v225 = v48;
  v230 = v47;
  v231 = v40;
  v233 = v41;
  if (!v234)
  {
    sub_100140278(&unk_1008E51B0);
    v113 = v228;
    v114 = v228[9];
    v115 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1006D64F0;
    v117 = v116 + v115;
    v118 = v113[13];
    v119 = v229;
    (v118)(v117, enum case for Calendar.Component.year(_:), v229);
    (v118)(v117 + v114, enum case for Calendar.Component.month(_:), v119);
    LODWORD(v234) = enum case for Calendar.Component.day(_:);
    v118(v117 + 2 * v114);
    sub_10001C970(v116);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v120 = v227;
    v121 = v237;
    v122 = v224;
    Calendar.dateComponents(_:from:)();

    v123 = v213;
    Calendar.date(from:)();
    (*(v232 + 1))(v120, v236);
    v124 = v225;
    v125 = v230;
    v236 = v225[6];
    if ((v236)(v123, 1, v230) == 1)
    {
      (*(v233 + 8))(v122, v231);
      (v124[1])(v121, v125);
      v95 = v235;
      v126 = v123;
    }

    else
    {
      v149 = v124[4];
      v150 = v205;
      v227 = (v124 + 4);
      v232 = v149;
      v149();
      v151 = v220;
      (v118)(v220, v234, v119);
      v152 = v206;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v153 = v230;
      v234 = v113[1];
      (v234)(v151, v119);
      if ((v236)(v152, 1, v153) == 1)
      {
        v154 = v124[1];
        v154(v150, v153);
        (*(v233 + 8))(v224, v231);
        v154(v237, v153);
        v126 = v152;
      }

      else
      {
        v171 = v198;
        (v232)(v198, v152, v153);
        (v118)(v151, enum case for Calendar.Component.second(_:), v119);
        v172 = v200;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v173 = v230;
        (v234)(v151, v119);
        if ((v236)(v172, 1, v173) != 1)
        {
          v183 = v196;
          (v232)(v196, v172, v173);
          v184 = v225;
          v185 = v150;
          v186 = v173;
          v187 = v225[2];
          v187(v222, v185, v186);
          v187(v212, v183, v186);
          v95 = v235;
          DateInterval.init(start:end:)();
          v188 = v184[1];
          v188(v183, v186);
          v188(v171, v186);
          v188(v185, v186);
          (*(v233 + 8))(v224, v231);
          v188(v237, v186);
          v165 = 0;
          goto LABEL_33;
        }

        v174 = v225[1];
        v174(v171, v173);
        v174(v150, v173);
        (*(v233 + 8))(v224, v231);
        v174(v237, v173);
        v126 = v172;
      }

      v95 = v235;
    }

    goto LABEL_32;
  }

  if (v234 != 1)
  {
    sub_100140278(&unk_1008E51B0);
    v127 = v228;
    v128 = v228[9];
    v129 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1006D1F70;
    v131 = v130 + v129;
    v132 = v127[13];
    v133 = v229;
    v132(v131, enum case for Calendar.Component.year(_:), v229);
    v132(v131 + v128, enum case for Calendar.Component.month(_:), v133);
    sub_10001C970(v130);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v134 = v227;
    v135 = v237;
    v136 = v224;
    Calendar.dateComponents(_:from:)();

    v137 = v216;
    Calendar.date(from:)();
    v234 = *(v232 + 1);
    (v234)(v134, v236);
    v138 = v225;
    v139 = v230;
    v232 = v225[6];
    if ((v232)(v137, 1, v230) == 1)
    {
      (*(v233 + 8))(v136, v231);
      (v138[1])(v135, v139);
    }

    else
    {
      v155 = v138[4];
      v156 = v211;
      v228 = v138 + 4;
      v229 = v155;
      (v155)(v211, v137, v139);
      v226 = *(v233 + 56);
      (v226)(v8, 1, 1, v231);
      v157 = type metadata accessor for TimeZone();
      v158 = *(v157 - 8);
      v219 = *(v158 + 56);
      v220 = v157;
      v218 = (v158 + 56);
      (v219)(v221, 1, 1);
      v223 = v8;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v159 = v208;
      Calendar.date(byAdding:to:wrappingComponents:)();
      (v234)(v134, v236);
      if ((v232)(v159, 1, v139) == 1)
      {
        v160 = v138[1];
        v160(v156, v139);
        (*(v233 + 8))(v224, v231);
        v160(v237, v139);
        v137 = v159;
      }

      else
      {
        v175 = v203;
        (v229)(v203, v159, v139);
        (v226)(v223, 1, 1, v231);
        v176 = v175;
        (v219)(v221, 1, 1, v220);
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v177 = v201;
        v178 = v224;
        Calendar.date(byAdding:to:wrappingComponents:)();
        v179 = v230;
        (v234)(v134, v236);
        if ((v232)(v177, 1, v179) != 1)
        {
          v189 = v197;
          (v229)(v197, v177, v179);
          v190 = v225;
          v191 = v179;
          v192 = v225[2];
          v193 = v211;
          v192(v222, v211, v191);
          v192(v212, v189, v191);
          v95 = v235;
          DateInterval.init(start:end:)();
          v194 = v190[1];
          v194(v189, v191);
          v194(v203, v191);
          v194(v193, v191);
          (*(v233 + 8))(v178, v231);
          v194(v237, v191);
          v165 = 0;
          goto LABEL_33;
        }

        v180 = v225[1];
        v180(v176, v179);
        v180(v211, v179);
        (*(v233 + 8))(v178, v231);
        v180(v237, v179);
        v137 = v177;
      }
    }

    v95 = v235;
    v126 = v137;
    goto LABEL_32;
  }

  v79 = v217;
  v78 = v218;
  v80 = v215;
  (*(v217 + 104))(v215, enum case for Calendar.Identifier.gregorian(_:), v218);
  Calendar.init(identifier:)();
  (*(v79 + 8))(v80, v78);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v82 = *(v233 + 8);
  v233 += 8;
  v82(v44, v231);
  v83 = v222;
  Date.init()();
  v84 = Date._bridgeToObjectiveC()().super.isa;
  v85 = [(objc_class *)isa hk_startOfFitnessWeekBeforeDate:v84];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v225;
  v87 = v230;
  v236 = v225[1];
  v234 = (v225 + 1);
  (v236)(v83, v230);
  v88 = v228;
  v89 = v229;
  v90 = v220;
  v232 = v228[13];
  (v232)(v220, enum case for Calendar.Component.day(_:), v229);
  v91 = v214;
  v92 = v224;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v228 = v88[1];
  (v228)(v90, v89);
  v93 = v86[6];
  if (v93(v91, 1, v87) == 1)
  {
    v95 = v235;
    v94 = v236;
    v96 = v231;
    (v236)(v223, v87);
LABEL_19:
    v82(v224, v96);
    v94(v237, v87);
    v126 = v91;
    goto LABEL_32;
  }

  v227 = v82;
  v147 = v225[4];
  v148 = v204;
  v226 = (v225 + 4);
  v221 = v147;
  v147(v204, v91, v87);
  (v232)(v90, enum case for Calendar.Component.second(_:), v89);
  v91 = v207;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v87 = v230;
  (v228)(v90, v89);
  if (v93(v91, 1, v87) == 1)
  {
    v94 = v236;
    (v236)(v148, v87);
    v95 = v235;
    v96 = v231;
    v82 = v227;
    v94(v223, v87);
    goto LABEL_19;
  }

  v166 = v199;
  v221(v199, v91, v87);
  v167 = v87;
  v168 = v225[2];
  v169 = v223;
  v168(v222, v223, v167);
  v168(v212, v166, v167);
  v95 = v235;
  DateInterval.init(start:end:)();
  v170 = v236;
  (v236)(v166, v167);
  v170(v148, v167);
  v170(v169, v167);
  (v227)(v92, v231);
  v170(v237, v167);
  v165 = 0;
LABEL_33:
  v181 = type metadata accessor for DateInterval();
  return (*(*(v181 - 8) + 56))(v95, v165, 1, v181);
}