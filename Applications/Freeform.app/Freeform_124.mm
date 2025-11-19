uint64_t sub_100F20F74(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1005B981C(&qword_101A1B428);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100F210B4, 0, 0);
}

uint64_t sub_100F210B4()
{
  v1 = v0;
  v0[4] = _swiftEmptyArrayStorage;
  v2 = v0 + 4;
  v3 = v2[1];
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = v2;
  if (v4)
  {
LABEL_3:
    v5 = 0;
    v72 = v3 & 0xC000000000000001;
    v68 = v1[5] + 32;
    v69 = v3 & 0xFFFFFFFFFFFFFF8;
    v73 = _swiftEmptyArrayStorage;
    v2 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v70 = v4;
    v71 = v1;
    while (1)
    {
      if (v72)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v69 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v68 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_24;
      }

      v3 = v6;
      v9 = CKRecord.allKeys()();
      v10 = *(v9 + 16);
      if (v10)
      {
        break;
      }

LABEL_4:

      v1 = v71;
      if (v5 == v70)
      {
        goto LABEL_28;
      }
    }

    v11 = (v9 + 40);
    while (1)
    {
      v1 = *v11;

      v3 = v7;
      v12 = CKRecord.subscript.getter();
      if (!v12)
      {
        goto LABEL_12;
      }

      v3 = v12;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (!v13)
      {
        goto LABEL_12;
      }

      v14._countAndFlagsBits = 0x7465737341;
      v14._object = 0xE500000000000000;
      if (!String.hasSuffix(_:)(v14))
      {
        goto LABEL_12;
      }

      if (__OFSUB__(0, String.count.getter()))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        v74 = v2;
        if (!v4)
        {
          break;
        }

        goto LABEL_3;
      }

      String.index(_:offsetBy:)();
      v15 = String.subscript.getter();
      v17 = v16;
      v3 = v18;

      if ((v15 ^ v17) >> 14)
      {
        v19 = static String._fromSubstring(_:)();
        v21 = v20;

        v3 = v7;
        v22 = sub_100EE982C(v19, v21);

        if (v22)
        {

          v3 = v74;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v73 = *v74;
        }
      }

      else
      {
LABEL_12:
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_4;
      }
    }
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_28:
  v1[14] = v73;
  if (!(v73 >> 62))
  {
    v23 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[15] = v23;
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_38:

    v32 = v1[1];

    return v32();
  }

LABEL_52:
  v67 = _CocoaArrayWrapper.endIndex.getter();
  v1[15] = v67;
  if (!v67)
  {
    goto LABEL_38;
  }

LABEL_30:
  v24 = 0;
  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v1[16] = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  v1[17] = v25;
  while (1)
  {
    v26 = v1[14];
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v27 = *(v26 + 8 * v24 + 32);
    }

    v1[18] = v27;
    v1[19] = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v28 = v1[11];
    v29 = v1[12];
    v30 = v1[10];
    sub_10000BE14(v27 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v30, &unk_1019F33C0);
    if ((*(v29 + 48))(v30, 1, v28) != 1)
    {
      break;
    }

    v31 = v1[10];

    sub_10000CAAC(v31, &unk_1019F33C0);
    v24 = v1[19];
    if (v24 == v1[15])
    {
      goto LABEL_38;
    }
  }

  v35 = v1[12];
  v34 = v1[13];
  v36 = v1[10];
  v37 = v1[11];
  v38 = *(v35 + 32);
  v1[20] = v38;
  v1[21] = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v38(v34, v36, v37);
  v39 = v27 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
  v40 = (v39 + *(type metadata accessor for CRLAssetSyncMetadata() + 20));
  v41 = v40[1];
  if (v41)
  {
    v42 = *v40;

    v1[2] = UUID.uuidString.getter();
    v1[3] = v43;
    v44._countAndFlagsBits = 46;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45._countAndFlagsBits = v42;
    v45._object = v41;
    String.append(_:)(v45);

    v46 = v1[2];
    v47 = v1[3];
  }

  else
  {
    v46 = UUID.uuidString.getter();
    v47 = v48;
  }

  v1[22] = v47;
  v49 = v1[17];
  v50 = v1[6];
  v51 = *(v50 + v1[16]);
  os_unfair_lock_lock(*(v51 + 16));
  v52 = *(v50 + v49);
  if (v52)
  {
    v53 = *(v50 + v49);
  }

  else
  {
    v54 = v1[17];
    v55 = v1[6];
    v56 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v57 = v55;
    v58 = sub_10001F1A0(v57);

    v59 = *&v55[v54];
    *&v55[v54] = v58;
    v53 = v58;

    v52 = 0;
  }

  v1[23] = v53;
  v60 = v1[13];
  v61 = *(v51 + 16);
  v62 = v52;
  os_unfair_lock_unlock(v61);
  v63 = swift_task_alloc();
  v1[24] = v63;
  v63[2] = v53;
  v63[3] = v60;
  v63[4] = v46;
  v63[5] = v47;
  v64 = swift_task_alloc();
  v1[25] = v64;
  *v64 = v1;
  v64[1] = sub_100F21760;
  v66 = v1[7];
  v65 = v1[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v65, 0, 0, 0xD00000000000001CLL, 0x800000010159D4C0, sub_100D3A4B8, v63, v66);
}

uint64_t sub_100F21760()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = sub_100F21D34;
  }

  else
  {
    v4 = *(v2 + 56);

    *(v2 + 216) = *(v4 + 48);
    *(v2 + 220) = *(v4 + 64);

    v3 = sub_100F218E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F218E4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v61 = *(v0 + 220);
  v3 = *(v0 + 96);
  v62 = *(v0 + 104);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);

  v8 = (v5 + v1);
  v9 = (v6 + *(v7 + 48));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v7 + 64);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v5, v6, v13);
  v2(v5 + v61, v6 + v12, v4);

  (*(v3 + 8))(v62, v4);
  *v8 = v10;
  v8[1] = v11;
  v14 = sub_10000CAAC(v5, &qword_101A1B428);
  v21 = *(v0 + 152);
  if (v21 == *(v0 + 120))
  {
LABEL_9:

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    while (1)
    {
      v22 = *(v0 + 112);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = v14;
      }

      else
      {
        if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v23 = *(v22 + 8 * v21 + 32);
      }

      *(v0 + 144) = v23;
      *(v0 + 152) = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v14, v22, v15, v16, v17, v18, v19, v20);
      }

      v24 = *(v0 + 88);
      v25 = *(v0 + 96);
      v26 = *(v0 + 80);
      sub_10000BE14(v23 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v26, &unk_1019F33C0);
      if ((*(v25 + 48))(v26, 1, v24) != 1)
      {
        break;
      }

      v27 = *(v0 + 80);

      v14 = sub_10000CAAC(v27, &unk_1019F33C0);
      v21 = *(v0 + 152);
      if (v21 == *(v0 + 120))
      {
        goto LABEL_9;
      }
    }

    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = *(v0 + 80);
    v33 = *(v0 + 88);
    v34 = *(v31 + 32);
    *(v0 + 160) = v34;
    *(v0 + 168) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v34(v30, v32, v33);
    v35 = v23 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
    v36 = (v35 + *(type metadata accessor for CRLAssetSyncMetadata() + 20));
    v37 = v36[1];
    if (v37)
    {
      v38 = *v36;

      *(v0 + 16) = UUID.uuidString.getter();
      *(v0 + 24) = v39;
      v40._countAndFlagsBits = 46;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v38;
      v41._object = v37;
      String.append(_:)(v41);

      v42 = *(v0 + 16);
      v43 = *(v0 + 24);
    }

    else
    {
      v42 = UUID.uuidString.getter();
      v43 = v44;
    }

    *(v0 + 176) = v43;
    v45 = *(v0 + 136);
    v46 = *(v0 + 48);
    v47 = *(v46 + *(v0 + 128));
    os_unfair_lock_lock(*(v47 + 16));
    v48 = *(v46 + v45);
    if (v48)
    {
      v49 = *(v46 + v45);
    }

    else
    {
      v50 = *(v0 + 136);
      v51 = *(v0 + 48);
      v52 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v53 = v51;
      v54 = sub_10001F1A0(v53);

      v55 = *&v51[v50];
      *&v51[v50] = v54;
      v49 = v54;

      v48 = 0;
    }

    *(v0 + 184) = v49;
    v56 = *(v0 + 104);
    v57 = *(v47 + 16);
    v58 = v48;
    os_unfair_lock_unlock(v57);
    v59 = swift_task_alloc();
    *(v0 + 192) = v59;
    v59[2] = v49;
    v59[3] = v56;
    v59[4] = v42;
    v59[5] = v43;
    v60 = swift_task_alloc();
    *(v0 + 200) = v60;
    *v60 = v0;
    v60[1] = sub_100F21760;
    v20 = *(v0 + 56);
    v14 = *(v0 + 64);
    v18 = sub_100D3A4B8;
    v17 = 0x800000010159D4C0;
    v22 = 0;
    v15 = 0;
    v16 = 0xD00000000000001CLL;
    v19 = v59;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v14, v22, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_100F21D34()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100F21E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F21E68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100F21EC4()
{
  result = qword_101A233E0;
  if (!qword_101A233E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A233E0);
  }

  return result;
}

void *sub_100F21F18(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_100064110(i, v5);
    sub_1005B981C(&qword_1019F5720);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_100F22020(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = _swiftEmptyArrayStorage;
  sub_100776524(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_100064288(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v9, v16, v5);
      v25 = v12;
      v17 = v9;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        sub_100776524(v18 > 1, v19 + 1, 1);
        v12 = v25;
      }

      v12[2] = v19 + 1;
      v15(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v17, v5);
      v13 += 32;
      --v11;
      v9 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_10000CAAC(v4, &qword_1019F6990);
    return 0;
  }

  return v12;
}

void *sub_100F222FC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = _swiftEmptyArrayStorage;
  sub_100776A64(0, v3 & ~(v3 >> 63), 0);
  v4 = v15;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v13 = v6;
      sub_100006370(0, &qword_101A10AB0);
      sub_1005B981C(&unk_1019FCBE0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_10000CAAC(v11, &qword_1019FCBD8);
        return 0;
      }

      sub_100050F74(v11, v14);
      sub_100050F74(v14, v11);
      v15 = v4;
      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        sub_100776A64((v8 > 1), v9 + 1, 1);
        v4 = v15;
      }

      v4[2] = v9 + 1;
      sub_100050F74(v11, &v4[5 * v9 + 4]);
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

void *sub_100F224FC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for CRLBoardItem(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100F22684(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    (a2)(0, i & ~(i >> 63), 0);
    v6 = _swiftEmptyArrayStorage;
    if (v4)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return v6;
    }

LABEL_7:
    v16 = a2;
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      if (!v11 || !v9)
      {

        return 0;
      }

      a2 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (a2 >= v12 >> 1)
      {
        v15 = v11;
        v16(v12 > 1, a2 + 1, 1);
        v11 = v15;
      }

      _swiftEmptyArrayStorage[2] = a2 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * a2];
      v13[4] = v9;
      v13[5] = v11;
      if (v10 == v4)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
    goto LABEL_7;
  }

  return v6;
}

void *sub_100F22830(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for CRLShapeItem();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100F22994(void *result)
{
  if (!result)
  {
    return result;
  }

  v2 = v1;
  v3 = result;
  v4 = [v2 infosForSelectionPath:v3];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_100B39D1C(*(v5 + 16), 0);
    v8 = sub_100B3A59C(&v18, (v7 + 4), v6, v5);
    sub_100035F90();
    if (v8 == v6)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_6:
  v9 = sub_100F21F18(v7);

  if (!v9)
  {
    return 0;
  }

  v18 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v11 = 0;
      while ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v16 = v18;
          goto LABEL_23;
        }

LABEL_13:
        v14 = [v2 repsForInfo:v12];
        sub_100006370(0, &qword_1019FB7A0);
        sub_100605614();
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        sub_100799748(v15);
        ++v11;
        if (v13 == v10)
        {
          goto LABEL_18;
        }
      }

      if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_21:
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    v12 = *(v9 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_22:
  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  v17 = sub_100E93DC8(v16);

  return v17;
}

uint64_t sub_100F22BD4(void *a1, _BYTE *a2, uint64_t a3)
{
  result = [a1 respondsToSelector:"shouldSuppressMiniFormatter"];
  if (result)
  {
    result = [a1 shouldSuppressMiniFormatter];
    if (result)
    {
      result = swift_beginAccess();
      *(a3 + 16) = 1;
      *a2 = 1;
    }
  }

  return result;
}

id sub_100F22C98()
{
  result = [v0 editorController];
  if (result)
  {
    v2 = result;
    if (type metadata accessor for CRLWPEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v4 = [v2 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = [v0 repForInfo:*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape)];
      swift_unknownObjectRelease();

      return v6;
    }

    else
    {

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100F22D90()
{
  result = _UISolariumEnabled();
  v1 = 46.0;
  if (result)
  {
    v1 = 44.0;
  }

  qword_101AD87B8 = *&v1;
  return result;
}

uint64_t sub_100F22DC8()
{
  v0 = 10.0;
  result = _UISolariumEnabled();
  if (result)
  {
    if (qword_1019F2608 != -1)
    {
      result = swift_once();
    }

    v0 = *&qword_101AD87B8 * 0.5;
  }

  qword_101AD87C0 = *&v0;
  return result;
}

uint64_t sub_100F22E50()
{
  result = sub_1004A48FC();
  v1 = 10;
  if (result)
  {
    v1 = 5;
  }

  qword_101AD87D0 = v1;
  return result;
}

id sub_100F22EE8(uint64_t a1, SEL *a2, void *a3)
{
  if (_UISolariumEnabled())
  {
    result = 0;
  }

  else
  {
    result = [objc_opt_self() *a2];
  }

  *a3 = result;
  return result;
}

double sub_100F22F3C()
{
  if (qword_1019F26C0 != -1)
  {
    swift_once();
  }

  result = *&qword_101AD8870 + *&qword_101AD8870 + 132.0 + 2.0;
  *&qword_101AD8800 = result;
  return result;
}

uint64_t sub_100F22FFC()
{
  result = _UISolariumEnabled();
  v1 = 44.0;
  if (result)
  {
    v1 = 28.0;
  }

  qword_101AD8820 = *&v1;
  return result;
}

uint64_t sub_100F23030()
{
  result = _UISolariumEnabled();
  v1 = 44.0;
  if (result)
  {
    v1 = 42.0;
  }

  qword_101AD8828 = *&v1;
  return result;
}

uint64_t sub_100F23084()
{
  result = _UISolariumEnabled();
  v1 = 44.0;
  if (result)
  {
    v1 = 62.0;
  }

  qword_101AD8838 = *&v1;
  return result;
}

uint64_t sub_100F230BC()
{
  result = _UISolariumEnabled();
  qword_101AD8840 = 0;
  return result;
}

uint64_t sub_100F230DC()
{
  result = _UISolariumEnabled();
  v1 = 0.0;
  if (result)
  {
    v1 = 2.0;
  }

  qword_101AD8848 = *&v1;
  return result;
}

UIFontWeight sub_100F23124()
{
  result = UIFontWeightLight;
  qword_101AD8858 = *&UIFontWeightLight;
  return result;
}

uint64_t sub_100F2313C()
{
  result = _UISolariumEnabled();
  v1 = 2;
  if (result)
  {
    v1 = 3;
  }

  qword_101AD8860 = v1;
  return result;
}

uint64_t sub_100F23184()
{
  result = _UISolariumEnabled();
  v1 = 0.0;
  if (result)
  {
    v1 = 2.0;
  }

  qword_101AD8870 = *&v1;
  return result;
}

UIFontWeight sub_100F231CC()
{
  result = UIFontWeightMedium;
  qword_101AD8880 = *&UIFontWeightMedium;
  return result;
}

uint64_t sub_100F231E4()
{
  result = _UISolariumEnabled();
  v1 = 2;
  if (result)
  {
    v1 = 3;
  }

  qword_101AD8888 = v1;
  return result;
}

UIFontWeight sub_100F23280()
{
  result = UIFontWeightMedium;
  qword_101AD88B8 = *&UIFontWeightMedium;
  return result;
}

uint64_t sub_100F23298()
{
  result = _UISolariumEnabled();
  v1 = 2;
  if (result)
  {
    v1 = 3;
  }

  qword_101AD88C0 = v1;
  return result;
}

void sub_100F2336C()
{
  v1 = type metadata accessor for CRLScenesNavigatorViewController.PlatformView();
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v2;
  v4.super_class = v1;
  v3 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v0 setView:v3];

  if (*(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) == 1)
  {
    [v0 setTransitioningDelegate:v0];
  }

  sub_100F25958();
}

id sub_100F2347C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_100F23E1C();
  [v0 updateViewConstraints];
  sub_100F28C7C(1);
  sub_100F2B100(0, 1);
  v1 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView];
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v1 setAccessibilityLabel:v5];

  return [v1 setAccessibilityContainerType:4];
}

void sub_100F23684(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) == 1)
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_101A236A8);
      v5 = [v4 crlaxViewAncestorOfType:swift_getObjCClassFromMetadata()];

      if (v5)
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          [v6 setAccessibilityViewIsModal:0];
        }
      }

      v7 = [v1 view];
      CRLAccessibilityPostLayoutChangedNotification(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100F237F0(char a1, SEL *a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  objc_msgSendSuper2(&v10, *a2, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (Strong[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.info.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v9 = [Strong traitCollection];
      sub_100642864(v9, [*&v6[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v11);
      sub_100642CDC(v11, 0);

      sub_1005EB2D4(v11);
      v6 = v9;
    }
  }
}

void sub_100F239FC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;
  v6 = v5;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v7 superview];

  if (v9)
  {
    [v9 frame];
    v11 = v10;
    v13 = v12;

    if (v4 == v11 && v6 == v13)
    {
      return;
    }
  }

  v18 = [v0 view];
  if (!v18)
  {
    goto LABEL_18;
  }

  v15 = [v0 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 superview];

  if (v17)
  {
    [v17 frame];
  }

  [v18 frame];
  [v18 setFrame:?];
}

id sub_100F23BC0()
{
  sub_100F24318();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100F23E1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver))
  {
    *&aBlock = *(*(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState) + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_objectDidChange);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100F35D24;
    *(v4 + 24) = v3;
    type metadata accessor for ObservableObjectPublisher();

    v5 = Publisher<>.sink(receiveValue:)();

    *(v1 + v2) = v5;
  }

  if (qword_1019F2600 != -1)
  {
    swift_once();
  }

  v6 = qword_101AD87B0;
  if (qword_101AD87B0)
  {
    v7 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_notificationObservers;
    swift_beginAccess();
    v8 = *(v1 + v7);
    v9 = *(v8 + 16);
    v10 = v6;
    if (v9)
    {

      v11 = sub_10006E4C8(v10);
      if (v12)
      {
        sub_100064288(*(v8 + 56) + 32 * v11, &aBlock);

        sub_10000CAAC(&aBlock, &unk_1019F4D00);
        goto LABEL_11;
      }
    }

    aBlock = 0u;
    v24 = 0u;
    sub_10000CAAC(&aBlock, &unk_1019F4D00);
    v13 = [objc_opt_self() defaultCenter];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = sub_100F35D34;
    v26 = v14;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v24 = sub_100059694;
    *(&v24 + 1) = &unk_1018A8F78;
    v15 = _Block_copy(&aBlock);
    v16 = v10;

    v17 = [v13 addObserverForName:v16 object:0 queue:0 usingBlock:v15];
    _Block_release(v15);

    *(&v24 + 1) = swift_getObjectType();
    *&aBlock = v17;
    swift_beginAccess();
    sub_100BC4ABC(&aBlock, v16);
    swift_endAccess();
  }

LABEL_11:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);

    [v20 addDecorator:v1];
  }

  sub_1005B981C(&unk_101A150B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10146BDE0;
  *(v21 + 32) = type metadata accessor for UITraitVerticalSizeClass();
  *(v21 + 40) = &protocol witness table for UITraitVerticalSizeClass;
  *(v21 + 48) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v21 + 56) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_100F24238()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100F2B100(1, 1);
  }
}

void sub_100F24294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100F239FC();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_100F28C7C(1);
  }
}

uint64_t sub_100F24318()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_notificationObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v22 = *(v0 + v1);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(v22 + 48) + 8 * v14);
      sub_100064288(*(v22 + 56) + 32 * v14, &v26);
      v25 = v15;
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 defaultCenter];
      sub_10000BE14(&v25, &v23, &unk_101A23698);

      sub_100020E58(v24, v24[3]);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_100005070(v24);
      sub_10000BE14(&v25, &v23, &unk_101A23698);
      v20 = v23;
      [v18 removeObserver:v19 name:v23 object:0];

      swift_unknownObjectRelease();
      sub_10000CAAC(&v25, &unk_101A23698);
      result = sub_100005070(v24);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  *(v0 + v1) = sub_100BD589C(_swiftEmptyArrayStorage);

  v21 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver;
  if (*(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + v21) = 0;
}

id sub_100F24590(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = type metadata accessor for CRLScenesNavigatorViewController.PlatformView();
    v6 = objc_allocWithZone(v5);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v8 = *(v1 + v2);
    *(v1 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

uint64_t sub_100F246A4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (*(v2 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) == 1)
  {
    return a1();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1008D1DDC(v10);

    if (v10[0])
    {
      sub_10000BE14(&v11, v12, &qword_101A07158);
      sub_100687C30(v10);
      if (v13)
      {
        sub_100020E58(v12, v13);
        v7 = a2();
        sub_100005070(v12);
        return v7;
      }

      v8 = &qword_101A07158;
      v9 = v12;
    }

    else
    {
      v8 = &unk_101A23610;
      v9 = v10;
    }

    sub_10000CAAC(v9, v8);
  }

  return 0;
}

id sub_100F247CC(uint64_t a1)
{
  type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 addTarget:a1 action:"grabberButtonPressedWithSender:" forControlEvents:64];
  v3 = v2;
  [v3 setPointerInteractionEnabled:1];
  v4 = v3;
  [v4 setShowsLargeContentViewer:1];
  sub_100F2BEAC();
  v5 = String._bridgeToObjectiveC()();

  [v4 setLargeContentTitle:v5];

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 imageNamed:v7];

  [v4 setLargeContentImage:v8];
  v9 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v4 addInteraction:v9];

  return v4;
}

void sub_100F24958()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
  if ((v1[OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_toggledOpenStateLocallySinceLastLibrarySnapshotUpdate] = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    sub_10091FD94();
  }
}

id sub_100F24A4C(uint64_t a1)
{
  type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 addTarget:a1 action:"previousSceneButtonPressedWithSender:" forControlEvents:64];
  v3 = v2;
  [v3 setPointerInteractionEnabled:1];
  v4 = v3;
  [v4 setShowsLargeContentViewer:1];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v4 setLargeContentTitle:v8];

  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  [v4 setLargeContentImage:v10];
  v11 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v4 addInteraction:v11];

  return v4;
}

id sub_100F24C88(uint64_t a1)
{
  type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 addTarget:a1 action:"nextSceneButtonPressedWithSender:" forControlEvents:64];
  v3 = v2;
  [v3 setPointerInteractionEnabled:1];
  v4 = v3;
  [v4 setShowsLargeContentViewer:1];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v4 setLargeContentTitle:v8];

  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  [v4 setLargeContentImage:v10];
  v11 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v4 addInteraction:v11];

  return v4;
}

uint64_t sub_100F24EA4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_100F24F34(a4, v9);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

