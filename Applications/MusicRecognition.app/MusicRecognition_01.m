void sub_10001FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v10 - 8);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for Date();
  __chkstk_darwin(v15);
  v65 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v50 - v18;
  __chkstk_darwin(v19);
  v55 = &v50 - v21;
  v51 = a2;
  if (a3 != a2)
  {
    v61 = (v20 + 32);
    v64 = (v20 + 56);
    v22 = *a4;
    v23 = (v20 + 48);
    v58 = (v20 + 8);
    v59 = v22;
    v24 = -1;
    if ((a5 & 1) == 0)
    {
      v24 = 1;
    }

    v56 = v23;
    v57 = v24;
    v25 = v22 + 8 * a3 - 8;
    v26 = a1 - a3;
LABEL_7:
    v53 = v25;
    v54 = a3;
    v27 = *(v59 + 8 * a3);
    v52 = v26;
    v28 = v55;
    while (1)
    {
      v29 = *v25;
      v30 = v27;
      v66 = v29;
      v63 = v30;
      v31 = [v30 creationDate];
      if (v31)
      {
        v32 = v31;
        v33 = v62;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = *v61;
        (*v61)(v14, v33, v15);
        v35 = *v64;
        (*v64)(v14, 0, 1, v15);
        v34(v28, v14, v15);
      }

      else
      {
        v35 = *v64;
        (*v64)(v14, 1, 1, v15);
        static Date.now.getter();
        if ((*v56)(v14, 1, v15) != 1)
        {
          sub_100007E14(v14, &qword_100142FE0);
        }
      }

      v36 = [v66 creationDate];
      if (v36)
      {
        v37 = v62;
        v38 = v36;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = *v61;
        v40 = v14;
        v41 = v60;
        v42 = v37;
        v28 = v55;
        (*v61)(v60, v42, v15);
        v35(v41, 0, 1, v15);
        v43 = v41;
        v14 = v40;
        v39(v65, v43, v15);
      }

      else
      {
        v44 = v60;
        v35(v60, 1, 1, v15);
        static Date.now.getter();
        if ((*v56)(v44, 1, v15) != 1)
        {
          sub_100007E14(v60, &qword_100142FE0);
        }
      }

      v45 = v65;
      v46 = Date.compare(_:)();
      v47 = *v58;
      (*v58)(v45, v15);
      v47(v28, v15);

      if (v46 != v57)
      {
LABEL_6:
        a3 = v54 + 1;
        v25 = v53 + 8;
        v26 = v52 - 1;
        if (v54 + 1 == v51)
        {
          return;
        }

        goto LABEL_7;
      }

      if (!v59)
      {
        break;
      }

      v48 = *v25;
      v27 = *(v25 + 8);
      *v25 = v27;
      *(v25 + 8) = v48;
      v25 -= 8;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1000200DC(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000123E4(0, &qword_100142FB0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_10001EF50(v10, v11, a1, v6, a2 & 1);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10001FC2C(0, v4, 1, a1, a2 & 1);
  }
}

uint64_t sub_1000201FC(unint64_t isUniquelyReferenced_nonNull_native, SEL *a2)
{
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_40;
  }

  v2 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v29 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v27 = v2;
    v28 = isUniquelyReferenced_nonNull_native + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = *(v28 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_native;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_native *a2];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000B730();
        StringProtocol.precomposedStringWithCanonicalMapping.getter();

        v9 = StringProtocol.localizedUppercase.getter();
        v11 = v10;

        sub_10001E5C4(1, v9, v11, v12);
      }

      else
      {
        Substring.init(_:)();
      }

      v13 = static String._fromSubstring(_:)();
      v15 = v14;

      v16 = _swiftEmptyArrayStorage[2];
      if (v16)
      {
        v17 = 0;
        v18 = &_swiftEmptyArrayStorage[5];
        while (1)
        {
          v19 = *(v18 - 1) == v13 && *v18 == v15;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v17;
          v18 += 2;
          if (v16 == v17)
          {
            goto LABEL_21;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_10005CEF0(v4);
          v4 = isUniquelyReferenced_nonNull_native;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v17 >= v4[2])
        {
          goto LABEL_39;
        }

        v24 = v5;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v4[v17 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[v17 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v2 = v27;
        }
      }

      else
      {
LABEL_21:
        sub_10001D854(v13, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100063048(0, v4[2] + 1, 1);
        }

        v21 = v4[2];
        v20 = v4[3];
        if (v21 >= v20 >> 1)
        {
          sub_100063048((v20 > 1), v21 + 1, 1);
        }

        v4[2] = v21 + 1;
        v22 = &v4[v21];
        v22[4] = _swiftEmptyArrayStorage;
        v23 = v5;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (v3 == v2)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v26 = isUniquelyReferenced_nonNull_native;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_native = v26;
  }

  return 0;
}

uint64_t sub_100020604(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v11 = qword_10014FF90;
  swift_getKeyPath();
  v16[1] = v11;
  sub_1000208CC(&qword_100142FA8, type metadata accessor for MusicSubscriptionStatusController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_100007FDC(v11 + v12, v10, &qword_100142FA0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_100007E14(v10, &qword_100142FA0);
    v13 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_100007E14(v10, &qword_100142FA0);
    v14 = MusicSubscription.canPlayCatalogContent.getter();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }
  }

  return sub_1000C3900(v13 | a1 | (a2 << 8), 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000208CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020914@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10001E16C(&unk_1000F6408, &qword_100142ED8);
}

uint64_t sub_100020998()
{
  *(*(v0 + 16) + qword_100142ED8) = *(v0 + 24);
}

uint64_t sub_1000209DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10001E088();
  a1[1] = v2;
}

uint64_t sub_100020A1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100019E8C(v1, v2);
}

uint64_t sub_100020A68()
{
  v1 = v0[4];
  v2 = (v0[2] + qword_100142EB8);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t getEnumTagSinglePayload for ViewConfiguration.ViewName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewConfiguration.ViewName(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020CE8()
{
  result = qword_100143008;
  if (!qword_100143008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143008);
  }

  return result;
}

unint64_t sub_100020D40()
{
  result = qword_100143010;
  if (!qword_100143010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143010);
  }

  return result;
}

unint64_t sub_100020DA4()
{
  result = qword_100143018;
  if (!qword_100143018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143018);
  }

  return result;
}

uint64_t sub_100020E1C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000D0C8(v0, qword_10014FF08);
  sub_10000BEC4(v0, qword_10014FF08);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100020E80()
{
  v0 = sub_100002D44(&qword_100142CC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100002D44(&qword_100142CC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141AA8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000BEC4(v6, qword_10014FF08);
  (*(v7 + 16))(v9, v10, v6);
  (*(v7 + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100021098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v3[43] = a1;
  v4 = type metadata accessor for IntentDonationManager();
  v3[46] = v4;
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v5 = type metadata accessor for IntentDonationIdentifier();
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = sub_100002D44(&qword_100142878);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v6 = type metadata accessor for IntentSystemContext();
  v3[55] = v6;
  v3[56] = *(v6 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();

  return _swift_task_switch(sub_100021268, 0, 0);
}

uint64_t sub_100021268()
{
  v25 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 472) = sub_10000BEC4(v1, qword_10014FEA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);
    v6 = *(v0 + 448);
    v7 = *(v0 + 432);
    v23 = *(v0 + 352);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v0 + 328) = v23;
    sub_100019A88();
    AppIntent.systemContext.getter();
    IntentSystemContext.source.getter();
    (*(v6 + 8))(v4, v5);
    v10 = Optional.debugDescription.getter();
    v12 = v11;
    sub_100007E14(v7, &qword_100142878);
    v13 = sub_1000BA1EC(v10, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Music Recognition request triggered by %s", v8, 0xCu);
    sub_100007E74(v9);
  }

  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 448);
  v14 = *(v0 + 456);
  v16 = *(v0 + 440);
  v17 = qword_10014FF28;
  *(v0 + 280) = type metadata accessor for MusicRecognizer();
  *(v0 + 288) = &off_100136F18;
  *(v0 + 256) = v17;
  *(v0 + 296) = *(v0 + 352);
  *(v0 + 480) = sub_100019A88();

  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v15 + 8))(v14, v16);
  v18 = swift_task_alloc();
  *(v0 + 488) = v18;
  *v18 = v0;
  v18[1] = sub_10002159C;
  v19 = *(v0 + 424);
  v20 = *(v0 + 352);
  v21 = *(v0 + 360);

  return sub_100021D28(v0 + 16, v0 + 256, v19, v20, v21);
}

uint64_t sub_10002159C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  sub_100007E14(*(v2 + 424), &qword_100142878);
  if (v0)
  {
    v3 = sub_100021AD4;
  }

  else
  {
    sub_100007E74(v2 + 256);
    v3 = sub_1000216E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000216E8()
{
  v1 = *(v0 + 64);
  *(v0 + 208) = *(v0 + 48);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v2;
  sub_100002D44(&qword_100143068);
  sub_100023200();
  v12 = *(v0 + 352);
  static IntentResult.result<A>(value:)();
  v3 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 208);
  *(v0 + 144) = v3;
  *(v0 + 160) = *(v0 + 240);
  v4 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v4;
  sub_100007E14(v0 + 96, &qword_100143068);
  static IntentDonationManager.shared.getter();
  *(v0 + 312) = v12;
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  v6 = sub_100002D44(&qword_100143038);
  v7 = sub_100004610(&qword_100143078, &qword_100143038);
  *v5 = v0;
  v5[1] = sub_10002189C;
  v8 = *(v0 + 480);
  v9 = *(v0 + 408);
  v10 = *(v0 + 344);

  return IntentDonationManager.donate<A, B>(intent:result:)(v9, v0 + 312, v10, &type metadata for RecognizeMusicIntent, v6, v8, v7);
}

uint64_t sub_10002189C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 512) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100021B88;
  }

  else
  {
    (*(v2[50] + 8))(v2[51], v2[49]);
    v6 = sub_100021A2C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100021A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021AD4()
{
  sub_100007E74(v0 + 256);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021B88()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "IntentDonationManager unable to donate App Intent %@", v3, 0xCu);
    sub_100007E14(v4, &unk_100142880);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100021D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v5[22] = type metadata accessor for MusicRecognitionIntentConfiguration();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100021DC4, 0, 0);
}

uint64_t sub_100021DC4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = v3[3];
  v6 = v3[4];
  v7 = sub_10000DC80(v3, v5);
  *(v0 + 120) = v5;
  *(v0 + 128) = *(v6 + 8);
  v8 = sub_100023284((v0 + 96));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  sub_100012CAC(v4, v1);
  IntentParameter.wrappedValue.getter();
  LOBYTE(v4) = *(v0 + 208);
  IntentParameter.wrappedValue.getter();
  v9 = *(v0 + 209);
  *(v1 + v2[5]) = v4;
  *(v1 + v2[6]) = v9;
  *(v1 + v2[7]) = 0;
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_100021F30;
  v11 = *(v0 + 184);

  return sub_10002214C(v0 + 16, v0 + 96, v11);
}

uint64_t sub_100021F30()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  sub_1000232E8(*(v2 + 184));
  if (v0)
  {
    v3 = sub_1000220DC;
  }

  else
  {
    sub_100007E74(v2 + 96);
    v3 = sub_10002205C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002205C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 48);
  v1[3] = *(v0 + 64);
  v1[4] = v2;
  v1[1] = v4;
  v1[2] = v3;
  *v1 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000220DC()
{
  sub_100007E74(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_100022170, 0, 0);
}

uint64_t sub_100022170()
{
  *(v0 + 120) = *sub_10000DC80(*(v0 + 104), *(*(v0 + 104) + 24));
  type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  return _swift_task_switch(sub_100022218, v2, v1);
}

uint64_t sub_100022218()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for MusicRecognitionIntentConfiguration();
  v0[19] = v3;
  *(v2 + 24) = *(v1 + *(v3 + 20));
  v4 = *(v1 + *(v3 + 28));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1000222D0;
  v6 = v0[14];

  return sub_100054B0C(v4, v6);
}

uint64_t sub_1000222D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  *(v5 + 184) = a3;

  v6 = *(v4 + 144);
  v7 = *(v4 + 136);

  return _swift_task_switch(sub_1000223FC, v7, v6);
}

uint64_t sub_1000223FC()
{

  return _swift_task_switch(sub_100022464, 0, 0);
}

void sub_100022464()
{
  if (*(v0 + 184) == 255)
  {
    goto LABEL_28;
  }

  if (SHSession.Result.wasCancelled.getter())
  {
    if (qword_100141D90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000BEC4(v1, qword_10014FFD0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Match attempt was cancelled so returning nil from the App Intent", v4, 2u);
    }

    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 96);
    v8 = *(v0 + 184);

    sub_1000120D0(v6, v5, v8);
    v7[3] = 0u;
    v7[4] = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    *v7 = 0u;
    goto LABEL_29;
  }

  if (!*(v0 + 184))
  {
    v10 = [*(v0 + 168) mediaItems];
    sub_100023398();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_14;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      v13 = v12;
      v15 = *(v0 + 168);
      v14 = *(v0 + 176);
      v16 = *(v0 + 96);

      sub_100016C9C(v13, v0 + 16);

      sub_1000120D0(v15, v14, 0);
      *v16 = *(v0 + 16);
      v17 = *(v0 + 32);
      v18 = *(v0 + 48);
      v19 = *(v0 + 80);
      v16[3] = *(v0 + 64);
      v16[4] = v19;
      v16[1] = v17;
      v16[2] = v18;
      goto LABEL_29;
    }

    sub_1000120D0(*(v0 + 168), *(v0 + 176), 0);

    goto LABEL_28;
  }

  if (*(v0 + 184) != 1)
  {
    swift_errorRetain();
    v20 = _convertErrorToNSError(_:)();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v24 = sub_10006CA70(&off_100134E78);
    sub_1000CD1A0(v21, v23, v24);
    v26 = v25;

    if (v26)
    {
    }

    else if ([v20 code] != 202)
    {
      sub_100023344();
      swift_allocError();
      v28 = 2;
      goto LABEL_23;
    }

    sub_100023344();
    swift_allocError();
    v28 = 1;
LABEL_23:
    *v27 = v28;
    swift_willThrow();

    goto LABEL_24;
  }

  if ((*(*(v0 + 112) + *(*(v0 + 152) + 24)) & 1) == 0)
  {
    sub_1000120D0(*(v0 + 168), *(v0 + 176), 1u);
LABEL_28:
    v30 = *(v0 + 96);
    v30[3] = 0u;
    v30[4] = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    *v30 = 0u;
LABEL_29:
    v29 = *(v0 + 8);
    goto LABEL_30;
  }

  sub_100023344();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
LABEL_24:
  sub_1000120D0(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  v29 = *(v0 + 8);
LABEL_30:

  v29();
}

uint64_t sub_100022840()
{
  v0 = sub_100002D44(&qword_100143048);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_100019A88();
  IntentPrediction.init<>(displayRepresentation:)();
  sub_100004610(&qword_100143040, &qword_100143048);
  static IntentPredictionsBuilder.buildExpression<A>(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  static IntentPredictionsBuilder.buildBlock<A>(_:)();
  return (v7)(v6, v0);
}

unint64_t sub_1000229E4()
{
  result = qword_100143020;
  if (!qword_100143020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143020);
  }

  return result;
}

unint64_t sub_100022A3C()
{
  result = qword_100143028;
  if (!qword_100143028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143028);
  }

  return result;
}

uint64_t sub_100022B14@<X0>(uint64_t a1@<X8>)
{
  if (qword_100141AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000BEC4(v2, qword_10014FF08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100022BD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000789C;

  return sub_100021098(a1, v5, v4);
}

uint64_t sub_100022C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100022D7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100022CA8(uint64_t a1)
{
  v2 = sub_100019A88();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100022D7C()
{
  v33 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002D44(&qword_100143050);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = sub_100002D44(&qword_100143058);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142CC8);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v30 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v34 = sub_100002D44(&qword_100143060);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29 = *(v12 + 56);
  v31 = v12 + 56;
  v29(v10, 0, 1, v11);
  v36 = 1;
  v13 = type metadata accessor for Bool.IntentDisplayName();
  v14 = *(v13 - 8);
  v27 = *(v14 + 56);
  v28 = v14 + 56;
  v27(v7, 1, 1, v13);
  v15 = type metadata accessor for IntentDialog();
  v16 = *(v15 - 8);
  v25 = *(v16 + 56);
  v26 = v16 + 56;
  v21[0] = v4;
  v25(v4, 1, 1, v15);
  v23 = enum case for InputConnectionBehavior.default(_:);
  v17 = *(v0 + 104);
  v21[1] = v0 + 104;
  v22 = v17;
  v18 = v32;
  v19 = v33;
  v17(v32);
  v24 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29(v10, 0, 1, v30);
  v35 = 0;
  v27(v7, 1, 1, v13);
  v25(v21[0], 1, 1, v15);
  v22(v18, v23, v19);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v24;
}

unint64_t sub_100023200()
{
  result = qword_100143070;
  if (!qword_100143070)
  {
    sub_100004370(&qword_100143068);
    sub_10001645C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143070);
  }

  return result;
}

uint64_t *sub_100023284(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000232E8(uint64_t a1)
{
  v2 = type metadata accessor for MusicRecognitionIntentConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100023344()
{
  result = qword_100143080;
  if (!qword_100143080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143080);
  }

  return result;
}

unint64_t sub_100023398()
{
  result = qword_100143088;
  if (!qword_100143088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100143088);
  }

  return result;
}

uint64_t sub_100023400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100023480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitPlaylist()
{
  result = qword_1001430F0;
  if (!qword_1001430F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002353C()
{
  result = type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000235A8()
{
  result = static Color.gray.getter();
  qword_100143090 = result;
  return result;
}

uint64_t sub_1000235C8()
{
  v0 = type metadata accessor for RoundedRectangle();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002D44(&qword_100142D60);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ArtworkImage();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100002D44(&qword_100143128);
  __chkstk_darwin(v9);
  v11 = &v34[-v10];
  Playlist.artwork.getter();
  ArtworkImage.init(_:)();
  type metadata accessor for ArtworkUnavailableView();
  sub_1000239FC();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  (*(v6 + 8))(v8, v5);
  v12 = *(v1 + 28);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 104))(&v3[v12], v13, v14);
  __asm { FMOV            V0.2D, #5.0 }

  *v3 = _Q0;
  if (qword_100141AB0 != -1)
  {
    swift_once();
  }

  v20 = qword_100143090;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v21 = &v11[*(v9 + 36)];
  sub_100023A54(v3, v21);
  v22 = v21 + *(sub_100002D44(&qword_100143130) + 36);
  v23 = v35;
  *v22 = *&v34[8];
  *(v22 + 16) = v23;
  *(v22 + 32) = v36;
  v24 = sub_100002D44(&qword_100143138);
  *(v21 + *(v24 + 52)) = v20;
  *(v21 + *(v24 + 56)) = 256;

  v25 = static Alignment.center.getter();
  v27 = v26;
  sub_100023AB8(v3);
  v28 = (v21 + *(sub_100002D44(&qword_100143140) + 36));
  *v28 = v25;
  v28[1] = v27;
  *(v21 + *(sub_100002D44(&qword_100143148) + 36)) = 0x3FC999999999999ALL;
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = (v21 + *(sub_100002D44(&qword_100143150) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_100023B14();
  return AnyView.init<A>(_:)();
}

unint64_t sub_1000239FC()
{
  result = qword_100142D98;
  if (!qword_100142D98)
  {
    type metadata accessor for ArtworkUnavailableView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142D98);
  }

  return result;
}

uint64_t sub_100023A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023AB8(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100023B14()
{
  result = qword_100143158;
  if (!qword_100143158)
  {
    sub_100004370(&qword_100143128);
    type metadata accessor for ArtworkUnavailableView();
    sub_1000239FC();
    swift_getOpaqueTypeConformance2();
    sub_100023BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143158);
  }

  return result;
}

unint64_t sub_100023BD0()
{
  result = qword_100143160;
  if (!qword_100143160)
  {
    sub_100004370(&qword_100143150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143160);
  }

  return result;
}

void sub_100023C4C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() colorNamed:v0];

  if (v1)
  {
    qword_100143168 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_100023CC8()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData;
    if (i != *(*&v0[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] + 16))
    {
      sub_100023F14();
    }

    [v0 bounds];
    Width = CGRectGetWidth(v24);
    v6 = *&v0[v1];
    if (v6 >> 62)
    {
      v23 = Width;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      Width = v23;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = *(*&v0[v4] + 16);
    if (!v8)
    {
      break;
    }

    v9 = 0;
    v10 = Width / v7 * 0.5;
    while (1)
    {
      swift_beginAccess();
      v11 = *&v0[v1];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v11 + 8 * v9 + 32);
      }

      v13 = v12;
      swift_endAccess();
      v14 = *&v0[v4];
      if (v9 >= *(v14 + 16))
      {
        break;
      }

      v15 = v9 + 1;
      v16 = *(v14 + 4 * v9 + 32);
      [v0 bounds];
      v18 = v17 * v16;
      if (v16 >= 1.0)
      {
        v18 = v17;
      }

      if (v10 > v18)
      {
        v19 = v10;
      }

      else
      {
        v19 = v18;
      }

      v20 = [v13 layer];
      [v20 setBounds:{0.0, 0.0, v10, v19}];

      v21 = [v13 layer];
      [v21 setCornerRadius:v10 * 0.5];

      v9 = v15;
      if (v8 == v15)
      {
        return [v0 setNeedsDisplay];
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return [v0 setNeedsDisplay];
}

void sub_100023F14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v4 = *&v1[v2];
      v5 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v5)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == v5)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_15;
      }
    }

