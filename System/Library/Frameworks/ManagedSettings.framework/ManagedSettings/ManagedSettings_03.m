uint64_t sub_1000450AC()
{
  sub_10000210C((v0 + 16));
  sub_10000210C((v0 + 56));
  sub_10000210C((v0 + 96));
  sub_10000210C((v0 + 152));

  sub_10000210C((v0 + 224));
  v1 = *(v0 + 272);

  return swift_deallocClassInstance();
}

uint64_t sub_100045138()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 208) & 1) == 0)
  {
    *(v0 + 208) = 1;
    sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
    v20 = v2;
    v21 = v6;
    (*(v12 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v17 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v16, v11);
    aBlock[4] = sub_10005462C;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020A64;
    aBlock[3] = &unk_100076CC8;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_10005459C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000637C(&qword_10007AF10, &unk_1000670A0);
    sub_1000545E4(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v20 + 8))(v5, v1);
    (*(v7 + 8))(v10, v21);
  }

  return result;
}

uint64_t sub_1000454EC(uint64_t a1)
{
  v2 = v1;
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100045C20(a1);
  v14 = v12;
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v46 = result;
  if (result >= 1)
  {
    v16 = 0;
    v48 = (v8 + 8);
    v49 = v14 & 0xC000000000000001;
    v38 = (v4 + 8);
    v39 = (v4 + 16);
    v37 = 0x8000000100069140;
    *&v13 = 136446466;
    v36 = v13;
    v17 = v46;
    v42 = v7;
    v43 = v2;
    v40 = v14;
    v41 = v11;
    do
    {
      if (v49)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      static Logger.persistenceRecordStore.getter();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v21 = v36;
        v23 = v44;
        v22 = v45;
        (*v39)(v44, v18 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v45);
        sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        (*v38)(v23, v22);
        v27 = sub_100001ED8(v24, v26, &v52);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2082;
        v28 = *(v18 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v29 = *(v18 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v30 = *(v18 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
        v31 = *(v18 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24);
        v50 = 0;
        v51 = 0xE000000000000000;

        _StringGuts.grow(_:)(37);

        v50 = 0xD000000000000018;
        v51 = v37;
        v32._countAndFlagsBits = v28;
        v32._object = v29;
        String.append(_:)(v32);
        v33._countAndFlagsBits = 0x44496D616574202CLL;
        v33._object = 0xE900000000000020;
        String.append(_:)(v33);
        v34._countAndFlagsBits = v30;
        v11 = v41;
        v34._object = v31;
        String.append(_:)(v34);
        v14 = v40;

        v7 = v42;

        v35 = sub_100001ED8(v50, v51, &v52);

        *(v21 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v19, v20, "Removing unauthorized client record %{public}s for %{public}s", v21, 0x16u);
        swift_arrayDestroy();

        v17 = v46;
      }

      (*v48)(v11, v7);
      ++v16;
      sub_10003DCD0(v18);
    }

    while (v17 != v16);
  }

  __break(1u);
  return result;
}

id sub_1000459C4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  [*(a1 + 216) lock];
  sub_10003B7C4(1);
  v4 = *(a1 + 216);

  return [v4 unlock];
}

uint64_t sub_100045C20(uint64_t a1)
{
  v51 = type metadata accessor for Application();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000637C(&qword_10007B810, "(N");
  v7 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v8 = a1;
  v10 = &v43 - v9;
  v11 = sub_100040148(v8);
  swift_beginAccess();
  v12 = *(v1 + 272);
  v45 = _swiftEmptyArrayStorage;
  v56 = v11;
  v57 = _swiftEmptyArrayStorage;
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v11 + 56;
  v53 = v3 + 16;
  v54 = v3;
  v52 = (v3 + 8);
  v50 = v12;
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  v47 = v17;
  v48 = v13;
  v55 = v6;
  v44 = v10;
  while (v16)
  {
LABEL_10:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v20 << 6);
    v24 = v50;
    v25 = *(v50 + 48);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(v10, v25 + *(*(v26 - 8) + 72) * v23, v26);
    v27 = *(*(v24 + 56) + 8 * v23);
    *&v10[*(v49 + 48)] = v27;
    v28 = (v27 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    if (*(v27 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32) == 1)
    {

LABEL_12:
      v13 = v48;
      result = sub_100008630(v10, &qword_10007B810, "(N");
      v17 = v47;
    }

    else
    {
      v29 = 1 << v56[32];
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v56 + 7);
      v32 = (v29 + 63) >> 6;
      v46 = v27;

      v33 = 0;
      v34 = v51;
      while (v31)
      {
LABEL_23:
        v36 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v37 = v55;
        (*(v54 + 16))(v55, *(v56 + 6) + *(v54 + 72) * (v36 | (v33 << 6)), v34);
        v38 = Application.bundleIdentifier.getter();
        if (v39)
        {
          if (v38 == *v28 && v39 == v28[1])
          {

            (*v52)(v55, v51);
LABEL_34:

            v10 = v44;
            goto LABEL_12;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v34 = v51;
          result = (*v52)(v55, v51);
          if (v41)
          {
            goto LABEL_34;
          }
        }

        else
        {
          result = (*v52)(v37, v34);
        }
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v35 >= v32)
        {
          break;
        }

        v31 = *&v18[8 * v35];
        ++v33;
        if (v31)
        {
          v33 = v35;
          goto LABEL_23;
        }
      }

      v10 = v44;
      sub_100008630(v44, &qword_10007B810, "(N");
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v45 = v57;
      v17 = v47;
      v13 = v48;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return v45;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1000460C0(uint64_t *a1, int a2)
{
  v39 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v32 - v8;
  v9 = type metadata accessor for Logger();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.persistenceRecordStore.getter();
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v34 = *a1;
  v35 = v14;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v43 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v33 = v3;
    v20 = v19;
    v32 = swift_slowAlloc();
    v46 = v32;
    *v20 = 136446210;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v44 = 0xD000000000000018;
    v45 = 0x8000000100069140;
    v21._countAndFlagsBits = v34;
    v21._object = v13;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x44496D616574202CLL;
    v22._object = 0xE900000000000020;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v35;
    v23._object = v15;
    String.append(_:)(v23);
    v24 = sub_100001ED8(v44, v45, &v46);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating new record for %{public}s", v20, 0xCu);
    sub_10000210C(v32);

    v3 = v33;
  }

  (*(v36 + 8))(v12, v37);
  v25 = v38[11];
  sub_100008578(v38 + 7, v38[10]);
  v26 = v41;
  if (v39)
  {
    dispatch thunk of Locatable.effectiveSettingsDirectory.getter();
  }

  else
  {
    dispatch thunk of Locatable.persistenceRecordStoreDirectory.getter();
  }

  v27 = v43;
  v28 = v40;
  (*(v43 + 16))(v40, v26, v3);

  v29 = sub_1000113A4(a1, v28);
  type metadata accessor for Persistence();
  v30 = v42;
  static Persistence.createDirectory(at:)();
  if (v30)
  {
  }

  (*(v27 + 8))(v26, v3);
  return v29;
}

uint64_t *sub_10004649C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v1 + 272);
  if (*(v13 + 16))
  {

    v14 = sub_100018360(a1);
    if (v15)
    {
      v8 = *(*(v13 + 56) + 8 * v14);

      return v8;
    }
  }

  v27 = v9;
  static Logger.persistenceRecordStore.getter();
  (*(v4 + 16))(v7, a1, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v18 = 136446210;
    sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v8;
    v21 = v20;
    (*(v4 + 8))(v7, v3);
    v22 = sub_100001ED8(v19, v21, &v28);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unable to find existing record with recordIdentifier %{public}s", v18, 0xCu);
    v8 = v26;
    sub_10000210C(v26);

    (*(v27 + 8))(v12, v25);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    (*(v27 + 8))(v12, v8);
  }

  sub_100011890();
  swift_allocError();
  *v23 = 0;
  swift_willThrow();
  return v8;
}