uint64_t sub_100F24F34(char a1, void (*a2)(char *, uint64_t))
{
  v32 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = [v2 presentedViewController];
  v28 = v5;
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CRLScenesViewController_iv();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = [v20 isBeingDismissed];

      v22 = v21 ^ 1;
      if ((a1 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      sub_10103B738();
      if (v22)
      {
LABEL_6:
        sub_10000BE14(v32, &aBlock, &unk_1019F4D00);
        if (v35)
        {
          sub_10000BF3C(&aBlock, v39);
          sub_100006370(0, &qword_1019F2D90);
          v27 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v32 = *(v29 + 8);
          v32(v13, v11);
          sub_100064288(v39, v38);
          v23 = swift_allocObject();
          sub_10000BF3C(v38, (v23 + 16));
          v36 = sub_100F35D1C;
          v37 = v23;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = *"";
          v34 = sub_100007638;
          v35 = &unk_1018A8F28;
          v24 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          *&aBlock = _swiftEmptyArrayStorage;
          sub_100006718(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
          sub_1005B981C(&unk_1019FF400);
          sub_10000D494();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v25 = v27;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v24);
          swift_unknownObjectRelease();

          (*(v28 + 8))(v7, v4);
          (*(v30 + 8))(v10, v31);
          v32(v16, v11);
          return sub_100005070(v39);
        }

        else
        {
          swift_unknownObjectRelease();
          return sub_10000CAAC(&aBlock, &unk_1019F4D00);
        }
      }

      goto LABEL_11;
    }
  }

  v22 = 0;
  if (a1)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_10103BB74();
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_11:

  return swift_unknownObjectRelease();
}

uint64_t sub_100F25420(void *a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  sub_100020E58(a1, a1[3]);
  v2 = _bridgeAnythingToObjectiveC<A>(_:)();
  UIAccessibilityPostNotification(v1, v2);

  return swift_unknownObjectRelease();
}

id sub_100F254A0(uint64_t a1)
{
  type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 addTarget:a1 action:"popoverButtonPressedWithSender:" forControlEvents:64];
  v3 = v2;
  [v3 setPointerInteractionEnabled:1];
  v4 = v3;
  [v4 setShowsLargeContentViewer:1];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  [v4 setLargeContentTitle:v9];

  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  [v4 setLargeContentImage:v11];
  v12 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v4 addInteraction:v12];

  return v4;
}

void sub_100F256D4()
{
  if (*(*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState] + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating))
  {
    return;
  }

  v1 = [v0 presentedViewController];
  if (!v1)
  {
    goto LABEL_6;
  }

  v4 = v1;
  type metadata accessor for CRLScenesViewController_iv();
  v2 = swift_dynamicCastClass();
  if (!v2 || ([v2 isBeingDismissed] & 1) != 0)
  {

LABEL_6:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_101046EC0();

      swift_unknownObjectRelease();
    }

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = [objc_opt_self() isReduceMotionEnabled];
    sub_10102E160(v3 ^ 1, 0, 0);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100F2582C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

uint64_t sub_100F258B8()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___navigationButtons;
  if (*(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___navigationButtons))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___navigationButtons);
  }

  else
  {
    sub_1005B981C(&unk_1019F4D60);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10146CE00;
    *(v2 + 32) = sub_100F24A2C();
    *(v2 + 40) = sub_100F24C68();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100F25958()
{
  v1 = sub_100F24584();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingBottomCaptureSnapshotView;
  [*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingBottomCaptureSnapshotView] setHidden:1];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 addSubview:*&v0[v2]];

  v5 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  [v6 addSubview:v5];

  v8 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_bezelView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v8];
  v9 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v9];
  v10 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v10];
  v11 = sub_100F24A2C();
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v9 addSubview:*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton]];
  v12 = sub_100F24C68();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v9 addSubview:*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton]];
  v13 = sub_100F25480();
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v9 addSubview:*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton]];
  v14 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v14];
  v15 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v15];
  v16 = sub_100F247AC();
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v9 addSubview:*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton]];
  v17 = sub_100F24578();
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingTopCaptureSnapshotView;
  [*&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingTopCaptureSnapshotView] setHidden:1];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 addSubview:*&v0[v18]];
}

id sub_100F25C7C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_100F25CE0(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView) widthAnchor];
  if (qword_1019F2690 != -1)
  {
    swift_once();
  }

  v3 = *&qword_101AD8840;
  if (qword_1019F2688 != -1)
  {
    swift_once();
  }

  v4 = *&qword_101AD8838;
  if (qword_1019F2698 != -1)
  {
    swift_once();
  }

  v5 = *&qword_101AD8848;
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.getter();

  v8 = 0.0;
  if (v14 == 1)
  {
    if (qword_1019F2650 != -1)
    {
      swift_once();
    }

    v8 = *&qword_101AD8800;
  }

  v9 = [v2 constraintEqualToConstant:v3 + v4 + v5 + v8];

  v10 = String._bridgeToObjectiveC()();
  [v9 setIdentifier:v10];

  type metadata accessor for UILayoutPriority(0);
  sub_100006718(&qword_1019F53D0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  v11 = sub_100B48314(v13);

  return v11;
}

void *sub_100F25F9C(uint64_t a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1014B91D0;
  v3 = v2;
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView);
  v5 = [v4 topAnchor];
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_bezelView);
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  v9 = String._bridgeToObjectiveC()();
  [v8 setIdentifier:v9];

  v3[4] = v8;
  v10 = [v4 leadingAnchor];
  v11 = [v6 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  v13 = String._bridgeToObjectiveC()();
  [v12 setIdentifier:v13];

  v3[5] = v12;
  v14 = [v4 trailingAnchor];
  v15 = [v6 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = String._bridgeToObjectiveC()();
  [v16 setIdentifier:v17];

  v3[6] = v16;
  v18 = [v4 bottomAnchor];
  v19 = [v6 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  v21 = String._bridgeToObjectiveC()();
  [v20 setIdentifier:v21];

  v3[7] = v20;
  v22 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView);
  v23 = [v22 topAnchor];
  v24 = [v6 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  v26 = String._bridgeToObjectiveC()();
  [v25 setIdentifier:v26];

  v3[8] = v25;
  v27 = [v22 leadingAnchor];
  v28 = [v6 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  v30 = String._bridgeToObjectiveC()();
  [v29 setIdentifier:v30];

  v3[9] = v29;
  v31 = [v22 trailingAnchor];
  v32 = [v6 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  v34 = String._bridgeToObjectiveC()();
  [v33 setIdentifier:v34];

  v3[10] = v33;
  v35 = [v22 bottomAnchor];
  v36 = [v6 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  v38 = String._bridgeToObjectiveC()();
  [v37 setIdentifier:v38];

  v3[11] = v37;
  v39 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView);
  v40 = [v39 widthAnchor];
  v41 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
  v42 = [v40 constraintEqualToConstant:1.0];

  v43 = String._bridgeToObjectiveC()();
  [v42 setIdentifier:v43];

  v3[12] = v42;
  v44 = [v39 centerYAnchor];
  v45 = [v22 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  v47 = String._bridgeToObjectiveC()();
  [v46 setIdentifier:v47];

  v3[13] = v46;
  v143 = v39;
  v48 = [v39 leadingAnchor];
  v49 = [v22 leadingAnchor];
  v50 = 50.0;
  if (!*(a1 + v41))
  {
    v50 = 0.0;
  }

  v51 = [v48 constraintEqualToAnchor:v49 constant:v50];

  v52 = String._bridgeToObjectiveC()();
  [v51 setIdentifier:v52];

  v3[14] = v51;
  v53 = sub_100F24A2C();
  v54 = [v53 widthAnchor];

  v55 = a1;
  if (*(a1 + v41))
  {
    v56 = 34.0;
  }

  else
  {
    v56 = 44.0;
  }

  v57 = [v54 constraintEqualToConstant:v56];

  v58 = String._bridgeToObjectiveC()();
  [v57 setIdentifier:v58];

  v3[15] = v57;
  v59 = v3;
  v60 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton;
  v144 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton;
  v61 = [*(v55 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton) topAnchor];
  v62 = [v22 topAnchor];
  if (*(v55 + v41))
  {
    v63 = 6.0;
  }

  else
  {
    v63 = 0.0;
  }

  v64 = [v61 constraintEqualToAnchor:v62 constant:v63];

  v65 = String._bridgeToObjectiveC()();
  [v64 setIdentifier:v65];

  v59[16] = v64;
  v66 = v55;
  v67 = [*(v55 + v60) bottomAnchor];
  v68 = [v22 bottomAnchor];
  v69 = -0.0;
  if (*(v55 + v41))
  {
    v69 = -6.0;
  }

  v70 = [v67 constraintEqualToAnchor:v68 constant:v69];

  v71 = String._bridgeToObjectiveC()();
  [v70 setIdentifier:v71];

  v72 = v59;
  v59[17] = v70;
  v73 = v66;
  v74 = sub_100F25480();
  v75 = [v74 widthAnchor];

  if (*(v66 + v41))
  {
    v76 = 34.0;
  }

  else
  {
    v76 = 44.0;
  }

  v77 = [v75 constraintEqualToConstant:v76];

  v78 = String._bridgeToObjectiveC()();
  [v77 setIdentifier:v78];

  v72[18] = v77;
  v79 = v72;
  v80 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton;
  v81 = [*(v66 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton) topAnchor];
  v145 = v22;
  v82 = [v22 topAnchor];
  if (*(v66 + v41))
  {
    v83 = 6.0;
  }

  else
  {
    v83 = 0.0;
  }

  v84 = [v81 constraintEqualToAnchor:v82 constant:v83];

  v85 = String._bridgeToObjectiveC()();
  [v84 setIdentifier:v85];

  v86 = v79;
  v79[19] = v84;
  v87 = [*(v73 + v80) leadingAnchor];
  v88 = [*(v73 + v144) trailingAnchor];
  v89 = 21.0;
  v90 = 21.0;
  if ((*(v73 + v41) & 1) == 0)
  {
    if (qword_1019F26C0 != -1)
    {
      swift_once();
    }

    v90 = *&qword_101AD8870;
  }

  v91 = [v87 constraintEqualToAnchor:v88 constant:v90];

  v92 = String._bridgeToObjectiveC()();
  [v91 setIdentifier:v92];

  v93 = v79;
  v79[20] = v91;
  v94 = [*(v73 + v80) trailingAnchor];
  v95 = sub_100F24C68();
  v96 = [v95 leadingAnchor];

  if ((*(v73 + v41) & 1) == 0)
  {
    if (qword_1019F26C0 != -1)
    {
      swift_once();
    }

    v89 = *&qword_101AD8870;
  }

  v97 = [v94 constraintEqualToAnchor:v96 constant:-v89];

  v98 = String._bridgeToObjectiveC()();
  [v97 setIdentifier:v98];

  v79[21] = v97;
  v99 = [*(v73 + v80) bottomAnchor];
  v100 = [v145 bottomAnchor];
  if (*(v73 + v41))
  {
    v101 = -6.0;
  }

  else
  {
    v101 = -0.0;
  }

  v102 = [v99 constraintEqualToAnchor:v100 constant:v101];

  v103 = String._bridgeToObjectiveC()();
  [v102 setIdentifier:v103];

  v79[22] = v102;
  v104 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton;
  v105 = [*(v73 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton) widthAnchor];
  v106 = v105;
  v107 = 44.0;
  if (*(v73 + v41))
  {
    v107 = 34.0;
  }

  v108 = [v105 constraintEqualToConstant:v107];

  v109 = String._bridgeToObjectiveC()();
  [v108 setIdentifier:v109];

  v86[23] = v108;
  v110 = [*(v73 + v104) topAnchor];
  v111 = [v145 topAnchor];
  v112 = 0.0;
  if (*(v73 + v41))
  {
    v112 = 6.0;
  }

  v113 = [v110 constraintEqualToAnchor:v111 constant:v112];

  v114 = String._bridgeToObjectiveC()();
  [v113 setIdentifier:v114];

  v93[24] = v113;
  v115 = [*(v73 + v104) bottomAnchor];
  v116 = [v145 bottomAnchor];
  if (*(v73 + v41))
  {
    v117 = -6.0;
  }

  else
  {
    v117 = -0.0;
  }

  v118 = [v115 constraintEqualToAnchor:v116 constant:v117];

  v119 = String._bridgeToObjectiveC()();
  [v118 setIdentifier:v119];

  v93[25] = v118;
  v120 = *(v73 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView);
  v121 = [v120 widthAnchor];
  v122 = [v143 widthAnchor];
  v123 = [v121 constraintEqualToAnchor:v122];

  v124 = String._bridgeToObjectiveC()();
  [v123 setIdentifier:v124];

  v93[26] = v123;
  v125 = [v120 centerYAnchor];
  v126 = [v145 centerYAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];

  v128 = String._bridgeToObjectiveC()();
  [v127 setIdentifier:v128];

  v93[27] = v127;
  v129 = *(v73 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView);
  v130 = [v129 topAnchor];
  v131 = [v145 topAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];

  v133 = String._bridgeToObjectiveC()();
  [v132 setIdentifier:v133];

  v93[28] = v132;
  v134 = [v129 leadingAnchor];
  v135 = [v145 leadingAnchor];
  v136 = [v134 constraintEqualToAnchor:v135];

  v137 = String._bridgeToObjectiveC()();
  [v136 setIdentifier:v137];

  v93[29] = v136;
  v138 = [v129 bottomAnchor];
  v139 = [v145 bottomAnchor];
  v140 = [v138 constraintEqualToAnchor:v139];

  v141 = String._bridgeToObjectiveC()();
  [v140 setIdentifier:v141];

  v93[30] = v140;
  return v93;
}

uint64_t sub_100F27198(uint64_t a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10147F420;
  v3 = sub_100F247AC();
  v4 = [v3 widthAnchor];

  if (qword_1019F2688 != -1)
  {
    swift_once();
  }

  v5 = [v4 constraintEqualToConstant:*&qword_101AD8838];

  v6 = String._bridgeToObjectiveC()();
  [v5 setIdentifier:v6];

  *(v2 + 32) = v5;
  v7 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton;
  v8 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton) topAnchor];
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView);
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  v12 = String._bridgeToObjectiveC()();
  [v11 setIdentifier:v12];

  *(v2 + 40) = v11;
  v13 = [*(a1 + v7) trailingAnchor];
  v14 = [v9 trailingAnchor];
  if (qword_1019F2698 != -1)
  {
    swift_once();
  }

  v15 = [v13 constraintEqualToAnchor:v14 constant:-*&qword_101AD8848];

  v16 = String._bridgeToObjectiveC()();
  [v15 setIdentifier:v16];

  *(v2 + 48) = v15;
  v17 = [*(a1 + v7) bottomAnchor];
  v18 = [v9 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = String._bridgeToObjectiveC()();
  [v19 setIdentifier:v20];

  *(v2 + 56) = v19;
  v21 = sub_100F24C68();
  v22 = [v21 trailingAnchor];

  v23 = [*(a1 + v7) leadingAnchor];
  v24 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
  v25 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle);
  if (qword_1019F2690 != -1)
  {
    swift_once();
  }

  v26 = 6.0;
  if (!v25)
  {
    v26 = 0.0;
  }

  v27 = *&qword_101AD8840;
  v28 = [v22 constraintEqualToAnchor:v23 constant:-(v26 + *&qword_101AD8840)];

  v29 = String._bridgeToObjectiveC()();
  [v28 setIdentifier:v29];

  *(v2 + 64) = v28;
  v30 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView) trailingAnchor];
  v31 = [*(a1 + v7) leadingAnchor];
  v32 = 50.0;
  if (!*(a1 + v24))
  {
    v32 = 0.0;
  }

  v33 = [v30 constraintEqualToAnchor:v31 constant:-(v27 + v32)];

  v34 = String._bridgeToObjectiveC()();
  [v33 setIdentifier:v34];

  *(v2 + 72) = v33;
  v35 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView) trailingAnchor];
  v36 = [*(a1 + v7) leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-v27];

  v38 = String._bridgeToObjectiveC()();
  [v37 setIdentifier:v38];

  *(v2 + 80) = v37;
  *(v2 + 88) = sub_100F25C5C();
  return v2;
}

uint64_t sub_100F27760(uint64_t a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146CE00;
  v3 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView) heightAnchor];
  v4 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
  if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle))
  {
    v5 = 34.0;
  }

  else
  {
    v6 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    static Published.subscript.getter();

    if (v18)
    {
      if (qword_1019F2678 != -1)
      {
        swift_once();
      }

      v8 = &qword_101AD8828;
    }

    else
    {
      if (qword_1019F2670 != -1)
      {
        swift_once();
      }

      v8 = &qword_101AD8820;
    }

    v5 = *v8;
  }

  v9 = [v3 constraintEqualToConstant:v5];

  *(v2 + 32) = v9;
  v10 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView) heightAnchor];
  if (*(a1 + v4))
  {
    v11 = 34.0;
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    static Published.subscript.getter();

    if (v17)
    {
      if (qword_1019F2678 != -1)
      {
        swift_once();
      }

      v14 = &qword_101AD8828;
    }

    else
    {
      if (qword_1019F2670 != -1)
      {
        swift_once();
      }

      v14 = &qword_101AD8820;
    }

    v11 = *v14;
  }

  v15 = [v10 constraintEqualToConstant:v11];

  *(v2 + 40) = v15;
  return v2;
}

uint64_t sub_100F27A60(uint64_t a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10147AD40;
  v3 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView) heightAnchor];
  if (qword_1019F2608 != -1)
  {
    swift_once();
  }

  v4 = [v3 constraintEqualToConstant:*&qword_101AD87B8];

  *(v2 + 32) = v4;
  v5 = sub_100F24A2C();
  v6 = [v5 leadingAnchor];

  v7 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView);
  v8 = [v7 leadingAnchor];
  v9 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
  v10 = 0.0;
  if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle))
  {
    v10 = 6.0;
  }

  v11 = [v6 constraintEqualToAnchor:v8 constant:v10];

  v12 = String._bridgeToObjectiveC()();
  [v11 setIdentifier:v12];

  *(v2 + 40) = v11;
  v13 = sub_100F24C68();
  v14 = [v13 trailingAnchor];

  v15 = [v7 trailingAnchor];
  v16 = -6.0;
  if (!*(a1 + v9))
  {
    v16 = -0.0;
  }

  v17 = [v14 constraintEqualToAnchor:v15 constant:v16];

  v18 = String._bridgeToObjectiveC()();
  [v17 setIdentifier:v18];

  *(v2 + 48) = v17;
  v19 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView) trailingAnchor];
  v20 = [v7 trailingAnchor];
  v21 = -50.0;
  if (!*(a1 + v9))
  {
    v21 = -0.0;
  }

  v22 = [v19 constraintEqualToAnchor:v20 constant:v21];

  v23 = String._bridgeToObjectiveC()();
  [v22 setIdentifier:v23];

  *(v2 + 56) = v22;
  v24 = [*(a1 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView) trailingAnchor];
  v25 = [v7 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  v27 = String._bridgeToObjectiveC()();
  [v26 setIdentifier:v27];

  *(v2 + 64) = v26;
  return v2;
}