LABEL_14:

    *&v1[v2] = &_swiftEmptyArrayStorage;
  }

LABEL_15:
  for (i = *(*&v1[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] + 16); i; --i)
  {
    v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v12 = [v11 layer];
    [v12 setCornerCurve:kCACornerCurveContinuous];

    v13 = [v11 layer];
    [v13 setAllowsEdgeAntialiasing:1];

    if (qword_100141AB8 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_100143168];
    swift_beginAccess();
    v14 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v1 addSubview:v14];
  }
}

void sub_10002426C()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v1 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style;
  v2 = v0[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style];
  [v0 bounds];
  v4 = v3;
  v5 = &qword_100143000;
  v6 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews;
  if (v2)
  {
    swift_beginAccess();
    v7 = *&v0[v6];
    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v9 = 0.52;
  }

  else
  {
    swift_beginAccess();
    v10 = *&v0[v6];
    if (v10 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v4 + -2.0;
    v9 = 0.54;
  }

  v11 = *(*&v0[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v4 / v8;
    v4 = v13 * v9;
    v14 = v5[47];
    v15 = (v13 - v13 * v9) * 0.5;
    do
    {
      swift_beginAccess();
      v16 = *&v0[v14];
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          v8 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v17 = *(v16 + 8 * v12 + 32);
      }

      v5 = v17;
      v18 = v12 + 1;
      swift_endAccess();
      v19 = [v5 layer];
      [v19 setCornerRadius:v4 * 0.5];

      v20 = v13 * v12;
      v21 = v20 + 1.0;
      v22 = v15 + v4 * 0.5 + v20;
      if (v0[v1])
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      [v0 bounds];
      [v5 setCenter:{v23, CGRectGetMidY(v25)}];
      [v5 bounds];
      [v5 setBounds:{0.0, 0.0, v4}];

      ++v12;
    }

    while (v11 != v18);
  }
}

id sub_100024528(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData) = a2;

  return sub_100023CC8();
}

uint64_t getEnumTagSinglePayload for SpectralOutputWaveformStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpectralOutputWaveformStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002476C()
{
  result = qword_1001431B0;
  if (!qword_1001431B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001431B0);
  }

  return result;
}

void sub_1000247C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView;
  v12 = type metadata accessor for SpectralOutputWaveformView();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] = _swiftEmptyArrayStorage;
  v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style] = 0;
  v21.receiver = v13;
  v21.super_class = v12;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100023F14();

  *&v5[v11] = v14;
  v15 = [objc_opt_self() mainBundle];
  v16 = objc_allocWithZone(BSUICAPackageView);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithPackageName:v17 inBundle:v15];

  if (v18)
  {
    *&v5[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView] = v18;
    v20.receiver = v5;
    v20.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
    sub_100024968();
  }

  else
  {
    __break(1u);
  }
}

void sub_100024968()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = *&v0[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v5];

  [v4 setClipsToBounds:1];
  v6 = String._bridgeToObjectiveC()();
  [v4 setState:v6];

  [v1 addSubview:v4];
  v28 = objc_opt_self();
  sub_100002D44(&qword_100142810);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F6A30;
  v8 = [v2 centerXAnchor];
  v9 = [v1 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [v2 centerYAnchor];
  v12 = [v1 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v2 heightAnchor];
  v15 = [v14 constraintEqualToConstant:24.0];

  *(v7 + 48) = v15;
  v16 = [v2 widthAnchor];
  v17 = [v16 constraintEqualToConstant:24.0];

  *(v7 + 56) = v17;
  v18 = [v4 centerXAnchor];
  v19 = [v1 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v7 + 64) = v20;
  v21 = [v4 centerYAnchor];
  v22 = [v1 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v7 + 72) = v23;
  v24 = [v4 heightAnchor];
  v25 = [v24 constraintEqualToConstant:24.0];

  *(v7 + 80) = v25;
  v26 = [v4 widthAnchor];
  v27 = [v26 constraintEqualToConstant:24.0];

  *(v7 + 88) = v27;
  sub_100025014();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

void sub_100024DE4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView;
  v6 = type metadata accessor for SpectralOutputWaveformView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] = _swiftEmptyArrayStorage;
  v7[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style] = 0;
  v16.receiver = v7;
  v16.super_class = v6;
  v8 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100023F14();

  *&v2[v5] = v8;
  v9 = [objc_opt_self() mainBundle];
  v10 = objc_allocWithZone(BSUICAPackageView);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithPackageName:v11 inBundle:v9];

  if (v12)
  {
    *&v2[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView] = v12;
    v15.receiver = v2;
    v15.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
    if (v13)
    {
      v14 = v13;
      sub_100024968();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100025014()
{
  result = qword_100143260;
  if (!qword_100143260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100143260);
  }

  return result;
}

uint64_t sub_100025074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143280);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100025100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143280);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NavigationBarButtonStyle()
{
  result = qword_1001432E0;
  if (!qword_1001432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000251C8()
{
  sub_100025234();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100025234()
{
  if (!qword_1001432F0)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001432F0);
    }
  }
}

uint64_t sub_1000252A8()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  qword_100143270 = v0;
  return result;
}

uint64_t sub_1000252EC()
{
  result = static Color.secondary.getter();
  qword_100143278 = result;
  return result;
}

uint64_t sub_10002530C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = type metadata accessor for ColorScheme();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v72 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v60 - v4;
  v5 = type metadata accessor for BorderlessButtonStyle();
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  __chkstk_darwin(v5);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolVariants();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ButtonStyleConfiguration.Label();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002D44(&qword_100143320);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v60 = sub_100002D44(&qword_100143328);
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v22 = &v60 - v21;
  v23 = sub_100002D44(&qword_100143330);
  v69 = *(v23 - 8);
  v70 = v23;
  __chkstk_darwin(v23);
  v75 = &v60 - v24;
  v66 = sub_100002D44(&qword_100143338);
  __chkstk_darwin(v66);
  v73 = &v60 - v25;
  ButtonStyleConfiguration.label.getter();
  static Font.Weight.bold.getter();
  sub_100025D40(&qword_100143340, &type metadata accessor for ButtonStyleConfiguration.Label);
  View.fontWeight(_:)();
  (*(v15 + 8))(v17, v14);
  v26 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v20[*(v18 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  static SymbolVariants.circle.getter();
  SymbolVariants.fill.getter();
  v29 = *(v61 + 8);
  v30 = v13;
  v31 = v64;
  v29(v30, v8);
  v32 = sub_100025BC0();
  View.symbolVariant(_:)();
  v33 = v10;
  v34 = v65;
  v29(v33, v8);
  sub_100025CD8(v20);
  v35 = v63;
  BorderlessButtonStyle.init()();
  v76 = v18;
  v77 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100025D40(&qword_100143350, &type metadata accessor for BorderlessButtonStyle);
  v36 = v35;
  v37 = v60;
  v38 = v67;
  View.buttonStyle<A>(_:)();
  (*(v68 + 8))(v36, v38);
  (*(v62 + 8))(v22, v37);
  v39 = [objc_opt_self() whiteColor];
  v68 = Color.init(uiColor:)();
  v40 = v71;
  sub_10004116C(v71);
  v41 = enum case for ColorScheme.light(_:);
  v42 = *(v31 + 104);
  v43 = v72;
  v42(v72, enum case for ColorScheme.light(_:), v34);
  v44 = v43;
  LOBYTE(v43) = static ColorScheme.== infix(_:_:)();
  v45 = *(v31 + 8);
  v46 = v44;
  v45(v44, v34);
  v47 = v40;
  v45(v40, v34);
  if (v43)
  {
    if (qword_100141AC0 != -1)
    {
      swift_once();
    }

    v48 = &qword_100143270;
  }

  else
  {
    if (qword_100141AC8 != -1)
    {
      swift_once();
    }

    v48 = &qword_100143278;
  }

  v49 = v73;
  v50 = *v48;

  (*(v69 + 32))(v49, v75, v70);
  v51 = (v49 + *(v66 + 36));
  *v51 = v68;
  v51[1] = v50;
  sub_10004116C(v47);
  v42(v46, v41, v34);
  v52 = static ColorScheme.== infix(_:_:)();
  v45(v46, v34);
  v45(v47, v34);
  if (v52)
  {
    if (qword_100141AC0 != -1)
    {
      swift_once();
    }

    v53 = &qword_100143270;
  }

  else
  {
    if (qword_100141AC8 != -1)
    {
      swift_once();
    }

    v53 = &qword_100143278;
  }

  v54 = *v53;

  v55 = swift_getKeyPath();
  v76 = v54;
  v56 = AnyShapeStyle.init<A>(_:)();
  v57 = v74;
  sub_100025D90(v49, v74);
  result = sub_100002D44(&qword_100143358);
  v59 = (v57 + *(result + 36));
  *v59 = v55;
  v59[1] = v56;
  return result;
}

unint64_t sub_100025BC0()
{
  result = qword_100143348;
  if (!qword_100143348)
  {
    sub_100004370(&qword_100143320);
    type metadata accessor for ButtonStyleConfiguration.Label();
    sub_100025D40(&qword_100143340, &type metadata accessor for ButtonStyleConfiguration.Label);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143348);
  }

  return result;
}

uint64_t sub_100025CD8(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100143320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100025D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100025D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100025E04()
{
  result = qword_100143360;
  if (!qword_100143360)
  {
    sub_100004370(&qword_100143358);
    sub_100025EBC();
    sub_100004610(&qword_100143380, &qword_100143388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143360);
  }

  return result;
}

unint64_t sub_100025EBC()
{
  result = qword_100143368;
  if (!qword_100143368)
  {
    sub_100004370(&qword_100143338);
    sub_100004370(&qword_100143328);
    type metadata accessor for BorderlessButtonStyle();
    sub_100004370(&qword_100143320);
    sub_100025BC0();
    swift_getOpaqueTypeConformance2();
    sub_100025D40(&qword_100143350, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143370, &qword_100143378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143368);
  }

  return result;
}

uint64_t sub_100026050(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002D44(&qword_1001421C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100026120(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AddToPlaylistView()
{
  result = qword_100143408;
  if (!qword_100143408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002621C()
{
  sub_100026300(319, &unk_100143418, type metadata accessor for AddToPlaylistViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_100026300(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100026300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100026380@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v139 = *(v1 + 8);
  sub_100002D44(&qword_100143448);
  State.wrappedValue.getter();
  swift_getKeyPath();
  v138 = v148;
  sub_10002DE40(&qword_100143450, type metadata accessor for AddToPlaylistViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  sub_10002CEB0(v148 + v4, &v148);

  v5 = v148;
  v137 = a1;
  if (v148)
  {
    if (v148 == 1)
    {
      v132 = &v122;
      v136 = sub_100002D44(&qword_100143550);
      v135 = *(v136 - 1);
      __chkstk_darwin(v136);
      v134 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      __chkstk_darwin(v7);
      v9 = &v122 - v8;
      v129 = LocalizedStringKey.init(stringLiteral:)();
      v131 = v10;
      LODWORD(v133) = v11;
      v13 = v12;
      v14 = type metadata accessor for AddToPlaylistView();
      v130 = &v122;
      v15 = *(v14 - 8);
      v16 = *(v15 + 64);
      __chkstk_darwin(v14 - 8);
      sub_10002D580(v2, &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for MainActor();
      v17 = static MainActor.shared.getter();
      v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *(v19 + 24) = &protocol witness table for MainActor;
      sub_10002D710(&v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
      v128 = type metadata accessor for TaskPriority();
      v20 = *(v128 - 1);
      v21 = *(v20 + 64);
      __chkstk_darwin(v128);
      v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      v23 = &v122 - v22;
      static TaskPriority.userInitiated.getter();
      if (sub_1000EEF04(2, 26, 4, 0))
      {
        v125 = type metadata accessor for _TaskModifier2();
        v126 = &v122;
        v124 = *(v125 - 8);
        __chkstk_darwin(v125);
        v127 = &v122;
        v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v138 = 0;
        v139 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v138 = 0xD000000000000035;
        v139 = 0x8000000100100500;
        *&v146[0] = 48;
        v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v13;
        String.append(_:)(v26);

        v123 = &v122;
        v28 = __chkstk_darwin(v27);
        v29 = &v122 - v22;
        v30 = &v122 - v22;
        v31 = v128;
        (*(v20 + 16))(v29, v30, v128, v28);
        _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
        (*(v20 + 8))(v23, v31);
        v32 = sub_100002D44(&qword_100141DF8);
        (*(v124 + 32))(&v9[*(v32 + 36)], v25, v125);
        v33 = v131;
        *v9 = v129;
        *(v9 + 1) = v33;
        v9[16] = v133 & 1;
        *(v9 + 3) = v122;
      }

      else
      {
        v87 = &v9[*(sub_100002D44(&qword_100141E00) + 36)];
        v88 = type metadata accessor for _TaskModifier();
        (*(v20 + 32))(&v87[*(v88 + 20)], &v122 - v22, v128);
        *v87 = &unk_1000F6CE0;
        *(v87 + 1) = v19;
        v89 = v131;
        *v9 = v129;
        *(v9 + 1) = v89;
        v9[16] = v133 & 1;
        *(v9 + 3) = v13;
      }

      v90 = v135;
      v91 = v134;
      v92 = v9;
      v93 = v136;
      (v135[4])(v134, v92, v136);
      v130 = sub_100002D44(&qword_100143468);
      v131 = &v122;
      __chkstk_darwin(v130);
      v133 = &v122 - v94;
      v95 = sub_100002D44(&qword_100143548);
      v127 = &v122;
      v96 = __chkstk_darwin(v95);
      (v90[2])(&v122 - v97, v91, v93, v96);
      swift_storeEnumTagMultiPayload();
      sub_100002D44(&qword_100143540);
      v98 = sub_10002D0E0();
      v138 = &type metadata for LoadingView;
      v139 = v98;
      swift_getOpaqueTypeConformance2();
      v99 = sub_100004370(&qword_100143480);
      v100 = sub_100004370(&qword_100143488);
      v126 = v100;
      v101 = sub_100004370(&qword_100143490);
      v102 = sub_100004370(&qword_100143498);
      v103 = sub_100004610(&qword_1001434A0, &qword_100143498);
      v138 = v102;
      v139 = v103;
      v129 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v138 = v101;
      v139 = OpaqueTypeConformance2;
      v128 = &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>;
      v105 = swift_getOpaqueTypeConformance2();
      v125 = sub_10002D134();
      v138 = v99;
      v139 = v100;
      v140 = v105;
      v141 = v125;
      swift_getOpaqueTypeConformance2();
      v106 = v133;
      _ConditionalContent<>.init(storage:)();
      v107 = sub_100002D44(&qword_100143460);
      v127 = &v122;
      __chkstk_darwin(v107);
      sub_100007FDC(v106, &v122 - v108, &qword_100143468);
      swift_storeEnumTagMultiPayload();
      v124 = sub_100002D44(&qword_100143458);
      v123 = sub_10002CF0C();
      v109 = sub_100004370(&qword_1001434D8);
      v110 = sub_100004370(&qword_1001434E0);
      v111 = sub_100004370(&qword_1001434E8);
      v112 = sub_100004370(&qword_1001434F0);
      v113 = sub_100004370(&qword_1001434F8);
      v114 = sub_100004370(&qword_100143500);
      v115 = sub_10002D410();
      v116 = sub_10002D4F4();
      v117 = type metadata accessor for InsetListStyle();
      v138 = v112;
      v139 = v117;
      v140 = v115;
      v141 = &protocol witness table for InsetListStyle;
      v118 = swift_getOpaqueTypeConformance2();
      v138 = v112;
      v139 = &type metadata for Solarium;
      v140 = v113;
      v141 = v114;
      v142 = v115;
      v143 = &protocol witness table for Solarium;
      v144 = v116;
      v145 = v118;
      v119 = swift_getOpaqueTypeConformance2();
      v138 = v111;
      v139 = v119;
      v120 = swift_getOpaqueTypeConformance2();
      v138 = v110;
      v139 = v120;
      v121 = swift_getOpaqueTypeConformance2();
      v138 = v109;
      v139 = v126;
      v140 = v121;
      v141 = v125;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v133, &qword_100143468);
      return (v135[1])(v134, v136);
    }

    else
    {
      v146[0] = v149;
      v146[1] = v150;
      v147 = v151;
      v68 = sub_100002D44(&qword_100143458);
      v136 = &v122;
      v69 = *(v68 - 8);
      __chkstk_darwin(v68);
      v71 = &v122 - v70;
      sub_1000282A8(v5, v146, &v122 - v70);

      v72 = sub_100002D44(&qword_100143460);
      v135 = &v122;
      v73 = __chkstk_darwin(v72);
      (*(v69 + 16))(&v122 - v74, v71, v68, v73);
      swift_storeEnumTagMultiPayload();
      v134 = sub_100002D44(&qword_100143468);
      v133 = sub_10002CF0C();
      v132 = sub_100004370(&qword_1001434D8);
      v131 = sub_100004370(&qword_100143488);
      v130 = sub_100004370(&qword_1001434E0);
      v75 = sub_100004370(&qword_1001434E8);
      v76 = sub_100004370(&qword_1001434F0);
      v77 = sub_100004370(&qword_1001434F8);
      v78 = sub_100004370(&qword_100143500);
      v79 = sub_10002D410();
      v80 = sub_10002D4F4();
      v81 = type metadata accessor for InsetListStyle();
      v138 = v76;
      v139 = v81;
      v140 = v79;
      v141 = &protocol witness table for InsetListStyle;
      v82 = swift_getOpaqueTypeConformance2();
      v138 = v76;
      v139 = &type metadata for Solarium;
      v140 = v77;
      v141 = v78;
      v142 = v79;
      v143 = &protocol witness table for Solarium;
      v144 = v80;
      v145 = v82;
      v83 = swift_getOpaqueTypeConformance2();
      v138 = v75;
      v139 = v83;
      v84 = swift_getOpaqueTypeConformance2();
      v138 = v130;
      v139 = v84;
      v85 = swift_getOpaqueTypeConformance2();
      v86 = sub_10002D134();
      v138 = v132;
      v139 = v131;
      v140 = v85;
      v141 = v86;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      (*(v69 + 8))(v71, v68);
      return sub_100007E14(v146, &qword_100143538);
    }
  }

  else
  {
    v34 = sub_100002D44(&qword_100143540);
    v135 = &v122;
    v132 = *(v34 - 8);
    v35 = v132;
    __chkstk_darwin(v34);
    v37 = &v122 - v36;
    v131 = &v122 - v36;
    sub_100027D9C(&v122 - v36);
    v133 = sub_100002D44(&qword_100143468);
    v134 = &v122;
    __chkstk_darwin(v133);
    v136 = (&v122 - v38);
    v39 = sub_100002D44(&qword_100143548);
    v127 = &v122;
    v40 = __chkstk_darwin(v39);
    Kind = v35[1].Kind;
    v130 = v34;
    Kind(&v122 - v42, v37, v34, v40);
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100143550);
    v43 = sub_10002D0E0();
    v138 = &type metadata for LoadingView;
    v139 = v43;
    swift_getOpaqueTypeConformance2();
    v44 = sub_100004370(&qword_100143480);
    v45 = sub_100004370(&qword_100143488);
    v126 = v45;
    v46 = sub_100004370(&qword_100143490);
    v47 = sub_100004370(&qword_100143498);
    v48 = sub_100004610(&qword_1001434A0, &qword_100143498);
    v138 = v47;
    v139 = v48;
    v129 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
    v49 = swift_getOpaqueTypeConformance2();
    v138 = v46;
    v139 = v49;
    v128 = &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>;
    v50 = swift_getOpaqueTypeConformance2();
    v125 = sub_10002D134();
    v138 = v44;
    v139 = v45;
    v140 = v50;
    v141 = v125;
    swift_getOpaqueTypeConformance2();
    v51 = v136;
    _ConditionalContent<>.init(storage:)();
    v52 = sub_100002D44(&qword_100143460);
    v127 = &v122;
    __chkstk_darwin(v52);
    sub_100007FDC(v51, &v122 - v53, &qword_100143468);
    swift_storeEnumTagMultiPayload();
    v124 = sub_100002D44(&qword_100143458);
    v123 = sub_10002CF0C();
    v54 = sub_100004370(&qword_1001434D8);
    v55 = sub_100004370(&qword_1001434E0);
    v56 = sub_100004370(&qword_1001434E8);
    v57 = sub_100004370(&qword_1001434F0);
    v58 = sub_100004370(&qword_1001434F8);
    v59 = sub_100004370(&qword_100143500);
    v60 = sub_10002D410();
    v61 = sub_10002D4F4();
    v62 = type metadata accessor for InsetListStyle();
    v138 = v57;
    v139 = v62;
    v140 = v60;
    v141 = &protocol witness table for InsetListStyle;
    v63 = swift_getOpaqueTypeConformance2();
    v138 = v57;
    v139 = &type metadata for Solarium;
    v140 = v58;
    v141 = v59;
    v142 = v60;
    v143 = &protocol witness table for Solarium;
    v144 = v61;
    v145 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v138 = v56;
    v139 = v64;
    v65 = swift_getOpaqueTypeConformance2();
    v138 = v55;
    v139 = v65;
    v66 = swift_getOpaqueTypeConformance2();
    v138 = v54;
    v139 = v126;
    v140 = v66;
    v141 = v125;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v136, &qword_100143468);
    return (v132->Description)(v131, v130);
  }
}

uint64_t sub_100027A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100027B34, v5, v4);
}

uint64_t sub_100027B34()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_100002D44(&qword_100143448);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100027BF8;

  return sub_1000647E4();
}

uint64_t sub_100027BF8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100027D3C, v3, v2);
}

uint64_t sub_100027D3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027D9C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100143498);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_100002D44(&qword_100143490);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v31 = sub_100002D44(&qword_100143480);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v25 - v10;
  v36 = v1;
  sub_100002D44(&qword_100143558);
  sub_10002D858();
  ContentUnavailableView.init(label:description:actions:)();
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v17 = sub_100004610(&qword_1001434A0, &qword_100143498);
  View.navigationTitle(_:)();
  sub_10000BFBC(v12, v14, v16 & 1);

  (*(v26 + 8))(v5, v3);
  v18 = v29;
  v19 = v30;
  v20 = v32;
  (*(v30 + 104))(v29, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v32);
  v37 = v3;
  v38 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v27;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v19 + 8))(v18, v20);
  (*(v28 + 8))(v9, v22);
  v35 = v25;
  sub_100002D44(&qword_100143488);
  v37 = v22;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10002D134();
  v23 = v31;
  View.toolbar<A>(content:)();
  return (*(v33 + 8))(v11, v23);
}

