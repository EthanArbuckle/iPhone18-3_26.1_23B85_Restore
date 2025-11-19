void sub_1000A3CD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000A3D20(uint64_t a1)
{
  v58 = type metadata accessor for UUID();
  v2 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecentCall();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = v49 - v9;
  v10 = sub_1000525C4(&qword_100126010);
  v11 = __chkstk_darwin(v10 - 8);
  v60 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = v49 - v13;
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v49[1] = v5 + 16;
  v61 = (v5 + 32);
  v51 = v5;
  v52 = a1;
  v54 = (v5 + 8);
  v55 = (v2 + 8);

  v20 = 0;
  v53 = a1 + 64;
  v56 = v4;
  v49[0] = v8;
  while (v17)
  {
    v21 = v20;
LABEL_15:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v21 << 6);
    v28 = v51;
    v27 = v52;
    v29 = v50;
    (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * v26, v4);
    LOBYTE(v27) = *(*(v27 + 56) + v26);
    v30 = sub_1000525C4(&qword_100126018);
    v31 = *(v30 + 48);
    v32 = *(v28 + 32);
    v33 = v60;
    v32(v60, v29, v4);
    v33[v31] = v27;
    v24 = v33;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);
    v8 = v49[0];
LABEL_16:
    v34 = v24;
    v35 = v59;
    sub_10000AFFC(v34, v59, &qword_100126010);
    v36 = sub_1000525C4(&qword_100126018);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
    }

    v37 = *(v35 + *(v36 + 48));
    (*v61)(v8, v35, v4);
    v38 = v57;
    v39 = v8;
    RecentCall.uniqueID.getter();
    v40 = UUID.uuidString.getter();
    v42 = v41;
    (*v55)(v38, v58);
    v43 = sub_1000A1D8C(v63);
    v44 = sub_1000A3C4C(v62, v40, v42);
    v46 = v45;
    v47 = type metadata accessor for CoalescedRecentItem();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      *(v46 + *(v47 + 24)) = v37;
    }

    (v44)(v62, 0);

    v43(v63, 0);
    v14 = v53;
    v8 = v39;
    v4 = v56;
    result = (*v54)(v39, v56);
  }

  if (v18 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v18;
  }

  v23 = v22 - 1;
  v24 = v60;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v48 = sub_1000525C4(&qword_100126018);
      (*(*(v48 - 8) + 56))(v24, 1, 1, v48);
      v17 = 0;
      v20 = v23;
      goto LABEL_16;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A42AC()
{
  v1 = v0;
  result = sub_1000A365C();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      os_unfair_lock_lock((v1 + 16));
      v9 = *(v1 + 24);

      os_unfair_lock_unlock((v1 + 16));
      if (*(v9 + 16))
      {
        v10 = sub_100052C6C(v8, v7);
        v12 = v11;

        if (v12)
        {

          v13 = *(*(v9 + 56) + 8 * v10);
          v14 = v13;
          goto LABEL_10;
        }
      }

      else
      {
      }

      ++v5;

      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v13 = 0;
LABEL_10:

    return v13;
  }

  return result;
}

uint64_t sub_1000A43B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 16));
  v6 = *(v2 + 24);

  os_unfair_lock_unlock(v3 + 4);
  if (*(v6 + 16))
  {
    v7 = sub_100052C6C(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = v9;

      return v9;
    }
  }

  sub_10000B818(&v3[24], v22, &qword_100125A58);
  v12 = v23;
  if (!v23)
  {
    sub_10000B880(v22, &qword_100125A58);
    return 0;
  }

  v13 = v24;
  sub_10000BC24(v22, v23);
  sub_1000525C4(&unk_100126000);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000D6C50;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_1000AB254();
  v16 = (*(v13 + 8))(v14, v15, v12, v13);

  sub_100005964(v22);
  if (!v16)
  {
    return 0;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_15;
  }

  v17 = sub_100052C6C(a1, a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    return 0;
  }

LABEL_10:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_13:
    v21 = v20;

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A45E4(void *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = sub_1000BFB60(_swiftEmptyArrayStorage);
  v125 = &_swiftEmptySetSingleton;
  v6 = sub_1000BFB88(_swiftEmptyArrayStorage);
  v7 = [a1 remoteParticipantHandles];
  if (v7)
  {
    v8 = v7;
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_5;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_103;
  }

LABEL_4:
  v9 = &_swiftEmptySetSingleton;
LABEL_5:
  v110 = v6;
  v10 = sub_1000A9E70(v9);
  v11 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    Set.Iterator.init(_cocoa:)();
    v11 = v126;
    v12 = v127;
    v13 = v128;
    v14 = v129;
    v6 = v130;
  }

  else
  {
    v14 = 0;
    v15 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v16 = ~v15;
    v17 = -v15;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v6 = v18 & *(v10 + 56);
    v13 = v16;
  }

  v112 = 0;
  v19 = (v13 + 64) >> 6;
  v106 = v11;
  v107 = v12;
  v105 = v19;
  while (v11 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24)
    {
      goto LABEL_55;
    }

    v120 = v24;
    sub_100008BA0(0, &qword_1001243D0);
    swift_dynamicCast();
    v23 = v121;
    v22 = v14;
    v109 = v6;
    if (!v121)
    {
      goto LABEL_55;
    }

LABEL_23:
    v108 = v22;
    v113 = v23;
    v25 = sub_1000A50F0();
    v26 = v25;
    v117 = *(v25 + 2);
    if (v117)
    {
      v27 = 0;
      v28 = (v25 + 40);
      v115 = v25;
      while (1)
      {
        if (v27 >= *(v26 + 2))
        {
          __break(1u);
          goto LABEL_95;
        }

        v30 = *(v28 - 1);
        v29 = *v28;

        os_unfair_lock_lock(v3 + 4);
        v31 = v3[3];

        os_unfair_lock_unlock(v3 + 4);
        if (!*(v31 + 16))
        {
          break;
        }

        v32 = sub_100052C6C(v30, v29);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v34 = *(*(v31 + 56) + 8 * v32);
        v6 = v34;

        if (v34)
        {
          v6 = v6;
          sub_1000525C4(&unk_100124BB0);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v36 = [v6 areKeysAvailable:isa];

          if (!v36)
          {
            goto LABEL_37;
          }

          sub_100004E40(v112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121 = v5;
          v38 = sub_10000AB38(v113);
          v40 = v5[2];
          v41 = (v39 & 1) == 0;
          v42 = __OFADD__(v40, v41);
          v43 = v40 + v41;
          if (v42)
          {
            goto LABEL_96;
          }

          v44 = v39;
          if (v5[3] >= v43)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v51 = v38;
              sub_1000B8EB8();
              v38 = v51;
            }
          }

          else
          {
            sub_10005811C(v43, isUniquelyReferenced_nonNull_native);
            sub_100008BA0(0, &qword_1001243D0);
            v38 = sub_10000AB38(v113);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_106;
            }
          }

          v26 = v115;
          v5 = v121;
          if ((v44 & 1) == 0)
          {
            v121[(v38 >> 6) + 8] |= 1 << v38;
            *(v5[6] + 8 * v38) = v113;
            *(v5[7] + 8 * v38) = _swiftEmptyArrayStorage;
            v46 = v5[2];
            v42 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v42)
            {
              goto LABEL_99;
            }

            v5[2] = v47;
            v48 = v38;
            v49 = v113;
            v38 = v48;
          }

          v50 = (v5[7] + 8 * v38);
          v6 = v6;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v26 = v115;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v112 = sub_1000AE520;
        }

        else
        {
        }

LABEL_26:
        ++v27;
        v28 += 2;
        if (v117 == v27)
        {
          goto LABEL_46;
        }
      }

      v34 = 1;
LABEL_37:
      sub_100094DD8(&v121, v30, v29);
      sub_1000AE458(v34);

      v26 = v115;
      goto LABEL_26;
    }

LABEL_46:
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v110;
    v53 = sub_10000AB38(v113);
    v55 = *(v110 + 16);
    v56 = (v54 & 1) == 0;
    v42 = __OFADD__(v55, v56);
    v57 = v55 + v56;
    if (v42)
    {
      goto LABEL_98;
    }

    v6 = v54;
    if (*(v110 + 24) >= v57)
    {
      v11 = v106;
      if ((v52 & 1) == 0)
      {
        v62 = v53;
        sub_1000B8EA4();
        v53 = v62;
        v11 = v106;
      }
    }

    else
    {
      sub_100058108(v57, v52);
      v53 = sub_10000AB38(v113);
      v11 = v106;
      if ((v6 & 1) != (v58 & 1))
      {
        goto LABEL_107;
      }
    }

    v59 = v121;
    v110 = v121;
    if (v6)
    {
      *(v121[7] + 8 * v53) = v26;
    }

    else
    {
      v121[(v53 >> 6) + 8] |= 1 << v53;
      *(v59[6] + 8 * v53) = v113;
      *(v59[7] + 8 * v53) = v26;
      v60 = v59[2];
      v42 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v42)
      {
        goto LABEL_100;
      }

      v59[2] = v61;
    }

    v14 = v108;
    v6 = v109;
    v12 = v107;
    v19 = v105;
  }

  v20 = v14;
  v21 = v6;
  v22 = v14;
  if (v6)
  {
LABEL_19:
    v109 = (v21 - 1) & v21;
    v23 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v23)
    {
      goto LABEL_55;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v22 >= v19)
    {
      break;
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_19;
    }
  }

LABEL_55:
  sub_10000AC64();
  v63 = v125;
  v64 = v125[2];
  if (!v64)
  {
    goto LABEL_91;
  }

  sub_10000B818((v3 + 12), &v121, &qword_100125A58);
  v65 = v123;
  if (!v123)
  {
    sub_10000B880(&v121, &qword_100125A58);
LABEL_91:

    v102 = v112;
LABEL_92:
    sub_100004E40(v102);
    return v5;
  }

  v118 = v124;
  sub_10000BC24(&v121, v123);
  v66 = sub_1000522C4(v64, 0);
  v67 = sub_10005A7D4(&v120, v66 + 4, v64, v63);

  sub_10000AC64();
  if (v67 == v64)
  {
    v68 = (*(v118 + 8))(v66, a2, v65);

    sub_100005964(&v121);
    if (!v68)
    {
      goto LABEL_91;
    }

    v69 = v110;
    v70 = v110 + 64;
    v71 = 1 << *(v110 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v6 = v72 & *(v110 + 64);
    v73 = (v71 + 63) >> 6;

    v74 = 0;
    v75 = 0;
    a2 = v110 + 64;
    for (i = v73; ; v73 = i)
    {
      v3 = _swiftEmptyArrayStorage;
      if (!v6)
      {
        while (1)
        {
          v76 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v76 >= v73)
          {

            sub_100004E40(v112);
            v102 = v74;
            goto LABEL_92;
          }

          v6 = *(v70 + 8 * v76);
          ++v75;
          if (v6)
          {
            v75 = v76;
            goto LABEL_68;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_4;
        }

        sub_100098F24(_swiftEmptyArrayStorage);
        v9 = v104;
        goto LABEL_5;
      }

LABEL_68:
      v77 = *(v69[6] + ((v75 << 9) | (8 * __clz(__rbit64(v6)))));
      v121 = sub_10004E79C(_swiftEmptyArrayStorage);
      v122 = v78;
      v119 = v77;
      if (v69[2])
      {
        v79 = sub_10000AB38(v77);
        if (v80)
        {
          v3 = *(v69[7] + 8 * v79);
        }
      }

      v81 = v3[2];
      if (v81)
      {
        v116 = v74;
        v82 = v3 + 5;
        do
        {
          if (*(v68 + 16))
          {
            v84 = *(v82 - 1);
            v83 = *v82;

            sub_100052C6C(v84, v83);
            v86 = v85;

            if (v86)
            {

              sub_1000510F8(v87);
            }
          }

          v82 += 2;
          --v81;
        }

        while (v81);

        v70 = v110 + 64;
        v74 = v116;
      }

      else
      {
      }

      v88 = v121;
      v3 = v122;

      sub_100004E40(v74);
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v5;
      v90 = sub_10000AB38(v119);
      v92 = v5[2];
      v93 = (v91 & 1) == 0;
      v42 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (v42)
      {
        goto LABEL_101;
      }

      v95 = v91;
      if (v5[3] >= v94)
      {
        if ((v89 & 1) == 0)
        {
          v101 = v90;
          sub_1000B8EB8();
          v90 = v101;
        }

        v96 = v119;
        v5 = v120;
        if (v95)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_10005811C(v94, v89);
        sub_100008BA0(0, &qword_1001243D0);
        v96 = v119;
        v90 = sub_10000AB38(v119);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_106;
        }

        v5 = v120;
        if (v95)
        {
          goto LABEL_62;
        }
      }

      v5[(v90 >> 6) + 8] |= 1 << v90;
      *(v5[6] + 8 * v90) = v96;
      *(v5[7] + 8 * v90) = _swiftEmptyArrayStorage;
      v98 = v5[2];
      v42 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v42)
      {
        goto LABEL_102;
      }

      v5[2] = v99;
      v100 = v96;
LABEL_62:
      v6 &= v6 - 1;
      sub_1000BA9CC(v88, v3);

      v74 = sub_1000AE520;
      v69 = v110;
    }
  }

  __break(1u);