id sub_100F27E3C(char *a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146CE00;
  result = [a1 view];
  if (result)
  {
    v4 = result;
    v5 = [result centerXAnchor];

    v6 = *&a1[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView];
    v7 = [v6 centerXAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];

    v9 = String._bridgeToObjectiveC()();
    [v8 setIdentifier:v9];

    *(v2 + 32) = v8;
    result = [a1 view];
    if (result)
    {
      v10 = result;
      v11 = [result safeAreaLayoutGuide];

      v12 = [v11 bottomAnchor];
      v13 = [v6 bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

      v15 = String._bridgeToObjectiveC()();
      [v14 setIdentifier:v15];

      *(v2 + 40) = v14;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100F2806C(char *a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146CE00;
  result = [a1 view];
  if (result)
  {
    v4 = result;
    v5 = [result safeAreaLayoutGuide];

    v6 = [v5 trailingAnchor];
    v7 = *&a1[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView];
    v8 = [v7 trailingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];

    v10 = String._bridgeToObjectiveC()();
    [v9 setIdentifier:v10];

    *(v2 + 32) = v9;
    result = [a1 view];
    if (result)
    {
      v11 = result;
      v12 = [result safeAreaLayoutGuide];

      v13 = [v12 bottomAnchor];
      v14 = [v7 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];

      v16 = String._bridgeToObjectiveC()();
      [v15 setIdentifier:v16];

      *(v2 + 40) = v15;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100F282C0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

id sub_100F28328(char *a1)
{
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146E8B0;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = [result widthAnchor];

  v6 = *&a1[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView];
  v7 = [v6 widthAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  v9 = String._bridgeToObjectiveC()();
  [v8 setIdentifier:v9];

  type metadata accessor for UILayoutPriority(0);
  sub_100006718(&qword_1019F53D0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  v10 = sub_100B48314(v29);

  *(v2 + 32) = v10;
  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  v12 = [result heightAnchor];

  v13 = [v6 heightAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = String._bridgeToObjectiveC()();
  [v14 setIdentifier:v15];

  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  v16 = sub_100B48314(v29);

  *(v2 + 40) = v16;
  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  v18 = [result trailingAnchor];

  v19 = [v6 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  v21 = String._bridgeToObjectiveC()();
  [v20 setIdentifier:v21];

  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  v22 = sub_100B48314(v29);

  *(v2 + 48) = v22;
  result = [a1 view];
  if (result)
  {
    v23 = result;
    v24 = [result bottomAnchor];

    v25 = [v6 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    v27 = String._bridgeToObjectiveC()();
    [v26 setIdentifier:v27];

    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    v28 = sub_100B48314(v29);

    *(v2 + 56) = v28;
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100F287EC()
{
  v35 = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v0 = sub_100F25F7C();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
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
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (([v4 isActive] & 1) == 0)
      {
        v7 = v5;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v8 = sub_100F27740();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  for (j = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (([v12 isActive] & 1) == 0)
      {
        v15 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v11;
      if (v14 == j)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v16 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
  if (v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle])
  {
    v17 = sub_100F27A40();
    sub_100798D30(v17);
    v18 = sub_100F27178();
  }

  else
  {
    v19 = sub_100F27178();
    sub_100798D30(v19);
    v18 = sub_100F27A40();
  }

  sub_100798D30(v18);
  if (v32[v16] == 1)
  {
    v20 = *&v32[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    static Published.subscript.getter();

    if (v33 == 1)
    {
      v22 = sub_100F2804C();
      sub_100798D30(v22);
      v23 = sub_100F27E1C();
    }

    else
    {
      v27 = sub_100F27E1C();
      sub_100798D30(v27);
      v23 = sub_100F2804C();
    }

    sub_100798D30(v23);
    v26 = sub_100F282A0();
  }

  else
  {
    v24 = sub_100F282A0();
    sub_100798D30(v24);
    v25 = sub_100F27E1C();
    sub_100798D30(v25);
    v26 = sub_100F2804C();
  }

  sub_100798D30(v26);
  v28 = objc_opt_self();
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 deactivateConstraints:isa];

  v30 = Array._bridgeToObjectiveC()().super.isa;
  [v28 activateConstraints:v30];

  v34.receiver = v32;
  v34.super_class = type metadata accessor for CRLScenesNavigatorViewController();
  objc_msgSendSuper2(&v34, "updateViewConstraints");
}

void sub_100F28C7C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Glass._GlassVariant();
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_138;
  }

  v6 = v5;
  v238 = a1;
  [v5 setClipsToBounds:0];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_138:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [v8 setBackgroundColor:v10];

  v11 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView];
  [v11 setClipsToBounds:0];
  v242 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
  if (v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle] == 1)
  {
    if (_UISolariumEnabled())
    {
      goto LABEL_9;
    }

    v12 = [v11 layer];
    [v12 crl_applyDefaultCanvasOverlayUIShadowSettings];
  }

  else
  {
    v13 = [v11 layer];
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    v15 = [v9 clearColor];
    v12 = [v15 CGColor];

    [v14 setShadowColor:v12];
  }

LABEL_9:
  if (_UISolariumEnabled())
  {
    if (v2[v242] == 1)
    {
      UIView._background.getter();
      v16 = v245;
      sub_10000CAAC(v244, &qword_101A23690);
      if (!v16)
      {
        static _Glass._GlassVariant.regular.getter();
        v245 = type metadata accessor for _Glass();
        v246 = &protocol witness table for _Glass;
        sub_10002C58C(v244);
        _Glass.init(_:smoothness:)();
        UIView._background.setter();
      }
    }
  }

  v17 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_bezelView];
  [v17 setClipsToBounds:1];
  v18 = [v9 clearColor];
  [v17 setBackgroundColor:v18];

  v19 = [v17 layer];
  if (v19)
  {
    v20 = 23.0;
    if ((v2[v242] & 1) == 0)
    {
      if (qword_1019F2610 != -1)
      {
        v220 = v19;
        swift_once();
        v19 = v220;
      }

      v20 = *&qword_101AD87C0;
    }

    v21 = v19;
    [v19 setCornerRadius:v20];
  }

  v22 = [v17 layer];
  if (v22)
  {
    v23 = v22;
    if (v2[v242] == 1)
    {
      if (qword_1019F2628 != -1)
      {
        swift_once();
      }

      v24 = &qword_101AD87D8;
    }

    else
    {
      if (qword_1019F2618 != -1)
      {
        swift_once();
      }

      v24 = &qword_101AD87C8;
    }

    v25 = *v24;
    [v23 setCornerCurve:v25];
  }

  v26 = [v17 layer];
  if (v26)
  {
    if (v2[v242])
    {
      v27 = 15;
    }

    else
    {
      if (qword_1019F2620 != -1)
      {
        v221 = v26;
        swift_once();
        v26 = v221;
      }

      v27 = qword_101AD87D0;
    }

    v28 = v26;
    [v26 setMaskedCorners:v27];
  }

  v29 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView];
  if (qword_1019F2680 != -1)
  {
    v216 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView];
    swift_once();
    v29 = v216;
  }

  [v29 setBackgroundColor:qword_101AD8830];
  [*&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView] setBackgroundColor:sub_100F35780()];
  v30 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView];
  if (v2[v242] == 1)
  {
    if (qword_1019F2668 != -1)
    {
      swift_once();
    }

    v31 = &qword_101AD8818;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState];
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v32;
    static Published.subscript.getter();

    if (v244[0])
    {
      if (qword_1019F2660 != -1)
      {
        swift_once();
      }

      v31 = &qword_101AD8810;
    }

    else
    {
      if (qword_1019F2658 != -1)
      {
        swift_once();
      }

      v31 = &qword_101AD8808;
    }
  }

  [v30 setBackgroundColor:*v31];
  v34 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView];
  if (v2[v242])
  {
    if (qword_1019F2668 != -1)
    {
      swift_once();
    }

    v35 = &qword_101AD8818;
  }

  else
  {
    v36 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState];
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v36;
    static Published.subscript.getter();

    if (v244[0])
    {
      if (qword_1019F2660 != -1)
      {
        swift_once();
      }

      v35 = &qword_101AD8810;
    }

    else
    {
      if (qword_1019F2658 != -1)
      {
        swift_once();
      }

      v35 = &qword_101AD8808;
    }
  }

  [v34 setBackgroundColor:*v35];
  v38 = sub_100F247AC();
  [v38 setHidden:v2[v242]];

  if (v238)
  {
    v39 = qword_1019F26A0;
    v229 = *&v2[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton];
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = qword_101AD8850;
    if (qword_1019F26A8 != -1)
    {
      swift_once();
    }

    v41 = *&qword_101AD8858;
    if (qword_1019F26B0 != -1)
    {
      swift_once();
    }

    v234 = v2;
    if (qword_1019F26B8 != -1)
    {
      swift_once();
    }

    v42 = qword_101AD8868;
    v43 = objc_opt_self();
    v44 = String._bridgeToObjectiveC()();
    v239 = v43;
    v45 = [v43 imageNamed:v44];

    if (v45)
    {
      v46 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v40];
      v47 = [objc_opt_self() systemFontOfSize:26.0 weight:v41];

      v48 = UIImageSymbolWeightForFontWeight(v41);
      v49 = objc_opt_self();
      v50 = [v49 configurationWithPointSize:v48 weight:26.0];
      sub_1005B981C(&unk_1019F4D60);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_101465920;
      *(v51 + 32) = v42;
      sub_100006370(0, &qword_101A11110);
      v52 = v50;
      v53 = v42;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v55 = [v49 configurationWithPaletteColors:isa];

      v56 = [v52 configurationByApplyingConfiguration:v55];
      v57 = [v45 imageByApplyingSymbolConfiguration:v56];
      [v229 setImage:v57 forState:0];
    }

    else
    {
      v58 = objc_opt_self();
      v59 = [v58 _atomicIncrementAssertCount];
      v244[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v244);
      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v61 = String._bridgeToObjectiveC()();

      v62 = [v61 lastPathComponent];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v66 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v59;
      v68 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v68;
      v69 = sub_1005CF04C();
      *(inited + 104) = v69;
      *(inited + 72) = v60;
      *(inited + 136) = &type metadata for String;
      v70 = sub_1000053B0();
      *(inited + 112) = v63;
      *(inited + 120) = v65;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v70;
      *(inited + 152) = 140;
      v71 = v244[0];
      *(inited + 216) = v68;
      *(inited + 224) = v69;
      *(inited + 192) = v71;
      v72 = v60;
      v73 = v71;
      v74 = static os_log_type_t.error.getter();
      sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v75 = static os_log_type_t.error.getter();
      sub_100005404(v66, &_mh_execute_header, v75, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v76 = swift_allocObject();
      v76[2] = 8;
      v76[3] = 0;
      v76[4] = 0;
      v76[5] = 0;
      v77 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      [v58 handleFailureInFunction:v52 file:v45 lineNumber:140 isFatal:0 format:v57 args:v77];
    }

    v78 = v234;

    v79 = sub_100F25480();
    if (qword_1019F2700 != -1)
    {
      v217 = v79;
      swift_once();
      v79 = v217;
    }

    v80 = qword_101AD88B0;
    if (qword_1019F2708 != -1)
    {
      v218 = v79;
      swift_once();
      v79 = v218;
    }

    v81 = *&qword_101AD88B8;
    if (qword_1019F2710 != -1)
    {
      v219 = v79;
      swift_once();
      v79 = v219;
    }

    v235 = v79;
    if (v78[v242] == 1)
    {
      if (qword_1019F2720 != -1)
      {
        swift_once();
      }

      v82 = &qword_101AD88D0;
    }

    else
    {
      if (qword_1019F2718 != -1)
      {
        swift_once();
      }

      v82 = &qword_101AD88C8;
    }

    v83 = *v82;
    v84 = String._bridgeToObjectiveC()();
    v85 = [v239 systemImageNamed:v84];

    if (v85)
    {
      v86 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v80];
      v230 = [objc_opt_self() systemFontOfSize:20.0 weight:v81];

      v87 = UIImageSymbolWeightForFontWeight(v81);
      v88 = objc_opt_self();
      v89 = [v88 configurationWithPointSize:v87 weight:20.0];
      sub_1005B981C(&unk_1019F4D60);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_101465920;
      *(v90 + 32) = v83;
      sub_100006370(0, &qword_101A11110);
      v91 = v83;
      v92 = v89;
      v93 = Array._bridgeToObjectiveC()().super.isa;

      v94 = [v88 configurationWithPaletteColors:v93];

      v95 = [v92 configurationByApplyingConfiguration:v94];
      v96 = [v85 imageByApplyingSymbolConfiguration:v95];
      [v235 setImage:v96 forState:0];
    }

    else
    {
      v231 = v83;
      v226 = objc_opt_self();
      v97 = [v226 _atomicIncrementAssertCount];
      v244[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v244);
      StaticString.description.getter();
      v98 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v99 = String._bridgeToObjectiveC()();

      v100 = [v99 lastPathComponent];

      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v104 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v105 = swift_initStackObject();
      *(v105 + 16) = xmmword_10146CA70;
      *(v105 + 56) = &type metadata for Int32;
      *(v105 + 64) = &protocol witness table for Int32;
      *(v105 + 32) = v97;
      v106 = sub_100006370(0, &qword_1019F4D30);
      *(v105 + 96) = v106;
      v107 = sub_1005CF04C();
      *(v105 + 104) = v107;
      *(v105 + 72) = v98;
      *(v105 + 136) = &type metadata for String;
      v108 = sub_1000053B0();
      *(v105 + 112) = v101;
      *(v105 + 120) = v103;
      *(v105 + 176) = &type metadata for UInt;
      *(v105 + 184) = &protocol witness table for UInt;
      *(v105 + 144) = v108;
      *(v105 + 152) = 125;
      v109 = v244[0];
      *(v105 + 216) = v106;
      *(v105 + 224) = v107;
      *(v105 + 192) = v109;
      v110 = v98;
      v111 = v109;
      v112 = static os_log_type_t.error.getter();
      sub_100005404(v104, &_mh_execute_header, v112, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v105);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v113 = static os_log_type_t.error.getter();
      sub_100005404(v104, &_mh_execute_header, v113, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v114 = swift_allocObject();
      v114[2] = 8;
      v114[3] = 0;
      v114[4] = 0;
      v114[5] = 0;
      v115 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v92 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v85 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v96 = String._bridgeToObjectiveC()();

      [v226 handleFailureInFunction:v92 file:v85 lineNumber:125 isFatal:0 format:v96 args:v115];
    }

    v116 = sub_100F24A2C();
    if (qword_1019F26C8 != -1)
    {
      swift_once();
    }

    v117 = qword_101AD8878;
    if (qword_1019F26D0 != -1)
    {
      swift_once();
    }

    v118 = *&qword_101AD8880;
    if (qword_1019F26D8 != -1)
    {
      swift_once();
    }

    if (v78[v242] == 1)
    {
      if (qword_1019F26F0 != -1)
      {
        swift_once();
      }

      v119 = &qword_101AD88A0;
    }

    else
    {
      if (qword_1019F26E0 != -1)
      {
        swift_once();
      }

      v119 = &qword_101AD8890;
    }

    v120 = *v119;
    v232 = v116;
    if (v78[v242] == 1)
    {
      v121 = qword_1019F26F8;
      v122 = v120;
      if (v121 != -1)
      {
        swift_once();
      }

      v123 = &qword_101AD88A8;
    }

    else
    {
      v124 = qword_1019F26E8;
      v125 = v120;
      if (v124 != -1)
      {
        swift_once();
      }

      v123 = &qword_101AD8898;
    }

    v224 = *v123;
    v126 = String._bridgeToObjectiveC()();
    v127 = [v239 systemImageNamed:v126];

    v236 = v117;
    v227 = v120;
    if (v127)
    {
      v128 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v117];
      v222 = [objc_opt_self() systemFontOfSize:20.0 weight:v118];

      v129 = UIImageSymbolWeightForFontWeight(v118);
      v130 = objc_opt_self();
      v131 = [v130 configurationWithPointSize:v129 weight:20.0];
      sub_1005B981C(&unk_1019F4D60);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_101465920;
      *(v132 + 32) = v120;
      sub_100006370(0, &qword_101A11110);
      v133 = v120;
      v134 = v131;
      v135 = Array._bridgeToObjectiveC()().super.isa;

      v136 = [v130 configurationWithPaletteColors:v135];

      v137 = [v134 configurationByApplyingConfiguration:v136];
      v138 = [v127 imageByApplyingSymbolConfiguration:v137];
      [v232 setImage:v138 forState:0];

      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_101465920;
      *(v139 + 32) = v224;
      v140 = v224;
      v141 = Array._bridgeToObjectiveC()().super.isa;

      v142 = [v130 configurationWithPaletteColors:v141];

      v143 = [v137 configurationByApplyingConfiguration:v142];
      v144 = [v127 imageByApplyingSymbolConfiguration:v143];
      [v232 setImage:v144 forState:2];

      v145 = v227;
    }

    else
    {
      v223 = objc_opt_self();
      v146 = [v223 _atomicIncrementAssertCount];
      v244[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v244);
      StaticString.description.getter();
      v147 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v148 = String._bridgeToObjectiveC()();

      v149 = [v148 lastPathComponent];

      v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v152 = v151;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v153 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v154 = swift_initStackObject();
      *(v154 + 16) = xmmword_10146CA70;
      *(v154 + 56) = &type metadata for Int32;
      *(v154 + 64) = &protocol witness table for Int32;
      *(v154 + 32) = v146;
      v155 = sub_100006370(0, &qword_1019F4D30);
      *(v154 + 96) = v155;
      v156 = sub_1005CF04C();
      *(v154 + 104) = v156;
      *(v154 + 72) = v147;
      *(v154 + 136) = &type metadata for String;
      v157 = sub_1000053B0();
      *(v154 + 112) = v150;
      *(v154 + 120) = v152;
      *(v154 + 176) = &type metadata for UInt;
      *(v154 + 184) = &protocol witness table for UInt;
      *(v154 + 144) = v157;
      *(v154 + 152) = 125;
      v158 = v244[0];
      *(v154 + 216) = v155;
      *(v154 + 224) = v156;
      *(v154 + 192) = v158;
      v159 = v147;
      v160 = v158;
      v161 = static os_log_type_t.error.getter();
      sub_100005404(v153, &_mh_execute_header, v161, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v154);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v162 = static os_log_type_t.error.getter();
      sub_100005404(v153, &_mh_execute_header, v162, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v163 = swift_allocObject();
      v163[2] = 8;
      v163[3] = 0;
      v163[4] = 0;
      v163[5] = 0;
      v164 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v140 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v143 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v144 = String._bridgeToObjectiveC()();

      [v223 handleFailureInFunction:v140 file:v143 lineNumber:125 isFatal:0 format:v144 args:v164];

      v145 = v227;
    }

    v165 = sub_100F24C68();
    if (v78[v242] == 1)
    {
      v166 = "NSt3__120__shared_ptr_pointerIP24CRLWPParagraphTypesetterNS_10shared_ptrIS1_E27__shared_ptr_default_deleteIS1_S1_EENS_9allocatorIS1_EEEE" + 30;
      v167 = &selRef_concreteClass;
      v168 = &selRef_shouldQueueBeginScribbleMode;
      v169 = &selRef_editAccessibilityDescription_;
      v170 = v236;
      if (qword_1019F26F0 != -1)
      {
        swift_once();
      }

      v171 = &qword_101AD88A0;
    }

    else
    {
      v166 = "P24CRLWPParagraphTypesetterNS_10shared_ptrIS1_E27__shared_ptr_default_deleteIS1_S1_EENS_9allocatorIS1_EEEE";
      v167 = &selRef_concreteClass;
      v168 = &selRef_shouldQueueBeginScribbleMode;
      v169 = &selRef_editAccessibilityDescription_;
      v170 = v236;
      if (qword_1019F26E0 != -1)
      {
        swift_once();
      }

      v171 = &qword_101AD8890;
    }

    v172 = *v171;
    v228 = *v171;
    v233 = v165;
    if (v78[v242] == 1)
    {
      v173 = qword_1019F26F8;
      v174 = v172;
      if (v173 != -1)
      {
        swift_once();
      }

      v175 = &qword_101AD88A8;
    }

    else
    {
      v176 = qword_1019F26E8;
      v177 = v172;
      if (v176 != -1)
      {
        swift_once();
      }

      v175 = &qword_101AD8898;
    }

    v178 = *v175;
    v179 = String._bridgeToObjectiveC()();
    v180 = [v239 systemImageNamed:v179];

    v243 = v178;
    if (v180)
    {
      v181 = [objc_opt_self() v169[264]];
      v240 = [objc_opt_self() v168[453]];

      v182 = UIImageSymbolWeightForFontWeight(v118);
      v183 = objc_opt_self();
      v184 = [v183 v167[9]];
      sub_1005B981C(&unk_1019F4D60);
      v185 = swift_allocObject();
      v225 = *(v166 + 146);
      *(v185 + 16) = v225;
      *(v185 + 32) = v228;
      sub_100006370(0, &qword_101A11110);
      v237 = v228;
      v186 = v184;
      v187 = Array._bridgeToObjectiveC()().super.isa;

      v188 = [v183 configurationWithPaletteColors:v187];

      v189 = [v186 configurationByApplyingConfiguration:v188];
      v190 = [v180 imageByApplyingSymbolConfiguration:v189];
      [v233 setImage:v190 forState:0];

      v191 = swift_allocObject();
      *(v191 + 16) = v225;
      *(v191 + 32) = v243;
      v192 = v243;
      v193 = Array._bridgeToObjectiveC()().super.isa;

      v194 = [v183 configurationWithPaletteColors:v193];

      v195 = [v189 configurationByApplyingConfiguration:v194];
      v196 = [v180 imageByApplyingSymbolConfiguration:v195];
      [v233 setImage:v196 forState:2];
    }

    else
    {
      v241 = objc_opt_self();
      v197 = [v241 _atomicIncrementAssertCount];
      v244[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v244);
      StaticString.description.getter();
      v198 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v199 = String._bridgeToObjectiveC()();

      v200 = [v199 lastPathComponent];

      v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v203 = v202;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v204 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v205 = swift_allocObject();
      *(v205 + 16) = xmmword_10146CA70;
      *(v205 + 56) = &type metadata for Int32;
      *(v205 + 64) = &protocol witness table for Int32;
      *(v205 + 32) = v197;
      v206 = sub_100006370(0, &qword_1019F4D30);
      *(v205 + 96) = v206;
      v207 = sub_1005CF04C();
      *(v205 + 104) = v207;
      *(v205 + 72) = v198;
      *(v205 + 136) = &type metadata for String;
      v208 = sub_1000053B0();
      *(v205 + 112) = v201;
      *(v205 + 120) = v203;
      *(v205 + 176) = &type metadata for UInt;
      *(v205 + 184) = &protocol witness table for UInt;
      *(v205 + 144) = v208;
      *(v205 + 152) = 125;
      v209 = v244[0];
      *(v205 + 216) = v206;
      *(v205 + 224) = v207;
      *(v205 + 192) = v209;
      v210 = v198;
      v211 = v209;
      v212 = static os_log_type_t.error.getter();
      sub_100005404(v204, &_mh_execute_header, v212, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v205);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v213 = static os_log_type_t.error.getter();
      sub_100005404(v204, &_mh_execute_header, v213, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v214 = swift_allocObject();
      v214[2] = 8;
      v214[3] = 0;
      v214[4] = 0;
      v214[5] = 0;
      v215 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v192 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v195 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v196 = String._bridgeToObjectiveC()();

      [v241 handleFailureInFunction:v192 file:v195 lineNumber:125 isFatal:0 format:v196 args:v215];
    }
  }

  sub_100F2BA90();
}

uint64_t sub_100F2B100(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a1;
  v5 = objc_opt_self();
  LOBYTE(v6) = [v5 isReduceMotionEnabled];
  v55 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState;
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static Published.subscript.getter();

  if ((aBlock[0] & 1) == 0 && (*(v3 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10102E160([v5 isReduceMotionEnabled] ^ 1, 0, 0);
    swift_unknownObjectRelease();
  }

  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v9 = sub_100F25C5C();
  [v9 constant];
  v11 = v10;

  v12 = v3;
  if (qword_1019F2690 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v13 = *&qword_101AD8840;
    if (qword_1019F2688 != -1)
    {
      swift_once();
    }

    v14 = v13 + *&qword_101AD8838;
    if (qword_1019F2698 != -1)
    {
      swift_once();
    }

    v15 = v14 + *&qword_101AD8848;
    v16 = *(v12 + v55);
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    static Published.subscript.getter();

    v54 = v12;
    if (LOBYTE(aBlock[0]) == 1)
    {
      if (qword_1019F2650 != -1)
      {
        swift_once();
      }

      if (v11 == v15 + *&qword_101AD8800)
      {
        goto LABEL_48;
      }
    }

    else if (v11 == v15)
    {
      goto LABEL_48;
    }

    v18 = v6 | ~v4;
    v19 = *(v12 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___drawerWidthConstraint);
    v20 = *(v12 + v55);
    swift_getKeyPath();
    LOBYTE(v4) = swift_getKeyPath();
    if (v18)
    {
      break;
    }

    v24 = v19;
    v25 = v20;
    static Published.subscript.getter();

    v26 = 0.0;
    if (LOBYTE(aBlock[0]) == 1)
    {
      if (qword_1019F2650 != -1)
      {
        swift_once();
      }

      v26 = *&qword_101AD8800;
    }

    [v24 setConstant:v15 + v26];

    v53 = sub_100F27740();
    if (v53 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
LABEL_47:

        v37 = objc_opt_self();
        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v39 + 24) = a2 & 1;
        *(v39 + 32) = v52;
        aBlock[4] = sub_100F35D0C;
        aBlock[5] = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_1018A8ED8;
        v40 = _Block_copy(aBlock);

        [v37 animateWithDuration:v40 animations:0.3];
        _Block_release(v40);
        goto LABEL_48;
      }
    }

    else
    {
      v27 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_47;
      }
    }

    v6 = 0;
    v28 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle;
    v29 = v53 & 0xC000000000000001;
    v30 = v53 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v29)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v30 + 16))
        {
          goto LABEL_44;
        }

        v32 = *(v53 + 8 * v6 + 32);
      }

      v33 = v32;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (*(v12 + v28))
      {
        v31 = 34.0;
      }

      else
      {
        v34 = *(v12 + v55);
        swift_getKeyPath();
        swift_getKeyPath();
        v35 = v34;
        static Published.subscript.getter();

        if (aBlock[0])
        {
          v36 = &qword_101AD8828;
          v30 = v53 & 0xFFFFFFFFFFFFFF8;
          v29 = v53 & 0xC000000000000001;
          if (qword_1019F2678 != -1)
          {
            swift_once();
            v36 = &qword_101AD8828;
          }
        }

        else
        {
          v36 = &qword_101AD8820;
          v30 = v53 & 0xFFFFFFFFFFFFFF8;
          v29 = v53 & 0xC000000000000001;
          if (qword_1019F2670 != -1)
          {
            swift_once();
            v36 = &qword_101AD8820;
          }
        }

        v31 = *v36;
        v12 = v54;
      }

      [v33 setConstant:v31];

      ++v6;
      if (v4 == v27)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v21 = v19;
  v22 = v20;
  static Published.subscript.getter();

  v23 = 0.0;
  if (LOBYTE(aBlock[0]) == 1)
  {
    if (qword_1019F2650 != -1)
    {
      swift_once();
    }

    v23 = *&qword_101AD8800;
  }

  [v21 setConstant:v15 + v23];

LABEL_48:
  v41 = sub_100F258B8();
  v42 = v41;
  if (v41 >> 62)
  {
    goto LABEL_60;
  }

  v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43)
  {
LABEL_50:
    v44 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v45 = v54;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v45 = v54;
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v46 = *(v42 + 8 * v44 + 32);
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          v43 = _CocoaArrayWrapper.endIndex.getter();
          if (!v43)
          {
            break;
          }

          goto LABEL_50;
        }
      }

      v48 = *(v45 + v55);
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v48;
      static Published.subscript.getter();

      [v46 setEnabled:LOBYTE(aBlock[0])];
      ++v44;
    }

    while (v47 != v43);
  }

  swift_beginAccess();
  if ((*(v52 + 16) & 1) == 0)
  {
    sub_100F28C7C(a2 & 1);
  }

  sub_100F2BA90();
}