uint64_t sub_1000282A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v49 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_1001434F0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v41 = sub_100002D44(&qword_1001434E8);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v35 - v10;
  v43 = sub_100002D44(&qword_1001434E0);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v35 - v11;
  v45 = sub_100002D44(&qword_1001434D8);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v35 - v12;
  v53 = a2;
  v54 = v3;
  v40 = v3;
  v55 = a1;
  sub_10002A474(sub_10002DC34, v52, v9);
  Solarium.init()();
  v13 = sub_100002D44(&qword_1001434F8);
  v36 = sub_100002D44(&qword_100143500);
  v14 = sub_10002D410();
  v15 = sub_10002D4F4();
  v16 = type metadata accessor for InsetListStyle();
  v56 = v7;
  v57 = v16;
  v58 = v14;
  v59 = &protocol witness table for InsetListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v13;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_100007E14(v9, &qword_1001434F0);
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  LOBYTE(v13) = v22;
  v56 = v7;
  v57 = &type metadata for Solarium;
  v58 = v18;
  v59 = v36;
  v60 = v14;
  v61 = &protocol witness table for Solarium;
  v62 = v15;
  v63 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v38;
  v25 = v41;
  v26 = v37;
  View.navigationTitle(_:)();
  sub_10000BFBC(v19, v21, v13 & 1);

  (*(v42 + 8))(v26, v25);
  v27 = v48;
  v28 = v47;
  v29 = v49;
  (*(v48 + 104))(v47, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v49);
  v56 = v25;
  v57 = v23;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  v32 = v43;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v27 + 8))(v28, v29);
  (*(v44 + 8))(v24, v32);
  v51 = v40;
  sub_100002D44(&qword_100143488);
  v56 = v32;
  v57 = v30;
  swift_getOpaqueTypeConformance2();
  sub_10002D134();
  v33 = v45;
  View.toolbar<A>(content:)();
  return (*(v46 + 8))(v31, v33);
}