uint64_t sub_10004680C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *(v4 + 200);
  v12 = *(v4 + 192);
  result = dispatch thunk of static TeamIdentifierRetrieving.teamIdentifierFromCurrentConnection()();
  if (!v5)
  {
    v15 = v14;
    v26 = result;
    if (a3)
    {

LABEL_4:
      *a4 = a1;
      *(a4 + 8) = a2;
      *(a4 + 16) = v26;
      *(a4 + 24) = v15;
      *(a4 + 32) = a3 & 1;
      return result;
    }

    v25 = &v22;
    v17 = *(v6 + 136);
    v16 = *(v6 + 144);
    v23 = *(v17 - 8);
    v18 = *(v23 + 64);
    __chkstk_darwin(result);
    v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(v16 + 8);

    v24(a1, a2, v17, v16);
    v24 = 0;
    a1 = (*(v16 + 16))(v17, v16);
    a2 = v21;
    result = (*(v23 + 8))(v20, v17);
    if (a2)
    {
      goto LABEL_4;
    }

    sub_100008524();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100046A04(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v7 = 0;
  v8 = *(v1 + 272);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v42 = *(v1 + 272);
  v12 = 1 << *(v42 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
LABEL_10:
    v17 = *(*(v42 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
    v14 &= v14 - 1;
    result = *&v17[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
    v18 = *&v17[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16];
    v19 = *&v17[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24];
    v20 = v17[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32];
    if (result != *a1 || *&v17[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8] != *(a1 + 8))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v18 != *(a1 + 16) || v19 != *(a1 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v20 == (*(a1 + 32) & 1))
    {

      return v17;
    }
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v16);
    ++v7;
    if (v14)
    {
      v7 = v16;
      goto LABEL_10;
    }
  }

  v23 = v39;
  static Logger.persistenceRecordStore.getter();
  v24 = *a1;
  v17 = *(a1 + 8);
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v26;
    v43 = 0;
    v31 = v24;
    v32 = v30;
    v45 = v30;
    *v29 = 136446210;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v43 = 0xD000000000000018;
    v44 = 0x8000000100069140;
    v33._countAndFlagsBits = v31;
    v33._object = v17;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0x44496D616574202CLL;
    v34._object = 0xE900000000000020;
    String.append(_:)(v34);
    v35._countAndFlagsBits = v42;
    v35._object = v25;
    String.append(_:)(v35);
    v17 = v44;
    v36 = sub_100001ED8(v43, v44, &v45);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find existing record with %{public}s", v29, 0xCu);
    sub_10000210C(v32);
  }

  (*(v40 + 8))(v23, v41);
  sub_100011890();
  swift_allocError();
  *v37 = 0;
  swift_willThrow();
  return v17;
}

uint64_t sub_100046DC4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for UUID();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  __chkstk_darwin(v3);
  v96 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  __chkstk_darwin(v6);
  v102 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v112 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v112);
  v111 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for URL();
  v12 = *(v116 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v116);
  v114 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v110 = v90 - v16;
  v17 = *a1;
  v18 = sub_10000EA2C();
  v20 = v18 + 56;
  v19 = *(v18 + 56);
  v121 = v18;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v115 = v17;
  v99 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
  result = swift_beginAccess();
  v25 = 0;
  v26 = (v21 + 63) >> 6;
  v109 = enum case for URL.DirectoryHint.notDirectory(_:);
  v107 = (v9 + 8);
  v108 = (v9 + 104);
  v106 = (v12 + 8);
  v105 = &_swiftEmptyDictionarySingleton;
  v95 = xmmword_100065C80;
  v94 = 0xEA00000000007365;
  v118 = v26;
LABEL_4:
  v27 = v25;
  v28 = v117;
  v30 = v114;
  v29 = v115;
  while (v23)
  {
    v25 = v27;
LABEL_11:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v32 = (v121[6] + ((v25 << 10) | (16 * v31)));
    v33 = *v32;
    v34 = v32[1];

    sub_10000F5A4(v33, v34, v30);
    if (v28)
    {

      v28 = 0;
      v27 = v25;
      v26 = v118;
    }

    else
    {
      v103 = v33;
      v113 = v34;
      v35 = v30;
      v117 = 0;
      type metadata accessor for Persistence();
      v119 = 0x657A696E656B6F74;
      v120 = 0xEF7473696C702E64;
      v37 = v111;
      v36 = v112;
      (*v108)(v111, v109, v112);
      sub_100011710();
      v38 = v110;
      URL.appending<A>(path:directoryHint:)();
      (*v107)(v37, v36);
      v39 = *v106;
      (*v106)(v35, v116);
      v40 = v117;
      v41 = static Persistence.rawData(from:)();
      if (v40)
      {

        result = v39(v38, v116);
        v28 = 0;
        v27 = v25;
        goto LABEL_16;
      }

      v43 = v42;
      v93 = v41;
      v117 = 0;
      v39(v38, v116);
      if (v43 >> 60 == 15)
      {

        v27 = v25;
        v28 = v117;
LABEL_16:
        v30 = v114;
        v29 = v115;
        v26 = v118;
      }

      else
      {
        v44 = v43;
        v45 = v115;
        v46 = *(v115 + v99);
        if (!*(v46 + 16))
        {
          goto LABEL_23;
        }

        v47 = *(v115 + v99);

        v48 = sub_1000182E8(v103, v113);
        if ((v49 & 1) == 0)
        {

LABEL_23:
          if (qword_10007A210 != -1)
          {
            swift_once();
          }

          goto LABEL_30;
        }

        v50 = *(v46 + 56) + 32 * v48;
        v51 = *(v50 + 8);
        v52 = *(v50 + 24);
        LODWORD(v91) = *(v50 + 25);
        v92 = v51;

        v53 = Bool.persistableValue()();
        if (v53)
        {
          v54 = v53;
          v55 = Bool.persistableValue()();
          if (v55)
          {
            v90[0] = v55;
            sub_10000637C(&qword_10007A490, &qword_100065D50);
            inited = swift_initStackObject();
            *(inited + 16) = v95;
            *(inited + 32) = static ManagedSettingsStore.PropertyKeys.active.getter();
            v90[1] = (inited + 32);
            *(inited + 40) = v57;
            *(inited + 48) = v54;
            v91 = v54;
            *(inited + 56) = static ManagedSettingsStore.PropertyKeys.syncToWatch.getter();
            *(inited + 64) = v58;
            v59 = v90[0];
            *(inited + 72) = v90[0];
            v90[0] = v59;
            sub_100006278(inited);
            swift_setDeallocating();
            sub_10000637C(&qword_10007A498, &qword_100065D58);
            swift_arrayDestroy();

            goto LABEL_30;
          }
        }

        if (qword_10007A210 != -1)
        {
          swift_once();
        }

LABEL_30:
        v60 = v117;
        v61 = static Persistence.propertyData(from:)();
        if (!v60)
        {
          v117 = 0;
          v63 = v61;
          v64 = v62;

          v119 = v103;
          v120 = v113;

          v65._countAndFlagsBits = 0x6465636E79532DLL;
          v65._object = 0xE700000000000000;
          String.append(_:)(v65);

          v113 = v119;
          v103 = v120;
          sub_10000637C(&qword_10007B2E0, &unk_100067080);
          v66 = swift_initStackObject();
          *(v66 + 16) = v95;
          *(v66 + 32) = 0x69747265706F7270;
          *(v66 + 40) = v94;
          *(v66 + 48) = v63;
          v67 = v64;
          v92 = v64;
          *(v66 + 56) = v64;
          *(v66 + 72) = &type metadata for Data;
          *(v66 + 80) = 0x73676E6974746573;
          *(v66 + 120) = &type metadata for Data;
          v68 = v93;
          *(v66 + 88) = 0xE800000000000000;
          *(v66 + 96) = v68;
          *(v66 + 104) = v44;
          sub_100054528(v63, v67);
          sub_10005457C(v68, v44);
          v91 = sub_100005B34(v66);
          swift_setDeallocating();
          sub_10000637C(&unk_10007A280, &qword_100066D10);
          swift_arrayDestroy();
          v69 = v105;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v69;
          sub_10001CCE8(v91, v113, v103, isUniquelyReferenced_nonNull_native);

          sub_100054514(v68, v44);
          result = sub_1000543C8(v63, v92);
          v105 = v119;
          v26 = v118;
          goto LABEL_4;
        }

        result = sub_100054514(v93, v44);
        v28 = 0;
        v27 = v25;
        v30 = v114;
        v29 = v45;
        v26 = v118;
      }
    }
  }

  while (1)
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v25 >= v26)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++v27;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  v71 = v29;
  v117 = v28;

  v72 = v105;
  if (v105[2])
  {
    sub_10000637C(&qword_10007B2E0, &unk_100067080);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_100066F80;
    *(v73 + 32) = 0x656E6961746E6F63;
    *(v73 + 40) = 0xE900000000000072;
    v74 = v29 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
    v75 = *(v29 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    *(v73 + 48) = *(v29 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    *(v73 + 56) = v75;
    *(v73 + 72) = &type metadata for String;
    strcpy((v73 + 80), "teamIdentifier");
    *(v73 + 95) = -18;
    v76 = *(v74 + 24);
    *(v73 + 96) = *(v74 + 16);
    *(v73 + 104) = v76;
    *(v73 + 120) = &type metadata for String;
    *(v73 + 128) = 0x6E7265746E497369;
    *(v73 + 136) = 0xEA00000000006C61;
    *(v73 + 144) = *(v74 + 32);
    *(v73 + 168) = &type metadata for Bool;
    strcpy((v73 + 176), "storeDirectory");
    *(v73 + 191) = -18;
    *(v73 + 216) = sub_10000637C(&qword_10007B8A0, &unk_100067090);
    *(v73 + 192) = v72;

    v77 = sub_100005B34(v73);
    swift_setDeallocating();
    sub_10000637C(&unk_10007A280, &qword_100066D10);
    result = swift_arrayDestroy();
  }

  else
  {

    v78 = v102;
    static Logger.persistenceRecordStore.getter();

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v119 = v121;
      *v81 = 136446210;
      v82 = v71;
      v83 = v96;
      v84 = v97;
      v85 = v98;
      (*(v97 + 16))(v96, v82 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v98);
      sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (*(v84 + 8))(v83, v85);
      v89 = sub_100001ED8(v86, v88, &v119);

      *(v81 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v79, v80, "No stores to sync in record %{public}s, skipping record", v81, 0xCu);
      sub_10000210C(v121);

      result = (*(v100 + 8))(v102, v101);
    }

    else
    {

      result = (*(v100 + 8))(v78, v101);
    }

    v77 = 0;
  }

  *v104 = v77;
  return result;
}