void sub_100F2B968(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong view];

    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = [v7 superview];

    v9 = [v8 superview];
    [v9 layoutIfNeeded];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_100F28C7C(a2 & 1);
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
}

void sub_100F2BA90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  if (v31)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle) ^ 1;
  }

  v4 = sub_100F24A2C();
  [v4 setAccessibilityElementsHidden:v3 & 1];

  v5 = sub_100F25480();
  [v5 setAccessibilityElementsHidden:v3 & 1];

  v6 = sub_100F24C68();
  [v6 setAccessibilityElementsHidden:v3 & 1];

  v7 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();

  [v9 setAccessibilityLabel:v14];

  v15 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton);
  v16 = [v8 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityLabel:v20];

  v21 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton);
  v22 = [v8 mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = String._bridgeToObjectiveC()();

  [v21 setAccessibilityLabel:v26];

  v27 = sub_100F247AC();
  sub_100F2BEAC();
  v28 = String._bridgeToObjectiveC()();

  [v27 setAccessibilityLabel:v28];

  v29 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton);
  sub_100F2BEAC();
  v30 = String._bridgeToObjectiveC()();

  [v29 setLargeContentTitle:v30];
}

uint64_t sub_100F2BEAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

uint64_t sub_100F2BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 7440) = a7;
  *(v7 + 7432) = a6;
  *(v7 + 273) = a5;
  *(v7 + 7424) = a4;
  *(v7 + 7448) = type metadata accessor for CRLSpringLayerAnimation();
  *(v7 + 7456) = swift_task_alloc();
  *(v7 + 7464) = swift_task_alloc();
  *(v7 + 7472) = type metadata accessor for CRLBasicLayerAnimation();
  *(v7 + 7480) = swift_task_alloc();
  *(v7 + 7488) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 7496) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100F2C10C, v9, v8);
}