uint64_t sub_100028950@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000BFBC(v2, v4, v6 & 1);

  v12 = Text.bold()();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000BFBC(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100028A80@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static HierarchicalShapeStyle.secondary.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  sub_10000BFBC(v2, v4, v6 & 1);

  static Font.subheadline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10000BFBC(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100028BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddToPlaylistView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002D580(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10002D710(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_100002D44(&qword_1001435A0);
  sub_10002DA6C();
  Button.init(action:label:)();
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  result = sub_100002D44(&qword_100143558);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_100028D30(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenURLAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AddToPlaylistView();
  sub_100041144(v9);
  v10 = a1[1];
  v12[2] = *a1;
  v12[3] = v10;
  sub_100002D44(&qword_100143448);
  State.wrappedValue.getter();
  (*(v3 + 16))(v5, v12[1] + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_appleMusicBaseURL, v2);

  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

double sub_100028F14@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.horizontal.getter();
  v10 = v6 & 1;
  LOBYTE(v35) = v6 & 1;
  v11 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = (a1 + *(sub_100002D44(&qword_1001435A0) + 36));
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #3.0 }

  *v20 = _Q0;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v29 = &v20[*(sub_100002D44(&qword_100143130) + 36)];
  *v29 = v35;
  *(v29 + 1) = v36;
  *(v29 + 4) = v37;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = &v20[*(sub_100002D44(&qword_1001435D8) + 36)];
  *v33 = v30;
  v33[1] = v32;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = v15;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_100029124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v48 = a1;
  v56 = a4;
  v5 = sub_100002D44(&qword_100143610);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v52 = &v44 - v6;
  v49 = sub_100002D44(&qword_100143618);
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v12 = sub_100002D44(&qword_100143620);
  __chkstk_darwin(v12);
  v47 = sub_100002D44(&qword_100143628);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v44 - v13;
  v15 = sub_100002D44(&qword_100143630);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = sub_100002D44(&qword_100143638);
  __chkstk_darwin(v19 - 8);
  v50 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = sub_100007FDC(v48, &v58, &qword_100143538);
  v57 = v23;
  if (*(&v59 + 1))
  {
    v44 = &v44;
    v62[0] = v58;
    v62[1] = v59;
    v63 = v60;
    __chkstk_darwin(v24);
    *(&v44 - 2) = v62;
    *(&v44 - 1) = a2;
    sub_100029AC0();
    sub_100002D44(&qword_100143658);
    v45 = v15;
    v25 = sub_100004370(&qword_1001435C8);
    v48 = a2;
    v26 = v25;
    v27 = sub_10002DBB0();
    *&v58 = &type metadata for Text;
    *(&v58 + 1) = &type metadata for Solarium;
    *&v59 = v26;
    *(&v59 + 1) = &protocol witness table for Text;
    v60 = &protocol witness table for Solarium;
    v61 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10002DF14();
    v23 = v57;
    Section<>.init(header:content:)();
    static VerticalEdge.Set.all.getter();
    sub_10002E02C(&qword_100143678, &qword_100143628, &unk_1000F6DB8, sub_10002DF14);
    a2 = v48;
    v28 = v47;
    View.listSectionSeparator(_:edges:)();
    (*(v46 + 8))(v14, v28);
    v29 = v45;
    (*(v16 + 32))(v23, v18, v45);
    (*(v16 + 56))(v23, 0, 1, v29);
    v30 = sub_10002E120(v62);
  }

  else
  {
    sub_100007E14(&v58, &qword_100143538);
    v30 = (*(v16 + 56))(v23, 1, 1, v15);
  }

  __chkstk_darwin(v30);
  *(&v44 - 2) = v51;
  *(&v44 - 1) = a2;
  sub_10002A21C();
  sub_100002D44(&qword_100143640);
  v31 = sub_100004370(&qword_1001435C8);
  v32 = sub_10002DBB0();
  *&v58 = &type metadata for Text;
  *(&v58 + 1) = &type metadata for Solarium;
  *&v59 = v31;
  *(&v59 + 1) = &protocol witness table for Text;
  v60 = &protocol witness table for Solarium;
  v61 = v32;
  swift_getOpaqueTypeConformance2();
  sub_10002DE90();
  v33 = v52;
  Section<>.init(header:content:)();
  static VerticalEdge.Set.all.getter();
  sub_10002E02C(&qword_100143668, &qword_100143610, &unk_1000F6DA0, sub_10002DE90);
  v34 = v53;
  v35 = v55;
  View.listSectionSeparator(_:edges:)();
  (*(v54 + 8))(v33, v35);
  v36 = v50;
  sub_100007FDC(v23, v50, &qword_100143638);
  v37 = *(v7 + 16);
  v38 = v9;
  v39 = v49;
  v37(v9, v34, v49);
  v40 = v56;
  sub_100007FDC(v36, v56, &qword_100143638);
  v41 = sub_100002D44(&qword_100143670);
  v37((v40 + *(v41 + 48)), v38, v39);
  v42 = *(v7 + 8);
  v42(v34, v39);
  sub_100007E14(v57, &qword_100143638);
  v42(v38, v39);
  return sub_100007E14(v36, &qword_100143638);
}

uint64_t sub_100029944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002E174(a1, v15);
  sub_10002D580(a2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002E174(a1, v13);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10002D710(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v10;
  *(v9 + 32) = v14;
  v15[40] = 0;
  v16 = sub_10002E1D4;
  v17 = v8;
  sub_10002DFD0();
  View.accessibilityIdentifier(_:)();
  return sub_10002E1F4(v15);
}

uint64_t sub_100029AC0()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.Weight.semibold.getter();
  v5 = Text.fontWeight(_:)();
  v7 = v6;
  v9 = v8;
  sub_10000BFBC(v0, v2, v4 & 1);

  static Color.primary.getter();
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v5, v7, v9 & 1);

  Solarium.init()();
  sub_100002D44(&qword_1001435C8);
  sub_10002DBB0();
  View.staticIf<A, B>(_:then:)();
  sub_10000BFBC(v10, v12, v14 & 1);
}

uint64_t sub_100029C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v11[1] = sub_10002E358(a1);
  swift_getKeyPath();
  sub_10002D580(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_10002D710(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10002E68C;
  *(v9 + 24) = v8;

  sub_100002D44(&qword_100143680);
  sub_100002D44(&qword_100143658);
  sub_100004610(&qword_100143688, &qword_100143680);
  sub_10002DF14();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100029E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AddToPlaylistView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10002E174(a2, v19);
  LOBYTE(a3) = *(a3 + 16) - 1 != a1;
  sub_10002D580(a4, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002E174(a2, v17);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_10002D710(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v14;
  *(v13 + 32) = v18;
  v19[40] = a3;
  v20 = sub_10002E8B8;
  v21 = v12;
  sub_10002DFD0();
  View.accessibilityIdentifier(_:)();
  return sub_10002E1F4(v19);
}

uint64_t sub_10002A010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddToPlaylistView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = a2[3];
  v14 = a2[4];
  sub_10000DC80(a2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v17 = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_10002D580(a1, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_10002D710(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v15;
  v22[1] = v17;
  sub_1000C8AF8(0, 0, v12, a4, v21);
}

uint64_t sub_10002A21C()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.Weight.semibold.getter();
  v5 = Text.fontWeight(_:)();
  v7 = v6;
  v9 = v8;
  sub_10000BFBC(v0, v2, v4 & 1);

  static Color.primary.getter();
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v5, v7, v9 & 1);

  Solarium.init()();
  sub_100002D44(&qword_1001435C8);
  sub_10002DBB0();
  View.staticIf<A, B>(_:then:)();
  sub_10000BFBC(v10, v12, v14 & 1);
}

uint64_t sub_10002A3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = static Edge.Set.top.getter();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  sub_100003B04(v3, v4, v5);
}

uint64_t sub_10002A474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v19 = sub_100002D44(&qword_100143528);
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  v8 = sub_100002D44(&qword_1001435E0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100002D44(&qword_100143518);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v15 = static Solarium.isEnabled.getter();
  v20 = a1;
  v21 = a2;
  if (v15)
  {
    static Axis.Set.vertical.getter();
    sub_100002D44(&qword_1001435F8);
    sub_100004610(&qword_100143600, &qword_1001435F8);
    ScrollView.init(_:showsIndicators:content:)();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_100004610(&qword_100143510, &qword_100143518);
    sub_100004610(&qword_100143520, &qword_100143528);
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_100002D44(&qword_1001435E8);
    sub_100004610(&qword_1001435F0, &qword_1001435E8);
    List<>.init(content:)();
    v17 = v19;
    (*(v5 + 16))(v10, v7, v19);
    swift_storeEnumTagMultiPayload();
    sub_100004610(&qword_100143510, &qword_100143518);
    sub_100004610(&qword_100143520, &qword_100143528);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_10002A8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100007FDC(a1, a2, &qword_1001434F0);
  result = sub_100002D44(&qword_1001434F8);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_10002A958()
{
  v0 = type metadata accessor for InsetListStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  InsetListStyle.init()();
  sub_100002D44(&qword_1001434F0);
  sub_10002D410();
  View.listStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002AA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for AddToPlaylistView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100002D44(&qword_1001434B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100002D44(&qword_100143578);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  sub_10002D580(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10002D710(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_100002D44(&qword_100143580);
  sub_10002D990();
  Button.init(action:label:)();
  Solarium.init()();
  v16 = sub_100002D44(&qword_1001434B8);
  v17 = sub_100004610(&qword_1001434C0, &qword_1001434B0);
  v18 = sub_100004370(&qword_1001434C8);
  v19 = type metadata accessor for PlainButtonStyle();
  v20 = sub_10002D32C();
  v21 = sub_10002DE40(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  (*(v7 + 8))(v9, v6);
  v29 = v6;
  v30 = &type metadata for Solarium;
  v31 = v16;
  v32 = v17;
  v33 = &protocol witness table for Solarium;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  View.accessibilityIdentifier(_:)();
  return (*(v27 + 8))(v13, v22);
}

uint64_t sub_10002AE60()
{
  v0 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v0);
  static HorizontalAlignment.leading.getter();
  sub_10002DE40(&qword_100143608, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100002D44(&qword_1001435E8);
  sub_100004610(&qword_1001435F0, &qword_1001435E8);
  return LazyVStack.init(alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_10002AFC8()
{
  sub_100002D44(&qword_100143448);
  State.wrappedValue.getter();
  v0 = *(v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler);

  v0(v1);
}

uint64_t sub_10002B054()
{
  v0 = sub_100002D44(&qword_100143590);
  __chkstk_darwin(v0);
  v2 = &v11 - v1;
  v3 = sub_100002D44(&qword_100143598);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  if (static Solarium.isEnabled.getter())
  {
    v12 = Image.init(systemName:)();
    static Font.Weight.regular.getter();
    View.fontWeight(_:)();

    (*(v4 + 16))(v2, v6, v3);
    swift_storeEnumTagMultiPayload();
    v12 = &type metadata for Image;
    v13 = &protocol witness table for Image;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    *v2 = Text.init(_:tableName:bundle:comment:)();
    *(v2 + 1) = v8;
    v2[16] = v9 & 1;
    *(v2 + 3) = v10;
    swift_storeEnumTagMultiPayload();
    v12 = &type metadata for Image;
    v13 = &protocol witness table for Image;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10002B320(uint64_t a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_1001434C8);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v11 = sub_100002D44(&qword_1001434B0);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  PlainButtonStyle.init()();
  sub_10002D32C();
  sub_10002DE40(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return sub_100007E14(v8, &qword_1001434C8);
}

uint64_t sub_10002B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_10002B5D0, v8, v7);
}

uint64_t sub_10002B5D0()
{
  v1 = v0[8];
  v2 = *v1;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  sub_100002D44(&qword_100143448);
  State.wrappedValue.getter();
  v4 = *(v0[6] + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler);

  v4(v5);

  v0[4] = v2;
  v0[5] = v3;
  State.wrappedValue.getter();
  v0[14] = v0[7];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_10002B704;
  v8 = v0[9];
  v7 = v0[10];

  return sub_10006545C(v8, v7);
}

uint64_t sub_10002B704()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10002B848, v3, v2);
}

uint64_t sub_10002B848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B8AC()
{
  result = static Solarium.isEnabled.getter();
  v1 = 5.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_100143390 = *&v1;
  return result;
}

uint64_t sub_10002B8DC()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = Color.init(uiColor:)();
  qword_100143398 = result;
  return result;
}

uint64_t sub_10002B91C()
{
  result = static Solarium.isEnabled.getter();
  v1 = 0.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_1001433A0 = *&v1;
  return result;
}

uint64_t sub_10002B94C(uint64_t a1)
{
  v2 = sub_100002D44(&qword_1001436B0);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  if (static Solarium.isEnabled.getter())
  {
    if (qword_100141AE8 != -1)
    {
      swift_once();
    }

    v5 = qword_1001433A8;
  }

  else
  {
    v5 = static HorizontalAlignment.leading.getter();
  }

  if (qword_100141AE0 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v6 = qword_1001433A0;
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
  v7 = sub_100002D44(&qword_1001436D0);
  sub_10002BB4C(a1, &v4[*(v7 + 44)]);
  Solarium.init()();
  sub_100002D44(&qword_1001436B8);
  sub_100004610(&qword_1001436C0, &qword_1001436B0);
  sub_10002F01C();
  View.staticIf<A, B>(_:then:)();
  return sub_100007E14(v4, &qword_1001436B0);
}

uint64_t sub_10002BB4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v35 = sub_100002D44(&qword_1001436E0);
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - v3;
  v4 = sub_100002D44(&qword_1001436E8);
  __chkstk_darwin(v4 - 8);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_100002D44(&qword_1001436F0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v36 = sub_100002D44(&qword_1001436F8);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v16 = 1;
  v11[16] = 1;
  v17 = sub_100002D44(&qword_100143700);
  sub_10002C010(a1, &v11[*(v17 + 44)]);
  Solarium.init()();
  sub_100002D44(&qword_100143708);
  sub_100004610(&qword_100143710, &qword_1001436F0);
  sub_10002F128();
  v33 = v15;
  v18 = v35;
  View.staticIf<A, B>(_:then:)();
  sub_100007E14(v11, &qword_1001436F0);
  if ((static Solarium.isEnabled.getter() & 1) != 0 && *(a1 + 40) == 1)
  {
    v19 = v32;
    Divider.init()();
    if (qword_100141AE8 != -1)
    {
      swift_once();
    }

    v20 = (v19 + *(v18 + 36));
    *v20 = qword_1001433A8;
    v20[1] = sub_10002F4A4;
    v20[2] = 0;
    sub_10002F1E0(v19, v8);
    v16 = 0;
  }

  (*(v38 + 56))(v8, v16, 1, v18);
  v22 = v33;
  v21 = v34;
  v23 = *(v34 + 16);
  v24 = v36;
  v25 = v37;
  v23(v37, v33, v36);
  v26 = v39;
  sub_100007FDC(v8, v39, &qword_1001436E8);
  v27 = v40;
  v23(v40, v25, v24);
  v28 = sub_100002D44(&qword_100143720);
  sub_100007FDC(v26, &v27[*(v28 + 48)], &qword_1001436E8);
  sub_100007E14(v8, &qword_1001436E8);
  v29 = *(v21 + 8);
  v29(v22, v24);
  sub_100007E14(v26, &qword_1001436E8);
  return (v29)(v25, v24);
}

uint64_t sub_10002C010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100002D44(&qword_100143728);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100002D44(&qword_100143730);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = sub_100002D44(&qword_100143738);
  sub_10002C3E4(a1, &v5[*(v16 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F250(v5, v12, &qword_100143728);
  v17 = &v12[*(v7 + 44)];
  v18 = v39;
  *(v17 + 4) = v38;
  *(v17 + 5) = v18;
  *(v17 + 6) = v40;
  v19 = v35;
  *v17 = v34;
  *(v17 + 1) = v19;
  v20 = v37;
  *(v17 + 2) = v36;
  *(v17 + 3) = v20;
  sub_10002F250(v12, v15, &qword_100143730);
  v21 = a1[3];
  v22 = a1[4];
  sub_10000DC80(a1, v21);
  v23 = (*(v22 + 24))(v21, v22);
  v24 = 0;
  KeyPath = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v23)
  {
    v24 = Image.init(systemName:)();
    if (qword_100141AD8 != -1)
    {
      swift_once();
    }

    v26 = qword_100143398;
    KeyPath = swift_getKeyPath();

    v28 = static Font.caption2.getter();
    v27 = swift_getKeyPath();
  }

  sub_100007FDC(v15, v9, &qword_100143730);
  v29 = v33;
  sub_100007FDC(v9, v33, &qword_100143730);
  v30 = (v29 + *(sub_100002D44(&qword_100143740) + 48));
  sub_10002F2B8(v24);
  sub_10002F328(v24);
  *v30 = v24;
  v30[1] = KeyPath;
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  sub_100007E14(v15, &qword_100143730);
  sub_10002F328(v24);
  return sub_100007E14(v9, &qword_100143730);
}

uint64_t sub_10002C3E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_100002D44(&qword_100143748);
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v46 - v6;
  v7 = sub_100002D44(&qword_100143750);
  __chkstk_darwin(v7);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_10000DC80(a1, v12);
  v47 = (*(v13 + 32))(v12, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = v61;
  v14 = v62;
  v15 = v63;
  v16 = v64;
  v18 = v65;
  v17 = v66;
  if (qword_100141AD0 != -1)
  {
    swift_once();
  }

  v19 = qword_100143390;
  v20 = &v11[*(v7 + 36)];
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  *(v20 + *(sub_100002D44(&qword_100143758) + 36)) = 256;
  v24 = v46;
  *v11 = v47;
  *(v11 + 1) = v24;
  v11[16] = v14;
  *(v11 + 3) = v15;
  v11[32] = v16;
  *(v11 + 5) = v18;
  *(v11 + 6) = v17;
  v25 = a1[3];
  v26 = a1[4];
  sub_10000DC80(a1, v25);
  v54 = (*(v26 + 16))(v25, v26);
  v55 = v27;
  sub_10000B730();
  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v47 = v33;
  KeyPath = swift_getKeyPath();
  v54 = v28;
  v55 = v30;
  v56 = v32 & 1;
  v57 = v34;
  v58 = KeyPath;
  v59 = 2;
  v60 = 0;
  Solarium.init()();
  sub_100002D44(&qword_100142990);
  sub_100002D44(&qword_100143760);
  sub_1000149E0();
  sub_10002F3A4();
  v36 = v49;
  View.staticIf<A, B>(_:then:)();
  sub_10000BFBC(v28, v30, v32 & 1);

  v37 = v48;
  sub_100007FDC(v11, v48, &qword_100143750);
  v39 = v52;
  v38 = v53;
  v40 = *(v52 + 16);
  v41 = v50;
  v40(v50, v36, v53);
  v42 = v51;
  sub_100007FDC(v37, v51, &qword_100143750);
  v43 = sub_100002D44(&qword_100143770);
  v40((v42 + *(v43 + 48)), v41, v38);
  v44 = *(v39 + 8);
  v44(v36, v38);
  sub_100007E14(v11, &qword_100143750);
  v44(v41, v38);
  return sub_100007E14(v37, &qword_100143750);
}

uint64_t sub_10002C8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (qword_100141AE8 != -1)
  {
    v12 = v3;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v15 = a2;
    swift_once();
    a2 = v15;
    v5 = v14;
    v4 = v13;
    v3 = v12;
  }

  v10 = qword_1001433A8;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = sub_10002F4A4;
  *(a2 + 72) = 0;
  sub_100003B04(v3, v4, v5);
}

uint64_t sub_10002CA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100007FDC(a1, a2, &qword_1001436F0);
  result = sub_100002D44(&qword_100143708);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double sub_10002CABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100007FDC(a1, a2, &qword_1001436B0);
  v4 = (a2 + *(sub_100002D44(&qword_1001436B8) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_10002CB54()
{
  sub_10002EF74(v0, v5);
  v1 = swift_allocObject();
  v2 = v5[1];
  v1[1] = v5[0];
  v1[2] = v2;
  v3 = v5[3];
  v1[3] = v5[2];
  v1[4] = v3;
  sub_100002D44(&qword_1001436A8);
  sub_100004370(&qword_1001436B0);
  sub_100004370(&qword_1001436B8);
  sub_100004610(&qword_1001436C0, &qword_1001436B0);
  sub_10002F01C();
  swift_getOpaqueTypeConformance2();
  return Button.init(action:label:)();
}

uint64_t sub_10002CCD0()
{
  sub_10002F0D4();
  result = HorizontalAlignment.init(_:)();
  qword_1001433A8 = result;
  return result;
}

uint64_t sub_10002CD00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002DE40(&qword_100143450, type metadata accessor for AddToPlaylistViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  return sub_10002CEB0(v3 + v4, a2);
}

uint64_t sub_10002CDCC(uint64_t a1)
{
  sub_10002CEB0(a1, v2);
  swift_getKeyPath();
  sub_10002DE40(&qword_100143450, type metadata accessor for AddToPlaylistViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10002EC08(v2);
}

unint64_t sub_10002CF0C()
{
  result = qword_100143470;
  if (!qword_100143470)
  {
    sub_100004370(&qword_100143468);
    sub_10002D0E0();
    swift_getOpaqueTypeConformance2();
    sub_100004370(&qword_100143480);
    sub_100004370(&qword_100143488);
    sub_100004370(&qword_100143490);
    sub_100004370(&qword_100143498);
    sub_100004610(&qword_1001434A0, &qword_100143498);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002D134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143470);
  }

  return result;
}

unint64_t sub_10002D0E0()
{
  result = qword_100143478;
  if (!qword_100143478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143478);
  }

  return result;
}

unint64_t sub_10002D134()
{
  result = qword_1001434A8;
  if (!qword_1001434A8)
  {
    sub_100004370(&qword_100143488);
    sub_100004370(&qword_1001434B0);
    sub_100004370(&qword_1001434B8);
    sub_100004610(&qword_1001434C0, &qword_1001434B0);
    sub_100004370(&qword_1001434C8);
    type metadata accessor for PlainButtonStyle();
    sub_10002D32C();
    sub_10002DE40(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002DE40(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001434A8);
  }

  return result;
}

unint64_t sub_10002D32C()
{
  result = qword_1001434D0;
  if (!qword_1001434D0)
  {
    sub_100004370(&qword_1001434C8);
    sub_100004610(&qword_1001434C0, &qword_1001434B0);
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001434D0);
  }

  return result;
}

unint64_t sub_10002D410()
{
  result = qword_100143508;
  if (!qword_100143508)
  {
    sub_100004370(&qword_1001434F0);
    sub_100004610(&qword_100143510, &qword_100143518);
    sub_100004610(&qword_100143520, &qword_100143528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143508);
  }

  return result;
}

unint64_t sub_10002D4F4()
{
  result = qword_100143530;
  if (!qword_100143530)
  {
    sub_100004370(&qword_1001434F8);
    sub_10002D410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143530);
  }

  return result;
}

uint64_t sub_10002D580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D5E4()
{
  v1 = (type metadata accessor for AddToPlaylistView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D774()
{
  v2 = *(type metadata accessor for AddToPlaylistView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012EC8;

  return sub_100027A9C(v4, v5, v0 + v3);
}

unint64_t sub_10002D858()
{
  result = qword_100143560;
  if (!qword_100143560)
  {
    sub_100004370(&qword_100143558);
    sub_100004610(&qword_100143568, &qword_100143570);
    sub_100004610(&qword_100141F80, &qword_100141F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143560);
  }

  return result;
}

unint64_t sub_10002D990()
{
  result = qword_100143588;
  if (!qword_100143588)
  {
    sub_100004370(&qword_100143580);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143588);
  }

  return result;
}

unint64_t sub_10002DA6C()
{
  result = qword_1001435A8;
  if (!qword_1001435A8)
  {
    sub_100004370(&qword_1001435A0);
    sub_10002DB24();
    sub_100004610(&qword_1001435D0, &qword_1001435D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001435A8);
  }

  return result;
}

unint64_t sub_10002DB24()
{
  result = qword_1001435B0;
  if (!qword_1001435B0)
  {
    sub_100004370(&qword_1001435B8);
    sub_10002DBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001435B0);
  }

  return result;
}

unint64_t sub_10002DBB0()
{
  result = qword_1001435C0;
  if (!qword_1001435C0)
  {
    sub_100004370(&qword_1001435C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001435C0);
  }

  return result;
}

uint64_t sub_10002DC78()
{
  v1 = (type metadata accessor for AddToPlaylistView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002DD9C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddToPlaylistView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10002DE40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002DE90()
{
  result = qword_100143648;
  if (!qword_100143648)
  {
    sub_100004370(&qword_100143640);
    sub_10002DF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143648);
  }

  return result;
}

unint64_t sub_10002DF14()
{
  result = qword_100143650;
  if (!qword_100143650)
  {
    sub_100004370(&qword_100143658);
    sub_10002DFD0();
    sub_10002DE40(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143650);
  }

  return result;
}

unint64_t sub_10002DFD0()
{
  result = qword_100143660;
  if (!qword_100143660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143660);
  }

  return result;
}

uint64_t sub_10002E02C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    sub_100004370(&qword_1001435C8);
    sub_10002DBB0();
    swift_getOpaqueTypeConformance2();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002E228(uint64_t a1)
{
  v4 = *(type metadata accessor for AddToPlaylistView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100012EC8;

  return sub_10002B534(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10002E358(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      result = sub_10002E174(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_100002D44(&qword_100143690);
        v10 = swift_allocObject();
        v11 = (j__malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10002E508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000DC80(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10002E560()
{
  v1 = (type metadata accessor for AddToPlaylistView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002E68C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AddToPlaylistView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100029E78(a1, a2, v6, v7);
}

uint64_t sub_10002E718()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E780()
{
  v1 = (type metadata accessor for AddToPlaylistView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007E74(v0 + v7);

  return _swift_deallocObject(v0, v7 + 40, v2 | 7);
}

uint64_t sub_10002E8D8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AddToPlaylistView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_10002A010(v2 + v6, (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_10002E978()
{
  v1 = (type metadata accessor for AddToPlaylistView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10002EABC(uint64_t a1)
{
  v4 = *(type metadata accessor for AddToPlaylistView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000789C;

  return sub_10002B534(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10002EC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002ECA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10002ED08()
{
  result = qword_100143698;
  if (!qword_100143698)
  {
    sub_100004370(&qword_1001436A0);
    sub_10002CF0C();
    sub_100004370(&qword_1001434D8);
    sub_100004370(&qword_100143488);
    sub_100004370(&qword_1001434E0);
    sub_100004370(&qword_1001434E8);
    sub_100004370(&qword_1001434F0);
    sub_100004370(&qword_1001434F8);
    sub_100004370(&qword_100143500);
    sub_10002D410();
    sub_10002D4F4();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002D134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143698);
  }

  return result;
}

uint64_t sub_10002EFAC()
{
  sub_100007E74(v0 + 16);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10002F01C()
{
  result = qword_1001436C8;
  if (!qword_1001436C8)
  {
    sub_100004370(&qword_1001436B8);
    sub_100004610(&qword_1001436C0, &qword_1001436B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001436C8);
  }

  return result;
}

unint64_t sub_10002F0D4()
{
  result = qword_1001436D8;
  if (!qword_1001436D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001436D8);
  }

  return result;
}

unint64_t sub_10002F128()
{
  result = qword_100143718;
  if (!qword_100143718)
  {
    sub_100004370(&qword_100143708);
    sub_100004610(&qword_100143710, &qword_1001436F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143718);
  }

  return result;
}

uint64_t sub_10002F1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001436E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F250(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100002D44(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002F2B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002F328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10002F3A4()
{
  result = qword_100143768;
  if (!qword_100143768)
  {
    sub_100004370(&qword_100143760);
    sub_1000149E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143768);
  }

  return result;
}

uint64_t sub_10002F4B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v27 = a6;
  v28 = a9;
  v24 = a2;
  v25 = a1;
  v14 = *(a8 - 8);
  v26 = a10;
  __chkstk_darwin(a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LibraryItemContextMenu();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23 - v19;
  type metadata accessor for LibraryItemContextMenuModel();
  (*(v14 + 16))(v16, v24, a8);
  sub_1000E6490(v25, v16);
  sub_10002F7D4(a3);
  v21 = v27;
  sub_10002F7D4(a5);
  sub_10002F6C8(a3, a4, a5, v21, v20);
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_10002F6C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v10 = type metadata accessor for LibraryItemContextMenu();
  v11 = (a5 + v10[9]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + v10[10]);
  *v12 = a3;
  v12[1] = a4;
  v13 = a5 + v10[11];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_10002F7D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10002F7F4()
{
  type metadata accessor for LibraryItemContextMenuModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_100008ADC();
    if (v1 <= 0x3F)
    {
      sub_10002FA68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LibraryItemContextMenuModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10002F9A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LibraryItemContextMenuModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

void sub_10002FA68()
{
  if (!qword_100143808)
  {
    type metadata accessor for ViewConfiguration();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100143808);
    }
  }
}

uint64_t sub_10002FB04()
{
  type metadata accessor for LibraryItemContextMenuModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10002FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v27 = sub_100004370(&qword_100143810);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_100030A64();
  v40 = v5;
  v41 = &type metadata for ContextMenuContent;
  v42 = &type metadata for LibraryItemPreview;
  v43 = v27;
  v44 = WitnessTable;
  v45 = v26;
  v7 = WitnessTable;
  v46 = sub_100030AB8();
  v47 = sub_100030B0C();
  v24 = v46;
  v25 = v47;
  v28 = &opaque type descriptor for <<opaque return type of View.contextMenu<A, B, C>(menuItems:preview:previewDestination:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = *(a2 + 24);
  v37 = *(a2 + 16);
  v38 = v15;
  v39 = v3;
  v34 = v37;
  v35 = v15;
  v36 = v3;
  v31 = v37;
  v32 = v15;
  v33 = v3;
  v16 = swift_checkMetadataState();
  v17 = v26;
  v18 = v7;
  v19 = v27;
  View.contextMenu<A, B, C>(menuItems:preview:previewDestination:)();
  v40 = v16;
  v41 = &type metadata for ContextMenuContent;
  v42 = &type metadata for LibraryItemPreview;
  v43 = v19;
  v44 = v18;
  v45 = v17;
  v46 = v24;
  v47 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000B03E4(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v9 + 8);
  v21(v11, OpaqueTypeMetadata2);
  sub_1000B03E4(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_10002FE84@<X0>(void *a1@<X8>)
{
  type metadata accessor for LibraryItemContextMenu();
  v2 = sub_10002FB04();
  v3 = sub_1000E64E0(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_10002FED4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LibraryItemContextMenu();
  v5 = *(sub_10002FB04() + 16);

  v6 = (a1 + *(v4 + 36));
  v7 = *v6;
  v8 = v6[1];
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;

  return sub_10002F7D4(v7);
}

uint64_t sub_10002FF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v8 = type metadata accessor for LibraryItemContextMenu();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v9 + 32))(v14 + v13, v12, v8);
  *a4 = sub_100030CD8;
  a4[1] = v14;
  return result;
}

uint64_t sub_100030094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v3 - 8);
  v74 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v75 = &v65[-v6];
  __chkstk_darwin(v7);
  v73 = &v65[-v8];
  __chkstk_darwin(v9);
  v70 = &v65[-v10];
  __chkstk_darwin(v11);
  v72 = &v65[-v12];
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for LibraryItemContextMenu();
  v69 = *(sub_10002FB04() + 16);

  v71 = v17;
  v18 = *(v17 + 44);
  v76 = a1;
  v19 = (a1 + v18);
  v20 = *v19;
  v21 = *(v19 + 8);

  v22 = v20;
  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v22 = v79[0];
  }

  swift_getKeyPath();
  v79[0] = v22;
  sub_100030D6C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v22 + 40);
  v67 = *(v22 + 32);
  v68 = v24;

  v25 = v20;
  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v25 = v79[0];
  }

  swift_getKeyPath();
  v79[0] = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *(v25 + 48);

  v27 = v20;
  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v27 = v79[0];
  }

  swift_getKeyPath();
  v79[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 16);

  if (v21)
  {
    v80 = v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v20 = v80;
  }

  v31 = 0x2000Bu >> (8 * v29);
  swift_getKeyPath();
  v79[0] = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v20 + 49);

  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v33 = qword_10014FF90;
  v34 = type metadata accessor for MusicSubscriptionStatusController();
  v79[3] = v34;
  v79[4] = &off_100139B30;
  v79[0] = v33;
  type metadata accessor for TrackPageViewModel();
  v35 = swift_allocObject();
  v36 = sub_100007D60(v79, v34);
  v37 = __chkstk_darwin(v36);
  v39 = &v65[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v40 + 16))(v39, v37);
  v41 = *v39;
  v78[3] = v34;
  v78[4] = &off_100139B30;
  v78[0] = v41;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0u;
  *(v35 + 96) = 0u;
  *(v35 + 112) = 0u;
  *(v35 + 128) = 0;
  *(v35 + 136) = 2;
  *(v35 + 144) = 0x3FE6666666666666;
  *(v35 + 200) = 0;
  *(v35 + 152) = 0u;
  *(v35 + 168) = 0u;
  *(v35 + 177) = 0u;
  *(v35 + 248) = 0;
  *(v35 + 232) = 0u;
  *(v35 + 216) = 0u;
  *(v35 + 392) = 0u;
  *(v35 + 408) = 0u;
  *(v35 + 360) = 0u;
  *(v35 + 376) = 0u;
  *(v35 + 328) = 0u;
  *(v35 + 344) = 0u;
  *(v35 + 296) = 0u;
  *(v35 + 312) = 0u;
  *(v35 + 264) = 0u;
  *(v35 + 280) = 0u;
  v42 = 1;
  *(v35 + 424) = 0;
  *(v35 + 432) = 1;
  *(v35 + 440) = 0u;
  *(v35 + 456) = 0u;
  *(v35 + 472) = 0u;
  v43 = objc_opt_self();

  *(v35 + 488) = [v43 sharedInstance];
  *(v35 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v35 + 504) = v44;
  *(v35 + 512) = v45 & 1;
  *(v35 + 520) = v46;
  *(v35 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v35 + 536) = v47;
  *(v35 + 544) = v48 & 1;
  *(v35 + 552) = v49;
  ObservationRegistrar.init()();
  v50 = v69;
  *(v35 + 560) = v69;
  *(v35 + 568) = v67;
  *(v35 + 576) = v68;
  *(v35 + 584) = v66;
  sub_100007DB0(v78, v35 + 592);
  *(v35 + 256) = v31;
  v51 = [v50 artworkURL];
  v52 = v70;
  if (v51)
  {
    v53 = v51;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  v54 = type metadata accessor for URL();
  v55 = *(*(v54 - 8) + 56);
  v55(v52, v42, 1, v54);
  v56 = v72;
  sub_100007F6C(v52, v72);
  v57 = v73;
  v55(v73, 1, 1, v54);
  type metadata accessor for SongArtworkViewModel();
  v58 = swift_allocObject();
  v55(v58 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL, 1, 1, v54);
  v55(v58 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL, 1, 1, v54);
  ObservationRegistrar.init()();
  v59 = v75;
  sub_100008790(v56, v75);
  sub_1000D88D8(v59);
  sub_100008790(v57, v59);
  v60 = v74;
  sub_100008790(v59, v74);
  sub_1000D8B98(v60);
  sub_10001719C(v57);
  sub_10001719C(v56);
  sub_10001719C(v59);
  sub_100007E74(v78);
  *(v35 + 208) = v58;
  *(v35 + 632) = v32;
  sub_100007E74(v79);
  v61 = (v76 + *(v71 + 40));
  v62 = *v61;
  v63 = v61[1];
  sub_10002F7D4(*v61);
  return sub_100040EF4(v35, v62, v63, v77);
}

unint64_t sub_100030A64()
{
  result = qword_100143818;
  if (!qword_100143818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143818);
  }

  return result;
}

unint64_t sub_100030AB8()
{
  result = qword_100143820;
  if (!qword_100143820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143820);
  }

  return result;
}

unint64_t sub_100030B0C()
{
  result = qword_100143828;
  if (!qword_100143828)
  {
    sub_100004370(&qword_100143810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143828);
  }

  return result;
}

uint64_t sub_100030B94()
{
  v1 = type metadata accessor for LibraryItemContextMenu();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  type metadata accessor for LibraryItemContextMenuModel();
  v5 = type metadata accessor for Bindable();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  if (*(v0 + v3 + *(v1 + 36)))
  {
  }

  if (*(v0 + v3 + *(v1 + 40)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100030CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryItemContextMenu() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100030094(v4, a1);
}

unint64_t sub_100030D6C()
{
  result = qword_100142060;
  if (!qword_100142060)
  {
    type metadata accessor for ViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142060);
  }

  return result;
}

uint64_t sub_100030DDC()
{
  type metadata accessor for LibraryItemContextMenu();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100143810);
  swift_getWitnessTable();
  sub_100030A64();
  sub_100030AB8();
  sub_100030B0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100030EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_100142878);
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

uint64_t sub_100030FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_100142878);
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

uint64_t type metadata accessor for MusicRecognitionIntentConfiguration()
{
  result = qword_100143888;
  if (!qword_100143888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000310EC()
{
  sub_100031164();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100031164()
{
  if (!qword_100143898)
  {
    type metadata accessor for IntentSystemContext.Source();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100143898);
    }
  }
}

uint64_t sub_1000311BC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10003138C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001A168();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031408(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10001A404(v5);
}

uint64_t sub_1000314D4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2(v1);
  return Section<>.init(header:content:)();
}

uint64_t sub_1000315A4()
{
  type metadata accessor for LibraryListViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000315F4()
{
  type metadata accessor for LibraryListViewModel();
  type metadata accessor for Bindable();
  return Bindable.projectedValue.getter();
}

uint64_t sub_100031644()
{
  sub_100002D44(&qword_100143A60);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100031720()
{
  sub_100002D44(&qword_100143A60);
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_10003178C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v6 = type metadata accessor for LibraryListView();
  v7 = v6[9];
  *(a3 + v7) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0);
  swift_storeEnumTagMultiPayload();

  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v8 = a3 + v6[11];
  State.init(wrappedValue:)();

  *v8 = v11;
  *(v8 + 1) = v12 & 1;
  *(v8 + 8) = v13;
  v10 = (a3 + v6[12]);
  *v10 = a1;
  v10[1] = a2;
  return result;
}

uint64_t sub_100031938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v154 = type metadata accessor for ScenePhase();
  v145 = *(v154 - 8);
  __chkstk_darwin(v154);
  v144 = v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = *(a1 - 8);
  v153 = *(v159 + 64);
  __chkstk_darwin(v4);
  v158 = v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100143968);
  __chkstk_darwin(v6 - 8);
  v148 = v121 - v7;
  v142 = a1;
  v8 = *(a1 + 24);
  v156 = *(a1 + 16);
  v155 = v8;
  type metadata accessor for LibraryListViewModel();
  v143 = type metadata accessor for Bindable();
  v147 = *(v143 - 1);
  __chkstk_darwin(v143);
  v141 = v121 - v9;
  v151 = type metadata accessor for NavigationPath();
  v150 = sub_100004370(&qword_100143970);
  v149 = sub_100004370(&qword_100143978);
  v140 = sub_100004370(&qword_100143980);
  v139 = sub_100004370(&qword_100143988);
  v138 = sub_100004370(&qword_100142FC8);
  v137 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu();
  type metadata accessor for ModifiedContent();
  v10 = sub_10003D5F4();
  WitnessTable = swift_getWitnessTable();
  v185 = v10;
  v186 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v12 = type metadata accessor for ModifiedContent();
  v13 = sub_100004370(&qword_100142950);
  v14 = swift_getWitnessTable();
  v15 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  v183 = v14;
  v184 = v15;
  v152 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v16 = swift_getWitnessTable();
  v17 = sub_100004610(&qword_1001429F0, &qword_100142950);
  v169 = v12;
  v170 = v13;
  v171 = v16;
  v172 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998);
  v18 = type metadata accessor for ModifiedContent();
  v19 = sub_100004370(&qword_1001439A0);
  v169 = v12;
  v170 = v13;
  v171 = v16;
  v172 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100004610(&qword_1001439A8, &qword_100143998);
  v181 = OpaqueTypeConformance2;
  v182 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_10003D648();
  v169 = v18;
  v170 = v19;
  v171 = v22;
  v172 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v136 = &protocol conformance descriptor for [A];
  v25 = sub_100004610(&qword_1001439D8, &qword_100142FC8);
  v26 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID);
  v169 = v138;
  v170 = v137;
  v171 = OpaqueTypeMetadata2;
  v172 = v25;
  v173 = v26;
  type metadata accessor for ForEach();
  v27 = type metadata accessor for Section();
  v28 = sub_100004370(&qword_1001439E8);
  v29 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &unk_1000F7370, sub_10003D89C);
  v169 = v28;
  v170 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v169 = v18;
  v170 = v19;
  v171 = v22;
  v172 = v23;
  v180 = swift_getOpaqueTypeConformance2();
  v31 = swift_getWitnessTable();
  v177 = v30;
  v178 = v31;
  v179 = &protocol witness table for EmptyView;
  v32 = swift_getWitnessTable();
  v169 = v27;
  v170 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10);
  v33 = type metadata accessor for ModifiedContent();
  v34 = sub_100004610(&qword_100143A18, &qword_100143980);
  v169 = v140;
  v170 = &type metadata for String;
  v171 = v33;
  v172 = v34;
  v173 = &protocol witness table for String;
  type metadata accessor for ForEach();
  swift_getTupleTypeMetadata3();
  v35 = type metadata accessor for TupleView();
  v36 = swift_getWitnessTable();
  v169 = &type metadata for Never;
  v170 = v35;
  v171 = &protocol witness table for Never;
  v172 = v36;
  type metadata accessor for List();
  type metadata accessor for ShazamUpsellOverlayModifier(255);
  v37 = type metadata accessor for ModifiedContent();
  v38 = swift_getWitnessTable();
  v39 = sub_100040C80(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier);
  v175 = v38;
  v176 = v39;
  v40 = swift_getWitnessTable();
  v169 = v37;
  v170 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v169 = v37;
  v170 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v169 = v41;
  v170 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v169 = v41;
  v170 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_10000B730();
  v169 = v43;
  v170 = &type metadata for String;
  v171 = v44;
  v172 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v169 = v43;
  v170 = &type metadata for String;
  v171 = v44;
  v172 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v169 = v46;
  v170 = &type metadata for Bool;
  v171 = v47;
  v172 = &protocol witness table for Bool;
  v48 = swift_getOpaqueTypeMetadata2();
  v49 = sub_10003D954();
  v50 = type metadata accessor for TrackPageView();
  v169 = v46;
  v170 = &type metadata for Bool;
  v171 = v47;
  v172 = &protocol witness table for Bool;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_100040C80(&qword_100142FB8, sub_10003D954);
  v53 = sub_100040C80(&qword_100142068, type metadata accessor for TrackPageView);
  v169 = v48;
  v170 = v49;
  v171 = v50;
  v172 = v51;
  v173 = v52;
  v174 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v55 = sub_100004370(&qword_100143A28);
  v169 = v48;
  v170 = v49;
  v171 = v50;
  v172 = v51;
  v173 = v52;
  v174 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_100004370(&qword_100143A30);
  v58 = sub_100004610(&qword_100143A38, &qword_100143A30);
  v169 = v57;
  v170 = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v169 = v54;
  v170 = v55;
  v171 = v56;
  v172 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v61 = sub_100004370(&qword_100143A40);
  v169 = v54;
  v170 = v55;
  v171 = v56;
  v172 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_10003D9A0();
  v169 = &type metadata for DeviceToDeviceEncryptionView;
  v170 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v169 = v60;
  v170 = v61;
  v171 = v62;
  v172 = v64;
  v131 = swift_getOpaqueTypeMetadata2();
  v169 = v60;
  v170 = v61;
  v171 = v62;
  v172 = v64;
  v130 = swift_getOpaqueTypeConformance2();
  v65 = type metadata accessor for NavigationStack();
  v132 = *(v65 - 8);
  __chkstk_darwin(v65);
  v125 = v121 - v66;
  sub_100004370(&qword_1001429D8);
  v67 = type metadata accessor for ModifiedContent();
  v140 = *(v67 - 8);
  __chkstk_darwin(v67);
  v149 = v121 - v68;
  v69 = swift_getWitnessTable();
  v121[1] = v69;
  v70 = sub_100004610(&qword_1001429D0, &qword_1001429D8);
  v167 = v69;
  v168 = v70;
  v71 = swift_getWitnessTable();
  v72 = sub_10003D9F4();
  v169 = v67;
  v170 = &type metadata for HistorySortSelection;
  v122 = v67;
  v171 = v71;
  v172 = v72;
  v124 = v71;
  v73 = v72;
  v123 = v72;
  v74 = swift_getOpaqueTypeMetadata2();
  v128 = v74;
  v138 = *(v74 - 8);
  __chkstk_darwin(v74);
  v150 = v121 - v75;
  v169 = v67;
  v170 = &type metadata for HistorySortSelection;
  v171 = v71;
  v172 = v73;
  v135 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v76 = swift_getOpaqueTypeConformance2();
  v127 = v76;
  v126 = sub_100040C80(&qword_100143A58, &type metadata accessor for ScenePhase);
  v169 = v74;
  v170 = v154;
  v171 = v76;
  v172 = v126;
  v133 = swift_getOpaqueTypeMetadata2();
  v137 = *(v133 - 8);
  __chkstk_darwin(v133);
  v151 = v121 - v77;
  v136 = type metadata accessor for ModifiedContent();
  v139 = *(v136 - 1);
  __chkstk_darwin(v136);
  v129 = v121 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v134 = v121 - v80;
  v81 = v141;
  v82 = v142;
  v83 = v157;
  sub_1000315F4();
  v84 = v156;
  v163 = v156;
  v85 = v155;
  v164 = v155;
  swift_getKeyPath();
  v86 = v143;
  Bindable<A>.subscript.getter();

  (*(v147 + 8))(v81, v86);
  v160 = v84;
  v161 = v85;
  v162 = v83;
  v87 = v83;
  v88 = v125;
  NavigationStack.init<>(path:root:)();
  static Color.primary.getter();
  View.tint(_:)();

  (*(v132 + 8))(v88, v65);
  LOWORD(v169) = sub_100031644() & 0x1FF;
  v89 = v159;
  v147 = *(v159 + 16);
  v148 = (v159 + 16);
  v90 = v158;
  v91 = v82;
  (v147)(v158, v87, v82);
  v92 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v93 = swift_allocObject();
  v94 = v156;
  v95 = v155;
  *(v93 + 16) = v156;
  *(v93 + 24) = v95;
  v96 = *(v89 + 32);
  v159 = v89 + 32;
  v96(v93 + v92, v90, v82);
  v143 = v96;
  v97 = v122;
  v98 = v149;
  View.onChange<A>(of:initial:_:)();

  (*(v140 + 8))(v98, v97);
  v99 = v157;
  v100 = v144;
  sub_100041394(v144);
  v101 = v158;
  (v147)(v158, v99, v82);
  v102 = swift_allocObject();
  *(v102 + 16) = v94;
  *(v102 + 24) = v95;
  v96(v102 + v92, v101, v82);
  v103 = v100;
  v104 = v128;
  v105 = v154;
  v106 = v127;
  v107 = v126;
  v108 = v150;
  View.onChange<A>(of:initial:_:)();

  (*(v145 + 8))(v103, v105);
  (*(v138 + 8))(v108, v104);
  v109 = v158;
  (v147)(v158, v157, v91);
  v110 = swift_allocObject();
  v111 = v155;
  *(v110 + 16) = v156;
  *(v110 + 24) = v111;
  (v143)(v110 + v92, v109, v91);
  v169 = v104;
  v170 = v105;
  v171 = v106;
  v172 = v107;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v129;
  v114 = v133;
  v115 = v151;
  View.onAppear(perform:)();

  (*(v137 + 8))(v115, v114);
  v165 = v112;
  v166 = &protocol witness table for _AppearanceActionModifier;
  v116 = v136;
  v117 = swift_getWitnessTable();
  v118 = v134;
  sub_1000B03E4(v113, v116, v117);
  v119 = *(v139 + 8);
  v119(v113, v116);
  sub_1000B03E4(v118, v116, v117);
  return (v119)(v118, v116);
}

uint64_t sub_100032FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v236 = a1;
  v220 = a4;
  type metadata accessor for LibraryListViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  v218 = v6;
  v219 = v7;
  __chkstk_darwin(v6);
  v217 = &v167 - v8;
  v9 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v215 = *(v9 - 8);
  v216 = v9;
  __chkstk_darwin(v9);
  v214 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentMarginPlacement();
  v212 = *(v11 - 8);
  v213 = v11;
  __chkstk_darwin(v11);
  v211 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = a2;
  v231 = a3;
  v233 = type metadata accessor for LibraryListView();
  v235 = *(v233 - 8);
  v232 = *(v235 + 64);
  __chkstk_darwin(v233);
  v234 = &v167 - v13;
  v14 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v14 - 8);
  v210 = &v167 - v15;
  v230 = sub_100004370(&qword_100143970);
  v229 = sub_100004370(&qword_100143978);
  v227 = sub_100004370(&qword_100143980);
  v225 = sub_100004370(&qword_100143988);
  v224 = sub_100004370(&qword_100142FC8);
  v223 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu();
  type metadata accessor for ModifiedContent();
  v16 = sub_10003D5F4();
  WitnessTable = swift_getWitnessTable();
  v261 = v16;
  v262 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v18 = type metadata accessor for ModifiedContent();
  v19 = sub_100004370(&qword_100142950);
  v20 = swift_getWitnessTable();
  v21 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  v259 = v20;
  v260 = v21;
  v226 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v22 = swift_getWitnessTable();
  v23 = sub_100004610(&qword_1001429F0, &qword_100142950);
  v245 = v18;
  v246 = v19;
  v247 = v22;
  v248 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998);
  v24 = type metadata accessor for ModifiedContent();
  v25 = sub_100004370(&qword_1001439A0);
  v221 = v25;
  v245 = v18;
  v246 = v19;
  v247 = v22;
  v248 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_100004610(&qword_1001439A8, &qword_100143998);
  v257 = OpaqueTypeConformance2;
  v258 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_10003D648();
  v245 = v24;
  v246 = v25;
  v247 = v28;
  v248 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v222 = &protocol conformance descriptor for [A];
  v31 = sub_100004610(&qword_1001439D8, &qword_100142FC8);
  v32 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID);
  v245 = v224;
  v246 = v223;
  v247 = OpaqueTypeMetadata2;
  v248 = v31;
  v249 = v32;
  type metadata accessor for ForEach();
  v33 = type metadata accessor for Section();
  v34 = sub_100004370(&qword_1001439E8);
  v35 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &unk_1000F7370, sub_10003D89C);
  v245 = v34;
  v246 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v245 = v24;
  v246 = v221;
  v247 = v28;
  v248 = v29;
  v256 = swift_getOpaqueTypeConformance2();
  v37 = swift_getWitnessTable();
  v253 = v36;
  v254 = v37;
  v255 = &protocol witness table for EmptyView;
  v38 = swift_getWitnessTable();
  v245 = v33;
  v246 = v38;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10);
  v39 = type metadata accessor for ModifiedContent();
  v40 = sub_100004610(&qword_100143A18, &qword_100143980);
  v245 = v227;
  v246 = &type metadata for String;
  v247 = v39;
  v248 = v40;
  v249 = &protocol witness table for String;
  type metadata accessor for ForEach();
  swift_getTupleTypeMetadata3();
  v41 = type metadata accessor for TupleView();
  v229 = v41;
  v230 = swift_getWitnessTable();
  v245 = &type metadata for Never;
  v246 = v41;
  v247 = &protocol witness table for Never;
  v248 = v230;
  v42 = type metadata accessor for List();
  v208 = *(v42 - 8);
  __chkstk_darwin(v42);
  v198 = &v167 - v43;
  type metadata accessor for ShazamUpsellOverlayModifier(255);
  v202 = v42;
  v44 = type metadata accessor for ModifiedContent();
  v209 = *(v44 - 8);
  __chkstk_darwin(v44);
  v203 = &v167 - v45;
  v46 = swift_getWitnessTable();
  v199 = v46;
  v47 = sub_100040C80(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier);
  v251 = v46;
  v252 = v47;
  v48 = swift_getWitnessTable();
  v245 = v44;
  v246 = v48;
  v49 = v44;
  v196 = v44;
  v197 = v48;
  v50 = v48;
  v51 = swift_getOpaqueTypeMetadata2();
  v204 = *(v51 - 8);
  __chkstk_darwin(v51);
  v195 = &v167 - v52;
  v245 = v49;
  v246 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v245 = v51;
  v246 = v53;
  v54 = v51;
  v193 = v51;
  v194 = v53;
  v55 = v53;
  v56 = swift_getOpaqueTypeMetadata2();
  v205 = *(v56 - 8);
  __chkstk_darwin(v56);
  v192 = &v167 - v57;
  v245 = v54;
  v246 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_10000B730();
  v245 = v56;
  v246 = &type metadata for String;
  v60 = v56;
  v189 = v56;
  v190 = v59;
  v247 = v58;
  v248 = v59;
  v191 = v58;
  v61 = v59;
  v62 = swift_getOpaqueTypeMetadata2();
  v206 = *(v62 - 8);
  __chkstk_darwin(v62);
  v227 = (&v167 - v63);
  v245 = v60;
  v246 = &type metadata for String;
  v247 = v58;
  v248 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v245 = v62;
  v246 = &type metadata for Bool;
  v65 = v62;
  v187 = v62;
  v247 = v64;
  v248 = &protocol witness table for Bool;
  v66 = v64;
  v188 = v64;
  v67 = swift_getOpaqueTypeMetadata2();
  v207 = *(v67 - 8);
  __chkstk_darwin(v67);
  v226 = &v167 - v68;
  v69 = sub_10003D954();
  v70 = type metadata accessor for TrackPageView();
  v245 = v65;
  v246 = &type metadata for Bool;
  v247 = v66;
  v248 = &protocol witness table for Bool;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_100040C80(&qword_100142FB8, sub_10003D954);
  v73 = sub_100040C80(&qword_100142068, type metadata accessor for TrackPageView);
  v179 = v67;
  v180 = v72;
  v245 = v67;
  v246 = v69;
  v172 = v69;
  v173 = v70;
  v247 = v70;
  v248 = v71;
  v74 = v71;
  v181 = v71;
  v249 = v72;
  v250 = v73;
  v75 = v73;
  v176 = v73;
  v76 = swift_getOpaqueTypeMetadata2();
  v200 = *(v76 - 8);
  __chkstk_darwin(v76);
  v183 = &v167 - v77;
  v78 = sub_100004370(&qword_100143A28);
  v245 = v67;
  v246 = v69;
  v247 = v70;
  v248 = v74;
  v249 = v72;
  v250 = v75;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_100004370(&qword_100143A30);
  v81 = sub_100004610(&qword_100143A38, &qword_100143A30);
  v245 = v80;
  v246 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v76;
  v168 = v76;
  v169 = v82;
  v245 = v76;
  v246 = v78;
  v170 = v79;
  v171 = v78;
  v84 = v79;
  v247 = v79;
  v248 = v82;
  v85 = v82;
  v86 = swift_getOpaqueTypeMetadata2();
  v182 = v86;
  v201 = *(v86 - 8);
  __chkstk_darwin(v86);
  v224 = (&v167 - v87);
  v88 = sub_100004370(&qword_100143A40);
  v177 = v88;
  v245 = v83;
  v246 = v78;
  v247 = v84;
  v248 = v85;
  v89 = swift_getOpaqueTypeConformance2();
  v175 = v89;
  v90 = sub_10003D9A0();
  v245 = &type metadata for DeviceToDeviceEncryptionView;
  v246 = v90;
  v174 = swift_getOpaqueTypeConformance2();
  v245 = v86;
  v246 = v88;
  v247 = v89;
  v248 = v174;
  v184 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v91 = swift_getOpaqueTypeMetadata2();
  v92 = *(v91 - 8);
  v185 = v91;
  v186 = v92;
  __chkstk_darwin(v91);
  v225 = &v167 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v94);
  v178 = &v167 - v95;
  v96 = v228;
  v242 = v228;
  v97 = v231;
  v243 = v231;
  v98 = v236;
  v244 = v236;
  v99 = v198;
  List<>.init(content:)();
  v100 = type metadata accessor for URL();
  v101 = v210;
  (*(*(v100 - 8) + 56))(v210, 1, 1, v100);
  v102 = v235;
  v103 = *(v235 + 16);
  v222 = (v235 + 16);
  v223 = v103;
  v104 = v234;
  v105 = v233;
  (v103)(v234, v98, v233);
  v106 = v102;
  v230 = *(v102 + 80);
  v107 = (v230 + 32) & ~v230;
  v229 = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = v96;
  *(v108 + 24) = v97;
  v221 = *(v106 + 32);
  v235 = v106 + 32;
  v109 = v108 + v107;
  v110 = v105;
  (v221)(v109, v104, v105);
  v111 = v203;
  v112 = v101;
  v113 = v101;
  v114 = v202;
  sub_1000D9768(v113, sub_10003DC54, v108, v202, v199, v203);

  sub_100007E14(v112, &unk_100144630);
  (*(v208 + 8))(v99, v114);
  static Edge.Set.top.getter();
  v115 = v211;
  static ContentMarginPlacement.automatic.getter();
  v116 = v195;
  v117 = v196;
  View.contentMargins(_:_:for:)();
  (*(v212 + 8))(v115, v213);
  (*(v209 + 8))(v111, v117);
  v119 = v214;
  v118 = v215;
  v120 = v216;
  (*(v215 + 104))(v214, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v216);
  v121 = v192;
  v122 = v193;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v118 + 8))(v119, v120);
  (*(v204 + 8))(v116, v122);
  v123 = v236;
  sub_1000315A4();
  v124 = sub_10001E088();
  v126 = v125;

  v245 = v124;
  v246 = v126;
  v127 = v189;
  View.navigationTitle<A>(_:)();

  (*(v205 + 8))(v121, v127);
  v128 = v234;
  v129 = v123;
  v130 = v223;
  (v223)(v234, v129, v110);
  v131 = v229;
  v132 = swift_allocObject();
  v133 = v228;
  v134 = v231;
  *(v132 + 16) = v228;
  *(v132 + 24) = v134;
  v135 = v110;
  v136 = v221;
  (v221)(v132 + v131, v128, v135);
  v137 = v227;
  v138 = v187;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v206 + 8))(v137, v138);
  v227 = swift_checkMetadataState();
  v139 = v234;
  v140 = v233;
  v130(v234, v236, v233);
  v141 = v229;
  v142 = swift_allocObject();
  v143 = v231;
  *(v142 + 16) = v133;
  *(v142 + 24) = v143;
  v136(v142 + v141, v139, v140);
  swift_checkMetadataState();
  v144 = v183;
  v145 = v226;
  v146 = v179;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v207 + 8))(v145, v146);
  v239 = v133;
  v147 = v143;
  v240 = v143;
  v148 = v236;
  v241 = v236;
  v149 = v168;
  View.toolbar<A>(content:)();
  (*(v200 + 8))(v144, v149);
  v150 = v217;
  v151 = v233;
  sub_1000315F4();
  v237 = v133;
  v238 = v147;
  swift_getKeyPath();
  v152 = v218;
  Bindable<A>.subscript.getter();

  (*(v219 + 8))(v150, v152);
  v153 = v234;
  (v223)(v234, v148, v151);
  v154 = v229;
  v155 = swift_allocObject();
  *(v155 + 16) = v133;
  *(v155 + 24) = v147;
  (v221)(v155 + v154, v153, v151);
  v156 = v174;
  v157 = v175;
  v158 = v177;
  v159 = v182;
  v160 = v224;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v201 + 8))(v160, v159);
  v245 = v159;
  v246 = v158;
  v247 = v157;
  v248 = v156;
  v161 = swift_getOpaqueTypeConformance2();
  v162 = v178;
  v163 = v225;
  v164 = v185;
  sub_1000B03E4(v225, v185, v161);
  v165 = *(v186 + 8);
  v165(v163, v164);
  sub_1000B03E4(v162, v164, v161);
  return (v165)(v162, v164);
}