LABEL_106:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_107:
  sub_100008BA0(0, &qword_1001243D0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_1000A50F0()
{
  v1 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = [v0 value];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1000518D0(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1000518D0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v6;
  v11 = [v0 normalizedValue];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (String.count.getter() < 1)
    {
LABEL_11:

      return v7;
    }

    v16 = [v0 value];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {

      goto LABEL_11;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_11;
    }

    v23 = *(v7 + 2);
    v22 = *(v7 + 3);
    if (v23 >= v22 >> 1)
    {
      v7 = sub_1000518D0((v22 > 1), v23 + 1, 1, v7);
    }

    *(v7 + 2) = v23 + 1;
    v24 = &v7[16 * v23];
    *(v24 + 4) = v13;
    *(v24 + 5) = v15;
  }

  return v7;
}

uint64_t sub_1000A52FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v83 = a2;
  v89 = a3;
  v6 = type metadata accessor for VerificationStatus();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = __chkstk_darwin(v6);
  v86 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v73 - v9;
  v10 = type metadata accessor for CoalescedRecentItem();
  v84 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecentCall.uniqueID.getter();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  os_unfair_lock_lock((v3 + 32));
  v20 = *(v3 + 40);

  os_unfair_lock_unlock((v4 + 32));
  if (*(v20 + 16))
  {
    v21 = sub_100052C6C(v17, v19);
    v23 = v22;

    if (v23)
    {
      sub_10005B644(*(v20 + 56) + *(v84 + 72) * v21, v12);

      return sub_10005B6A8(v12, v89);
    }
  }

  else
  {
  }

  v25 = RecentCall.chRecentCall.getter();
  v26 = RecentCall.remoteParticipantHandles.getter();
  v27 = sub_100049260(v26);
  v29 = v28;
  v84 = v27;
  v30 = sub_1000A6494();
  v32 = v31;
  v33 = *(v31 + 16);
  v34 = sub_1000A6834();
  if (v33 || v34 < 1)
  {
    if (v33 < 2)
    {
      v37 = sub_1000AB5C4(a1, v32, v34, v83);
    }

    else
    {
      v37 = sub_1000A7310(a1, v30, v32, v34, v83);
    }

    v81 = v38;
    v82 = v37;
    v79 = v40;
    v80 = v39;
  }

  else
  {
    v35 = sub_1000A6A74(v34);
    v81 = v36;
    v82 = v35;

    v79 = 0;
    v80 = 0;
  }

  v41 = RecentCall.coalescedCalls.getter();
  v83 = v29;
  v42 = sub_1000AC770(v25, v41, v29);
  v77 = v43;
  v78 = v42;

  v44 = sub_1000A5D60(v25);
  v75 = v45;
  v76 = v44;
  v46 = *(RecentCall.coalescedCalls.getter() + 16);

  if (v46 >= 2 && (v47 = *(v4 + 72), v48 = *(RecentCall.coalescedCalls.getter() + 16), , v49 = [v47 stringFromInteger:v48], v47, v49))
  {
    v50 = v25;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v52;
    v74 = v51;
  }

  else
  {
    v50 = v25;
    v73 = 0;
    v74 = 0;
  }

  v53 = v89;
  RecentCall.date.getter();
  v54 = sub_1000ADD44();
  v55 = v85;
  RecentCall.verificationStatus.getter();
  v57 = v86;
  v56 = v87;
  v58 = v88;
  (*(v87 + 104))(v86, enum case for VerificationStatus.passed(_:), v88);
  sub_1000AE378(&unk_100125F90, &type metadata accessor for VerificationStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();

  v59 = *(v56 + 8);
  v59(v57, v58);
  result = (v59)(v55, v58);
  v60 = v91 == v90;
  *(v53 + v10[5]) = v54;
  *(v53 + v10[6]) = 0;
  *(v53 + v10[7]) = v60;
  v61 = (v53 + v10[8]);
  v62 = v73;
  *v61 = v74;
  v61[1] = v62;
  v63 = (v53 + v10[9]);
  v64 = v75;
  *v63 = v76;
  v63[1] = v64;
  v65 = (v53 + v10[10]);
  v66 = v77;
  *v65 = v78;
  v65[1] = v66;
  v67 = (v53 + v10[11]);
  v68 = v81;
  *v67 = v82;
  v67[1] = v68;
  v69 = (v53 + v10[12]);
  v70 = v79;
  *v69 = v80;
  v69[1] = v70;
  v71 = (v53 + v10[13]);
  v72 = v83;
  *v71 = v84;
  v71[1] = v72;
  return result;
}

uint64_t sub_1000A5898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v42 = a2;
  v43 = a3;
  v8 = type metadata accessor for CoalescedRecentItem();
  v40 = *(v8 - 1);
  __chkstk_darwin(v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Message.recordUUID.getter();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  os_unfair_lock_lock((v4 + 32));
  v17 = *(v4 + 40);

  os_unfair_lock_unlock(v5 + 8);
  if (*(v17 + 16))
  {
    v18 = sub_100052C6C(v14, v16);
    v20 = v19;

    if (v20)
    {
      v21 = v41;
      sub_10005B644(*(v17 + 56) + *(v40 + 72) * v18, v41);

      return sub_10005B6A8(v21, a4);
    }
  }

  else
  {
  }

  v23 = v42;
  v24 = v43;
  v25 = sub_1000A653C(a1, v42, v43, 0);
  v27 = v26;
  v40 = v29;
  v41 = v28;
  v30 = sub_1000AE200();
  v32 = v31;
  dispatch thunk of Message.dateCreated.getter();
  *(a4 + v8[5]) = 0;
  *(a4 + v8[6]) = 0;
  *(a4 + v8[7]) = 0;
  v33 = (a4 + v8[8]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (a4 + v8[9]);
  *v34 = 0;
  v34[1] = 0;
  v35 = (a4 + v8[10]);
  *v35 = v30;
  v35[1] = v32;
  v36 = (a4 + v8[11]);
  *v36 = v25;
  v36[1] = v27;
  v37 = (a4 + v8[12]);
  v38 = v40;
  *v37 = v41;
  v37[1] = v38;
  v39 = (a4 + v8[13]);
  *v39 = v23;
  v39[1] = v24;
}

uint64_t sub_1000A5B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((v3 + 32));
  v7 = *(v3 + 40);

  os_unfair_lock_unlock((v3 + 32));
  if (*(v7 + 16) && (v8 = sub_100052C6C(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for CoalescedRecentItem();
    v19 = *(v12 - 8);
    sub_10005B644(v11 + *(v19 + 72) * v10, a3);

    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {

    v17 = type metadata accessor for CoalescedRecentItem();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_1000A5CAC()
{
  os_unfair_lock_lock((v0 + 16));
  os_unfair_lock_unlock((v0 + 16));
  os_unfair_lock_lock((v0 + 16));

  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock((v0 + 16));
  os_unfair_lock_lock((v0 + 32));
  os_unfair_lock_unlock((v0 + 32));
  os_unfair_lock_lock((v0 + 32));

  *(v0 + 40) = &_swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock((v0 + 32));
  os_unfair_lock_lock((v0 + 48));
  os_unfair_lock_unlock((v0 + 48));
  os_unfair_lock_lock((v0 + 48));

  *(v0 + 56) = &_swiftEmptyDictionarySingleton;

  os_unfair_lock_unlock((v0 + 48));
}

id sub_1000A5D60(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v41 - v18;
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  result = [a1 localParticipantUUID];
  if (result)
  {
    v41 = v7;
    v42 = v10;
    v23 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v4 + 32);
    v24(v21, v19, v3);
    v25 = [a1 outgoingLocalParticipantUUID];
    if (v25)
    {
      v26 = v25;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24(v16, v13, v3);
      v27 = static UUID.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v16, v3);
      v28(v21, v3);
      if ((v27 & 1) != 0 && PHDeviceSupportsDualSim())
      {
        result = sub_1000A6110(a1);
        if (!result)
        {
          return result;
        }

        v29 = result;
        v30 = [result prioritizedSenderIdentities];
        v31 = [v30 count];

        if (v31 >= 2)
        {
          v32 = [a1 localParticipantUUID];
          if (v32)
          {
            v33 = v41;
            v34 = v32;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v35 = v42;
            v24(v42, v33, v3);
            v36 = [*(v1 + 88) telephonyProvider];
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v38 = [v36 senderIdentityForAccountUUID:isa];

            if (v38)
            {
              v39 = [v38 localizedShortName];
              v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();

              v28(v35, v3);
              return v40;
            }

            v28(v35, v3);
          }
        }
      }
    }

    else
    {
      (*(v4 + 8))(v21, v3);
    }

    return 0;
  }

  return result;
}

id sub_1000A6110(void *a1)
{
  v3 = [a1 serviceProvider];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 80);
    v6 = [v5 objectForKey:v3];
    if (v6)
    {
      v7 = v6;
LABEL_10:

      return v7;
    }

    v14 = [*(v1 + 88) providerForRecentCall:a1];
    if (v14)
    {
      v7 = v14;
      [v5 setObject:v14 forKey:v4];
      goto LABEL_10;
    }

    if (qword_100124020 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000046F4(v16, qword_100128968);
    v17 = static os_log_type_t.info.getter();
    v18 = a1;
    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v19, v17, "Could not retrieve a call provider for the specified recent call: %@", v20, 0xCu);
      sub_10000B880(v21, &qword_1001250A0);
    }
  }

  else
  {
    if (qword_100124020 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000046F4(v8, qword_100128968);
    v9 = static os_log_type_t.info.getter();
    v10 = a1;
    v4 = Logger.logObject.getter();

    if (os_log_type_enabled(v4, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v4, v9, "Service provider is nil for the specified recent call: %@", v11, 0xCu);
      sub_10000B880(v12, &qword_1001250A0);
    }
  }

  return 0;
}

BOOL sub_1000A63F0()
{
  Handle.value.getter();
  v0._countAndFlagsBits = 0x3A706D6574;
  v0._object = 0xE500000000000000;
  v1 = String.hasPrefix(_:)(v0);

  if (v1)
  {
    return 0;
  }

  else
  {
    Handle.value.getter();
    v3._countAndFlagsBits = 0x3A6475657370;
    v3._object = 0xE600000000000000;
    v4 = String.hasPrefix(_:)(v3);

    return !v4;
  }
}

uint64_t sub_1000A6494()
{
  result = static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  if (v0)
  {
    return sub_1000AE414(0, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A653C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25[1] = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v25[2] = sub_1000A6494();
  v14 = v13;
  if (!*(v13 + 16))
  {
    goto LABEL_18;
  }

  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25[0] = *(v7 + 16);
  (v25[0])(v12, v13 + v15, v6);
  if (!a4)
  {
    goto LABEL_9;
  }

  if (!(a4 >> 62))
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_9:
    v17 = sub_1000A42AC();
    if (!v17)
    {
LABEL_13:
      v22 = *(v7 + 8);
      v22(v12, v6);
      if (*(v14 + 16))
      {
        (v25[0])(v10, v14 + v15, v6);
        v23 = sub_1000AB358(v10, 0, 0);
        if (!v24)
        {
          v23 = Handle.value.getter();
        }

        v21 = v23;

        v22(v10, v6);
        goto LABEL_17;
      }

LABEL_18:
      v21 = dispatch thunk of Message.from.getter();
      dispatch thunk of Message.from.getter();

      return v21;
    }

LABEL_10:
    v18 = v17;
    v19 = [*(v4 + 64) stringFromContact:v17];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v7 + 8))(v12, v6);

LABEL_17:

      return v21;
    }

    goto LABEL_13;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((a4 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(a4 + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6834()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = RecentCall.remoteParticipantHandles.getter();
  v5 = v4 + 56;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  v22 = v1 + 16;
  v23 = v4;
  v10 = (v1 + 8);

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v21 = v13;
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v9)
          {
            goto LABEL_17;
          }

          v8 = *(v5 + 8 * v14);
          ++v12;
          if (v8)
          {
            v12 = v14;
            goto LABEL_10;
          }
        }

        __break(1u);
        return result;
      }

LABEL_10:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v1 + 16))(v3, *(v23 + 48) + *(v1 + 72) * (v15 | (v12 << 6)), v0);
      Handle.value.getter();
      v16._countAndFlagsBits = 0x3A706D6574;
      v16._object = 0xE500000000000000;
      v17 = String.hasPrefix(_:)(v16);

      if (v17)
      {
        break;
      }

      Handle.value.getter();
      v18._countAndFlagsBits = 0x3A6475657370;
      v18._object = 0xE600000000000000;
      v19 = String.hasPrefix(_:)(v18);

      result = (*v10)(v3, v0);
      if (v19)
      {
        goto LABEL_14;
      }
    }

    result = (*v10)(v3, v0);
LABEL_14:
    v13 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_17:

  return v21;
}