id sub_100F2C10C()
{
  v650 = v0;
  v1 = objc_opt_self();
  [v1 flush];
  v2 = &selRef_allowResizeDelegate;
  [v1 begin];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v4 = Strong;
  sub_1008D1DDC(v0 + 4640);
  if (!*(v0 + 4640))
  {

    sub_10000CAAC(v0 + 4640, &unk_101A23610);
LABEL_21:
    *(*(*(v0 + 7424) + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState) + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) = 0;
    [v1 commit];
    goto LABEL_22;
  }

  v5 = *(v0 + 4688);
  *(v0 + 4760) = *(v0 + 4672);
  *(v0 + 4776) = v5;
  *(v0 + 4792) = *(v0 + 4704);
  *(v0 + 4808) = *(v0 + 4720);
  v6 = *(v0 + 4656);
  *(v0 + 4728) = *(v0 + 4640);
  *(v0 + 4744) = v6;
  v7 = sub_100F2464C();
  if (!v7)
  {
    sub_100687C30(v0 + 4728);

LABEL_20:

    goto LABEL_21;
  }

  v8 = v7;
  v9 = sub_100F24678();
  if (!v9)
  {
    sub_100687C30(v0 + 4728);

    goto LABEL_20;
  }

  v10 = v9;
  result = [v8 layer];
  if (!result)
  {
    __break(1u);
    goto LABEL_319;
  }

  v12 = result;
  v13 = sub_100F33DE0(result);

  if (!v13)
  {
    sub_100687C30(v0 + 4728);

    goto LABEL_20;
  }

  v635 = v13;
  result = [v10 layer];
  if (!result)
  {
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  v14 = result;
  v15 = sub_100F33DE0(result);

  v633 = v15;
  if (!v15)
  {
    sub_100687C30(v0 + 4728);

    goto LABEL_20;
  }

  v627 = v10;
  sub_10000BE14(v0 + 4760, v0 + 7336, &qword_101A07158);
  v16 = *(v0 + 7360);
  if (!v16)
  {
    sub_100687C30(v0 + 4728);

    sub_10000CAAC(v0 + 7336, &qword_101A07158);
    goto LABEL_21;
  }

  v17 = *(v0 + 7424);
  v622 = v8;
  v18 = *(*sub_100020E58((v0 + 7336), v16) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper);
  sub_100005070(v0 + 7336);
  [v635 setNeedsDisplay];
  [v635 displayIfNeeded];
  [v633 setNeedsDisplay];
  [v633 displayIfNeeded];
  [v1 commit];
  v585 = v18;
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v23 = sub_100F25480();
  [v23 bounds];
  v25 = v24;
  v27 = v26;

  v28 = sub_100121E8C(v20, v22, v25, v27);
  v30 = v29;
  v31 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton;
  [*(v17 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton) bounds];
  v33 = v32;
  v35 = v34;
  v600 = v31;
  v601 = v17;
  [*(v17 + v31) bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [v622 superview];
  v45 = [v627 superview];
  sub_1005B981C(&qword_1019F54E0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10146C6B0;
  *(v0 + 7416) = sub_1005B981C(&qword_101A172E0);
  sub_1005B981C(&unk_101A10AC0);
  String.init<A>(describing:)();
  v47 = String._bridgeToObjectiveC()();

  v616 = sub_100006370(0, &qword_1019F4D30);
  *(v46 + 56) = v616;
  *&v48 = COERCE_DOUBLE(sub_1005CF04C());
  *(v46 + 32) = v47;
  v636 = v46 + 32;
  v625 = v46;
  v614 = *&v48;
  *(v46 + 64) = *&v48;
  v575 = v4;
  v578 = v44;
  v49 = v45;
  if (!v44)
  {
    if (!v45)
    {
      v615 = *&v43;
      v617 = v41;
      v620 = v39;
      v637 = v37;
      v53 = *&v35;
      v54 = v33;
      v55 = v30;
      v56 = v28;
      goto LABEL_56;
    }

    goto LABEL_27;
  }

  if (!v45 || (sub_100006370(0, &qword_1019F6D00), v50 = v44, v51 = v49, v52 = static NSObject.== infix(_:_:)(), v51, v50, (v52 & 1) == 0))
  {
LABEL_27:
    v613 = *&v49;
    v612 = objc_opt_self();
    v58 = [(ValueMetadata *)v612 _atomicIncrementAssertCount];
    *&v641 = [objc_allocWithZone(NSString) init];
    sub_100604538(v625, &v641);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    v61 = [v60 lastPathComponent];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.crlAssert;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_10146CA70;
    *(v66 + 56) = &type metadata for Int32;
    *(v66 + 64) = &protocol witness table for Int32;
    *(v66 + 32) = v58;
    *(v66 + 96) = v616;
    *(v66 + 104) = v614;
    *(v66 + 72) = v59;
    *(v66 + 136) = &type metadata for String;
    v67 = sub_1000053B0();
    *(v66 + 112) = v62;
    *(v66 + 120) = v64;
    *(v66 + 176) = &type metadata for UInt;
    *(v66 + 184) = &protocol witness table for UInt;
    *(v66 + 144) = v67;
    *(v66 + 152) = 1193;
    v68 = v641;
    *(v66 + 216) = v616;
    *(v66 + 224) = v614;
    *(v66 + 192) = v68;
    v69 = v59;
    v70 = v68;
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v66);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v72, "expected equality between two values of type %{public}@", 55, 2, v625);

    type metadata accessor for __VaListBuilder();
    v73 = swift_allocObject();
    v73[2] = 8;
    v73[3] = 0;
    v74 = v73 + 3;
    v73[4] = 0;
    v73[5] = 0;
    v75 = *(v625 + 16);
    if (!v75)
    {
LABEL_54:
      v615 = *&v43;
      v617 = v41;
      v620 = v39;
      v637 = v37;
      v53 = *&v35;
      v54 = v33;
      v55 = v30;
      v56 = v28;
      v92 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v93 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v94 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v95 = String._bridgeToObjectiveC()();

      [(ValueMetadata *)v612 handleFailureInFunction:v93 file:v94 lineNumber:1193 isFatal:0 format:v95 args:v92];

      v44 = v578;
      v2 = &selRef_allowResizeDelegate;
      goto LABEL_57;
    }

    v76 = 0;
    while (1)
    {
      sub_100020E58((v636 + 40 * v76), *(v636 + 40 * v76 + 24));
      v77 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v78 = *v74;
      v79 = *(v77 + 16);
      v80 = __OFADD__(*v74, v79);
      v81 = *v74 + v79;
      if (v80)
      {
        goto LABEL_309;
      }

      v82 = v73[4];
      if (v82 >= v81)
      {
        goto LABEL_46;
      }

      if (v82 + 0x4000000000000000 < 0)
      {
        goto LABEL_310;
      }

      v83 = v73[5];
      if (2 * v82 > v81)
      {
        v81 = 2 * v82;
      }

      v73[4] = v81;
      if ((v81 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_311;
      }

      v84 = v77;
      v85 = swift_slowAlloc();
      v86 = v85;
      v73[5] = v85;
      if (v83)
      {
        break;
      }

      v77 = v84;
      if (!v86)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_47:
      v88 = *(v77 + 16);
      if (v88)
      {
        v89 = (v77 + 32);
        v90 = *v74;
        while (1)
        {
          v91 = *v89++;
          *&v86[8 * v90] = v91;
          v90 = *v74 + 1;
          if (__OFADD__(*v74, 1))
          {
            break;
          }

          *v74 = v90;
          if (!--v88)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

LABEL_31:

      if (++v76 == v75)
      {
        goto LABEL_54;
      }
    }

    if (v85 != v83 || v85 >= &v83[8 * v78])
    {
      memmove(v85, v83, 8 * v78);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v77 = v84;
LABEL_46:
    v86 = v73[5];
    if (!v86)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v615 = *&v43;
  v617 = v41;
  v620 = v39;
  v637 = v37;
  v53 = *&v35;
  v54 = v33;
  v55 = v30;
  v56 = v28;

LABEL_56:

LABEL_57:
  v96 = *(v0 + 7424);
  [v585 bounds];
  [v585 convertRect:v44 toView:?];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  result = [v96 view];
  if (!result)
  {
LABEL_320:
    __break(1u);
    return result;
  }

  v105 = result;

  v106 = sub_1001206EC(v54, v53, v56, v55, v637, v620, v617, v615);
  v108 = v107;
  v110 = v109;
  v112 = v111;
  [v105 layoutIfNeeded];

  v113 = sub_100120414(v98, v100, v102, v104);
  v584 = v98;
  v614 = v100;
  v613 = v102;
  v612 = *&v104;
  sub_100121FD0(v98, v100, v102, v104, v113, v114, 0.9);
  v28 = v115;
  v30 = v116;
  v33 = v117;
  v35 = v118;
  [*(v601 + v600) convertRect:v44 toView:{v106, v108, v110, v112}];
  v120 = v119;
  v39 = v121;
  v41 = v122;
  *&v43 = v123;
  v124 = sub_100120414(v119, v121, v122, v123);
  v583 = v120;
  sub_100121FD0(v120, v39, v41, *&v43, v124, v125, 0.5);
  v579 = v126;
  v580 = v127;
  v581 = v129;
  v582 = v128;
  sub_1005B981C(&unk_1019F4D60);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_10146CE00;
  *(v130 + 32) = v622;
  *(v130 + 40) = v627;
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_10146CE00;
  v625 = v131;
  *(v131 + 32) = v635;
  *(v131 + 40) = v633;
  v598 = v622;
  v599 = v627;
  v564 = v635;
  v563 = v633;
  [v1 v2[274]];
  [v1 setDisableActions:1];
  v635 = v130;
  v633 = (v130 & 0xC000000000000001);
  v627 = (v130 & 0xFFFFFFFFFFFFFF8);
  if ((v130 & 0xC000000000000001) != 0)
  {
    goto LABEL_314;
  }

  v132 = v584;
  if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_312;
  }

  v133 = *(v130 + 32);
  while (1)
  {
    [v133 setClipsToBounds:0];
    v134 = [v133 layer];
    if (v134)
    {
      v135 = v134;
      [v134 setAnchorPoint:{0.5, 0.5}];
      [v135 setFrame:{v132, v614, v613, *&v612}];
      [v135 setShadowOffset:{0.0, 2.0}];
    }

    if (v633)
    {
      v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v627[2] < 2uLL)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v136 = v635[5];
    }

    v137 = v136;
    [v136 setClipsToBounds:0];
    v138 = [v137 layer];
    if (v138)
    {
      v139 = v138;
      [v138 setAnchorPoint:{0.5, 0.5}];
      [v139 setFrame:{v132, v614, v613, *&v612}];
      [v139 setShadowOffset:{0.0, 2.0}];
    }

    v623 = (v625 & 0xC000000000000001);
    if ((v625 & 0xC000000000000001) != 0)
    {
      v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v625 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_313;
      }

      v140 = *(v625 + 32);
    }

    v141 = v140;
    [v140 setMasksToBounds:1];
    [v141 setCornerCurve:kCACornerCurveContinuous];
    [v141 setAllowsEdgeAntialiasing:1];

    if (v623)
    {
      break;
    }

    if (*((v625 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v142 = *(v625 + 40);
      goto LABEL_74;
    }

LABEL_313:
    __break(1u);
LABEL_314:
    v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v132 = v584;
  }

  v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_74:
  v143 = v142;
  v570 = v0 + 4240;
  v553 = (v0 + 4504);
  v559 = v0 + 4856;
  v567 = v0 + 5136;
  v568 = v0 + 5176;
  v587 = v0 + 5256;
  v576 = v0 + 5336;
  v573 = v0 + 5416;
  v546 = v0 + 6496;
  v547 = v0 + 6576;
  v548 = v0 + 6656;
  v550 = v0 + 6736;
  v551 = v0 + 6816;
  v552 = v0 + 6896;
  v554 = v0 + 6976;
  v555 = v0 + 7056;
  v556 = v0 + 7136;
  v557 = v0 + 7216;
  v560 = (v0 + 7256);
  v558 = v0 + 7296;
  [v142 setMasksToBounds:1];
  [v143 setCornerCurve:kCACornerCurveContinuous];
  [v143 setAllowsEdgeAntialiasing:1];

  [v1 commit];
  sub_1005B981C(&unk_101A23620);
  v549 = swift_allocObject();
  *(v549 + 16) = xmmword_10146C6B0;
  v591 = swift_allocObject();
  *(v591 + 16) = xmmword_10146D2A0;
  *(v0 + 808) = 0x3F80000000000000;
  *(v0 + 1064) = 6;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v608 = *(v0 + 7488);
  v144 = *(v0 + 7480);
  v145 = *(v0 + 7472);
  v638 = qword_101AD7728;
  v146 = [v599 layer];
  sub_1006C121C(v0 + 808, v144 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 808);
  swift_unknownObjectWeakInit();
  v147 = *(v145 + 28);
  v148 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v149 = *(*(v148 - 8) + 56);
  v149(v144 + v147, 1, 1, v148);
  v609 = v148;
  v606 = v149;
  v149(v144 + *(v145 + 32), 1, 1, v148);
  swift_unknownObjectWeakAssign();

  *(v144 + 8) = xmmword_10146D9F0;
  *v144 = v638;
  *(v144 + 288) = 0;
  *(v144 + 296) = 131586;
  sub_100F3569C(v144, v608, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FB999999999999ALL;
  v565 = v638;
  v593 = v144;
  sub_100F35704(v144, type metadata accessor for CRLBasicLayerAnimation);
  v150 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v151) = 1036831949;
  LODWORD(v152) = 0.25;
  LODWORD(v153) = 0.25;
  LODWORD(v154) = 1.0;
  v155 = [v150 initWithControlPoints:v152 :v151 :v153 :v154];

  *v608 = v155;
  v605 = v145;
  *(v591 + 56) = v145;
  *(v591 + 64) = &off_1018816E0;
  v156 = sub_10002C58C((v591 + 32));
  sub_100F3569C(v608, v156, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 7200) = &type metadata for CRLBasicLayerAnimation.Def;
  v607 = sub_1005F907C();
  *(v0 + 7208) = v607;
  v157 = swift_allocObject();
  *(v0 + 7176) = v157;
  sub_1005F8AB8(v156, v157 + 16);
  v1 = 7176;
  *(sub_10002A948(v0 + 7176, *(v0 + 7200)) + 297) = 0;
  sub_1006BF678(v0 + 7176);
  sub_100F35704(v608, type metadata accessor for CRLBasicLayerAnimation);
  v158 = 0;
  v602 = swift_allocObject();
  *(v602 + 16) = xmmword_101483930;
  v159 = _swiftEmptyArrayStorage;
  v160 = v625 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v623)
    {
      v161 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v158 >= *(v160 + 16))
      {
        goto LABEL_294;
      }

      v161 = *(v625 + 8 * v158 + 32);
    }

    v162 = v161;
    *&v641 = v161;
    v1 = 0;
    sub_100F31E8C(&v641, 14, (v0 + 7016), xmmword_1014B91E0);

    if (*(v0 + 7040))
    {
      sub_100050F74((v0 + 7016), v0 + 7096);
      sub_100050F74((v0 + 7096), v0 + 6936);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v640 = v159;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v159 = sub_100B364B4(0, v159[2] + 1, 1, v159);
        v640 = v159;
      }

      v165 = v159[2];
      v164 = v159[3];
      if (v165 >= v164 >> 1)
      {
        v1 = sub_100B364B4((v164 > 1), v165 + 1, 1, v159);
        v640 = v1;
      }

      else
      {
        v1 = v159;
      }

      v166 = *(v0 + 6960);
      v167 = *(v0 + 6968);
      v168 = sub_10002A948(v0 + 6936, v166);
      v169 = *(v166 - 8);
      v170 = swift_task_alloc();
      (*(v169 + 16))(v170, v168, v166);
      sub_100725200(v165, v170, &v640, v166, v167);
      sub_100005070(v0 + 6936);

      v160 = v625 & 0xFFFFFFFFFFFFFF8;
      v159 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 7016, &unk_101A09F70);
    }

    ++v158;
  }

  while (v158 != 2);
  v171 = 0;
  *(v602 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 64) = &off_101885E50;
  *(v602 + 32) = v159;
  *(v602 + 40) = 0;
  v172 = _swiftEmptyArrayStorage;
  do
  {
    if (v633)
    {
      v173 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v171 >= v627[2])
      {
        goto LABEL_295;
      }

      v173 = v635[v171 + 4];
    }

    v174 = v173;
    *&v641 = v173;
    v1 = 0;
    sub_100F324A0(&v641, (v0 + 6776), v132, v614, v613, v612, *&v28, v30, v33, *&v35, 0x407C200000000000, v545, xmmword_1014B91F0);

    if (*(v0 + 6800))
    {
      sub_100050F74((v0 + 6776), v0 + 6856);
      sub_100050F74((v0 + 6856), v0 + 6696);
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v172;
      if ((v175 & 1) == 0)
      {
        v172 = sub_100B364B4(0, v172[2] + 1, 1, v172);
        v640 = v172;
      }

      v177 = v172[2];
      v176 = v172[3];
      if (v177 >= v176 >> 1)
      {
        v1 = sub_100B364B4((v176 > 1), v177 + 1, 1, v172);
        v640 = v1;
      }

      else
      {
        v1 = v172;
      }

      v178 = *(v0 + 6720);
      v179 = *(v0 + 6728);
      v180 = sub_10002A948(v0 + 6696, v178);
      v181 = *(v178 - 8);
      v182 = swift_task_alloc();
      (*(v181 + 16))(v182, v180, v178);
      sub_100725200(v177, v182, &v640, v178, v179);
      sub_100005070(v0 + 6696);

      v160 = v625 & 0xFFFFFFFFFFFFFF8;
      v172 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 6776, &unk_101A09F70);
    }

    ++v171;
  }

  while (v171 != 2);
  v183 = 0;
  *(v602 + 96) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 104) = &off_101885E50;
  *(v602 + 72) = v172;
  *(v602 + 80) = 0;
  v184 = _swiftEmptyArrayStorage;
  do
  {
    if (v623)
    {
      v185 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v183 >= *(v160 + 16))
      {
        goto LABEL_296;
      }

      v185 = *(v625 + 8 * v183 + 32);
    }

    v186 = v185;
    *&v641 = v185;
    v1 = 0;
    sub_100F31B1C(&v641, (v0 + 6536));

    if (*(v0 + 6560))
    {
      sub_100050F74((v0 + 6536), v0 + 6616);
      sub_100050F74((v0 + 6616), v0 + 6456);
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v184;
      if ((v187 & 1) == 0)
      {
        v184 = sub_100B364B4(0, v184[2] + 1, 1, v184);
        v640 = v184;
      }

      v189 = v184[2];
      v188 = v184[3];
      if (v189 >= v188 >> 1)
      {
        v1 = sub_100B364B4((v188 > 1), v189 + 1, 1, v184);
        v640 = v1;
      }

      else
      {
        v1 = v184;
      }

      v190 = *(v0 + 6480);
      v191 = *(v0 + 6488);
      v192 = sub_10002A948(v0 + 6456, v190);
      v193 = *(v190 - 8);
      v194 = swift_task_alloc();
      (*(v193 + 16))(v194, v192, v190);
      sub_100725200(v189, v194, &v640, v190, v191);
      sub_100005070(v0 + 6456);

      v160 = v625 & 0xFFFFFFFFFFFFFF8;
      v184 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 6536, &unk_101A09F70);
    }

    ++v183;
  }

  while (v183 != 2);
  v195 = 0;
  *(v602 + 136) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 144) = &off_101885E50;
  v196 = _swiftEmptyArrayStorage;
  *(v602 + 112) = v184;
  *(v602 + 120) = 0;
  do
  {
    if (v623)
    {
      v197 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v195 >= *(v160 + 16))
      {
        goto LABEL_297;
      }

      v197 = *(v625 + 8 * v195 + 32);
    }

    v198 = v197;
    *&v641 = v197;
    v1 = 0;
    sub_100F31E8C(&v641, 16, (v0 + 5736), xmmword_1014B9200);

    if (*(v0 + 5760))
    {
      sub_100050F74((v0 + 5736), v0 + 6416);
      sub_100050F74((v0 + 6416), v0 + 5376);
      v199 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v196;
      if ((v199 & 1) == 0)
      {
        v196 = sub_100B364B4(0, v196[2] + 1, 1, v196);
        v640 = v196;
      }

      v201 = v196[2];
      v200 = v196[3];
      if (v201 >= v200 >> 1)
      {
        v1 = sub_100B364B4((v200 > 1), v201 + 1, 1, v196);
        v640 = v1;
      }

      else
      {
        v1 = v196;
      }

      v202 = *(v0 + 5400);
      v203 = *(v0 + 5408);
      v204 = sub_10002A948(v0 + 5376, v202);
      v205 = *(v202 - 8);
      v206 = swift_task_alloc();
      (*(v205 + 16))(v206, v204, v202);
      sub_100725200(v201, v206, &v640, v202, v203);
      sub_100005070(v0 + 5376);

      v196 = v1;
      v640 = v1;
      v160 = v625 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      sub_10000CAAC(v0 + 5736, &unk_101A09F70);
    }

    ++v195;
  }

  while (v195 != 2);
  v207 = 0;
  *(v602 + 176) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 184) = &off_101885E50;
  *(v602 + 152) = v196;
  *(v602 + 160) = 0;
  v208 = _swiftEmptyArrayStorage;
  v209 = v627;
  do
  {
    if (v633)
    {
      v210 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v207 >= v209[2])
      {
        goto LABEL_298;
      }

      v210 = v635[v207 + 4];
    }

    v211 = v210;
    *&v641 = v210;
    v1 = 0;
    sub_100F3217C(&v641, (v0 + 5216));

    if (*(v0 + 5240))
    {
      sub_100050F74((v0 + 5216), v0 + 5296);
      sub_100050F74((v0 + 5296), v0 + 5096);
      v212 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v208;
      if ((v212 & 1) == 0)
      {
        v208 = sub_100B364B4(0, v208[2] + 1, 1, v208);
        v640 = v208;
      }

      v214 = v208[2];
      v213 = v208[3];
      if (v214 >= v213 >> 1)
      {
        v1 = sub_100B364B4((v213 > 1), v214 + 1, 1, v208);
        v640 = v1;
      }

      else
      {
        v1 = v208;
      }

      v215 = *(v0 + 5120);
      v216 = *(v0 + 5128);
      v217 = sub_10002A948(v0 + 5096, v215);
      v218 = *(v215 - 8);
      v219 = swift_task_alloc();
      (*(v218 + 16))(v219, v217, v215);
      sub_100725200(v214, v219, &v640, v215, v216);
      sub_100005070(v0 + 5096);

      v208 = v1;
      v640 = v1;
      v209 = v627;
    }

    else
    {
      sub_10000CAAC(v0 + 5216, &unk_101A09F70);
    }

    ++v207;
  }

  while (v207 != 2);
  v220 = 0;
  *(v602 + 216) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 224) = &off_101885E50;
  v221 = _swiftEmptyArrayStorage;
  *(v602 + 192) = v208;
  *(v602 + 200) = 0;
  do
  {
    if (v633)
    {
      v222 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v220 >= v627[2])
      {
        goto LABEL_299;
      }

      v222 = v635[v220 + 4];
    }

    v223 = v222;
    *&v641 = v222;
    v1 = 0;
    sub_100F33098(&v641, (v0 + 4896), 0.0000305175781, 450.0, xmmword_1014B91F0);

    if (*(v0 + 4920))
    {
      sub_100050F74((v0 + 4896), v0 + 7376);
      sub_100050F74((v0 + 7376), v0 + 4936);
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v221;
      if ((v224 & 1) == 0)
      {
        v221 = sub_100B364B4(0, v221[2] + 1, 1, v221);
        v640 = v221;
      }

      v226 = v221[2];
      v225 = v221[3];
      if (v226 >= v225 >> 1)
      {
        v1 = sub_100B364B4((v225 > 1), v226 + 1, 1, v221);
        v640 = v1;
      }

      else
      {
        v1 = v221;
      }

      v227 = *(v0 + 4960);
      v228 = *(v0 + 4968);
      v229 = sub_10002A948(v0 + 4936, v227);
      v230 = *(v227 - 8);
      v231 = swift_task_alloc();
      (*(v230 + 16))(v231, v229, v227);
      sub_100725200(v226, v231, &v640, v227, v228);
      sub_100005070(v0 + 4936);

      v221 = v1;
      v640 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 4896, &unk_101A09F70);
    }

    ++v220;
  }

  while (v220 != 2);
  v232 = 0;
  *(v602 + 256) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 264) = &off_101885E50;
  v233 = _swiftEmptyArrayStorage;
  *(v602 + 232) = v221;
  *(v602 + 240) = 0;
  do
  {
    if (v633)
    {
      v234 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v232 >= v627[2])
      {
        goto LABEL_300;
      }

      v234 = v635[v232 + 4];
    }

    v235 = v234;
    *&v641 = v234;
    v1 = 0;
    sub_100F33334(&v641, (v0 + 5016), xmmword_1014B9210, 450.0, xmmword_1014B91F0);

    if (*(v0 + 5040))
    {
      sub_100050F74((v0 + 5016), v0 + 4976);
      sub_100050F74((v0 + 4976), v0 + 5056);
      v236 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v233;
      if ((v236 & 1) == 0)
      {
        v233 = sub_100B364B4(0, v233[2] + 1, 1, v233);
        v640 = v233;
      }

      v238 = v233[2];
      v237 = v233[3];
      if (v238 >= v237 >> 1)
      {
        v1 = sub_100B364B4((v237 > 1), v238 + 1, 1, v233);
        v640 = v1;
      }

      else
      {
        v1 = v233;
      }

      v239 = *(v0 + 5080);
      v240 = *(v0 + 5088);
      v241 = sub_10002A948(v0 + 5056, v239);
      v242 = *(v239 - 8);
      v243 = swift_task_alloc();
      (*(v242 + 16))(v243, v241, v239);
      sub_100725200(v238, v243, &v640, v239, v240);
      sub_100005070(v0 + 5056);

      v233 = v1;
      v640 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 5016, &unk_101A09F70);
    }

    ++v232;
  }

  while (v232 != 2);
  v561 = *(v0 + 7488);
  v244 = *(v0 + 7480);
  v618 = *(v0 + 7472);
  v589 = *(v0 + 7456);
  v590 = *(v0 + 7464);
  v588 = *(v0 + 7448);
  *(v602 + 296) = &type metadata for CRLLayerAnimationGroup;
  *(v602 + 304) = &off_101885E50;
  *(v602 + 272) = v233;
  *(v602 + 280) = 0;
  v245 = sub_100789704(v602, 0.0);
  v247 = v246;
  v248 = v245;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v591 + 96) = &type metadata for CRLLayerAnimationGroup;
  *(v591 + 104) = &off_101885E50;
  *(v591 + 72) = v247;
  *(v591 + 80) = v248;
  v603 = swift_allocObject();
  *(v603 + 16) = xmmword_101488C80;
  v249 = swift_allocObject();
  *(v249 + 16) = xmmword_10146BDE0;
  *(v0 + 16) = 0x3F80000000000000;
  *(v0 + 272) = 6;
  v250 = [v598 layer];
  sub_1006C121C(v0 + 16, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 16);
  swift_unknownObjectWeakInit();
  v606(&v244[*(v605 + 28)], 1, 1, v609);
  v606(&v244[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v244 = v565;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v244, v561, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 5160) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 5168) = v607;
  v251 = swift_allocObject();
  *(v0 + 5136) = v251;
  sub_1005F8AB8(v561, v251 + 16);
  *(sub_10002A948(v567, *(v0 + 5160)) + 8) = 0x3FA999999999999ALL;
  v566 = v565;
  sub_1006BF678(v567);
  sub_100F35704(v244, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FA47AE147AE147BLL;
  v252 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v253) = 0.25;
  v254 = [v252 initWithControlPoints:v253 :? :? :?];

  *v561 = v254;
  *(v249 + 56) = v618;
  *(v249 + 64) = &off_1018816E0;
  v255 = sub_10002C58C((v249 + 32));
  sub_100F3569C(v561, v255, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 5200) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 5208) = v607;
  v256 = swift_allocObject();
  *(v0 + 5176) = v256;
  sub_1005F8AB8(v255, v256 + 16);
  *(sub_10002A948(v568, *(v0 + 5200)) + 297) = 0;
  sub_1006BF678(v568);
  sub_100F35704(v561, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 4240) = 1065353216;
  *(v0 + 4496) = 6;
  v257 = [v599 layer];
  sub_1006C121C(v570, v593 + 24);
  UUID.init()();
  sub_100687CF4(v570);
  swift_unknownObjectWeakInit();
  v606(&v244[*(v605 + 28)], 1, 1, v609);
  v606(&v244[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v244 = v566;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v244, v561, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0;
  v571 = v566;
  sub_100F35704(v244, type metadata accessor for CRLBasicLayerAnimation);
  *(v249 + 96) = v618;
  *(v249 + 104) = &off_1018816E0;
  v258 = sub_10002C58C((v249 + 72));
  sub_100F3569C(v561, v258, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 5280) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 5288) = v607;
  v259 = swift_allocObject();
  *(v0 + 5256) = v259;
  sub_1005F8AB8(v258, v259 + 16);
  *(sub_10002A948(v587, *(v0 + 5280)) + 297) = 0;
  sub_1006BF678(v587);
  sub_100F35704(v561, type metadata accessor for CRLBasicLayerAnimation);
  v260 = sub_1008821BC(v249, 0.0);
  v262 = v261;
  v263 = v260;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v603 + 32) = v262;
  *(v603 + 56) = &type metadata for CRLLayerAnimationSequence;
  *(v603 + 64) = &off_10188A5A0;
  *(v603 + 40) = v263;
  v264 = *(v601 + v600);
  *(v0 + 3976) = 1065353216;
  *(v0 + 4232) = 6;
  v265 = v264;
  v266 = [v265 layer];
  sub_1006C121C(v0 + 3976, v593 + 24);
  UUID.init()();

  sub_100687CF4(v0 + 3976);
  swift_unknownObjectWeakInit();
  v606(&v244[*(v605 + 28)], 1, 1, v609);
  v606(&v244[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v244 = v571;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  v1 = type metadata accessor for CRLBasicLayerAnimation;
  sub_100F3569C(v244, v561, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FA47AE147AE147BLL;
  v572 = v571;
  sub_100F35704(v244, type metadata accessor for CRLBasicLayerAnimation);
  v267 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v268) = 0.25;
  LODWORD(v269) = 0.25;
  LODWORD(v270) = 1.0;
  LODWORD(v271) = 1036831949;
  v272 = [v267 initWithControlPoints:v268 :v271 :v269 :v270];

  *v561 = v272;
  *(v603 + 96) = v618;
  *(v603 + 104) = &off_1018816E0;
  v273 = sub_10002C58C((v603 + 72));
  sub_100F3569C(v561, v273, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 5360) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 5368) = v607;
  v274 = swift_allocObject();
  *(v0 + 5336) = v274;
  sub_1005F8AB8(v273, v274 + 16);
  *(sub_10002A948(v576, *(v0 + 5360)) + 297) = 0;
  sub_1006BF678(v576);
  sub_100F35704(v561, type metadata accessor for CRLBasicLayerAnimation);
  v275 = *(v601 + v600);
  *(v0 + 3712) = xmmword_1014634E0;
  *(v0 + 3728) = 0u;
  *(v0 + 3744) = 1;
  *(v0 + 3752) = 0;
  *(v0 + 3760) = 2;
  *(v0 + 3968) = 74;
  v276 = v275;
  v277 = [v276 layer];
  sub_1006C121C(v0 + 3712, v589 + 40);
  UUID.init()();

  sub_100687CF4(v0 + 3712);
  swift_unknownObjectWeakInit();
  v606((v589 + *(v588 + 28)), 1, 1, v609);
  v606((v589 + *(v588 + 32)), 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v589 + 32) = 0;
  *v589 = xmmword_1014861A0;
  *(v589 + 16) = xmmword_1014861B0;
  *(v589 + 304) = 0;
  *(v589 + 312) = 131586;
  sub_100F3569C(v589, v590, type metadata accessor for CRLSpringLayerAnimation);
  *(v590 + 16) = 0x3FF0000000000000;
  sub_100F35704(v589, type metadata accessor for CRLSpringLayerAnimation);
  *(v590 + 24) = 0x406F400000000000;
  *v590 = xmmword_1014B9220;
  *(v603 + 136) = v588;
  *(v603 + 144) = &off_1018B87B8;
  v278 = sub_10002C58C((v603 + 112));
  sub_100F3569C(v590, v278, type metadata accessor for CRLSpringLayerAnimation);
  *(v0 + 5440) = &type metadata for CRLSpringLayerAnimation.Def;
  v577 = sub_1008DA198();
  *(v0 + 5448) = v577;
  v279 = swift_allocObject();
  *(v0 + 5416) = v279;
  sub_1008DA1EC(v278, v279 + 16);
  *(sub_10002A948(v573, *(v0 + 5440)) + 313) = 0;
  sub_1012340B0(v573);
  sub_100F35704(v590, type metadata accessor for CRLSpringLayerAnimation);
  v280 = 0;
  v281 = _swiftEmptyArrayStorage;
  v282 = v627;
  do
  {
    if (v633)
    {
      v283 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v280 >= v282[2])
      {
        goto LABEL_301;
      }

      v283 = v635[v280 + 4];
    }

    v284 = v283;
    *&v641 = v283;
    v1 = 0;
    sub_100F324A0(&v641, (v0 + 5496), v28, v30, v33, v35, *&v583, v39, v41, *&v43, 0x4075E00000000000, v545, xmmword_1014B9220);

    if (*(v0 + 5520))
    {
      sub_100050F74((v0 + 5496), v0 + 5456);
      sub_100050F74((v0 + 5456), v0 + 5536);
      v285 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v281;
      if ((v285 & 1) == 0)
      {
        v281 = sub_100B364B4(0, v281[2] + 1, 1, v281);
        v640 = v281;
      }

      v287 = v281[2];
      v286 = v281[3];
      if (v287 >= v286 >> 1)
      {
        v1 = sub_100B364B4((v286 > 1), v287 + 1, 1, v281);
        v640 = v1;
      }

      else
      {
        v1 = v281;
      }

      v288 = *(v0 + 5560);
      v289 = *(v0 + 5568);
      v290 = sub_10002A948(v0 + 5536, v288);
      v291 = *(v288 - 8);
      v292 = swift_task_alloc();
      (*(v291 + 16))(v292, v290, v288);
      sub_100725200(v287, v292, &v640, v288, v289);
      sub_100005070(v0 + 5536);

      v281 = v1;
      v640 = v1;
      v282 = v627;
    }

    else
    {
      sub_10000CAAC(v0 + 5496, &unk_101A09F70);
      v282 = v627;
    }

    ++v280;
  }

  while (v280 != 2);
  v293 = 0;
  *(v603 + 176) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 184) = &off_101885E50;
  v294 = _swiftEmptyArrayStorage;
  *(v603 + 152) = v281;
  *(v603 + 160) = 0;
  v33 = v581;
  v30 = v582;
  *&v35 = v580;
  v295 = v625 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v623)
    {
      v296 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v293 >= *(v295 + 16))
      {
        goto LABEL_302;
      }

      v296 = *(v625 + 8 * v293 + 32);
    }

    v297 = v296;
    *&v641 = v296;
    v1 = 0;
    sub_100F32AE4(&v641, 14, (v0 + 5616), xmmword_1014B9230);

    if (*(v0 + 5640))
    {
      sub_100050F74((v0 + 5616), v0 + 5576);
      sub_100050F74((v0 + 5576), v0 + 5656);
      v298 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v294;
      if ((v298 & 1) == 0)
      {
        v294 = sub_100B364B4(0, v294[2] + 1, 1, v294);
        v640 = v294;
      }

      v300 = v294[2];
      v299 = v294[3];
      if (v300 >= v299 >> 1)
      {
        v1 = sub_100B364B4((v299 > 1), v300 + 1, 1, v294);
        v640 = v1;
      }

      else
      {
        v1 = v294;
      }

      v301 = *(v0 + 5680);
      v302 = *(v0 + 5688);
      v303 = sub_10002A948(v0 + 5656, v301);
      v304 = *(v301 - 8);
      v305 = swift_task_alloc();
      (*(v304 + 16))(v305, v303, v301);
      sub_100725200(v300, v305, &v640, v301, v302);
      sub_100005070(v0 + 5656);

      v294 = v1;
      v640 = v1;
      v295 = v625 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      sub_10000CAAC(v0 + 5616, &unk_101A09F70);
    }

    ++v293;
  }

  while (v293 != 2);
  v306 = 0;
  *(v603 + 216) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 224) = &off_101885E50;
  *(v603 + 192) = v294;
  *(v603 + 200) = 0;
  v307 = _swiftEmptyArrayStorage;
  do
  {
    if (v623)
    {
      v308 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v306 >= *((v625 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_303;
      }

      v308 = *(v625 + 8 * v306 + 32);
    }

    v309 = v308;
    *&v641 = v308;
    v1 = 0;
    sub_100F327D4(&v641, (v0 + 4816));

    if (*(v0 + 4840))
    {
      sub_100050F74((v0 + 4816), v0 + 5696);
      sub_100050F74((v0 + 5696), v0 + 5776);
      v310 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v307;
      if ((v310 & 1) == 0)
      {
        v307 = sub_100B364B4(0, v307[2] + 1, 1, v307);
        v640 = v307;
      }

      v312 = v307[2];
      v311 = v307[3];
      if (v312 >= v311 >> 1)
      {
        v1 = sub_100B364B4((v311 > 1), v312 + 1, 1, v307);
        v640 = v1;
      }

      else
      {
        v1 = v307;
      }

      v313 = *(v0 + 5800);
      v314 = *(v0 + 5808);
      v315 = sub_10002A948(v0 + 5776, v313);
      v316 = *(v313 - 8);
      v317 = swift_task_alloc();
      (*(v316 + 16))(v317, v315, v313);
      sub_100725200(v312, v317, &v640, v313, v314);
      sub_100005070(v0 + 5776);

      v307 = v1;
      v640 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 4816, &unk_101A09F70);
    }

    ++v306;
  }

  while (v306 != 2);
  v318 = 0;
  *(v603 + 256) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 264) = &off_101885E50;
  v319 = _swiftEmptyArrayStorage;
  *(v603 + 232) = v307;
  *(v603 + 240) = 0;
  do
  {
    if (v623)
    {
      v320 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v318 >= *((v625 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_304;
      }

      v320 = *(v625 + 8 * v318 + 32);
    }

    v321 = v320;
    *&v641 = v320;
    v1 = 0;
    sub_100F32AE4(&v641, 16, (v0 + 5856), xmmword_101489B70);

    if (*(v0 + 5880))
    {
      sub_100050F74((v0 + 5856), v0 + 5816);
      sub_100050F74((v0 + 5816), v0 + 5896);
      v322 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v319;
      if ((v322 & 1) == 0)
      {
        v319 = sub_100B364B4(0, v319[2] + 1, 1, v319);
        v640 = v319;
      }

      v324 = v319[2];
      v323 = v319[3];
      if (v324 >= v323 >> 1)
      {
        v1 = sub_100B364B4((v323 > 1), v324 + 1, 1, v319);
        v640 = v1;
      }

      else
      {
        v1 = v319;
      }

      v325 = *(v0 + 5920);
      v326 = *(v0 + 5928);
      v327 = sub_10002A948(v0 + 5896, v325);
      v328 = *(v325 - 8);
      v329 = swift_task_alloc();
      (*(v328 + 16))(v329, v327, v325);
      sub_100725200(v324, v329, &v640, v325, v326);
      sub_100005070(v0 + 5896);

      v319 = v1;
      v640 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 5856, &unk_101A09F70);
    }

    ++v318;
  }

  while (v318 != 2);

  v330 = 0;
  *(v603 + 296) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 304) = &off_101885E50;
  *(v603 + 272) = v319;
  *(v603 + 280) = 0;
  v331 = _swiftEmptyArrayStorage;
  do
  {
    if (v633)
    {
      v332 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v330 >= v627[2])
      {
        goto LABEL_305;
      }

      v332 = v635[v330 + 4];
    }

    v333 = v332;
    *&v641 = v332;
    v1 = 0;
    sub_100F32D64(&v641, (v0 + 5976));

    if (*(v0 + 6000))
    {
      sub_100050F74((v0 + 5976), v0 + 5936);
      sub_100050F74((v0 + 5936), v0 + 6016);
      v334 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v331;
      if ((v334 & 1) == 0)
      {
        v331 = sub_100B364B4(0, v331[2] + 1, 1, v331);
        v640 = v331;
      }

      v336 = v331[2];
      v335 = v331[3];
      if (v336 >= v335 >> 1)
      {
        v1 = sub_100B364B4((v335 > 1), v336 + 1, 1, v331);
        v640 = v1;
      }

      else
      {
        v1 = v331;
      }

      v337 = *(v0 + 6040);
      v338 = *(v0 + 6048);
      v339 = sub_10002A948(v0 + 6016, v337);
      v340 = *(v337 - 8);
      v341 = swift_task_alloc();
      (*(v340 + 16))(v341, v339, v337);
      sub_100725200(v336, v341, &v640, v337, v338);
      sub_100005070(v0 + 6016);

      v331 = v1;
      v640 = v1;
    }

    else
    {
      sub_10000CAAC(v0 + 5976, &unk_101A09F70);
    }

    ++v330;
  }

  while (v330 != 2);
  v342 = 0;
  *(v603 + 336) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 344) = &off_101885E50;
  *(v603 + 312) = v331;
  *(v603 + 320) = 0;
  v343 = _swiftEmptyArrayStorage;
  v344 = v627;
  do
  {
    if (v633)
    {
      v345 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v342 >= v344[2])
      {
        goto LABEL_306;
      }

      v345 = v635[v342 + 4];
    }

    v346 = v345;
    *&v641 = v345;
    v1 = 0;
    sub_100F33098(&v641, (v0 + 6096), 0.0000305175853, 350.0, xmmword_1014B9220);

    if (*(v0 + 6120))
    {
      sub_100050F74((v0 + 6096), v0 + 6056);
      sub_100050F74((v0 + 6056), v0 + 6136);
      v347 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v343;
      if ((v347 & 1) == 0)
      {
        v343 = sub_100B364B4(0, v343[2] + 1, 1, v343);
        v640 = v343;
      }

      v349 = v343[2];
      v348 = v343[3];
      if (v349 >= v348 >> 1)
      {
        v1 = sub_100B364B4((v348 > 1), v349 + 1, 1, v343);
        v640 = v1;
      }

      else
      {
        v1 = v343;
      }

      v350 = *(v0 + 6160);
      v351 = *(v0 + 6168);
      v352 = sub_10002A948(v0 + 6136, v350);
      v353 = *(v350 - 8);
      v354 = swift_task_alloc();
      (*(v353 + 16))(v354, v352, v350);
      sub_100725200(v349, v354, &v640, v350, v351);
      sub_100005070(v0 + 6136);

      v343 = v1;
      v640 = v1;
      v344 = v627;
    }

    else
    {
      sub_10000CAAC(v0 + 6096, &unk_101A09F70);
    }

    ++v342;
  }

  while (v342 != 2);
  v355 = 0;
  *(v603 + 376) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 384) = &off_101885E50;
  *(v603 + 352) = v343;
  *(v603 + 360) = 0;
  v356 = _swiftEmptyArrayStorage;
  v625 = 0x4008000000000000;
  do
  {
    if (v633)
    {
      v357 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v355 >= v344[2])
      {
        goto LABEL_307;
      }

      v357 = v635[v355 + 4];
    }

    v358 = v357;
    *&v641 = v357;
    v1 = 0;
    sub_100F33334(&v641, (v0 + 6216), xmmword_1014B9240, 350.0, xmmword_1014B9220);

    if (*(v0 + 6240))
    {
      sub_100050F74((v0 + 6216), v0 + 6176);
      sub_100050F74((v0 + 6176), v0 + 6256);
      v359 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v356;
      if ((v359 & 1) == 0)
      {
        v356 = sub_100B364B4(0, v356[2] + 1, 1, v356);
        v640 = v356;
      }

      v361 = v356[2];
      v360 = v356[3];
      if (v361 >= v360 >> 1)
      {
        v356 = sub_100B364B4((v360 > 1), v361 + 1, 1, v356);
        v640 = v356;
      }

      v362 = *(v0 + 6280);
      v363 = *(v0 + 6288);
      v1 = 6256;
      v364 = sub_10002A948(v0 + 6256, v362);
      v365 = *(v362 - 8);
      v366 = swift_task_alloc();
      (*(v365 + 16))(v366, v364, v362);
      sub_100725200(v361, v366, &v640, v362, v363);
      sub_100005070(v0 + 6256);

      v640 = v356;
      v344 = v627;
    }

    else
    {
      sub_10000CAAC(v0 + 6216, &unk_101A09F70);
    }

    ++v355;
  }

  while (v355 != 2);
  *(v603 + 416) = &type metadata for CRLLayerAnimationGroup;
  *(v603 + 424) = &off_101885E50;
  *(v603 + 392) = v356;
  *(v603 + 400) = 0;
  v367 = sub_100789704(v603, 0.0);
  v369 = v368;
  v370 = v367;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v591 + 136) = &type metadata for CRLLayerAnimationGroup;
  *(v591 + 144) = &off_101885E50;
  *(v591 + 112) = v369;
  *(v591 + 120) = v370;
  v610 = swift_allocObject();
  *(v610 + 16) = xmmword_10146C6B0;
  v371 = 0;
  v625 = swift_allocObject();
  *(v625 + 16) = xmmword_10146D2A0;
  v372 = _swiftEmptyArrayStorage;
  v640 = _swiftEmptyArrayStorage;
  v28 = *&v579;
  do
  {
    if (v633)
    {
      v373 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v371 >= v627[2])
      {
        goto LABEL_308;
      }

      v373 = v635[v371 + 4];
    }

    v374 = v373;
    *&v641 = v373;
    v1 = 0;
    sub_100F335D4(&v641, (v0 + 6336), v583, v39, v41, v43, v579, v582, v581, v580);

    if (*(v0 + 6360))
    {
      sub_100050F74((v0 + 6336), v0 + 6296);
      sub_100050F74((v0 + 6296), v0 + 6376);
      v375 = swift_isUniquelyReferenced_nonNull_native();
      v640 = v372;
      if ((v375 & 1) == 0)
      {
        v372 = sub_100B364B4(0, v372[2] + 1, 1, v372);
        v640 = v372;
      }

      v377 = v372[2];
      v376 = v372[3];
      if (v377 >= v376 >> 1)
      {
        v372 = sub_100B364B4((v376 > 1), v377 + 1, 1, v372);
        v640 = v372;
      }

      v378 = *(v0 + 6400);
      v379 = *(v0 + 6408);
      v1 = 6376;
      v380 = sub_10002A948(v0 + 6376, v378);
      v381 = *(v378 - 8);
      v382 = swift_task_alloc();
      (*(v381 + 16))(v382, v380, v378);
      sub_100725200(v377, v382, &v640, v378, v379);
      sub_100005070(v0 + 6376);

      v640 = v372;
    }

    else
    {
      sub_10000CAAC(v0 + 6336, &unk_101A09F70);
    }

    ++v371;
  }

  while (v371 != 2);
  v634 = *(v0 + 7488);
  v383 = *(v0 + 7480);
  v639 = *(v0 + 7472);
  v619 = *(v0 + 7464);
  v621 = *(v0 + 7456);
  v624 = *(v0 + 7448);
  v604 = *(v0 + 7440);
  v586 = *(v0 + 7432);
  v569 = *(v0 + 273);
  v574 = *(v0 + 7424);

  *(v625 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v625 + 64) = &off_101885E50;
  *(v625 + 32) = v372;
  *(v625 + 40) = 0;
  *(v0 + 3448) = 1065353216;
  *(v0 + 3704) = 6;
  v384 = [v598 layer];
  sub_1006C121C(v0 + 3448, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 3448);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v572;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FB999999999999ALL;
  v628 = v572;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v385 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v386) = 0.25;
  LODWORD(v387) = 0.25;
  LODWORD(v388) = 1.0;
  LODWORD(v389) = 1036831949;
  v390 = [v385 initWithControlPoints:v386 :v389 :v387 :v388];

  *v634 = v390;
  *(v625 + 96) = v639;
  *(v625 + 104) = &off_1018816E0;
  v391 = sub_10002C58C((v625 + 72));
  sub_100F3569C(v634, v391, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 6520) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 6528) = v607;
  v392 = swift_allocObject();
  *(v0 + 6496) = v392;
  sub_1005F8AB8(v391, v392 + 16);
  *(sub_10002A948(v546, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v546);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  v393 = *(v601 + v600);
  *(v0 + 3184) = xmmword_1014B9250;
  *(v0 + 3200) = 0u;
  *(v0 + 3216) = 1;
  *(v0 + 3224) = 0;
  *(v0 + 3232) = 2;
  *(v0 + 3440) = 74;
  v394 = v393;
  v395 = [v394 layer];
  sub_1006C121C(v0 + 3184, v589 + 40);
  UUID.init()();

  sub_100687CF4(v0 + 3184);
  swift_unknownObjectWeakInit();
  v606(&v621[*(v588 + 28)], 1, 1, v609);
  v606(&v621[*(v588 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v589 + 32) = 0;
  *v621 = 0x4024000000000000;
  *(v589 + 8) = xmmword_101463BB0;
  *(v589 + 24) = 0x4059000000000000;
  *(v589 + 304) = 0;
  *(v589 + 312) = 131586;
  sub_100F3569C(v621, v619, type metadata accessor for CRLSpringLayerAnimation);
  *(v590 + 16) = 0x3FF0000000000000;
  sub_100F35704(v621, type metadata accessor for CRLSpringLayerAnimation);
  *(v590 + 24) = 0x406F400000000000;
  *v619 = 0x4040000000000000;
  *(v590 + 8) = 0x3FF0000000000000;
  *(v625 + 136) = v624;
  *(v625 + 144) = &off_1018B87B8;
  v396 = sub_10002C58C((v625 + 112));
  sub_100F3569C(v619, v396, type metadata accessor for CRLSpringLayerAnimation);
  *(v0 + 6600) = &type metadata for CRLSpringLayerAnimation.Def;
  *(v0 + 6608) = v577;
  v397 = swift_allocObject();
  *(v0 + 6576) = v397;
  sub_1008DA1EC(v396, v397 + 16);
  *(sub_10002A948(v547, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v547);
  sub_100F35704(v619, type metadata accessor for CRLSpringLayerAnimation);
  v398 = *(v601 + v600);
  *(v0 + 2920) = 0x3F80000000000000;
  *(v0 + 3176) = 6;
  v399 = v398;
  v400 = [v399 layer];
  sub_1006C121C(v0 + 2920, v593 + 24);
  UUID.init()();

  sub_100687CF4(v0 + 2920);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v628;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3F9EB851EB851EB8;
  v629 = v628;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v401 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v402) = 0.25;
  LODWORD(v403) = 0.25;
  LODWORD(v404) = 1.0;
  LODWORD(v405) = 1036831949;
  v406 = [v401 initWithControlPoints:v402 :v405 :v403 :v404];

  *v634 = v406;
  *(v625 + 176) = v639;
  *(v625 + 184) = &off_1018816E0;
  v407 = sub_10002C58C((v625 + 152));
  sub_100F3569C(v634, v407, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 6680) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 6688) = v607;
  v408 = swift_allocObject();
  *(v0 + 6656) = v408;
  sub_1005F8AB8(v407, v408 + 16);
  *(sub_10002A948(v548, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v548);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  v409 = sub_100789704(v625, 0.97);
  v411 = v410;
  v412 = v409;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v610 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v610 + 64) = &off_101885E50;
  *(v610 + 32) = v411;
  *(v610 + 40) = v412;
  v413 = sub_100789704(v610, 0.0);
  v415 = v414;
  v416 = v413;
  swift_setDeallocating();
  sub_10000CAAC(v610 + 32, &unk_101A09F70);
  swift_deallocClassInstance();
  *(v591 + 176) = &type metadata for CRLLayerAnimationGroup;
  *(v591 + 184) = &off_101885E50;
  *(v591 + 152) = v415;
  *(v591 + 160) = v416;
  v417 = sub_1008821BC(v591, 0.0);
  v419 = v418;
  v420 = v417;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v549 + 56) = &type metadata for CRLLayerAnimationSequence;
  *(v549 + 64) = &off_10188A5A0;
  *(v549 + 32) = v419;
  *(v549 + 40) = v420;
  v421 = sub_100789704(v549, 0.0);
  v592 = v422;
  v611 = v421;
  swift_setDeallocating();
  sub_10000CAAC(v549 + 32, &unk_101A09F70);
  swift_deallocClassInstance();
  v626 = swift_allocObject();
  *(v626 + 16) = xmmword_10146BDE0;
  v423 = swift_allocObject();
  *(v423 + 16) = xmmword_10146C4D0;
  *(v0 + 2656) = 0x3F80000000000000;
  *(v0 + 2912) = 6;
  v424 = [v598 layer];
  sub_1006C121C(v0 + 2656, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 2656);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v629;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FC999999999999ALL;
  v630 = v629;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v425 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v426) = 0.25;
  LODWORD(v427) = 0.25;
  LODWORD(v428) = 1.0;
  LODWORD(v429) = 1036831949;
  v430 = [v425 initWithControlPoints:v426 :v429 :v427 :v428];

  *v634 = v430;
  *(v423 + 56) = v639;
  *(v423 + 64) = &off_1018816E0;
  v431 = sub_10002C58C((v423 + 32));
  sub_100F3569C(v634, v431, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 6760) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 6768) = v607;
  v432 = swift_allocObject();
  *(v0 + 6736) = v432;
  sub_1005F8AB8(v431, v432 + 16);
  *(sub_10002A948(v550, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v550);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 2392) = 0;
  *(v0 + 2648) = 6;
  v433 = [v599 layer];
  sub_1006C121C(v0 + 2392, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 2392);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v630;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FC999999999999ALL;
  v631 = v630;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v434 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v435) = 0.25;
  LODWORD(v436) = 0.25;
  LODWORD(v437) = 1.0;
  LODWORD(v438) = 1036831949;
  v439 = [v434 initWithControlPoints:v435 :v438 :v436 :v437];

  *v634 = v439;
  *(v423 + 96) = v639;
  *(v423 + 104) = &off_1018816E0;
  v440 = sub_10002C58C((v423 + 72));
  sub_100F3569C(v634, v440, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 6840) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 6848) = v607;
  v441 = swift_allocObject();
  *(v0 + 6816) = v441;
  sub_1005F8AB8(v440, v441 + 16);
  *(sub_10002A948(v551, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v551);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  v442 = *(v601 + v600);
  *(v0 + 2128) = 1065353216;
  *(v0 + 2384) = 6;
  v443 = v442;
  v444 = [v443 layer];
  sub_1006C121C(v0 + 2128, v593 + 24);
  UUID.init()();

  sub_100687CF4(v0 + 2128);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v631;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FC999999999999ALL;
  v562 = v631;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v445 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v446) = 0.25;
  LODWORD(v447) = 0.25;
  LODWORD(v448) = 1.0;
  LODWORD(v449) = 1036831949;
  v450 = [v445 initWithControlPoints:v446 :v449 :v447 :v448];
  v451 = sub_100C00488();

  *v634 = v451;
  *(v423 + 136) = v639;
  *(v423 + 144) = &off_1018816E0;
  v452 = sub_10002C58C((v423 + 112));
  sub_100F3569C(v634, v452, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 6920) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 6928) = v607;
  v453 = swift_allocObject();
  *(v0 + 6896) = v453;
  sub_1005F8AB8(v452, v453 + 16);
  *(sub_10002A948(v552, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v552);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  v454 = sub_100789704(v423, 0.0);
  v456 = v455;
  v457 = v454;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v626 + 56) = &type metadata for CRLLayerAnimationGroup;
  *(v626 + 64) = &off_101885E50;
  *(v626 + 32) = v456;
  *(v626 + 40) = v457;
  v632 = swift_allocObject();
  *(v632 + 1) = xmmword_101478A90;
  sub_1008DA35C(v553);
  v458 = *(v0 + 4584);
  v459 = *(v0 + 4616);
  v647 = *(v0 + 4600);
  v648 = v459;
  v460 = *(v0 + 4520);
  v461 = *(v0 + 4552);
  v643 = *(v0 + 4536);
  v462 = v643;
  v644 = v461;
  v463 = *(v0 + 4552);
  v464 = *(v0 + 4584);
  v645 = *(v0 + 4568);
  v465 = v645;
  v646 = v464;
  v466 = *(v0 + 4520);
  v641 = *v553;
  v467 = v641;
  v642 = v466;
  v468 = *(v0 + 4616);
  *(v0 + 2024) = v647;
  *(v0 + 2040) = v468;
  *(v0 + 1960) = v462;
  *(v0 + 1976) = v463;
  *(v0 + 1992) = v465;
  *(v0 + 2008) = v458;
  v649 = *(v0 + 4632);
  *(v0 + 1864) = v583;
  *(v0 + 1872) = v39;
  *(v0 + 1880) = v41;
  *(v0 + 1888) = *&v43;
  *(v0 + 1896) = *&v579;
  *(v0 + 1904) = v582;
  *(v0 + 1912) = v581;
  *(v0 + 1920) = v580;
  *(v0 + 2056) = *(v0 + 4632);
  *(v0 + 1928) = v467;
  *(v0 + 1944) = v460;
  *(v0 + 2120) = 76;
  v469 = [v598 layer];
  sub_1006C121C(v0 + 1864, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 1864);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v562;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FB999999999999ALL;
  v594 = v562;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v470 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v471) = 0.25;
  LODWORD(v472) = 0.25;
  LODWORD(v473) = 1.0;
  LODWORD(v474) = 1036831949;
  v475 = [v470 initWithControlPoints:v471 :v474 :v472 :v473];

  *v634 = v475;
  *(v632 + 7) = v639;
  *(v632 + 8) = &off_1018816E0;
  v476 = sub_10002C58C(v632 + 4);
  sub_100F3569C(v634, v476, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 7000) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 7008) = v607;
  v477 = swift_allocObject();
  *(v0 + 6976) = v477;
  sub_1005F8AB8(v476, v477 + 16);
  *(sub_10002A948(v554, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v554);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 1600) = v583;
  *(v0 + 1608) = v39;
  *(v0 + 1616) = v41;
  *(v0 + 1624) = *&v43;
  *(v0 + 1632) = *&v579;
  *(v0 + 1640) = v582;
  *(v0 + 1648) = v581;
  *(v0 + 1656) = v580;
  v478 = v645;
  *(v0 + 1744) = v646;
  v479 = v648;
  *(v0 + 1760) = v647;
  *(v0 + 1776) = v479;
  *(v0 + 1792) = v649;
  v480 = v641;
  *(v0 + 1680) = v642;
  v481 = v644;
  *(v0 + 1696) = v643;
  *(v0 + 1712) = v481;
  *(v0 + 1728) = v478;
  *(v0 + 1664) = v480;
  *(v0 + 1856) = 76;
  v482 = [v599 layer];
  sub_1006C121C(v0 + 1600, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 1600);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v594;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FB999999999999ALL;
  v595 = v594;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v483 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v484) = 0.25;
  LODWORD(v485) = 0.25;
  LODWORD(v486) = 1.0;
  LODWORD(v487) = 1036831949;
  v488 = [v483 initWithControlPoints:v484 :v487 :v485 :v486];

  *v634 = v488;
  *(v632 + 12) = v639;
  *(v632 + 13) = &off_1018816E0;
  v489 = sub_10002C58C(v632 + 9);
  sub_100F3569C(v634, v489, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 7080) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 7088) = v607;
  v490 = swift_allocObject();
  *(v0 + 7056) = v490;
  sub_1005F8AB8(v489, v490 + 16);
  *(sub_10002A948(v555, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v555);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 1336) = 1065353216;
  *(v0 + 1592) = 6;
  v491 = [v598 layer];
  sub_1006C121C(v0 + 1336, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 1336);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v595;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FB999999999999ALL;
  v596 = v595;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v492 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v493) = 0.25;
  LODWORD(v494) = 0.25;
  LODWORD(v495) = 1.0;
  LODWORD(v496) = 1036831949;
  v497 = [v492 initWithControlPoints:v493 :v496 :v494 :v495];

  *v634 = v497;
  *(v632 + 17) = v639;
  *(v632 + 18) = &off_1018816E0;
  v498 = sub_10002C58C(v632 + 14);
  sub_100F3569C(v634, v498, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 7160) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 7168) = v607;
  v499 = swift_allocObject();
  *(v0 + 7136) = v499;
  sub_1005F8AB8(v498, v499 + 16);
  *(sub_10002A948(v556, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v556);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 1072) = 0;
  *(v0 + 1328) = 6;
  v500 = [v599 layer];
  sub_1006C121C(v0 + 1072, v593 + 24);
  UUID.init()();
  sub_100687CF4(v0 + 1072);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v596;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3FB999999999999ALL;
  v597 = v596;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v501 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v502) = 0.25;
  LODWORD(v503) = 0.25;
  LODWORD(v504) = 1.0;
  LODWORD(v505) = 1036831949;
  v506 = [v501 initWithControlPoints:v502 :v505 :v503 :v504];

  *v634 = v506;
  *(v632 + 22) = v639;
  *(v632 + 23) = &off_1018816E0;
  v507 = sub_10002C58C(v632 + 19);
  sub_100F3569C(v634, v507, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 7240) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 7248) = v607;
  v508 = swift_allocObject();
  *(v0 + 7216) = v508;
  sub_1005F8AB8(v507, v508 + 16);
  *(sub_10002A948(v557, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v557);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  v509 = *(v601 + v600);
  *(v0 + 544) = xmmword_1014B9250;
  *(v0 + 560) = 0u;
  *(v0 + 576) = 1;
  *(v0 + 584) = 0;
  *(v0 + 592) = 2;
  *(v0 + 800) = 74;
  v510 = v509;
  v511 = [v510 layer];
  sub_1006C121C(v0 + 544, v589 + 40);
  UUID.init()();

  sub_100687CF4(v0 + 544);
  swift_unknownObjectWeakInit();
  v606(&v621[*(v588 + 28)], 1, 1, v609);
  v606(&v621[*(v588 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v589 + 32) = 0;
  *v621 = 0x4024000000000000;
  *(v589 + 8) = xmmword_101463BB0;
  *(v589 + 24) = 0x4059000000000000;
  *(v589 + 304) = 0;
  *(v589 + 312) = 131586;
  sub_100F3569C(v621, v619, type metadata accessor for CRLSpringLayerAnimation);
  *(v590 + 16) = 0x3FF0000000000000;
  sub_100F35704(v621, type metadata accessor for CRLSpringLayerAnimation);
  *(v590 + 24) = 0x406F400000000000;
  *v619 = 0x4040000000000000;
  *(v590 + 8) = 0x3FF0000000000000;
  *(v632 + 27) = v624;
  *(v632 + 28) = &off_1018B87B8;
  v512 = sub_10002C58C(v632 + 24);
  sub_100F3569C(v619, v512, type metadata accessor for CRLSpringLayerAnimation);
  *(v0 + 7320) = &type metadata for CRLSpringLayerAnimation.Def;
  *(v0 + 7328) = v577;
  v513 = swift_allocObject();
  *(v0 + 7296) = v513;
  sub_1008DA1EC(v512, v513 + 16);
  *(sub_10002A948(v558, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v558);
  sub_100F35704(v619, type metadata accessor for CRLSpringLayerAnimation);
  v514 = *(v601 + v600);
  *(v0 + 280) = 0x3F80000000000000;
  *(v0 + 536) = 6;
  v515 = v514;
  v516 = [v515 layer];
  sub_1006C121C(v0 + 280, v593 + 24);
  UUID.init()();

  sub_100687CF4(v0 + 280);
  swift_unknownObjectWeakInit();
  v606(&v383[*(v605 + 28)], 1, 1, v609);
  v606(&v383[*(v605 + 32)], 1, 1, v609);
  swift_unknownObjectWeakAssign();

  *(v593 + 8) = xmmword_10146D9F0;
  *v383 = v597;
  *(v593 + 288) = 0;
  *(v593 + 296) = 131586;
  sub_100F3569C(v383, v634, type metadata accessor for CRLBasicLayerAnimation);
  *(v608 + 16) = 0x3F9EB851EB851EB8;
  v517 = v597;
  sub_100F35704(v383, type metadata accessor for CRLBasicLayerAnimation);
  v518 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v519) = 0.25;
  LODWORD(v520) = 0.25;
  LODWORD(v521) = 1.0;
  LODWORD(v522) = 1036831949;
  v523 = [v518 initWithControlPoints:v519 :v522 :v520 :v521];

  *v634 = v523;
  *(v632 + 32) = v639;
  *(v632 + 33) = &off_1018816E0;
  v524 = sub_10002C58C(v632 + 29);
  sub_100F3569C(v634, v524, type metadata accessor for CRLBasicLayerAnimation);
  *(v0 + 4880) = &type metadata for CRLBasicLayerAnimation.Def;
  *(v0 + 4888) = v607;
  v525 = swift_allocObject();
  *(v0 + 4856) = v525;
  sub_1005F8AB8(v524, v525 + 16);
  *(sub_10002A948(v559, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v559);
  sub_100F35704(v634, type metadata accessor for CRLBasicLayerAnimation);
  v526 = sub_100789704(v632, 1.97);
  v528 = v527;
  v529 = v526;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v626 + 96) = &type metadata for CRLLayerAnimationGroup;
  *(v626 + 104) = &off_101885E50;
  *(v626 + 72) = v528;
  *(v626 + 80) = v529;
  v530 = sub_1008821BC(v626, 0.0);
  v532 = v531;
  v533 = v530;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v569)
  {
    v534 = &type metadata for CRLLayerAnimationSequence;
  }

  else
  {
    v534 = &type metadata for CRLLayerAnimationGroup;
  }

  if (v569)
  {
    v535 = &off_10188A5A0;
  }

  else
  {
    v535 = &off_101885E50;
  }

  if (!v569)
  {
    v532 = v592;
    v533 = v611;
  }

  *(v0 + 7280) = v534;
  *(v0 + 7288) = v535;
  *(v0 + 7256) = v532;
  *(v0 + 7264) = v533;
  v536 = *(v574 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState);
  sub_100020E58(v560, v534);
  v537 = swift_allocObject();
  *(v537 + 16) = v598;
  *(v537 + 24) = v599;
  v538 = swift_allocObject();
  *(v538 + 2) = v598;
  *(v538 + 3) = v599;
  v538[4] = v584;
  v538[5] = v614;
  v538[6] = v613;
  *(v538 + 7) = v612;
  *(v538 + 8) = v536;
  v539 = v598;
  v540 = v599;
  v541 = v536;
  v542 = v539;
  v543 = v540;
  v544 = v541;
  sub_101137F98(0, 1, 1, sub_100F35764, v537, v586, v604, sub_100F3576C, v538, v534, v535);

  sub_100687C30(v0 + 4728);
  sub_100005070(v560);
LABEL_22:

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100F31B1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v27 = v26 - v7;
  v26[1] = *a1;
  v8 = [objc_opt_self() clearColor];
  v9 = [v8 CGColor];

  if (qword_1019F2728 != -1)
  {
    swift_once();
  }

  v10 = [qword_101AD88D8 CGColor];
  v29[0] = v9;
  v29[1] = v10;
  v30 = 18;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v11 = qword_101AD7728;
  sub_1006C121C(v29, (v5 + 24));
  UUID.init()();
  sub_100687CF4(v29);
  swift_unknownObjectWeakInit();
  v12 = *(v3 + 28);
  v13 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v14 = *(*(v13 - 8) + 56);
  v14(&v5[v12], 1, 1, v13);
  v14(&v5[*(v3 + 32)], 1, 1, v13);
  swift_unknownObjectWeakAssign();
  *(v5 + 8) = xmmword_10146D9F0;
  *v5 = v11;
  *(v5 + 36) = 0;
  *(v5 + 74) = 131586;
  v15 = v27;
  sub_100F3569C(v5, v27, type metadata accessor for CRLBasicLayerAnimation);
  *(v15 + 16) = 0x3FCC28F5C28F5C29;
  v16 = v11;
  sub_100F35704(v5, type metadata accessor for CRLBasicLayerAnimation);
  v17 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v18) = 1036831949;
  LODWORD(v19) = 0.25;
  LODWORD(v20) = 0.25;
  LODWORD(v21) = 1.0;
  v22 = [v17 initWithControlPoints:v19 :v18 :v20 :v21];

  *v15 = v22;
  v23 = v28;
  v28[3] = v3;
  v23[4] = &off_1018816E0;
  v24 = sub_10002C58C(v23);
  sub_100F3569C(v15, v24, type metadata accessor for CRLBasicLayerAnimation);
  v29[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v29[4] = sub_1005F907C();
  v29[0] = swift_allocObject();
  sub_1005F8AB8(v24, v29[0] + 16);
  *(sub_10002A948(v29, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v29);
  return sub_100F35704(v15, type metadata accessor for CRLBasicLayerAnimation);
}

uint64_t sub_100F31E8C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v26 = a4;
  v28 = a3;
  v6 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v27 = *a1;
  v29 = v26;
  v32 = a2;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v26.n128_u64[0] = qword_101AD7728;
  sub_1006C121C(&v29, (v8 + 24));
  UUID.init()();
  sub_100687CF4(&v29);
  swift_unknownObjectWeakInit();
  v12 = *(v6 + 28);
  v13 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v14 = *(*(v13 - 8) + 56);
  v14(&v8[v12], 1, 1, v13);
  v14(&v8[*(v6 + 32)], 1, 1, v13);
  swift_unknownObjectWeakAssign();
  *(v8 + 8) = xmmword_10146D9F0;
  v15 = v26.n128_u64[0];
  *v8 = v26.n128_u64[0];
  *(v8 + 36) = 0;
  *(v8 + 74) = 131586;
  sub_100F3569C(v8, v11, type metadata accessor for CRLBasicLayerAnimation);
  *(v11 + 2) = 0x3FCC28F5C28F5C29;
  v16 = v15;
  sub_100F35704(v8, type metadata accessor for CRLBasicLayerAnimation);
  v17 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v18) = 1036831949;
  LODWORD(v19) = 0.25;
  LODWORD(v20) = 0.25;
  LODWORD(v21) = 1.0;
  v22 = [v17 initWithControlPoints:v19 :v18 :v20 :v21];

  *v11 = v22;
  v23 = v28;
  v28[3] = v6;
  v23[4] = &off_1018816E0;
  v24 = sub_10002C58C(v23);
  sub_100F3569C(v11, v24, type metadata accessor for CRLBasicLayerAnimation);
  v30 = &type metadata for CRLBasicLayerAnimation.Def;
  v31 = sub_1005F907C();
  v29.n128_u64[0] = swift_allocObject();
  sub_1005F8AB8(v24, v29.n128_u64[0] + 16);
  *(sub_10002A948(&v29, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(&v29);
  return sub_100F35704(v11, type metadata accessor for CRLBasicLayerAnimation);
}

uint64_t sub_100F3217C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v21 = &v20 - v7;
  v8 = *a1;
  v9 = [objc_opt_self() clearColor];
  v10 = [v9 CGColor];

  if (qword_1019F2738 != -1)
  {
    swift_once();
  }

  v11 = [qword_101AD88E8 CGColor];
  v22[0] = v10;
  v22[1] = v11;
  v23 = 28;
  v12 = [v8 layer];
  sub_1006C121C(v22, (v5 + 40));
  UUID.init()();
  sub_100687CF4(v22);
  swift_unknownObjectWeakInit();
  v13 = *(v3 + 28);
  v14 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v15 = *(*(v14 - 8) + 56);
  v15(&v5[v13], 1, 1, v14);
  v15(&v5[*(v3 + 32)], 1, 1, v14);
  swift_unknownObjectWeakAssign();

  *(v5 + 4) = 0;
  *v5 = xmmword_1014861A0;
  *(v5 + 1) = xmmword_1014861B0;
  *(v5 + 38) = 0;
  *(v5 + 78) = 131586;
  v16 = v21;
  sub_100F3569C(v5, v21, type metadata accessor for CRLSpringLayerAnimation);
  *(v16 + 16) = 0x3FF0000000000000;
  sub_100F35704(v5, type metadata accessor for CRLSpringLayerAnimation);
  *(v16 + 24) = 0x407C200000000000;
  *v16 = xmmword_1014B91F0;
  v17 = v20;
  v20[3] = v3;
  v17[4] = &off_1018B87B8;
  v18 = sub_10002C58C(v17);
  sub_100F3569C(v16, v18, type metadata accessor for CRLSpringLayerAnimation);
  v22[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v22[4] = sub_1008DA198();
  v22[0] = swift_allocObject();
  sub_1008DA1EC(v18, v22[0] + 16);
  *(sub_10002A948(v22, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v22);
  return sub_100F35704(v16, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F324A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, ValueMetadata *a6@<D3>, unint64_t a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11, uint64_t a12, __int128 a13)
{
  v39 = a2;
  v38 = a13;
  v37 = a11;
  v22 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v36 = &v36 - v26;
  v27 = *a1;
  sub_1008DA35C(v56);
  v52 = v56[6];
  v53 = v56[7];
  v54 = v57;
  v48 = v56[2];
  v49 = v56[3];
  v51 = v56[5];
  v50 = v56[4];
  v47 = v56[1];
  v46 = v56[0];
  *v40 = a3;
  *&v40[1] = a4;
  *&v40[2] = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v45 = a10;
  v55 = 76;
  v28 = [v27 layer];
  sub_1006C121C(v40, (v24 + 40));
  UUID.init()();
  sub_100687CF4(v40);
  swift_unknownObjectWeakInit();
  v29 = *(v22 + 28);
  v30 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v31 = *(*(v30 - 8) + 56);
  v31(&v24[v29], 1, 1, v30);
  v31(&v24[*(v22 + 32)], 1, 1, v30);
  swift_unknownObjectWeakAssign();

  *(v24 + 4) = 0;
  *v24 = xmmword_1014861A0;
  *(v24 + 1) = xmmword_1014861B0;
  *(v24 + 38) = 0;
  *(v24 + 78) = 131586;
  v32 = v36;
  sub_100F3569C(v24, v36, type metadata accessor for CRLSpringLayerAnimation);
  *(v32 + 16) = 0x3FF0000000000000;
  sub_100F35704(v24, type metadata accessor for CRLSpringLayerAnimation);
  *(v32 + 24) = v37;
  *v32 = v38;
  v33 = v39;
  v39[3] = v22;
  v33[4] = &off_1018B87B8;
  v34 = sub_10002C58C(v33);
  sub_100F3569C(v32, v34, type metadata accessor for CRLSpringLayerAnimation);
  v41 = &type metadata for CRLSpringLayerAnimation.Def;
  v42 = sub_1008DA198();
  v40[0] = swift_allocObject();
  sub_1008DA1EC(v34, v40[0] + 16);
  *(sub_10002A948(v40, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v40);
  return sub_100F35704(v32, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F327D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v17 = *a1;
  if (qword_1019F2728 != -1)
  {
    swift_once();
  }

  v9 = [qword_101AD88D8 CGColor];
  if (qword_1019F2730 != -1)
  {
    swift_once();
  }

  v10 = [qword_101AD88E0 CGColor];
  v19[0] = v9;
  v19[1] = v10;
  v20 = 18;
  sub_1006C121C(v19, (v5 + 40));
  UUID.init()();
  sub_100687CF4(v19);
  swift_unknownObjectWeakInit();
  v11 = *(v3 + 28);
  v12 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v13 = *(*(v12 - 8) + 56);
  v13(&v5[v11], 1, 1, v12);
  v13(&v5[*(v3 + 32)], 1, 1, v12);
  swift_unknownObjectWeakAssign();
  *(v5 + 4) = 0;
  *v5 = xmmword_1014861A0;
  *(v5 + 1) = xmmword_1014861B0;
  *(v5 + 38) = 0;
  *(v5 + 78) = 131586;
  sub_100F3569C(v5, v8, type metadata accessor for CRLSpringLayerAnimation);
  *(v8 + 2) = 0x3FF0000000000000;
  sub_100F35704(v5, type metadata accessor for CRLSpringLayerAnimation);
  *(v8 + 3) = 0x4075E00000000000;
  *v8 = xmmword_1014B9220;
  v14 = v18;
  v18[3] = v3;
  v14[4] = &off_1018B87B8;
  v15 = sub_10002C58C(v14);
  sub_100F3569C(v8, v15, type metadata accessor for CRLSpringLayerAnimation);
  v19[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v19[4] = sub_1008DA198();
  v19[0] = swift_allocObject();
  sub_1008DA1EC(v15, v19[0] + 16);
  *(sub_10002A948(v19, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v19);
  return sub_100F35704(v8, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F32AE4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v18 = a4;
  v20 = a3;
  v6 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v19 = *a1;
  v21 = v18;
  v24 = a2;
  sub_1006C121C(&v21, (v8 + 40));
  UUID.init()();
  sub_100687CF4(&v21);
  swift_unknownObjectWeakInit();
  v12 = *(v6 + 28);
  v13 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v14 = *(*(v13 - 8) + 56);
  v14(&v8[v12], 1, 1, v13);
  v14(&v8[*(v6 + 32)], 1, 1, v13);
  swift_unknownObjectWeakAssign();
  *(v8 + 4) = 0;
  *v8 = xmmword_1014861A0;
  *(v8 + 1) = xmmword_1014861B0;
  *(v8 + 38) = 0;
  *(v8 + 78) = 131586;
  sub_100F3569C(v8, v11, type metadata accessor for CRLSpringLayerAnimation);
  *(v11 + 2) = 0x3FF0000000000000;
  sub_100F35704(v8, type metadata accessor for CRLSpringLayerAnimation);
  *(v11 + 3) = 0x4075E00000000000;
  *v11 = xmmword_1014B9220;
  v15 = v20;
  v20[3] = v6;
  v15[4] = &off_1018B87B8;
  v16 = sub_10002C58C(v15);
  sub_100F3569C(v11, v16, type metadata accessor for CRLSpringLayerAnimation);
  v22 = &type metadata for CRLSpringLayerAnimation.Def;
  v23 = sub_1008DA198();
  v21.n128_u64[0] = swift_allocObject();
  sub_1008DA1EC(v16, v21.n128_u64[0] + 16);
  *(sub_10002A948(&v21, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(&v21);
  return sub_100F35704(v11, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F32D64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v20 = &v19 - v7;
  v8 = *a1;
  if (qword_1019F2738 != -1)
  {
    swift_once();
  }

  v9 = [qword_101AD88E8 CGColor];
  if (qword_1019F2740 != -1)
  {
    swift_once();
  }

  v10 = [qword_101AD88F0 CGColor];
  v21[0] = v9;
  v21[1] = v10;
  v22 = 28;
  v11 = [v8 layer];
  sub_1006C121C(v21, (v5 + 40));
  UUID.init()();
  sub_100687CF4(v21);
  swift_unknownObjectWeakInit();
  v12 = *(v3 + 28);
  v13 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v14 = *(*(v13 - 8) + 56);
  v14(&v5[v12], 1, 1, v13);
  v14(&v5[*(v3 + 32)], 1, 1, v13);
  swift_unknownObjectWeakAssign();

  *(v5 + 4) = 0;
  *v5 = xmmword_1014861A0;
  *(v5 + 1) = xmmword_1014861B0;
  *(v5 + 38) = 0;
  *(v5 + 78) = 131586;
  v15 = v20;
  sub_100F3569C(v5, v20, type metadata accessor for CRLSpringLayerAnimation);
  *(v15 + 16) = 0x3FF0000000000000;
  sub_100F35704(v5, type metadata accessor for CRLSpringLayerAnimation);
  *(v15 + 24) = 0x4075E00000000000;
  *v15 = xmmword_1014B9220;
  v16 = v19;
  v19[3] = v3;
  v16[4] = &off_1018B87B8;
  v17 = sub_10002C58C(v16);
  sub_100F3569C(v15, v17, type metadata accessor for CRLSpringLayerAnimation);
  v21[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v21[4] = sub_1008DA198();
  v21[0] = swift_allocObject();
  sub_1008DA1EC(v17, v21[0] + 16);
  *(sub_10002A948(v21, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v21);
  return sub_100F35704(v15, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F33098@<X0>(void **a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, __n128 a5@<Q2>)
{
  v25 = a5;
  v24 = a2;
  v8 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v23 - v13;
  v15 = *a1;
  *v26 = a3;
  v27 = 22;
  v23 = [v15 layer];
  sub_1006C121C(v26, (v10 + 40));
  UUID.init()();
  sub_100687CF4(v26);
  swift_unknownObjectWeakInit();
  v16 = *(v8 + 28);
  v17 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v18 = *(*(v17 - 8) + 56);
  v18(&v10[v16], 1, 1, v17);
  v18(&v10[*(v8 + 32)], 1, 1, v17);
  v19 = v23;
  swift_unknownObjectWeakAssign();

  *(v10 + 4) = 0;
  *v10 = xmmword_1014861A0;
  *(v10 + 1) = xmmword_1014861B0;
  *(v10 + 38) = 0;
  *(v10 + 78) = 131586;
  sub_100F3569C(v10, v14, type metadata accessor for CRLSpringLayerAnimation);
  *(v14 + 2) = 0x3FF0000000000000;
  sub_100F35704(v10, type metadata accessor for CRLSpringLayerAnimation);
  *(v14 + 3) = a4;
  *v14 = v25;
  v20 = v24;
  v24[3] = v8;
  v20[4] = &off_1018B87B8;
  v21 = sub_10002C58C(v20);
  sub_100F3569C(v14, v21, type metadata accessor for CRLSpringLayerAnimation);
  v26[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v26[4] = sub_1008DA198();
  v26[0] = swift_allocObject();
  sub_1008DA1EC(v21, v26[0] + 16);
  *(sub_10002A948(v26, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(v26);
  return sub_100F35704(v14, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F33334@<X0>(void **a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>, double a4@<D1>, __n128 a5@<Q2>)
{
  v23 = a5;
  v21 = a3;
  v22 = a2;
  v7 = type metadata accessor for CRLSpringLayerAnimation();
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = *a1;
  v24 = v21;
  v27 = 24;
  v21.n128_u64[0] = [v13 layer];
  sub_1006C121C(&v24, (v9 + 40));
  UUID.init()();
  sub_100687CF4(&v24);
  swift_unknownObjectWeakInit();
  v14 = *(v7 + 28);
  v15 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v16 = *(*(v15 - 8) + 56);
  v16(&v9[v14], 1, 1, v15);
  v16(&v9[*(v7 + 32)], 1, 1, v15);
  v17 = v21.n128_u64[0];
  swift_unknownObjectWeakAssign();

  *(v9 + 4) = 0;
  *v9 = xmmword_1014861A0;
  *(v9 + 1) = xmmword_1014861B0;
  *(v9 + 38) = 0;
  *(v9 + 78) = 131586;
  sub_100F3569C(v9, v12, type metadata accessor for CRLSpringLayerAnimation);
  *(v12 + 2) = 0x3FF0000000000000;
  sub_100F35704(v9, type metadata accessor for CRLSpringLayerAnimation);
  *(v12 + 3) = a4;
  *v12 = v23;
  v18 = v22;
  v22[3] = v7;
  v18[4] = &off_1018B87B8;
  v19 = sub_10002C58C(v18);
  sub_100F3569C(v12, v19, type metadata accessor for CRLSpringLayerAnimation);
  v25 = &type metadata for CRLSpringLayerAnimation.Def;
  v26 = sub_1008DA198();
  v24.n128_u64[0] = swift_allocObject();
  sub_1008DA1EC(v19, v24.n128_u64[0] + 16);
  *(sub_10002A948(&v24, &type metadata for CRLSpringLayerAnimation.Def) + 313) = 0;
  sub_1012340B0(&v24);
  return sub_100F35704(v12, type metadata accessor for CRLSpringLayerAnimation);
}

uint64_t sub_100F335D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, ValueMetadata *a6@<D3>, unint64_t a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v43 = a2;
  v19 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v42 = &v41 - v23;
  v24 = *a1;
  sub_1008DA35C(v60);
  v56 = v60[6];
  v57 = v60[7];
  v58 = v61;
  v52 = v60[2];
  v53 = v60[3];
  v55 = v60[5];
  v54 = v60[4];
  v51 = v60[1];
  v50 = v60[0];
  *v44 = a3;
  *&v44[1] = a4;
  *&v44[2] = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v59 = 76;
  if (qword_1019F1E20 != -1)
  {
    swift_once();
  }

  v25 = [v24 layer];
  sub_1006C121C(v44, (v21 + 24));
  UUID.init()();
  sub_100687CF4(v44);
  swift_unknownObjectWeakInit();
  v26 = *(v19 + 28);
  v27 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v28 = *(*(v27 - 8) + 56);
  v28(&v21[v26], 1, 1, v27);
  v28(&v21[*(v19 + 32)], 1, 1, v27);
  swift_unknownObjectWeakAssign();

  *(v21 + 8) = xmmword_10146D9F0;
  v29 = v41;
  v30 = v42;
  *v21 = v41;
  *(v21 + 36) = 0;
  *(v21 + 74) = 131586;
  sub_100F3569C(v21, v30, type metadata accessor for CRLBasicLayerAnimation);
  *(v30 + 16) = 0x3FB999999999999ALL;
  v31 = v29;
  sub_100F35704(v21, type metadata accessor for CRLBasicLayerAnimation);
  v32 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v33) = 1036831949;
  LODWORD(v34) = 0.25;
  LODWORD(v35) = 0.25;
  LODWORD(v36) = 1.0;
  v37 = [v32 initWithControlPoints:v34 :v33 :v35 :v36];

  *v30 = v37;
  v38 = v43;
  v43[3] = v19;
  v38[4] = &off_1018816E0;
  v39 = sub_10002C58C(v38);
  sub_100F3569C(v30, v39, type metadata accessor for CRLBasicLayerAnimation);
  v45 = &type metadata for CRLBasicLayerAnimation.Def;
  v46 = sub_1005F907C();
  v44[0] = swift_allocObject();
  sub_1005F8AB8(v39, v44[0] + 16);
  *(sub_10002A948(v44, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
  sub_1006BF678(v44);
  return sub_100F35704(v30, type metadata accessor for CRLBasicLayerAnimation);
}

id sub_100F33968(void *a1, void *a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions:1];
  [a1 setHidden:0];
  [a2 setHidden:0];
  v5 = [a1 layer];
  if (v5)
  {
    v6 = v5;
    [v5 setOpacity:0.0];
  }

  v7 = [a2 layer];
  if (v7)
  {
    v8 = v7;
    [v7 setOpacity:0.0];
  }

  return [v4 commit];
}

id sub_100F33A6C(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_opt_self();
  [v14 begin];
  [v14 setDisableActions:1];
  [a1 setHidden:1];
  [a2 setHidden:1];
  v15 = [a1 layer];
  [v15 setFrame:{a4, a5, a6, a7}];

  v16 = [a2 layer];
  [v16 setFrame:{a4, a5, a6, a7}];

  v17 = [a1 layer];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 sublayers];

    if (v19)
    {
      sub_100006370(0, &qword_1019FFFF0);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v14;
      v37 = a3;
      if (v20 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v22 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          [v23 removeFromSuperlayer];

          ++v22;
          if (v25 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:
    }
  }

  v26 = [a2 layer];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 sublayers];

    if (v28)
    {
      sub_100006370(0, &qword_1019FFFF0);
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v29 >> 62)
      {
        goto LABEL_31;
      }

      for (j = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
      {
        v31 = 0;
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          [v32 removeFromSuperlayer];

          ++v31;
          if (v34 == j)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        ;
      }

LABEL_32:
    }
  }

  result = [v14 commit];
  *(a3 + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) = 0;
  return result;
}

uint64_t sub_100F33DE0(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1008D1DDC(&v86);
    if (v86)
    {
      v93[0] = v88;
      v93[1] = v89;
      v93[2] = v90;
      v94 = v91;
      v92[0] = v86;
      v92[1] = v87;
      sub_10000BE14(v93, &v86, &qword_101A07158);
      if (*(&v87 + 1))
      {
        v6 = *(*sub_100020E58(&v86, *(&v87 + 1)) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper);
        sub_100005070(&v86);
        [v6 safeAreaInsets];
        v8 = v7;
        [v6 frame];
        MinX = CGRectGetMinX(v95);
        [v6 frame];
        MinY = CGRectGetMinY(v96);
        [v6 frame];
        Width = CGRectGetWidth(v97);
        [v6 frame];
        Height = CGRectGetHeight(v98);
        v13 = *&v5[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
        v14 = sub_1010532BC();

        if (v14 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v16 = v8 + MinY;
        v17 = Height - v8;
        if (v15)
        {
          if (v15 < 1)
          {
            __break(1u);
LABEL_24:
            swift_once();
LABEL_21:
            v67 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v14;
            v69 = sub_100006370(0, &qword_1019F4D30);
            *(inited + 96) = v69;
            v70 = sub_1005CF04C();
            *(inited + 104) = v70;
            *(inited + 72) = v15;
            *(inited + 136) = &type metadata for String;
            v71 = sub_1000053B0();
            *(inited + 112) = v1;
            *(inited + 120) = v2;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v71;
            *(inited + 152) = 1610;
            v72 = v86;
            *(inited + 216) = v69;
            *(inited + 224) = v70;
            *(inited + 192) = v72;
            v73 = v15;
            v74 = v72;
            v75 = static os_log_type_t.error.getter();
            sub_100005404(v67, &_mh_execute_header, v75, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v76 = static os_log_type_t.error.getter();
            sub_100005404(v67, &_mh_execute_header, v76, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v77 = swift_allocObject();
            v77[2] = 8;
            v77[3] = 0;
            v77[4] = 0;
            v77[5] = 0;
            v78 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v79 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v80 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v81 = String._bridgeToObjectiveC()();

            [v83 handleFailureInFunction:v79 file:v80 lineNumber:1610 isFatal:0 format:v81 args:v78];

            sub_100687C30(v92);
            return 0;
          }

          v18 = 0;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v19 = *(v14 + 8 * v18 + 32);
            }

            v20 = v19;
            ++v18;
            [v19 CGRectValue];
            MinX = sub_1001218BC(MinX, v16, Width, v17, v21, v22, v23, v24);
            v16 = v25;
            Width = v26;
            v17 = v27;
          }

          while (v15 != v18);
        }

        v84 = a1;

        v28 = type metadata accessor for CRLSceneCaptureSnapshotLayer();
        v29 = objc_allocWithZone(v28);
        v30 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer;
        *&v29[v30] = [objc_allocWithZone(CALayer) init];
        v31 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer;
        *&v29[v31] = [objc_allocWithZone(type metadata accessor for CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer()) init];
        v32 = [v6 snapshotViewAfterScreenUpdates:0];
        if (v32)
        {
          v82 = v32;
          v33 = [v32 layer];
          *&v29[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_renderLayer] = v33;
          v85.receiver = v29;
          v85.super_class = v28;
          v34 = objc_msgSendSuper2(&v85, "init");
          [v34 setMasksToBounds:1];
          [v34 setFrame:{MinX, v16, Width, v17}];
          v35 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer;
          [*&v34[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_coordinateSpaceLayer] setMasksToBounds:0];
          [*&v34[v35] setFrame:{0.0, 0.0, Width, v17}];
          [v34 addSublayer:*&v34[v35]];
          v36 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer;
          [*&v34[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_chromeClippingLayer] setMasksToBounds:1];
          v37 = *&v34[v36];
          [v37 frame];
          [v37 setFrame:?];

          v38 = *&v34[v35];
          v39 = *&v34[v36];
          [v38 frame];
          v41 = sub_10011F31C(0.0, 0.0, v40);
          v43 = v42;
          [v39 frame];
          [v39 setFrame:{v41, v43}];

          [*&v34[v35] addSublayer:*&v34[v36]];
          v44 = OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_renderLayer;
          v45 = *&v34[OBJC_IVAR____TtC8Freeform28CRLSceneCaptureSnapshotLayer_renderLayer];
          [v6 frame];
          [v45 frame];
          [v45 setFrame:?];

          v46 = *&v34[v44];
          v47 = sub_10011F31C(0.0, 0.0, MinX);
          v49 = v48;
          v50 = v46;
          [v50 frame];
          [v50 setFrame:{v47, v49}];

          [*&v34[v36] addSublayer:*&v34[v44]];
          v51 = *&v34[v44];
          v52 = *&v34[v35];
          v53 = v51;
          [v53 bounds];
          [v53 convertRect:*&v34[v35] toLayer:?];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;

          v62 = &v52[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_renderRect];
          *v62 = v55;
          *(v62 + 1) = v57;
          *(v62 + 2) = v59;
          *(v62 + 3) = v61;
          sub_100AC3C28();

          [v84 addSublayer:v34];
          sub_100687C30(v92);
          return v34;
        }

        swift_deallocPartialClassInstance();
        v83 = objc_opt_self();
        LODWORD(v14) = [v83 _atomicIncrementAssertCount];
        *&v86 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v86);
        StaticString.description.getter();
        v15 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v64 = String._bridgeToObjectiveC()();

        v65 = [v64 lastPathComponent];

        v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v66;

        if (qword_1019F20A0 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      sub_100687C30(v92);

      v63 = &qword_101A07158;
    }

    else
    {

      v63 = &unk_101A23610;
    }

    sub_10000CAAC(&v86, v63);
    return 0;
  }

  return result;
}

id sub_100F3486C(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for CRLScenesNavigatorViewController.PlatformView();
  v7 = objc_msgSendSuper2(&v17, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100006370(0, &qword_1019F6D00);
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = swift_unknownObjectWeakLoadStrong();

        if (v13)
        {
          v14 = [v13 parentViewController];

          if (v14)
          {
            v15 = [v14 view];

            if (v15)
            {
              v7 = [v15 hitTest:a1 withEvent:{a2, a3}];
            }
          }
        }
      }
    }
  }

  return v7;
}

id sub_100F34BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100F34C64()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesPopoverState;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesPopoverState);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.getter();

  if (v6)
  {

    v4 = *(v0 + v1);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    static Published.subscript.setter();
  }
}

uint64_t sub_100F34DD8(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v4;
  sub_100006370(0, &qword_1019F54D0);
  v6 = static NSObject.== infix(_:_:)();
  if ((v6 & 1) == 0 && (static NSObject.== infix(_:_:)() & 1) == 0)
  {
LABEL_11:
    while (1)
    {
LABEL_7:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return v6 & 1;
}

void sub_100F34EFC(void *a1)
{
  if (([a1 transitionWasCancelled] & 1) == 0)
  {
    v3 = [a1 containerView];
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v3 addSubview:v4];

      v6 = [a1 containerView];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      LOBYTE(v5) = sub_100F34DD8(a1);
      v15 = [v1 view];
      v16 = v15;
      if ((v5 & 1) == 0)
      {
        if (v15)
        {
          [v15 setFrame:{v8, v10, v12, v14}];

          v24 = objc_opt_self();
          v25 = swift_allocObject();
          *(v25 + 16) = v1;
          *(v25 + 24) = v8;
          *(v25 + 32) = v10 + 100.0;
          *(v25 + 40) = v12;
          *(v25 + 48) = v14;
          v34 = sub_100F35CB8;
          v35 = v25;
          v30 = _NSConcreteStackBlock;
          v31 = *"";
          v32 = sub_100007638;
          v33 = &unk_1018A8D48;
          v26 = _Block_copy(&v30);
          v27 = v1;

          v28 = swift_allocObject();
          *(v28 + 16) = a1;
          v34 = sub_100F35CBC;
          v35 = v28;
          v30 = _NSConcreteStackBlock;
          v31 = *"";
          v32 = sub_1005CC4AC;
          v33 = &unk_1018A8D98;
          v29 = _Block_copy(&v30);
          swift_unknownObjectRetain();

          [v24 animateWithDuration:0 delay:v26 options:v29 animations:UINavigationControllerHideShowBarDuration completion:0.0];
          _Block_release(v29);
          _Block_release(v26);
          return;
        }

        goto LABEL_13;
      }

      if (v15)
      {
        [v15 setFrame:{v8, v10 + 100.0, v12, v14}];

        v17 = swift_allocObject();
        *(v17 + 16) = v1;
        *(v17 + 24) = v8;
        *(v17 + 32) = v10;
        *(v17 + 40) = v12;
        *(v17 + 48) = v14;
        v18 = objc_allocWithZone(UIViewPropertyAnimator);
        v34 = sub_100F35D58;
        v35 = v17;
        v30 = _NSConcreteStackBlock;
        v31 = *"";
        v32 = sub_100007638;
        v33 = &unk_1018A8DE8;
        v19 = _Block_copy(&v30);
        v20 = v1;

        v21 = [v18 initWithDuration:v19 dampingRatio:0.35 animations:0.6];
        _Block_release(v19);
        v22 = swift_allocObject();
        *(v22 + 16) = a1;
        v34 = sub_100F35CF8;
        v35 = v22;
        v30 = _NSConcreteStackBlock;
        v31 = *"";
        v32 = sub_100FB5BB8;
        v33 = &unk_1018A8E38;
        v23 = _Block_copy(&v30);
        swift_unknownObjectRetain();

        [v21 addCompletion:v23];
        _Block_release(v23);
        [v21 startAnimation];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  [a1 completeTransition:0];
}

uint64_t sub_100F35584@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100F3562C(void *a1)
{
  sub_100F239FC();
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsUpdateConstraints];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100F3569C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F35704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F35780()
{
  if (v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_useCompactFloatingStyle] == 1)
  {
    if (qword_1019F2648 != -1)
    {
      swift_once();
    }

    v1 = &qword_101AD87F8;
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorState];
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    static Published.subscript.getter();

    if (v7)
    {
      v4 = [v0 traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (v5 == 2)
      {
        if (qword_1019F2638 != -1)
        {
          swift_once();
        }

        v1 = &qword_101AD87E8;
      }

      else
      {
        if (qword_1019F2630 != -1)
        {
          swift_once();
        }

        v1 = &qword_101AD87E0;
      }
    }

    else
    {
      if (qword_1019F2640 != -1)
      {
        swift_once();
      }

      v1 = &qword_101AD87F0;
    }
  }

  return *v1;
}

void sub_100F35948()
{
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_scenesNavigatorStatePassthroughObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_notificationObservers) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingTopCaptureSnapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatingBottomCaptureSnapshotView) = 0;
  v1 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_floatingView;
  type metadata accessor for CRLShadowView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_bezelView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_drawerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_backdropView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_leadingSeparatorView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController_trailingSeparatorView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___previousSceneButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___nextSceneButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___popoverButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___navigationButtons) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___drawerWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___baseConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___grabberConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___separatorHeightConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___noGrabberConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatsCenterAlignedConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___floatsTrailingAlignedConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLScenesNavigatorViewController____lazy_storage___attachedToZoomControlConstraints) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100F35B64(void *a1)
{
  if (a1)
  {
    v2 = [swift_unknownObjectRetain() viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (!v2)
    {
      swift_unknownObjectRelease();
      return;
    }

    v3 = v2;
    v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for CRLScenesNavigatorViewController();
      if (swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        return;
      }

      if (!swift_dynamicCastClass())
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_100F35F04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLBoardSelection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100F35F5C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v46 = &v35 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v35 - v10;
  v11 = __chkstk_darwin(v9);
  v43 = &v35 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v37 = &v35 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v42 = (v6 + 16);
  v19 = (v6 + 8);
  v20 = (v6 + 32);
  v36 = v6;
  v39 = (v6 + 48);
  v40 = (v6 + 56);
  v21 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v38 = *(v18 + 72);
  v48 = _swiftEmptyArrayStorage;
  v41 = v15;
  do
  {
    sub_100F87E04(v15);
    v22 = v44;
    (*v42)(v44, v15, v5);
    v23 = v19;
    v24 = v43;
    LOBYTE(v22) = sub_100E6AF38(v43, v22);
    v25 = *v23;
    v26 = v24;
    v19 = v23;
    (*v23)(v26, v5);
    if (v22)
    {
      v27 = v46;
      (*v20)(v46, v15, v5);
      v28 = 0;
    }

    else
    {
      v25(v15, v5);
      v28 = 1;
      v27 = v46;
    }

    (*v40)(v27, v28, 1, v5);
    if ((*v39)(v27, 1, v5) == 1)
    {
      sub_10000CAAC(v27, &qword_1019F6990);
    }

    else
    {
      v29 = *v20;
      v30 = v37;
      (*v20)(v37, v27, v5);
      v29(v45, v30, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_100B356D0(0, *(v48 + 2) + 1, 1, v48);
      }

      v32 = *(v48 + 2);
      v31 = *(v48 + 3);
      if (v32 >= v31 >> 1)
      {
        v48 = sub_100B356D0(v31 > 1, v32 + 1, 1, v48);
      }

      v33 = v48;
      *(v48 + 2) = v32 + 1;
      v29(&v33[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32], v45, v5);
      v19 = v23;
    }

    v21 += v38;
    --v17;
    v15 = v41;
  }

  while (v17);
  return v48;
}

void *sub_100F363A8(uint64_t a1)
{
  v3 = _s5BoardVMa(0);
  __chkstk_darwin(v3 - 8);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v49 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F6990);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v44 - v11;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v44 - v16;
  v58 = type metadata accessor for UUID();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v61 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v20)
  {
    v45 = v10;
    v44[0] = v1;
    v63 = _swiftEmptyArrayStorage;
    v57 = a1;
    sub_100776524(0, v20, 0);
    v62 = v63;
    v60 = v57 + 56;
    result = _HashTable.startBucket.getter();
    v22 = result;
    v23 = v57;
    v24 = 0;
    v47 = (v18 + 48);
    v48 = (v18 + 16);
    v52 = v15;
    v53 = v18;
    v56 = (v18 + 32);
    v44[1] = "odel index path %@";
    v44[2] = "00-0000-000000000001";
    v51 = v57 + 64;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v23 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v60 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_32;
      }

      v59 = *(v23 + 36);
      sub_1000652DC(*(v23 + 48) + *(v54 + 72) * v22, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000652DC(v17, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = v49;
          sub_100065D50(v15, v49, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10003E264(v61);
          v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        }

        else
        {
          v28 = v50;
          sub_100065D50(v15, v50, _s5BoardVMa);
          (*v48)(v61, v28, v58);
          v29 = _s5BoardVMa;
        }

        sub_10000BBC4(v28, v29);
      }

      else
      {
        if (*v15)
        {
          v30 = v45;
          UUID.init(uuidString:)();
          v31 = v58;
          result = (*v47)(v30, 1, v58);
          if (result == 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v30 = v46;
          UUID.init(uuidString:)();
          v31 = v58;
          result = (*v47)(v30, 1, v58);
          if (result == 1)
          {
            goto LABEL_37;
          }
        }

        (*v56)(v61, v30, v31);
      }

      v32 = v17;
      sub_10000BBC4(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v33 = v62;
      v63 = v62;
      v35 = v62[2];
      v34 = v62[3];
      if (v35 >= v34 >> 1)
      {
        sub_100776524(v34 > 1, v35 + 1, 1);
        v33 = v63;
      }

      v33[2] = v35 + 1;
      v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v62 = v33;
      result = (*(v53 + 32))(v33 + v36 + *(v53 + 72) * v35, v61, v58);
      v23 = v57;
      v25 = 1 << *(v57 + 32);
      if (v22 >= v25)
      {
        goto LABEL_33;
      }

      v37 = *(v60 + 8 * v26);
      if ((v37 & (1 << v22)) == 0)
      {
        goto LABEL_34;
      }

      if (v59 != *(v57 + 36))
      {
        goto LABEL_35;
      }

      v38 = v37 & (-2 << (v22 & 0x3F));
      if (v38)
      {
        v25 = __clz(__rbit64(v38)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v15 = v52;
      }

      else
      {
        v39 = v26 << 6;
        v40 = v26 + 1;
        v15 = v52;
        v41 = (v51 + 8 * v26);
        while (v40 < (v25 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_1000341AC(v22, v59, 0);
            v23 = v57;
            v25 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v22, v59, 0);
        v23 = v57;
      }

LABEL_4:
      ++v24;
      v22 = v25;
      v17 = v32;
      if (v24 == v20)
      {
        return v62;
      }
    }

    __break(1u);
LABEL_32:
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
  }

  return result;
}

Swift::Int sub_100F36A44(char **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_10113E034(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_100F668A0(v9, a2, a3);
  *a1 = v6;
  return result;
}

void *sub_100F36AC8()
{
  v42 = _s5BoardVMa(0);
  __chkstk_darwin(v42);
  v38 = &v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1005B981C(&unk_101A23BD0);
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_100F378A4();
  v14 = v13[2];
  if (v14)
  {
    v15 = *(v7 + 80);
    v33 = v13;
    v16 = v13 + ((v15 + 32) & ~v15);
    v17 = *(v7 + 72);
    v18 = _swiftEmptyArrayStorage;
    v19 = &unk_101A23BD0;
    v36 = v12;
    v37 = v6;
    v34 = v9;
    v35 = v17;
    do
    {
      sub_1000652DC(v16, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_100065D50(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v20 = v18;
        v21 = v19;
        v22 = v38;
        sub_100065D50(v9, v38, _s5BoardVMa);
        v23 = v39;
        v24 = (v39 + *(v41 + 48));
        sub_1000652DC(v22, v39, type metadata accessor for CRLBoardIdentifier);
        v25 = (v22 + *(v42 + 24));
        v26 = v5;
        v28 = *v25;
        v27 = v25[1];

        v29 = v22;
        v19 = v21;
        v18 = v20;
        sub_10000BBC4(v29, _s5BoardVMa);
        *v24 = v28;
        v24[1] = v27;
        v5 = v26;
        sub_10003DFF8(v23, v26, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100B37B58(0, v20[2] + 1, 1, v20);
        }

        v31 = v18[2];
        v30 = v18[3];
        v12 = v36;
        if (v31 >= v30 >> 1)
        {
          v18 = sub_100B37B58(v30 > 1, v31 + 1, 1, v18);
        }

        v18[2] = v31 + 1;
        sub_10003DFF8(v5, v18 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31, v19);
        v9 = v34;
        v17 = v35;
      }

      else
      {
        sub_10000BBC4(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v18;
}

void sub_100F36EC8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver))
  {
    if (([swift_unknownObjectRetain() isEqual:a1] & 1) != 0 || !a1)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v25 = objc_opt_self();
      v3 = [v25 _atomicIncrementAssertCount];
      v26 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v26);
      StaticString.description.getter();
      v4 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v5 lastPathComponent];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v10 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v3;
      v12 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v12;
      v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v13;
      *(inited + 72) = v4;
      *(inited + 136) = &type metadata for String;
      v14 = sub_1000053B0();
      *(inited + 112) = v7;
      *(inited + 120) = v9;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v14;
      *(inited + 152) = 69;
      v15 = v26;
      *(inited + 216) = v12;
      *(inited + 224) = v13;
      *(inited + 192) = v15;
      v16 = v4;
      v17 = v15;
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v10, &_mh_execute_header, v19, "Created a new renameDeleteObserver before the old one was torn down", 67, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v20 = swift_allocObject();
      v20[2] = 8;
      v20[3] = 0;
      v20[4] = 0;
      v20[5] = 0;
      v21 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      [v25 handleFailureInFunction:v22 file:v23 lineNumber:69 isFatal:0 format:v24 args:v21];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100F372FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString) == a1 && *(v2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8) == a2;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete) = 0;
    sub_100F373E0();
    sub_1008A0F80();
    sub_100064B8C(0);
    v5 = sub_10006F798();
    v8 = v5;
    v6 = v3[1];
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    [(objc_class *)v5 setEnabled:v7 == 0];
  }
}

uint64_t sub_100F373E0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_1019F2D90);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100F74754;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A9190;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10006852C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void sub_100F376A0(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1019F14A0 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD61F0;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  AnyHashable.init<A>(_:)();
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  v5 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v6;
  *(inited + 80) = v5;

  AnyHashable.init<A>(_:)();
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v7;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019FB8B0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:{isa, 0xD000000000000011, 0x800000010158B350}];
}

void *sub_100F378A4()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v31 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = v29 - v8;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 collectionView];
  if (result)
  {
    v14 = result;
    v15 = [result indexPathsForSelectedItems];

    if (v15)
    {
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = *(v16 + 16);
      if (v17)
      {
        v19 = *(v10 + 16);
        v18 = v10 + 16;
        v20 = *(v18 + 64);
        v29[1] = v16;
        v21 = v16 + ((v20 + 32) & ~v20);
        v32 = *(v18 + 56);
        v33 = v19;
        v22 = (v18 - 8);
        v23 = _swiftEmptyArrayStorage;
        v29[2] = v1;
        v19(v12, v21, v9);
        while (1)
        {
          v24 = sub_10005AFE0();
          sub_10079330C(v12, v4);

          (*v22)(v12, v9);
          v25 = _s4NodeVMa(0);
          if ((*(*(v25 - 8) + 48))(v4, 1, v25) == 1)
          {
            sub_10000CAAC(v4, &unk_1019FB770);
          }

          else
          {
            v26 = v30;
            sub_1000652DC(v4, v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v4, _s4NodeVMa);
            sub_100065D50(v26, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_100B3648C(0, v23[2] + 1, 1, v23);
            }

            v28 = v23[2];
            v27 = v23[3];
            if (v28 >= v27 >> 1)
            {
              v23 = sub_100B3648C(v27 > 1, v28 + 1, 1, v23);
            }

            v23[2] = v28 + 1;
            sub_100065D50(v34, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
          }

          v21 += v32;
          if (!--v17)
          {
            break;
          }

          v33(v12, v21, v9);
        }

        return v23;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F37CBC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100F8AB98(a1);
  v6 = sub_100F8A1C8(a1);
  v7 = sub_10004B3DC(v6);

  if (*(v7 + 16))
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v7;
    v11[5] = v9;
    v11[6] = v5;

    sub_10064191C(0, 0, v4, &unk_1014B98A0, v11);
  }

  else
  {
  }
}

id sub_100F37F34(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_100F8A1C8(a1);
  v7 = sub_10004B3DC(v6);

  if (*(v7 + 16))
  {
    v8 = v1;
    v9 = sub_100F544AC(v7);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v11;
    *(v13 + 40) = v7;
    *(v13 + 48) = v9 & 1;

    sub_10064191C(0, 0, v5, &unk_1014B99B0, v13);

    return [v8 setEditing:0 animated:1];
  }

  else
  {
  }
}

uint64_t sub_100F384D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_100064314(a1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions], a4 & 1, a1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2]);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

BOOL sub_100F38610()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v5 = sub_1005B981C(&qword_1019F3480);
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 4, 5, v5);
  v7 = sub_100068604(v0 + v4, v3);
  sub_10000BBC4(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v7)
  {
    return 0;
  }

  v6(v3, 3, 5, v5);
  v8 = sub_100068604(v0 + v4, v3);
  sub_10000BBC4(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v8)
  {
    return 0;
  }

  else
  {
    v6(v3, 5, 5, v5);
    v10 = sub_100068604(v0 + v4, v3);
    sub_10000BBC4(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    return !v10;
  }
}

void sub_100F387B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100064B8C((*(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) & 1) == 0);
    sub_10006D850();
  }
}

id sub_100F38874()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0];

  v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver];
  if (v4)
  {

    v5 = [v1 defaultCenter];
    [v5 removeObserver:v4];

    *&v0[v3] = 0;
  }

  v6 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver;
  v7 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver];
  if (v7)
  {

    v8 = [v1 defaultCenter];
    [v8 removeObserver:v7];

    *&v0[v6] = 0;
  }

  v9 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver;
  v10 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver];
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = [v1 defaultCenter];
    [v11 removeObserver:v10];

    swift_unknownObjectRelease();
    *&v0[v9] = 0;
    swift_unknownObjectRelease();
  }

  v12 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver;
  v13 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver];
  if (v13)
  {
    swift_unknownObjectRetain();
    v14 = [v1 defaultCenter];
    [v14 removeObserver:v13];
    swift_unknownObjectRelease();
  }

  *&v0[v12] = 0;
  swift_unknownObjectRelease();
  v15 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver;
  v16 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver];
  if (v16)
  {
    swift_unknownObjectRetain();
    v17 = [v1 defaultCenter];
    [v17 removeObserver:v16];
    swift_unknownObjectRelease();
  }

  *&v0[v15] = 0;
  swift_unknownObjectRelease();
  [objc_opt_self() removeKeyboardObserver:v0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for CRLiOSFolderGridViewController();
  return objc_msgSendSuper2(&v19, "dealloc");
}

uint64_t sub_100F38D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100F794E8, v6, v5);
}

void sub_100F38DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v9;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_10064191C(0, 0, v7, a4, v13);
  }
}