uint64_t sub_1000347DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v102 = a2;
  v103 = a1;
  v120 = a4;
  v127 = a3;
  v125 = type metadata accessor for LibraryListView();
  v119 = *(v125 - 8);
  v117 = *(v119 + 64);
  __chkstk_darwin(v125);
  v118 = &KeyPath - v4;
  v126 = sub_100004370(&qword_100143980);
  v124 = sub_100004370(&qword_100143988);
  v123 = sub_100004370(&qword_100142FC8);
  v122 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu();
  type metadata accessor for ModifiedContent();
  v5 = sub_10003D5F4();
  WitnessTable = swift_getWitnessTable();
  v144 = v5;
  v145 = WitnessTable;
  v121 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = sub_100004370(&qword_100142950);
  v9 = swift_getWitnessTable();
  v10 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  v142 = v9;
  v143 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_100004610(&qword_1001429F0, &qword_100142950);
  v135 = v7;
  v136 = v8;
  v137 = v11;
  v138 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998);
  v13 = type metadata accessor for ModifiedContent();
  v14 = sub_100004370(&qword_1001439A0);
  v116 = v14;
  v135 = v7;
  v136 = v8;
  v137 = v11;
  v138 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_100004610(&qword_1001439A8, &qword_100143998);
  v140 = OpaqueTypeConformance2;
  v141 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_10003D648();
  v135 = v13;
  v136 = v14;
  v137 = v17;
  v138 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v121 = &protocol conformance descriptor for [A];
  v20 = sub_100004610(&qword_1001439D8, &qword_100142FC8);
  v21 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID);
  v135 = v123;
  v136 = v122;
  v137 = OpaqueTypeMetadata2;
  v138 = v20;
  v139 = v21;
  type metadata accessor for ForEach();
  v22 = type metadata accessor for Section();
  v23 = sub_100004370(&qword_1001439E8);
  v24 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &unk_1000F7370, sub_10003D89C);
  v135 = v23;
  v136 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v135 = v13;
  v136 = v116;
  v137 = v17;
  v138 = v18;
  v134[13] = swift_getOpaqueTypeConformance2();
  v26 = swift_getWitnessTable();
  v134[10] = v25;
  v134[11] = v26;
  v27 = v103;
  v134[12] = &protocol witness table for EmptyView;
  v28 = swift_getWitnessTable();
  v113 = v22;
  v135 = v22;
  v136 = v28;
  v105 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88);
  v29 = type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08);
  v101 = v29;
  v30 = type metadata accessor for ModifiedContent();
  v31 = sub_100004370(&qword_100143A10);
  v106 = v30;
  v99 = v31;
  v32 = type metadata accessor for ModifiedContent();
  v33 = sub_100004610(&qword_100143A18, &qword_100143980);
  v135 = v126;
  v136 = &type metadata for String;
  v110 = v33;
  v111 = v32;
  v137 = v32;
  v138 = v33;
  v139 = &protocol witness table for String;
  v116 = type metadata accessor for ForEach();
  v112 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &KeyPath - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v114 = &KeyPath - v36;
  v37 = type metadata accessor for ListSectionSpacing();
  v97 = *(v37 - 8);
  v98 = v37;
  __chkstk_darwin(v37);
  v39 = &KeyPath - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100002D44(&qword_100143B98);
  v100 = *(v122 - 8);
  __chkstk_darwin(v122);
  v96 = &KeyPath - v40;
  v104 = sub_100002D44(&qword_100143978);
  __chkstk_darwin(v104);
  v109 = &KeyPath - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &KeyPath - v43;
  v45 = sub_100002D44(&qword_100143970);
  v107 = *(v45 - 8);
  v108 = v45;
  __chkstk_darwin(v45);
  v124 = &KeyPath - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &KeyPath - v48;
  v50 = v102;
  v128 = v102;
  v129 = v127;
  v130 = v27;
  sub_100002D44(&qword_100143BA0);
  sub_100004610(&qword_100143BA8, &qword_100143BA0);
  v123 = v49;
  Section<>.init(content:)();
  v51 = v27;
  sub_1000315A4();
  LOBYTE(v20) = sub_10001AA2C();

  v53 = 1;
  v121 = v44;
  if ((v20 & 1) == 0)
  {
    __chkstk_darwin(v52);
    v54 = v50;
    v55 = v127;
    *(&KeyPath - 4) = v50;
    *(&KeyPath - 3) = v55;
    v56 = v27;
    v93 = v27;
    sub_100002D44(&qword_100143BB0);
    sub_10003E908();
    v57 = v96;
    Section<>.init(content:)();
    static ListSectionSpacing.custom(_:)();
    v58 = *(sub_100002D44(&qword_100143BC8) + 36);
    v59 = v97;
    v60 = v98;
    (*(v97 + 16))(v57 + v58, v39, v98);
    v95 = v39;
    v61 = *(v59 + 56);
    v61(v57 + v58, 0, 1, v60);
    KeyPath = swift_getKeyPath();
    v62 = v56;
    v63 = (v57 + *(v122 + 36));
    v64 = *(v99 + 28);
    (*(v59 + 32))(v63 + v64, v95, v60);
    v65 = v63 + v64;
    v50 = v54;
    v61(v65, 0, 1, v60);
    *v63 = KeyPath;
    v51 = v62;
    v44 = v121;
    sub_10002F250(v57, v121, &qword_100143B98);
    v53 = 0;
  }

  (*(v100 + 56))(v44, v53, 1, v122);
  v66 = v125;
  sub_1000315A4();
  v67 = sub_100031644();
  v68 = sub_10001AE2C(v67 & 0x1FF);

  v134[0] = v68;
  v69 = v118;
  v70 = v119;
  (*(v119 + 16))(v118, v51, v66);
  v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v72 = swift_allocObject();
  v73 = v127;
  *(v72 + 16) = v50;
  *(v72 + 24) = v73;
  (*(v70 + 32))(v72 + v71, v69, v66);
  v135 = v113;
  v136 = v105;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_100004610(&qword_100141F80, &qword_100141F88);
  v134[8] = v74;
  v134[9] = v75;
  v76 = swift_getWitnessTable();
  v77 = sub_100004610(&qword_100143BD0, &qword_100143A08);
  v134[6] = v76;
  v134[7] = v77;
  v78 = swift_getWitnessTable();
  v79 = sub_100004610(&qword_100143BD8, &qword_100143A10);
  v134[4] = v78;
  v134[5] = v79;
  v80 = swift_getWitnessTable();
  v93 = sub_10003EB10();
  v81 = v115;
  ForEach<>.init(_:content:)();
  v134[3] = v80;
  v82 = v116;
  v126 = swift_getWitnessTable();
  v83 = v114;
  sub_1000B03E4(v81, v82, v126);
  v84 = v112;
  v127 = *(v112 + 8);
  v127(v81, v82);
  v86 = v107;
  v85 = v108;
  v87 = v124;
  (*(v107 + 16))(v124, v123, v108);
  v135 = v87;
  v88 = v121;
  v89 = v109;
  sub_100007FDC(v121, v109, &qword_100143978);
  v136 = v89;
  (*(v84 + 16))(v81, v83, v82);
  v137 = v81;
  v134[0] = v85;
  v134[1] = v104;
  v134[2] = v82;
  v131 = sub_10003EB64();
  v132 = sub_10003EC20();
  v133 = v126;
  sub_1000311BC(&v135, 3uLL, v134);
  v90 = v127;
  v127(v83, v82);
  sub_100007E14(v88, &qword_100143978);
  v91 = *(v86 + 8);
  v91(v123, v85);
  v90(v81, v82);
  sub_100007E14(v89, &qword_100143978);
  return (v91)(v124, v85);
}