id sub_1000A6A74(uint64_t a1)
{
  if (a1 == 1)
  {
    result = TUBundle();
    if (result)
    {
      v3 = result;
      v18._object = 0xE000000000000000;
      v4._countAndFlagsBits = 0x4548544F5F454E4FLL;
      v5.value._object = 0x80000001000DDEB0;
      v4._object = 0xE900000000000052;
      v5.value._countAndFlagsBits = 0xD000000000000012;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v18)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else
  {
    v8 = [*(v1 + 72) stringFromInteger:a1];
    if (!v8)
    {
      return 0;
    }

    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    result = TUBundle();
    if (result)
    {
      v13 = result;
      v19._object = 0xE000000000000000;
      v14._countAndFlagsBits = 0x524548544F5F4025;
      v14._object = 0xE900000000000053;
      v15.value._object = 0x80000001000DDEB0;
      v15.value._countAndFlagsBits = 0xD000000000000012;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v19._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v19);

      sub_1000525C4(&unk_100125F70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1000D6C50;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_100099C8C();
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;

      countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

      swift_bridgeObjectRelease_n();
      return countAndFlagsBits;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6C74()
{
  v1 = type metadata accessor for FormatCompression();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatLocalization();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000525C4(&qword_100125FE8);
  __chkstk_darwin(v4 - 8);
  v44 = &v38 - v5;
  v6 = type metadata accessor for PhoneNumber();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandleType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = sub_1000525C4(&qword_100125FD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Handle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v22 = RecentCall.remoteParticipantHandles.getter();
  v23 = sub_1000AA084(v22);
  sub_100048220(v23, v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000B880(v17, &qword_100125FD0);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  Handle.type.getter();
  (*(v9 + 104))(v12, enum case for HandleType.phoneNumber(_:), v8);
  sub_1000AE378(&qword_1001243B0, &type metadata accessor for HandleType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v9 + 8);
  v25(v12, v8);
  v25(v14, v8);
  if (v51 != v50)
  {
    goto LABEL_7;
  }

  RecentCall.isoCountryCode.getter();
  if (!v26)
  {
    goto LABEL_7;
  }

  Handle.value.getter();
  v27 = v44;
  PhoneNumber.init(isoCodeString:number:)();
  v29 = v47;
  v28 = v48;
  if ((*(v47 + 48))(v27, 1, v48) == 1)
  {
    sub_10000B880(v27, &qword_100125FE8);
LABEL_7:
    v30 = Handle.value.getter();
    goto LABEL_8;
  }

  (*(v29 + 32))(v45, v27, v28);
  v31 = v39;
  v32 = v40;
  (*(v40 + 104))(v39, enum case for FormatLocalization.default(_:), v46);
  v34 = v41;
  v33 = v42;
  v35 = v43;
  (*(v42 + 104))(v41, enum case for FormatCompression.none(_:), v43);
  v49 = PhoneNumber.formattedNumber(with:compression:)();
  v37 = v36;
  (*(v33 + 8))(v34, v35);
  (*(v32 + 8))(v31, v46);
  if (v37)
  {
    (*(v47 + 8))(v45, v48);
    (*(v19 + 8))(v21, v18);
    return v49;
  }

  v30 = Handle.value.getter();
  (*(v47 + 8))(v45, v48);
LABEL_8:
  (*(v19 + 8))(v21, v18);
  return v30;
}

id sub_1000A7310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = RecentCall.isoCountryCode.getter();
  v11 = sub_1000A7E9C(a2, a3, v9, v10, a5);

  v12 = v11[2];
  if (v12 <= 1)
  {
    if (!v12)
    {

      return 0;
    }

    if (v12 == 1)
    {
      v13 = v11[4];
      v14 = v11[5];

LABEL_9:

      return sub_1000A75C4(v13, v14, a4);
    }

    goto LABEL_10;
  }

  if (v12 == 2)
  {
    v28 = v11[4];
    v29 = v11[5];
    v30 = v11[6];
    v31 = v11[7];

    v27 = sub_1000A7858(v28, v29, v30, v31, a4);

    goto LABEL_13;
  }

  if (v12 != 3)
  {
LABEL_10:
    v27 = sub_1000A79C0(v11, a4);
LABEL_13:

    return v27;
  }

  v16 = v11[4];
  v15 = v11[5];
  v17 = v11[7];
  v18 = v11[9];
  v32 = v11[6];
  v33 = v11[8];

  result = TUBundle();
  if (result)
  {
    v20 = result;
    v34._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x4E415F40255F4025;
    v21._object = 0xEC00000040255F44;
    v22.value._object = 0x80000001000DDEB0;
    v22.value._countAndFlagsBits = 0xD000000000000012;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v34);

    sub_1000525C4(&unk_100125F70);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000D8290;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100099C8C();
    *(v24 + 32) = v16;
    *(v24 + 40) = v15;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v32;
    *(v24 + 80) = v17;
    *(v24 + 136) = &type metadata for String;
    *(v24 + 144) = v25;
    *(v24 + 112) = v33;
    *(v24 + 120) = v18;
    v13 = static String.localizedStringWithFormat(_:_:)();
    v14 = v26;

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_1000A75C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    result = TUBundle();
    if (result)
    {
      v18 = result;
      v24._object = 0xE000000000000000;
      v19._object = 0x80000001000DDED0;
      v20.value._countAndFlagsBits = 0xD000000000000012;
      v20.value._object = 0x80000001000DDEB0;
      v19._countAndFlagsBits = 0xD000000000000010;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v24._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v24);

      sub_1000525C4(&unk_100125F70);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000D6C50;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100099C8C();
      *(v22 + 32) = a1;
      *(v22 + 40) = a2;

      a1 = static String.localizedStringWithFormat(_:_:)();

      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!a3 || (v6 = [*(v3 + 72) stringFromInteger:?]) == 0)
    {

      return a1;
    }

    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    result = TUBundle();
    if (result)
    {
      v12 = result;
      v23._object = 0xE000000000000000;
      v13._object = 0x80000001000DDE90;
      v14.value._countAndFlagsBits = 0xD000000000000012;
      v14.value._object = 0x80000001000DDEB0;
      v13._countAndFlagsBits = 0xD000000000000010;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v23);

      sub_1000525C4(&unk_100125F70);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000D7C60;
      *(v16 + 56) = &type metadata for String;
      v17 = sub_100099C8C();
      *(v16 + 32) = a1;
      *(v16 + 40) = a2;
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v17;
      *(v16 + 64) = v17;
      *(v16 + 72) = v8;
      *(v16 + 80) = v10;

      a1 = static String.localizedStringWithFormat(_:_:)();

      swift_bridgeObjectRelease_n();
      return a1;
    }
  }

  __break(1u);
  return result;
}

id sub_1000A7858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = TUBundle();
  if (result)
  {
    v11 = result;
    v20._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x255F444E415F4025;
    v13.value._object = 0x80000001000DDEB0;
    v12._object = 0xE900000000000040;
    v13.value._countAndFlagsBits = 0xD000000000000012;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v20);

    sub_1000525C4(&unk_100125F70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000D7C60;
    *(v15 + 56) = &type metadata for String;
    v16 = sub_100099C8C();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v16;
    *(v15 + 64) = v16;
    *(v15 + 72) = a3;
    *(v15 + 80) = a4;

    v17 = static String.localizedStringWithFormat(_:_:)();
    v19 = v18;

    return sub_1000A75C4(v17, v19, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000A79C0(void *result, uint64_t a2)
{
  v3 = result[2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3 - 3;
  if (v3 < 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result[7];
  v40 = result[4];
  v41 = result[6];
  v7 = result[9];
  v42 = result[8];
  v43 = result[5];
  v8 = *(v2 + 72);

  v44 = v6;

  p_attr = &stru_10011CFF8.attr;
  v10 = [v8 stringFromInteger:v5];
  if (v10)
  {
    v39 = v2;
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    result = TUBundle();
    if (result)
    {
      v15 = result;
      v45._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0xD000000000000015;
      v16._object = 0x80000001000DDF30;
      v17.value._object = 0x80000001000DDEB0;
      v17.value._countAndFlagsBits = 0xD000000000000012;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v45._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v45);

      sub_1000525C4(&unk_100125F70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D7C70;
      *(v19 + 56) = &type metadata for String;
      v20 = sub_100099C8C();
      *(v19 + 32) = v40;
      *(v19 + 40) = v43;
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v20;
      *(v19 + 64) = v20;
      *(v19 + 72) = v41;
      *(v19 + 80) = v44;
      *(v19 + 136) = &type metadata for String;
      *(v19 + 144) = v20;
      *(v19 + 112) = v42;
      *(v19 + 120) = v7;
      *(v19 + 176) = &type metadata for String;
      *(v19 + 184) = v20;
      *(v19 + 152) = v12;
      *(v19 + 160) = v14;

      v21 = static String.localizedStringWithFormat(_:_:)();

      swift_bridgeObjectRelease_n();
      v2 = v39;
      p_attr = (&stru_10011CFF8 + 8);
      if (v4 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = 0;
  if (v4 == 1)
  {
LABEL_8:
    result = TUBundle();
    if (result)
    {
      v22 = result;
      v46._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD000000000000016;
      v23._object = 0x80000001000DDF10;
      v24.value._object = 0x80000001000DDEB0;
      v24.value._countAndFlagsBits = 0xD000000000000012;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v46._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v46);

      sub_1000525C4(&unk_100125F70);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1000D8290;
      *(v26 + 56) = &type metadata for String;
      v27 = sub_100099C8C();
      *(v26 + 32) = v40;
      *(v26 + 40) = v43;
      *(v26 + 96) = &type metadata for String;
      *(v26 + 104) = v27;
      *(v26 + 64) = v27;
      *(v26 + 72) = v41;
      *(v26 + 80) = v44;
      *(v26 + 136) = &type metadata for String;
      *(v26 + 144) = v27;
      *(v26 + 112) = v42;
      *(v26 + 120) = v7;
      static String.localizedStringWithFormat(_:_:)();

      return v21;
    }

    goto LABEL_21;
  }

LABEL_11:
  v28 = [*(v2 + 72) p_attr[191]];
  if (!v28)
  {

    return v21;
  }

  v29 = v28;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  result = TUBundle();
  if (result)
  {
    v33 = result;
    v47._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0xD000000000000016;
    v34._object = 0x80000001000DDEF0;
    v35.value._object = 0x80000001000DDEB0;
    v35.value._countAndFlagsBits = 0xD000000000000012;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v47);

    sub_1000525C4(&unk_100125F70);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1000D7C70;
    *(v37 + 56) = &type metadata for String;
    v38 = sub_100099C8C();
    *(v37 + 32) = v40;
    *(v37 + 40) = v43;
    *(v37 + 96) = &type metadata for String;
    *(v37 + 104) = v38;
    *(v37 + 64) = v38;
    *(v37 + 72) = v41;
    *(v37 + 80) = v44;
    *(v37 + 136) = &type metadata for String;
    *(v37 + 144) = v38;
    *(v37 + 112) = v42;
    *(v37 + 120) = v7;
    *(v37 + 176) = &type metadata for String;
    *(v37 + 184) = v38;
    *(v37 + 152) = v30;
    *(v37 + 160) = v32;

    static String.localizedStringWithFormat(_:_:)();

    swift_bridgeObjectRelease_n();
    return v21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000A7E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v92 = a3;
  v93 = a4;
  v10 = type metadata accessor for Handle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000525C4(&qword_100125F80);
  v14 = *(v105 - 8);
  __chkstk_darwin(v105);
  v88 = (v84 - v15);
  v16 = sub_1000525C4(&qword_100125F88);
  v17 = __chkstk_darwin(v16 - 8);
  v103 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = (v84 - v19);
  v87 = v11 + 16;
  v104 = *(a2 + 16);
  v100 = (v14 + 48);
  v101 = (v14 + 56);
  v99 = (v11 + 32);
  v20 = a5 & 0xFFFFFFFFFFFFFF8;
  v97 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v20 = a5;
  }

  v84[1] = v20;
  v86 = a5 & 0xC000000000000001;
  v85 = a5 + 32;
  v89 = v11;
  v98 = (v11 + 8);
  v84[2] = a1;

  v90 = a2;

  v22 = 0;
  v95 = v10;
  v96 = &_swiftEmptyArrayStorage;
  v106 = &_swiftEmptyArrayStorage;
  v94 = &_swiftEmptyArrayStorage;
  v91 = a5;
  while (1)
  {
    v24 = v105;
    if (v22 == v104)
    {
      v25 = 1;
      v107 = v104;
      v26 = v103;
    }

    else
    {
      if (v22 >= v104)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_70;
      }

      v29 = v88;
      v28 = v89;
      v30 = v90 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22;
      v31 = *(v105 + 48);
      *v88 = v22;
      (*(v28 + 16))(&v29[v31], v30, v10);
      v32 = v29;
      v26 = v103;
      sub_10000AFFC(v32, v103, &qword_100125F80);
      v25 = 0;
      v107 = v27;
    }

    (*v101)(v26, v25, 1, v24);
    v33 = v102;
    sub_10000AFFC(v26, v102, &qword_100125F88);
    if ((*v100)(v33, 1, v24) == 1)
    {

      v108 = v94;
      sub_1000BA264(v106);
      sub_1000BA264(v96);
      return v108;
    }

    v34 = *v33;
    (*v99)(v13, v33 + *(v24 + 48), v10);
    if (a5)
    {
      break;
    }

LABEL_19:
    Handle.value.getter();
    v36 = String.count.getter();

    if (v36 < 1)
    {
      v40 = &_swiftEmptyArrayStorage;
      v48 = *(&_swiftEmptyArrayStorage + 2);
      if (!v48)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v37 = Handle.value.getter();
      v39 = v38;
      v40 = sub_1000518D0(0, 1, 1, &_swiftEmptyArrayStorage);
      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1000518D0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[16 * v42];
      *(v43 + 4) = v37;
      *(v43 + 5) = v39;
      result = Handle.normalizedValue.getter();
      if (!v44)
      {
        goto LABEL_32;
      }

      v45 = result;
      v46 = v44;
      if (String.count.getter() < 1)
      {
        goto LABEL_31;
      }

      if (v45 != Handle.value.getter() || v46 != v47)
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          v70 = *(v40 + 2);
          v69 = *(v40 + 3);
          if (v70 >= v69 >> 1)
          {
            result = sub_1000518D0((v69 > 1), v70 + 1, 1, v40);
            v40 = result;
          }

          *(v40 + 2) = v70 + 1;
          v71 = &v40[16 * v70];
          *(v71 + 4) = v45;
          *(v71 + 5) = v46;
          v48 = *(v40 + 2);
          if (!v48)
          {
LABEL_50:

LABEL_51:
            v60 = 0;
            a5 = v91;
            goto LABEL_52;
          }

          goto LABEL_33;
        }

LABEL_31:

LABEL_32:
        v48 = *(v40 + 2);
        if (!v48)
        {
          goto LABEL_50;
        }

        goto LABEL_33;
      }

      v48 = *(v40 + 2);
      if (!v48)
      {
        goto LABEL_50;
      }
    }

LABEL_33:
    v50 = 0;
    v51 = (v40 + 40);
    while (1)
    {
      if (v50 >= *(v40 + 2))
      {
        __break(1u);
        goto LABEL_69;
      }

      v53 = *(v51 - 1);
      v52 = *v51;

      os_unfair_lock_lock((v6 + 16));
      v54 = *(v6 + 24);

      os_unfair_lock_unlock((v6 + 16));
      if (*(v54 + 16))
      {
        break;
      }

LABEL_35:
      ++v50;

      v51 += 2;
      if (v48 == v50)
      {
        goto LABEL_50;
      }
    }

    v55 = sub_100052C6C(v53, v52);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_35;
    }

    v58 = *(*(v54 + 56) + 8 * v55);
    v59 = v58;

    if (!v58)
    {
      goto LABEL_51;
    }

    v35 = v59;
    a5 = v91;
    v10 = v95;
LABEL_41:
    v60 = v35;
    v61 = [*(v6 + 64) stringFromContact:v60];

    if (v61)
    {
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v63;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v65 = v94;
      }

      else
      {
        v65 = sub_1000518D0(0, *(v94 + 2) + 1, 1, v94);
      }

      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        v65 = sub_1000518D0((v66 > 1), v67 + 1, 1, v65);
      }

      v94 = v65;
      goto LABEL_4;
    }

LABEL_52:
    v72 = sub_1000AB358(v13, v92, v93);
    if (v73)
    {
      countAndFlagsBits = v72;
      object = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v95;
      if (isUniquelyReferenced_nonNull_native)
      {
        v65 = v106;
      }

      else
      {
        v65 = sub_1000518D0(0, *(v106 + 2) + 1, 1, v106);
      }

      v67 = *(v65 + 2);
      v75 = *(v65 + 3);
      v68 = v67 + 1;
      if (v67 >= v75 >> 1)
      {
        v65 = sub_1000518D0((v75 > 1), v67 + 1, 1, v65);
      }

      v106 = v65;
    }

    else
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v77 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v109._object = 0xE000000000000000;
      v78._countAndFlagsBits = 0x5F4E574F4E4B4E55;
      v78._object = 0xEE0052454C4C4143;
      v79.value._countAndFlagsBits = 0x746E656365524850;
      v79.value._object = 0xE900000000000073;
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      v109._countAndFlagsBits = 0;
      v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v109);
      countAndFlagsBits = v81._countAndFlagsBits;
      object = v81._object;

      v82 = swift_isUniquelyReferenced_nonNull_native();
      v10 = v95;
      if (v82)
      {
        v65 = v96;
      }

      else
      {
        v65 = sub_1000518D0(0, *(v96 + 2) + 1, 1, v96);
      }

      v67 = *(v65 + 2);
      v83 = *(v65 + 3);
      v68 = v67 + 1;
      if (v67 >= v83 >> 1)
      {
        v65 = sub_1000518D0((v83 > 1), v67 + 1, 1, v65);
      }

      v96 = v65;
    }

LABEL_4:

    result = (*v98)(v13, v10);
    *(v65 + 2) = v68;
    v23 = &v65[16 * v67];
    *(v23 + 4) = countAndFlagsBits;
    *(v23 + 5) = object;
    v22 = v107;
  }

  if (!(a5 >> 62))
  {
    result = *(v97 + 16);
    if (v34 < result)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v34 >= result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (v86)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_41;
  }

  if (v34 < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v34 < *(v97 + 16))
  {
    v35 = *(v85 + 8 * v34);
    goto LABEL_41;
  }

LABEL_72:
  __break(1u);
  return result;
}

id sub_1000A8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a1;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    if (a3 < 2)
    {
      return a1;
    }

    v13 = [*(v3 + 72) stringFromInteger:a3];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      result = TUBundle();
      if (result)
      {
        v18 = result;
        v25._object = 0xE000000000000000;
        v19._object = 0x80000001000DDE90;
        v20.value._countAndFlagsBits = 0xD000000000000012;
        v20.value._object = 0x80000001000DDEB0;
        v19._countAndFlagsBits = 0xD000000000000010;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        v25._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v25);

        sub_1000525C4(&unk_100125F70);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1000D7C60;
        *(v22 + 56) = &type metadata for String;
        v23 = sub_100099C8C();
        *(v22 + 32) = a1;
        *(v22 + 40) = a2;
        *(v22 + 96) = &type metadata for String;
        *(v22 + 104) = v23;
        *(v22 + 64) = v23;
        *(v22 + 72) = v15;
        *(v22 + 80) = v17;

        a1 = static String.localizedStringWithFormat(_:_:)();

        swift_bridgeObjectRelease_n();
        return a1;
      }

      goto LABEL_13;
    }