void *sub_1000479A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000637C(&unk_10007B220, &unk_100066C50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100047A28(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000637C(&qword_10007B830, &unk_100067020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_100047AB0(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10005459C(&qword_10007AD58, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_100047DD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 4 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100047F44(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v31 = v2;
    v32 = v4;
    do
    {
      v9 = 40 * v6;
      v10 = *(v2 + 40);
      v11 = *(v2 + 48) + 40 * v6;
      v12 = v7;
      v13 = *v11;
      v14 = *(v11 + 8);
      v15 = *(v11 + 16);
      v16 = *(v11 + 24);
      v17 = *(v11 + 32);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();

      v7 = v12;

      v19 = v18 & v12;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          v2 = v31;
          v4 = v32;
        }

        else
        {
          v2 = v31;
          v4 = v32;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v31;
        v4 = v32;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = v20 + 40 * v3;
          v22 = (v20 + v9);
          if (40 * v3 < v9 || v21 >= v22 + 40 || v3 != v6)
          {
            v23 = *v22;
            v24 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v23;
            *(v21 + 16) = v24;
          }

          v25 = *(v2 + 56);
          v26 = (v25 + 8 * v3);
          v27 = (v25 + 8 * v6);
          if (v3 != v6 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_100048170(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000482E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v20 >= v21 + 2))
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004852C(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v48 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v47 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v51 = *(v20 + 56);
    v45 = (v20 - 8);
    v46 = v21;
    do
    {
      v22 = v51 * v16;
      v23 = v19;
      v24 = v20;
      v46(v13, *(a2 + 48) + v51 * v16, v8);
      v25 = *(a2 + 40);
      sub_10005459C(v48, v49);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v45)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v47)
      {
        if (v27 >= v47 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          v31 = v30 + v51 * a1;
          v32 = v30 + v22 + v51;
          v33 = v51 * a1 < v22 || v31 >= v32;
          v20 = v24;
          if (v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v51 * a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = *(a2 + 56);
          v35 = *(*(type metadata accessor for ScreenTimeSettings.ShieldPolicy() - 8) + 72);
          v36 = v35 * a1;
          result = v34 + v35 * a1;
          v37 = v35 * v16;
          v38 = v34 + v35 * v16 + v35;
          if (v36 < v37 || result >= v38)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v16;
            v19 = v23;
          }

          else
          {
            a1 = v16;
            v40 = v36 == v37;
            v19 = v23;
            if (!v40)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v19 = v23;
              a1 = v16;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v47 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v41 = *(a2 + 16);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v43;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100048874(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100048A24(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100048BB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000637C(&qword_10007AF20, &unk_1000668E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100048E10(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for URL();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B858, &qword_100067030);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10005459C(&qword_10007B848, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10004916C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for ActivityCategory();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B898, &qword_100067078);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000494C8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for WebDomain();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B890, &qword_100067070);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100049824(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Application();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B888, &unk_100067350);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t *sub_100049B80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100050FA0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_100049C1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100052B64(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100049CB8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10005459C(&qword_10007B848, &type metadata accessor for URL);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10005459C(&qword_10007B850, &type metadata accessor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10004A838(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100049F98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10005459C(&qword_10007AD80, &type metadata accessor for ActivityCategory);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10004AB00(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10004A278(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10005459C(&qword_10007AD98, &type metadata accessor for WebDomain);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10004ADC8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10004A558(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10005459C(&qword_10007AD70, &type metadata accessor for Application);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10004B090(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10004A838(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100048E10(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10004B504(&type metadata accessor for URL, &qword_10007B858, &qword_100067030);
      goto LABEL_12;
    }

    sub_10004B73C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10005459C(&qword_10007B848, &type metadata accessor for URL);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10005459C(&qword_10007B850, &type metadata accessor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004AB00(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004916C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10004B504(&type metadata accessor for ActivityCategory, &qword_10007B898, &qword_100067078);
      goto LABEL_12;
    }

    sub_10004BA58(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10005459C(&qword_10007AD80, &type metadata accessor for ActivityCategory);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004ADC8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000494C8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10004B504(&type metadata accessor for WebDomain, &qword_10007B890, &qword_100067070);
      goto LABEL_12;
    }

    sub_10004BD74(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10005459C(&qword_10007AD98, &type metadata accessor for WebDomain);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004B090(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100049824(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10004B504(&type metadata accessor for Application, &qword_10007B888, &unk_100067350);
      goto LABEL_12;
    }

    sub_10004C090(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10005459C(&qword_10007AD70, &type metadata accessor for Application);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10004B358()
{
  v1 = v0;
  sub_10000637C(&qword_10007AF20, &unk_1000668E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10004B504(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_10000637C(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_10004B73C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B858, &qword_100067030);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10005459C(&qword_10007B848, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10004BA58(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ActivityCategory();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B898, &qword_100067078);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10005459C(&qword_10007ACF0, &type metadata accessor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10004BD74(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for WebDomain();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B890, &qword_100067070);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10005459C(&qword_10007ACE0, &type metadata accessor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10004C090(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Application();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007B888, &unk_100067350);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10004C3AC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = type metadata accessor for UUID();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10000637C(&qword_10007A268, &qword_100065BA0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_10005459C(&qword_10007AD58, &type metadata accessor for UUID);
    v44 = v24;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
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

uint64_t sub_10004C74C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000637C(&qword_10007A258, &unk_100065B90);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_10004C98C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100058D04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10004CA08(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10004CA08(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PersistenceRecord();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10004CC40(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10004CB0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004CB0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v23 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = (v8 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
      v12 = *v11;
      v13 = v11[1];
      v14 = String.lowercased()();
      v15 = *(v10 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
      v16 = *(v10 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
      v17 = String.lowercased()();
      if (v14._countAndFlagsBits == v17._countAndFlagsBits && v14._object == v17._object)
      {

LABEL_5:
        ++v4;
        v6 = v23 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v20 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v20;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004CC40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v113 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_104:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_143;
    }

    object = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v105 = v7;
      v106 = *(object + 16);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v7 = v106 - 1;
          v107 = *(object + 16 * v106);
          v108 = *(object + 16 * (v106 - 1) + 40);
          sub_10004D380((*a3 + 8 * v107), (*a3 + 8 * *(object + 16 * (v106 - 1) + 32)), (*a3 + 8 * v108), v5);
          if (v105)
          {
          }

          if (v108 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            object = sub_100058CF0(object);
          }

          if (v106 - 2 >= *(object + 16))
          {
            goto LABEL_131;
          }

          v109 = (object + 16 * v106);
          *v109 = v107;
          v109[1] = v108;
          result = sub_100058C64(v106 - 1);
          v106 = *(object + 16);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_100058CF0(object);
    object = result;
    goto LABEL_106;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v117 = v8;
      v12 = v11;
      v13 = *a3;
      v114 = v12;
      v14 = *(*a3 + 8 * v12);
      v5 = &OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
      v15 = (*(*a3 + 8 * v9) + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
      v16 = *v15;
      v17 = v15[1];
      v18 = String.lowercased()();
      v19 = *(v14 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
      v20 = *(v14 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
      v21 = String.lowercased()();
      object = v21._object;
      v22 = v18._countAndFlagsBits == v21._countAndFlagsBits && v18._object == v21._object;
      v111 = v7;
      if (v22)
      {
        v119 = 0;
      }

      else
      {
        v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v23 = 8 * v114;
      v24 = (v13 + 8 * v114 + 16);
      v25 = 8 * v114 + 8;
      v116 = v10;
      do
      {
        v7 = v9;
        v28 = v25;
        if (++v9 >= v117)
        {
          break;
        }

        v29 = v9;
        v5 = *(v24 - 1);
        v30 = (*v24 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v31 = *v30;
        v32 = v30[1];
        v33 = String.lowercased()();
        v34 = *(v5 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v35 = *(v5 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v36 = String.lowercased()();
        object = v36._object;
        v37 = v33._countAndFlagsBits == v36._countAndFlagsBits && v33._object == v36._object;
        v26 = v37 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = v119 ^ v26;
        ++v24;
        v25 = v28 + 8;
        v9 = v29;
        v10 = v116;
      }

      while ((v27 & 1) == 0);
      if ((v119 & 1) == 0)
      {
        goto LABEL_29;
      }

      v38 = v114;
      if (v9 < v114)
      {
        goto LABEL_134;
      }

      if (v114 < v9)
      {
        do
        {
          if (v38 != v7)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v41 = *(v40 + v23);
            *(v40 + v23) = *(v40 + v28);
            *(v40 + v28) = v41;
          }

          ++v38;
          v28 -= 8;
          v23 += 8;
        }

        while (v38 < v7--);
LABEL_29:
        v7 = v111;
        v11 = v114;
        goto LABEL_30;
      }

      v7 = v111;
      v11 = v114;
    }

LABEL_30:
    v42 = a3[1];
    if (v9 < v42)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_133;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000263EC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v61 = *(v10 + 2);
    v60 = *(v10 + 3);
    object = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      result = sub_1000263EC((v60 > 1), v61 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = object;
    v62 = &v10[16 * v61];
    *(v62 + 4) = v11;
    *(v62 + 5) = v9;
    v63 = *v113;
    if (!*v113)
    {
      goto LABEL_142;
    }

    if (v61)
    {
      while (1)
      {
        v64 = object - 1;
        if (object >= 4)
        {
          break;
        }

        if (object == 3)
        {
          v65 = *(v10 + 4);
          v66 = *(v10 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_73:
          if (v68)
          {
            goto LABEL_121;
          }

          v81 = &v10[16 * object];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_124;
          }

          v87 = &v10[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_128;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = object - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v91 = &v10[16 * object];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_87:
        if (v86)
        {
          goto LABEL_123;
        }

        v94 = &v10[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_126;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_94:
        v102 = v64 - 1;
        if (v64 - 1 >= object)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        object = v10;
        v103 = *&v10[16 * v102 + 32];
        v5 = *&v10[16 * v64 + 40];
        sub_10004D380((*a3 + 8 * v103), (*a3 + 8 * *&v10[16 * v64 + 32]), (*a3 + 8 * v5), v63);
        if (v7)
        {
        }

        if (v5 < v103)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_100058CF0(v10);
        }

        if (v102 >= *(object + 16))
        {
          goto LABEL_118;
        }

        v104 = object + 16 * v102;
        *(v104 + 32) = v103;
        *(v104 + 40) = v5;
        result = sub_100058C64(v64);
        v10 = object;
        object = *(object + 16);
        if (object <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v10[16 * object + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_119;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_120;
      }

      v76 = &v10[16 * object];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_122;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_125;
      }

      if (v80 >= v72)
      {
        v98 = &v10[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_129;
        }

        if (v67 < v101)
        {
          v64 = object - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 >= v42)
  {
    v43 = a3[1];
  }

  else
  {
    v43 = v11 + a4;
  }

  if (v43 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v43)
  {
    goto LABEL_53;
  }

  v112 = v7;
  v44 = v11;
  v45 = *a3;
  v5 = *a3 + 8 * v9 - 8;
  v115 = v44;
  v46 = v44 - v9;
  v118 = v43;
LABEL_42:
  v120 = v9;
  v47 = *(v45 + 8 * v9);
  v48 = v46;
  v49 = v5;
  while (1)
  {
    object = *v49;
    v50 = (v47 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    v51 = *v50;
    v52 = v50[1];
    v53 = String.lowercased()();
    v54 = *(object + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    v55 = *(object + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    v56 = String.lowercased()();
    if (v53._countAndFlagsBits == v56._countAndFlagsBits && v53._object == v56._object)
    {

LABEL_41:
      v9 = v120 + 1;
      v5 += 8;
      --v46;
      if (v120 + 1 == v118)
      {
        v9 = v118;
        v7 = v112;
        v11 = v115;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    object = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((object & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v45)
    {
      break;
    }

    v58 = *v49;
    v47 = v49[1];
    *v49 = v47;
    v49[1] = v58;
    --v49;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10004D380(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_49;
    }

    while (1)
    {
      v15 = *v4;
      v16 = (*v6 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
      v17 = *v16;
      v18 = v16[1];
      v19 = String.lowercased()();
      v20 = *(v15 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
      v21 = *(v15 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
      v22 = String.lowercased()();
      v23 = v19._countAndFlagsBits == v22._countAndFlagsBits && v19._object == v22._object;
      if (v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_20;
      }

      v25 = v6;
      v23 = v7 == v6;
      v6 += 8;
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_49;
      }
    }

LABEL_20:
    v25 = v4;
    v23 = v7 == v4;
    v4 += 8;
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v25;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v42 = v4;
    do
    {
      v26 = v6 - 8;
      v5 -= 8;
      v27 = v14;
      while (1)
      {
        v28 = *(v27 - 1);
        v27 -= 8;
        v29 = v26;
        v30 = *v26;
        v31 = *(v28 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v32 = *(v28 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v33 = String.lowercased()();
        v34 = *(v30 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v35 = *(v30 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v36 = String.lowercased()();
        v37 = v33._countAndFlagsBits == v36._countAndFlagsBits && v33._object == v36._object;
        v38 = v37 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = v5 + 8;
        if (v38)
        {
          break;
        }

        v26 = v29;
        if (v39 != v14)
        {
          *v5 = *v27;
        }

        v5 -= 8;
        v14 = v27;
        v4 = v42;
        if (v27 <= v42)
        {
          v14 = v27;
          goto LABEL_49;
        }
      }

      v40 = v29;
      if (v39 != v6)
      {
        *v5 = *v29;
      }

      v4 = v42;
      if (v14 <= v42)
      {
        break;
      }

      v6 = v40;
    }

    while (v40 > v7);
    v6 = v40;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10004D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10000637C(&qword_10007B810, "(N") + 48);
  v5 = *(sub_10000637C(&qword_10007A260, &qword_100067040) + 48);
  v6 = *(a1 + v4);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

void *sub_10004D76C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100047A28(v3, 0);
  sub_10004D800((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10004D800(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000545E4(&qword_10007B8A8, &qword_10007B818, &qword_100067018);
          for (i = 0; i != v6; ++i)
          {
            sub_10000637C(&qword_10007B818, &qword_100067018);
            v9 = sub_10004D9A4(v13, i, a3);
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
        type metadata accessor for PersistenceRecord();
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

uint64_t (*sub_10004D9A4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v5;
    return sub_10004DA24;
  }

  __break(1u);
  return result;
}

void *sub_10004DA2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10004DB84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10004DCDC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10004DE30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000637C(&qword_10007B810, "(N");
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000637C(&qword_10007B870, &unk_100067048);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_100008690(v17, v36, &qword_10007B870, &unk_100067048);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_100008690(v40, v43, &qword_10007B810, "(N");
      v37(v41);
      sub_100008630(v41, &qword_10007B810, "(N");
      v39 = 0;
    }

    v42 = sub_10000637C(&qword_10007A260, &qword_100067040);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10004E214@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_10004E260()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v3 = *(isUniquelyReferenced_nonNull_native - 8);
  v4 = v3[8];
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(contentsOf:options:)();
  if (v0)
  {
    return v1;
  }

  v9 = v7;
  v10 = v8;
  v43 = v6;
  v11 = type metadata accessor for PropertyListDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000637C(&qword_10007B818, &qword_100067018);
  sub_10005441C(&qword_10007B838, &qword_10007B840);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v35 = 0;

  v15 = v44;
  v1 = sub_100005C64(&_swiftEmptyArrayStorage);
  if (v15 >> 62)
  {
LABEL_27:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v9;
    v34 = v10;
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = v9;
  v34 = v10;
  if (!v16)
  {
LABEL_28:
    sub_1000543C8(v33, v34);

    return v1;
  }

LABEL_6:
  v17 = 0;
  v40 = v15 & 0xFFFFFFFFFFFFFF8;
  v41 = v15 & 0xC000000000000001;
  v42 = (v3 + 2);
  v36 = v3;
  v37 = v16;
  v38 = v15;
  v39 = (v3 + 1);
  v10 = v43;
  while (1)
  {
    if (v41)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v17 >= *(v40 + 16))
      {
        goto LABEL_24;
      }

      v20 = *(v15 + 8 * v17 + 32);

      v3 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v21 = *v42;
    v9 = isUniquelyReferenced_nonNull_native;
    (*v42)(v10, v20 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, isUniquelyReferenced_nonNull_native);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v1;
    v10 = sub_100018360(v10);
    v23 = v1[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v22;
    if (v1[3] < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10001D174();
    }

LABEL_18:
    isUniquelyReferenced_nonNull_native = v9;
    v1 = v44;
    if (v26)
    {
      v18 = v44[7];
      v19 = *(v18 + 8 * v10);
      *(v18 + 8 * v10) = v20;

      v10 = v43;
      (*v39)(v43, v9);
    }

    else
    {
      v44[(v10 >> 6) + 8] |= 1 << v10;
      v15 = v36;
      v9 = v43;
      v21(v1[6] + v36[9] * v10, v43, isUniquelyReferenced_nonNull_native);
      *(v1[7] + 8 * v10) = v20;
      v10 = v9;

      (*(v15 + 8))(v9, isUniquelyReferenced_nonNull_native);
      v29 = v1[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v1[2] = v31;
    }

    ++v17;
    v15 = v38;
    if (v3 == v37)
    {
      goto LABEL_28;
    }
  }

  sub_1000194F0(v25, isUniquelyReferenced_nonNull_native);
  v27 = sub_100018360(v43);
  if ((v26 & 1) == (v28 & 1))
  {
    v10 = v27;
    goto LABEL_18;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004E694(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Logger();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  v8 = __chkstk_darwin(v6);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v48 - v10;
  v11 = type metadata accessor for CocoaError.Code();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10000637C(&qword_10007B810, "(N");
  v14 = *(*(v63 - 8) + 64);
  v15 = __chkstk_darwin(v63);
  v62 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v48 - v17;
  v18 = &_swiftEmptyArrayStorage;
  v65 = &_swiftEmptyArrayStorage;
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v64 = a1;

  v25 = 0;
  if (v22)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      do
      {
LABEL_8:
        v27 = __clz(__rbit64(v22)) | (v25 << 6);
        v28 = v64;
        v29 = *(v64 + 48);
        v30 = type metadata accessor for UUID();
        v31 = *(v30 - 8);
        v32 = v31;
        v33 = v29 + *(v31 + 72) * v27;
        v34 = v61;
        (*(v31 + 16))(v61, v33, v30);
        v35 = *(*(v28 + 56) + 8 * v27);
        v36 = v63;
        *&v34[*(v63 + 48)] = v35;
        v37 = v34;
        v38 = v62;
        sub_100008690(v37, v62, &qword_10007B810, "(N");
        v39 = *(v38 + *(v36 + 48));
        v40 = *(v32 + 8);

        v40(v38, v30);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v22 &= v22 - 1;
        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v65;
      }

      while (v22);
    }
  }

  v41 = type metadata accessor for PropertyListEncoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v65 = v18;
  sub_10000637C(&qword_10007B818, &qword_100067018);
  sub_10005441C(&qword_10007B820, &qword_10007B828);
  v44 = v60;
  v45 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v47 = v46;

  if (!v44)
  {
    Data.write(to:options:)();
    type metadata accessor for Persistence();
    static Persistence.setFileAttributes(of:)();
    return sub_1000543C8(v45, v47);
  }

  return result;
}

uint64_t sub_10004EF04()
{
  v0 = type metadata accessor for URL();
  v9 = *(v0 - 8);
  v1 = *(v9 + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v10 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CocoaError.Code();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  type metadata accessor for Persistence();
  return static Persistence.readEffectiveSettings(from:)();
}

uint64_t sub_10004F3B0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100049CB8(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10004F4F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 56) + ((v4 << 9) | (8 * v11))) + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
    result = *v12;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    if (*v12 != *v3 || *(v12 + 8) != *(v3 + 8))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v13 != *(v3 + 16) || v14 != *(v3 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v15 == (*(v3 + 32) & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return 0;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_10004F638(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CocoaError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v40 = 0;
  v18 = [v14 removeItemAtURL:v16 error:&v40];

  if (v18)
  {
    return v40;
  }

  v20 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code);
  LOBYTE(v20) = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (*(v10 + 8))(v13, v9);
  if (v20)
  {

    v21 = v37;
    static Logger.persistenceRecordStore.getter();
    v22 = v35;
    v23 = v36;
    (*(v35 + 16))(v5, a1, v36);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136446210;
      sub_10005459C(&qword_10007B860, &type metadata accessor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v22;
      v30 = v28;
      v32 = v31;
      (*(v29 + 8))(v5, v23);
      v33 = sub_100001ED8(v30, v32, &v40);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to delete %{public}s: Path doesn't exist!", v26, 0xCu);
      sub_10000210C(v27);
    }

    else
    {

      (*(v22 + 8))(v5, v23);
    }

    return (*(v38 + 8))(v21, v39);
  }

  return result;
}

uint64_t sub_10004FAC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v67 = a3;
  v11 = type metadata accessor for URL.DirectoryHint();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = v53 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v53 - v23;
  __chkstk_darwin(v22);
  v28 = v53 - v27;
  *a6 = 0;
  v59 = a4;
  if (*(a4 + 16) || *(a5 + 16))
  {
    v57 = a5;
    v58 = v26;
    v56 = v25;
    v29 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    swift_beginAccess();
    if (*(*(a1 + v29) + 16))
    {

      sub_1000182E8(a2, v67);
      v31 = v30;

      if (v31)
      {
        v32 = v64;
        v33 = v67;
        v34 = v14;
        goto LABEL_10;
      }
    }

    v34 = v14;
    if (qword_10007A210 != -1)
    {
      swift_once();
    }

    v33 = v67;
    v32 = v64;
    result = sub_10000F8FC(a2, v67);
    if (!v32)
    {
      *a6 = 1;
LABEL_10:
      result = sub_10000F5A4(a2, v33, v21);
      v36 = v62;
      if (!v32)
      {
        v65 = 0x657A696E656B6F74;
        v66 = 0xEF7473696C702E64;
        v37 = *(v62 + 104);
        v55 = enum case for URL.DirectoryHint.notDirectory(_:);
        v64 = 0;
        v54 = v37;
        v37(v34);
        v53[1] = sub_100011710();
        URL.appending<A>(path:directoryHint:)();
        v38 = v34;
        v39 = *(v36 + 8);
        v53[0] = v38;
        v39();
        v40 = v21;
        v41 = v61;
        v62 = *(v60 + 8);
        (v62)(v40, v61);
        v42 = v64;
        sub_100053E9C(v59, v24, &static Persistence.write(_:to:));
        if (v42)
        {
          return (v62)(v24, v41);
        }

        else
        {
          v64 = v39;
          (v62)(v24, v41);
          v49 = v58;
          sub_10000F5A4(a2, v67, v58);
          v65 = 0xD000000000000011;
          v66 = 0x8000000100069320;
          v50 = v53[0];
          v51 = v63;
          v54(v53[0], v55, v63);
          v52 = v56;
          URL.appending<A>(path:directoryHint:)();
          (v64)(v50, v51);
          (v62)(v49, v41);
          sub_100053E9C(v57, v52, &static Persistence.write(_:to:));
          return (v62)(v52, v41);
        }
      }
    }
  }

  else
  {
    v43 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    result = swift_beginAccess();
    if (*(*(a1 + v43) + 16))
    {
      v44 = *(a1 + v43);

      v45 = v67;
      sub_1000182E8(a2, v67);
      v47 = v46;

      if (v47)
      {
        v48 = v64;
        result = sub_10000F5A4(a2, v45, v28);
        if (!v48)
        {
          sub_10004F638(v28);
          return (*(v60 + 8))(v28, v61);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100050058(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = type metadata accessor for SettingScope();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for URL();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v32);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10000E600();
  v11 = 0;
  v13 = result + 56;
  v12 = *(result + 56);
  v35 = result;
  v14 = 1 << *(result + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v30 = a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
  v17 = (v14 + 63) >> 6;
  v29 = v6 + 16;
  v28 = enum case for SettingScope.localContainer(_:);
  v26 = v6 + 8;
  v27 = (v3 + 104);
  v25 = (v3 + 8);
  if ((v15 & v12) != 0)
  {
    do
    {
      v18 = v11;
LABEL_9:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v32;
      (*(v6 + 16))(v9, *(v35 + 48) + *(v6 + 72) * (v19 | (v18 << 6)), v32);
      v21 = v31;
      v22 = *(v30 + 32);
      v23 = v33;
      (*v27)(v31, v28, v33);
      sub_100035E08(v9, v22, v21);
      (*(v6 + 8))(v9, v20);
      result = (*v25)(v21, v23);
    }

    while (v16);
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100050310(uint64_t a1)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v7);
  v32 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  type metadata accessor for Persistence();
  v13 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath;
  v38 = 0xD00000000000001DLL;
  v39 = 0x800000010006A320;
  v29 = 0x800000010006A320;
  v14 = v3[13];
  v28 = enum case for URL.DirectoryHint.notDirectory(_:);
  v27 = v14;
  v14(v6);
  v15 = sub_100011710();
  v36 = a1;
  v30 = v15;
  v31 = v13;
  URL.appending<A>(path:directoryHint:)();
  v16 = v3[1];
  v33 = v2;
  v16(v6, v2);
  v17 = v35;
  v18 = static Persistence.readEffectiveSettings(from:)();
  v34 = v7;
  if (v17)
  {

    v35 = *(v37 + 8);
    v35(v12, v7);
    v19 = sub_100006278(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = v18;
    v35 = *(v37 + 8);
    v35(v12, v7);
  }

  v40 = &_swiftEmptyDictionarySingleton;
  sub_100050058(v36, &v40);
  sub_10006100C(&v40);
  v20 = v40;
  sub_10001027C(v19, v40);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    v38 = 0xD00000000000001DLL;
    v39 = v29;
    v29 = v16;
    v23 = v33;
    v27(v6, v28, v33);
    v24 = v32;
    URL.appending<A>(path:directoryHint:)();
    v29(v6, v23);
    sub_100053E9C(v20, v24, &static Persistence.write(_:to:));
    v35(v24, v34);
  }
}

id sub_1000506AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v62 = a4;
  v60 = type metadata accessor for URL();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v60);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v50 = &v47 - v14;
  v15 = __chkstk_darwin(v13);
  v58 = &v47 - v16;
  __chkstk_darwin(v15);
  v59 = type metadata accessor for Logger();
  v61 = *(v59 - 8);
  v17 = *(v61 + 64);
  v18 = __chkstk_darwin(v59);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v51 = &v47 - v22;
  __chkstk_darwin(v21);
  v23 = *a2;

  v24 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *a1;
  *a1 = 0x8000000000000000;
  sub_100051608(v23, sub_10004D6B8, 0, isUniquelyReferenced_nonNull_native, &v63);

  v26 = v63;
  v27 = *a1;
  *a1 = v63;

  sub_10004E694(v26, a3);
  v53 = v9;
  v48 = a5;
  v47 = v20;

  v28 = v60;
  v29 = v61;
  v30 = *v62 + 56;
  v31 = 1 << *(*v62 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(*v62 + 56);
  v34 = (v31 + 63) >> 6;
  v61 = *v62;
  v62 = (v9 + 16);
  v56 = (v9 + 8);
  v57 = v9 + 32;
  v54 = (v29 + 8);

  v35 = 0;
  *&v36 = 136446210;
  v49 = v36;
  v37 = v50;
  v55 = v30;
  while (v33)
  {
    v38 = v35;
LABEL_9:
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = v58;
    (*(v9 + 16))(v58, *(v61 + 48) + *(v9 + 72) * (v39 | (v38 << 6)), v28);
    (*(v9 + 32))(v37, v40, v28);
    sub_10004F638(v37);
    (*v56)(v37, v28);
    v35 = v38;
    v30 = v55;
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);

      v46 = *v28;
      *v28 = v63;

      __break(1u);
      return result;
    }

    if (v38 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v38);
    ++v35;
    if (v33)
    {
      goto LABEL_9;
    }
  }

  v41 = v47;
  static Logger.persistenceRecordStore.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Persistence record migration: migrateDataFromLocalAppContainer end", v44, 2u);
  }

  (*v54)(v41, v59);
  return [*(v48 + 216) unlock];
}

uint64_t sub_100050FA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a1;
  v61 = sub_10000637C(&qword_10007B810, "(N");
  v6 = *(*(v61 - 8) + 64);
  v7 = __chkstk_darwin(v61);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v49 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11);
  v65 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v62 = a3;
  v17 = *(a3 + 64);
  v51 = 0;
  v52 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v59 = (a4 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
  v60 = v14;
  v21 = (v18 + 63) >> 6;
  v57 = v9;
  v58 = v14 + 16;
  v54 = v21;
  v55 = (v14 + 8);
  v56 = result;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v64 = (v20 - 1) & v20;
LABEL_13:
    v26 = v23 | (v16 << 6);
    v27 = v62;
    v28 = *(v60 + 16);
    v29 = v65;
    v28(v65, v62[6] + *(v60 + 72) * v26, v11);
    v30 = v27[7];
    v53 = v26;
    v31 = *(v30 + 8 * v26);
    v32 = v66;
    v28(v66, v29, v11);
    v33 = v61;
    *(v32 + *(v61 + 48)) = v31;
    sub_100006754(v32, v9, &qword_10007B810, "(N");
    v34 = *&v9[*(v33 + 48)];
    v35 = *(v34 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    v36 = *(v34 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    v37 = *(v34 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
    v38 = *(v34 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24);
    v39 = *(v34 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
    swift_retain_n();

    v40 = *v59;
    v41 = v59[1];
    v43 = v59[2];
    v42 = v59[3];
    v63 = *(v59 + 32);
    v44 = v35 == v40 && v36 == v41;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      sub_100008630(v66, &qword_10007B810, "(N");
LABEL_25:
      v11 = v56;
      v47 = *v55;
      v9 = v57;
      (*v55)(v57, v56);

      result = (v47)(v65, v11);
      v21 = v54;
      v20 = v64;
      goto LABEL_26;
    }

    if (v37 == v43 && v38 == v42)
    {
      sub_100008630(v66, &qword_10007B810, "(N");
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100008630(v66, &qword_10007B810, "(N");

      if ((v46 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v11 = v56;
    v22 = *v55;
    v9 = v57;
    (*v55)(v57, v56);

    result = (v22)(v65, v11);
    v21 = v54;
    v20 = v64;
    if (v39 != v63)
    {
LABEL_26:
      *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (__OFADD__(v51++, 1))
      {
        __break(1u);
        return sub_10004C3AC(v50, v49, v51, v62);
      }
    }
  }

  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_10004C3AC(v50, v49, v51, v62);
    }

    v25 = *(v52 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v64 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100051448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_100049B80(v13, v8, a1, a2);

      return v11;
    }
  }

  __chkstk_darwin(v10);
  bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_100050FA0((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100051608(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v48 = type metadata accessor for UUID();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000637C(&qword_10007B868, &qword_100067038);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v45 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;
  v22 = (v9 + 32);
  v46 = (v9 + 8);
  v47 = v9;

  v45 = a3;

  while (1)
  {
    sub_10004DE30(v16);
    v25 = sub_10000637C(&qword_10007A260, &qword_100067040);
    if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
    {
      sub_100003AB8();
    }

    v26 = *(v25 + 48);
    v27 = *v22;
    (*v22)(v12, v16, v48);
    v28 = *&v16[v26];
    v29 = *v56;
    v31 = sub_100018360(v12);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_10001D174();
      }
    }

    else
    {
      v36 = v56;
      sub_1000194F0(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_100018360(v12);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v31 = v38;
    }

    v40 = *v56;
    if (v35)
    {
      (*v46)(v12, v48);
      v23 = v40[7];
      v24 = *(v23 + 8 * v31);
      *(v23 + 8 * v31) = v28;

      a4 = 1;
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v27((v40[6] + *(v47 + 72) * v31), v12, v48);
      *(v40[7] + 8 * v31) = v28;
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10005194C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v46 = type metadata accessor for Logger();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v46);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v41 - v10;
  v11 = type metadata accessor for URL();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - v17;
  __chkstk_darwin(v16);
  v51 = &v41 - v19;
  v20 = *a2;
  swift_beginAccess();

  v21 = *(a1 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(a1 + 272);
  *(a1 + 272) = 0x8000000000000000;
  sub_100051608(v20, sub_10004D6B8, 0, isUniquelyReferenced_nonNull_native, &v56);

  *(a1 + 272) = v56;
  swift_endAccess();
  v42 = a1;
  sub_100036A80();
  v23 = *a3;
  v24 = *a3 + 56;
  v25 = 1 << *(*a3 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(*a3 + 56);
  v28 = (v25 + 63) >> 6;
  v52 = v23;
  v53 = v54 + 16;
  v48 = (v54 + 8);
  v49 = v54 + 32;
  v45 = (v6 + 8);

  v29 = 0;
  *&v30 = 136446210;
  v43 = v30;
  v44 = v15;
  v50 = v24;
  while (v27)
  {
    v31 = v29;
LABEL_9:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v54;
    a1 = v55;
    v34 = v51;
    (*(v54 + 16))(v51, *(v52 + 48) + *(v54 + 72) * (v32 | (v31 << 6)), v55);
    (*(v33 + 32))(v18, v34, a1);
    sub_10004F638(v18);
    (*v48)(v18, v55);
    v29 = v31;
    v24 = v50;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);

      v40 = *(a1 + 272);
      *(a1 + 272) = v56;

      __break(1u);
      return result;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  v35 = v41;
  static Logger.persistenceRecordStore.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Persistence record migration: migrateRecordDataFromEffectiveSettingsDirectory end", v38, 2u);
  }

  (*v45)(v35, v46);
  return [*(v42 + 216) unlock];
}

uint64_t sub_100051FC8(unint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = type metadata accessor for SettingScope();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v35);
  v34 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for URL();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v33);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = v39;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v31 = 0x800000010006A320;
    v32 = v11 & 0xC000000000000001;
    v30 = enum case for URL.DirectoryHint.notDirectory(_:);
    v29 = (v6 + 104);
    v28 = (v6 + 8);
    v27 = enum case for SettingScope.user(_:);
    v16 = (v3 + 104);
    v17 = (v3 + 8);
    v18 = (v9 + 8);
    do
    {
      v25 = result;
      if (v32)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v11 + 8 * v15 + 32);
      }

      ++v15;
      v40 = 0xD00000000000001DLL;
      v41 = v31;
      v21 = v34;
      v20 = v35;
      (*v29)(v34, v30, v35);
      sub_100011710();
      URL.appending<A>(path:directoryHint:)();
      (*v28)(v21, v20);
      v22 = *(v19 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
      v24 = v36;
      v23 = v37;
      (*v16)(v36, v27, v37);
      sub_100035E30(v13, v22, v24);
      (*v17)(v24, v23);
      (*v18)(v13, v33);

      result = v25;
      v11 = v39;
    }

    while (v25 != v15);
  }

  return result;
}

uint64_t sub_100052364(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = a3;
  v4 = type metadata accessor for CocoaError.Code();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  v21 = v34;
  sub_10000F5A4(a2, v31, v18);
  if (v21)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code);
    v27 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v24 = *(v30 + 8);
    v24(v7, v4);
    if (v27 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v27 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v24(v7, v4), (v27))
    {

      sub_100011890();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }
  }

  else
  {
    v34 = type metadata accessor for Persistence();
    v32 = 0x657A696E656B6F74;
    v33 = 0xEF7473696C702E64;
    (*(v9 + 104))(v12, enum case for URL.DirectoryHint.notDirectory(_:), v8);
    sub_100011710();
    URL.appending<A>(path:directoryHint:)();
    (*(v9 + 8))(v12, v8);
    v22 = v28;
    v23 = *(v29 + 8);
    v23(v18, v28);
    v27 = static Persistence.readLocalSettings(from:)();
    v23(v20, v22);
  }

  return v27;
}

uint64_t sub_100052768(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = a3;
  v4 = type metadata accessor for CocoaError.Code();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  v21 = v34;
  sub_10000F5A4(a2, v31, v18);
  if (v21)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code);
    v27 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v24 = *(v30 + 8);
    v24(v7, v4);
    if (v27 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v27 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v24(v7, v4), (v27))
    {

      sub_100011890();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }
  }

  else
  {
    v34 = type metadata accessor for Persistence();
    v32 = 0xD000000000000011;
    v33 = 0x8000000100069320;
    (*(v9 + 104))(v12, enum case for URL.DirectoryHint.notDirectory(_:), v8);
    sub_100011710();
    URL.appending<A>(path:directoryHint:)();
    (*(v9 + 8))(v12, v8);
    v22 = v28;
    v23 = *(v29 + 8);
    v23(v18, v28);
    v27 = static Persistence.readLocalSettings(from:)();
    v23(v20, v22);
  }

  return v27;
}

void sub_100052B64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  v32 = v10;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v35 = v9;
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v33 = v15;
    v19 = *(*(a3 + 56) + 8 * v15);
    v20 = *(a4 + 40);
    Hasher.init(_seed:)();

    v21 = v19;
    String.hash(into:)();
    v22 = Hasher._finalize()();
    v23 = -1 << *(a4 + 32);
    v24 = v22 & ~v23;
    if ((*(v11 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(a4 + 48) + 16 * v24);
        v27 = *v26 == v18 && v26[1] == v17;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v11 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v10 = v32;
      v9 = v35;
    }

    else
    {
LABEL_22:

      v10 = v32;
      v15 = v33;
      v9 = v35;
LABEL_23:
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_26:
        sub_10004C74C(a1, a2, v31, a3);
        return;
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_100052D80(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_100049C1C(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_100052B64((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_100052F40(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_1000182E8(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_10001DD34();
      }
    }

    else
    {
      v31 = v50;
      sub_10001B190(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_1000182E8(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100003AB8();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000531C8(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, _BYTE *a5)
{
  v115 = type metadata accessor for Logger();
  v10 = *(v115 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v115);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v100 - v15;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  if (!*(a1 + 16))
  {
    static Logger.persistenceRecordStore.getter();

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v121 = v96;
      *v95 = 136446210;
      type metadata accessor for UUID();
      sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = sub_100001ED8(v97, v98, &v121);

      *(v95 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v93, v94, "Nothing to delete from record “%{public}s,” exiting early", v95, 0xCu);
      sub_10000210C(v96);
    }

    return (*(v10 + 8))(v14, v115);
  }

  v101 = a3;
  v103 = a4;
  v102 = a5;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
  v110 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier;

  v117 = v21;
  v118 = a2;
  result = swift_beginAccess();
  v23 = 0;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v108 = (v18 + 63) >> 6;
  v112 = v10 + 8;
  *&v24 = 136446722;
  v109 = v24;
  v116 = v16;
  v113 = a1;
  v114 = a1 + 56;
  while (1)
  {
    v25 = v23;
    if (!v20)
    {
      break;
    }

    v26 = v118;
LABEL_11:
    v27 = (*(a1 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v20)))));
    v29 = *v27;
    v28 = v27[1];
    v30 = qword_10007A210;

    if (v30 != -1)
    {
      swift_once();
    }

    v20 &= v20 - 1;
    v31 = qword_10007D5D0;
    v32 = *(qword_10007D5D0 + 16);
    v119 = v29;
    if (v32)
    {
      v33 = *(v26 + v117);
      if (*(v33 + 16))
      {
        v34 = *(v26 + v117);

        v35 = sub_1000182E8(v29, v28);
        if (v36)
        {
          v37 = *(v33 + 56) + 32 * v35;
          v38 = *(v37 + 8);
          v39 = *(v37 + 24);
        }

        else
        {
          v39 = 1;
        }
      }

      else
      {
        v39 = 1;
      }

      v40 = *(v26 + v117);
      if (*(v40 + 16))
      {
        v41 = *(v26 + v117);

        v42 = sub_1000182E8(v29, v28);
        if (v43)
        {
          v44 = *(v40 + 56) + 32 * v42;
          v45 = *(v44 + 8);
          v46 = *(v44 + 25);
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      if (sub_10000ECDC(v31, v119, v28))
      {
        v47 = *(v26 + v117);
        if (*(v47 + 16))
        {
          v48 = *(v26 + v117);

          v49 = sub_1000182E8(v119, v28);
          if (v50)
          {
            v51 = *(v47 + 56) + 32 * v49;
            v52 = *(v51 + 8);
            v53 = *(v51 + 24);
          }

          else
          {
            v53 = 1;
          }
        }

        else
        {
          v53 = 1;
        }

        v54 = *(v26 + v117);
        if (*(v54 + 16))
        {
          v55 = *(v26 + v117);

          v56 = sub_1000182E8(v119, v28);
          if (v57)
          {
            v58 = *(v54 + 56) + 32 * v56;
            v59 = *(v58 + 8);
            v60 = *(v58 + 25);
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = 0;
        }

        LODWORD(v107) = v39 ^ v53;

        LODWORD(v111) = v46 ^ v60;
        HIDWORD(v107) = 1;
        v26 = v118;
        v29 = v119;
      }

      else
      {
        v107 = 0;
        LODWORD(v111) = 0;
        v29 = v119;
      }
    }

    else
    {
      v107 = 0;
      LODWORD(v111) = 0;
    }

    LOBYTE(v120) = 0;
    v61 = sub_100052364(v26, v29, v28);
    v62 = sub_100052768(v26, v29, v28);

    v63 = sub_100006278(_swiftEmptyArrayStorage);
    v64 = sub_100006278(_swiftEmptyArrayStorage);

    sub_10001027C(v61, v63);
    v66 = v65;

    if ((v66 & 1) == 0)
    {

LABEL_46:
      v70 = v118;
      sub_10004FAC4(v118, v29, v28, v63, v64, &v120);
      v69 = 1;
      goto LABEL_47;
    }

    sub_10001027C(v62, v64);
    v68 = v67;

    if ((v68 & 1) == 0)
    {
      goto LABEL_46;
    }

    v69 = 0;
    v70 = v118;
LABEL_47:
    v17 = v114;

    if (*(*(v70 + v117) + 16))
    {
      v71 = *(v70 + v117);

      sub_1000182E8(v119, v28);
      v73 = v72;

      if (v73)
      {
        v74 = *(v70 + v117);
        if (*(v74 + 16))
        {
          v75 = *(v70 + v117);

          v76 = sub_1000182E8(v119, v28);
          if (v77)
          {
            v78 = *(v74 + 56) + 32 * v76;
            v79 = *(v78 + 24);
            v80 = *(v78 + 25);

            v81 = v79 == 1;
            v17 = v114;
            if (!v81 || (v80 & 1) != 0)
            {
              goto LABEL_57;
            }
          }

          else
          {
          }
        }

        if ((sub_10000EFD0(v119, v28) & 1) == 0)
        {
          sub_10000FE2C(v119, v28);
LABEL_65:
          if (v69)
          {
            if (v111)
            {

              v82 = 1;
              v105 = 1;
              goto LABEL_68;
            }

            HIDWORD(v107) = 1;
          }

          else
          {
            if (v111)
            {

LABEL_71:
              v105 = 1;
              *v101 = 1;
LABEL_72:
              v83 = v107 | v104;
LABEL_73:
              a1 = v113;
              v104 = v83;
              *v103 = v83 & 1;
LABEL_85:
              v84 = 1;
              goto LABEL_86;
            }

            HIDWORD(v107) = 1;
            if ((v107 & 1) == 0)
            {

              *v101 = 1;
              *v103 = v104 & 1;
              v105 = 1;
              a1 = v113;
              v84 = v106;
              goto LABEL_86;
            }
          }

          goto LABEL_78;
        }
      }
    }

LABEL_57:
    if (v120 == 1)
    {
      goto LABEL_65;
    }

    if (v69)
    {
      if (v111)
      {

        v105 |= HIDWORD(v107);
        v82 = v105 & 1;
LABEL_68:
        *v101 = v82;
        v83 = 1;
        goto LABEL_73;
      }
    }

    else
    {
      if (v111)
      {

        if ((v107 & 0x100000000) != 0)
        {
          goto LABEL_71;
        }

        *v101 = v105 & 1;
        goto LABEL_72;
      }

      if ((v107 & 1) == 0)
      {

        v84 = v106;
        if (HIDWORD(v107))
        {
          v105 = 1;
          *v101 = 1;
        }

        else
        {
          *v101 = v105 & 1;
        }

        *v103 = v104 & 1;
        a1 = v113;
        goto LABEL_86;
      }
    }

LABEL_78:
    v85 = *(v70 + v117);
    if (*(v85 + 16))
    {
      v86 = *(v70 + v117);

      v87 = sub_1000182E8(v119, v28);
      v88 = HIDWORD(v107);
      if (v89)
      {
        v90 = *(v85 + 56) + 32 * v87;
        v91 = *(v90 + 8);
        v92 = *(v90 + 25);
      }

      else
      {
        v92 = 0;
      }

      v84 = v106;
    }

    else
    {
      v92 = 0;
      v84 = v106;
      v88 = HIDWORD(v107);
    }

    v105 |= v88;
    *v101 = v105 & 1;
    v104 = 1;
    *v103 = 1;
    a1 = v113;
    if (v92)
    {
      goto LABEL_85;
    }

LABEL_86:
    v106 = v84;
    *v102 = v84 & 1;
  }

  v26 = v118;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v108)
    {
    }

    v20 = *(v17 + 8 * v23);
    ++v25;
    if (v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100053E9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for Logger();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v29 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  v12 = __chkstk_darwin(v10);
  v26 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = type metadata accessor for CocoaError.Code();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Persistence();
  v24 = a1;
  v25 = a3;
  a3(a1, a2);
  if (v3)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10005459C(&qword_10007A460, &type metadata accessor for CocoaError.Code);
    v21 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v17 + 8))(v20, v16);
    if ((v21 & 1) == 0)
    {
      return result;
    }

    URL.deletingLastPathComponent()();
    static Persistence.createDirectory(at:)();
    (*(v30 + 8))(v15, v31);
    v25(v24, a2);
  }

  return static Persistence.setFileAttributes(of:)();
}

uint64_t sub_1000543C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005441C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(&qword_10007B818, &qword_100067018);
    sub_10005459C(a2, type metadata accessor for PersistenceRecord);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100054514(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000543C8(a1, a2);
  }

  return a1;
}

uint64_t sub_100054528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005457C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100054528(a1, a2);
  }

  return a1;
}

uint64_t sub_10005459C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000545E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100054648(uint64_t a1)
{
  v50 = a1;
  v2 = sub_10000637C(&qword_10007BA98, &qword_1000671F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = &v45 - v4;
  v5 = sub_10000637C(&qword_10007BAA0, &unk_1000671F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = sub_10000637C(&qword_10007BA90, &qword_100067330);
  v11 = sub_10005BCF8(&qword_10007BAA8, &qword_10007BA90, &qword_100067330, sub_10005BD74);
  v55 = v10;
  v56 = v1;
  v54 = v11;
  v12 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v13 = v5;
  v15 = sub_10003CADC(v12, v14);

  v16 = 0;
  v18 = v15 + 64;
  v17 = *(v15 + 64);
  v62 = v15;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v53 = (v6 + 56);
  v47 = (v6 + 8);
  v48 = (v6 + 32);
  v46 = _swiftEmptyArrayStorage;
  v49 = v9;
  v52 = v13;
  while (1)
  {
    v23 = v16;
    if (!v21)
    {
      break;
    }

LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = v24 | (v16 << 6);
    v26 = *(v62 + 56);
    v27 = *(v62 + 48) + 40 * v25;
    v28 = *(v27 + 8);
    v59 = *v27;
    v29 = *(v27 + 24);
    v58 = *(v27 + 16);
    v57 = *(v27 + 32);
    v30 = *(v26 + 8 * v25);
    type metadata accessor for Application();
    sub_10005BCB0(&qword_10007ACE8, &type metadata accessor for Application);

    v31 = v30;
    if (static Set<>.value(from:)())
    {
      v60 = v31;
      v61 = v28;
      v32 = v29;
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v34 = v51;
      v33 = v52;
      if (swift_dynamicCast())
      {
        (*v53)(v34, 0, 1, v33);
        v35 = v49;
        (*v48)(v49, v34, v33);
        v36 = SetCombineOperator.currentValue(_:restricts:)();

        v37 = v32;
        if (v36)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = sub_100026090(0, *(v46 + 2) + 1, 1, v46);
          }

          v41 = *(v46 + 2);
          v40 = *(v46 + 3);
          if (v41 >= v40 >> 1)
          {
            v46 = sub_100026090((v40 > 1), v41 + 1, 1, v46);
          }

          (*v47)(v35, v33);
          v42 = v46;
          *(v46 + 2) = v41 + 1;
          v43 = &v42[40 * v41];
          v44 = v61;
          *(v43 + 4) = v59;
          *(v43 + 5) = v44;
          *(v43 + 6) = v58;
          *(v43 + 7) = v37;
          v43[64] = v57;
        }

        else
        {
          (*v47)(v35, v33);
        }
      }

      else
      {

        (*v53)(v34, 1, 1, v33);
        sub_100008630(v34, &qword_10007BA98, &qword_1000671F0);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v16);
    ++v23;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100054B74(uint64_t a1, int a2)
{
  v48 = a2;
  v47 = a1;
  v3 = sub_10000637C(&qword_10007BA40, &qword_1000671A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v42 - v5;
  v54 = sub_10000637C(&qword_10007BA48, &unk_1000671A8);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v54);
  v9 = &v42 - v8;
  v10 = sub_10000637C(&qword_10007BA00, "DN");
  v11 = sub_10005BCF8(&qword_10007BA50, &qword_10007BA00, "DN", sub_10005BB4C);
  v53 = v2;
  v50 = v11;
  v51 = v10;
  v12 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v14 = sub_10003CADC(v12, v13);

  v15 = 0;
  v17 = v14 + 64;
  v16 = *(v14 + 64);
  v59 = v14;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v49 = (v6 + 56);
  v46 = (v6 + 32);
  v44 = (v6 + 8);
  v43 = _swiftEmptyArrayStorage;
  v45 = v9;
  while (1)
  {
    v22 = v15;
    if (!v20)
    {
      break;
    }

LABEL_9:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v24 = v23 | (v15 << 6);
    v25 = *(v59 + 56);
    v26 = *(v59 + 48) + 40 * v24;
    v27 = *(v26 + 8);
    v57 = *v26;
    v28 = *(v26 + 24);
    v56 = *(v26 + 16);
    v55 = *(v26 + 32);
    v29 = *(v25 + 8 * v24);
    type metadata accessor for WebDomain();
    sub_10005BCB0(&qword_10007ACE0, &type metadata accessor for WebDomain);

    v30 = v29;
    if (static Set<>.value(from:)())
    {
      v58 = v30;
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v31 = v52;
      v32 = v54;
      if (swift_dynamicCast())
      {
        (*v49)(v31, 0, 1, v32);
        v33 = v45;
        (*v46)(v45, v31, v32);
        v34 = SetCombineOperator<>.currentValue(_:restricts:shouldUsePatternMatching:)();

        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100026090(0, *(v43 + 2) + 1, 1, v43);
          }

          v35 = v33;
          v37 = *(v43 + 2);
          v36 = *(v43 + 3);
          v38 = v58;
          if (v37 >= v36 >> 1)
          {
            v43 = sub_100026090((v36 > 1), v37 + 1, 1, v43);
          }

          (*v44)(v35, v54);
          v39 = v43;
          *(v43 + 2) = v37 + 1;
          v40 = &v39[40 * v37];
          v41 = v56;
          *(v40 + 4) = v57;
          *(v40 + 5) = v27;
          *(v40 + 6) = v41;
          *(v40 + 7) = v28;
          v40[64] = v55;
        }

        else
        {
          (*v44)(v33, v32);
        }
      }

      else
      {

        (*v49)(v31, 1, 1, v32);
        sub_100008630(v31, &qword_10007BA40, &qword_1000671A0);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v15);
    ++v22;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

char *sub_10005509C(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = a1;
  v3 = sub_10000637C(&qword_10007BA70, &qword_1000671C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v51 - v5;
  v66 = sub_10000637C(&qword_10007BA78, &qword_1000671C8);
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v66 - 8);
  v10 = &v51 - v9;
  v11 = sub_10000637C(&qword_10007AC88, &unk_1000671D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v72 = &v51 - v13;
  v74 = sub_10000637C(&qword_10007AC80, &unk_100066590);
  v14 = *(v74 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v74);
  v65 = &v51 - v16;
  v17 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v18 = sub_10005BCF8(&qword_10007BA80, &qword_10007BA68, &qword_1000671B8, sub_10005BBE8);
  v61 = v17;
  v62 = v2;
  v60 = v18;
  v19 = dispatch thunk of SettingMetadataProtocol.name.getter();
  v21 = sub_10003CADC(v19, v20);

  v23 = 0;
  v25 = v21 + 64;
  v24 = *(v21 + 64);
  v73 = v21;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v71 = (v14 + 48);
  v58 = (v14 + 32);
  v63 = (v7 + 56);
  v64 = (v14 + 8);
  v53 = (v7 + 32);
  v57 = _swiftEmptyArrayStorage;
  v52 = (v7 + 8);
  v54 = v10;
  v59 = v6;
  while (1)
  {
    v30 = v23;
    if (!v28)
    {
      break;
    }

LABEL_9:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v32 = v31 | (v23 << 6);
    v33 = *(v73 + 56);
    v34 = *(v73 + 48) + 40 * v32;
    v35 = *(v34 + 8);
    v70 = *v34;
    v36 = *(v34 + 24);
    v69 = *(v34 + 16);
    v68 = *(v34 + 32);
    v37 = *(v33 + 8 * v32);
    type metadata accessor for Application();
    sub_10005BCB0(&qword_10007ACE8, &type metadata accessor for Application);

    v38 = v37;
    v39 = v72;
    static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
    v40 = v74;
    if ((*v71)(v39, 1, v74) == 1)
    {

      result = sub_100008630(v39, &qword_10007AC88, &unk_1000671D0);
    }

    else
    {
      v67 = v35;
      v41 = v65;
      (*v58)(v65, v39, v40);
      dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
      sub_10000637C(&qword_10007BA30, &qword_100067190);
      v42 = v40;
      v43 = v59;
      v44 = v66;
      if (swift_dynamicCast())
      {
        (*v63)(v43, 0, 1, v44);
        v45 = v54;
        (*v53)(v54, v43, v44);
        if (ActivityCategoryPolicyCombineOperator.currentValue(_:restricts:including:)())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_100026090(0, *(v57 + 2) + 1, 1, v57);
          }

          v47 = *(v57 + 2);
          v46 = *(v57 + 3);
          if (v47 >= v46 >> 1)
          {
            v57 = sub_100026090((v46 > 1), v47 + 1, 1, v57);
          }

          (*v52)(v45, v66);
          result = (*v64)(v65, v74);
          v48 = v57;
          *(v57 + 2) = v47 + 1;
          v49 = &v48[40 * v47];
          v50 = v67;
          *(v49 + 4) = v70;
          *(v49 + 5) = v50;
          *(v49 + 6) = v69;
          *(v49 + 7) = v36;
          v49[64] = v68;
        }

        else
        {

          (*v52)(v45, v44);
          result = (*v64)(v41, v74);
        }
      }

      else
      {
        (*v64)(v41, v42);

        (*v63)(v43, 1, 1, v44);
        result = sub_100008630(v43, &qword_10007BA70, &qword_1000671C0);
      }
    }
  }

  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v29)
    {

      return v57;
    }

    v28 = *(v25 + 8 * v23);
    ++v30;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100055788(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100055814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100055884(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_100054514(v4, v9);
}

void sub_100055930(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_1000559C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

ValueMetadata *sub_100055A58()
{
  result = *(v0 + 16);
  if (result)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    result = &type metadata for ApplicationRecord;
    *(v0 + 16) = &type metadata for ApplicationRecord;
    *(v0 + 24) = &off_100075F58;
  }

  return result;
}

uint64_t sub_100055A80@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_100056E24(v1 + 32, &v4);
  if (v5)
  {
    return sub_100003AA0(&v4, a1);
  }

  sub_100008630(&v4, &qword_10007B9E8, "4N");
  a1[3] = type metadata accessor for KeyRetriever();
  a1[4] = &protocol witness table for KeyRetriever;
  sub_1000067BC(a1);
  KeyRetriever.init()();
  sub_10000695C(a1, &v4);
  swift_beginAccess();
  sub_100056E94(&v4, v1 + 32);
  return swift_endAccess();
}

uint64_t sub_100055B50@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X4>, void *a4@<X8>)
{
  v51 = a4;
  v5 = v4;
  v60 = a3;
  v43 = a1;
  v44 = a2;
  v6 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v41 - v8;
  v9 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v42 = &v41 - v11;
  v12 = type metadata accessor for ActivityCategory();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000637C(&qword_10007BA90, &qword_100067330);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = type metadata accessor for Application();
  v52 = *(v20 - 8);
  v21 = *(v52 + 64);
  __chkstk_darwin(v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  Application.init(bundleIdentifier:)();
  static ShieldSettings.applications.getter();
  v24 = *(v5 + 112);
  sub_100054648(v23);
  v26 = v25;
  (*(v16 + 8))(v19, v15);
  v50 = v5;
  sub_100056F04(v26, v53);
  v28 = v53[0];
  v27 = v53[1];
  v29 = v53[2];
  v30 = v53[3];
  v31 = v54;
  v32 = v60;

  *v32 = 0;
  if (v27)
  {
    v33 = v52;
  }

  else
  {

    v34 = v41;
    ActivityCategory.init(identifier:)();
    v35 = v42;
    static ShieldSettings.applicationCategories.getter();
    v36 = v52;
    v37 = v49;
    (*(v52 + 16))(v49, v23, v20);
    (*(v36 + 56))(v37, 0, 1, v20);
    v38 = sub_10005509C(v34, v37);
    sub_100008630(v37, &qword_10007AC90, &unk_1000665A0);
    (*(v47 + 8))(v35, v48);
    sub_100056F04(v38, &v55);

    (*(v45 + 8))(v34, v46);
    *v32 = 1;
    v27 = v56;
    if (!v56)
    {
      sub_10005BA30();
      swift_allocError();
      swift_willThrow();
      return (*(v36 + 8))(v23, v20);
    }

    v33 = v36;
    v31 = v59;
    v29 = v57;
    v30 = v58;
    v28 = v55;
  }

  result = (*(v33 + 8))(v23, v20);
  v40 = v51;
  *v51 = v28;
  v40[1] = v27;
  v40[2] = v29;
  v40[3] = v30;
  *(v40 + 32) = v31 & 1;
  return result;
}

uint64_t sub_100056024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[2] = a1;
  v3 = v2;
  v5 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v27 - v7;
  v9 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v33 = type metadata accessor for ActivityCategory();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v33);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  ActivityCategory.init(identifier:)();
  static ShieldSettings.applicationCategories.getter();
  v18 = type metadata accessor for Application();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = *(v3 + 112);
  v20 = sub_10005509C(v17, v8);
  sub_100008630(v8, &qword_10007AC90, &unk_1000665A0);
  (*(v10 + 8))(v13, v9);
  sub_100056F04(v20, &v28);

  v21 = v29;
  if (v29)
  {
    v22 = v32;
    v24 = v30;
    v23 = v31;
    v25 = v28;
    result = (*(v14 + 8))(v17, v33);
    *a2 = v25;
    *(a2 + 8) = v21;
    *(a2 + 16) = v24;
    *(a2 + 24) = v23;
    *(a2 + 32) = v22 & 1;
  }

  else
  {
    sub_10005BA30();
    swift_allocError();
    swift_willThrow();
    return (*(v14 + 8))(v17, v33);
  }

  return result;
}

uint64_t sub_1000563A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X4>, void *a4@<X8>)
{
  v51 = a4;
  v5 = v4;
  v60 = a3;
  v43 = a1;
  v44 = a2;
  v6 = sub_10000637C(&qword_10007B9F0, "6N");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v49 = &v41 - v8;
  v9 = sub_10000637C(&qword_10007B9F8, &qword_100067320);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v42 = &v41 - v11;
  v12 = type metadata accessor for ActivityCategory();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000637C(&qword_10007BA00, "DN");
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = type metadata accessor for WebDomain();
  v52 = *(v20 - 8);
  v21 = *(v52 + 64);
  __chkstk_darwin(v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  WebDomain.init(domain:)();
  static ShieldSettings.webDomains.getter();
  v24 = *(v5 + 112);
  sub_100054B74(v23, 1);
  v26 = v25;
  (*(v16 + 8))(v19, v15);
  v50 = v5;
  sub_100056F04(v26, v53);
  v28 = v53[0];
  v27 = v53[1];
  v29 = v53[2];
  v30 = v53[3];
  v31 = v54;
  v32 = v60;

  *v32 = 0;
  if (v27)
  {
    v33 = v52;
  }

  else
  {

    v34 = v41;
    ActivityCategory.init(identifier:)();
    v35 = v42;
    static ShieldSettings.webDomainCategories.getter();
    v36 = v52;
    v37 = v49;
    (*(v52 + 16))(v49, v23, v20);
    (*(v36 + 56))(v37, 0, 1, v20);
    v38 = sub_100058D2C(v34, v37);
    sub_100008630(v37, &qword_10007B9F0, "6N");
    (*(v47 + 8))(v35, v48);
    sub_100056F04(v38, &v55);

    (*(v45 + 8))(v34, v46);
    *v32 = 1;
    v27 = v56;
    if (!v56)
    {
      sub_10005BA30();
      swift_allocError();
      swift_willThrow();
      return (*(v36 + 8))(v23, v20);
    }

    v33 = v36;
    v31 = v59;
    v29 = v57;
    v30 = v58;
    v28 = v55;
  }

  result = (*(v33 + 8))(v23, v20);
  v40 = v51;
  *v51 = v28;
  v40[1] = v27;
  v40[2] = v29;
  v40[3] = v30;
  *(v40 + 32) = v31 & 1;
  return result;
}

uint64_t sub_100056880(uint64_t a1, int a2, uint64_t a3, int a4, int a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v10);

  a7(a3, v11, v13, v14, v16, a1, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_100056A50(uint64_t a1, int a2, int a3, int a4, int a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  _Block_copy(v9);

  a7(v10, v12, v13, v15, v16, v18, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_100056B68(uint64_t a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);

  sub_10005B930(v9, v11, v12, v14, a1, v8, a6);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_100056DA0()
{
  sub_100008630((v0 + 4), &qword_10007B9E8, "4N");
  sub_10000210C(v0 + 9);
  v1 = v0[14];

  sub_10000210C(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t sub_100056E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&qword_10007B9E8, "4N");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&qword_10007B9E8, "4N");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056F04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(result + 16))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
    goto LABEL_29;
  }

  v2 = result;
  v61 = *(result + 16);
  v59 = a2;
  v8 = sub_1000573FC();
  v10 = v9;
  v60 = v2;
  v11 = (v2 + 64);
  v12 = v61;
  do
  {
    if (!v12)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:

LABEL_52:
      result = sub_10000210C(v65);
LABEL_53:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    if (v10)
    {
      v3 = *(v11 - 4);
      v13 = *(v11 - 3);
      v5 = *(v11 - 2);
      v6 = *(v11 - 1);
      LOBYTE(v7) = *v11;
      if (v3 == v8 && v10 == v13)
      {
        v3 = v8;
        v4 = v10;
        goto LABEL_27;
      }

      v15 = *(v11 - 4);
      v16 = *(v11 - 3);
      v17 = v10;
      v18 = v8;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v18;
      v10 = v17;
      if (v19)
      {
        v4 = v13;
LABEL_27:

        goto LABEL_28;
      }
    }

    v11 += 40;
    --v12;
  }

  while (v12);
  v58 = v8;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v22 = v61;
LABEL_14:
  v23 = v60;
  v24 = (v60 + 40 * v20);
  while (v22 != v20)
  {
    if (v20 >= v22)
    {
      goto LABEL_49;
    }

    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_50;
    }

    v26 = *(v24 + 64);
    ++v20;
    v24 += 5;
    if ((v26 & 1) == 0)
    {
      v27 = *(v24 - 1);
      v28 = *v24;
      v29 = v24[1];
      v30 = v24[2];

      v65[0] = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100057870(0, *(v21 + 2) + 1, 1);
        v21 = v65[0];
      }

      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      v22 = v61;
      if (v32 >= v31 >> 1)
      {
        sub_100057870((v31 > 1), v32 + 1, 1);
        v22 = v61;
        v21 = v65[0];
      }

      *(v21 + 2) = v32 + 1;
      v33 = &v21[40 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v28;
      *(v33 + 6) = v29;
      *(v33 + 7) = v30;
      v33[64] = 0;
      v20 = v25;
      goto LABEL_14;
    }
  }

  v65[0] = v21;

  sub_100057D10(v65);

  if (*(v65[0] + 2))
  {
    v3 = *(v65[0] + 4);
    v4 = *(v65[0] + 5);
    v5 = *(v65[0] + 6);
    v6 = *(v65[0] + 7);
    LOBYTE(v7) = v65[0][64];

    goto LABEL_28;
  }

  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v36 = v61;
LABEL_31:
  v37 = (v23 + 40 * v34);
  while (v36 != v34)
  {
    if (v34 >= v36)
    {
      __break(1u);
LABEL_55:
      __break(1u);

      __break(1u);
      return result;
    }

    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_55;
    }

    v39 = *(v37 + 64);
    ++v34;
    v37 += 5;
    if (v39)
    {
      v40 = *(v37 - 1);
      v41 = *v37;
      v42 = v37[1];
      v43 = v37[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100057870(0, *(v35 + 2) + 1, 1);
        v35 = v65[0];
      }

      v46 = *(v35 + 2);
      v45 = *(v35 + 3);
      v36 = v61;
      if (v46 >= v45 >> 1)
      {
        sub_100057870((v45 > 1), v46 + 1, 1);
        v36 = v61;
        v35 = v65[0];
      }

      *(v35 + 2) = v46 + 1;
      v47 = &v35[40 * v46];
      *(v47 + 4) = v40;
      *(v47 + 5) = v41;
      *(v47 + 6) = v42;
      *(v47 + 7) = v43;
      v47[64] = 1;
      v34 = v38;
      v23 = v60;
      goto LABEL_31;
    }
  }

  v7 = *(v35 + 2);

  if (!v7)
  {

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_28;
  }

  if (!v10)
  {
    goto LABEL_53;
  }

  v48 = sub_100055A58();
  v50 = v49;
  v51 = *(v49 + 8);
  v63 = v48;
  v64 = v49;
  sub_1000067BC(&v62);
  v51(v58, v10, v48, v50);
  sub_100003AA0(&v62, v65);
  v52 = [*sub_100008578(v65 v66)];
  if (!v52)
  {
    goto LABEL_52;
  }

  v53 = v52;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v54;

  v55 = [*sub_100008578(v65 v66)];
  if (!v55)
  {
    goto LABEL_51;
  }

  v56 = v55;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v57;

  result = sub_10000210C(v65);
  LOBYTE(v7) = 0;
LABEL_28:
  a2 = v59;
LABEL_29:
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_1000573FC())(_BYTE *, uint64_t)
{
  v1 = type metadata accessor for Logger();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Application();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v28[-v11];
  v13 = *sub_100008578((v0 + 72), *(v0 + 96));
  sub_100033ED4(v12);
  v14 = Application.bundleIdentifier.getter();
  if (v15)
  {
    v16 = v14;
    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v33 = v1;
    static Logger.shieldAction.getter();
    (*(v6 + 16))(v10, v12, v5);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = v19;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v19 = 136446210;
      sub_10005BCB0(&qword_10007B878, &type metadata accessor for Application);
      v29 = v18;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v31 = v4;
      v23 = v5;
      v24 = *(v6 + 8);
      v24(v10, v23);
      v25 = sub_100001ED8(v20, v22, &v35);

      v26 = v30;
      *(v30 + 1) = v25;
      v16 = v24;
      v5 = v23;
      _os_log_impl(&_mh_execute_header, v17, v29, "No bundle identifier for effective allowed client: %{public}s", v26, 0xCu);
      sub_10000210C(v32);

      (*(v34 + 8))(v31, v33);
    }

    else
    {

      v16 = *(v6 + 8);
      v16(v10, v5);
      (*(v34 + 8))(v4, v33);
    }

    sub_10005BA30();
    swift_allocError();
    swift_willThrow();
    v16(v12, v5);
  }

  return v16;
}

void *sub_1000577B0(void *a1, int64_t a2, char a3)
{
  result = sub_100057890(a1, a2, a3, *v3, &qword_10007BAD0, &qword_1000672D0, &qword_10007BAD8, &qword_1000672D8);
  *v3 = result;
  return result;
}

void *sub_1000577F0(void *a1, int64_t a2, char a3)
{
  result = sub_100057890(a1, a2, a3, *v3, &qword_10007BAC0, &qword_100067208, &qword_10007B258, &qword_100067210);
  *v3 = result;
  return result;
}

char *sub_100057830(char *a1, int64_t a2, char a3)
{
  result = sub_1000579D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100057850(char *a1, int64_t a2, char a3)
{
  result = sub_100057AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100057870(char *a1, int64_t a2, char a3)
{
  result = sub_100057BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100057890(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000637C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000637C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000579D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B5C0, &unk_100066F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100057AE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&unk_10007B220, &unk_100066C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100057BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B1E8, &qword_100066C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_100057D10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100058D18(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100057D7C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100057D7C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10005802C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100057E74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100057E74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v24 = v5;
    while (1)
    {
      v7 = v4 + 40;
      v6 = *(v4 + 40);
      v8 = *(v4 + 48);
      v9 = *(v4 + 64);
      v11 = *v4;
      v10 = *(v4 + 8);
      v12 = String.lowercased()();
      v13 = String.lowercased()();
      if (v12._countAndFlagsBits == v13._countAndFlagsBits && v12._object == v13._object)
      {

LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 40;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v16 = *(v4 + 40);
      v17 = *(v4 + 56);
      v18 = *(v4 + 64);
      v19 = *(v4 + 72);
      v20 = *(v4 + 16);
      *v7 = *v4;
      *(v4 + 56) = v20;
      v21 = *(v4 + 32);
      *v4 = v16;
      *(v4 + 16) = v17;
      *(v4 + 24) = v18;
      *(v4 + 32) = v19;
      v4 -= 40;
      *(v7 + 32) = v21;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}