uint64_t sub_1000356D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryListView();
  sub_1000315A4();
  v18 = sub_10001A97C();

  sub_1000315A4();
  HIDWORD(v17) = sub_10001ADB4();

  v19 = static Color.clear.getter();
  v6 = AnyView.init<A>(_:)();
  v7 = static Solarium.isEnabled.getter();
  v8 = static Solarium.isEnabled.getter();
  v20 = 0;
  sub_1000315A4();
  v9 = sub_10001ADB4();

  if (v9)
  {
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    result = (*(v3 + 8))(v5, v2);
  }

  else
  {
    v13 = 0x8000000100100760;
    v11 = 0xD000000000000022;
  }

  v14 = 0.0;
  v15 = BYTE4(v17) & 1;
  *a1 = v18;
  *(a1 + 8) = v15;
  if (v7)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 0.0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = 0x4020000000000000;
  if (v8)
  {
    v14 = 4.0;
  }

  *(a1 + 32) = v16;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return result;
}

uint64_t sub_1000358D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LibraryListView();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - v11;
  (*(v9 + 16))(&v17 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);
  result = static Solarium.isEnabled.getter();
  v16 = 12.0;
  *a4 = sub_10003F8B4;
  *(a4 + 8) = v14;
  *(a4 + 16) = 0;
  if (result)
  {
    v16 = 16.0;
  }

  *(a4 + 24) = v16;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_100035A3C()
{
  type metadata accessor for LibraryListView();
  sub_1000315A4();
  sub_10001A1E4(1);
}

uint64_t sub_100035A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v76 = a1;
  v77 = a2;
  v81 = a5;
  v5 = type metadata accessor for Prominence();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v78 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100004370(&qword_100143988);
  v71 = sub_100004370(&qword_100142FC8);
  v70 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu();
  type metadata accessor for ModifiedContent();
  v7 = sub_10003D5F4();
  WitnessTable = swift_getWitnessTable();
  v114 = v7;
  v115 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v9 = type metadata accessor for ModifiedContent();
  v10 = sub_100004370(&qword_100142950);
  v11 = swift_getWitnessTable();
  v12 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  v112 = v11;
  v113 = v12;
  v72 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v13 = swift_getWitnessTable();
  v14 = sub_100004610(&qword_1001429F0, &qword_100142950);
  v105 = v9;
  v106 = v10;
  v107 = v13;
  v108 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998);
  v15 = type metadata accessor for ModifiedContent();
  v16 = sub_100004370(&qword_1001439A0);
  v105 = v9;
  v106 = v10;
  v107 = v13;
  v108 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = &protocol conformance descriptor for _TraitWritingModifier<A>;
  v18 = sub_100004610(&qword_1001439A8, &qword_100143998);
  v110 = OpaqueTypeConformance2;
  v111 = v18;
  v69 = v15;
  v19 = swift_getWitnessTable();
  v20 = sub_10003D648();
  v105 = v15;
  v106 = v16;
  v107 = v19;
  v108 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = sub_100004610(&qword_1001439D8, &qword_100142FC8);
  v23 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID);
  v105 = v71;
  v106 = v70;
  v107 = OpaqueTypeMetadata2;
  v108 = v22;
  v109 = v23;
  type metadata accessor for ForEach();
  v24 = type metadata accessor for Section();
  v71 = *(v24 - 8);
  __chkstk_darwin(v24);
  v70 = &v59 - v25;
  v26 = sub_100004370(&qword_1001439E8);
  v27 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &unk_1000F7370, sub_10003D89C);
  v105 = v26;
  v106 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v105 = v69;
  v106 = v16;
  v107 = v19;
  v108 = v20;
  v104 = swift_getOpaqueTypeConformance2();
  v29 = swift_getWitnessTable();
  v101 = v28;
  v102 = v29;
  v103 = &protocol witness table for EmptyView;
  v62 = swift_getWitnessTable();
  v105 = v24;
  v106 = v62;
  v64 = &opaque type descriptor for <<opaque return type of View.headerProminence(_:)>>;
  v61 = swift_getOpaqueTypeMetadata2();
  v67 = *(v61 - 8);
  __chkstk_darwin(v61);
  v31 = &v59 - v30;
  sub_100004370(&qword_100141F88);
  v63 = type metadata accessor for ModifiedContent();
  v68 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v59 - v32;
  sub_100004370(&qword_100143A08);
  v65 = type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10);
  v33 = type metadata accessor for ModifiedContent();
  v69 = *(v33 - 8);
  __chkstk_darwin(v33);
  v60 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v66 = &v59 - v36;
  v37 = *v76;
  v38 = v76[1];
  v39 = v76[2];
  v88 = v74;
  v89 = v75;
  v90 = v37;
  v91 = v38;
  v92 = v39;
  v93 = v77;
  v83 = v74;
  v84 = v75;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  v40 = v70;
  sub_1000314D4(sub_10003EEA4);
  v41 = v78;
  v42 = v79;
  v43 = v80;
  (*(v79 + 104))(v78, enum case for Prominence.increased(_:), v80);
  v44 = v62;
  View.headerProminence(_:)();
  (*(v42 + 8))(v41, v43);
  (*(v71 + 8))(v40, v24);
  v100 = static HierarchicalShapeStyle.primary.getter();
  v105 = v24;
  v106 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v59;
  v47 = v61;
  View.foregroundStyle<A>(_:)();
  (*(v67 + 8))(v31, v47);
  static Solarium.isEnabled.getter();
  v48 = sub_100004610(&qword_100141F80, &qword_100141F88);
  v98 = v45;
  v99 = v48;
  v49 = v63;
  v50 = swift_getWitnessTable();
  v51 = v60;
  View.listSectionSpacing(_:)();
  (*(v68 + 8))(v46, v49);
  v52 = sub_100004610(&qword_100143BD0, &qword_100143A08);
  v96 = v50;
  v97 = v52;
  v53 = swift_getWitnessTable();
  v54 = sub_100004610(&qword_100143BD8, &qword_100143A10);
  v94 = v53;
  v95 = v54;
  v55 = swift_getWitnessTable();
  v56 = v66;
  sub_1000B03E4(v51, v33, v55);
  v57 = *(v69 + 8);
  v57(v51, v33);
  sub_1000B03E4(v56, v33, v55);
  return (v57)(v56, v33);
}

uint64_t sub_100036510@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v51 = a1;
  v52 = a2;
  v53 = a5;
  v45 = a3;
  v46 = a4;
  v50 = type metadata accessor for LibraryListView();
  v48 = *(v50 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = v40 - v5;
  v54 = sub_100004370(&qword_100142FC8);
  v55 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu();
  type metadata accessor for ModifiedContent();
  v6 = sub_10003D5F4();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v68 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = sub_100004370(&qword_100142950);
  v10 = swift_getWitnessTable();
  v11 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  v65 = v10;
  v66 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_100004610(&qword_1001429F0, &qword_100142950);
  v58 = v8;
  v59 = v9;
  v60 = v12;
  v61 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998);
  v14 = type metadata accessor for ModifiedContent();
  v15 = sub_100004370(&qword_1001439A0);
  v43 = v15;
  v58 = v8;
  v59 = v9;
  v60 = v12;
  v61 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_100004610(&qword_1001439A8, &qword_100143998);
  v63 = OpaqueTypeConformance2;
  v64 = v17;
  v44 = v14;
  v18 = swift_getWitnessTable();
  v42 = v18;
  v41 = sub_10003D648();
  v58 = v14;
  v59 = v15;
  v60 = v18;
  v61 = v41;
  v40[0] = &opaque type descriptor for <<opaque return type of View.swipeActions<A>(edge:allowsFullSwipe:content:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40[2] = OpaqueTypeMetadata2;
  v20 = sub_100004610(&qword_1001439D8, &qword_100142FC8);
  v40[1] = v20;
  v21 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID);
  v58 = v54;
  v59 = v55;
  v60 = OpaqueTypeMetadata2;
  v61 = v20;
  v62 = v21;
  v22 = type metadata accessor for ForEach();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = v40 - v28;
  v57 = v51;
  v30 = v48;
  v31 = v47;
  v32 = v50;
  (*(v48 + 16))(v47, v52, v50, v27);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v45;
  *(v34 + 24) = v35;
  (*(v30 + 32))(v34 + v33, v31, v32);

  v58 = v44;
  v59 = v43;
  v60 = v42;
  v61 = v41;
  v36 = swift_getOpaqueTypeConformance2();
  sub_100040C80(&qword_100143C18, sub_10003D954);
  ForEach<>.init(_:content:)();
  v56 = v36;
  v37 = swift_getWitnessTable();
  sub_1000B03E4(v25, v22, v37);
  v38 = *(v23 + 8);
  v38(v25, v22);
  sub_1000B03E4(v29, v22, v37);
  return (v38)(v29, v22);
}

uint64_t sub_100036BA0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a2;
  v101 = a1;
  v88 = a5;
  v7 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v7);
  v102 = v70 - v8;
  v103 = a3;
  v98 = a4;
  v100 = type metadata accessor for LibraryListView();
  v94 = *(v100 - 8);
  v97 = *(v94 + 64);
  __chkstk_darwin(v100);
  v93 = v70 - v9;
  type metadata accessor for LibraryItemContextMenu();
  v10 = type metadata accessor for ModifiedContent();
  v11 = sub_10003D5F4();
  WitnessTable = swift_getWitnessTable();
  v117 = v11;
  v118 = WitnessTable;
  v96 = v10;
  v95 = swift_getWitnessTable();
  v13 = type metadata accessor for Button();
  v99 = *(v13 - 8);
  __chkstk_darwin(v13);
  v92 = v70 - v14;
  type metadata accessor for AccessibilityAttachmentModifier();
  v91 = v13;
  v15 = type metadata accessor for ModifiedContent();
  v86 = *(v15 - 8);
  __chkstk_darwin(v15);
  v89 = v70 - v16;
  v17 = swift_getWitnessTable();
  v90 = v17;
  v18 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  v115 = v17;
  v116 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_100004610(&qword_1001429F0, &qword_100142950);
  v119 = *&v15;
  v120 = *&v7;
  v121 = *&v19;
  v122 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v79 = v70 - v22;
  sub_100004370(&qword_100143998);
  v83 = OpaqueTypeMetadata2;
  v23 = type metadata accessor for ModifiedContent();
  v84 = *(v23 - 8);
  __chkstk_darwin(v23);
  v81 = v70 - v24;
  v25 = sub_100004370(&qword_1001439A0);
  v85 = v15;
  v119 = *&v15;
  v120 = *&v7;
  v87 = v7;
  v78 = v19;
  v121 = *&v19;
  v122 = v20;
  v77 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_100004610(&qword_1001439A8, &qword_100143998);
  v70[1] = OpaqueTypeConformance2;
  v113 = OpaqueTypeConformance2;
  v114 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_10003D648();
  v119 = *&v23;
  v120 = *&v25;
  v80 = v25;
  v74 = v28;
  v121 = *&v28;
  v122 = v29;
  v73 = v29;
  v76 = swift_getOpaqueTypeMetadata2();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v72 = v70 - v33;
  v34 = *v101;
  v35 = v94;
  v36 = v93;
  v37 = v104;
  v38 = v100;
  (*(v94 + 16))(v93, v104, v100, v32);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = (v97 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v103;
  v43 = v98;
  *(v41 + 16) = v103;
  *(v41 + 24) = v43;
  v44 = v41 + v39;
  v45 = v43;
  (*(v35 + 32))(v44, v36, v38);
  *(v41 + v40) = v34;
  v46 = v102;
  v47 = v42;
  v48 = v89;
  v105 = v47;
  v106 = v45;
  v107 = v34;
  v108 = v37;
  v49 = v34;
  v50 = v92;
  Button.init(action:label:)();
  v51 = v91;
  View.accessibilityIdentifier(_:)();
  (*(v99 + 8))(v50, v51);
  v52 = enum case for DynamicTypeSize.accessibility2(_:);
  v53 = type metadata accessor for DynamicTypeSize();
  (*(*(v53 - 8) + 104))(v46, v52, v53);
  sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v55 = v79;
    v56 = v85;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v46, &qword_100142950);
    (*(v86 + 8))(v48, v56);
    v57 = static Solarium.isEnabled.getter();
    v58 = 12.0;
    if (v57)
    {
      v58 = 16.0;
    }

    v119 = v58;
    v120 = v58;
    v121 = v58;
    v122 = 0x4030000000000000;
    v123 = 0;
    v59 = v81;
    v60 = v83;
    View.listRowInsets(_:)();
    v61 = (*(v82 + 8))(v55, v60);
    __chkstk_darwin(v61);
    v70[-4] = v103;
    v70[-3] = v45;
    v70[-2] = v104;
    v70[-1] = v49;
    v62 = v71;
    v63 = v80;
    v64 = v74;
    v65 = v73;
    View.swipeActions<A>(edge:allowsFullSwipe:content:)();
    (*(v84 + 8))(v59, v23);
    v109 = v23;
    v110 = v63;
    v111 = v64;
    v112 = v65;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = v72;
    v68 = v76;
    sub_1000B03E4(v62, v76, v66);
    v69 = *(v75 + 8);
    v69(v62, v68);
    sub_1000B03E4(v67, v68, v66);
    return (v69)(v67, v68);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037694(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryListView();
  sub_1000315A4();
  sub_100020604(0xBu, 0);

  sub_1000315A4();
  v8 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v11[1];
  }

  sub_10001C7A4(a2, v8);
}