LABEL_10:

    return 0;
  }

  result = TUBundle();
  if (result)
  {
    v8 = result;
    v24._object = 0xE000000000000000;
    v9._object = 0x80000001000DDED0;
    v10.value._countAndFlagsBits = 0xD000000000000012;
    v10.value._object = 0x80000001000DDEB0;
    v9._countAndFlagsBits = 0xD000000000000010;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

    sub_1000525C4(&unk_100125F70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000D6C50;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100099C8C();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    a1 = static String.localizedStringWithFormat(_:_:)();

    return a1;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id *sub_1000A8A50()
{
  sub_10000B880((v0 + 3), &qword_100126030);
  sub_10000B880((v0 + 5), &qword_100126038);
  sub_10000B880((v0 + 7), &qword_100126040);

  sub_10000B880((v0 + 12), &qword_100125A58);

  return v0;
}

uint64_t sub_1000A8B08()
{
  sub_1000A8A50();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoalescedRecentItem()
{
  result = qword_100125EF0;
  if (!qword_100125EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A8BD4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000A8CA4();
    if (v1 <= 0x3F)
    {
      sub_1000A8D0C();
      if (v2 <= 0x3F)
      {
        sub_1000A8D5C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000A8CA4()
{
  if (!qword_100125F00)
  {
    sub_100008BA0(255, &qword_100125F08);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100125F00);
    }
  }
}

void sub_1000A8D0C()
{
  if (!qword_100125F10)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100125F10);
    }
  }
}

void sub_1000A8D5C()
{
  if (!qword_100125F18[0])
  {
    type metadata accessor for Handle();
    sub_1000AE378(&qword_100124390, &type metadata accessor for Handle);
    v0 = type metadata accessor for OrderedSet();
    if (!v1)
    {
      atomic_store(v0, qword_100125F18);
    }
  }
}

size_t sub_1000A8DF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000589E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000A8E10(size_t a1, int64_t a2, char a3)
{
  result = sub_100058A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000A8E30(size_t a1, int64_t a2, char a3)
{
  result = sub_100058C28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000A8E50(size_t a1, int64_t a2, char a3)
{
  result = sub_100058A10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A8E70(char *a1, int64_t a2, char a3)
{
  result = sub_100058C50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A8E90(void *a1, int64_t a2, char a3)
{
  result = sub_100058D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A8EB0(void *a1, int64_t a2, char a3)
{
  result = sub_100058EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000A8ED0(size_t a1, int64_t a2, char a3)
{
  result = sub_100058FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000A8F08(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v4 || *(v5 + 16) >= 0x10uLL)
  {
    v7 = static _HashTable.scale(forCapacity:)();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = a1(v5, v8, 0, v4);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1000A8FB8(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1000A8DF0(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = static _HashTable.scale(forCapacity:)();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = static _HashTable.scale(forCapacity:)();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = static _HashTable.scale(forCapacity:)();
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1000592F4(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = _HashTable.copy()();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1000A9198(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = static _HashTable.scale(forCapacity:)();
    v8 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v8;
      v8 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = static _HashTable.scale(forCapacity:)();
    v6 = 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v3[1];
  if (v6 < v7)
  {
    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

LABEL_23:
    v13 = sub_100059374(v9, v10, 0, v8);

    *v3 = v13;
    return result;
  }

  if (v8 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  result = static _HashTable.scale(forCapacity:)();
  if (result <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < v6)
  {
    if (v8 <= v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_23;
  }

  if (!v5 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v14 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v14 = _HashTable.copy()();

  *v3 = v14;
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v14 + 24) & 0x3FLL) != v8)
  {
    *(v14 + 24) = *(v14 + 24) & 0xFFFFFFFFFFFFFFC0 | v8 & 0x3F;
  }

  return result;
}

uint64_t sub_1000A9338(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Handle();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000525C4(&unk_100125FF0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1000AE378(&qword_100124390, &type metadata accessor for Handle);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000A9674(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_1000525C4(a5);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = v10[5];
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = NSObject._rawHashValue(seed:)(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v10[6] + 8 * v22) = v18;
    ++v10[2];
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
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

void (*sub_1000A9860(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1000A9E3C(v7);
  v7[9] = sub_1000A996C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000A990C;
}

void sub_1000A990C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000A996C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for CoalescedRecentItem();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_1000525C4(&unk_100126020) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_100052C6C(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_10005B6A8(*(*v5 + 56) + *(v13 + 72) * v21, v18);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_1000A9C34;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_1000B8920();
      goto LABEL_16;
    }

    sub_100057548(v24, a4 & 1);
    v28 = sub_100052C6C(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A9C34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_10000B818(v5, v6, &unk_100126020);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_10005B6A8(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_10005B6A8(v13, v14);
        sub_1000B9B0C(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_10000B818(v5, v17, &unk_100126020);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_10005B6A8(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10005B6A8(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_10000B880(v9, &unk_100126020);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1000AE468(*(v20 + 48) + 16 * v19);
    sub_1000B7FC0(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_10000B880(v23, &unk_100126020);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1000A9E3C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000A9E64;
}

Swift::Int sub_1000A9E70(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1000AA458(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_100008BA0(0, &qword_1001243D0);
    do
    {
      swift_dynamicCast();
      if ([v12 isTemporary] & 1) != 0 || (objc_msgSend(v12, "isPseudonym"))
      {
      }

      else
      {
        v1 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v1)
        {
          sub_100096438(v1 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v3 = &_swiftEmptySetSingleton + 56;
        v4 = -1 << *(&_swiftEmptySetSingleton + 32);
        v5 = result & ~v4;
        v6 = v5 >> 6;
        if (((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7)) != 0)
        {
          v7 = __clz(__rbit64((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7))) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v8 = 0;
          v9 = (63 - v4) >> 6;
          do
          {
            if (++v6 == v9 && (v8 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v10 = v6 == v9;
            if (v6 == v9)
            {
              v6 = 0;
            }

            v8 |= v10;
            v11 = *&v3[8 * v6];
          }

          while (v11 == -1);
          v7 = __clz(__rbit64(~v11)) + (v6 << 6);
        }

        *&v3[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v7) = v12;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000AA084(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v36 = v9;
    v37 = v2;
    v44 = v6;
    v35[1] = v35;
    __chkstk_darwin(v6);
    v38 = v35 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v10);
    v39 = 0;
    v11 = 0;
    v2 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v9 = (v12 + 63) >> 6;
    v41 = (v5 + 8);
    v42 = v5 + 16;
    v43 = a1;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v18 = v15 | (v11 << 6);
      v19 = *(a1 + 48);
      v20 = *(v5 + 72);
      v40 = v18;
      v21 = v19 + v20 * v18;
      v22 = v5;
      v23 = *(v5 + 16);
      v24 = v44;
      v23(v8, v21, v44);
      Handle.value.getter();
      v25._countAndFlagsBits = 0x3A706D6574;
      v25._object = 0xE500000000000000;
      v26 = String.hasPrefix(_:)(v25);

      if (v26)
      {
        v6 = (*v41)(v8, v24);
        a1 = v43;
        v5 = v22;
      }

      else
      {
        Handle.value.getter();
        v27._countAndFlagsBits = 0x3A6475657370;
        v27._object = 0xE600000000000000;
        v28 = String.hasPrefix(_:)(v27);

        v6 = (*v41)(v8, v24);
        a1 = v43;
        v5 = v22;
        if (!v28)
        {
          *&v38[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
            return sub_1000A9338(v38, v36, v39, a1);
          }
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        return sub_1000A9338(v38, v36, v39, a1);
      }

      v17 = *(v2 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v31 = v5;
    v32 = v6;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v6 = v32;
    v5 = v31;
  }

  v33 = swift_slowAlloc();
  v34 = sub_1000AAAF0(v33, v9, a1, sub_1000AA6F0);

  if (!v2)
  {
    return v34;
  }

  return result;
}

uint64_t sub_1000AA458(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v22 = v4;
    v23 = v1;
    v21[1] = v21;
    __chkstk_darwin(a1);
    v6 = v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v24 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v4 = v12 | (v7 << 6);
      v15 = *(*(v2 + 48) + 8 * v4);
      if ([v15 isTemporary])
      {
      }

      else
      {
        v16 = [v15 isPseudonym];

        if ((v16 & 1) == 0)
        {
          *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
          if (__OFADD__(v24++, 1))
          {
            __break(1u);
            return sub_1000A9674(v6, v22, v24, v2, &unk_100125680);
          }
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1000A9674(v6, v22, v24, v2, &unk_100125680);
      }

      v14 = *(v2 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_1000AAAF0(v19, v4, v2, sub_1000AA974);

  return v20;
}

uint64_t sub_1000AA6F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a1;
  v4 = type metadata accessor for Handle();
  result = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v34 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v32 = v6 + 16;
  v33 = v6;
  v30 = 0;
  v31 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v9 << 6);
    (*(v33 + 16))(v8, *(v34 + 48) + *(v33 + 72) * v20, v4);
    Handle.value.getter();
    v21._countAndFlagsBits = 0x3A706D6574;
    v21._object = 0xE500000000000000;
    v22 = String.hasPrefix(_:)(v21);

    if (v22)
    {
      result = (*v31)(v8, v4);
    }

    else
    {
      Handle.value.getter();
      v23._countAndFlagsBits = 0x3A6475657370;
      v23._object = 0xE600000000000000;
      v24 = String.hasPrefix(_:)(v23);

      result = (*v31)(v8, v4);
      if (!v24)
      {
        *(v29 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_17:
          v26 = v34;

          return sub_1000A9338(v29, v28, v30, v26);
        }
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_17;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1000AA974(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    if ([v14 isTemporary])
    {
    }

    else
    {
      v15 = [v14 isPseudonym];

      if ((v15 & 1) == 0)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v19++, 1))
        {
          __break(1u);
LABEL_17:

          sub_1000A9674(a1, a2, v19, a3, &unk_100125680);
          return;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1000AAAF0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1000AAB78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v9 = 0;
    v10 = *(type metadata accessor for Handle() - 8);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    while (1)
    {
      result = a4(v11);
      if (v4)
      {
        break;
      }

      if (result)
      {
        *(*a1 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      }

      ++v9;
      v11 += v12;
      if (v7 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v14 = *a1;
    v15 = a1[1];
    v16 = sub_1000592EC();

    *&v18 = v14;
    *(&v18 + 1) = v15;
    return sub_1000AAD1C(v18, 0, 1, v16, a2, a3);
  }

  return result;
}

void *sub_1000AACC8(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_1000AE414(v6, v7);
  }

  return result;
}

uint64_t sub_1000AAD1C(__int128 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  if (a3)
  {
    if (a1 && *(&a1 + 1))
    {
      a2 = 0;
      v9 = 8 * *(&a1 + 1);
      v10 = a1;
      while (1)
      {
        v11 = vcnt_s8(*v10);
        v11.i16[0] = vaddlv_u8(v11);
        v12 = __OFADD__(a2, v11.u32[0]);
        a2 += v11.u32[0];
        if (v12)
        {
          break;
        }

        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a2)
  {
LABEL_14:
    sub_1000A8FB8(a4, 0);

    v8 = 0;
    goto LABEL_27;
  }

  if (a2 == *(a6 + 16))
  {
    if (a5)
    {
      v13 = a2;
      v6 = a4;
      swift_beginAccess();
      v14 = static _HashTable.maximumCapacity(forScale:)();
      a2 = v13;
      a4 = v6;
      v15 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 15 - a2;
      if (!__OFSUB__(15, a2))
      {
LABEL_11:
        if (v15 < a4)
        {
          *&a1 = a2 + a4;
          if (__OFADD__(a2, a4))
          {
LABEL_32:
            __break(1u);
            return a1;
          }

          sub_1000A8FB8(a1, 0);
        }

        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    *&a1 = a2 + a4;
    if (__OFADD__(a2, a4))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_1000A8FB8(a1, 0);
    v6 = 0;
    v19 = 0;
  }

  *&a1 = _UnsafeBitSet.Iterator.next()();
  if ((BYTE8(a1) & 1) == 0)
  {
    v16 = a1;
    while ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 >= *(a6 + 16))
      {
        goto LABEL_30;
      }

      v17 = *(type metadata accessor for Handle() - 8);
      sub_1000AAF6C(a6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16);
      *&a1 = _UnsafeBitSet.Iterator.next()();
      v16 = a1;
      if (BYTE8(a1))
      {
        v6 = v19;
        goto LABEL_26;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:

  v8 = v6;
LABEL_27:
  *&a1 = v8;
  return a1;
}

uint64_t sub_1000AAF6C(uint64_t a1)
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v8 = v1 + 1;
  v7 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000A8DF0(0, *(v7 + 16) + 1, 1);
    v7 = *v8;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1000A8DF0(v10 > 1, v11 + 1, 1);
    v7 = *v8;
  }

  *(v7 + 16) = v11 + 1;
  result = (*(v4 + 32))(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
  v1[1] = v7;
  if (!*v1)
  {
    if (v11 < 0xF)
    {
      return result;
    }

    return sub_1000A8F08(sub_1000592F4);
  }

  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v11)
  {
    return sub_1000A8F08(sub_1000592F4);
  }

  result = swift_isUniquelyReferenced_native();
  v13 = *v1;
  if ((result & 1) == 0)
  {
    if (!v13)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v14 = _HashTable.copy()();

    *v1 = v14;
    v13 = v14;
  }

  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000AE378(&qword_100124390, &type metadata accessor for Handle);

  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = 1 << *(v13 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17 & result;
  v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  v22[0] = v13 + 16;
  v22[1] = v13 + 32;
  v22[2] = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = 0;
  while (v23)
  {
    _HashTable.BucketIterator.advance()();
  }

  _HashTable.BucketIterator.currentValue.setter();
}

uint64_t sub_1000AB254()
{
  sub_1000525C4(&qword_100124C30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D9080;
  *(v0 + 32) = CNContactGivenNameKey;
  *(v0 + 40) = CNContactFamilyNameKey;
  *(v0 + 48) = CNContactPhoneNumbersKey;
  *(v0 + 56) = CNContactEmailAddressesKey;
  *(v0 + 64) = CNContactIdentifierKey;
  *(v0 + 72) = CNContactSocialProfilesKey;
  v1 = objc_opt_self();
  v2 = CNContactGivenNameKey;
  v3 = CNContactFamilyNameKey;
  v4 = CNContactPhoneNumbersKey;
  v5 = CNContactEmailAddressesKey;
  v6 = CNContactIdentifierKey;
  v7 = CNContactSocialProfilesKey;
  *(v0 + 80) = [v1 descriptorForRequiredKeysForStyle:0];
  return v0;
}

uint64_t sub_1000AB358(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = type metadata accessor for HandleType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = Handle.value.getter();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0;
  }

  Handle.type.getter();
  (*(v5 + 104))(v8, enum case for HandleType.phoneNumber(_:), v4);
  sub_1000AE378(&qword_1001243B0, &type metadata accessor for HandleType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v20[7] != v20[6])
  {
    return Handle.value.getter();
  }

  Handle.value.getter();
  v16 = String._bridgeToObjectiveC()();

  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v17 = TUFormattedPhoneNumber();

  if (!v17)
  {
    return Handle.value.getter();
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v18;
}

id sub_1000AB5C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v92 = a3;
  v88 = a1;
  v7 = type metadata accessor for CallerIDAvailability();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v79 - v11;
  v12 = sub_1000525C4(&qword_100125FD0);
  v13 = __chkstk_darwin(v12 - 8);
  v87 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v79 - v15;
  v16 = type metadata accessor for ServiceProvider();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v79 - v21;
  v23 = type metadata accessor for Handle();
  v24 = __chkstk_darwin(v23);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 16);
  v93 = v4;
  v86 = v29;
  v83 = v8;
  v84 = v7;
  v80 = a2;
  v90 = v26;
  v91 = v24;
  if (!v29)
  {
    goto LABEL_19;
  }

  (*(v26 + 16))(v28, a2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25);
  if (a4)
  {
    if (a4 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_5:
        if ((a4 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_48;
          }

          v31 = *(a4 + 32);
        }

        goto LABEL_10;
      }
    }

    else
    {
      result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  v31 = sub_1000A42AC();
  if (!v31)
  {
    (*(v90 + 8))(v28, v91);
    goto LABEL_19;
  }

LABEL_10:
  v32 = v31;
  v33 = [*(v4 + 64) stringFromContact:v31];
  if (!v33)
  {
    (*(v90 + 8))(v28, v91);

LABEL_19:
    v85 = 0;
    v38 = 0;
    v40 = 0;
    goto LABEL_20;
  }

  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v85 = v35;
  v38 = sub_1000A8798(v35, v37, v92);
  v40 = v39;

  (*(v90 + 8))(v28, v91);
  if (v40)
  {
    v41 = v40 & 0x2000000000000000;
    v42 = HIBYTE(v40) & 0xF;
    v43 = v38 & 0xFFFFFFFFFFFFLL;
    if ((v40 & 0x2000000000000000) != 0 ? HIBYTE(v40) & 0xF : v38 & 0xFFFFFFFFFFFFLL)
    {
      v45 = v92;
      v46 = v89;
LABEL_25:
      if (v41)
      {
        v52 = v42;
      }

      else
      {
        v52 = v43;
      }

      if (v52)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

LABEL_20:
  RecentCall.serviceProvider.getter();
  (*(v17 + 104))(v20, enum case for ServiceProvider.telephony(_:), v16);
  sub_1000AE378(&qword_100125FD8, &type metadata accessor for ServiceProvider);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v17 + 8);
  v48(v20, v16);
  v48(v22, v16);
  if (v47)
  {
    v45 = v92;
    v46 = v89;
    if (!v40)
    {
      goto LABEL_30;
    }

LABEL_24:
    v41 = v40 & 0x2000000000000000;
    v42 = HIBYTE(v40) & 0xF;
    v43 = v38 & 0xFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  v49 = RecentCall.callerNetworkName.getter();
  v45 = v92;
  v38 = sub_1000A8798(v49, v50, v92);
  v40 = v51;
  v46 = v89;
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_30:

  v53 = v87;
  if (!v86)
  {
    (*(v90 + 56))(v46, 1, 1, v91);
    v58 = sub_1000A6C74();
    v60 = v61;
    goto LABEL_34;
  }

  v55 = v90;
  v54 = v91;
  (*(v90 + 16))(v46, v80 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v91);
  (*(v55 + 56))(v46, 0, 1, v54);
  sub_10000B818(v46, v53, &qword_100125FD0);
  result = (*(v55 + 48))(v53, 1, v54);
  if (result != 1)
  {
    v56 = RecentCall.isoCountryCode.getter();
    v58 = sub_1000AB358(v53, v56, v57);
    v60 = v59;

    (*(v55 + 8))(v53, v54);
LABEL_34:
    v38 = sub_1000A8798(v58, v60, v45);
    v63 = v62;
    sub_10000B880(v46, &qword_100125FD0);
    if (!v63)
    {
      goto LABEL_41;
    }

    v41 = v63 & 0x2000000000000000;
    v42 = HIBYTE(v63) & 0xF;
    v43 = v38 & 0xFFFFFFFFFFFFLL;
LABEL_36:
    if (v41)
    {
      v64 = v42;
    }

    else
    {
      v64 = v43;
    }

    if (v64)
    {
      return v38;
    }

LABEL_41:

    v65 = v81;
    RecentCall.callerIDAvailability.getter();
    v67 = v82;
    v66 = v83;
    v68 = v84;
    (*(v83 + 104))(v82, enum case for CallerIDAvailability.blocked(_:), v84);
    sub_1000AE378(&qword_100125FE0, &type metadata accessor for CallerIDAvailability);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v69 = *(v66 + 8);
    v69(v67, v68);
    v69(v65, v68);
    LODWORD(v68) = v95;
    LODWORD(v66) = v94;
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v71 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v78 = 0xE000000000000000;
    if (v68 == v66)
    {
      v72 = 0x454C4C41435F4F4ELL;
      v73 = 0xEC00000044495F52;
    }

    else
    {
      v72 = 0x5F4E574F4E4B4E55;
      v73 = 0xEE0052454C4C4143;
    }

    v74.value._countAndFlagsBits = 0x746E656365524850;
    v74.value._object = 0xE900000000000073;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v76 = 0;
    v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v72, v74, v71, v75, *(&v78 - 1));

    return sub_1000A8798(v77._countAndFlagsBits, v77._object, v45);
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1000ABE64(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyMediaType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v55 - v7;
  v9 = type metadata accessor for EmergencyMediaItem();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v55 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_44;
  }

  v68 = v2;
  v69 = v8;
  v70 = v6;
  v15 = type metadata accessor for RecentCall();
  v55 = 0;
  v56 = 0;
  v16 = 0;
  v17 = *(v15 - 8);
  v58 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v65 = v10 + 32;
  v66 = v10 + 16;
  v64 = enum case for EmergencyMediaType.video(_:);
  v18 = (v3 + 104);
  v19 = (v3 + 8);
  v61 = enum case for EmergencyMediaType.image(_:);
  v63 = (v10 + 8);
  v57 = *(v17 + 72);
  v67 = v10;
  v76 = (v3 + 104);
  v62 = v9;
LABEL_4:
  v20 = v58 + v57 * v16;
  v60 = v16 + 1;
  v21 = RecentCall.emergencyMediaItems.getter();
  v22 = 0;
  v24 = v21 + 56;
  v23 = *(v21 + 56);
  v73 = v21 + 56;
  v74 = v21;
  v25 = 1 << *(v21 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v72 = v28;
  do
  {
    while (1)
    {
      if (!v27)
      {
        while (1)
        {
          v29 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_27;
          }

          if (v29 >= v28)
          {
            break;
          }

          v27 = *(v24 + 8 * v29);
          ++v22;
          if (v27)
          {
            v22 = v29;
            goto LABEL_13;
          }
        }

        v16 = v60;
        if (v60 == v59)
        {
          goto LABEL_21;
        }

        goto LABEL_4;
      }

LABEL_13:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v31 = v71;
      (*(v10 + 16))(v71, *(v74 + 48) + *(v10 + 72) * (v30 | (v22 << 6)), v9);
      (*(v10 + 32))(v13, v31, v9);
      v32 = v69;
      EmergencyMediaItem.mediaType.getter();
      v33 = v70;
      v34 = v68;
      v75 = *v18;
      v75(v70, v64, v68);
      sub_1000AE378(&qword_100125FC8, &type metadata accessor for EmergencyMediaType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v20 = v33;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v2 = *v19;
      (*v19)(v33, v34);
      (v2)(v32, v34);
      if (v80 == v79)
      {
        break;
      }

      EmergencyMediaItem.mediaType.getter();
      v75(v33, v61, v34);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v20 = v33;
      dispatch thunk of RawRepresentable.rawValue.getter();
      (v2)(v33, v34);
      (v2)(v32, v34);
      v9 = v62;
      result = (*v63)(v13, v62);
      v10 = v67;
      v18 = v76;
      v28 = v72;
      v24 = v73;
      if (v78 == v77)
      {
        v36 = __OFADD__(v55++, 1);
        if (v36)
        {
          __break(1u);
          return result;
        }
      }
    }

    v9 = v62;
    (*v63)(v13, v62);
    v36 = __OFADD__(v56++, 1);
    v10 = v67;
    v18 = v76;
    v28 = v72;
    v24 = v73;
  }

  while (!v36);
  __break(1u);
LABEL_21:
  v2 = v56;
  v20 = v55;
  if (v56 >= 1 && !v55)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v54 = 0xE000000000000000;
    if (v2 == 1)
    {
      v39 = 0x80000001000DE0F0;
      v40 = 0xD000000000000016;
    }

    else
    {
      v40 = 0xD000000000000017;
      v39 = 0x80000001000DE0D0;
    }

    v41 = 0x746E656365524850;
    goto LABEL_45;
  }

LABEL_27:
  if (v2 != 1)
  {
    if (!v2)
    {
      if (v20 >= 1)
      {
        type metadata accessor for BundleClass();
        v42 = swift_getObjCClassFromMetadata();
        v38 = [objc_opt_self() bundleForClass:v42];
        v54 = 0xE000000000000000;
        v41 = 0x746E656365524850;
        if (v20 == 1)
        {
          v39 = 0x80000001000DE0B0;
          v40 = 0xD000000000000016;
        }

        else
        {
          v40 = 0xD000000000000017;
          v39 = 0x80000001000DE090;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v2 >= 2)
    {
      if (v20 == 1)
      {
        v44 = "d photos coalesced";
        type metadata accessor for BundleClass();
        v45 = swift_getObjCClassFromMetadata();
        v46 = [objc_opt_self() bundleForClass:v45];
LABEL_40:
        v38 = v46;
        v54 = 0xE000000000000000;
        v41 = 0x746E656365524850;
        v40 = 0xD000000000000021;
        v39 = v44 | 0x8000000000000000;
        goto LABEL_45;
      }

      if (v20 >= 2)
      {
        type metadata accessor for BundleClass();
        v48 = swift_getObjCClassFromMetadata();
        v38 = [objc_opt_self() bundleForClass:v48];
        v54 = 0xE000000000000000;
        v41 = 0x746E656365524850;
        v40 = 0xD000000000000022;
        v39 = 0x80000001000DDFD0;
        goto LABEL_45;
      }
    }

    goto LABEL_44;
  }

  if (v20 != 1)
  {
    if (v20 >= 2)
    {
      v44 = "d photo coalesced";
      type metadata accessor for BundleClass();
      v47 = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass:v47];
      goto LABEL_40;
    }

LABEL_44:
    type metadata accessor for BundleClass();
    v49 = swift_getObjCClassFromMetadata();
    v38 = [objc_opt_self() bundleForClass:v49];
    v54 = 0xE000000000000000;
    v40 = 0x636E656772656D45;
    v39 = 0xEE006C6C61632079;
    v41 = 0x746E656365524850;
    goto LABEL_45;
  }

  type metadata accessor for BundleClass();
  v43 = swift_getObjCClassFromMetadata();
  v38 = [objc_opt_self() bundleForClass:v43];
  v54 = 0xE000000000000000;
  v41 = 0x746E656365524850;
  v40 = 0xD000000000000020;
  v39 = 0x80000001000DE060;
LABEL_45:
  v50 = 0xE900000000000073;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v52 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v40, *&v41, v38, v51, *(&v54 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000AC770(id a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for HandleType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  object = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Handle();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 wasEmergencyCall])
  {
    return sub_1000ABE64(a2);
  }

  v17 = [a1 blockedByExtension];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v179._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x4B434F4C425F4025;
    v24._object = 0xED000059425F4445;
    v25.value._countAndFlagsBits = 0x746E656365524850;
    v25.value._object = 0xE900000000000073;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v179._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v179);

    sub_1000525C4(&unk_100125F70);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000D6C50;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100099C8C();
    *(v27 + 32) = v19;
    *(v27 + 40) = v21;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

LABEL_5:

    return countAndFlagsBits;
  }

  v172 = v13;
  v29 = [a1 uniqueId];
  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = *(v4 + 17);
  v33 = [v32 increaseCallHistoryEnabled];
  v174 = a1;
  if (!v33)
  {
    v175 = 0;
    v177 = 0;
    goto LABEL_19;
  }

  os_unfair_lock_lock(v4 + 12);
  v34 = *(v4 + 7);

  v173 = v4;
  os_unfair_lock_unlock(v4 + 12);
  if (!*(v34 + 16) || (v35 = sub_100052C6C(v176, v31), (v36 & 1) == 0))
  {

    v175 = 0;
    v177 = 0;
    goto LABEL_18;
  }

  v169 = v31;
  v37 = (*(v34 + 56) + 16 * v35);
  v38 = *v37;
  v39 = v37[1];

  v40 = v32;
  v41 = [v32 increaseCallHistoryEnabled];
  v175 = v38;
  v177 = v39;
  v42 = String.count.getter();
  if (v41)
  {
    if (!v42)
    {
      v31 = v169;
      v32 = v40;
      goto LABEL_18;
    }

    v31 = v169;
    if (v175 == *(v173 + 20) && v177 == *(v173 + 21) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }

LABEL_61:

    return v175;
  }

  v31 = v169;
  if (v42)
  {
    goto LABEL_61;
  }

LABEL_15:
  v32 = v40;
LABEL_18:
  v4 = v173;
  a1 = v174;
LABEL_19:
  if ([v32 callHistorySearchEnabled])
  {
    if (a3[2])
    {
      v12 = a1;
      v43 = sub_1000A365C();
      v44 = v43;
      v9 = *(v43 + 2);
      if (v9)
      {
        object = 0;
        v45 = (v43 + 40);
        while (object < *(v44 + 2))
        {
          v15 = *(v45 - 1);
          v8 = *v45;

          v46 = sub_1000A43B8(v15, v8);
          if (v46)
          {
            v63 = v46;

            v64 = *(v4 + 19);
            v65 = String._bridgeToObjectiveC()();

            v47 = v63;
            v66 = [v64 localizedSubtitleForRecentCall:v12 handle:v65 contact:v63];

            countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v67;

            goto LABEL_56;
          }

          ++object;
          v45 += 2;
          if (v9 == object)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_173:
        (*(v172 + 8))(v15, v12);

        (*(v9 + 8))(object, v8);
LABEL_44:
        v32 = v167;
        goto LABEL_45;
      }

LABEL_26:
    }

    v47 = 0;
    v48 = v177;
    countAndFlagsBits = v175;
    if (v177)
    {
LABEL_56:
      if (String.count.getter())
      {
LABEL_59:

        os_unfair_lock_lock(v4 + 12);
        v68 = *(v4 + 7);

        os_unfair_lock_unlock(v4 + 12);
        v178 = v68;
        sub_1000A1BB0(countAndFlagsBits, v48, v176, v31);
        v69 = v178;
        os_unfair_lock_lock(v4 + 12);

        *(v4 + 7) = v69;
        os_unfair_lock_unlock(v4 + 12);

        return countAndFlagsBits;
      }
    }

    countAndFlagsBits = *(v4 + 20);
    v48 = *(v4 + 21);

    goto LABEL_59;
  }

  v49 = sub_1000A6110(a1);
  if (!v49)
  {
    object = v177;
    v12 = &selRef_contentSize;
    goto LABEL_34;
  }

  v50 = v49;
  if ([v49 isFaceTimeProvider])
  {
    v51 = v50;
    v52 = [v174 mediaType];
    type metadata accessor for BundleClass();
    v53 = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() bundleForClass:v53];
    if (v52 == 2)
    {
      v55 = "RECENTS_FACETIME_VIDEO";
    }

    else
    {
      v55 = "RECENTS_FACETIME_AUDIO";
    }

    v180._object = 0xE000000000000000;
    v70._object = ((v55 - 32) | 0x8000000000000000);
    v70._countAndFlagsBits = 0xD000000000000016;
    v71.value._countAndFlagsBits = 0x746E656365524850;
    v71.value._object = 0xE900000000000073;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v180._countAndFlagsBits = 0;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v54, v72, v180);
    countAndFlagsBits = v73._countAndFlagsBits;
    object = v73._object;

    v12 = &selRef_contentSize;
    goto LABEL_64;
  }

  if (![v50 isTelephonyProvider])
  {
    v77 = [v174 mediaType];
    v12 = &selRef_contentSize;
    if (v77 == 2)
    {
      v84 = v50;
      type metadata accessor for BundleClass();
      v92 = swift_getObjCClassFromMetadata();
      v167 = v32;
      v93 = [objc_opt_self() bundleForClass:v92];
      v182._object = 0xE000000000000000;
      v94.value._countAndFlagsBits = 0x746E656365524850;
      v95._countAndFlagsBits = 0xD000000000000031;
      v95._object = 0x80000001000DDF50;
      v94.value._object = 0xE900000000000073;
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      v182._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v94, v93, v96, v182);

      sub_1000525C4(&unk_100125F70);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1000D6C50;
      v91 = [v50 localizedName];
    }

    else
    {
      if (v77 != 1)
      {

        object = v177;
        goto LABEL_34;
      }

      v84 = v50;
      type metadata accessor for BundleClass();
      v85 = swift_getObjCClassFromMetadata();
      v167 = v32;
      v86 = [objc_opt_self() bundleForClass:v85];
      v181._object = 0xE000000000000000;
      v87.value._countAndFlagsBits = 0x746E656365524850;
      v88._countAndFlagsBits = 0xD000000000000031;
      v88._object = 0x80000001000DDF90;
      v87.value._object = 0xE900000000000073;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      v181._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v87, v86, v89, v181);

      sub_1000525C4(&unk_100125F70);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1000D6C50;
      v91 = [v50 localizedName];
    }

    v97 = v91;
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    *(v90 + 56) = &type metadata for String;
    *(v90 + 64) = sub_100099C8C();
    *(v90 + 32) = v98;
    *(v90 + 40) = v100;
    v101 = static String.localizedStringWithFormat(_:_:)();
    object = v102;
    v32 = v167;

    countAndFlagsBits = v101;

    goto LABEL_64;
  }

  v168 = v50;
  if (a3[2])
  {
    v167 = v32;
    v169 = v31;
    v173 = v4;
    (*(v172 + 16))(v15, a3 + ((*(v172 + 80) + 32) & ~*(v172 + 80)), v12);
    v56 = sub_1000A365C();
    v170 = *(v56 + 2);
    v171 = v56;
    if (v170)
    {
      v31 = 0;
      v4 = v171 + 40;
      while (v31 < *(v171 + 2))
      {
        v32 = *(v4 - 1);
        a3 = *v4;

        v57 = sub_1000A43B8(v32, a3);
        if (v57)
        {
          v170 = v57;

          Handle.type.getter();
          v103 = (*(v9 + 88))(object, v8);
          v31 = v169;
          if (v103 == enum case for HandleType.unknown(_:))
          {
            (*(v172 + 8))(v15, v12);

            v4 = v173;
            goto LABEL_44;
          }

          v4 = v173;
          if (v103 == enum case for HandleType.generic(_:))
          {
            v127 = String._bridgeToObjectiveC()();

            v128 = [v170 tu_labeledValueForSocialProfileWithUsername:v127];

            if (!v128 || (v129 = [v128 label]) == 0)
            {
              v129 = 0;
            }

            v130 = [objc_opt_self() localizedDisplayStringForLabel:v129 propertyName:CNContactSocialProfilesKey];
            goto LABEL_122;
          }

          if (v103 == enum case for HandleType.phoneNumber(_:))
          {
            v135 = [v174 isoCountryCode];
            if (v135)
            {
              v136 = v135;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v138 = v137;
            }

            else
            {
              v138 = 0;
            }

            v159 = String._bridgeToObjectiveC()();

            if (v138)
            {
              v160 = String._bridgeToObjectiveC()();
            }

            else
            {
              v160 = 0;
            }

            v161 = [objc_opt_self() phoneNumberWithDigits:v159 countryCode:v160];

            v162 = [v170 tu_labeledValueForPhoneNumber:v161];
            v163 = v162;
            if (!v162 || (v164 = [v162 label]) == 0)
            {
              v164 = 0;
            }

            v165 = [objc_opt_self() localizedDisplayStringForLabel:v164 propertyName:CNContactPhoneNumbersKey];

            countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v166;
          }

          else
          {
            if (v103 != enum case for HandleType.emailAddress(_:))
            {
              goto LABEL_173;
            }

            v158 = String._bridgeToObjectiveC()();

            v128 = [v170 tu_labeledValueForEmailAddress:v158];

            if (!v128 || (v129 = [v128 label]) == 0)
            {
              v129 = 0;
            }

            v130 = [objc_opt_self() localizedDisplayStringForLabel:v129 propertyName:CNContactEmailAddressesKey];
LABEL_122:
            v131 = v130;

            countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v132;
          }

          (*(v172 + 8))(v15, v12);
          object = v58;
          v32 = v167;
          v12 = &selRef_contentSize;
          goto LABEL_47;
        }

        ++v31;
        v4 += 16;
        if (v170 == v31)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_184;
    }

LABEL_43:
    (*(v172 + 8))(v15, v12);

    v4 = v173;
    v31 = v169;
    goto LABEL_44;
  }

LABEL_45:
  object = v177;
  if (!v177)
  {
    v62 = v174;
    v12 = &selRef_contentSize;
    if (([v174 isJunk] & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_77;
  }

  v58 = v177;
  v12 = &selRef_contentSize;
  countAndFlagsBits = v175;
LABEL_47:
  v59 = v32;
  v60 = [v32 v12[171]];
  v61 = String.count.getter();
  if (!v60)
  {
    if (!v61)
    {
      goto LABEL_52;
    }

LABEL_80:
    v32 = v59;
    goto LABEL_88;
  }

  if (v61 && (countAndFlagsBits != *(v4 + 20) || v58 != *(v4 + 21)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_52:
  v62 = v174;
  v32 = v59;
  if ([v174 isJunk])
  {
LABEL_77:
    v78 = v32;
    v79 = [v62 junkIdentificationCategory];
    if (v79)
    {
      v80 = v79;
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
    }

    else
    {
      v83 = 0xEA00000000004B4ELL;
      v81 = 0x554A5F454259414DLL;
    }

    type metadata accessor for BundleClass();
    v104 = swift_getObjCClassFromMetadata();
    v105 = [objc_opt_self() bundleForClass:v104];
    v183._object = 0xE000000000000000;
    v106.value._countAndFlagsBits = 0x746E656365524850;
    v107._countAndFlagsBits = v81;
    v107._object = v83;
    v106.value._object = 0xE900000000000073;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v183._countAndFlagsBits = 0;
    v109 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, v106, v105, v108, v183);
    countAndFlagsBits = v109._countAndFlagsBits;

    object = v109._object;
    v32 = v78;
    goto LABEL_88;
  }

  if (!object)
  {
    v175 = countAndFlagsBits;
    goto LABEL_98;
  }

LABEL_88:
  v110 = v32;
  v111 = [v32 v12[171]];
  v112 = String.count.getter();
  if (!v111)
  {
    v32 = v110;
    if (!v112)
    {
      goto LABEL_93;
    }

LABEL_95:

    goto LABEL_64;
  }

  if (!v112)
  {
    v175 = countAndFlagsBits;
    v32 = v110;
    goto LABEL_97;
  }

  v32 = v110;
  if ((countAndFlagsBits != *(v4 + 20) || object != *(v4 + 21)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_93:
  v175 = countAndFlagsBits;
LABEL_97:
  v62 = v174;
LABEL_98:
  a3 = v32;
  v113 = [objc_opt_self() metadataDestinationIDsForCHRecentCall:v62];
  sub_100008BA0(0, &qword_100125FA0);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v32 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v114 = v168;
    if (result)
    {
      goto LABEL_100;
    }

LABEL_185:

    v32 = a3;
    goto LABEL_34;
  }

LABEL_184:
  result = _CocoaArrayWrapper.endIndex.getter();
  v114 = v168;
  if (!result)
  {
    goto LABEL_185;
  }

LABEL_100:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_103;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v115 = *(v32 + 32);
LABEL_103:
    v116 = v115;

    v117 = [*(v4 + 18) metadataForDestinationID:v116];

    if (v117)
    {
      p_attr = &stru_10011CFF8.attr;
      if (!object)
      {
        v121 = a3;
        if ([v174 callerIdIsBlocked])
        {
          object = 0;
          goto LABEL_139;
        }

        goto LABEL_115;
      }

      v119 = [a3 v12[171]];
      v120 = String.count.getter();
      if (v119)
      {
        if (!v120 || v175 == *(v4 + 20) && object == *(v4 + 21) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_110:
          v121 = a3;
          if (([v174 callerIdIsBlocked] & 1) == 0)
          {
LABEL_115:
            sub_100008BA0(0, &qword_100125FA8);
            v122 = [v117 metadataForProvider:swift_getObjCClassFromMetadata()];
            if (!v122)
            {

              v175 = 0;
              object = 0;
              goto LABEL_139;
            }

            v123 = v122;
            v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v126 = v125;

            v121 = a3;

            object = v126;
            p_attr = (&stru_10011CFF8 + 8);
LABEL_126:
            v133 = [v121 v12[171]];
            v175 = v124;
            v134 = String.count.getter();
            if (v133)
            {
              if (v134)
              {
                v121 = a3;
                if ((v175 != *(v4 + 20) || object != *(v4 + 21)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                v121 = a3;
              }
            }

            else
            {
              v121 = a3;
              if (v134)
              {
                goto LABEL_144;
              }
            }

LABEL_139:
            if ([v174 p_attr[449]])
            {
              if (!object)
              {
                goto LABEL_153;
              }
            }

            else
            {
              sub_100008BA0(0, &qword_100125FB0);
              v139 = [v117 metadataForProvider:swift_getObjCClassFromMetadata()];
              if (!v139)
              {

                goto LABEL_153;
              }

              v140 = v139;
              v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v142 = v141;

              v121 = a3;

              object = v142;
            }

LABEL_144:
            v143 = [v121 v12[171]];
            v144 = String.count.getter();
            if (v143)
            {
              if (!v144)
              {
                goto LABEL_153;
              }

              v145 = a3;
              if (v175 == *(v4 + 20) && object == *(v4 + 21))
              {
                goto LABEL_153;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_153;
              }

LABEL_151:
              v146 = v175;
              goto LABEL_155;
            }

            v145 = a3;
            if (v144)
            {
              goto LABEL_151;
            }

LABEL_153:
            sub_100008BA0(0, &qword_100125FB8);
            v147 = [v117 metadataForProvider:swift_getObjCClassFromMetadata()];
            if (!v147)
            {

              goto LABEL_164;
            }

            v148 = v147;
            v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;

            object = v150;
            v145 = a3;
LABEL_155:
            v151 = [v145 v12[171]];
            v152 = String.count.getter();
            if (v151)
            {
              if (!v152 || v146 == *(v4 + 20) && object == *(v4 + 21) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_164;
              }

LABEL_162:

              v32 = a3;
              countAndFlagsBits = v146;
              goto LABEL_64;
            }

            if (v152)
            {
              goto LABEL_162;
            }

LABEL_164:
            sub_100008BA0(0, &qword_100125FC0);
            v153 = [v117 metadataForProvider:swift_getObjCClassFromMetadata()];
            if (!v153)
            {

              v32 = a3;
LABEL_67:

LABEL_68:
              countAndFlagsBits = *(v4 + 20);
              object = *(v4 + 21);

              goto LABEL_69;
            }

            v154 = v153;
            v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v157 = v156;

            object = v157;
            v32 = a3;
            countAndFlagsBits = v155;
LABEL_64:
            v74 = HIBYTE(object) & 0xF;
            if ((object & 0x2000000000000000) == 0)
            {
              v74 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            if (v74)
            {
LABEL_69:
              if ([v32 v12[171]])
              {

                os_unfair_lock_lock(v4 + 12);
                v75 = *(v4 + 7);

                os_unfair_lock_unlock(v4 + 12);
                v178 = v75;
                sub_1000A1BB0(countAndFlagsBits, object, v176, v31);
                v76 = v178;
                os_unfair_lock_lock(v4 + 12);

                *(v4 + 7) = v76;
                os_unfair_lock_unlock(v4 + 12);
                return countAndFlagsBits;
              }

              goto LABEL_5;
            }

            goto LABEL_67;
          }

LABEL_125:
          v124 = v175;
          goto LABEL_126;
        }
      }

      else if (!v120)
      {
        goto LABEL_110;
      }

      v121 = a3;
      goto LABEL_125;
    }

    v32 = a3;
LABEL_34:
    countAndFlagsBits = v175;
    if (!object)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  __break(1u);
  return result;
}

id sub_1000ADD44()
{
  v0 = type metadata accessor for MediaType();
  v25 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CallStatus();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for TTYType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecentCall.ttyType.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for TTYType.none(_:))
  {
    if (v13 == enum case for TTYType.direct(_:))
    {
      v14 = &selRef_recentsTTYDirectGlyphImage;
      goto LABEL_6;
    }

    if (v13 == enum case for TTYType.relay(_:))
    {
      v14 = &selRef_recentsTTYRelayGlyphImage;
LABEL_6:
      result = [objc_opt_self() *v14];
      if (result)
      {
        return result;
      }

      goto LABEL_9;
    }

    (*(v10 + 8))(v12, v9);
  }

LABEL_9:
  v23 = v0;
  RecentCall.callStatus.getter();
  v16 = *(v3 + 104);
  v16(v6, enum case for CallStatus.connectedOutgoing(_:), v2);
  sub_1000AE378(&qword_1001241B0, &type metadata accessor for CallStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v3 + 8);
  v17(v6, v2);
  v17(v8, v2);
  if (v29 != v28)
  {
    RecentCall.callStatus.getter();
    v16(v6, enum case for CallStatus.cancelled(_:), v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17(v6, v2);
    v17(v8, v2);
    if (v27 != v26)
    {
      return 0;
    }
  }

  v18 = v24;
  RecentCall.mediaType.getter();
  v19 = v25;
  v20 = v23;
  v21 = (*(v25 + 88))(v18, v23);
  if (v21 == enum case for MediaType.unknown(_:))
  {
    return 0;
  }

  if (v21 == enum case for MediaType.audio(_:))
  {
    v22 = [objc_opt_self() recentsOutgoingAudioCallGlyphImage];
  }

  else
  {
    if (v21 != enum case for MediaType.video(_:))
    {
      (*(v19 + 8))(v18, v20);
      return 0;
    }

    v22 = [objc_opt_self() recentsOutgoingVideoCallGlyphImage];
  }

  return v22;
}

uint64_t sub_1000AE200()
{
  v0 = dispatch thunk of Message.messageType.getter();
  if (v0 < 2)
  {
    v1 = "RECENTS_FACETIME_VIDEO";
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
LABEL_6:
    v6 = v3;
    v14 = 0xE000000000000000;
    v8 = v1 | 0x8000000000000000;
    v7 = 0xD000000000000016;
    goto LABEL_7;
  }

  if (v0 == 2)
  {
    v1 = "subtitleProvider";
    type metadata accessor for BundleClass();
    v4 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass:v4];
    goto LABEL_6;
  }

  type metadata accessor for BundleClass();
  v5 = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:v5];
  v14 = 0xE000000000000000;
  v7 = 0x454D495445434146;
  v8 = 0xE800000000000000;
LABEL_7:
  v9.value._countAndFlagsBits = 0x746E656365524850;
  v9.value._object = 0xE900000000000073;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, v9, v6, v10, *(&v14 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000AE378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AE3C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000AAB78(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1000AE414(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1000AE458(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000AE4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoalescedRecentItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AE524()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_1001289E8);
  sub_1000046F4(v0, qword_1001289E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AE5A4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v15.receiver = v12;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  LOBYTE(ObjectType) = static NSObject.== infix(_:_:)();

  return ObjectType & 1;
}

id sub_1000AE6B0()
{
  sub_1000525C4(&qword_100124C30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D9210;
  if (qword_100124060 != -1)
  {
    swift_once();
  }

  v1 = qword_100128A08;
  *(v0 + 32) = qword_100128A08;
  v2 = qword_100124068;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100128A10;
  *(v0 + 40) = qword_100128A10;
  v5 = qword_100124070;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100128A18;
  *(v0 + 48) = qword_100128A18;
  v8 = qword_100124078;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_100128A20;
  *(v0 + 56) = qword_100128A20;
  v11 = qword_100124080;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_100128A28;
  *(v0 + 64) = qword_100128A28;
  v14 = qword_100124088;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_100128A30;
  *(v0 + 72) = qword_100128A30;
  v17 = qword_100124090;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_100128A38;
  *(v0 + 80) = qword_100128A38;
  v20 = qword_100124098;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_100128A40;
  *(v0 + 88) = qword_100128A40;
  v23 = qword_1001240A0;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_100128A48;
  *(v0 + 96) = qword_100128A48;
  qword_100128A00 = v0;

  return v25;
}

id sub_1000AEBB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *a3 = result;
  return result;
}

BOOL sub_1000AEC38(uint64_t a1)
{
  swift_getObjectType();
  sub_10009115C(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      v4 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_1000A0E90(v7);
  }

  return 0;
}

id sub_1000AEDAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, "init");
  *a2 = result;
  return result;
}

uint64_t sub_1000AEE0C@<X0>(void *a1@<X8>)
{
  if (qword_100124058 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_100128A00;
}

id sub_1000AEE7C@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

void sub_1000AEEF4(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_1000AEFB8(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_1000AF078(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

BOOL sub_1000AF13C(char **a1, char **a2)
{
  v2 = *a2;
  v3 = sub_1000AF170(a1, *a2);

  return v3;
}

BOOL sub_1000AF170(char **a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v7 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v8 = type metadata accessor for VoicemailAccountManagerUpdate();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, "init");
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&a2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = static NSObject.== infix(_:_:)();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, "init");

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_1000AF29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000AF2C8(*a1);
  *a2 = result;
  return result;
}

id sub_1000AF2C8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v6 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v7 = type metadata accessor for VoicemailAccountManagerUpdate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, "init");
  v10 = *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v11 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, "init");
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, "init");
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, "init");
    v20 = *&v19[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, "init");
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, "init");

    *v2 = v26;
  }

  return v13;
}

void sub_1000AF46C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1000AF4AC(*a1);

  *a2 = v4;
}

id sub_1000AF4AC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, "init");
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, "init");
  LOBYTE(v6) = static NSObject.== infix(_:_:)();

  if (v6)
  {

    return 0;
  }

  return v12;
}

void sub_1000AF5E4(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

id sub_1000AF670(uint64_t *a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  result = objc_msgSendSuper2(&v9, "init");
  *v2 = result;
  return result;
}

void sub_1000AF6F4(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

void sub_1000AF780(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v9 = *(*v3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v10 = objc_allocWithZone(a1);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v26.receiver = v10;
  v26.super_class = a1;
  v11 = [(objc_class *)&v26 init];
  v12 = *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v13 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v12;
  v14 = objc_allocWithZone(a1);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13;
  v25.receiver = v14;
  v25.super_class = a1;
  v15 = [(objc_class *)&v25 init];
  v16 = *&v7[v8];
  v17 = objc_allocWithZone(a1);
  *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16;
  v24.receiver = v17;
  v24.super_class = a1;
  v18 = [(objc_class *)&v24 init];
  v19 = *&v18[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v20 = *(v15 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v19;
  v21 = objc_allocWithZone(a1);
  *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20;
  v23.receiver = v21;
  v23.super_class = a1;
  v22 = [(objc_class *)&v23 init];

  *a3 = v22;
}

uint64_t sub_1000AF8A4(uint64_t *a1, Class a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  LOBYTE(v3) = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_1000AF994(void *a1, Class a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = *(*a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  LOBYTE(v3) = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_1000AFA58(objc_class *a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(a1);
  *&v2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = [(objc_class *)&v5 init];
  LOBYTE(v1) = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

void sub_1000AFAEC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, "init");
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, "init");

  *v1 = v16;
}

uint64_t sub_1000AFBF8@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_1000B027C(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000AFD0C()
{
  result = qword_100126088;
  if (!qword_100126088)
  {
    sub_10005BA5C(&qword_100126090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126088);
  }

  return result;
}

uint64_t sub_1000AFDD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccountManagerUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AFE18()
{
  swift_getObjectType();
  if (qword_100124060 != -1)
  {
    swift_once();
  }

  v0 = qword_100128A08;
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    return 0x7453656E696C6E6FLL;
  }

  if (qword_100124068 != -1)
  {
    swift_once();
  }

  v3 = qword_100128A10;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 0x696C696261706163;
  }

  if (qword_100124070 != -1)
  {
    swift_once();
  }

  v5 = qword_100128A18;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return 0xD000000000000012;
  }

  if (qword_100124078 != -1)
  {
    swift_once();
  }

  v7 = qword_100128A20;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 0x72506E49636E7973;
  }

  if (qword_100124080 != -1)
  {
    swift_once();
  }

  v9 = qword_100128A28;
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    return 0xD000000000000013;
  }

  if (qword_100124088 != -1)
  {
    swift_once();
  }

  v11 = qword_100128A30;
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    return 0xD000000000000012;
  }

  if (qword_100124090 != -1)
  {
    swift_once();
  }

  v13 = qword_100128A38;
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    return 0x73746E756F636361;
  }

  if (qword_100124098 != -1)
  {
    swift_once();
  }

  v15 = qword_100128A40;
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    return 0x676E697465657267;
  }

  if (qword_1001240A0 != -1)
  {
    swift_once();
  }

  v17 = qword_100128A48;
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
    return 0x69616D6563696F56;
  }

  sub_1000B0484();
  return String.init<A>(_:radix:uppercase:)();
}

char *sub_1000B027C(unint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerUpdate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, "init");
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v10 = *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, "init");
      v13 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      v14 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v15 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, "init");
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, "init");

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

unint64_t sub_1000B0484()
{
  result = qword_1001260A8;
  if (!qword_1001260A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001260A8);
  }

  return result;
}

uint64_t sub_1000B0848()
{
  _StringGuts.grow(_:)(126);
  v1._countAndFlagsBits = 0xD000000000000035;
  v1._object = 0x80000001000DE3A0;
  String.append(_:)(v1);
  if (*(v0 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x656E696C6E6F2029;
  v5._object = 0xEB0000000028203ALL;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_online))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_online))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001000DE3E0;
  String.append(_:)(v9);
  if (*(v0 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_isMessageWaiting))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_isMessageWaiting))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x80000001000DE400;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x6E756F6363612029;
  v15._object = 0xED000028203A7374;
  String.append(_:)(v15);
  type metadata accessor for VoicemailAccount();
  v16._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

unint64_t sub_1000B0A78()
{
  v1 = *v0;
  v2 = 0x656E696C6E6FLL;
  v3 = 0x55656761726F7473;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x73746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1000B0B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B1014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B0B74(uint64_t a1)
{
  v2 = sub_1000B1548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0BB0(uint64_t a1)
{
  v2 = sub_1000B1548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0BEC(void *a1)
{
  v3 = v1;
  v5 = sub_1000525C4(&qword_100126130);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BC24(a1, a1[3]);
  sub_1000B1548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_accounts);
    v10[15] = 5;
    sub_1000525C4(&qword_1001248F0);
    sub_1000B159C(&qword_100126138, &qword_100126140);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1000B0EA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B1220(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000B0EF8(uint64_t a1)
{
  sub_10009115C(a1, v4);
  if (!v5)
  {
    sub_1000A0E90(v4);
    goto LABEL_5;
  }

  type metadata accessor for VoicemailAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  sub_1000B1668();
  v1 = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

uint64_t sub_1000B1014(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001000DE290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000DB950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55656761726F7473 && a2 == 0xEC00000065676173 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000DE2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_1000B1220(void *a1)
{
  v3 = sub_1000525C4(&qword_100126110);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_10000BC24(a1, a1[3]);
  sub_1000B1548();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v19) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 2;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 3;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 4;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000525C4(&qword_1001248F0);
    v18 = 5;
    sub_1000B159C(&qword_100126120, &qword_100126128);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v19;
    v12 = type metadata accessor for VoicemailAccountManagerData();
    v13 = objc_allocWithZone(v12);
    v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_anyAccountSubscribed] = v8 & 1;
    v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_online] = v9 & 1;
    v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_isMessageWaiting] = v10 & 1;
    *&v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_storageUsage] = v16;
    v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_transcriptionEnabled] = v15 & 1;
    *&v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_transcriptionProgress] = 0;
    *&v13[OBJC_IVAR____TtC8FaceTime27VoicemailAccountManagerData_accounts] = v14;
    v17.receiver = v13;
    v17.super_class = v12;
    v7 = objc_msgSendSuper2(&v17, "init");
    (*(v4 + 8))(v6, v3);
  }

  sub_100005964(a1);
  return v7;
}

unint64_t sub_1000B1548()
{
  result = qword_100126118;
  if (!qword_100126118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126118);
  }

  return result;
}

uint64_t sub_1000B159C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005BA5C(&qword_1001248F0);
    sub_1000B1624(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B1624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B1668()
{
  result = qword_100124FA8;
  if (!qword_100124FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124FA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B1808()
{
  result = qword_100126148;
  if (!qword_100126148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126148);
  }

  return result;
}

unint64_t sub_1000B1860()
{
  result = qword_100126150;
  if (!qword_100126150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126150);
  }

  return result;
}

unint64_t sub_1000B18B8()
{
  result = qword_100126158;
  if (!qword_100126158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126158);
  }

  return result;
}

uint64_t type metadata accessor for FTTranscriptionMessage()
{
  result = qword_100126190;
  if (!qword_100126190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B1B30()
{
  result = type metadata accessor for Transcript();
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

uint64_t sub_1000B1F98()
{
  LOWORD(result) = dispatch thunk of Message.messageType.getter();
  if (result < 3u)
  {
    return result;
  }

  _StringGuts.grow(_:)(23);

  dispatch thunk of Message.messageType.getter();
  MessageType.rawValue.getter();
  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000B2164()
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    return 0;
  }

  dispatch thunk of Message.from.getter();
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 normalizedValue];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  if (dispatch thunk of Message.isFromUnknown.getter())
  {

    return 0;
  }

  v7 = dispatch thunk of Message.from.getter();

  return v7;
}

id sub_1000B2288(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1000B2308()
{
  if ((dispatch thunk of Message.isFromUnknown.getter() & 1) == 0)
  {
    dispatch thunk of Message.from.getter();
    v0 = objc_opt_self();
    v1 = String._bridgeToObjectiveC()();

    v2 = [v0 normalizedHandleWithDestinationID:v1];

    if (v2)
    {
      v3 = [v2 isoCountryCode];
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v5;
      }
    }
  }

  return 0;
}

id sub_1000B23F4(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_1000B2480(a3);
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

uint64_t sub_1000B2480(SEL *a1)
{
  dispatch thunk of Message.recipient.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 normalizedHandleWithDestinationID:v4];

  if (v5)
  {
    v6 = [v5 *a1];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_1000B2628()
{
  v1 = v0 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  if (v3 == 1)
  {
    v4 = dispatch thunk of Message.mailboxType.getter();
    v5 = 1;
    if (v4 == 2)
    {
      v5 = 2;
    }

    if (v4 == 1)
    {
      return 3;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

id sub_1000B2824(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v12 = a1;
  a4();

  v13 = a5();
  (*(v9 + 8))(v11, v8);

  return v13;
}

void sub_1000B2974()
{
  v1 = sub_1000525C4(&unk_100126340);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1000525C4(&qword_100126388);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (sub_1000B2C30() == 2 && (dispatch thunk of Message.isRTT.getter() & 1) != 0 && TUCallScreeningRTTEnabled())
  {
    v7 = atomic_load((v0 + OBJC_IVAR____TtC8FaceTime9FTMessage_didLoadTranscript));
    if ((v7 & 1) != 0 && sub_1000B2EEC())
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 conversation];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = [v9 utterances];

          if (v10)
          {
            [v10 count];
          }

          else
          {
            __break(1u);
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v11 = sub_1000B2C30();
    if (v11)
    {
      if (v11 == 1)
      {
        return;
      }

      sub_1000B2F74(v6);
      v15 = type metadata accessor for Transcript();
      (*(*(v15 - 8) + 48))(v6, 1, v15);
      v13 = &qword_100126388;
      v14 = v6;
    }

    else
    {
      sub_1000B30F0(v3);
      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 48))(v3, 1, v12);
      v13 = &unk_100126340;
      v14 = v3;
    }

    sub_10000B880(v14, v13);
  }
}

uint64_t sub_1000B2C30()
{
  v1 = dispatch thunk of Message.messageType.getter();
  if (v1 < 3u)
  {
    return 0x10002u >> (8 * v1);
  }

  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000046F4(v3, qword_100128980);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    dispatch thunk of Message.messageType.getter();
    v9 = String.init<A>(describing:)();
    v11 = sub_10000607C(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected Message type %{public}s", v7, 0xCu);
    sub_100005964(v8);
  }

  return 0;
}

void (*sub_1000B2EEC())(void *__return_ptr)
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 24);
  if ((*(v0 + 40) & 1) == 0)
  {
    v3 = *(v0 + 32);
    v2(&v5);
    sub_1000B6474(v2, v3, 0);
    v2 = v5;
    *(v1 + 24) = v5;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 16));
  return v2;
}

void sub_1000B2F74(uint64_t a1@<X8>)
{
  v3 = sub_1000525C4(&qword_100126390);
  __chkstk_darwin(v3);
  v5 = (&v9 - v4);
  v6 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v6);
  v7 = *(sub_1000525C4(&qword_100126398) + 28);
  sub_10000B818(v6 + v7, v5, &qword_100126390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000AFFC(v5, a1, &qword_100126388);
  }

  else
  {
    v8 = sub_10000B880(v6 + v7, &qword_100126390);
    (*v5)(v8);

    sub_10000B818(a1, v6 + v7, &qword_100126388);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v6);
}

void sub_1000B30F0(uint64_t a1@<X8>)
{
  v3 = sub_1000525C4(&qword_100126378);
  __chkstk_darwin(v3);
  v5 = (&v9 - v4);
  v6 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v6);
  v7 = *(sub_1000525C4(&qword_100126380) + 28);
  sub_10000B818(v6 + v7, v5, &qword_100126378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000AFFC(v5, a1, &unk_100126340);
  }

  else
  {
    v8 = sub_10000B880(v6 + v7, &qword_100126378);
    (*v5)(v8);

    sub_10000B818(a1, v6 + v7, &unk_100126340);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1000B326C()
{
  type metadata accessor for FTMessage.Lazy.State();
  type metadata accessor for Mutex();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();
  return v0;
}

uint64_t sub_1000B32FC()
{
  sub_1000B326C();

  return swift_deallocClassInstance();
}

id sub_1000B336C(void *a1)
{
  v2 = sub_1000525C4(&unk_100126340);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = a1;
  sub_1000B30F0(v4);

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    (*(v7 + 8))(v4, v6);
    v9 = v11;
  }

  return v9;
}

id sub_1000B3514()
{
  v0 = sub_1000525C4(&unk_100126340);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B30F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000B880(v2, &unk_100126340);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 fileExistsAtPath:v9];

    (*(v4 + 8))(v6, v3);
    return v10;
  }
}

char *sub_1000B3758(void *a1)
{
  ObjectType = swift_getObjectType();
  v48 = sub_1000525C4(&qword_100126390);
  __chkstk_darwin(v48);
  v47 = (&v44 - v3);
  v46 = sub_1000525C4(&qword_100126378);
  __chkstk_darwin(v46);
  v5 = (&v44 - v4);
  v6 = &v1[OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead];
  *v7 = 0;
  v7[4] = 2;
  v1[OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyIsDeleted] = 0;
  v8 = OBJC_IVAR____TtC8FaceTime9FTMessage__transcript;
  sub_1000525C4(&qword_1001263A0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = sub_1000B3700;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *&v1[v8] = v9;
  v1[OBJC_IVAR____TtC8FaceTime9FTMessage_didLoadTranscript] = 0;
  v1[OBJC_IVAR____TtC8FaceTime9FTMessage_isDirty] = 0;
  *&v1[OBJC_IVAR____TtC8FaceTime9FTMessage_ftMessage] = a1;
  v10 = v1;
  v44 = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_1000525C4(&qword_1001263A8);
  v12 = swift_allocObject();
  *v5 = sub_1000B6494;
  v5[1] = v11;
  swift_storeEnumTagMultiPayload();
  v13 = (v12 + *(*v12 + 88));
  *v13 = 0;
  v14 = a1;

  v15 = sub_1000525C4(&qword_100126380);
  v16 = *(v15 + 28);
  v17 = *(*(sub_1000525C4(&qword_1001263B0) - 8) + 64);
  v45 = v17;
  bzero(v13 + v16, v17);
  sub_10000AFFC(v5, v13 + v16, &qword_100126378);

  *&v10[OBJC_IVAR____TtC8FaceTime9FTMessage__dataURL] = v12;
  v18 = swift_allocObject();
  v19 = v14;
  *(v18 + 16) = v14;
  v20 = swift_allocObject();
  *v5 = sub_1000B649C;
  v5[1] = v18;
  swift_storeEnumTagMultiPayload();
  v21 = (v20 + *(*v20 + 88));
  *v21 = 0;
  v22 = *(v15 + 28);
  bzero(v21 + v22, v17);
  v23 = v19;

  sub_10000AFFC(v5, v21 + v22, &qword_100126378);

  v24 = v44;
  *&v44[OBJC_IVAR____TtC8FaceTime9FTMessage__thumbnailURL] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = swift_allocObject();
  *v5 = sub_1000B64CC;
  v5[1] = v25;
  swift_storeEnumTagMultiPayload();
  v27 = (v26 + *(*v26 + 88));
  *v27 = 0;
  v28 = *(v15 + 28);
  bzero(v27 + v28, v45);
  v29 = v23;

  sub_10000AFFC(v5, v27 + v28, &qword_100126378);

  *&v24[OBJC_IVAR____TtC8FaceTime9FTMessage__transcriptURL] = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  sub_1000525C4(&qword_1001263B8);
  v31 = swift_allocObject();
  v32 = v47;
  *v47 = sub_1000B64FC;
  *(v32 + 8) = v30;
  swift_storeEnumTagMultiPayload();
  v33 = (v31 + *(*v31 + 88));
  *v33 = 0;
  v34 = v29;

  v35 = *(sub_1000525C4(&qword_100126398) + 28);
  v36 = sub_1000525C4(&unk_1001263C0);
  bzero(v33 + v35, *(*(v36 - 8) + 64));
  sub_10000AFFC(v32, v33 + v35, &qword_100126390);

  *&v24[OBJC_IVAR____TtC8FaceTime9FTMessage__transcriptData] = v31;
  v50.receiver = v24;
  v50.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v50, "init");
  v38 = *&v37[OBJC_IVAR____TtC8FaceTime9FTMessage__transcript];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v34;
  v41 = v34;
  v42 = v37;

  os_unfair_lock_lock((v38 + 16));
  sub_1000B6474(*(v38 + 24), *(v38 + 32), *(v38 + 40));
  *(v38 + 24) = sub_1000B6520;
  *(v38 + 32) = v40;
  *(v38 + 40) = 0;

  os_unfair_lock_unlock((v38 + 16));

  return v42;
}

uint64_t sub_1000B3D98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000525C4(&unk_100126340);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = dispatch thunk of Message.sandboxMessageFile.getter();
  v6 = dispatch thunk of SandboxExtendedURL.sandboxResolvedURL.getter();

  if (v6)
  {
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    v9 = *(v8 + 56);
    v9(v4, 1, 1, v7);
    sub_1000B657C(&qword_1001263E0, &type metadata accessor for URL);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      v10 = a1;
      v11 = 1;
    }

    else
    {
      (*(v8 + 32))(a1, v4, v7);
      v10 = a1;
      v11 = 0;
    }

    return (v9)(v10, v11, 1, v7);
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_1000B3FC8@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000525C4(&unk_100126340);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = a1(v5);
  if (v8 && (v9 = v8, v10 = dispatch thunk of SandboxExtendedURL.sandboxResolvedURL.getter(), v9, v10))
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v13(v7, 1, 1, v11);
    sub_1000B657C(&qword_1001263E0, &type metadata accessor for URL);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      v14 = a2;
      v15 = 1;
    }

    else
    {
      (*(v12 + 32))(a2, v7, v11);
      v14 = a2;
      v15 = 0;
    }

    return (v13)(v14, v15, 1, v11);
  }

  else
  {
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

void sub_1000B4208(uint64_t a1@<X1>, void *a2@<X8>)
{
  v48 = a1;
  v47 = sub_1000525C4(&unk_100126340);
  v3 = __chkstk_darwin(v47);
  v46[1] = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v46 - v5;
  v7 = type metadata accessor for URL();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v49 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000525C4(&qword_100126388);
  __chkstk_darwin(v9 - 8);
  v11 = v46 - v10;
  v12 = type metadata accessor for Transcript();
  v50 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v46 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a2 = 0;
    return;
  }

  v53 = a2;
  v23 = Strong;
  v24 = sub_1000B2C30();
  if (v24)
  {
    if (v24 != 1)
    {
      if ((dispatch thunk of Message.isRTT.getter() & 1) != 0 && TUCallScreeningRTTEnabled())
      {
        dispatch thunk of Message.callUUID.getter();
        v27 = objc_allocWithZone(MPRTTTranscriptionMessage);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v29 = [v27 initWithCallUUID:isa];

        (*(v19 + 8))(v21, v18);
        *v53 = v29;
      }

      else
      {
        sub_1000B2F74(v11);
        v30 = v50;
        if ((*(v50 + 48))(v11, 1, v12) == 1)
        {
          sub_10000B880(v11, &qword_100126388);
          *v53 = 0;
        }

        else
        {
          (*(v30 + 32))(v17, v11, v12);
          v32 = *(v30 + 16);
          v32(v15, v17, v12);
          v33 = type metadata accessor for FTTranscriptionMessage();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR____TtC8FaceTime22FTTranscriptionMessage_confidenceRating] = 0;
          *&v34[OBJC_IVAR____TtC8FaceTime22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
          v32(&v34[OBJC_IVAR____TtC8FaceTime22FTTranscriptionMessage_transcriptData], v15, v12);
          v54.receiver = v34;
          v54.super_class = v33;
          v35 = objc_msgSendSuper2(&v54, "init");
          v36 = *(v30 + 8);
          v36(v15, v12);
          v36(v17, v12);
          *v53 = v35;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1000B30F0(v6);
    v26 = v51;
    v25 = v52;
    if ((*(v51 + 48))(v6, 1, v52) == 1)
    {
      sub_10000B880(v6, &unk_100126340);
      *v53 = 0;
      atomic_store(1u, &v23[OBJC_IVAR____TtC8FaceTime9FTMessage_didLoadTranscript]);

      return;
    }

    v31 = v49;
    (*(v26 + 32))(v49, v6, v25);
    v37 = Data.init(contentsOf:options:)();
    v39 = v38;
    sub_100008BA0(0, &qword_1001263D0);
    sub_100008BA0(0, &qword_1001263D8);
    v40 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v40)
    {
      v41 = v40;
      v42 = type metadata accessor for VisualTranscriptionMessage();
      v43 = objc_allocWithZone(v42);
      *&v43[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v41;
      v55.receiver = v43;
      v55.super_class = v42;
      v44 = v41;
      v45 = objc_msgSendSuper2(&v55, "init");
      sub_1000B6528(v37, v39);

      (*(v26 + 8))(v31, v25);
      *v53 = v45;
      goto LABEL_15;
    }

    (*(v26 + 8))(v31, v25);
    sub_1000B6528(v37, v39);
  }

  *v53 = 0;
LABEL_15:
  atomic_store(1u, &v23[OBJC_IVAR____TtC8FaceTime9FTMessage_didLoadTranscript]);
}

uint64_t sub_1000B4B90()
{
  type metadata accessor for FTMessage.Lazy.State();
  result = type metadata accessor for Mutex();
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

BOOL sub_1000B4C60(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 4);
  os_unfair_lock_unlock(v3);
  if (v4 == 2)
  {
    if (dispatch thunk of Message.isRead.getter())
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (a1 > 5.0)
  {
    return 1;
  }

  dispatch thunk of Message.duration.getter();
  return v6 / 3.0 < a1;
}

id sub_1000B4D54(void *a1)
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    return 0;
  }

  dispatch thunk of Message.from.getter();
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 normalizedHandleWithDestinationID:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 normalizedValue];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v4 = v6;
  }

  else
  {
    if (dispatch thunk of Message.isFromUnknown.getter())
    {

      return 0;
    }

    v7 = dispatch thunk of Message.from.getter();
    v9 = v10;
  }

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    dispatch thunk of Message.from.getter();
    v12 = String._bridgeToObjectiveC()();

    sub_1000525C4(&unk_100124BB0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = [a1 contactForDestinationId:v12 keysToFetch:isa];

    return v14;
  }

  return 0;
}

uint64_t sub_1000B4F80(void *a1)
{
  v2 = dispatch thunk of Message.from.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_1000525C4(&qword_100124C30);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000D6C60;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 descriptorForRequiredKeysForStyle:0];
    v8 = sub_1000B4D54(a1);

    if (!v8)
    {
      return sub_1000B50F8();
    }

    if ([v8 isSuggested])
    {
      v9 = sub_1000B50F8();

      return v9;
    }

    v11 = [v7 stringFromContact:v8 style:0];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v13;
    }
  }

  return 0;
}

uint64_t sub_1000B50F8()
{
  v0 = objc_opt_self();
  dispatch thunk of Message.from.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (v2)
  {
    v3 = [v2 normalizedValue];
    v4 = [v2 isoCountryCode];
    v5 = TUFormattedPhoneNumber();

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_1000B5294()
{
  v148 = sub_1000525C4(&unk_100126340);
  __chkstk_darwin(v148);
  v147 = &v141 - v1;
  v2 = type metadata accessor for Date();
  v145 = *(v2 - 8);
  v146 = v2;
  __chkstk_darwin(v2);
  v144 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1000525C4(&qword_100124348);
  __chkstk_darwin(v143);
  v142 = &v141 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v141 - v10;
  v152 = 0;
  v153 = 0xE000000000000000;
  _StringGuts.grow(_:)(699);
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  v12._object = 0x80000001000DE6A0;
  String.append(_:)(v12);
  v13 = [*(v0 + OBJC_IVAR____TtC8FaceTime9FTMessage_ftMessage) description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x3A6469202020200ALL;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  dispatch thunk of Message.recordUUID.getter();
  v19 = *(v6 + 16);
  v19(v9, v11, v5);
  v20 = type metadata accessor for MessageID(0);
  v21 = objc_allocWithZone(v20);
  v19(&v21[OBJC_IVAR___MPMessageID_value], v9, v5);
  v22 = v141;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v151.receiver = v21;
  v151.super_class = v20;
  v23 = objc_msgSendSuper2(&v151, "init");
  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v11, v5);
  v25 = [v23 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x6F7270202020200ALL;
  v30._object = 0xEF203A7265646976;
  String.append(_:)(v30);
  v31._countAndFlagsBits = dispatch thunk of Message.provider.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0x6C6163202020200ALL;
  v32._object = 0xEF203A444955556CLL;
  String.append(_:)(v32);
  v33 = v142;
  dispatch thunk of Message.callUUID.getter();
  (*(v6 + 56))(v33, 0, 1, v5);
  v34._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0xD000000000000012;
  v35._object = 0x80000001000DE6C0;
  String.append(_:)(v35);
  v149 = sub_1000B1F98();
  _print_unlocked<A, B>(_:_:)();
  v36._countAndFlagsBits = 0xD00000000000001ALL;
  v36._object = 0x80000001000DE6E0;
  String.append(_:)(v36);
  v149 = sub_1000B2164();
  v150 = v37;
  sub_1000525C4(&qword_100126350);
  v38._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD00000000000001BLL;
  v39._object = 0x80000001000DE700;
  String.append(_:)(v39);
  v149 = sub_1000B2308();
  v150 = v40;
  v41._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x80000001000DE720;
  String.append(_:)(v42);
  v149 = sub_1000B2480(&selRef_normalizedValue);
  v150 = v43;
  v44._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0xD00000000000001DLL;
  v45._object = 0x80000001000DE740;
  String.append(_:)(v45);
  v149 = sub_1000B2480(&selRef_isoCountryCode);
  v150 = v46;
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD00000000000001CLL;
  v48._object = 0x80000001000DE760;
  String.append(_:)(v48);
  v49 = dispatch thunk of Message.isFromUnknown.getter();
  v50 = 0;
  v51 = 0;
  if ((v49 & 1) == 0)
  {
    v50 = dispatch thunk of Message.from.getter();
  }

  v149 = v50;
  v150 = v51;
  v52._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0xD000000000000012;
  v53._object = 0x80000001000DE780;
  String.append(_:)(v53);
  v54 = v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder));
  v55 = *(v54 + 8);
  v56 = *(v54 + 16);
  os_unfair_lock_unlock(v54);
  v149 = v55;
  LOBYTE(v150) = v56;
  sub_1000525C4(&qword_100126358);
  v57._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x6C6F66202020200ALL;
  v58._object = 0xED0000203A726564;
  String.append(_:)(v58);
  v149 = sub_1000B2628();
  _print_unlocked<A, B>(_:_:)();
  v59._object = 0x80000001000DE7A0;
  v59._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v59);
  v60 = v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead;
  os_unfair_lock_lock((v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead));
  LOBYTE(v55) = *(v60 + 4);
  os_unfair_lock_unlock(v60);
  LOBYTE(v149) = v55;
  sub_1000525C4(&qword_100126360);
  v61._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v61);

  v62._countAndFlagsBits = 0x616572202020200ALL;
  v62._object = 0xEB00000000203A64;
  String.append(_:)(v62);
  os_unfair_lock_lock(v60);
  v63 = *(v60 + 4);
  os_unfair_lock_unlock(v60);
  if (v63 == 2)
  {
    LOBYTE(v63) = dispatch thunk of Message.isRead.getter();
  }

  if (v63)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v63)
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  v66 = v65;
  String.append(_:)(*&v64);

  v67._countAndFlagsBits = 0x746164202020200ALL;
  v67._object = 0xEB00000000203A65;
  String.append(_:)(v67);
  v68 = v144;
  dispatch thunk of Message.dateCreated.getter();
  sub_1000B657C(&qword_100126368, &type metadata accessor for Date);
  v69 = v146;
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  (*(v145 + 8))(v68, v69);
  v71._countAndFlagsBits = 0xD00000000000001FLL;
  v71._object = 0x80000001000DE7C0;
  String.append(_:)(v71);
  sub_1000B2974();
  v73 = (v72 & 1) == 0;
  if (v72)
  {
    v74 = 1702195828;
  }

  else
  {
    v74 = 0x65736C6166;
  }

  if (v73)
  {
    v75 = 0xE500000000000000;
  }

  else
  {
    v75 = 0xE400000000000000;
  }

  v76 = v75;
  String.append(_:)(*&v74);

  v77._countAndFlagsBits = 0x727564202020200ALL;
  v77._object = 0xEF203A6E6F697461;
  String.append(_:)(v77);
  dispatch thunk of Message.duration.getter();
  Double.write<A>(to:)();
  v78._countAndFlagsBits = 0xD00000000000001BLL;
  v78._object = 0x80000001000DE7E0;
  String.append(_:)(v78);
  v79._countAndFlagsBits = 0x65736C6166;
  v79._object = 0xE500000000000000;
  String.append(_:)(v79);
  v80._countAndFlagsBits = 0xD000000000000015;
  v80._object = 0x80000001000DE800;
  String.append(_:)(v80);
  v81._countAndFlagsBits = 0x65736C6166;
  v81._object = 0xE500000000000000;
  String.append(_:)(v81);
  v82._countAndFlagsBits = 0xD00000000000001DLL;
  v82._object = 0x80000001000DE820;
  String.append(_:)(v82);
  dispatch thunk of Message.transcriptionStatus.getter();
  v83 = TranscriptionStatus.rawValue.getter();
  v84 = TranscriptionStatus.rawValue.getter();
  v85 = v83 == v84;
  if (v83 == v84)
  {
    v86 = 0x65736C6166;
  }

  else
  {
    v86 = 1702195828;
  }

  if (v85)
  {
    v87 = 0xE500000000000000;
  }

  else
  {
    v87 = 0xE400000000000000;
  }

  v88 = v87;
  String.append(_:)(*&v86);

  v89._object = 0x80000001000DE840;
  v89._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v89);
  dispatch thunk of Message.mailboxType.getter();
  v90 = MailboxType.rawValue.getter();
  v91 = MailboxType.rawValue.getter();
  v92 = v90 == v91;
  if (v90 == v91)
  {
    v93 = 1702195828;
  }

  else
  {
    v93 = 0x65736C6166;
  }

  if (v92)
  {
    v94 = 0xE400000000000000;
  }

  else
  {
    v94 = 0xE500000000000000;
  }

  v95 = v94;
  String.append(_:)(*&v93);

  v96._object = 0x80000001000DE860;
  v96._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v96);
  v97 = atomic_load((v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyIsDeleted));
  if (v97)
  {
    v98 = 1702195828;
  }

  else
  {
    v98 = 0x65736C6166;
  }

  if (v97)
  {
    v99 = 0xE400000000000000;
  }

  else
  {
    v99 = 0xE500000000000000;
  }

  v100 = v99;
  String.append(_:)(*&v98);

  v101._countAndFlagsBits = 0xD000000000000012;
  v101._object = 0x80000001000DE880;
  String.append(_:)(v101);
  v102 = dispatch thunk of Message.isSensitive.getter();
  v103 = (v102 & 1) == 0;
  if (v102)
  {
    v104 = 1702195828;
  }

  else
  {
    v104 = 0x65736C6166;
  }

  if (v103)
  {
    v105 = 0xE500000000000000;
  }

  else
  {
    v105 = 0xE400000000000000;
  }

  v106 = v105;
  String.append(_:)(*&v104);

  v107._object = 0xEE00203A4C525561;
  v107._countAndFlagsBits = 0x746164202020200ALL;
  String.append(_:)(v107);
  v108 = v147;
  sub_1000B30F0(v147);
  v109._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v109);

  v110._countAndFlagsBits = 0xD000000000000013;
  v110._object = 0x80000001000DE8A0;
  String.append(_:)(v110);
  sub_1000B30F0(v108);
  v111._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v111);

  v112._countAndFlagsBits = 0xD000000000000014;
  v112._object = 0x80000001000DE8C0;
  String.append(_:)(v112);
  sub_1000B30F0(v108);
  v113._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v113);

  v114._countAndFlagsBits = 0x527369202020200ALL;
  v114._object = 0xEC000000203A5454;
  String.append(_:)(v114);
  v115 = dispatch thunk of Message.isRTT.getter();
  v116 = (v115 & 1) == 0;
  if (v115)
  {
    v117 = 1702195828;
  }

  else
  {
    v117 = 0x65736C6166;
  }

  if (v116)
  {
    v118 = 0xE500000000000000;
  }

  else
  {
    v118 = 0xE400000000000000;
  }

  v119 = v118;
  String.append(_:)(*&v117);

  v120._countAndFlagsBits = 0xD000000000000016;
  v120._object = 0x80000001000DE8E0;
  String.append(_:)(v120);
  v121 = sub_1000B3514();
  v122 = (v121 & 1) == 0;
  if (v121)
  {
    v123 = 1702195828;
  }

  else
  {
    v123 = 0x65736C6166;
  }

  if (v122)
  {
    v124 = 0xE500000000000000;
  }

  else
  {
    v124 = 0xE400000000000000;
  }

  v125 = v124;
  String.append(_:)(*&v123);

  v126._countAndFlagsBits = 0xD000000000000011;
  v126._object = 0x80000001000DE900;
  String.append(_:)(v126);
  v149 = sub_1000B2EEC();
  sub_1000525C4(&qword_100126370);
  v127._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v127);

  v128._countAndFlagsBits = 0xD000000000000018;
  v128._object = 0x80000001000DE920;
  String.append(_:)(v128);
  v129 = atomic_load((v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_didLoadTranscript));
  if (v129)
  {
    v130 = 1702195828;
  }

  else
  {
    v130 = 0x65736C6166;
  }

  if (v129)
  {
    v131 = 0xE400000000000000;
  }

  else
  {
    v131 = 0xE500000000000000;
  }

  v132 = v131;
  String.append(_:)(*&v130);

  v133._countAndFlagsBits = 0x447369202020200ALL;
  v133._object = 0xEE00203A79747269;
  String.append(_:)(v133);
  v134 = atomic_load((v22 + OBJC_IVAR____TtC8FaceTime9FTMessage_isDirty));
  if (v134)
  {
    v135 = 1702195828;
  }

  else
  {
    v135 = 0x65736C6166;
  }

  if (v134)
  {
    v136 = 0xE400000000000000;
  }

  else
  {
    v136 = 0xE500000000000000;
  }

  v137 = v136;
  String.append(_:)(*&v135);

  v138._countAndFlagsBits = 0xD000000000000014;
  v138._object = 0x80000001000DE940;
  String.append(_:)(v138);
  LOBYTE(v149) = sub_1000B2C30();
  _print_unlocked<A, B>(_:_:)();
  v139._countAndFlagsBits = 0x202020202020200ALL;
  v139._object = 0xEA00000000002920;
  String.append(_:)(v139);
  return v152;
}

id sub_1000B606C(void *a1)
{
  v1 = a1;
  sub_1000B5294();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_1000B60DC()
{
  result = sub_1000B6424();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B6154(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1000B626C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1000B6424()
{
  result = qword_100126338;
  if (!qword_100126338)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100126338);
  }

  return result;
}

uint64_t sub_1000B6474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1000B6528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000B657C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for FTMessageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMessageSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B6718()
{
  result = qword_1001263E8;
  if (!qword_1001263E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001263E8);
  }

  return result;
}

uint64_t sub_1000B6774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000B818(a3, v25 - v10, &qword_100124480);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B880(v11, &qword_100124480);
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

void sub_1000B6A34(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}