uint64_t sub_100F38F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100F38FD4, v6, v5);
}

uint64_t sub_100F38FD4()
{

  sub_10006ACC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F39038(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CRLiOSFolderGridViewController();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  [v2 setEditing:0 animated:0];
  sub_100070F30();
  sub_100F5E980(0, 3u);

  v5 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver];
  if (v5)
  {
    if (*(v5 + 16))
    {

      sub_100F5E980(0, 3u);
    }
  }

  return result;
}

uint64_t sub_100F391E8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006E75C();
  sub_10006D41C();
  sub_10006E9B4();
  sub_10006D850();
  sub_100F3FE88();
  sub_100006370(0, &qword_1019F2D90);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100F772B0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A9690;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10006852C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void sub_100F394BC(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 collectionViewLayout];

    [v3 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100F39588(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) == (result & 1))
  {
    return result;
  }

  v2 = result;
  v3 = sub_100070F30();
  if (v2)
  {
    sub_100F5E980(1, 3u);

    v4 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver);
    if (!v4 || !*(v4 + 16))
    {
      return result;
    }

    sub_100F5E980(1, 3u);
    goto LABEL_32;
  }

  sub_100F5FB78(1, 3u, 0);
  v5 = *(v3 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(4uLL);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48) + 16 * v8;
      if (*(v10 + 8) >= 3u && *v10 == 1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v29 = v5;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_100E85E84();
    }

    v12 = *(v5 + 48) + 16 * v8;
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_100F65BD4(v8);
    sub_1007A98C8(v13, v14);
    v5 = v29;
  }

  else
  {
LABEL_13:
  }

  v15 = *(v3 + 48);

  sub_100F5DE4C(v5);
  *(v3 + 48) = v5;

  sub_100F5E170(v15);

  v16 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {

      sub_100F5FB78(1, 3u, 0);
      v18 = *(v17 + 48);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(4uLL);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = *(v18 + 48) + 16 * v21;
          if (*(v23 + 8) >= 3u && *v23 == 1)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v30 = v18;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100E85E84();
        }

        v25 = *(v18 + 48) + 16 * v21;
        v26 = *v25;
        v27 = *(v25 + 8);
        sub_100F65BD4(v21);
        sub_1007A98C8(v26, v27);
        v18 = v30;
      }

      else
      {
LABEL_26:
      }

      v28 = *(v17 + 48);

      sub_100F5DE4C(v18);
      *(v17 + 48) = v18;

      sub_100F5E170(v28);

LABEL_32:
    }
  }

  return result;
}