uint64_t sub_100037854@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a5;
  v9 = type metadata accessor for LibraryListView();
  v10 = *(v9 - 8);
  v55 = *(v10 + 64);
  __chkstk_darwin(v9);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v48 = &v48 - v13;
  v15 = *(a3 - 8);
  v54 = v15;
  __chkstk_darwin(v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  v20 = v19;
  v50 = a4;
  v60 = type metadata accessor for LibraryItemContextMenu();
  v21 = type metadata accessor for ModifiedContent();
  v22 = *(v21 - 8);
  v61 = v21;
  v62 = v22;
  __chkstk_darwin(v21);
  v56 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v48 - v25;
  KeyPath = swift_getKeyPath();
  v66 = KeyPath;
  v67 = 0;
  v68 = a1;
  v53 = a1;
  v26 = v9;
  v51 = a2;
  v27 = sub_1000315A4();
  v28 = *(v15 + 16);
  v29 = v27 + *(*v27 + 184);
  v49 = v20;
  v28(v18, v29, v20);

  v30 = *(v10 + 16);
  v30(v14, a2, v26);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v20;
  *(v32 + 24) = a4;
  v33 = *(v10 + 32);
  v33(v32 + v31, v48, v26);
  v34 = v57;
  v30(v57, v51, v26);
  v35 = swift_allocObject();
  v37 = v49;
  v36 = v50;
  *(v35 + 16) = v49;
  *(v35 + 24) = v36;
  v33(v35 + v31, v34, v26);
  v38 = sub_10003D5F4();
  v39 = v56;
  v40 = v52;
  v41 = v53;
  sub_10002F4B0(v53, v52, sub_10003F658, v32, sub_10003F6F4, v35, &type metadata for LibraryItemView, v37, v56, v38);

  (*(v54 + 8))(v40, v37);

  WitnessTable = swift_getWitnessTable();
  v64 = v38;
  v65 = WitnessTable;
  v43 = v61;
  v44 = swift_getWitnessTable();
  v45 = v59;
  sub_1000B03E4(v39, v43, v44);
  v46 = *(v62 + 8);
  v46(v39, v43);
  sub_1000B03E4(v45, v43, v44);
  return (v46)(v45, v43);
}

uint64_t sub_100037D10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v36 = a2;
  v37 = a5;
  v7 = type metadata accessor for LibraryListView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_100002D44(&qword_100143C20);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_100002D44(&qword_1001439D0);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  static ButtonRole.destructive.getter();
  v19 = type metadata accessor for ButtonRole();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  (*(v8 + 16))(v11, a1, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v33;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v8 + 32))(v22 + v20, v11, v7);
  v24 = v36;
  *(v22 + v21) = v36;
  v38 = a3;
  v39 = v23;
  v25 = v24;
  Button.init(role:action:label:)();
  sub_100004610(&qword_1001439C8, &qword_1001439D0);
  v26 = v37;
  v27 = v34;
  View.accessibilityIdentifier(_:)();
  (*(v35 + 8))(v18, v27);
  v28 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100002D44(&qword_1001439A0);
  v31 = (v26 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v28;
  return result;
}

uint64_t sub_10003807C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a1;
  v23 = a4;
  v22[1] = a3;
  v7 = type metadata accessor for LibraryListView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v12 - 8);
  v14 = v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  type metadata accessor for MainActor();
  v16 = a2;
  v17 = static MainActor.shared.getter();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = a3;
  *(v20 + 5) = v23;
  (*(v8 + 32))(&v20[v18], v11, v7);
  *&v20[v19] = v16;
  sub_1000C8AF8(0, 0, v14, &unk_1000F76C8, v20);

  sub_1000315A4();
  sub_100020604(0x12u, 0);
}

uint64_t sub_1000382E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *(a6 - 8);
  v7[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[9] = v9;
  v7[10] = v8;

  return _swift_task_switch(sub_1000383CC, v9, v8);
}

uint64_t sub_1000383CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v11 = v0[5];
  type metadata accessor for LibraryListView();
  v4 = sub_1000315A4();
  (*(v2 + 16))(v1, v4 + *(*v4 + 184), v3);

  v10 = (*(v11 + 40) + **(v11 + 40));
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100038548;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return v10(v8, v6, v7);
}

uint64_t sub_100038548()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_1000386CC, v6, v5);
}

uint64_t sub_1000386CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v36 = type metadata accessor for AccessibilityTraits();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100002D44(&qword_1001439E8);
  __chkstk_darwin(v33);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v30 - v9;
  __chkstk_darwin(v10);
  v32 = &v30 - v11;
  *&v45[0] = a1;
  *(&v45[0] + 1) = a2;
  sub_10000B730();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_10000BFBC(v12, v14, v16 & 1);

  v24 = static Solarium.isEnabled.getter();
  v25 = 0.0;
  if (v24)
  {
    v25 = 4.0;
  }

  v44 = v21 & 1;
  v43 = 0;
  *&v38 = v17;
  *(&v38 + 1) = v19;
  LOBYTE(v39) = v21 & 1;
  *(&v39 + 1) = v23;
  *&v40 = 0x4038000000000000;
  *(&v40 + 1) = v25;
  v41 = xmmword_1000F7210;
  v42 = 0;
  sub_100002D44(&qword_100143A00);
  sub_10003D89C();
  View.accessibilityIdentifier(_:)();
  v45[2] = v40;
  v45[3] = v41;
  v46 = v42;
  v45[0] = v38;
  v45[1] = v39;
  sub_100007E14(v45, &qword_100143A00);
  v26 = v34;
  static AccessibilityTraits.isHeader.getter();
  v27 = v31;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v35 + 8))(v26, v36);
  sub_100007E14(v7, &qword_1001439E8);
  v28 = v32;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_100007E14(v27, &qword_1001439E8);
  sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &unk_1000F7370, sub_10003D89C);
  View.accessibilityShowsLargeContentViewer()();
  return sub_100007E14(v28, &qword_1001439E8);
}

uint64_t sub_100038B10(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  type metadata accessor for LibraryListView();
  sub_1000315A4();
  sub_100020604(a4, a5);
}

uint64_t sub_100038B88@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 <= 0.0;
  return result;
}

uint64_t sub_100038BBC(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for LibraryListView();
  sub_1000315A4();
  sub_10001C6C4((v2 & 1) == 0);
}

uint64_t sub_100038C18@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LibraryListView();
  sub_1000315A4();
  v2 = sub_10001E144();

  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v3 = type metadata accessor for TrackPageView();
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a1 + v5) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a1 + v6) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0);
  swift_storeEnumTagMultiPayload();
  v7 = (a1 + v3[9]);
  *v7 = [objc_allocWithZone(CLLocationManager) init];
  type metadata accessor for LocationManager();
  Logger.init(subsystem:category:)();
  v8 = (a1 + v3[10]);
  sub_100002D44(&qword_1001420E8);
  *(swift_allocObject() + 16) = 0;
  sub_100004610(&qword_1001420F0, &qword_1001420E8);
  result = ObservedObject.init(wrappedValue:)();
  *v8 = result;
  v8[1] = v10;
  *(a1 + v3[8]) = v2;
  v11 = (a1 + v3[11]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_100038E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100002D44(&qword_100143A30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a1;
  sub_100002D44(&qword_100143A68);
  v12 = sub_100004370(&qword_100143A70);
  v13 = sub_100004370(&qword_100143A78);
  v14 = sub_10003E220();
  v15 = sub_100004610(&qword_100143A98, &qword_100143A78);
  v17[8] = v12;
  v17[9] = v13;
  v17[10] = v14;
  v17[11] = v15;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  sub_100004610(&qword_100143A38, &qword_100143A30);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10003908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = type metadata accessor for LibraryListView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v25 = sub_100002D44(&qword_100143A90);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = v24 - v11;
  v27 = sub_100002D44(&qword_100143A70);
  v13 = __chkstk_darwin(v27);
  v15 = v24 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v8 + 32))(v17 + v16, v10, v7);
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v32 = a2;
  v33 = a3;
  v24[1] = sub_100002D44(&qword_100143AA0);
  sub_100002D44(&qword_100143AA8);
  v18 = sub_100004370(&qword_100143AB0);
  v19 = sub_100004370(&qword_100143AB8);
  v20 = sub_10003E3A8();
  v21 = sub_10003E460();
  v37 = &type metadata for Image;
  v38 = &type metadata for Solarium;
  v39 = v18;
  v40 = v19;
  v41 = &protocol witness table for Image;
  v42 = &protocol witness table for Solarium;
  v43 = v20;
  v44 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_100143B10, &qword_100143AA8);
  Menu.init(onPresentationChanged:content:label:)();
  sub_100004610(&qword_100143A88, &qword_100143A90);
  v22 = v25;
  View.accessibilityIdentifier(_:)();
  (*(v26 + 8))(v12, v22);
  v29 = a2;
  v30 = a3;
  v31 = a1;
  sub_100002D44(&qword_100143A78);
  sub_10003E220();
  sub_100004610(&qword_100143A98, &qword_100143A78);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_100007E14(v15, &qword_100143A70);
}

uint64_t sub_100039538(uint64_t result)
{
  if (result)
  {
    type metadata accessor for LibraryListView();
    sub_1000315A4();
    sub_100020604(0x11u, 0);
  }

  return result;
}

uint64_t sub_1000395B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v47 = a3;
  v46 = a2;
  v52 = a4;
  v5 = sub_100002D44(&qword_100143B20);
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v43 - v8;
  v48 = sub_100002D44(&qword_100143B28);
  v45 = *(v48 - 8);
  v9 = v45;
  __chkstk_darwin(v48);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  type metadata accessor for LibraryListView();
  v14 = sub_100031720();
  v16 = v15;
  v18 = v17;
  swift_getKeyPath();
  v64 = v14;
  v65 = v16;
  v66 = v18 & 0x1FF;
  sub_100002D44(&qword_100143B30);
  Binding.subscript.getter();

  v19 = v61;
  v20 = v62;
  v21 = v63;

  v58 = v19;
  v59 = v20;
  v60 = v21;
  sub_100002D44(&qword_100143B38);
  sub_100020CE8();
  sub_10003E740();
  v44 = v13;
  Picker.init(selection:label:content:)();
  v22 = sub_100031720();
  v24 = v23;
  LOWORD(v19) = v25;
  swift_getKeyPath();
  v64 = v22;
  v65 = v24;
  v66 = v19 & 0x1FF;
  Binding.subscript.getter();

  v26 = v61;
  v27 = v62;
  v28 = v63;

  v55 = v46;
  v56 = v47;
  v57 = a1;
  v58 = v26;
  v59 = v27;
  v60 = v28;
  sub_100002D44(&qword_100143B58);
  sub_100004610(&qword_100143B60, &qword_100143B58);
  v29 = v54;
  Picker.init(selection:label:content:)();
  v30 = *(v9 + 16);
  v31 = v53;
  v32 = v48;
  v30(v53, v13, v48);
  v34 = v49;
  v33 = v50;
  v35 = *(v50 + 16);
  v36 = v29;
  v37 = v51;
  v35(v49, v36, v51);
  v38 = v52;
  v30(v52, v31, v32);
  v39 = sub_100002D44(&qword_100143B68);
  v35(&v38[*(v39 + 48)], v34, v37);
  v40 = *(v33 + 8);
  v40(v54, v37);
  v41 = *(v45 + 8);
  v41(v44, v32);
  v40(v34, v37);
  return (v41)(v53, v32);
}

uint64_t sub_100039AAC()
{
  sub_100002D44(&qword_100143000);
  sub_100002D44(&qword_100143B50);
  sub_100004610(&qword_100143B88, &qword_100143000);
  sub_10003E7C4();
  sub_10003E88C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100039BA0(char *a1)
{
  sub_100019C60(*a1);
  sub_10000B730();
  v1 = Text.init<A>(_:)();
  v3 = v2 & 1;
  v5 = v4;
  View.accessibilityIdentifier(_:)();

  sub_10000BFBC(v1, v5, v3);
}

uint64_t sub_100039CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a1;
  v32 = a2;
  v2 = sub_100002D44(&qword_100143B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - v4;
  v6 = sub_100002D44(&qword_100143B78);
  __chkstk_darwin(v6 - 8);
  v31 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v30 = v28 - v9;
  __chkstk_darwin(v10);
  v29 = v28 - v11;
  __chkstk_darwin(v12);
  v28[0] = v28 - v13;
  type metadata accessor for LibraryListView();
  sub_1000315A4();

  *v5 = Text.init(_:tableName:bundle:comment:)();
  *(v5 + 1) = v14;
  v5[16] = v15 & 1;
  *(v5 + 3) = v16;
  *(v5 + 16) = 257;
  v33 = &type metadata for Text;
  v34 = &type metadata for Bool;
  v35 = &protocol witness table for Text;
  v36 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  v17 = *(v3 + 8);
  v17(v5, v2);
  sub_1000315A4();

  *v5 = Text.init(_:tableName:bundle:comment:)();
  *(v5 + 1) = v18;
  v5[16] = v19 & 1;
  *(v5 + 3) = v20;
  *(v5 + 16) = 256;
  v21 = v29;
  View.accessibilityIdentifier(_:)();
  v17(v5, v2);
  v22 = v28[0];
  v23 = v30;
  sub_100007FDC(v28[0], v30, &qword_100143B78);
  v24 = v31;
  sub_100007FDC(v21, v31, &qword_100143B78);
  v25 = v32;
  sub_100007FDC(v23, v32, &qword_100143B78);
  v26 = sub_100002D44(&qword_100143B80);
  sub_100007FDC(v24, v25 + *(v26 + 48), &qword_100143B78);
  sub_100007E14(v21, &qword_100143B78);
  sub_100007E14(v22, &qword_100143B78);
  sub_100007E14(v24, &qword_100143B78);
  return sub_100007E14(v23, &qword_100143B78);
}

uint64_t sub_10003A138()
{
  Image.init(systemName:)();
  Solarium.init()();
  sub_100002D44(&qword_100143AB0);
  sub_100002D44(&qword_100143AB8);
  sub_10003E3A8();
  sub_10003E460();
  View.staticIf<A, B, C>(_:then:else:)();
}

uint64_t sub_10003A248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  static Font.body.getter();
  static Font.Weight.regular.getter();
  v4 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  *a2 = v3;
  a2[1] = KeyPath;
  a2[2] = v4;
}

uint64_t sub_10003A2BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SymbolVariants();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v22[1] = *a1;
  static SymbolVariants.circle.getter();
  SymbolVariants.fill.getter();
  v11 = *(v5 + 8);
  v11(v10, v4);
  View.symbolVariant(_:)();
  v11(v7, v4);
  v12 = (a2 + *(sub_100002D44(&qword_100143AE8) + 36));
  v13 = *(sub_100002D44(&qword_100143AF8) + 28);
  static SymbolRenderingMode.palette.getter();
  v14 = type metadata accessor for SymbolRenderingMode();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  *v12 = swift_getKeyPath();
  LODWORD(v12) = static HierarchicalShapeStyle.primary.getter();
  v15 = [objc_opt_self() tertiarySystemFillColor];
  v16 = Color.init(uiColor:)();
  v17 = a2 + *(sub_100002D44(&qword_100143AD8) + 36);
  *v17 = v12;
  *(v17 + 8) = v16;
  static Font.title2.getter();
  static Font.Weight.semibold.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = sub_100002D44(&qword_100143AB8);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t sub_10003A530()
{
  sub_100002D44(&qword_1001422B8);
  swift_getOpaqueTypeConformance2();
  return Label.init(title:icon:)();
}

uint64_t sub_10003A600@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LibraryListView();
  sub_1000315A4();

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10003A6C0()
{
  v0 = type metadata accessor for SymbolVariants();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v8 - v5;
  v8[1] = Image.init(systemName:)();
  if (static Solarium.isEnabled.getter())
  {
    static SymbolVariants.none.getter();
  }

  else
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
    (*(v1 + 8))(v3, v0);
  }

  View.symbolVariant(_:)();
  (*(v1 + 8))(v6, v0);
}

uint64_t sub_10003A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for LibraryListView();
  sub_1000315A4();
  v36 = sub_10001E158();
  v9 = v36;

  v11 = *(v8 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - v13;
  (*(v11 + 16))(&v32 - v13, a1, v8, v12);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v11 + 32))(&v17[v16], v14, v8);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v32 - v21;
  static TaskPriority.userInitiated.getter();
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    v34 = type metadata accessor for _TaskModifier2();
    v35 = &v32;
    v33 = *(v34 - 8);
    __chkstk_darwin(v34);
    v32 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v38 = 0xD000000000000033;
    v39 = 0x80000001001006A0;
    v37 = 185;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v26 = __chkstk_darwin(v25);
    (*(v19 + 16))(&v32 - v21, &v32 - v21, v18, v26);
    v27 = v32;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v19 + 8))(v22, v18);
    v28 = sub_100002D44(&qword_100141E08);
    result = (*(v33 + 32))(&a4[*(v28 + 36)], v27, v34);
  }

  else
  {
    v30 = &a4[*(sub_100002D44(&qword_100141E10) + 36)];
    v31 = type metadata accessor for _TaskModifier();
    result = (*(v19 + 32))(&v30[*(v31 + 20)], &v32 - v21, v18);
    *v30 = &unk_1000F7438;
    *(v30 + 1) = v17;
  }

  *a4 = v36;
  return result;
}

uint64_t sub_10003AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003AD08, v7, v6);
}

uint64_t sub_10003AD08()
{

  type metadata accessor for LibraryListView();
  v1 = sub_1000315A4();
  sub_10001BA4C(v1);

  v2 = *(v0 + 8);

  return v2();
}

unsigned __int8 *sub_10003AD98(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (*result != *a2)
  {
    type metadata accessor for LibraryListView();

    sub_100002D44(&qword_100143A60);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10003AE78()
{
  v0 = type metadata accessor for ScenePhase();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ScenePhase.background(_:), v0, v2);
  v5 = static ScenePhase.== infix(_:_:)();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    type metadata accessor for LibraryListView();
    sub_1000315A4();
    sub_10001C650();

    return sub_1000316AC();
  }

  return result;
}

uint64_t sub_10003AFCC@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v48 = a3;
  v43 = sub_100002D44(&qword_100143CA0);
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - v5;
  v6 = sub_100002D44(&qword_100143CA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_100002D44(&qword_100143CB0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_100002D44(&qword_100143CB8);
  v44 = *(v15 - 8);
  v45 = v15;
  __chkstk_darwin(v15);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4008000000000000;
  v14[16] = 0;
  v20 = sub_100002D44(&qword_100143CC0);
  sub_10003B460(a1, a2, &v14[*(v20 + 44)]);
  Solarium.init()();
  sub_100002D44(&qword_100143CC8);
  sub_100004610(&qword_100143CD0, &qword_100143CB0);
  sub_100040998();
  v21 = v19;
  View.staticIf<A, B>(_:then:)();
  sub_100007E14(v14, &qword_100143CB0);
  if (static Solarium.isEnabled.getter())
  {
    v22 = 1;
    v23 = v43;
  }

  else
  {
    v24 = v42;
    Divider.init()();
    v25 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v26 = v43;
    v27 = v24 + *(v43 + 36);
    *v27 = v25;
    *(v27 + 8) = v28;
    *(v27 + 16) = v29;
    *(v27 + 24) = v30;
    *(v27 + 32) = v31;
    *(v27 + 40) = 0;
    sub_10002F250(v24, v11, &qword_100143CA0);
    v22 = 0;
    v23 = v26;
  }

  (*(v47 + 56))(v11, v22, 1, v23);
  v32 = v44;
  v33 = v45;
  v34 = *(v44 + 16);
  v35 = v46;
  v34(v46, v21, v45);
  sub_100007FDC(v11, v8, &qword_100143CA8);
  v36 = v8;
  v37 = v48;
  v34(v48, v35, v33);
  v38 = sub_100002D44(&qword_100143CE0);
  sub_100007FDC(v36, &v37[*(v38 + 48)], &qword_100143CA8);
  sub_100007E14(v11, &qword_100143CA8);
  v39 = *(v32 + 8);
  v39(v21, v33);
  sub_100007E14(v36, &qword_100143CA8);
  return (v39)(v35, v33);
}

uint64_t sub_10003B460@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v62 = a2;
  v63 = a1;
  v66 = a3;
  v3 = sub_100002D44(&qword_100143CE8);
  __chkstk_darwin(v3 - 8);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = (&v57 - v6);
  v59 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v59);
  v74 = &v57 - v7;
  v8 = type metadata accessor for AccessibilityTraits();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100002D44(&qword_100143B50);
  __chkstk_darwin(v73);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v57 - v13;
  __chkstk_darwin(v14);
  v68 = &v57 - v15;
  __chkstk_darwin(v16);
  v72 = &v57 - v17;
  v61 = sub_100002D44(&qword_100143CF0);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v57 - v20;
  LocalizedStringKey.init(_:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  static Font.largeTitle.getter();
  if (static Solarium.isEnabled.getter())
  {
    static Font.Weight.bold.getter();
  }

  else
  {
    static Font.Weight.heavy.getter();
  }

  Font.weight(_:)();

  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10000BFBC(v21, v23, v25 & 1);

  v76 = v26;
  v77 = v28;
  v78 = v30 & 1;
  v79 = v32;
  View.accessibilityIdentifier(_:)();
  sub_10000BFBC(v26, v28, v30 & 1);

  v33 = [objc_opt_self() mainBundle];
  v80._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x485F4D415A414853;
  v34._object = 0xEE0059524F545349;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v80);

  v36 = v67;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_100007E14(v11, &qword_100143B50);
  v37 = v69;
  static AccessibilityTraits.isHeader.getter();
  v38 = v68;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v70 + 8))(v37, v71);
  sub_100007E14(v36, &qword_100143B50);
  v39 = v72;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_100007E14(v38, &qword_100143B50);
  v40 = enum case for DynamicTypeSize.accessibility2(_:);
  v41 = type metadata accessor for DynamicTypeSize();
  v42 = v74;
  (*(*(v41 - 8) + 104))(v74, v40, v41);
  sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10003E7C4();
    sub_100004610(&qword_1001429F0, &qword_100142950);
    v44 = v75;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v42, &qword_100142950);
    sub_100007E14(v39, &qword_100143B50);
    v45 = static VerticalAlignment.firstTextLineCenter.getter();
    v46 = v64;
    *v64 = v45;
    *(v46 + 8) = 0x4020000000000000;
    *(v46 + 16) = 0;
    v47 = sub_100002D44(&qword_100143CF8);
    sub_10003BC50(v63, v62 & 1, (v46 + *(v47 + 44)));
    v48 = v60;
    v49 = *(v60 + 16);
    v50 = v58;
    v51 = v44;
    v52 = v61;
    v49(v58, v51, v61);
    v53 = v65;
    sub_100007FDC(v46, v65, &qword_100143CE8);
    v54 = v66;
    v49(v66, v50, v52);
    v55 = sub_100002D44(&qword_100143D00);
    sub_100007FDC(v53, &v54[*(v55 + 48)], &qword_100143CE8);
    sub_100007E14(v46, &qword_100143CE8);
    v56 = *(v48 + 8);
    v56(v75, v52);
    sub_100007E14(v53, &qword_100143CE8);
    return (v56)(v50, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003BC50@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v90 = a2;
  v86 = a3;
  v81 = type metadata accessor for CircularProgressViewStyle();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100002D44(&qword_100143D08);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = v71 - v5;
  v78 = sub_100002D44(&qword_100143D10);
  __chkstk_darwin(v78);
  v80 = v71 - v6;
  v96 = sub_100002D44(&qword_100143D18);
  v91 = *(v96 - 8);
  __chkstk_darwin(v96);
  v73 = v71 - v7;
  v8 = sub_100002D44(&qword_100143D20);
  __chkstk_darwin(v8 - 8);
  v85 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = v71 - v11;
  v95 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v95);
  v13 = v71 - v12;
  v93 = sub_100002D44(&qword_100143D28);
  __chkstk_darwin(v93);
  v15 = v71 - v14;
  v89 = sub_100002D44(&qword_100143D30);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v17 = v71 - v16;
  v84 = sub_100002D44(&qword_100143D38);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = v71 - v20;
  v21.super.isa = [objc_opt_self() mainBundle];
  v104._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000100100840;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v104._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v104);

  sub_100002D44(&qword_100143D40);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000F57C0;
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = a1;
  v25 = static String.localizedStringWithFormat(_:_:)();
  v27 = v26;

  *&v102[0] = v25;
  *(&v102[0] + 1) = v27;
  sub_10000B730();
  v28 = Text.init<A>(_:)();
  v30 = v29;
  LOBYTE(v21.super.isa) = v31;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v35 = Font.weight(_:)();

  v36 = swift_getKeyPath();
  LOBYTE(v21.super.isa) &= 1u;
  LOBYTE(v102[0]) = v21.super.isa;
  v37 = Color.init(_:bundle:)();
  *&v97 = v28;
  *(&v97 + 1) = v30;
  LOBYTE(v98) = v21.super.isa;
  *(&v98 + 1) = v33;
  *&v99 = KeyPath;
  BYTE8(v99) = 0;
  *&v100 = v36;
  *(&v100 + 1) = v35;
  v101 = v37;
  sub_100002D44(&qword_100143D48);
  sub_100040A58();
  View.accessibilityIdentifier(_:)();
  v102[2] = v99;
  v102[3] = v100;
  v103 = v101;
  v102[0] = v97;
  v102[1] = v98;
  v38 = v93;
  sub_100007E14(v102, &qword_100143D48);
  v39 = sub_10003D7E8(&qword_100143D88, &qword_100143D28, &unk_1000F78C8, sub_100040A58);
  v87 = v17;
  View.accessibilityShowsLargeContentViewer()();
  sub_100007E14(v15, &qword_100143D28);
  v40 = enum case for DynamicTypeSize.accessibility1(_:);
  v41 = type metadata accessor for DynamicTypeSize();
  v42 = *(v41 - 8);
  v43 = *(v42 + 104);
  v44 = v42 + 104;
  v43(v13, v40, v41);
  v45 = sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v71[0] = v45;
    v71[1] = v44;
    v72 = v43;
    *&v97 = v38;
    *(&v97 + 1) = v39;
    v47 = 1;
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_1001429F0, &qword_100142950);
    v48 = v94;
    v49 = v89;
    v50 = v87;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v13, &qword_100142950);
    (*(v88 + 8))(v50, v49);
    v51 = v96;
    v52 = v92;
    v53 = v91;
    v54 = v48;
    if ((v90 & 1) == 0)
    {
LABEL_5:
      (*(v53 + 56))(v52, v47, 1, v51);
      v61 = v83;
      v62 = *(v83 + 16);
      v63 = v82;
      v64 = v84;
      v62(v82, v54, v84);
      v65 = v52;
      v66 = v85;
      sub_100007FDC(v52, v85, &qword_100143D20);
      v67 = v54;
      v68 = v86;
      v62(v86, v63, v64);
      v69 = sub_100002D44(&qword_100143D90);
      sub_100007FDC(v66, &v68[*(v69 + 48)], &qword_100143D20);
      sub_100007E14(v65, &qword_100143D20);
      v70 = *(v61 + 8);
      v70(v67, v64);
      sub_100007E14(v66, &qword_100143D20);
      return (v70)(v63, v64);
    }

    v55 = v74;
    ProgressView<>.init<>()();
    v56 = v77;
    CircularProgressViewStyle.init()();
    sub_100004610(&qword_100143D98, &qword_100143D08);
    sub_100040C80(&qword_100143DA0, &type metadata accessor for CircularProgressViewStyle);
    v57 = v76;
    v58 = v81;
    v59 = v80;
    View.progressViewStyle<A>(_:)();
    (*(v79 + 8))(v56, v58);
    (*(v75 + 8))(v55, v57);
    *(v59 + *(v78 + 36)) = 0x3FE0000000000000;
    v72(v13, enum case for DynamicTypeSize.xxxLarge(_:), v41);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100040CC8();
      v60 = v73;
      View.dynamicTypeSize<A>(_:)();
      sub_100007E14(v13, &qword_100142950);
      sub_100007E14(v59, &qword_100143D10);
      v51 = v96;
      (*(v53 + 32))(v52, v60, v96);
      v47 = 0;
      v54 = v94;
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_10003C858@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100007FDC(a1, a2, &qword_100143CB0);
  v4 = (a2 + *(sub_100002D44(&qword_100143CC8) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

uint64_t sub_10003C920@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v5 = sub_100002D44(&qword_100143C98);
  return sub_10003AFCC(v3, v4, (a1 + *(v5 + 44)));
}

uint64_t sub_10003C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v29 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v29);
  v4 = &v27 - v3;
  v27 = sub_100002D44(&qword_100143C30);
  __chkstk_darwin(v27);
  v6 = &v27 - v5;
  v28 = sub_100002D44(&qword_100143C38);
  __chkstk_darwin(v28);
  v8 = &v27 - v7;
  v30 = sub_100002D44(&qword_100143C40);
  __chkstk_darwin(v30);
  v10 = &v27 - v9;
  v31 = sub_100002D44(&qword_100143C48);
  __chkstk_darwin(v31);
  v12 = &v27 - v11;
  v13 = static VerticalAlignment.center.getter();
  v36 = 0;
  sub_10003CF14(&v37);
  v39 = v37;
  v40 = v38[0];
  v41 = v38[1];
  v42 = v38[2];
  v43[0] = v37;
  v43[1] = v38[0];
  v43[2] = v38[1];
  v43[3] = v38[2];
  sub_100007FDC(&v39, v44, &qword_100143C50);
  sub_100007E14(v43, &qword_100143C50);
  *&v35[55] = v42;
  *&v35[39] = v41;
  *&v35[23] = v40;
  *&v35[7] = v39;
  *(&v38[1] + 1) = *&v35[16];
  *(&v38[2] + 1) = *&v35[32];
  *(&v38[3] + 1) = *&v35[48];
  *&v37 = v13;
  *(&v37 + 1) = 0x4028000000000000;
  LOBYTE(v38[0]) = v36;
  *&v38[4] = *(&v42 + 1);
  *(v38 + 1) = *v35;
  sub_100002D44(&qword_100143C58);
  sub_100004610(&qword_100143C60, &qword_100143C58);
  View.accessibilityIdentifier(_:)();
  v44[2] = v38[1];
  v44[3] = v38[2];
  v44[4] = v38[3];
  v45 = *&v38[4];
  v44[0] = v37;
  v44[1] = v38[0];
  sub_100007E14(v44, &qword_100143C58);
  v14 = enum case for DynamicTypeSize.accessibility3(_:);
  v15 = type metadata accessor for DynamicTypeSize();
  (*(*(v15 - 8) + 104))(v4, v14, v15);
  sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100040644();
    sub_100004610(&qword_1001429F0, &qword_100142950);
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v4, &qword_100142950);
    sub_100007E14(v6, &qword_100143C30);
    v17 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v18 = &v8[*(v28 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10002F250(v8, v10, &qword_100143C38);
    v23 = &v10[*(v30 + 36)];
    v24 = v38[4];
    *(v23 + 4) = v38[3];
    *(v23 + 5) = v24;
    *(v23 + 6) = v38[5];
    v25 = v38[0];
    *v23 = v37;
    *(v23 + 1) = v25;
    v26 = v38[2];
    *(v23 + 2) = v38[1];
    *(v23 + 3) = v26;
    sub_10002F250(v10, v12, &qword_100143C40);
    v12[*(v31 + 36)] = 0;
    sub_10004072C();
    View.onTapGesture(count:perform:)();
    return sub_100007E14(v12, &qword_100143C48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003CF14@<X0>(uint64_t a1@<X8>)
{
  v18 = Image.init(systemName:)();
  v17 = Color.init(_:bundle:)();
  static Font.title2.getter();
  static Font.Weight.semibold.getter();
  v16 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  LocalizedStringKey.init(_:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.callout.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000BFBC(v2, v4, v6 & 1);

  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v16;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v13;

  sub_100003B04(v7, v9, v11 & 1);

  sub_10000BFBC(v7, v9, v11 & 1);
}

uint64_t sub_10003D114@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

void sub_10003D178()
{
  sub_10003D50C(319, &qword_100143808, type metadata accessor for ViewConfiguration);
  if (v0 <= 0x3F)
  {
    sub_10003D50C(319, &qword_100143958, &type metadata accessor for ScenePhase);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LibraryListViewModel();
      type metadata accessor for Bindable();
      if (v2 <= 0x3F)
      {
        sub_10003D560();
        if (v3 <= 0x3F)
        {
          sub_100008ADC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10003D2A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002D44(qword_1001438D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  type metadata accessor for LibraryListViewModel();
  v10 = type metadata accessor for Bindable();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003D3E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002D44(qword_1001438D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    type metadata accessor for LibraryListViewModel();
    result = type metadata accessor for Bindable();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11] + 8) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10003D50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003D560()
{
  if (!qword_100143960)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100143960);
    }
  }
}

unint64_t sub_10003D5F4()
{
  result = qword_100143990;
  if (!qword_100143990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143990);
  }

  return result;
}

unint64_t sub_10003D648()
{
  result = qword_1001439B0;
  if (!qword_1001439B0)
  {
    sub_100004370(&qword_1001439A0);
    sub_10003D700();
    sub_100004610(&qword_1001429D0, &qword_1001429D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439B0);
  }

  return result;
}

unint64_t sub_10003D700()
{
  result = qword_1001439B8;
  if (!qword_1001439B8)
  {
    sub_100004370(&qword_1001439C0);
    sub_100004610(&qword_1001439C8, &qword_1001439D0);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439B8);
  }

  return result;
}

uint64_t sub_10003D7E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    a4();
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D89C()
{
  result = qword_1001439F8;
  if (!qword_1001439F8)
  {
    sub_100004370(&qword_100143A00);
    sub_100004610(&qword_1001439A8, &qword_100143998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439F8);
  }

  return result;
}

unint64_t sub_10003D954()
{
  result = qword_100142FB0;
  if (!qword_100142FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100142FB0);
  }

  return result;
}

unint64_t sub_10003D9A0()
{
  result = qword_100143A48;
  if (!qword_100143A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143A48);
  }

  return result;
}

unint64_t sub_10003D9F4()
{
  result = qword_100143A50;
  if (!qword_100143A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143A50);
  }

  return result;
}

__n128 sub_10003DA7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unsigned __int8 *sub_10003DA98(unsigned __int8 *a1, unsigned __int8 *a2)
{
  type metadata accessor for LibraryListView();

  return sub_10003AD98(a1, a2);
}

uint64_t sub_10003DB34()
{
  type metadata accessor for LibraryListView();

  return sub_10003AE78();
}

uint64_t sub_10003DBD0()
{
  v1 = type metadata accessor for LibraryListView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 56) + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_10003DC60@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_100002D44(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_100007FDC(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_10003DDB0(uint64_t a1, char *a2)
{
  type metadata accessor for LibraryListView();

  return sub_100038BBC(a1, a2);
}

uint64_t sub_10003DE70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001A168();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003DED4@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LibraryListView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10003A834(v6, v3, v4, a1);
}

uint64_t sub_10003DF60()
{
  v1 = type metadata accessor for LibraryListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[9];
  sub_100002D44(&qword_1001420E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[10];
  type metadata accessor for LibraryListViewModel();
  v9 = type metadata accessor for Bindable();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  if (*(v5 + v1[12]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003E11C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for LibraryListView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100012EC8;

  return sub_10003AC6C(v6, v7, v0 + v5, v2, v3);
}

unint64_t sub_10003E220()
{
  result = qword_100143A80;
  if (!qword_100143A80)
  {
    sub_100004370(&qword_100143A70);
    sub_100004610(&qword_100143A88, &qword_100143A90);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143A80);
  }

  return result;
}

uint64_t sub_10003E308(uint64_t a1)
{
  type metadata accessor for LibraryListView();

  return sub_100039538(a1);
}

unint64_t sub_10003E3A8()
{
  result = qword_100143AC0;
  if (!qword_100143AC0)
  {
    sub_100004370(&qword_100143AB0);
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AC0);
  }

  return result;
}

unint64_t sub_10003E460()
{
  result = qword_100143AC8;
  if (!qword_100143AC8)
  {
    sub_100004370(&qword_100143AB8);
    sub_10003E518();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AC8);
  }

  return result;
}

unint64_t sub_10003E518()
{
  result = qword_100143AD0;
  if (!qword_100143AD0)
  {
    sub_100004370(&qword_100143AD8);
    sub_10003E5D0();
    sub_100004610(&qword_100143B00, &qword_100143B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AD0);
  }

  return result;
}

unint64_t sub_10003E5D0()
{
  result = qword_100143AE0;
  if (!qword_100143AE0)
  {
    sub_100004370(&qword_100143AE8);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143AF0, &qword_100143AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AE0);
  }

  return result;
}

unint64_t sub_10003E740()
{
  result = qword_100143B40;
  if (!qword_100143B40)
  {
    sub_100004370(&qword_100143B38);
    sub_10003E7C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143B40);
  }

  return result;
}

unint64_t sub_10003E7C4()
{
  result = qword_100143B48;
  if (!qword_100143B48)
  {
    sub_100004370(&qword_100143B50);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143B48);
  }

  return result;
}

unint64_t sub_10003E88C()
{
  result = qword_100143B90;
  if (!qword_100143B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143B90);
  }

  return result;
}

unint64_t sub_10003E908()
{
  result = qword_100143BB8;
  if (!qword_100143BB8)
  {
    sub_100004370(&qword_100143BB0);
    sub_10003E9C0();
    sub_100004610(&qword_1001439A8, &qword_100143998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BB8);
  }

  return result;
}

unint64_t sub_10003E9C0()
{
  result = qword_100143BC0;
  if (!qword_100143BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BC0);
  }

  return result;
}

uint64_t sub_10003EA74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LibraryListView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100035A88(a1, v8, v5, v6, a2);
}

unint64_t sub_10003EB10()
{
  result = qword_100143BE0;
  if (!qword_100143BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BE0);
  }

  return result;
}

unint64_t sub_10003EB64()
{
  result = qword_100143BE8;
  if (!qword_100143BE8)
  {
    sub_100004370(&qword_100143970);
    sub_100004610(&qword_100143BA8, &qword_100143BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BE8);
  }

  return result;
}

unint64_t sub_10003EC20()
{
  result = qword_100143BF0;
  if (!qword_100143BF0)
  {
    sub_100004370(&qword_100143978);
    sub_10003ECA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BF0);
  }

  return result;
}

unint64_t sub_10003ECA4()
{
  result = qword_100143BF8;
  if (!qword_100143BF8)
  {
    sub_100004370(&qword_100143B98);
    sub_10003ED5C();
    sub_100004610(&qword_100143BD8, &qword_100143A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BF8);
  }

  return result;
}

unint64_t sub_10003ED5C()
{
  result = qword_100143C00;
  if (!qword_100143C00)
  {
    sub_100004370(&qword_100143BC8);
    sub_10003EE14();
    sub_100004610(&qword_100143BD0, &qword_100143A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C00);
  }

  return result;
}

unint64_t sub_10003EE14()
{
  result = qword_100143C08;
  if (!qword_100143C08)
  {
    sub_100004370(&qword_100143C10);
    sub_10003E908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C08);
  }

  return result;
}

uint64_t sub_10003EEDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for LibraryListView() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_10003EFC0()
{
  v1 = type metadata accessor for LibraryListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[9];
  sub_100002D44(&qword_1001420E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[10];
  type metadata accessor for LibraryListViewModel();
  v9 = type metadata accessor for Bindable();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  if (*(v5 + v1[12]))
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_10003F1A0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for LibraryListView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v5, v6, v2, v3);
}

uint64_t sub_10003F264@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10003F29C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003F2F4()
{
  v1 = type metadata accessor for LibraryListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[9];
  sub_100002D44(&qword_1001420E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[10];
  type metadata accessor for LibraryListViewModel();
  v9 = type metadata accessor for Bindable();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  if (*(v5 + v1[12]))
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_10003F4C4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for LibraryListView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000789C;

  return sub_1000382E0(a1, v9, v10, v1 + v8, v11, v6, v5);
}

uint64_t sub_10003F604@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003F664(unsigned __int8 a1, unsigned __int8 a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LibraryListView() - 8);
  return sub_100038B10(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a1, a2);
}

uint64_t sub_10003F700()
{
  v1 = type metadata accessor for LibraryListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[9];
  sub_100002D44(&qword_1001420E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[10];
  type metadata accessor for LibraryListViewModel();
  v9 = type metadata accessor for Bindable();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  if (*(v5 + v1[12]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003F8B4()
{
  type metadata accessor for LibraryListView();

  return sub_100035A3C();
}

uint64_t initializeBufferWithCopyOfBuffer for LibraryHeader(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003FA04()
{
  type metadata accessor for NavigationPath();
  sub_100004370(&qword_100143970);
  sub_100004370(&qword_100143978);
  sub_100004370(&qword_100143980);
  sub_100004370(&qword_100143988);
  sub_100004370(&qword_100142FC8);
  type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu();
  type metadata accessor for ModifiedContent();
  sub_10003D5F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100142950);
  swift_getWitnessTable();
  sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_100004610(&qword_1001429F0, &qword_100142950);
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_1001439A0);
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_1001439A8, &qword_100143998);
  swift_getWitnessTable();
  sub_10003D648();
  swift_getOpaqueTypeMetadata2();
  sub_100004610(&qword_1001439D8, &qword_100142FC8);
  sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID);
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_100004370(&qword_1001439E8);
  sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &unk_1000F7370, sub_10003D89C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10);
  type metadata accessor for ModifiedContent();
  sub_100004610(&qword_100143A18, &qword_100143980);
  type metadata accessor for ForEach();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for ShazamUpsellOverlayModifier(255);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100040C80(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10000B730();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10003D954();
  type metadata accessor for TrackPageView();
  swift_getOpaqueTypeConformance2();
  sub_100040C80(&qword_100142FB8, sub_10003D954);
  sub_100040C80(&qword_100142068, type metadata accessor for TrackPageView);
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143A28);
  swift_getOpaqueTypeConformance2();
  sub_100004370(&qword_100143A30);
  sub_100004610(&qword_100143A38, &qword_100143A30);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143A40);
  swift_getOpaqueTypeConformance2();
  sub_10003D9A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  sub_100004370(&qword_1001429D8);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100004610(&qword_1001429D0, &qword_1001429D8);
  swift_getWitnessTable();
  sub_10003D9F4();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScenePhase();
  swift_getOpaqueTypeConformance2();
  sub_100040C80(&qword_100143A58, &type metadata accessor for ScenePhase);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_100040644()
{
  result = qword_100143C68;
  if (!qword_100143C68)
  {
    sub_100004370(&qword_100143C30);
    sub_100004610(&qword_100143C60, &qword_100143C58);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C68);
  }

  return result;
}

unint64_t sub_10004072C()
{
  result = qword_100143C70;
  if (!qword_100143C70)
  {
    sub_100004370(&qword_100143C48);
    sub_1000407E4();
    sub_100004610(&qword_100143C88, &qword_100143C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C70);
  }

  return result;
}

unint64_t sub_1000407E4()
{
  result = qword_100143C78;
  if (!qword_100143C78)
  {
    sub_100004370(&qword_100143C40);
    sub_100040870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C78);
  }

  return result;
}

unint64_t sub_100040870()
{
  result = qword_100143C80;
  if (!qword_100143C80)
  {
    sub_100004370(&qword_100143C38);
    sub_100004370(&qword_100143C30);
    sub_100004370(&qword_100142950);
    sub_100040644();
    sub_100004610(&qword_1001429F0, &qword_100142950);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C80);
  }

  return result;
}

unint64_t sub_100040998()
{
  result = qword_100143CD8;
  if (!qword_100143CD8)
  {
    sub_100004370(&qword_100143CC8);
    sub_100004610(&qword_100143CD0, &qword_100143CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143CD8);
  }

  return result;
}