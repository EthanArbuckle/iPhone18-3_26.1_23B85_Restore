id sub_10001B798()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:static NSNotificationName.ClusterEvent];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TripModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for TripModel()
{
  result = qword_10005B498;
  if (!qword_10005B498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_10001CB94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = 0;
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10001CC70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v3)
    {
      dispatch thunk of CarouselModel.activeIndex.getter();
    }
  }

  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  sub_100034D00(0xD000000000000013, 0x8000000100043070, 0xD000000000000011, 0x8000000100042FF0, 317);

  if (qword_10005A3B0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10001CE40()
{
  v1 = OBJC_IVAR____TtC4Trip9TripModel_hasEmittedFinalizedSignpost;
  if ((*(v0 + OBJC_IVAR____TtC4Trip9TripModel_hasEmittedFinalizedSignpost) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Trip9TripModel_tripComputer);
    if (v2)
    {
      v3 = v2;
      if ([v3 receivedAllValues])
      {
        v4 = v0 + OBJC_IVAR____TtC4Trip9TripModel__carObservable;
        swift_beginAccess();
        v5 = *(v4 + 8);
        v6 = v0;
        v7 = CAFCarObservable.observed.getter();

        CAFSignpostEmit_Finalized();
        *(v6 + v1) = 1;
        return;
      }
    }

    sub_100034D00(0xD000000000000024, 0x8000000100042F80, 0xD000000000000017, 0x8000000100042FB0, 329);
  }
}

uint64_t sub_10001CF68(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014060(0, &qword_10005A848, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10001F6F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018318;
  aBlock[3] = &unk_100056690;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001F574(&unk_10005B580, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003090(&qword_10005A850, &qword_10003FE18);
  sub_100003894(&qword_10005B590, &qword_10005A850, &qword_10003FE18);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

void sub_10001D280(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v2 = Strong;
      sub_10001D4B4();
      goto LABEL_18;
    }

    if (a1 == 3)
    {
      swift_beginAccess();
      v1 = swift_unknownObjectWeakLoadStrong();
      if (!v1)
      {
        return;
      }

      v2 = v1;
      sub_10001D640();
      goto LABEL_18;
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v2 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v7)
    {
      goto LABEL_18;
    }

    sub_100034D00(0xD000000000000012, 0x8000000100042F40, 0x7463656C65736564, 0xEA00000000002928, 383);
    dispatch thunk of CarouselModel.hideDecorations(after:)();
    goto LABEL_15;
  }

  if (!a1)
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v2 = v3;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v7)
    {
      goto LABEL_18;
    }

    sub_100034D00(0xD000000000000013, 0x8000000100042F60, 0x72507463656C6573, 0xEF29286465737365, 362);
    dispatch thunk of CarouselModel.showDecorations(animated:)();
LABEL_15:

    goto LABEL_18;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v2 = v6;
  sub_10001D7D0();
LABEL_18:
}

uint64_t sub_10001D4B4()
{
  v0 = sub_100003090(&unk_10005B570, &qword_100040DD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6[1])
  {
    sub_100034D00(0xD000000000000014, 0x8000000100042F20, 0x7055657461746F72, 0xEA00000000002928, 369);
    (*(v1 + 104))(v4, enum case for CarouselModel.Direction.up<A>(_:), v0);
    dispatch thunk of CarouselModel.rotate(_:animated:)();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_10001D640()
{
  v0 = sub_100003090(&unk_10005B570, &qword_100040DD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6[1])
  {
    sub_100034D00(0xD000000000000016, 0x8000000100042F00, 0x6F44657461746F72, 0xEC00000029286E77, 376);
    (*(v1 + 104))(v4, enum case for CarouselModel.Direction.down<A>(_:), v0);
    dispatch thunk of CarouselModel.rotate(_:animated:)();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_10001D7D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock)
  {
    dispatch thunk of CarouselModel.activeItem.getter();
    type metadata accessor for TripCard(0);
    v0 = swift_dynamicCastClass();
    if (v0)
    {
      v1 = qword_10005A3B0;
      v2 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_trip);
      if (v1 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = aBlock;
      v4 = CAFTripObservable.observed.getter();
      v5 = [v4 hasReset];

      if (v5)
      {
        _StringGuts.grow(_:)(28);

        strcpy(&aBlock, "reseting trip ");
        HIBYTE(aBlock) = -18;
        v6 = [v2 description];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        v10._countAndFlagsBits = v7;
        v10._object = v9;
        String.append(_:)(v10);

        v11._countAndFlagsBits = 0x65646E6920746120;
        v11._object = 0xEA00000000002078;
        String.append(_:)(v11);
        v30 = v3;
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v12);

        sub_100034D00(aBlock, *(&aBlock + 1), 0xD000000000000013, 0x8000000100042EA0, 394);

        v13 = CAFTripObservable.observed.getter();
        v14 = swift_allocObject();
        *(v14 + 16) = v2;
        *(v14 + 24) = v3;
        v28 = sub_10001F660;
        v29 = v14;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v26 = sub_10001DEFC;
        v27 = &unk_100056618;
        v15 = _Block_copy(&aBlock);
        v16 = v2;

        [v13 resetWithCompletion:v15];

        _Block_release(v15);

        return;
      }

      _StringGuts.grow(_:)(45);

      strcpy(&aBlock, "reseting trip ");
      HIBYTE(aBlock) = -18;
      v17 = [v2 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);

      v22._countAndFlagsBits = 0x65646E6920746120;
      v22._object = 0xEA00000000002078;
      String.append(_:)(v22);
      v30 = v3;
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24._countAndFlagsBits = 0xD000000000000011;
      v24._object = 0x8000000100042E80;
      String.append(_:)(v24);
      sub_100034D64(aBlock, *(&aBlock + 1), 0xD000000000000013, 0x8000000100042EA0, 403);
    }

    else
    {
    }
  }
}

uint64_t sub_10001DC3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    _StringGuts.grow(_:)(50);
    v3._countAndFlagsBits = 0x676E697465736572;
    v3._object = 0xEE00207069727420;
    String.append(_:)(v3);
    v4 = [a2 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x65646E6920746120;
    v9._object = 0xEA00000000002078;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD000000000000014;
    v11._object = 0x8000000100042EE0;
    String.append(_:)(v11);
    sub_100003090(&qword_10005B568, &qword_100040D88);
    _print_unlocked<A, B>(_:_:)();
    sub_100034D64(0, 0xE000000000000000, 0xD000000000000013, 0x8000000100042EA0, 397);
  }

  else
  {
    _StringGuts.grow(_:)(38);

    strcpy(v21, "reseting trip ");
    HIBYTE(v21[1]) = -18;
    v13 = [a2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x65646E6920746120;
    v18._object = 0xEA00000000002078;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x6465656363757320;
    v20._object = 0xEA00000000006465;
    String.append(_:)(v20);
    sub_100034D00(v21[0], v21[1], 0xD000000000000013, 0x8000000100042EA0, 399);
  }
}

void sub_10001DEFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001DF98()
{
  sub_10001E120(319, &qword_10005B4A8, &qword_10005B4B0, &qword_100040C28);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10001E120(319, &qword_10005B4B8, &qword_10005B4C0, &qword_100040C60);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10001E120(319, &qword_10005B4C8, &qword_10005B4D0, &qword_100040C68);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10001E120(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000036BC(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10001E174@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TripModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001E1B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001E234(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10001E2FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001E3A0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v9;
  v10 = static Published.subscript.setter();
  return a7(v10);
}

char *sub_10001E430(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003090(&qword_10005B5D8, &qword_100040E38);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10001E534(uint64_t a1, uint64_t a2)
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

  sub_100003090(&qword_10005D490, &unk_1000404E0);
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

uint64_t sub_10001E5BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001F2CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10001E638(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10001E638(uint64_t *a1)
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
        sub_100014060(0, &qword_10005B5C8, CAFTrip_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10001E844(v8, v9, a1, v4);
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
    sub_10001E74C(0, v2, 1, a1);
  }
}

void sub_10001E74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 sortOrder];
      v13 = [v11 sortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10001E844(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10001F224(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        sub_10001EEB4((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_10001F224(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_10001F198(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 sortOrder];
      v103 = [v14 sortOrder];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 sortOrder];
        v7 = [v18 sortOrder];

        v21 = v20 >= v7;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v105 < v103)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10001E430(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_10001E430((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_10001EEB4((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10001F224(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_10001F198(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 sortOrder];
    v41 = [v39 sortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v106 + 1;
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_10001EEB4(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 sortOrder];
          v35 = [v33 sortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 sortOrder];
          v20 = [v18 sortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_10001F198(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001F224(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10001F238(unint64_t a1)
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
  v5 = sub_10001E534(v3, 0);
  sub_100030DE8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_10001F2E0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100003090(&qword_10005B4F0, &qword_100040CB0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_10001F574(&qword_10005B4F8, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10001F574(&qword_10005B500, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001F574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F688()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F6C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F78C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for TripMeasurementStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TripMeasurementStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001F94C()
{
  result = qword_10005B610;
  if (!qword_10005B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B610);
  }

  return result;
}

uint64_t sub_10001F9A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000253B8(v12, a1);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001FB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001FC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripMeasurementView()
{
  result = qword_10005B670;
  if (!qword_10005B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FD78()
{
  sub_100003DC4();
  if (v0 <= 0x3F)
  {
    sub_100003EB0();
    if (v1 <= 0x3F)
    {
      sub_10001FE2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001FE2C()
{
  if (!qword_10005B680)
  {
    type metadata accessor for CardCellConfiguration(255);
    sub_10001FEC0(&unk_10005B688, type metadata accessor for CardCellConfiguration);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005B680);
    }
  }
}

uint64_t sub_10001FEC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001FF24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003090(&qword_10005B6C8, &qword_100040F88);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12[-v6];
  v8 = type metadata accessor for TripMeasurementView();
  v9 = *(*(v2 + *(v8 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle);
  if (v9 == 5)
  {
    v9 = *(v2 + *(v8 + 28));
  }

  sub_100020088(v9, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12[15])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  sub_100008944(v7, a1, &qword_10005B6C8, &qword_100040F88);
  result = sub_100003090(&qword_10005B6D0, &qword_100040FD8);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_100020088@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  LODWORD(v94) = a1;
  v99 = a3;
  v87 = sub_100003090(&qword_10005B6D8, &qword_100040FE0);
  v3 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v83 = (&v82 - v4);
  v85 = sub_100003090(&qword_10005B6E0, &qword_100040FE8);
  v5 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = &v82 - v6;
  v92 = sub_100003090(&qword_10005B6E8, &qword_100040FF0);
  v7 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v88 = &v82 - v8;
  v84 = sub_100003090(&qword_10005B6F0, &qword_100040FF8);
  v9 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v82 = (&v82 - v10);
  v11 = sub_100003090(&qword_10005B6F8, &qword_100041000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v82 - v13;
  v96 = sub_100003090(&qword_10005B700, &qword_100041008);
  v15 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v98 = &v82 - v16;
  v89 = sub_100003090(&qword_10005B708, &qword_100041010);
  v17 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v91 = &v82 - v18;
  v19 = sub_100003090(&qword_10005B710, &qword_100041018);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v82 - v21;
  v90 = sub_100003090(&qword_10005B718, &qword_100041020);
  v23 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v25 = &v82 - v24;
  v97 = sub_100003090(&qword_10005B720, &qword_100041028);
  v26 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v93 = &v82 - v27;
  v28 = type metadata accessor for LayoutConfiguration(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100003090(&qword_10005B728, &qword_100041030);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v82 - v34;
  v36 = v94;
  if (v94 <= 1u)
  {
    v87 = v25;
    v88 = v19;
    v94 = v11;
    if (v36)
    {
      *v14 = static HorizontalAlignment.leading.getter();
      *(v14 + 1) = 0;
      v14[16] = 1;
      v75 = sub_100003090(&qword_10005B7D0, &qword_100041078);
      sub_1000221E4(v95, &v14[*(v75 + 44)]);
      sub_10001F9A0(v31);
      sub_100008A08(&v31[*(v28 + 24)], &v117);
      sub_1000086B4(v31);
      v76 = *(&v118 + 1);
      v77 = v119;
      sub_100008A6C(&v117, *(&v118 + 1));
      (*(v77 + 40))(v76, v77);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v78 = &v14[*(v94 + 36)];
      v79 = v132;
      *v78 = v131;
      *(v78 + 1) = v79;
      *(v78 + 2) = v133;
      sub_1000085F8(&v117);
      sub_100008DD0(v14, v22, &qword_10005B6F8, &qword_100041000);
      swift_storeEnumTagMultiPayload();
      sub_100024F98();
      sub_10002503C();
      v80 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_100008DD0(v80, v91, &qword_10005B718, &qword_100041020);
      swift_storeEnumTagMultiPayload();
      sub_100024F0C();
      sub_1000250E0();
      v81 = v93;
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v80, &qword_10005B718, &qword_100041020);
      sub_100008DD0(v81, v98, &qword_10005B720, &qword_100041028);
      swift_storeEnumTagMultiPayload();
      sub_100003090(&qword_10005B738, &qword_100041040);
      sub_100024E80();
      sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v81, &qword_10005B720, &qword_100041028);
      v46 = v14;
      v47 = &qword_10005B6F8;
      v48 = &qword_100041000;
    }

    else
    {
      *v35 = static HorizontalAlignment.center.getter();
      *(v35 + 1) = 0;
      v35[16] = 1;
      v49 = sub_100003090(&qword_10005B7D8, &qword_100041080);
      sub_1000210A0(v95, &v35[*(v49 + 44)]);
      sub_10001F9A0(v31);
      sub_100008A08(&v31[*(v28 + 24)], &v117);
      sub_1000086B4(v31);
      v50 = *(&v118 + 1);
      v51 = v119;
      sub_100008A6C(&v117, *(&v118 + 1));
      (*(v51 + 40))(v50, v51);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v52 = &v35[*(v32 + 36)];
      v53 = v132;
      *v52 = v131;
      *(v52 + 1) = v53;
      *(v52 + 2) = v133;
      sub_1000085F8(&v117);
      sub_100008DD0(v35, v22, &qword_10005B728, &qword_100041030);
      swift_storeEnumTagMultiPayload();
      sub_100024F98();
      sub_10002503C();
      v54 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_100008DD0(v54, v91, &qword_10005B718, &qword_100041020);
      swift_storeEnumTagMultiPayload();
      sub_100024F0C();
      sub_1000250E0();
      v55 = v93;
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v54, &qword_10005B718, &qword_100041020);
      sub_100008DD0(v55, v98, &qword_10005B720, &qword_100041028);
      swift_storeEnumTagMultiPayload();
      sub_100003090(&qword_10005B738, &qword_100041040);
      sub_100024E80();
      sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v55, &qword_10005B720, &qword_100041028);
      v46 = v35;
      v47 = &qword_10005B728;
      v48 = &qword_100041030;
    }
  }

  else if (v94 == 2)
  {
    v56 = static HorizontalAlignment.leading.getter();
    v57 = v82;
    *v82 = v56;
    *(v57 + 8) = 0;
    *(v57 + 16) = 1;
    v58 = sub_100003090(&qword_10005B7C8, &qword_100041070);
    sub_100022D40(v95, v57 + *(v58 + 44));
    sub_10001F9A0(v31);
    sub_100008A08(&v31[*(v28 + 24)], &v117);
    sub_1000086B4(v31);
    v59 = *(&v118 + 1);
    v60 = v119;
    sub_100008A6C(&v117, *(&v118 + 1));
    (*(v60 + 16))(v59, v60);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v61 = (v57 + *(v84 + 36));
    v62 = v132;
    *v61 = v131;
    v61[1] = v62;
    v61[2] = v133;
    sub_1000085F8(&v117);
    sub_100008DD0(v57, v86, &qword_10005B6F0, &qword_100040FF8);
    swift_storeEnumTagMultiPayload();
    sub_10002516C();
    sub_100025210();
    v63 = v88;
    _ConditionalContent<>.init(storage:)();
    sub_100008DD0(v63, v91, &qword_10005B6E8, &qword_100040FF0);
    swift_storeEnumTagMultiPayload();
    sub_100024F0C();
    sub_1000250E0();
    v64 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v63, &qword_10005B6E8, &qword_100040FF0);
    sub_100008DD0(v64, v98, &qword_10005B720, &qword_100041028);
    swift_storeEnumTagMultiPayload();
    sub_100003090(&qword_10005B738, &qword_100041040);
    sub_100024E80();
    sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v64, &qword_10005B720, &qword_100041028);
    v46 = v57;
    v47 = &qword_10005B6F0;
    v48 = &qword_100040FF8;
  }

  else
  {
    if (v94 != 3)
    {
      v65 = static HorizontalAlignment.center.getter();
      v116 = 0;
      sub_1000245C8(v95, &v101);
      v127 = v111;
      v128 = v112;
      v129 = v113;
      v123 = v107;
      v124 = v108;
      v125 = v109;
      v126 = v110;
      v119 = v103;
      v120 = v104;
      v121 = v105;
      v122 = v106;
      v117 = v101;
      v118 = v102;
      v141 = v111;
      v142 = v112;
      v143 = v113;
      v137 = v107;
      v138 = v108;
      v139 = v109;
      v140 = v110;
      v133 = v103;
      v134 = v104;
      v135 = v105;
      v136 = v106;
      v130 = v114;
      v144 = v114;
      v131 = v101;
      v132 = v102;
      sub_100008DD0(&v117, &v100, &qword_10005B730, &qword_100041038);
      sub_1000038DC(&v131, &qword_10005B730, &qword_100041038);
      *&v115[167] = v127;
      *&v115[183] = v128;
      *&v115[199] = v129;
      *&v115[103] = v123;
      *&v115[119] = v124;
      *&v115[135] = v125;
      *&v115[151] = v126;
      *&v115[39] = v119;
      *&v115[55] = v120;
      *&v115[71] = v121;
      *&v115[87] = v122;
      *&v115[7] = v117;
      *&v115[23] = v118;
      v66 = *&v115[176];
      v67 = v98;
      *(v98 + 177) = *&v115[160];
      *(v67 + 193) = v66;
      *(v67 + 209) = *&v115[192];
      v68 = *&v115[112];
      *(v67 + 113) = *&v115[96];
      *(v67 + 129) = v68;
      v69 = *&v115[144];
      *(v67 + 145) = *&v115[128];
      *(v67 + 161) = v69;
      v70 = *&v115[48];
      *(v67 + 49) = *&v115[32];
      *(v67 + 65) = v70;
      v71 = *&v115[80];
      *(v67 + 81) = *&v115[64];
      *(v67 + 97) = v71;
      v72 = *&v115[16];
      *(v67 + 17) = *v115;
      v115[215] = v130;
      v73 = v116;
      *v67 = v65;
      *(v67 + 8) = 0x4020000000000000;
      *(v67 + 16) = v73;
      *(v67 + 225) = *&v115[208];
      *(v67 + 33) = v72;
      swift_storeEnumTagMultiPayload();
      sub_100003090(&qword_10005B738, &qword_100041040);
      sub_100024E80();
      sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
      return _ConditionalContent<>.init(storage:)();
    }

    v37 = static HorizontalAlignment.leading.getter();
    v38 = v83;
    *v83 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v39 = sub_100003090(&qword_10005B7C0, &qword_100041068);
    sub_100023B7C(v95, v38 + *(v39 + 44));
    sub_10001F9A0(v31);
    sub_100008A08(&v31[*(v28 + 24)], &v117);
    sub_1000086B4(v31);
    v40 = *(&v118 + 1);
    v41 = v119;
    sub_100008A6C(&v117, *(&v118 + 1));
    (*(v41 + 16))(v40, v41);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = (v38 + *(v87 + 36));
    v43 = v132;
    *v42 = v131;
    v42[1] = v43;
    v42[2] = v133;
    sub_1000085F8(&v117);
    sub_100008DD0(v38, v86, &qword_10005B6D8, &qword_100040FE0);
    swift_storeEnumTagMultiPayload();
    sub_10002516C();
    sub_100025210();
    v44 = v88;
    _ConditionalContent<>.init(storage:)();
    sub_100008DD0(v44, v91, &qword_10005B6E8, &qword_100040FF0);
    swift_storeEnumTagMultiPayload();
    sub_100024F0C();
    sub_1000250E0();
    v45 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v44, &qword_10005B6E8, &qword_100040FF0);
    sub_100008DD0(v45, v98, &qword_10005B720, &qword_100041028);
    swift_storeEnumTagMultiPayload();
    sub_100003090(&qword_10005B738, &qword_100041040);
    sub_100024E80();
    sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v45, &qword_10005B720, &qword_100041028);
    v46 = v38;
    v47 = &qword_10005B6D8;
    v48 = &qword_100040FE0;
  }

  return sub_1000038DC(v46, v47, v48);
}

uint64_t sub_1000210A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = sub_100003090(&qword_10005B7E8, &qword_100041090);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v41 = &v37 - v16;
  v17 = type metadata accessor for TripMeasurementView();
  v18 = *(v17 + 24);
  v40 = a1;
  if (*(*(a1 + v18 + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    v19 = v17;
    Divider.init()();
    v20 = *(v40 + *(v19 + 32));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v21 = &v11[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v22 = v64[17];
    *v21 = v64[16];
    *(v21 + 1) = v22;
    *(v21 + 2) = v64[18];
    sub_10001F9A0(v6);
    sub_100008A08(&v6[*(v3 + 24)], &v63);
    sub_1000086B4(v6);
    v23 = *(&v64[0] + 1);
    v24 = *&v64[1];
    sub_100008A6C(&v63, *(&v64[0] + 1));
    v25 = (*(v24 + 216))(v23, v24);
    v26 = static Edge.Set.all.getter();
    v27 = &v11[*(v7 + 36)];
    *v27 = v25;
    v27[8] = v26;
    sub_1000085F8(&v63);
    v28 = v41;
    sub_100008944(v11, v41, &qword_10005B7E0, &qword_100041088);
    (*(v8 + 56))(v28, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v41, 1, 1, v7);
  }

  v37 = static VerticalAlignment.center.getter();
  v43 = 1;
  sub_1000216F8(v40, &v63);
  v56 = v64[11];
  v57 = v64[12];
  v58 = v64[13];
  v52 = v64[7];
  v53 = v64[8];
  v54 = v64[9];
  v55 = v64[10];
  v48 = v64[3];
  v49 = v64[4];
  v50 = v64[5];
  v51 = v64[6];
  v44 = v63;
  v45 = v64[0];
  v46 = v64[1];
  v47 = v64[2];
  v60[12] = v64[11];
  v60[13] = v64[12];
  v60[14] = v64[13];
  v60[8] = v64[7];
  v60[9] = v64[8];
  v60[10] = v64[9];
  v60[11] = v64[10];
  v60[4] = v64[3];
  v60[5] = v64[4];
  v60[6] = v64[5];
  v60[7] = v64[6];
  v60[0] = v63;
  v60[1] = v64[0];
  v59 = *&v64[14];
  v61 = *&v64[14];
  v60[2] = v64[1];
  v60[3] = v64[2];
  sub_100008DD0(&v44, v62, &qword_10005B7F0, &qword_100041098);
  sub_1000038DC(v60, &qword_10005B7F0, &qword_100041098);
  *(&v42[12] + 7) = v56;
  *(&v42[13] + 7) = v57;
  *(&v42[14] + 7) = v58;
  *(&v42[8] + 7) = v52;
  *(&v42[9] + 7) = v53;
  *(&v42[10] + 7) = v54;
  *(&v42[11] + 7) = v55;
  *(&v42[4] + 7) = v48;
  *(&v42[5] + 7) = v49;
  *(&v42[6] + 7) = v50;
  *(&v42[7] + 7) = v51;
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  *(&v42[2] + 7) = v46;
  *(&v42[15] + 7) = v59;
  *(&v42[3] + 7) = v47;
  LODWORD(v40) = v43;
  v29 = v41;
  v30 = v39;
  sub_100008DD0(v41, v39, &qword_10005B7E8, &qword_100041090);
  v31 = v38;
  *v38 = 0;
  *(v31 + 8) = 1;
  v32 = sub_100003090(&qword_10005B7F8, &qword_1000410A0);
  sub_100008DD0(v30, v31 + *(v32 + 48), &qword_10005B7E8, &qword_100041090);
  v33 = *(v32 + 64);
  *(&v62[13] + 1) = v42[12];
  *(&v62[14] + 1) = v42[13];
  *(&v62[15] + 1) = v42[14];
  v62[16] = *(&v42[14] + 15);
  *(&v62[9] + 1) = v42[8];
  *(&v62[10] + 1) = v42[9];
  *(&v62[11] + 1) = v42[10];
  *(&v62[12] + 1) = v42[11];
  *(&v62[5] + 1) = v42[4];
  *(&v62[6] + 1) = v42[5];
  *(&v62[7] + 1) = v42[6];
  *(&v62[8] + 1) = v42[7];
  *(&v62[3] + 1) = v42[2];
  *(&v62[4] + 1) = v42[3];
  *(&v62[1] + 1) = v42[0];
  v34 = v37;
  v62[0] = v37;
  v35 = v40;
  LOBYTE(v62[1]) = v40;
  *(&v62[2] + 1) = v42[1];
  memcpy(v31 + v33, v62, 0x110uLL);
  sub_100008DD0(v62, &v63, &qword_10005B800, &qword_1000410A8);
  sub_1000038DC(v29, &qword_10005B7E8, &qword_100041090);
  *(&v64[12] + 1) = v42[12];
  *(&v64[13] + 1) = v42[13];
  *(&v64[14] + 1) = v42[14];
  v64[15] = *(&v42[14] + 15);
  *(&v64[8] + 1) = v42[8];
  *(&v64[9] + 1) = v42[9];
  *(&v64[10] + 1) = v42[10];
  *(&v64[11] + 1) = v42[11];
  *(&v64[4] + 1) = v42[4];
  *(&v64[5] + 1) = v42[5];
  *(&v64[6] + 1) = v42[6];
  *(&v64[7] + 1) = v42[7];
  *(v64 + 1) = v42[0];
  *(&v64[1] + 1) = v42[1];
  *(&v64[2] + 1) = v42[2];
  v63 = v34;
  LOBYTE(v64[0]) = v35;
  *(&v64[3] + 1) = v42[3];
  sub_1000038DC(&v63, &qword_10005B800, &qword_1000410A8);
  return sub_1000038DC(v30, &qword_10005B7E8, &qword_100041090);
}

uint64_t sub_1000216F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for LayoutConfiguration(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a1 + *(type metadata accessor for TripMeasurementView() + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
  v14 = *v13;
  v15 = v13[1];

  v49 = Image.init(automakerSymbolName:)();
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v9 + 32)], v89);
  sub_1000086B4(v12);
  v17 = v90;
  v16 = v91;
  sub_100008A6C(v89, v90);
  (*(v16 + 104))(v17, v16);
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v52 = static Font.system(size:weight:design:)();
  sub_1000038DC(v7, &qword_10005A870, &qword_100040B80);
  sub_1000085F8(v89);
  KeyPath = swift_getKeyPath();
  v51 = static Edge.Set.trailing.getter();
  LOBYTE(v70) = 1;
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v9 + 32)], v89);
  sub_1000086B4(v12);
  v19 = v90;
  v20 = v91;
  sub_100008A6C(v89, v90);
  v50 = (*(v20 + 96))(v19, v20);
  v21 = swift_getKeyPath();
  v48 = v21;
  sub_1000085F8(v89);
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v9 + 32)], v89);
  sub_1000086B4(v12);
  v22 = v90;
  v23 = v91;
  sub_100008A6C(v89, v90);
  (*(v23 + 88))(v22, v23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000085F8(v89);
  v24 = static HorizontalAlignment.leading.getter();
  LOBYTE(v70) = 1;
  v46 = static HorizontalAlignment.leading.getter();
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v9 + 32)], v89);
  sub_1000086B4(v12);
  v25 = v90;
  v26 = v91;
  sub_100008A6C(v89, v90);
  v27 = (*(v26 + 240))(v25, v26);
  LOBYTE(v79[0]) = 0;
  sub_100021D68(a1, v68);
  *&v62[7] = v68[0];
  *&v62[23] = v68[1];
  *&v62[39] = v68[2];
  *&v62[55] = v68[3];
  sub_1000085F8(v89);
  v28 = v79[0];
  v29 = v70;
  v30 = v49;
  *&v70 = v49;
  v31 = KeyPath;
  *(&v70 + 1) = KeyPath;
  *&v71 = v52;
  BYTE8(v71) = v51;
  *(&v71 + 9) = *v63;
  HIDWORD(v71) = *&v63[3];
  v72 = 0u;
  v73 = 0u;
  LOBYTE(v74) = 1;
  *(&v74 + 1) = *v64;
  DWORD1(v74) = *&v64[3];
  *(&v74 + 1) = v21;
  *v75 = v50;
  *&v75[40] = v67;
  *&v75[24] = v66;
  *&v75[8] = v65;
  v55 = 0u;
  v56 = 0u;
  v53 = v70;
  v54 = v71;
  *&v61[0] = *(&v67 + 1);
  v59 = *&v75[16];
  v60 = *&v75[32];
  v57 = v74;
  v58 = *v75;
  v32 = v24;
  v76[0] = v24;
  v76[1] = 0;
  LOBYTE(v77) = v29;
  *(&v77 + 1) = *v69;
  DWORD1(v77) = *&v69[3];
  v33 = v46;
  *(&v77 + 1) = v46;
  *v78 = v27;
  BYTE8(v78[0]) = v79[0];
  *(&v78[2] + 9) = *&v62[32];
  v35 = *&v62[16];
  v34 = *&v62[32];
  *(&v78[1] + 9) = *&v62[16];
  v36 = *v62;
  *(v78 + 9) = *v62;
  v37 = *&v62[48];
  *(&v78[3] + 9) = *&v62[48];
  *(&v78[4] + 1) = *&v62[63];
  *(&v61[2] + 8) = v78[0];
  *(&v61[1] + 8) = v77;
  *(v61 + 8) = v76[0];
  *(&v61[6] + 8) = v78[4];
  *(&v61[5] + 8) = v78[3];
  *(&v61[4] + 8) = v78[2];
  *(&v61[3] + 8) = v78[1];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v38 = v54;
  *a2 = v53;
  *(a2 + 16) = v38;
  v39 = v60;
  *(a2 + 96) = v59;
  *(a2 + 112) = v39;
  v40 = v58;
  *(a2 + 64) = v57;
  *(a2 + 80) = v40;
  v41 = v61[3];
  *(a2 + 160) = v61[2];
  *(a2 + 176) = v41;
  v42 = v61[1];
  *(a2 + 128) = v61[0];
  *(a2 + 144) = v42;
  v43 = v61[6];
  *(a2 + 208) = v61[5];
  *(a2 + 224) = v43;
  *(a2 + 192) = v61[4];
  *(a2 + 240) = *&v61[7];
  v79[0] = v32;
  v79[1] = 0;
  v80 = v29;
  *v81 = *v69;
  *&v81[3] = *&v69[3];
  v82 = v33;
  v83 = v27;
  v84 = v28;
  v86 = v35;
  v87 = v34;
  *v88 = v37;
  *&v88[15] = *&v62[63];
  v85 = v36;
  sub_100008DD0(&v70, v89, &qword_10005B810, &qword_100041120);
  sub_100008DD0(v76, v89, &qword_10005B818, &qword_100041128);
  sub_1000038DC(v79, &qword_10005B818, &qword_100041128);
  v89[0] = v30;
  v89[1] = v31;
  v89[2] = v52;
  LOBYTE(v90) = v51;
  *(&v90 + 1) = *v63;
  HIDWORD(v90) = *&v63[3];
  v91 = 0u;
  v92 = 0u;
  v93 = 1;
  *v94 = *v64;
  *&v94[3] = *&v64[3];
  v95 = v48;
  v96 = v50;
  v99 = v67;
  v98 = v66;
  v97 = v65;
  return sub_1000038DC(v89, &qword_10005B810, &qword_100041120);
}

uint64_t sub_100021D68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = v3 - 8;
  v62 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + *(type metadata accessor for TripMeasurementView() + 24) + 8);
  v8 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v64 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v65 = v8;
  v55[2] = sub_1000089B4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v55[1] = a1;
  sub_10001F9A0(v7);
  sub_100008A08(v7 + *(v5 + 32), &v64);
  sub_1000086B4(v7);
  v14 = v66;
  v15 = v67;
  sub_100008A6C(&v64, v66);
  (*(v15 + 144))(v14, v15);
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v15) = v19;
  v55[0] = v20;
  sub_100008AB0(v9, v11, v13 & 1);

  sub_1000085F8(&v64);
  sub_10001F9A0(v7);
  v21 = v62;
  sub_100008A08(v7 + *(v62 + 32), &v64);
  sub_1000086B4(v7);
  v22 = v66;
  v23 = v67;
  sub_100008A6C(&v64, v66);
  (*(v23 + 168))(v22, v23);
  v24 = Text.foregroundColor(_:)();
  v59 = v25;
  v60 = v24;
  v58 = v26;
  v57 = v27;
  sub_100008AB0(v16, v18, v15 & 1);

  sub_1000085F8(&v64);
  v28 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v64 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v65 = v28;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  sub_10001F9A0(v7);
  sub_100008A08(v7 + *(v21 + 32), &v64);
  sub_1000086B4(v7);
  v34 = v66;
  v35 = v67;
  sub_100008A6C(&v64, v66);
  (*(v35 + 192))(v34, v35);
  v36 = Text.font(_:)();
  v38 = v37;
  LOBYTE(v35) = v39;
  v56 = v40;
  sub_100008AB0(v29, v31, v33 & 1);

  sub_1000085F8(&v64);
  sub_10001F9A0(v7);
  sub_100008A08(v7 + *(v62 + 32), &v64);
  sub_1000086B4(v7);
  v41 = v66;
  v42 = v67;
  sub_100008A6C(&v64, v66);
  (*(v42 + 216))(v41, v42);
  v43 = Text.foregroundColor(_:)();
  v45 = v44;
  LOBYTE(v7) = v46;
  v48 = v47;
  sub_100008AB0(v36, v38, v35 & 1);

  sub_1000085F8(&v64);
  v49 = v57 & 1;
  v63 = v57 & 1;
  LOBYTE(v64) = v57 & 1;
  LOBYTE(v41) = v7 & 1;
  v68 = v7 & 1;
  v51 = v60;
  v50 = v61;
  v53 = v58;
  v52 = v59;
  *v61 = v60;
  v50[1] = v53;
  *(v50 + 16) = v49;
  v50[3] = v52;
  v50[4] = v43;
  v50[5] = v45;
  *(v50 + 48) = v41;
  v50[7] = v48;
  sub_100025318(v51, v53, v49);

  sub_100025318(v43, v45, v41);

  sub_100008AB0(v43, v45, v41);

  sub_100008AB0(v51, v53, v63);
}

uint64_t sub_1000221E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100003090(&qword_10005B820, &qword_100041130);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v6 = &v47 - v5;
  v54 = type metadata accessor for LayoutConfiguration(0);
  v7 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v10 = *(*(v50 - 8) + 64);
  v11 = __chkstk_darwin(v50);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = sub_100003090(&qword_10005B828, &qword_100041138);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v22 = type metadata accessor for TripMeasurementView();
  if (*(*(a1 + *(v22 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    v23 = v22;
    Divider.init()();
    v24 = *(a1 + *(v23 + 32));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v25 = &v15[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v26 = v65;
    *v25 = v64;
    *(v25 + 1) = v26;
    *(v25 + 2) = v66;
    sub_10001F9A0(v9);
    sub_100008A08(&v9[*(v54 + 24)], v59);
    sub_1000086B4(v9);
    v48 = v3;
    v49 = a1;
    v27 = *&v61[7];
    v28 = *&v61[15];
    sub_100008A6C(v59, *&v61[7]);
    v29 = (*(v28 + 216))(v27, v28);
    v30 = static Edge.Set.all.getter();
    v31 = &v15[*(v50 + 36)];
    *v31 = v29;
    v31[8] = v30;
    sub_1000085F8(v59);
    sub_100008DD0(v15, v13, &qword_10005B7E0, &qword_100041088);
    *v6 = 0;
    v6[8] = 1;
    v32 = sub_100003090(&qword_10005B840, &qword_100041150);
    sub_100008DD0(v13, &v6[*(v32 + 48)], &qword_10005B7E0, &qword_100041088);
    sub_1000038DC(v15, &qword_10005B7E0, &qword_100041088);
    a1 = v49;
    sub_1000038DC(v13, &qword_10005B7E0, &qword_100041088);
    sub_100008944(v6, v21, &qword_10005B820, &qword_100041130);
    (*(v51 + 56))(v21, 0, 1, v48);
  }

  else
  {
    (*(v51 + 56))(v21, 1, 1, v3);
  }

  v33 = static HorizontalAlignment.leading.getter();
  sub_10001F9A0(v9);
  sub_100008A08(&v9[*(v54 + 24)], v59);
  sub_1000086B4(v9);
  v34 = *&v61[7];
  v35 = *&v61[15];
  sub_100008A6C(v59, *&v61[7]);
  v36 = (*(v35 + 240))(v34, v35);
  LOBYTE(v57) = 0;
  sub_1000227A4(a1, v56);
  *&v55[7] = v56[0];
  *&v55[23] = v56[1];
  *&v55[39] = v56[2];
  *&v55[55] = v56[3];
  sub_1000085F8(v59);
  v37 = v57;
  v38 = v52;
  sub_100008DD0(v21, v52, &qword_10005B828, &qword_100041138);
  v39 = v53;
  sub_100008DD0(v38, v53, &qword_10005B828, &qword_100041138);
  v40 = v39 + *(sub_100003090(&qword_10005B830, &qword_100041140) + 48);
  *&v57 = v33;
  *(&v57 + 1) = v36;
  v58[0] = v37;
  *&v58[1] = *v55;
  *&v58[17] = *&v55[16];
  *&v58[33] = *&v55[32];
  *&v58[49] = *&v55[48];
  v41 = *&v55[63];
  *&v58[64] = *&v55[63];
  v42 = *v58;
  *v40 = v57;
  *(v40 + 16) = v42;
  v43 = *&v58[16];
  v44 = *&v58[32];
  v45 = *&v58[48];
  *(v40 + 80) = v41;
  *(v40 + 48) = v44;
  *(v40 + 64) = v45;
  *(v40 + 32) = v43;
  sub_100008DD0(&v57, v59, &qword_10005B838, &qword_100041148);
  sub_1000038DC(v21, &qword_10005B828, &qword_100041138);
  v59[0] = v33;
  *&v59[1] = v36;
  v60 = v37;
  *&v61[16] = *&v55[16];
  v62 = *&v55[32];
  *v63 = *&v55[48];
  *&v63[15] = *&v55[63];
  *v61 = *v55;
  sub_1000038DC(v59, &qword_10005B838, &qword_100041148);
  return sub_1000038DC(v38, &qword_10005B828, &qword_100041138);
}

uint64_t sub_1000227A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LayoutConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TripMeasurementView();
  v9 = (a1 + *(v8 + 20));
  if (*v9)
  {
    v10 = v8;
    v74 = a2;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v75)
    {
      v72 = 0;
      v73 = 0;
      v70 = 0;
      v71 = 0;
    }

    else
    {
      v11 = (*(a1 + *(v10 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
      v12 = v11[1];
      v75 = *v11;
      v76 = v12;
      sub_1000089B4();

      v13 = Text.init<A>(_:)();
      v68 = v10;
      v14 = v13;
      v15 = a1;
      v17 = v16;
      v19 = v18;
      sub_10001F9A0(v7);
      sub_100008A08(&v7[*(v4 + 24)], &v75);
      sub_1000086B4(v7);
      v69 = v4;
      v20 = v77;
      v21 = v78;
      sub_100008A6C(&v75, v77);
      (*(v21 + 192))(v20, v21);
      v22 = Text.font(_:)();
      v24 = v23;
      LOBYTE(v21) = v25;
      v73 = v26;
      v27 = v17;
      a1 = v15;
      sub_100008AB0(v14, v27, v19 & 1);

      sub_1000085F8(&v75);
      sub_10001F9A0(v7);
      sub_100008A08(&v7[*(v69 + 24)], &v75);
      sub_1000086B4(v7);
      v28 = v77;
      v29 = v78;
      sub_100008A6C(&v75, v77);
      (*(v29 + 216))(v28, v29);
      v30 = Text.foregroundColor(_:)();
      v32 = v31;
      LODWORD(v72) = v33;
      v35 = v34;
      LOBYTE(v33) = v21 & 1;
      v4 = v69;
      sub_100008AB0(v22, v24, v33);

      sub_1000085F8(&v75);
      v36 = v72 & 1;
      v72 = v32;
      v73 = v30;
      v37 = v30;
      v10 = v68;
      v70 = v36;
      sub_100025318(v37, v32, v36);
      v71 = v35;
    }

    v38 = (*(a1 + *(v10 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
    v39 = v38[1];
    v75 = *v38;
    v76 = v39;
    sub_1000089B4();

    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    sub_10001F9A0(v7);
    sub_100008A08(&v7[*(v4 + 24)], &v75);
    sub_1000086B4(v7);
    v45 = v77;
    v46 = v78;
    sub_100008A6C(&v75, v77);
    (*(v46 + 144))(v45, v46);
    v47 = Text.font(_:)();
    v68 = v48;
    v69 = v47;
    v50 = v49;
    LOBYTE(v45) = v51;
    sub_100008AB0(v40, v42, v44 & 1);

    sub_1000085F8(&v75);
    sub_10001F9A0(v7);
    sub_100008A08(&v7[*(v4 + 24)], &v75);
    sub_1000086B4(v7);
    v52 = v77;
    v53 = v78;
    sub_100008A6C(&v75, v77);
    (*(v53 + 168))(v52, v53);
    v54 = v69;
    v55 = Text.foregroundColor(_:)();
    v57 = v56;
    LOBYTE(v42) = v58;
    v60 = v59;
    sub_100008AB0(v54, v50, v45 & 1);

    sub_1000085F8(&v75);
    v62 = v72;
    v61 = v73;
    v64 = v70;
    v63 = v71;
    sub_100025330(v73, v72, v70, v71);
    sub_100025318(v55, v57, v42 & 1);

    sub_100025374(v61, v62, v64, v63);
    LOBYTE(v75) = v42 & 1;
    v65 = v74;
    *v74 = v61;
    v65[1] = v62;
    v65[2] = v64;
    v65[3] = v63;
    v65[4] = v55;
    v65[5] = v57;
    *(v65 + 48) = v42 & 1;
    v65[7] = v60;
    sub_100008AB0(v55, v57, v42 & 1);

    return sub_100025374(v61, v62, v64, v63);
  }

  else
  {
    v67 = v9[1];
    type metadata accessor for TripAppConfig();
    sub_10001FEC0(&qword_10005A6E0, type metadata accessor for TripAppConfig);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100022D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = sub_100003090(&qword_10005B7E8, &qword_100041090);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v43 - v16;
  v17 = type metadata accessor for TripMeasurementView();
  if (*(*(a1 + *(v17 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    v18 = v17;
    Divider.init()();
    v19 = *(a1 + *(v18 + 32));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = &v11[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v21 = *(&v68[2] + 7);
    *v20 = *(&v68[1] + 7);
    *(v20 + 1) = v21;
    *(v20 + 2) = *(&v68[3] + 7);
    sub_10001F9A0(v6);
    sub_100008A08(&v6[*(v3 + 24)], &v66);
    sub_1000086B4(v6);
    v22 = *&v67[8];
    v23 = *&v67[16];
    sub_100008A6C(&v66, *&v67[8]);
    v24 = (*(v23 + 216))(v22, v23);
    v25 = static Edge.Set.all.getter();
    v26 = &v11[*(v7 + 36)];
    *v26 = v24;
    v26[8] = v25;
    sub_1000085F8(&v66);
    v27 = v46;
    sub_100008944(v11, v46, &qword_10005B7E0, &qword_100041088);
    (*(v8 + 56))(v27, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v46, 1, 1, v7);
  }

  v43 = static VerticalAlignment.center.getter();
  v48 = 1;
  sub_100023328(a1, &v66);
  v59 = *&v67[144];
  v60 = *&v67[160];
  v61 = *&v67[176];
  v62 = *&v67[192];
  v55 = *&v67[80];
  v56 = *&v67[96];
  v57 = *&v67[112];
  v58 = *&v67[128];
  v51 = *&v67[16];
  v52 = *&v67[32];
  v53 = *&v67[48];
  v54 = *&v67[64];
  v49 = v66;
  v50 = *v67;
  v63[10] = *&v67[144];
  v63[11] = *&v67[160];
  v63[12] = *&v67[176];
  v63[13] = *&v67[192];
  v63[6] = *&v67[80];
  v63[7] = *&v67[96];
  v63[8] = *&v67[112];
  v63[9] = *&v67[128];
  v63[2] = *&v67[16];
  v63[3] = *&v67[32];
  v63[4] = *&v67[48];
  v63[5] = *&v67[64];
  v63[0] = v66;
  v63[1] = *v67;
  sub_100008DD0(&v49, &v64, &qword_10005B848, &qword_1000411A0);
  sub_1000038DC(v63, &qword_10005B848, &qword_1000411A0);
  *&v47[167] = v59;
  *&v47[183] = v60;
  *&v47[199] = v61;
  *&v47[215] = v62;
  *&v47[103] = v55;
  *&v47[119] = v56;
  *&v47[135] = v57;
  *&v47[151] = v58;
  *&v47[39] = v51;
  *&v47[55] = v52;
  *&v47[71] = v53;
  *&v47[87] = v54;
  *&v47[7] = v49;
  *&v47[23] = v50;
  v28 = v48;
  v30 = v45;
  v29 = v46;
  sub_100008DD0(v46, v45, &qword_10005B7E8, &qword_100041090);
  v31 = v44;
  sub_100008DD0(v30, v44, &qword_10005B7E8, &qword_100041090);
  v32 = *(sub_100003090(&qword_10005B850, &qword_1000411A8) + 48);
  *&v65[177] = *&v47[176];
  *&v65[193] = *&v47[192];
  *&v65[209] = *&v47[208];
  *&v65[113] = *&v47[112];
  *&v65[129] = *&v47[128];
  *&v65[145] = *&v47[144];
  *&v65[161] = *&v47[160];
  *&v65[49] = *&v47[48];
  *&v65[65] = *&v47[64];
  *&v65[81] = *&v47[80];
  *&v65[97] = *&v47[96];
  *&v65[17] = *&v47[16];
  v33 = v31 + v32;
  v34 = v43;
  v64 = v43;
  v65[0] = v28;
  *&v65[224] = *&v47[223];
  *&v65[33] = *&v47[32];
  *&v65[1] = *v47;
  v35 = *&v65[192];
  *(v33 + 192) = *&v65[176];
  *(v33 + 208) = v35;
  *(v33 + 224) = *&v65[208];
  *(v33 + 240) = *&v65[224];
  v36 = *&v65[128];
  *(v33 + 128) = *&v65[112];
  *(v33 + 144) = v36;
  v37 = *&v65[160];
  *(v33 + 160) = *&v65[144];
  *(v33 + 176) = v37;
  v38 = *&v65[64];
  *(v33 + 64) = *&v65[48];
  *(v33 + 80) = v38;
  v39 = *&v65[96];
  *(v33 + 96) = *&v65[80];
  *(v33 + 112) = v39;
  v40 = *v65;
  *v33 = v64;
  *(v33 + 16) = v40;
  v41 = *&v65[32];
  *(v33 + 32) = *&v65[16];
  *(v33 + 48) = v41;
  sub_100008DD0(&v64, &v66, &qword_10005B858, &unk_1000411B0);
  sub_1000038DC(v29, &qword_10005B7E8, &qword_100041090);
  *&v67[177] = *&v47[176];
  *&v67[193] = *&v47[192];
  v68[0] = *&v47[208];
  *&v67[113] = *&v47[112];
  *&v67[129] = *&v47[128];
  *&v67[145] = *&v47[144];
  *&v67[161] = *&v47[160];
  *&v67[49] = *&v47[48];
  *&v67[65] = *&v47[64];
  *&v67[81] = *&v47[80];
  *&v67[97] = *&v47[96];
  *&v67[1] = *v47;
  *&v67[17] = *&v47[16];
  v66 = v34;
  v67[0] = v28;
  *(v68 + 15) = *&v47[223];
  *&v67[33] = *&v47[32];
  sub_1000038DC(&v66, &qword_10005B858, &unk_1000411B0);
  return sub_1000038DC(v30, &qword_10005B7E8, &qword_100041090);
}

uint64_t sub_100023328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v73[-v6];
  v8 = type metadata accessor for LayoutConfiguration(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = *(a1 + *(type metadata accessor for TripMeasurementView() + 24) + 8);
  v13 = *(v85 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
  v14 = *(v85 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName + 8);

  v88 = Image.init(automakerSymbolName:)();
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v9 + 32)], &v107);
  sub_1000086B4(v12);
  v15 = v110;
  v16 = v111;
  sub_100008A6C(&v107, v110);
  (*(v16 + 104))(v15, v16);
  v17 = type metadata accessor for Font.Design();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v87 = static Font.system(size:weight:design:)();
  sub_1000038DC(v7, &qword_10005A870, &qword_100040B80);
  sub_1000085F8(&v107);
  KeyPath = swift_getKeyPath();
  v91 = static Edge.Set.trailing.getter();
  LOBYTE(v101) = 1;
  sub_10001F9A0(v12);
  v18 = v9;
  sub_100008A08(&v12[*(v9 + 32)], &v107);
  sub_1000086B4(v12);
  v19 = v110;
  v20 = v111;
  sub_100008A6C(&v107, v110);
  v90 = (*(v20 + 96))(v19, v20);
  v89 = swift_getKeyPath();
  sub_1000085F8(&v107);
  v84 = a1;
  sub_10001F9A0(v12);
  v21 = *(v18 + 32);
  v83 = v18;
  sub_100008A08(&v12[v21], &v107);
  sub_1000086B4(v12);
  v22 = v110;
  v23 = v111;
  sub_100008A6C(&v107, v110);
  (*(v23 + 88))(v22, v23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000085F8(&v107);
  v24 = *(v85 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v107 = *(v85 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v108 = v24;
  v78 = sub_1000089B4();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  LOBYTE(v23) = v28;
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v18 + 32)], &v107);
  sub_1000086B4(v12);
  v29 = v110;
  v30 = v111;
  sub_100008A6C(&v107, v110);
  (*(v30 + 144))(v29, v30);
  v31 = Text.font(_:)();
  v76 = v32;
  v77 = v31;
  v74 = v33;
  v75 = v34;
  sub_100008AB0(v25, v27, v23 & 1);

  sub_1000085F8(&v107);
  sub_10001F9A0(v12);
  v35 = v83;
  sub_100008A08(&v12[*(v83 + 32)], &v107);
  sub_1000086B4(v12);
  v36 = v110;
  v37 = v111;
  sub_100008A6C(&v107, v110);
  (*(v37 + 168))(v36, v37);
  LOBYTE(v16) = v74;
  v39 = v76;
  v38 = v77;
  v40 = Text.foregroundColor(_:)();
  v80 = v41;
  v81 = v40;
  v79 = v42;
  v82 = v43;
  sub_100008AB0(v38, v39, v16 & 1);

  sub_1000085F8(&v107);
  v44 = *(v85 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v107 = *(v85 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v108 = v44;

  v45 = Text.init<A>(_:)();
  v47 = v46;
  LOBYTE(v39) = v48;
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v35 + 32)], &v107);
  sub_1000086B4(v12);
  v49 = v110;
  v50 = v111;
  sub_100008A6C(&v107, v110);
  (*(v50 + 192))(v49, v50);
  v85 = Text.font(_:)();
  v52 = v51;
  LOBYTE(v50) = v53;
  v78 = v54;
  sub_100008AB0(v45, v47, v39 & 1);

  sub_1000085F8(&v107);
  sub_10001F9A0(v12);
  sub_100008A08(&v12[*(v83 + 32)], &v107);
  sub_1000086B4(v12);
  v55 = v110;
  v56 = v111;
  sub_100008A6C(&v107, v110);
  (*(v56 + 216))(v55, v56);
  v57 = v85;
  v58 = Text.foregroundColor(_:)();
  v60 = v59;
  LODWORD(v84) = v61;
  v63 = v62;
  sub_100008AB0(v57, v52, v50 & 1);

  sub_1000085F8(&v107);
  LOBYTE(v47) = v79 & 1;
  v95 = v79 & 1;
  *&v101 = v88;
  *(&v101 + 1) = KeyPath;
  *&v102 = v87;
  BYTE8(v102) = v91;
  *(&v102 + 9) = *v96;
  HIDWORD(v102) = *&v96[3];
  v103 = 0u;
  v104 = 0u;
  LOBYTE(v105) = 1;
  DWORD1(v105) = *&v97[3];
  *(&v105 + 1) = *v97;
  *(&v105 + 1) = v89;
  *v106 = v90;
  *&v106[40] = v100;
  *&v106[24] = v99;
  *&v106[8] = v98;
  v94 = v79 & 1;
  v93 = 1;
  LOBYTE(v57) = v84 & 1;
  v92 = v84 & 1;
  v64 = v101;
  v65 = v102;
  v66 = v105;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = v64;
  *(a2 + 16) = v65;
  v67 = *v106;
  v68 = *&v106[32];
  v69 = *&v106[48];
  *(a2 + 96) = *&v106[16];
  *(a2 + 112) = v68;
  *(a2 + 64) = v66;
  *(a2 + 80) = v67;
  v71 = v80;
  v70 = v81;
  *(a2 + 128) = v69;
  *(a2 + 136) = v70;
  *(a2 + 144) = v71;
  *(a2 + 152) = v47;
  *(a2 + 160) = v82;
  *(a2 + 168) = 0x3FF0000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  *(a2 + 192) = v58;
  *(a2 + 200) = v60;
  *(a2 + 208) = v57;
  *(a2 + 216) = v63;
  sub_100008DD0(&v101, &v107, &qword_10005B810, &qword_100041120);
  sub_100025318(v70, v71, v47);

  sub_100025318(v58, v60, v57);

  sub_100008AB0(v58, v60, v57);

  sub_100008AB0(v70, v71, v95);

  v107 = v88;
  v108 = KeyPath;
  v109 = v87;
  LOBYTE(v110) = v91;
  *(&v110 + 1) = *v96;
  HIDWORD(v110) = *&v96[3];
  v111 = 0u;
  v112 = 0u;
  v113 = 1;
  *v114 = *v97;
  *&v114[3] = *&v97[3];
  v115 = v89;
  v116 = v90;
  v119 = v100;
  v118 = v99;
  v117 = v98;
  return sub_1000038DC(&v107, &qword_10005B810, &qword_100041120);
}

uint64_t sub_100023B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100003090(&qword_10005B820, &qword_100041130);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - v5;
  v7 = type metadata accessor for LayoutConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v11 = *(*(v46 - 8) + 64);
  v12 = __chkstk_darwin(v46);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_100003090(&qword_10005B828, &qword_100041138);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v46 - v21;
  v23 = type metadata accessor for TripMeasurementView();
  v24 = *(v23 + 24);
  v51 = a1;
  if (*(*(a1 + v24 + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    v25 = v23;
    Divider.init()();
    v26 = *(v51 + *(v25 + 32));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v27 = &v16[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v28 = v66;
    *v27 = v65;
    *(v27 + 1) = v28;
    *(v27 + 2) = v67;
    sub_10001F9A0(v10);
    sub_100008A08(&v10[*(v7 + 24)], &v62);
    sub_1000086B4(v10);
    v29 = *&v63[8];
    v30 = *&v63[16];
    sub_100008A6C(&v62, *&v63[8]);
    v31 = (*(v30 + 216))(v29, v30);
    v32 = static Edge.Set.all.getter();
    v33 = &v16[*(v46 + 36)];
    *v33 = v31;
    v33[8] = v32;
    sub_1000085F8(&v62);
    sub_100008DD0(v16, v14, &qword_10005B7E0, &qword_100041088);
    *v6 = 0;
    v6[8] = 1;
    v34 = sub_100003090(&qword_10005B840, &qword_100041150);
    sub_100008DD0(v14, &v6[*(v34 + 48)], &qword_10005B7E0, &qword_100041088);
    sub_1000038DC(v16, &qword_10005B7E0, &qword_100041088);
    sub_1000038DC(v14, &qword_10005B7E0, &qword_100041088);
    sub_100008944(v6, v22, &qword_10005B820, &qword_100041130);
    (*(v47 + 56))(v22, 0, 1, v48);
  }

  else
  {
    (*(v47 + 56))(v22, 1, 1, v48);
  }

  v35 = static VerticalAlignment.center.getter();
  v53 = 1;
  sub_100024130(v51, &v62);
  v56 = *&v63[16];
  v57 = *&v63[32];
  v54 = v62;
  v55 = *v63;
  v59[2] = *&v63[16];
  v59[3] = *&v63[32];
  v59[4] = *&v63[48];
  v59[1] = *v63;
  v58 = *&v63[48];
  v59[0] = v62;
  sub_100008DD0(&v54, v60, &qword_10005B860, &qword_1000411C0);
  sub_1000038DC(v59, &qword_10005B860, &qword_1000411C0);
  *&v52[23] = v55;
  *&v52[39] = v56;
  *&v52[55] = v57;
  *&v52[71] = v58;
  *&v52[7] = v54;
  v36 = v53;
  v37 = v49;
  sub_100008DD0(v22, v49, &qword_10005B828, &qword_100041138);
  v38 = v50;
  sub_100008DD0(v37, v50, &qword_10005B828, &qword_100041138);
  v39 = v38 + *(sub_100003090(&qword_10005B868, &qword_1000411C8) + 48);
  v60[0] = v35;
  v60[1] = 0;
  v61[0] = v36;
  *&v61[1] = *v52;
  *&v61[17] = *&v52[16];
  *&v61[65] = *&v52[64];
  *&v61[80] = *&v52[79];
  *&v61[49] = *&v52[48];
  *&v61[33] = *&v52[32];
  v40 = *v61;
  *v39 = v35;
  *(v39 + 16) = v40;
  v41 = *&v61[16];
  v42 = *&v61[32];
  v43 = *&v61[48];
  v44 = *&v61[64];
  *(v39 + 96) = *&v61[80];
  *(v39 + 64) = v43;
  *(v39 + 80) = v44;
  *(v39 + 32) = v41;
  *(v39 + 48) = v42;
  sub_100008DD0(v60, &v62, &qword_10005B870, &qword_1000411D0);
  sub_1000038DC(v22, &qword_10005B828, &qword_100041138);
  *&v63[33] = *&v52[32];
  *&v63[49] = *&v52[48];
  *v64 = *&v52[64];
  *&v63[1] = *v52;
  v62 = v35;
  v63[0] = v36;
  *&v64[15] = *&v52[79];
  *&v63[17] = *&v52[16];
  sub_1000038DC(&v62, &qword_10005B870, &qword_1000411D0);
  return sub_1000038DC(v37, &qword_10005B828, &qword_100041138);
}

uint64_t sub_100024130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = v3 - 8;
  v62 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + *(type metadata accessor for TripMeasurementView() + 24) + 8);
  v8 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v66 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v67 = v8;
  v55[3] = sub_1000089B4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  LOBYTE(v8) = v12;
  v55[2] = a1;
  sub_10001F9A0(v7);
  sub_100008A08(v7 + *(v5 + 32), &v66);
  sub_1000086B4(v7);
  v13 = v68;
  v14 = v69;
  sub_100008A6C(&v66, v68);
  (*(v14 + 144))(v13, v14);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v55[1] = v20;
  sub_100008AB0(v9, v11, v8 & 1);

  sub_1000085F8(&v66);
  sub_10001F9A0(v7);
  v21 = v62;
  sub_100008A08(v7 + *(v62 + 32), &v66);
  sub_1000086B4(v7);
  v22 = v68;
  v23 = v69;
  sub_100008A6C(&v66, v68);
  (*(v23 + 168))(v22, v23);
  v24 = Text.foregroundColor(_:)();
  v59 = v25;
  v60 = v24;
  v58 = v26;
  v57 = v27;
  sub_100008AB0(v15, v17, v19 & 1);

  sub_1000085F8(&v66);
  v28 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v66 = *(v56 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v67 = v28;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v11) = v32;
  sub_10001F9A0(v7);
  sub_100008A08(v7 + *(v21 + 32), &v66);
  sub_1000086B4(v7);
  v33 = v68;
  v34 = v69;
  sub_100008A6C(&v66, v68);
  (*(v34 + 192))(v33, v34);
  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v21) = v38;
  v56 = v39;
  sub_100008AB0(v29, v31, v11 & 1);

  sub_1000085F8(&v66);
  sub_10001F9A0(v7);
  sub_100008A08(v7 + *(v62 + 32), &v66);
  sub_1000086B4(v7);
  v40 = v68;
  v41 = v69;
  sub_100008A6C(&v66, v68);
  (*(v41 + 216))(v40, v41);
  v42 = Text.foregroundColor(_:)();
  v44 = v43;
  LOBYTE(v7) = v45;
  v47 = v46;
  sub_100008AB0(v35, v37, v21 & 1);

  sub_1000085F8(&v66);
  v48 = v57 & 1;
  LOBYTE(v66) = v57 & 1;
  v65 = v57 & 1;
  v64 = 1;
  LOBYTE(v40) = v7 & 1;
  v63 = v7 & 1;
  v49 = v7 & 1;
  v51 = v60;
  v50 = v61;
  v53 = v58;
  v52 = v59;
  *v61 = v60;
  v50[1] = v53;
  *(v50 + 16) = v48;
  v50[3] = v52;
  v50[4] = 0;
  *(v50 + 40) = 1;
  v50[6] = v42;
  v50[7] = v44;
  *(v50 + 64) = v49;
  v50[9] = v47;
  sub_100025318(v51, v53, v48);

  sub_100025318(v42, v44, v40);

  sub_100008AB0(v42, v44, v40);

  sub_100008AB0(v51, v53, v66);
}

uint64_t sub_1000245C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v75 - v5;
  v7 = type metadata accessor for LayoutConfiguration(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 + *(type metadata accessor for TripMeasurementView() + 24) + 8);
  v12 = *(v86 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName);
  v13 = *(v86 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName + 8);

  v88 = Image.init(systemName:)();
  sub_10001F9A0(v11);
  sub_100008A08(&v11[*(v8 + 32)], &v107);
  sub_1000086B4(v11);
  v14 = v110;
  v15 = v111;
  sub_100008A6C(&v107, v110);
  (*(v15 + 272))(v14, v15);
  v16 = type metadata accessor for Font.Design();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v87 = static Font.system(size:weight:design:)();
  sub_1000038DC(v6, &qword_10005A870, &qword_100040B80);
  sub_1000085F8(&v107);
  KeyPath = swift_getKeyPath();
  v91 = static Edge.Set.trailing.getter();
  LOBYTE(v101) = 1;
  v17 = a1;
  sub_10001F9A0(v11);
  v18 = v8;
  sub_100008A08(&v11[*(v8 + 32)], &v107);
  sub_1000086B4(v11);
  v19 = v110;
  v20 = v111;
  sub_100008A6C(&v107, v110);
  v90 = (*(v20 + 96))(v19, v20);
  v89 = swift_getKeyPath();
  sub_1000085F8(&v107);
  sub_10001F9A0(v11);
  v21 = *(v18 + 32);
  v85 = v18;
  sub_100008A08(&v11[v21], &v107);
  sub_1000086B4(v11);
  v22 = v110;
  v23 = v111;
  sub_100008A6C(&v107, v110);
  (*(v23 + 88))(v22, v23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000085F8(&v107);
  v24 = *(v86 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v107 = *(v86 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v108 = v24;
  v79 = sub_1000089B4();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  LOBYTE(v23) = v28;
  v29 = v17;
  sub_10001F9A0(v11);
  sub_100008A08(&v11[*(v18 + 32)], &v107);
  sub_1000086B4(v11);
  v30 = v110;
  v31 = v111;
  sub_100008A6C(&v107, v110);
  (*(v31 + 256))(v30, v31);
  v32 = Text.font(_:)();
  v76 = v33;
  v77 = v32;
  LOBYTE(v31) = v34;
  v75[1] = v35;
  sub_100008AB0(v25, v27, v23 & 1);

  sub_1000085F8(&v107);
  v78 = v29;
  sub_10001F9A0(v11);
  v36 = v85;
  sub_100008A08(&v11[*(v85 + 32)], &v107);
  sub_1000086B4(v11);
  v37 = v110;
  v38 = v111;
  sub_100008A6C(&v107, v110);
  (*(v38 + 168))(v37, v38);
  v40 = v76;
  v39 = v77;
  v41 = Text.foregroundColor(_:)();
  v82 = v42;
  v83 = v41;
  v80 = v43;
  v84 = v44;
  sub_100008AB0(v39, v40, v31 & 1);

  sub_1000085F8(&v107);
  v45 = *(v86 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v107 = *(v86 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v108 = v45;

  v46 = Text.init<A>(_:)();
  v48 = v47;
  LOBYTE(v40) = v49;
  sub_10001F9A0(v11);
  sub_100008A08(&v11[*(v36 + 32)], &v107);
  sub_1000086B4(v11);
  v50 = v110;
  v51 = v111;
  sub_100008A6C(&v107, v110);
  (*(v51 + 264))(v50, v51);
  v86 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v51) = v54;
  sub_100008AB0(v46, v48, v40 & 1);

  sub_1000085F8(&v107);
  sub_10001F9A0(v11);
  sub_100008A08(&v11[*(v85 + 32)], &v107);
  sub_1000086B4(v11);
  v55 = v110;
  v56 = v111;
  sub_100008A6C(&v107, v110);
  (*(v56 + 216))(v55, v56);
  v57 = v86;
  v58 = Text.foregroundColor(_:)();
  v60 = v59;
  LOBYTE(v40) = v61;
  v63 = v62;
  sub_100008AB0(v57, v53, v51 & 1);

  sub_1000085F8(&v107);
  v64 = swift_getKeyPath();
  LOBYTE(v48) = v80 & 1;
  v95 = v80 & 1;
  *&v101 = v88;
  *(&v101 + 1) = KeyPath;
  *&v102 = v87;
  BYTE8(v102) = v91;
  *(&v102 + 9) = *v96;
  HIDWORD(v102) = *&v96[3];
  v103 = 0u;
  v104 = 0u;
  LOBYTE(v105) = 1;
  *(&v105 + 1) = *v97;
  DWORD1(v105) = *&v97[3];
  *(&v105 + 1) = v89;
  *v106 = v90;
  *&v106[40] = v100;
  *&v106[24] = v99;
  *&v106[8] = v98;
  v94 = v80 & 1;
  LOBYTE(v40) = v40 & 1;
  v93 = v40;
  v65 = v101;
  v66 = v102;
  v67 = v81;
  *(v81 + 32) = 0u;
  *(v67 + 48) = 0u;
  *v67 = v65;
  *(v67 + 16) = v66;
  v68 = v105;
  v69 = *v106;
  v70 = *&v106[32];
  v71 = *&v106[48];
  *(v67 + 96) = *&v106[16];
  *(v67 + 112) = v70;
  *(v67 + 64) = v68;
  *(v67 + 80) = v69;
  v72 = v82;
  v73 = v83;
  *(v67 + 128) = v71;
  *(v67 + 136) = v73;
  *(v67 + 144) = v72;
  *(v67 + 152) = v48;
  *(v67 + 160) = v84;
  *(v67 + 168) = v58;
  *(v67 + 176) = v60;
  *(v67 + 184) = v40;
  *(v67 + 192) = v63;
  *(v67 + 200) = v64;
  *(v67 + 208) = 1;
  sub_100008DD0(&v101, &v107, &qword_10005B810, &qword_100041120);
  sub_100025318(v73, v72, v48);

  sub_100025318(v58, v60, v40);

  sub_100008AB0(v58, v60, v40);

  sub_100008AB0(v73, v72, v95);

  v107 = v88;
  v108 = KeyPath;
  v109 = v87;
  LOBYTE(v110) = v91;
  *(&v110 + 1) = *v96;
  HIDWORD(v110) = *&v96[3];
  v111 = 0u;
  v112 = 0u;
  v113 = 1;
  *v114 = *v97;
  *&v114[3] = *&v97[3];
  v115 = v89;
  v116 = v90;
  v119 = v100;
  v118 = v99;
  v117 = v98;
  return sub_1000038DC(&v107, &qword_10005B810, &qword_100041120);
}

unint64_t sub_100024E80()
{
  result = qword_10005B740;
  if (!qword_10005B740)
  {
    sub_1000036BC(&qword_10005B720, &qword_100041028);
    sub_100024F0C();
    sub_1000250E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B740);
  }

  return result;
}

unint64_t sub_100024F0C()
{
  result = qword_10005B748;
  if (!qword_10005B748)
  {
    sub_1000036BC(&qword_10005B718, &qword_100041020);
    sub_100024F98();
    sub_10002503C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B748);
  }

  return result;
}

unint64_t sub_100024F98()
{
  result = qword_10005B750;
  if (!qword_10005B750)
  {
    sub_1000036BC(&qword_10005B728, &qword_100041030);
    sub_1000252B4(&qword_10005B758, &qword_10005B760, &qword_100041048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B750);
  }

  return result;
}

unint64_t sub_10002503C()
{
  result = qword_10005B768;
  if (!qword_10005B768)
  {
    sub_1000036BC(&qword_10005B6F8, &qword_100041000);
    sub_1000252B4(&qword_10005B770, &qword_10005B778, &qword_100041050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B768);
  }

  return result;
}

unint64_t sub_1000250E0()
{
  result = qword_10005B780;
  if (!qword_10005B780)
  {
    sub_1000036BC(&qword_10005B6E8, &qword_100040FF0);
    sub_10002516C();
    sub_100025210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B780);
  }

  return result;
}

unint64_t sub_10002516C()
{
  result = qword_10005B788;
  if (!qword_10005B788)
  {
    sub_1000036BC(&qword_10005B6F0, &qword_100040FF8);
    sub_1000252B4(&qword_10005B790, &qword_10005B798, &qword_100041058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B788);
  }

  return result;
}

unint64_t sub_100025210()
{
  result = qword_10005B7A0;
  if (!qword_10005B7A0)
  {
    sub_1000036BC(&qword_10005B6D8, &qword_100040FE0);
    sub_1000252B4(&qword_10005B7A8, &qword_10005B7B0, &qword_100041060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B7A0);
  }

  return result;
}

uint64_t sub_1000252B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000036BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100025318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100025330(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025318(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100025374(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100008AB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000253B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002541C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100025474()
{
  result = qword_10005B878;
  if (!qword_10005B878)
  {
    sub_1000036BC(&qword_10005B6D0, &qword_100040FD8);
    sub_100025500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B878);
  }

  return result;
}

unint64_t sub_100025500()
{
  result = qword_10005B880;
  if (!qword_10005B880)
  {
    sub_1000036BC(&qword_10005B6C8, &qword_100040F88);
    sub_100025584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B880);
  }

  return result;
}

unint64_t sub_100025584()
{
  result = qword_10005B888;
  if (!qword_10005B888)
  {
    sub_1000036BC(&qword_10005B890, &qword_100041208);
    sub_100024E80();
    sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B888);
  }

  return result;
}

uint64_t sub_10002563C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_100025724(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for TripViewStandard()
{
  result = qword_10005B8F0;
  if (!qword_10005B8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025834()
{
  sub_100003DC4();
  if (v0 <= 0x3F)
  {
    sub_100003E1C();
    if (v1 <= 0x3F)
    {
      sub_10001104C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000258F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000ED88(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

void *sub_100025AD8()
{
  v1 = (v0 + *(type metadata accessor for TripViewStandard() + 20));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((v9 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v4 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v6 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_18;
          }
        }

        if (v3 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (!v2)
        {
          goto LABEL_18;
        }
      }

      v4 = *(v9 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = v1[1];
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100025CF0()
{
  v1 = (v0 + *(type metadata accessor for TripViewStandard() + 20));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((v8 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v4;
          }

LABEL_8:
          if (*(v4 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
            goto LABEL_14;
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_17;
          }
        }

        if (v3 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (!v2)
        {
          goto LABEL_17;
        }
      }

      v4 = *(v8 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  else
  {
    v7 = v1[1];
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100025EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewStandard();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100003090(&qword_10005B930, &qword_100041280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100003090(&qword_10005B938, &qword_100041288);
  sub_100026128(a2, a1, &v10[*(v11 + 44)]);
  v12 = &v10[*(v7 + 36)];
  *v12 = 0xD000000000000012;
  *(v12 + 1) = 0x8000000100042830;
  GeometryProxy.size.getter();
  v18[0] = v13;
  v18[1] = v14;
  sub_1000294E8(a2, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10000ED88(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TripViewStandard);
  type metadata accessor for CGSize(0);
  sub_100029630();
  sub_10002A5FC(&qword_10005B958, type metadata accessor for CGSize);
  View.onChange<A>(of:initial:_:)();

  return sub_1000038DC(v10, &qword_10005B930, &qword_100041280);
}

uint64_t sub_100026128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v155 = a3;
  v4 = sub_100003090(&qword_10005B960, &qword_100041298);
  v152 = *(v4 - 8);
  v153 = v4;
  v5 = *(v152 + 64);
  __chkstk_darwin(v4);
  v150 = (&v134 - v6);
  v7 = sub_100003090(&qword_10005B968, &qword_1000412A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v154 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = &v134 - v11;
  v147 = sub_100003090(&qword_10005B970, &qword_1000412A8);
  v142 = *(v147 - 8);
  v12 = *(v142 + 64);
  __chkstk_darwin(v147);
  v141 = &v134 - v13;
  v143 = sub_100003090(&qword_10005B978, &qword_1000412B0);
  v14 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v145 = &v134 - v15;
  v16 = sub_100003090(&qword_10005B980, &qword_1000412B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v137 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = (&v134 - v20);
  v144 = sub_100003090(&qword_10005B988, &qword_1000412C0);
  v21 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v138 = (&v134 - v22);
  v159 = sub_100003090(&qword_10005B990, &qword_1000412C8);
  v23 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v146 = &v134 - v24;
  v156 = sub_100003090(&qword_10005B998, &qword_1000412D0);
  v25 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v158 = &v134 - v26;
  v157 = sub_100003090(&qword_10005B9A0, &qword_1000412D8);
  v27 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v148 = (&v134 - v28);
  v29 = sub_100003090(&qword_10005B9A8, &qword_1000412E0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v151 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v164 = &v134 - v33;
  v34 = type metadata accessor for CAFUIAppPresentationMode();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v134 - v41;
  __chkstk_darwin(v40);
  v44 = &v134 - v43;
  v149 = type metadata accessor for LayoutConfiguration(0);
  v45 = *(*(v149 - 8) + 64);
  v46 = __chkstk_darwin(v149);
  v162 = &v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v134 - v48;
  v163 = a1;
  sub_1000258F4(&v134 - v48);
  v160 = *(v35 + 16);
  v160(v44, v49, v34);
  v50 = (*(v35 + 88))(v44, v34);
  if (v50 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    sub_1000086B4(v49);
    v51 = enum case for CAFUIAppPresentationMode.widget(_:);
    v52 = v163;
  }

  else
  {
    v139 = enum case for CAFUIAppPresentationMode.widget(_:);
    if (v50 != enum case for CAFUIAppPresentationMode.clusterDCA(_:) && v50 != enum case for CAFUIAppPresentationMode.clusterPopover(_:) && v50 != v139)
    {
      goto LABEL_38;
    }

    sub_1000086B4(v49);
    v53 = type metadata accessor for TripViewStandard();
    v52 = v163;
    v54 = (v163 + *(v53 + 20));
    if (!*v54)
    {
      goto LABEL_35;
    }

    if (*(*v54 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle))
    {
      v135 = static VerticalAlignment.center.getter();
      v166 = 1;
      sub_1000275B4(v52, &v190);
      v173 = v196;
      v174 = v197;
      v175[0] = v198[0];
      *(v175 + 9) = *(v198 + 9);
      v169 = v192;
      v170 = v193;
      v171 = v194;
      v172 = v195;
      v167 = v190;
      v168 = v191;
      v184 = v196;
      v185 = v197;
      v186[0] = v198[0];
      *(v186 + 9) = *(v198 + 9);
      v180 = v192;
      v181 = v193;
      v182 = v194;
      v183 = v195;
      v178 = v190;
      v179 = v191;
      sub_100008DD0(&v167, &v188, &qword_10005BA18, &qword_100041398);
      v52 = v163;
      sub_1000038DC(&v178, &qword_10005BA18, &qword_100041398);
      *(&v165[3] + 7) = v170;
      *(&v165[2] + 7) = v169;
      *(&v165[6] + 7) = v173;
      *(&v165[7] + 7) = v174;
      *(&v165[8] + 7) = v175[0];
      v165[9] = *(v175 + 9);
      *(&v165[4] + 7) = v171;
      *(&v165[5] + 7) = v172;
      *(v165 + 7) = v167;
      *(&v165[1] + 7) = v168;
      *(&v189[6] + 1) = v165[6];
      *(&v189[7] + 1) = v165[7];
      *(&v189[8] + 1) = v165[8];
      *(&v189[9] + 1) = *(v175 + 9);
      *(&v189[2] + 1) = v165[2];
      *(&v189[3] + 1) = v165[3];
      *(&v189[4] + 1) = v165[4];
      *(&v189[5] + 1) = v165[5];
      *(v189 + 1) = v165[0];
      v188 = v135;
      LOBYTE(v189[0]) = v166;
      *(&v189[1] + 1) = v165[1];
      nullsub_1(&v188);
      v198[0] = v189[7];
      v198[1] = v189[8];
      v199 = v189[9];
      v200 = v189[10];
      v194 = v189[3];
      v195 = v189[4];
      v196 = v189[5];
      v197 = v189[6];
      v190 = v188;
      v191 = v189[0];
      v192 = v189[1];
      v193 = v189[2];
      v51 = v139;
      goto LABEL_11;
    }

    v51 = v139;
  }

  sub_100029714(&v190);
LABEL_11:
  v55 = v162;
  sub_1000258F4(v162);
  v160(v42, v55, v34);
  sub_1000086B4(v55);
  (*(v35 + 104))(v39, v51, v34);
  LOBYTE(v55) = static CAFUIAppPresentationMode.== infix(_:_:)();
  v56 = *(v35 + 8);
  v56(v39, v34);
  v56(v42, v34);
  if ((v55 & 1) == 0)
  {
    v62 = type metadata accessor for TripViewStandard();
    v63 = (v52 + *(v62 + 20));
    if (!*v63)
    {
      v133 = v63[1];
      goto LABEL_37;
    }

    if (*(*v63 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      v64 = sub_100025AD8();
      v65 = v64 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v65 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v66 = v188;
        if (v188 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_20;
          }
        }

        else if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_20:
          if ((v66 & 0xC000000000000001) != 0)
          {
            v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_23;
          }

          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v67 = *(v66 + 32);

LABEL_23:
            v160 = v67;

            v68 = static VerticalAlignment.center.getter();
            v69 = v138;
            *v138 = v68;
            *(v69 + 8) = 0;
            *(v69 + 16) = 1;
            v70 = v69 + *(sub_100003090(&qword_10005B9F8, &qword_100041378) + 44);
            v71 = static HorizontalAlignment.center.getter();
            v72 = v136;
            *v136 = v71;
            *(v72 + 8) = 0;
            *(v72 + 16) = 1;
            v73 = sub_100003090(&qword_10005BA00, &qword_100041380);
            sub_100028084(v52, (v72 + *(v73 + 44)));
            v74 = v137;
            sub_100008DD0(v72, v137, &qword_10005B980, &qword_1000412B8);
            *v70 = 0;
            *(v70 + 8) = 1;
            v75 = sub_100003090(&qword_10005BA08, &qword_100041388);
            sub_100008DD0(v74, v70 + *(v75 + 48), &qword_10005B980, &qword_1000412B8);
            v76 = v70 + *(v75 + 64);
            *v76 = 0;
            *(v76 + 8) = 1;
            sub_1000038DC(v72, &qword_10005B980, &qword_1000412B8);
            sub_1000038DC(v74, &qword_10005B980, &qword_1000412B8);
            sub_100008DD0(v69, v145, &qword_10005B988, &qword_1000412C0);
            swift_storeEnumTagMultiPayload();
            sub_100003894(&qword_10005B9C0, &qword_10005B988, &qword_1000412C0);
            sub_100003894(&qword_10005B9C8, &qword_10005B970, &qword_1000412A8);
            v58 = v146;
            _ConditionalContent<>.init(storage:)();

            sub_1000038DC(v69, &qword_10005B988, &qword_1000412C0);
LABEL_28:
            v60 = &qword_10005B990;
            v61 = &qword_1000412C8;
            sub_100008DD0(v58, v158, &qword_10005B990, &qword_1000412C8);
            swift_storeEnumTagMultiPayload();
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          v132 = v54[1];
LABEL_37:
          type metadata accessor for CardModel(0);
          sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel);
          EnvironmentObject.error()();
          __break(1u);
LABEL_38:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }
      }
    }

    __chkstk_darwin(v62);
    static Axis.Set.vertical.getter();
    sub_100003090(&qword_10005B9B0, &qword_1000412E8);
    sub_100003894(&qword_10005B9B8, &qword_10005B9B0, &qword_1000412E8);
    v77 = v141;
    ScrollView.init(_:showsIndicators:content:)();
    v78 = v142;
    v79 = v147;
    (*(v142 + 16))(v145, v77, v147);
    swift_storeEnumTagMultiPayload();
    sub_100003894(&qword_10005B9C0, &qword_10005B988, &qword_1000412C0);
    sub_100003894(&qword_10005B9C8, &qword_10005B970, &qword_1000412A8);
    v58 = v146;
    _ConditionalContent<>.init(storage:)();
    (*(v78 + 8))(v77, v79);
    goto LABEL_28;
  }

  v57 = static HorizontalAlignment.leading.getter();
  v58 = v148;
  *v148 = v57;
  *(v58 + 8) = 0;
  *(v58 + 16) = 0;
  v59 = v58 + *(sub_100003090(&qword_10005BA10, &qword_100041390) + 44);
  sub_100027AA8(v52);
  v60 = &qword_10005B9A0;
  v61 = &qword_1000412D8;
  sub_100008DD0(v58, v158, &qword_10005B9A0, &qword_1000412D8);
  swift_storeEnumTagMultiPayload();
LABEL_29:
  sub_100003894(&qword_10005B9D0, &qword_10005B9A0, &qword_1000412D8);
  sub_100029740();
  _ConditionalContent<>.init(storage:)();
  sub_1000038DC(v58, v60, v61);
  if (sub_100025CF0())
  {
    v80 = *(v52 + *(type metadata accessor for TripViewStandard() + 28));
    KeyPath = swift_getKeyPath();
    v82 = v150;
    *v150 = KeyPath;
    sub_100003090(&qword_10005A798, &qword_10003FD10);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TripAppConfig();
    sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig);

    v83 = EnvironmentObject.init()();
    v85 = v84;
    v86 = type metadata accessor for TripMeasurementView();
    v87 = (v82 + v86[5]);
    *v87 = v83;
    v87[1] = v85;
    v88 = (v82 + v86[6]);
    type metadata accessor for CardCellConfiguration(0);
    sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration);
    *v88 = ObservedObject.init(wrappedValue:)();
    v88[1] = v89;
    *(v82 + v86[7]) = v80;
    *(v82 + v86[8]) = 0x3FF8000000000000;
    LOBYTE(v88) = static Edge.Set.leading.getter();
    v90 = v162;
    sub_1000258F4(v162);
    v91 = v149;
    sub_100008A08(v90 + *(v149 + 24), &v188);
    sub_1000086B4(v90);
    v92 = *(&v189[0] + 1);
    v93 = *&v189[1];
    sub_100008A6C(&v188, *(&v189[0] + 1));
    (*(v93 + 64))(v92, v93);
    EdgeInsets.init(_all:)();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = v82 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
    *v102 = v88;
    *(v102 + 8) = v95;
    *(v102 + 16) = v97;
    *(v102 + 24) = v99;
    *(v102 + 32) = v101;
    *(v102 + 40) = 0;
    sub_1000085F8(&v188);
    LOBYTE(v88) = static Edge.Set.trailing.getter();
    sub_1000258F4(v90);
    sub_100008A08(v90 + *(v91 + 24), &v188);
    sub_1000086B4(v90);
    v103 = *(&v189[0] + 1);
    v104 = *&v189[1];
    sub_100008A6C(&v188, *(&v189[0] + 1));
    (*(v104 + 64))(v103, v104);
    EdgeInsets.init(_all:)();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;

    v113 = v153;
    v114 = v82 + *(v153 + 36);
    *v114 = v88;
    *(v114 + 8) = v106;
    *(v114 + 16) = v108;
    *(v114 + 24) = v110;
    *(v114 + 32) = v112;
    *(v114 + 40) = 0;
    sub_1000085F8(&v188);
    sub_10002982C(v82, v161);
    v115 = 0;
  }

  else
  {
    v115 = 1;
    v113 = v153;
  }

  v116 = v161;
  (*(v152 + 56))(v161, v115, 1, v113);
  v175[0] = v198[0];
  v175[1] = v198[1];
  v176 = v199;
  v177 = v200;
  v171 = v194;
  v172 = v195;
  v173 = v196;
  v174 = v197;
  v167 = v190;
  v168 = v191;
  v169 = v192;
  v170 = v193;
  v117 = v164;
  v118 = v151;
  sub_100008DD0(v164, v151, &qword_10005B9A8, &qword_1000412E0);
  v119 = v154;
  sub_100008DD0(v116, v154, &qword_10005B968, &qword_1000412A0);
  v120 = v174;
  v186[0] = v175[0];
  v186[1] = v175[1];
  v121 = v175[1];
  v186[2] = v176;
  v122 = v171;
  v123 = v170;
  v182 = v171;
  v183 = v172;
  v124 = v172;
  v125 = v173;
  v184 = v173;
  v185 = v174;
  v178 = v167;
  v179 = v168;
  v127 = v167;
  v126 = v168;
  v128 = v169;
  v180 = v169;
  v181 = v170;
  v129 = v155;
  *(v155 + 128) = v175[0];
  *(v129 + 144) = v121;
  *(v129 + 160) = v176;
  *(v129 + 64) = v122;
  *(v129 + 80) = v124;
  *(v129 + 96) = v125;
  *(v129 + 112) = v120;
  *v129 = v127;
  *(v129 + 16) = v126;
  v187 = v177;
  *(v129 + 176) = v177;
  *(v129 + 32) = v128;
  *(v129 + 48) = v123;
  v130 = sub_100003090(&qword_10005B9E0, &qword_1000412F0);
  sub_100008DD0(v118, v129 + *(v130 + 48), &qword_10005B9A8, &qword_1000412E0);
  sub_100008DD0(v119, v129 + *(v130 + 64), &qword_10005B968, &qword_1000412A0);
  sub_100008DD0(&v178, &v188, &qword_10005B9E8, &qword_1000412F8);
  sub_1000038DC(v116, &qword_10005B968, &qword_1000412A0);
  sub_1000038DC(v117, &qword_10005B9A8, &qword_1000412E0);
  sub_1000038DC(v119, &qword_10005B968, &qword_1000412A0);
  sub_1000038DC(v118, &qword_10005B9A8, &qword_1000412E0);
  v189[7] = v175[0];
  v189[8] = v175[1];
  v189[9] = v176;
  LOBYTE(v189[10]) = v177;
  v189[3] = v171;
  v189[4] = v172;
  v189[5] = v173;
  v189[6] = v174;
  v188 = v167;
  v189[0] = v168;
  v189[1] = v169;
  v189[2] = v170;
  return sub_1000038DC(&v188, &qword_10005B9E8, &qword_1000412F8);
}

uint64_t sub_1000275B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = type metadata accessor for LayoutConfiguration(0);
  v4 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TripViewStandard();
  v7 = (a1 + *(v45 + 20));
  if (*v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000089B4();
    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    sub_1000258F4(v6);
    sub_100008A08(&v6[*(v46 + 24)], &v57);
    sub_1000086B4(v6);
    v41 = a1;
    v13 = v61;
    v14 = v62;
    sub_100008A6C(&v57, v61);
    (*(v14 + 120))(v13, v14);
    v15 = Text.font(_:)();
    v42 = v16;
    v43 = v15;
    LOBYTE(v13) = v17;
    v44 = v18;
    sub_100008AB0(v8, v10, v12 & 1);

    sub_1000085F8(&v57);
    v19 = v41;
    sub_1000258F4(v6);
    sub_100008A08(&v6[*(v46 + 24)], &v57);
    sub_1000086B4(v6);
    v20 = v61;
    v21 = v62;
    sub_100008A6C(&v57, v61);
    (*(v21 + 8))(v20, v21);
    static Alignment.bottom.getter();
    _FrameLayout.init(width:height:alignment:)();
    v76 = v13 & 1;
    sub_1000085F8(&v57);
    LOBYTE(v13) = v76;
    LOBYTE(v14) = static Edge.Set.bottom.getter();
    v22 = (v19 + *(v45 + 24));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v57) = v23;
    v58 = v24;
    sub_100003090(&qword_10005A7A8, &qword_10003FD20);
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v77 = 0;
    v49 = 1;
    v26 = v42;
    v25 = v43;
    *&v50 = v43;
    *(&v50 + 1) = v42;
    LOBYTE(v51) = v13;
    *(&v51 + 1) = *v75;
    DWORD1(v51) = *&v75[3];
    v27 = v44;
    *(&v51 + 1) = v44;
    v54 = v74;
    v53 = v73;
    v52 = v72;
    LOBYTE(v55) = v14;
    DWORD1(v55) = *(v78 + 3);
    *(&v55 + 1) = v78[0];
    *(&v55 + 1) = v28;
    *&v56[0] = v29;
    *(&v56[0] + 1) = v30;
    *&v56[1] = v31;
    BYTE8(v56[1]) = 0;
    *(&v48[3] + 7) = v73;
    *(&v48[2] + 7) = v72;
    *(&v48[1] + 7) = v51;
    *(v48 + 7) = v50;
    v48[7] = *(v56 + 9);
    *(&v48[6] + 7) = v56[0];
    *(&v48[5] + 7) = v55;
    *(&v48[4] + 7) = v74;
    v47[128] = 1;
    *a2 = 0;
    *(a2 + 8) = 1;
    v32 = v48[0];
    v33 = v48[1];
    v34 = v48[2];
    *(a2 + 57) = v48[3];
    *(a2 + 41) = v34;
    *(a2 + 25) = v33;
    *(a2 + 9) = v32;
    v35 = v48[4];
    v36 = v48[5];
    v37 = v48[6];
    *(a2 + 121) = v48[7];
    *(a2 + 105) = v37;
    *(a2 + 89) = v36;
    *(a2 + 73) = v35;
    *(a2 + 144) = 0;
    *(a2 + 152) = 1;
    v57 = v25;
    v58 = v26;
    v59 = v13;
    *&v60[3] = *&v75[3];
    *v60 = *v75;
    v61 = v27;
    v64 = v74;
    v63 = v73;
    v62 = v72;
    v65 = v14;
    *&v66[3] = *(v78 + 3);
    *v66 = v78[0];
    v67 = v28;
    v68 = v29;
    v69 = v30;
    v70 = v31;
    v71 = 0;
    sub_100008DD0(&v50, v47, &qword_10005BA20, &qword_1000413E8);
    return sub_1000038DC(&v57, &qword_10005BA20, &qword_1000413E8);
  }

  else
  {
    v39 = v7[1];
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100027AA8(uint64_t a1)
{
  v2 = type metadata accessor for TripViewStandard();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(__chkstk_darwin(v2 - 8) + 28));
  if (*v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000294E8(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    sub_10000ED88(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TripViewStandard);
    sub_100003090(&qword_10005BA28, &qword_1000413F0);
    type metadata accessor for UUID();
    sub_100003090(&qword_10005B960, &qword_100041298);
    sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0);
    sub_100029A94();
    sub_10002A5FC(&qword_10005BA50, type metadata accessor for CardCellConfiguration);
    return ForEach<>.init(_:content:)();
  }

  else
  {
    v9 = v5[1];
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100027D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v44[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + *(type metadata accessor for TripViewStandard() + 28));
  *a3 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig);

  v13 = EnvironmentObject.init()();
  v15 = v14;
  v16 = type metadata accessor for TripMeasurementView();
  v17 = (a3 + v16[5]);
  *v17 = v13;
  v17[1] = v15;
  v18 = (a3 + v16[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration);
  *v18 = ObservedObject.init(wrappedValue:)();
  v18[1] = v19;
  *(a3 + v16[7]) = v12;
  *(a3 + v16[8]) = 0x3FF8000000000000;
  LOBYTE(v13) = static Edge.Set.leading.getter();
  sub_1000258F4(v10);
  sub_100008A08(&v10[*(v7 + 32)], v44);
  sub_1000086B4(v10);
  v20 = v45;
  v21 = v46;
  sub_100008A6C(v44, v45);
  (*(v21 + 64))(v20, v21);
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a3 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v30 = v13;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_1000085F8(v44);
  LOBYTE(v13) = static Edge.Set.trailing.getter();
  sub_1000258F4(v10);
  sub_100008A08(&v10[*(v7 + 32)], v44);
  sub_1000086B4(v10);
  v31 = v45;
  v32 = v46;
  sub_100008A6C(v44, v45);
  (*(v32 + 64))(v31, v32);
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = a3 + *(sub_100003090(&qword_10005B960, &qword_100041298) + 36);
  *v41 = v13;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  return sub_1000085F8(v44);
}

uint64_t sub_100028084@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v48 = a1;
  v49 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100003090(&qword_10005B960, &qword_100041298);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v46[-v14];
  v47 = *(a1 + *(type metadata accessor for TripViewStandard() + 28));
  *v15 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig);
  v16 = EnvironmentObject.init()();
  v18 = v17;
  v19 = type metadata accessor for TripMeasurementView();
  v20 = (v15 + v19[5]);
  *v20 = v16;
  v20[1] = v18;
  v21 = (v15 + v19[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration);

  *v21 = ObservedObject.init(wrappedValue:)();
  v21[1] = v22;
  *(v15 + v19[7]) = v47;
  *(v15 + v19[8]) = 0x3FF8000000000000;
  LOBYTE(v19) = static Edge.Set.leading.getter();
  sub_1000258F4(v7);
  sub_100008A08(&v7[*(v4 + 32)], v50);
  sub_1000086B4(v7);
  v23 = v51;
  v24 = v52;
  sub_100008A6C(v50, v51);
  (*(v24 + 64))(v23, v24);
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v15 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v33 = v19;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_1000085F8(v50);
  LOBYTE(v19) = static Edge.Set.trailing.getter();
  sub_1000258F4(v7);
  sub_100008A08(&v7[*(v4 + 32)], v50);
  sub_1000086B4(v7);
  v34 = v51;
  v35 = v52;
  sub_100008A6C(v50, v51);
  (*(v35 + 64))(v34, v35);
  EdgeInsets.init(_all:)();
  v36 = v15 + *(v9 + 44);
  *v36 = v19;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_1000085F8(v50);
  sub_100008DD0(v15, v13, &qword_10005B960, &qword_100041298);
  v41 = v49;
  *v49 = 0;
  *(v41 + 8) = 1;
  v42 = v41;
  v43 = sub_100003090(&qword_10005BA58, &qword_1000413F8);
  sub_100008DD0(v13, v42 + *(v43 + 48), &qword_10005B960, &qword_100041298);
  v44 = v42 + *(v43 + 64);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1000038DC(v15, &qword_10005B960, &qword_100041298);
  return sub_1000038DC(v13, &qword_10005B960, &qword_100041298);
}

uint64_t sub_100028498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for TripViewStandard();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v17[0] = *(sub_100003090(&qword_10005BA60, &qword_100041400) + 44);
  v17[1] = sub_100025AD8();
  sub_1000294E8(a1, v12);
  (*(v7 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_10000ED88(v12, v15 + v13, type metadata accessor for TripViewStandard);
  (*(v7 + 32))(v15 + v14, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005BA68, &unk_100041408);
  sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0);
  sub_100029EE4();
  sub_10002A5FC(&qword_10005BA50, type metadata accessor for CardCellConfiguration);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100028790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a3;
  v65 = type metadata accessor for GeometryProxy();
  v61 = *(v65 - 8);
  v66 = *(v61 + 64);
  __chkstk_darwin(v65);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TripViewStandard();
  v9 = v8 - 8;
  v63 = *(v8 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LayoutConfiguration(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a2 + *(v9 + 36));
  *a4 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig);
  v60 = v17;

  v19 = EnvironmentObject.init()();
  v21 = v20;
  v22 = type metadata accessor for TripMeasurementView();
  v23 = (a4 + v22[5]);
  *v23 = v19;
  v23[1] = v21;
  v24 = (a4 + v22[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration);
  *v24 = ObservedObject.init(wrappedValue:)();
  v24[1] = v25;
  *(a4 + v22[7]) = v18;
  *(a4 + v22[8]) = 0x3FF8000000000000;
  LOBYTE(v24) = static Edge.Set.leading.getter();
  sub_1000258F4(v16);
  sub_100008A08(&v16[*(v13 + 32)], v68);
  sub_1000086B4(v16);
  v26 = v69;
  v27 = v70;
  sub_100008A6C(v68, v69);
  (*(v27 + 64))(v26, v27);
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a4 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v36 = v24;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  sub_1000085F8(v68);
  LOBYTE(v24) = static Edge.Set.trailing.getter();
  sub_1000258F4(v16);
  sub_100008A08(&v16[*(v13 + 32)], v68);
  sub_1000086B4(v16);
  v37 = v69;
  v38 = v70;
  sub_100008A6C(v68, v69);
  (*(v38 + 64))(v37, v38);
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = a4 + *(sub_100003090(&qword_10005B960, &qword_100041298) + 36);
  *v47 = v24;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  sub_1000085F8(v68);
  v59 = static Alignment.center.getter();
  v49 = v48;
  sub_1000294E8(a2, v11);
  v50 = v61;
  v52 = v64;
  v51 = v65;
  (*(v61 + 16))(v64, v67, v65);
  v53 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v54 = (v62 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (*(v50 + 80) + v54 + 8) & ~*(v50 + 80);
  v56 = swift_allocObject();
  sub_10000ED88(v11, v56 + v53, type metadata accessor for TripViewStandard);
  *(v56 + v54) = v60;
  (*(v50 + 32))(v56 + v55, v52, v51);
  v57 = (a4 + *(sub_100003090(&qword_10005BA68, &unk_100041408) + 36));
  *v57 = sub_10002A1CC;
  v57[1] = v56;
  v57[2] = v59;
  v57[3] = v49;
}

uint64_t sub_100028CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v29 = a1;
  v7 = type metadata accessor for GeometryProxy();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v27 = &v25 - v11;
  v13 = type metadata accessor for TripViewStandard();
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = static Color.clear.getter();
  sub_1000294E8(a2, v15);
  v16 = *(v8 + 16);
  v16(v12, v29, v7);
  v16(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v7);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v8 + 80);
  v20 = (v19 + v18 + 8) & ~v19;
  v21 = (v9 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  sub_10000ED88(v15, v22 + v17, type metadata accessor for TripViewStandard);
  *(v22 + v18) = v32;
  v23 = *(v8 + 32);
  v23(v22 + v20, v27, v7);
  v23(v22 + v21, v28, v7);
  *a5 = v30;
  a5[1] = sub_10002A4F4;
  a5[2] = v22;
  a5[3] = 0;
  a5[4] = 0;
}

uint64_t sub_100028F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40[0] = a3;
  v40[1] = a4;
  v40[2] = a2;
  v5 = type metadata accessor for NamedCoordinateSpace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAFUIAppPresentationMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v18 = type metadata accessor for LayoutConfiguration(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000258F4(v21);
  (*(v11 + 16))(v17, v21, v10);
  sub_1000086B4(v21);
  (*(v11 + 104))(v15, enum case for CAFUIAppPresentationMode.console(_:), v10);
  sub_10002A5FC(&qword_10005BA78, &type metadata accessor for CAFUIAppPresentationMode);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v15, v10);
  result = (v23)(v17, v10);
  if ((v22 & 1) == 0)
  {
    v42 = 0xD000000000000012;
    v43 = 0x8000000100042830;
    static CoordinateSpaceProtocol<>.named<A>(_:)();
    GeometryProxy.frame<A>(in:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    (*(v6 + 8))(v9, v5);
    v44.origin.x = v26;
    v44.origin.y = v28;
    v44.size.width = v30;
    v44.size.height = v32;
    MaxY = CGRectGetMaxY(v44);
    GeometryProxy.size.getter();
    v35 = v34 < MaxY;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v42) = v35;

    static Published.subscript.setter();
    v36 = (a1 + *(type metadata accessor for TripViewStandard() + 24));
    v37 = *v36;
    v38 = *(v36 + 1);
    LOBYTE(v42) = *v36;
    v43 = v38;
    sub_100003090(&qword_10005A7A8, &qword_10003FD20);
    State.wrappedValue.getter();
    if (v41)
    {
      v39 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v39 = v42;
    }

    LOBYTE(v42) = v37;
    v43 = v38;
    v41 = v39;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100029378(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TripViewStandard() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  return State.wrappedValue.setter();
}

uint64_t sub_1000293E8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000294E8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000ED88(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TripViewStandard);
  *a2 = sub_100029550;
  a2[1] = v7;
  return result;
}

uint64_t sub_1000294E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewStandard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029550(uint64_t a1)
{
  v3 = *(type metadata accessor for TripViewStandard() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100025EBC(a1, v4);
}

uint64_t sub_1000295D0()
{
  v1 = *(type metadata accessor for TripViewStandard() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100029378(v2);
}

unint64_t sub_100029630()
{
  result = qword_10005B940;
  if (!qword_10005B940)
  {
    sub_1000036BC(&qword_10005B930, &qword_100041280);
    sub_100003894(&qword_10005B948, &qword_10005B950, &qword_100041290);
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B940);
  }

  return result;
}

double sub_100029714(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_100029740()
{
  result = qword_10005B9D8;
  if (!qword_10005B9D8)
  {
    sub_1000036BC(&qword_10005B990, &qword_1000412C8);
    sub_100003894(&qword_10005B9C0, &qword_10005B988, &qword_1000412C0);
    sub_100003894(&qword_10005B9C8, &qword_10005B970, &qword_1000412A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B9D8);
  }

  return result;
}

uint64_t sub_10002982C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005B960, &qword_100041298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000298AC()
{
  v1 = type metadata accessor for TripViewStandard();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);
    v8 = (v5 + *(v7 + 20));
    v9 = *v8;

    v10 = v8[1];

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
    v11 = *v5;
  }

  v12 = *(v5 + *(v1 + 20));

  v13 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100029A14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripViewStandard() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100027D5C(a1, v6, a2);
}

unint64_t sub_100029A94()
{
  result = qword_10005BA38;
  if (!qword_10005BA38)
  {
    sub_1000036BC(&qword_10005B960, &qword_100041298);
    sub_100029B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BA38);
  }

  return result;
}

unint64_t sub_100029B20()
{
  result = qword_10005BA40;
  if (!qword_10005BA40)
  {
    sub_1000036BC(&qword_10005B9F0, &qword_100041EA0);
    sub_10002A5FC(&qword_10005BA48, type metadata accessor for TripMeasurementView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BA40);
  }

  return result;
}

uint64_t sub_100029BDC()
{
  v1 = type metadata accessor for TripViewStandard();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
    v10 = type metadata accessor for LayoutConfiguration(0);
    v11 = v0;
    v12 = v4;
    v13 = v7;
    v14 = (v8 + *(v10 + 20));
    v15 = *v14;

    v16 = v14[1];
    v7 = v13;
    v4 = v12;
    v0 = v11;
    v3 = (v2 + 16) & ~v2;

    sub_1000085F8((v8 + *(v10 + 24)));
  }

  else
  {
    v17 = *v8;
  }

  v18 = v2 | v6;
  v19 = (v3 + v23 + v6) & ~v6;
  v20 = *(v8 + *(v1 + 20));

  v21 = *(v8 + *(v1 + 24) + 8);

  (*(v5 + 8))(v0 + v19, v4);

  return _swift_deallocObject(v0, v19 + v7, v18 | 7);
}

uint64_t sub_100029E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripViewStandard() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100028790(a1, v2 + v6, v9, a2);
}

unint64_t sub_100029EE4()
{
  result = qword_10005BA70;
  if (!qword_10005BA70)
  {
    sub_1000036BC(&qword_10005BA68, &unk_100041408);
    sub_100029A94();
    sub_100003894(&qword_10005AF20, &qword_10005AF28, &unk_1000406B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BA70);
  }

  return result;
}

uint64_t sub_100029F9C()
{
  v1 = type metadata accessor for TripViewStandard();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
    v10 = type metadata accessor for LayoutConfiguration(0);
    v11 = v4;
    v12 = v7;
    v13 = (v8 + *(v10 + 20));
    v14 = *v13;

    v15 = v13[1];
    v7 = v12;
    v4 = v11;
    v3 = (v2 + 16) & ~v2;

    sub_1000085F8((v8 + *(v10 + 24)));
  }

  else
  {
    v16 = *v8;
  }

  v17 = v2 | v6;
  v18 = (v24 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v6 + 8) & ~v6;
  v20 = *(v8 + *(v1 + 20));

  v21 = *(v8 + *(v1 + 24) + 8);

  v22 = *(v0 + v18);

  (*(v5 + 8))(v0 + v19, v4);

  return _swift_deallocObject(v0, v19 + v7, v17 | 7);
}

uint64_t sub_10002A1CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripViewStandard() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_100028CC4(a1, v2 + v6, v9, v10, a2);
}

uint64_t sub_10002A2C0()
{
  v1 = type metadata accessor for TripViewStandard();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v22 = type metadata accessor for GeometryProxy();
  v5 = *(v22 - 8);
  v6 = *(v5 + 80);
  v23 = *(v5 + 64);
  v7 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
    v9 = type metadata accessor for LayoutConfiguration(0);
    v10 = (v7 + *(v9 + 20));
    v11 = *v10;

    v12 = v10[1];

    sub_1000085F8((v7 + *(v9 + 24)));
  }

  else
  {
    v13 = *v7;
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v6 + 8) & ~v6;
  v16 = (v23 + v6 + v15) & ~v6;
  v17 = *(v7 + *(v1 + 20));

  v18 = *(v7 + *(v1 + 24) + 8);

  v19 = *(v0 + v14);

  v20 = *(v5 + 8);
  v20(v0 + v15, v22);
  v20(v0 + v16, v22);

  return _swift_deallocObject(v0, v16 + v23, v2 | v6 | 7);
}

uint64_t sub_10002A4F4()
{
  v1 = *(type metadata accessor for TripViewStandard() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v0 + v3);
  v8 = v0 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return sub_100028F4C(v0 + v2, v7, v0 + v6, v8);
}

uint64_t sub_10002A5FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10002A6F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TripAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10002A7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripViewPortraitNarrow()
{
  result = qword_10005BB78;
  if (!qword_10005BB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10002E29C(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10002ABD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  sub_10002A9F4(a1);
  v6 = a1 + *(type metadata accessor for LayoutConfiguration(0) + 24);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  sub_100008C34(v6, v7);
  (*(v8 + 48))(v7, v8, 92.0);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  sub_100008C34(v6, v9);
  (*(v10 + 72))(v9, v10, 0.0, 4.0, 0.0, 4.0);
  static Font.Weight.bold.getter();
  v11 = type metadata accessor for Font.Design();
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = static Font.system(size:weight:design:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  v14 = *(v6 + 24);
  v15 = *(v6 + 32);
  sub_100008C34(v6, v14);
  (*(v15 + 128))(v13, v14, v15);
  static Font.Weight.semibold.getter();
  v12(v5, 1, 1, v11);
  v16 = static Font.system(size:weight:design:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  v17 = *(v6 + 24);
  v18 = *(v6 + 32);
  sub_100008C34(v6, v17);
  (*(v18 + 152))(v16, v17, v18);
  static Font.Weight.semibold.getter();
  v12(v5, 1, 1, v11);
  v19 = static Font.system(size:weight:design:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  v20 = *(v6 + 24);
  v21 = *(v6 + 32);
  sub_100008C34(v6, v20);
  return (*(v21 + 200))(v19, v20, v21);
}

void *sub_10002AEB4()
{
  v1 = (v0 + *(type metadata accessor for TripViewPortraitNarrow() + 20));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((v9 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v4 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v6 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_18;
          }
        }

        if (v3 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (!v2)
        {
          goto LABEL_18;
        }
      }

      v4 = *(v9 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = v1[1];
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002B0CC()
{
  v25 = type metadata accessor for TripViewPortraitNarrow();
  v1 = (v0 + v25[10]);
  v2 = *v1;
  v3 = v1[1];
  *&v30[0] = *v1;
  *(&v30[0] + 1) = v3;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  result = State.wrappedValue.getter();
  if (v27 > 0.0)
  {
    v5 = sub_10002AEB4();
    v6 = v5;
    v24 = v0;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return sub_10000323C(v30);
          }

LABEL_8:
          type metadata accessor for CardCellConfiguration(0);
          sub_100017F7C(&qword_10005A868, type metadata accessor for CardCellConfiguration);

          AnyHashable.init<A>(_:)();
          v11 = v0 + v25[8];
          v28 = *v11;
          v29 = *(v11 + 8);
          sub_100003090(&qword_10005A858, &unk_10003FE20);
          State.wrappedValue.getter();
          if (!*(v26 + 16))
          {
            goto LABEL_15;
          }

          v12 = sub_10000E288(v30);
          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }

          v14 = *(*(v26 + 56) + 16 * v12 + 8);
          sub_10000323C(v30);

          *&v30[0] = v2;
          *(&v30[0] + 1) = v3;
          State.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v30[0]) = v28 < v14;
          static Published.subscript.setter();
          ++v8;
          if (v10 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_18:

    v15 = sub_10002AEB4();
    v16 = v15;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_35:
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v20 = 0;
    while (v18 != v19)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v19, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v21 = *(v16 + 8 * v19 + 32);

        if (__OFADD__(v19, 1))
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = (v30[0] & 1) == 0;
      ++v19;
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        goto LABEL_34;
      }
    }

    v30[0] = *(v24 + v25[9]);
    sub_100003090(&qword_10005A820, &qword_100040A00);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10002B4A4@<X0>(uint64_t a1@<X0>, void (**a2)(char a1)@<X8>)
{
  v72 = a2;
  v66 = type metadata accessor for OpacityTransition();
  v64 = *(v66 - 8);
  v3 = *(v64 + 64);
  __chkstk_darwin(v66);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for MoveTransition();
  v60 = *(v63 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v63);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100003090(&qword_10005A770, &unk_100041510);
  v62 = *(v65 - 8);
  v8 = *(v62 + 64);
  v9 = __chkstk_darwin(v65);
  v59 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v59 - v11;
  v74 = sub_100003090(&qword_10005A778, &unk_10003FCF0);
  v69 = *(v74 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin(v74);
  v15 = &v59 - v14;
  v16 = sub_100003090(&qword_10005A780, &qword_100041520);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v71 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v59 - v20;
  v21 = sub_100003090(&qword_10005BBD8, &unk_100041528);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21);
  v70 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v59 - v26;
  v28 = type metadata accessor for TripViewPortraitNarrow();
  v29 = v28 - 8;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_10002DEFC(a1, &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v68 = swift_allocObject();
  sub_10002E29C(&v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v68 + v32, type metadata accessor for TripViewPortraitNarrow);
  *v27 = static HorizontalAlignment.center.getter();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v33 = sub_100003090(&qword_10005BBE0, &unk_100041538);
  sub_10002BE24(a1, &v27[*(v33 + 44)]);
  v34 = static Edge.Set.horizontal.getter();
  v35 = *(v22 + 44);
  v67 = v27;
  v36 = &v27[v35];
  *v36 = v34;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v37 = 1;
  v36[40] = 1;
  v38 = a1 + *(v29 + 32);
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v75) = v39;
  v76 = v40;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  if (v79 == 1)
  {
    *v15 = static HorizontalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v41 = sub_100003090(&qword_10005A7B8, &unk_10003FD30);
    sub_10002D798(a1, &v15[*(v41 + 44)]);
    *&v15[*(sub_100003090(&qword_10005A7C0, &unk_100040990) + 36)] = 0x3FF0000000000000;
    MoveTransition.init(edge:)();
    v42 = v61;
    OpacityTransition.init()();
    v43 = sub_100017F7C(&qword_10005A7C8, &type metadata accessor for MoveTransition);
    v44 = sub_100017F7C(&qword_10005A7D0, &type metadata accessor for OpacityTransition);
    v45 = v63;
    v46 = v66;
    Transition.combined<A>(with:)();
    (*(v64 + 8))(v42, v46);
    (*(v60 + 8))(v7, v45);
    v47 = v62;
    v48 = v65;
    (*(v62 + 16))(v59, v12, v65);
    v75 = v45;
    v76 = v46;
    v77 = v43;
    v78 = v44;
    swift_getOpaqueTypeConformance2();
    v49 = AnyTransition.init<A>(_:)();
    (*(v47 + 8))(v12, v48);
    v50 = v73;
    *&v15[*(v74 + 36)] = v49;
    sub_100008944(v15, v50, &qword_10005A778, &unk_10003FCF0);
    v37 = 0;
  }

  v51 = v73;
  (*(v69 + 56))(v73, v37, 1, v74);
  v52 = v67;
  v53 = v70;
  sub_100008DD0(v67, v70, &qword_10005BBD8, &unk_100041528);
  v54 = v71;
  sub_100008DD0(v51, v71, &qword_10005A780, &qword_100041520);
  v55 = v72;
  v56 = v68;
  *v72 = sub_10002DF64;
  v55[1] = v56;
  v57 = sub_100003090(&qword_10005BBE8, &qword_100041548);
  sub_100008DD0(v53, v55 + *(v57 + 48), &qword_10005BBD8, &unk_100041528);
  sub_100008DD0(v54, v55 + *(v57 + 64), &qword_10005A780, &qword_100041520);

  sub_1000038DC(v51, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v52, &qword_10005BBD8, &unk_100041528);
  sub_1000038DC(v54, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v53, &qword_10005BBD8, &unk_100041528);
}

void sub_10002BC7C(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_100009AD4();
    }

    else
    {

      sub_100009ADC();
    }
  }

  else
  {
    v2 = (a2 + *(type metadata accessor for TripViewPortraitNarrow() + 20));
    if (*v2)
    {
      v3 = *(**v2 + 280);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        v5 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v5);
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
      v6 = v2[1];
      type metadata accessor for CardModel(0);
      sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_10002BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TripViewPortraitNarrow();
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin(v4);
  v84 = v6;
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for MeasurementList(0);
  v8 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_100003090(&qword_10005B318, &unk_1000409B0);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v74 = &v69 - v12;
  v73 = sub_100003090(&qword_10005B320, &unk_100041550);
  v13 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v76 = &v69 - v14;
  v75 = sub_100003090(&qword_10005B328, &unk_1000409C0);
  v15 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v79 = &v69 - v16;
  v78 = sub_100003090(&qword_10005B330, &qword_100041560);
  v17 = *(*(v78 - 8) + 64);
  v18 = __chkstk_darwin(v78);
  v83 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v77 = &v69 - v21;
  __chkstk_darwin(v20);
  v82 = &v69 - v22;
  v23 = sub_100003090(&qword_10005BBF0, &qword_100041568);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v80 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v69 - v27;
  *v28 = static VerticalAlignment.top.getter();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = sub_100003090(&qword_10005BBF8, &unk_100041570);
  sub_10002C6DC(a1, &v28[*(v29 + 44)]);
  v30 = sub_10002AEB4();
  v71 = v4;
  v31 = (a1 + *(v4 + 36));
  v32 = *v31;
  v33 = v31[1];
  v86 = *v31;
  v87 = v33;
  sub_100003090(&qword_10005A820, &qword_100040A00);
  v34 = &v86;
  State.wrappedValue.getter();
  if (!v85)
  {
    goto LABEL_4;
  }

  v86 = v32;
  v87 = v33;
  State.wrappedValue.getter();
  v35 = v85;
  if ((v85 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      __break(1u);
LABEL_4:
      v34 = a1;
      v36 = sub_10002AEB4();
      if (!(v36 >> 62))
      {
        break;
      }

      v34 = v36;
      v35 = _CocoaArrayWrapper.endIndex.getter();

      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    v35 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:
  v37 = v30 >> 62;
  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35)
    {
LABEL_8:
      if ((v30 & 0xC000000000000001) != 0 && v35)
      {
        type metadata accessor for CardCellConfiguration(0);

        v38 = 0;
        do
        {
          v39 = v38 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v38);
          v38 = v39;
        }

        while (v35 != v39);
      }

      else
      {
      }

      if (v37)
      {
        v34 = _CocoaArrayWrapper.subscript.getter();
        v37 = v40;
        v33 = v41;
        v35 = v42;

        if (v35)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v33 = 0;
        v34 = (v30 & 0xFFFFFFFFFFFFFF8);
        v37 = (v30 & 0xFFFFFFFFFFFFFF8) + 32;
        v35 = (2 * v35) | 1;
        if (v35)
        {
LABEL_19:
          v69 = v7;
          v7 = a2;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v45 = swift_dynamicCastClass();
          if (!v45)
          {
            swift_unknownObjectRelease();
            v45 = _swiftEmptyArrayStorage;
          }

          v46 = v45[2];

          if (!__OFSUB__(v35 >> 1, v33))
          {
            if (v46 == (v35 >> 1) - v33)
            {
              v44 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              a2 = v7;
              v7 = v69;
              if (v44)
              {
LABEL_26:
                v47 = *(a1 + *(v71 + 28));
                *v10 = swift_getKeyPath();
                sub_100003090(&qword_10005A798, &qword_10003FD10);
                swift_storeEnumTagMultiPayload();
                v48 = static Alignment.leading.getter();
                v49 = v72;
                *(v10 + *(v72 + 20)) = v44;
                *(v10 + *(v49 + 24)) = v47;
                v50 = (v10 + *(v49 + 28));
                *v50 = v48;
                v50[1] = v51;
                v52 = v74;
                v53 = &v74[*(v70 + 36)];
                v54 = sub_100003090(&qword_10005A828, &qword_100040A30);
                sub_10002ABD8(v53 + *(v54 + 28));
                *v53 = swift_getKeyPath();
                sub_10002E29C(v10, v52, type metadata accessor for MeasurementList);
                v55 = v76;
                sub_100008944(v52, v76, &qword_10005B318, &unk_1000409B0);
                *(v55 + *(v73 + 36)) = 0;
                sub_10002DEFC(a1, v7);
                v56 = (*(v81 + 80) + 16) & ~*(v81 + 80);
                v57 = swift_allocObject();
                sub_10002E29C(v7, v57 + v56, type metadata accessor for TripViewPortraitNarrow);
                v58 = v55;
                v59 = v79;
                sub_100008944(v58, v79, &qword_10005B320, &unk_100041550);
                v60 = (v59 + *(v75 + 36));
                *v60 = sub_10002E304;
                v60[1] = v57;
                v60[2] = 0;
                v60[3] = 0;
                sub_10002DEFC(a1, v7);
                v61 = swift_allocObject();
                sub_10002E29C(v7, v61 + v56, type metadata accessor for TripViewPortraitNarrow);
                v62 = v77;
                sub_100008944(v59, v77, &qword_10005B328, &unk_1000409C0);
                v63 = (v62 + *(v78 + 36));
                *v63 = sub_10002E364;
                v63[1] = v61;
                v64 = v82;
                sub_100008944(v62, v82, &qword_10005B330, &qword_100041560);
                v65 = v80;
                sub_100008DD0(v28, v80, &qword_10005BBF0, &qword_100041568);
                v66 = v83;
                sub_100008DD0(v64, v83, &qword_10005B330, &qword_100041560);
                sub_100008DD0(v65, a2, &qword_10005BBF0, &qword_100041568);
                v67 = sub_100003090(&qword_10005BC00, &qword_1000415B0);
                sub_100008DD0(v66, a2 + *(v67 + 48), &qword_10005B330, &qword_100041560);
                sub_1000038DC(v64, &qword_10005B330, &qword_100041560);
                sub_1000038DC(v28, &qword_10005BBF0, &qword_100041568);
                sub_1000038DC(v66, &qword_10005B330, &qword_100041560);
                return sub_1000038DC(v65, &qword_10005BBF0, &qword_100041568);
              }

              v44 = _swiftEmptyArrayStorage;
LABEL_25:
              swift_unknownObjectRelease();
              goto LABEL_26;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          swift_unknownObjectRelease_n();
          a2 = v7;
          v7 = v69;
        }
      }

      sub_10002E060(v34, v37, v33, v35);
      v44 = v43;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v30 < 0)
  {
    v34 = v30;
  }

  else
  {
    v34 = (v30 & 0xFFFFFFFFFFFFFF8);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= v35)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v112 = sub_100003090(&qword_10005BC08, &qword_100041648);
  v3 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v5 = &v93 - v4;
  v110 = sub_100003090(&qword_10005BC10, &qword_100041650);
  v6 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v111 = &v93 - v7;
  v8 = sub_100003090(&qword_10005BC18, &qword_100041658);
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = *(v107 + 64);
  __chkstk_darwin(v8);
  v105 = &v93 - v10;
  v11 = type metadata accessor for TripViewPortraitNarrow();
  v97 = *(v11 - 8);
  v12 = *(v97 + 64);
  __chkstk_darwin(v11);
  v98 = v13;
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100003090(&qword_10005BC20, &unk_100041660);
  v14 = *(*(v100 - 8) + 64);
  v15 = __chkstk_darwin(v100);
  v104 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v103 = &v93 - v17;
  v96 = sub_100003090(&qword_10005B388, &qword_100040AD8);
  v18 = *(*(v96 - 8) + 64);
  v19 = __chkstk_darwin(v96);
  v102 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v93 - v21;
  v22 = type metadata accessor for CAFUIAppPresentationMode();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LayoutConfiguration(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v93 - v32;
  v34 = sub_100003090(&qword_10005BC28, &qword_100041670);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34);
  v106 = &v93 - v37;
  v38 = a1;
  v39 = (a1 + *(v11 + 20));
  v40 = *v39;
  if (*v39)
  {
    v109 = v36;
    if (*(v40 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      *v5 = static VerticalAlignment.center.getter();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v41 = sub_100003090(&qword_10005BC30, &qword_100041678);
      sub_10002D324(v38, &v5[*(v41 + 44)]);
      sub_100008DD0(v5, v111, &qword_10005BC08, &qword_100041648);
      swift_storeEnumTagMultiPayload();
      sub_10002E3E4();
      sub_100003894(&qword_10005BC48, &qword_10005BC08, &qword_100041648);
      _ConditionalContent<>.init(storage:)();
      v42 = v5;
      v43 = &qword_10005BC08;
      v44 = &qword_100041648;
      return sub_1000038DC(v42, v43, v44);
    }

    sub_10002A9F4(v33);
    (*(v23 + 16))(v26, v33, v22);
    v45 = (*(v23 + 88))(v26, v22);
    if (v45 == enum case for CAFUIAppPresentationMode.console(_:))
    {
      sub_1000086B4(v33);
      goto LABEL_11;
    }

    if (v45 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v45 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v45 == enum case for CAFUIAppPresentationMode.widget(_:))
    {
      sub_1000086B4(v33);
      if (*(v40 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        sub_1000089B4();
        v46 = Text.init<A>(_:)();
        v48 = v47;
        v50 = v49;
        sub_10002A9F4(v31);
        sub_100008A08(&v31[*(v27 + 24)], &v119);
        sub_1000086B4(v31);
        v51 = *(&v120 + 1);
        v52 = v121;
        sub_100008A6C(&v119, *(&v120 + 1));
        (*(v52 + 120))(v51, v52);
        v95 = Text.font(_:)();
        v94 = v53;
        v55 = v54;
        v57 = v56;
        sub_100008AB0(v46, v48, v50 & 1);

        sub_1000085F8(&v119);
        static Alignment.top.getter();
        _FrameLayout.init(width:height:alignment:)();
        v58 = v55 & 1;
        v117 = v55 & 1;
        KeyPath = swift_getKeyPath();
        LOBYTE(v114) = 0;
        v60 = v101;
        v61 = &v101[*(v96 + 36)];
        v62 = *(sub_100003090(&qword_10005A8F0, &qword_100040AE0) + 28);
        v63 = enum case for Text.TruncationMode.tail(_:);
        v64 = type metadata accessor for Text.TruncationMode();
        (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
        *v61 = swift_getKeyPath();
        v65 = v94;
        *v60 = v95;
        *(v60 + 8) = v65;
        *(v60 + 16) = v58;
        *(v60 + 24) = v57;
        v66 = v120;
        *(v60 + 32) = v119;
        *(v60 + 48) = v66;
        *(v60 + 64) = v121;
        *(v60 + 80) = KeyPath;
        *(v60 + 88) = 2;
        *(v60 + 96) = 0;
        v67 = v38 + *(v11 + 24);
        v68 = *v67;
        v69 = *(v67 + 8);
        v117 = v68;
        v118 = v69;
        sub_100003090(&qword_10005A7A8, &qword_10003FD20);
        State.projectedValue.getter();
        v70 = v114;
        v71 = v115;
        LOBYTE(v62) = v116;
        v72 = v99;
        sub_10002DEFC(v38, v99);
        v73 = (*(v97 + 80) + 16) & ~*(v97 + 80);
        v74 = swift_allocObject();
        sub_10002E29C(v72, v74 + v73, type metadata accessor for TripViewPortraitNarrow);
        v75 = swift_getKeyPath();
        v76 = type metadata accessor for TripActionButton();
        v77 = v103;
        *&v103[*(v76 + 20)] = v75;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        *v77 = v70;
        *(v77 + 8) = v71;
        *(v77 + 16) = v62;
        v78 = (v77 + *(v76 + 24));
        *v78 = sub_10002E808;
        v78[1] = v74;
        LOBYTE(v74) = static Edge.Set.leading.getter();
        v79 = v77 + *(sub_100003090(&qword_10005A910, &qword_100040A50) + 36);
        *v79 = v74;
        *(v79 + 8) = 0u;
        *(v79 + 24) = 0u;
        *(v79 + 40) = 1;
        LOBYTE(v74) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v80 = v77 + *(v100 + 36);
        *v80 = v74;
        *(v80 + 8) = v81;
        *(v80 + 16) = v82;
        *(v80 + 24) = v83;
        *(v80 + 32) = v84;
        *(v80 + 40) = 0;
        v85 = v102;
        sub_100008DD0(v60, v102, &qword_10005B388, &qword_100040AD8);
        v86 = v104;
        sub_100008DD0(v77, v104, &qword_10005BC20, &unk_100041660);
        v87 = v105;
        sub_100008DD0(v85, v105, &qword_10005B388, &qword_100040AD8);
        v88 = sub_100003090(&qword_10005BC50, &unk_100041738);
        v89 = v87 + *(v88 + 48);
        *v89 = 0;
        *(v89 + 8) = 1;
        sub_100008DD0(v86, v87 + *(v88 + 64), &qword_10005BC20, &unk_100041660);
        sub_1000038DC(v77, &qword_10005BC20, &unk_100041660);
        sub_1000038DC(v60, &qword_10005B388, &qword_100040AD8);
        sub_1000038DC(v86, &qword_10005BC20, &unk_100041660);
        sub_1000038DC(v85, &qword_10005B388, &qword_100040AD8);
        v90 = v106;
        sub_100008944(v87, v106, &qword_10005BC18, &qword_100041658);
        (*(v107 + 56))(v90, 0, 1, v108);
LABEL_12:
        sub_100008DD0(v90, v111, &qword_10005BC28, &qword_100041670);
        swift_storeEnumTagMultiPayload();
        sub_10002E3E4();
        sub_100003894(&qword_10005BC48, &qword_10005BC08, &qword_100041648);
        _ConditionalContent<>.init(storage:)();
        v42 = v90;
        v43 = &qword_10005BC28;
        v44 = &qword_100041670;
        return sub_1000038DC(v42, v43, v44);
      }

LABEL_11:
      v90 = v106;
      (*(v107 + 56))(v106, 1, 1, v108);
      goto LABEL_12;
    }
  }

  else
  {
    v92 = v39[1];
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10002D324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for TripViewPortraitNarrow();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v34[-v13];
  v15 = a1 + *(v4 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v40 = v16;
  v41 = v17;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.projectedValue.getter();
  v19 = v37;
  v18 = v38;
  v35 = v39;
  sub_10002DEFC(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_10002E29C(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for TripViewPortraitNarrow);
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for TripActionButton();
  *&v14[*(v23 + 20)] = KeyPath;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  *v14 = v19;
  *(v14 + 1) = v18;
  v14[16] = v35;
  v24 = &v14[*(v23 + 24)];
  *v24 = sub_10002E6C8;
  v24[1] = v21;
  LOBYTE(v21) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = &v14[*(v8 + 44)];
  *v25 = v21;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_100008DD0(v14, v12, &qword_10005A910, &qword_100040A50);
  v30 = v36;
  *v36 = 0;
  *(v30 + 8) = 1;
  v31 = v30;
  v32 = sub_100003090(&qword_10005A918, &qword_100040010);
  sub_100008DD0(v12, v31 + *(v32 + 48), &qword_10005A910, &qword_100040A50);
  sub_1000038DC(v14, &qword_10005A910, &qword_100040A50);
  return sub_1000038DC(v12, &qword_10005A910, &qword_100040A50);
}

uint64_t sub_10002D608(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A9F4(v6);
  v7 = &v6[*(v3 + 28)];
  v8 = *(v7 + 1);
  v15 = *v7;
  v16 = v8;
  v17 = *(v7 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v9 = v14[1];
  sub_1000086B4(v6);
  v10 = (a1 + *(type metadata accessor for TripViewPortraitNarrow() + 40));
  v11 = *v10;
  v12 = v10[1];
  v15 = v11;
  v16 = v12;
  v14[0] = v9;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  State.wrappedValue.setter();
  return sub_10002B0CC();
}

uint64_t sub_10002D724(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for TripViewPortraitNarrow() + 32));
  v5 = *v3;
  v6 = v3[1];

  sub_100003090(&qword_10005A858, &unk_10003FE20);
  return State.wrappedValue.setter();
}

double sub_10002D798@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for TripViewPortraitNarrow();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TripResetView();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100003090(&qword_10005A7D8, &unk_10003FD40);
  v15 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v17 = &v42 - v16;
  sub_10002A9F4(v9);
  v18 = &v9[*(v6 + 20)];
  v19 = *(v18 + 1);
  *&v45 = *v18;
  *(&v45 + 1) = v19;
  v46 = *(v18 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v20 = *&v52;
  sub_1000086B4(v9);
  sub_10002A9F4(v9);
  v21 = &v9[*(v6 + 20)];
  v22 = *(v21 + 1);
  *&v45 = *v21;
  *(&v45 + 1) = v22;
  v46 = *(v21 + 1);
  Binding.wrappedValue.getter();
  v23 = *(&v52 + 1);
  sub_1000086B4(v9);
  sub_10002DEFC(a1, v5);
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_10002E29C(v5, v25 + v24, type metadata accessor for TripViewPortraitNarrow);
  *v14 = v20 * 0.9;
  v14[1] = v23 * 0.4;
  *(v14 + 2) = sub_10002DFD4;
  *(v14 + 3) = v25;
  v26 = (v14 + *(v11 + 36));
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26->i8[v27], v28, v29);
  *v26 = vdupq_n_s64(0x4046000000000000uLL);
  sub_10002A9F4(v9);
  v30 = &v9[*(v6 + 20)];
  v31 = *(v30 + 1);
  *&v45 = *v30;
  *(&v45 + 1) = v31;
  v46 = *(v30 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v9);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002E29C(v14, v17, type metadata accessor for TripResetView);
  v32 = &v17[*(v43 + 36)];
  v33 = v50;
  *(v32 + 4) = v49;
  *(v32 + 5) = v33;
  *(v32 + 6) = v51;
  v34 = v46;
  *v32 = v45;
  *(v32 + 1) = v34;
  v35 = v48;
  *(v32 + 2) = v47;
  *(v32 + 3) = v35;
  sub_10002A9F4(v9);
  v36 = &v9[*(v6 + 20)];
  v37 = *(v36 + 1);
  *&v52 = *v36;
  *(&v52 + 1) = v37;
  v53 = *(v36 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v44;
  sub_100008944(v17, v44, &qword_10005A7D8, &unk_10003FD40);
  v39 = (v38 + *(sub_100003090(&qword_10005A7E8, &qword_10003FD50) + 36));
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  result = v54[0];
  v39[2] = *v54;
  return result;
}

uint64_t sub_10002DD20(char a1)
{
  if (a1)
  {
    sub_100009AE4();
  }

  v1 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();
}

uint64_t sub_10002DDBC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TripViewPortraitNarrow() + 24));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_10002DE78@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_100003090(&qword_10005BBC8, &qword_100041500);
  sub_10002B4A4(v1, (a1 + *(v4 + 44)));
  result = sub_100003090(&qword_10005BBD0, &qword_100041508);
  v6 = (a1 + *(result + 36));
  *v6 = 0xD000000000000012;
  v6[1] = 0x8000000100042830;
  return result;
}

uint64_t sub_10002DEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewPortraitNarrow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10002DF64(char a1)
{
  v3 = *(type metadata accessor for TripViewPortraitNarrow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10002BC7C(a1, v4);
}

uint64_t sub_10002DFD4(char a1)
{
  v2 = *(*(type metadata accessor for TripViewPortraitNarrow() - 8) + 80);

  return sub_10002DD20(a1 & 1);
}

void sub_10002E060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for CardCellConfiguration(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100003090(&qword_10005D490, &unk_1000404E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10002E168(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_10002E230@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E264(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10002E29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002E304()
{
  v1 = *(type metadata accessor for TripViewPortraitNarrow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10002D608(v2);
}

uint64_t sub_10002E364(uint64_t *a1)
{
  v3 = *(type metadata accessor for TripViewPortraitNarrow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10002D724(a1, v4);
}

unint64_t sub_10002E3E4()
{
  result = qword_10005BC38;
  if (!qword_10005BC38)
  {
    sub_1000036BC(&qword_10005BC28, &qword_100041670);
    sub_100003894(&qword_10005BC40, &qword_10005BC18, &qword_100041658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC38);
  }

  return result;
}

uint64_t sub_10002E49C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E4D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10002E528()
{
  v1 = type metadata accessor for TripViewPortraitNarrow();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);
    v8 = (v5 + *(v7 + 20));
    v9 = *v8;

    v10 = v8[1];

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
    v11 = *v5;
  }

  v12 = *(v5 + v1[5]);

  v13 = *(v5 + v1[6] + 8);

  v14 = (v5 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(v5 + v1[9] + 8);

  v18 = *(v5 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10002E6C8()
{
  type metadata accessor for TripViewPortraitNarrow();

  sub_100009ADC();
}

unint64_t sub_10002E6F8()
{
  result = qword_10005BC58;
  if (!qword_10005BC58)
  {
    sub_1000036BC(&qword_10005BBD0, &qword_100041508);
    sub_100003894(&qword_10005BC60, &qword_10005BC68, &qword_100041748);
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC58);
  }

  return result;
}

uint64_t sub_10002E80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_10002E910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100008DD0(a1, a4, a2, a3);
  v7 = sub_100003090(a2, a3);
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, 0, 1, v7);
}

uint64_t sub_10002E9F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002EA6C()
{
  v1 = OBJC_IVAR____TtC4Trip21CardCellConfiguration__isClipped;
  v2 = sub_100003090(&qword_10005C388, &qword_100041B78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip21CardCellConfiguration_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);

  v6 = *(v0 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);

  v7 = *(v0 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_symbolImageName + 8);

  v8 = *(v0 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_cancellables);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

void sub_10002EBC8()
{
  sub_10002F478(319, &unk_10005BCB8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10002ECDC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CardCellConfiguration(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002ED1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

Swift::Int sub_10002ED38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100030728(&qword_10005C358, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002EDD8()
{
  v1 = *v0;
  type metadata accessor for UUID();
  sub_100030728(&qword_10005C358, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10002EE60()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  type metadata accessor for UUID();
  sub_100030728(&qword_10005C358, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002EEFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002EF70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002EFE4(char a1, char a2)
{
  v5 = sub_100003090(&qword_10005C380, &qword_100041B28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = sub_100003090(&qword_10005C378, &qword_100041B20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  UUID.init()();
  v15 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v11 + 32))(v2 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v18[0] = _swiftEmptyArrayStorage;
  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v16, v9, v5);
  *(v2 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType) = a1 & 1;
  *(v2 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle) = a2;
  return v2;
}

uint64_t sub_10002F1FC()
{
  v1 = OBJC_IVAR____TtC4Trip9CardModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v4 = sub_100003090(&qword_10005C378, &qword_100041B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v6 = sub_100003090(&qword_10005C380, &qword_100041B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

void sub_10002F358()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10002F478(319, &qword_10005BE38);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10002F4C4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10002F478(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10002F4C4()
{
  if (!qword_10005BE40)
  {
    sub_1000036BC(&qword_10005BA28, &qword_1000413F0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10005BE40);
    }
  }
}

uint64_t sub_10002F528@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CardModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002F574@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_10002F5EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_10002F608()
{
  _StringGuts.grow(_:)(22);

  type metadata accessor for UUID();
  sub_100030728(&qword_10005C368, &type metadata accessor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3D656D616E203A29;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.append(_:)(v3);

  return 0x65646F4D64726143;
}

uint64_t *sub_10002F77C(uint64_t *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = *result;
    strcpy(v6, "[TripCard] - ");
    HIWORD(v6[1]) = -4864;
    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
    sub_100034CE8(v6[0], v6[1], 0xD00000000000001ELL, 0x8000000100043460, 110);

    v4 = String._bridgeToObjectiveC()();
    v5 = sub_100033ADC(v4);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10002F89C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002F8F4();
  }

  return result;
}

uint64_t sub_10002F8F4()
{
  v1 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v21 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_trip);
  v7 = dispatch thunk of CAFTripObservable.showOdometer.getter();
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_odometer);
  dispatch thunk of CAFOdometerObservable.distanceKM.getter();
  Measurement.value.getter();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v5, v1);
  if (v10 == 0.0 || (dispatch thunk of CAFOdometerObservable.distanceMiles.getter(), Measurement.value.getter(), v13 = v12, v11(v5, v1), v13 == 0.0))
  {
LABEL_5:
    v14 = sub_10001835C(*(v0 + OBJC_IVAR____TtC4Trip8TripCard_appConfig));
  }

  else
  {
    v19 = sub_10001835C(*(v0 + OBJC_IVAR____TtC4Trip8TripCard_appConfig));
    v20 = sub_100019F14();
    v22 = v19;
    sub_100030AB4(v20);
    v14 = v22;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v22 = 0xD000000000000015;
  v23 = 0x8000000100043420;
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21[1] = v15;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x736C6C656320;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  sub_100034CE8(v22, v23, 0x6543657461647075, 0xED00002928736C6CLL, 167);

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v14;

  return static Published.subscript.setter();
}

id sub_10002FBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_trip);
  v2 = CAFTripObservable.observed.getter();
  v3 = [v2 hasReset];

  return v3;
}

void sub_10002FC0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_appConfig);

  v2 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_cancellables);

  v3 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable);
}

uint64_t sub_10002FC7C()
{
  v1 = OBJC_IVAR____TtC4Trip9CardModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v4 = sub_100003090(&qword_10005C378, &qword_100041B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v6 = sub_100003090(&qword_10005C380, &qword_100041B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_appConfig);

  v8 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_cancellables);

  return v0;
}

uint64_t sub_10002FDC4()
{
  sub_10002FC7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10002FEA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10002FF08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

unint64_t sub_10002FF68()
{
  v1 = v0;
  v2 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - v5;
  v34 = _swiftEmptyArrayStorage;
  v7 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_consumption);
  result = sub_10001A3D0();
  if (result >> 62)
  {
    v30 = result;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    result = v30;
  }

  else
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v10 = *(result + 32);
    }

    *(v10 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 4;
    v11 = [objc_opt_self() mainBundle];
    v35._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD000000000000017;
    v12._object = 0x80000001000433E0;
    v13.value._countAndFlagsBits = 1885958740;
    v13.value._object = 0xE400000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v35);

    v16 = *(v10 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
    *(v10 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v15;

    sub_100003090(&qword_10005D490, &unk_1000404E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100040BE0;
    *(inited + 32) = v10;
    sub_100030AB4(inited);
  }

  else
  {
  }

  v18 = *(v1 + OBJC_IVAR____TtC4Trip8InfoCard_odometer);
  if (v18)
  {
    v19 = v18;
    dispatch thunk of CAFOdometerObservable.distanceKM.getter();
    Measurement.value.getter();
    v21 = v20;
    v22 = *(v3 + 8);
    v22(v6, v2);
    if (v21 != 0.0)
    {
      dispatch thunk of CAFOdometerObservable.distanceMiles.getter();
      Measurement.value.getter();
      v24 = v23;
      v22(v6, v2);
      if (v24 != 0.0)
      {
        v25 = sub_100019F14();
        sub_100030AB4(v25);
      }
    }
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v32 = 0xD000000000000015;
  v33 = 0x8000000100043400;
  v26 = v34;
  if (v34 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31[1] = v27;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x736C6C656320;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  sub_100034CE8(v32, v33, 0x6543657461647075, 0xED00002928736C6CLL, 232);

  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v26;

  return static Published.subscript.setter();
}

void sub_100030364()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_cancellables);

  v2 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable);
}

uint64_t sub_1000303C4()
{
  v1 = OBJC_IVAR____TtC4Trip9CardModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v4 = sub_100003090(&qword_10005C378, &qword_100041B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v6 = sub_100003090(&qword_10005C380, &qword_100041B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_consumption);

  v8 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_cancellables);

  v9 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v10, v11);
}

uint64_t sub_100030570(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100030634()
{
  result = qword_10005C348;
  if (!qword_10005C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C348);
  }

  return result;
}

unint64_t sub_10003068C()
{
  result = qword_10005C350;
  if (!qword_10005C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C350);
  }

  return result;
}

uint64_t sub_100030728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000307B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100030838(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000308AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100030930(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000309B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100030A38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100030AB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100030BA4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100030C44(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100030BA4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100030C44(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100003894(&qword_10005C370, &qword_10005BA28, &qword_1000413F0);
          for (i = 0; i != v6; ++i)
          {
            sub_100003090(&qword_10005BA28, &qword_1000413F0);
            v9 = sub_100030F9C(v13, i, a3);
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
        type metadata accessor for CardCellConfiguration(0);
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

uint64_t sub_100030DE8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100003894(&qword_10005C680, &qword_10005C678, &qword_100041D58);
          for (i = 0; i != v6; ++i)
          {
            sub_100003090(&qword_10005C678, &qword_100041D58);
            v9 = sub_100031024(v13, i, a3);
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
        sub_100014060(0, &qword_10005B5C8, CAFTrip_ptr);
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

uint64_t (*sub_100030F9C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
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
    return sub_10003101C;
  }

  __break(1u);
  return result;
}

void (*sub_100031024(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000310A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000310C8(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_100003090(&qword_10005C390, &qword_100041B80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v175 = &v172 - v9;
  v176 = sub_100003090(&qword_10005C398, &qword_100041B88);
  v174 = *(v176 - 8);
  v10 = *(v174 + 64);
  __chkstk_darwin(v176);
  v173 = &v172 - v11;
  v179 = sub_100003090(&qword_10005C3A0, &qword_100041B90);
  v178 = *(v179 - 8);
  v12 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v172 - v13;
  v224 = sub_100003090(&qword_10005C3A8, &qword_100041B98);
  v223 = *(v224 - 8);
  v14 = *(v223 + 64);
  __chkstk_darwin(v224);
  v222 = &v172 - v15;
  v16 = sub_100003090(&qword_10005C3B0, &qword_100041BA0);
  v226 = *(v16 - 8);
  v227 = v16;
  v17 = *(v226 + 64);
  __chkstk_darwin(v16);
  v225 = &v172 - v18;
  v218 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v217 = *(v218 - 8);
  v19 = *(v217 + 64);
  __chkstk_darwin(v218);
  v215 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_100003090(&qword_10005C3B8, &qword_100041BA8);
  v213 = *(v214 - 8);
  v21 = *(v213 + 64);
  __chkstk_darwin(v214);
  v212 = &v172 - v22;
  v220 = sub_100003090(&qword_10005C3C0, &qword_100041BB0);
  v219 = *(v220 - 8);
  v23 = *(v219 + 64);
  __chkstk_darwin(v220);
  v216 = &v172 - v24;
  v208 = sub_100003090(&qword_10005C3C8, &qword_100041BB8);
  v207 = *(v208 - 8);
  v25 = *(v207 + 64);
  __chkstk_darwin(v208);
  v206 = &v172 - v26;
  v211 = sub_100003090(&qword_10005C3D0, &qword_100041BC0);
  v27 = *(*(v211 - 8) + 64);
  v28 = __chkstk_darwin(v211);
  v210 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v237 = &v172 - v30;
  v204 = sub_100003090(&qword_10005C3D8, &qword_100041BC8);
  v203 = *(v204 - 8);
  v31 = *(v203 + 64);
  __chkstk_darwin(v204);
  v202 = &v172 - v32;
  v209 = sub_100003090(&qword_10005C3E0, &qword_100041BD0);
  v33 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v236 = &v172 - v34;
  v201 = sub_100003090(&qword_10005C3E8, &qword_100041BD8);
  v200 = *(v201 - 8);
  v35 = *(v200 + 64);
  __chkstk_darwin(v201);
  v199 = &v172 - v36;
  v205 = sub_100003090(&qword_10005C3F0, &qword_100041BE0);
  v37 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v235 = &v172 - v38;
  v240 = sub_100003090(&qword_10005C3F8, &qword_100041BE8);
  v228 = *(v240 - 8);
  v39 = *(v228 + 64);
  __chkstk_darwin(v240);
  v239 = &v172 - v40;
  v229 = sub_100003090(&qword_10005C400, &qword_100041BF0);
  v191 = *(v229 - 1);
  v41 = *(v191 + 64);
  __chkstk_darwin(v229);
  v189 = &v172 - v42;
  v197 = sub_100003090(&qword_10005C408, &qword_100041BF8);
  v43 = *(*(v197 - 8) + 64);
  __chkstk_darwin(v197);
  v196 = &v172 - v44;
  v188 = sub_100003090(&qword_10005C410, &qword_100041C00);
  v187 = *(v188 - 8);
  v45 = *(v187 + 64);
  __chkstk_darwin(v188);
  v186 = &v172 - v46;
  v195 = sub_100003090(&qword_10005C418, &qword_100041C08);
  v47 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v194 = &v172 - v48;
  v230 = sub_100003090(&qword_10005C420, &qword_100041C10);
  v184 = *(v230 - 8);
  v49 = *(v184 + 64);
  __chkstk_darwin(v230);
  v183 = &v172 - v50;
  v193 = sub_100003090(&qword_10005C428, &qword_100041C18);
  v51 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v233 = &v172 - v52;
  *&v242 = sub_100003090(&qword_10005C430, &qword_100041C20);
  v231 = *(v242 - 8);
  v53 = *(v231 + 64);
  __chkstk_darwin(v242);
  v55 = &v172 - v54;
  v190 = sub_100003090(&qword_10005C438, &qword_100041C28);
  v56 = *(*(v190 - 8) + 64);
  __chkstk_darwin(v190);
  v232 = &v172 - v57;
  v238 = sub_100003090(&qword_10005C440, &qword_100041C30);
  v221 = *(v238 - 8);
  v58 = *(v221 + 64);
  __chkstk_darwin(v238);
  v241 = &v172 - v59;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v60 = sub_10001F2E0(_swiftEmptyArrayStorage);
  }

  else
  {
    v60 = &_swiftEmptySetSingleton;
  }

  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_cancellables) = v60;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable) = 0;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_trip) = a1;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_odometer) = a2;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_appConfig) = a3;

  v61 = a1;
  v62 = a2;
  sub_10002EFE4(0, 1);
  v243 = 0;
  v244 = 0xE000000000000000;
  v63 = v3;

  _StringGuts.grow(_:)(37);

  v243 = 0xD000000000000017;
  v244 = 0x8000000100043440;
  v64 = [v61 description];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  v68._countAndFlagsBits = v65;
  v68._object = v67;
  String.append(_:)(v68);

  v69._countAndFlagsBits = 0x6574656D6F646F20;
  v69._object = 0xEA00000000003D72;
  String.append(_:)(v69);
  v234 = v62;
  v70 = [v62 description];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74._countAndFlagsBits = v71;
  v74._object = v73;
  String.append(_:)(v74);

  sub_100034CE8(v243, v244, 0xD00000000000001ELL, 0x8000000100043460, 100);

  dispatch thunk of CAFTripObservable.userVisibleLabel.getter();
  if (v75)
  {
    v76 = String._bridgeToObjectiveC()();

    v77 = sub_100033ADC(v76);

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v77 = [objc_opt_self() mainBundle];
    v245._object = 0xE000000000000000;
    v80._countAndFlagsBits = 0x4241545F50495254;
    v80._object = 0xE800000000000000;
    v81.value._countAndFlagsBits = 1885958740;
    v81.value._object = 0xE400000000000000;
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    v245._countAndFlagsBits = 0;
    v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v77, v82, v245);
    object = v83._object;
    countAndFlagsBits = v83._countAndFlagsBits;
  }

  v84 = countAndFlagsBits;
  v85 = object;

  swift_getKeyPath();
  swift_getKeyPath();
  v243 = v84;
  v244 = v85;

  static Published.subscript.setter();
  v243 = dispatch thunk of CAFTripObservable.$userVisibleLabel.getter();
  v192 = v63;

  sub_100003090(&qword_10005C448, &qword_100041C38);
  sub_100003894(&qword_10005C450, &qword_10005C448, &qword_100041C38);
  Publisher<>.sink(receiveValue:)();

  v198 = OBJC_IVAR____TtC4Trip8TripCard_cancellables;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v86 = v61;
  v243 = dispatch thunk of CAFTripObservable.$averageSpeed.getter();
  sub_100003090(&qword_10005C458, &qword_100041C40);
  v87 = sub_100003090(&qword_10005C460, &qword_100041C48);
  sub_100003894(&qword_10005C468, &qword_10005C458, &qword_100041C40);
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C470, &qword_10005C430, &qword_100041C20);
  v88 = v242;
  v89 = Publisher.eraseToAnyPublisher()();

  (*(v231 + 8))(v55, v88);
  v243 = v89;
  sub_100003090(&qword_10005C478, &unk_100041C50);
  v90 = *(*(v87 - 8) + 72);
  v91 = (*(*(v87 - 8) + 80) + 32) & ~*(*(v87 - 8) + 80);
  v92 = swift_allocObject();
  v242 = xmmword_10003FA90;
  *(v92 + 16) = xmmword_10003FA90;
  v93 = sub_100003090(&qword_10005B540, &qword_100040CD8);
  (*(*(v93 - 8) + 56))(v92 + v91, 1, 1, v93);
  sub_100003090(&qword_10005C480, &qword_100041C60);
  sub_100003894(&qword_10005C488, &qword_10005C480, &qword_100041C60);
  Publisher.prepend(_:)();

  v94 = v86;
  v243 = dispatch thunk of CAFTripObservable.$distance.getter();
  v185 = sub_100003090(&qword_10005C490, &qword_100041C68);
  v95 = sub_100003090(&qword_10005C498, &qword_100041C70);
  v231 = sub_100003894(&qword_10005C4A0, &qword_10005C490, &qword_100041C68);
  v96 = v183;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C4A8, &qword_10005C420, &qword_100041C10);
  v97 = v230;
  v98 = Publisher.eraseToAnyPublisher()();

  (*(v184 + 8))(v96, v97);
  v243 = v98;
  sub_100003090(&qword_10005C4B0, &qword_100041C78);
  v99 = *(*(v95 - 8) + 72);
  v100 = (*(*(v95 - 8) + 80) + 32) & ~*(*(v95 - 8) + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = v242;
  v230 = sub_100003090(&qword_10005B560, &qword_100041C80);
  v102 = *(v230 - 8);
  v103 = *(v102 + 56);
  v184 = v102 + 56;
  v103(v101 + v100, 1, 1, v230);
  sub_100003090(&qword_10005C4B8, &qword_100041C88);
  sub_100003894(&qword_10005C4C0, &qword_10005C4B8, &qword_100041C88);
  Publisher.prepend(_:)();

  v243 = dispatch thunk of CAFTripObservable.$duration.getter();
  sub_100003090(&qword_10005C4C8, &qword_100041C90);
  v104 = sub_100003090(&qword_10005C4D0, &qword_100041C98);
  sub_100003894(&qword_10005C4D8, &qword_10005C4C8, &qword_100041C90);
  v105 = v186;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C4E0, &qword_10005C410, &qword_100041C00);
  v106 = v188;
  v107 = Publisher.eraseToAnyPublisher()();

  (*(v187 + 8))(v105, v106);
  v243 = v107;
  sub_100003090(&qword_10005C4E8, &unk_100041CA0);
  v108 = *(*(v104 - 8) + 72);
  v109 = (*(*(v104 - 8) + 80) + 32) & ~*(*(v104 - 8) + 80);
  v110 = swift_allocObject();
  *(v110 + 16) = v242;
  v111 = sub_100003090(&qword_10005B550, &qword_100040CE8);
  (*(*(v111 - 8) + 56))(v110 + v109, 1, 1, v111);
  sub_100003090(&qword_10005C4F0, &qword_100041CB0);
  sub_100003894(&qword_10005C4F8, &qword_10005C4F0, &qword_100041CB0);
  Publisher.prepend(_:)();

  v243 = dispatch thunk of CAFTripObservable.$energy.getter();
  sub_100003090(&qword_10005C500, &qword_100041CB8);
  v112 = sub_100003090(&qword_10005C508, &qword_100041CC0);
  sub_100003894(&qword_10005C510, &qword_10005C500, &qword_100041CB8);
  v113 = v189;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C518, &qword_10005C400, &qword_100041BF0);
  v114 = v229;
  v115 = Publisher.eraseToAnyPublisher()();

  (*(v191 + 8))(v113, v114);
  v243 = v115;
  sub_100003090(&qword_10005C520, &qword_100041CC8);
  v116 = *(*(v112 - 8) + 72);
  v117 = (*(*(v112 - 8) + 80) + 32) & ~*(*(v112 - 8) + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = v242;
  v119 = sub_100003090(&qword_10005B530, &qword_100041CD0);
  (*(*(v119 - 8) + 56))(v118 + v117, 1, 1, v119);
  sub_100003090(&qword_10005C528, &qword_100041CD8);
  sub_100003894(&qword_10005C530, &qword_10005C528, &qword_100041CD8);
  Publisher.prepend(_:)();

  v229 = &protocol conformance descriptor for Publishers.Concatenate<A, B>;
  sub_100003894(&qword_10005C538, &qword_10005C438, &qword_100041C28);
  sub_100003894(&qword_10005C540, &qword_10005C428, &qword_100041C18);
  sub_100003894(&qword_10005C548, &qword_10005C418, &qword_100041C08);
  sub_100003894(&qword_10005C550, &qword_10005C408, &qword_100041BF8);
  Publishers.CombineLatest4.init(_:_:_:_:)();
  v182 = v94;
  v243 = dispatch thunk of CAFTripObservable.$energyEfficiency.getter();
  sub_100003090(&qword_10005C558, &qword_100041CE0);
  v120 = sub_100003090(&qword_10005C560, &qword_100041CE8);
  sub_100003894(&qword_10005C568, &qword_10005C558, &qword_100041CE0);
  v121 = v199;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C570, &qword_10005C3E8, &qword_100041BD8);
  v122 = v201;
  v123 = Publisher.eraseToAnyPublisher()();

  (*(v200 + 8))(v121, v122);
  v243 = v123;
  sub_100003090(&qword_10005C578, &unk_100041CF0);
  v124 = *(*(v120 - 8) + 72);
  v125 = (*(*(v120 - 8) + 80) + 32) & ~*(*(v120 - 8) + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = v242;
  v127 = sub_100003090(&qword_10005B520, &qword_100040CC0);
  (*(*(v127 - 8) + 56))(v126 + v125, 1, 1, v127);
  sub_100003090(&qword_10005C580, &qword_100041D00);
  sub_100003894(&qword_10005C588, &qword_10005C580, &qword_100041D00);
  Publisher.prepend(_:)();

  v243 = dispatch thunk of CAFTripObservable.$fuelEfficiency.getter();
  sub_100003090(&qword_10005C590, &qword_100041D08);
  v128 = sub_100003090(&qword_10005C598, &qword_100041D10);
  sub_100003894(&qword_10005C5A0, &qword_10005C590, &qword_100041D08);
  v129 = v202;
  Publisher.map<A>(_:)();
  v181 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100003894(&qword_10005C5A8, &qword_10005C3D8, &qword_100041BC8);
  v130 = v204;
  v131 = Publisher.eraseToAnyPublisher()();

  (*(v203 + 8))(v129, v130);
  v243 = v131;
  sub_100003090(&qword_10005C5B0, &qword_100041D18);
  v132 = *(*(v128 - 8) + 72);
  v133 = (*(*(v128 - 8) + 80) + 32) & ~*(*(v128 - 8) + 80);
  v134 = swift_allocObject();
  *(v134 + 16) = v242;
  v135 = sub_100003090(&qword_10005B518, &qword_100041D20);
  (*(*(v135 - 8) + 56))(v134 + v133, 1, 1, v135);
  sub_100003090(&qword_10005C5B8, &qword_100041D28);
  v180 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100003894(&qword_10005C5C0, &qword_10005C5B8, &qword_100041D28);
  Publisher.prepend(_:)();

  v243 = dispatch thunk of CAFOdometerObservable.$distanceMiles.getter();
  v233 = sub_100003090(&qword_10005C5C8, &qword_100041D30);
  v232 = sub_100003894(&qword_10005C5D0, &qword_10005C5C8, &qword_100041D30);
  v204 = sub_10002E80C;
  v136 = v206;
  Publisher.map<A>(_:)();
  v203 = sub_100003894(&qword_10005C5D8, &qword_10005C3C8, &qword_100041BB8);
  v137 = v208;
  v138 = Publisher.eraseToAnyPublisher()();

  v207 = *(v207 + 8);
  (v207)(v136, v137);
  v243 = v138;
  v202 = sub_100003090(&qword_10005C5E0, &qword_100041D38);
  v201 = *(v184 + 16);
  v139 = (*(v184 + 24) + 32) & ~*(v184 + 24);
  v140 = swift_allocObject();
  *(v140 + 16) = v242;
  v141 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v142 = *(v141 - 8);
  v199 = *(v142 + 56);
  v200 = v142 + 56;
  (v199)(v140 + v139, 1, 1, v141);
  Publisher.prepend(_:)();

  v243 = dispatch thunk of CAFOdometerObservable.$distanceKM.getter();
  Publisher.map<A>(_:)();
  v143 = Publisher.eraseToAnyPublisher()();

  (v207)(v136, v137);
  v243 = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = v242;
  (v199)(v144 + v139, 1, 1, v141);
  v145 = v192;
  Publisher.prepend(_:)();

  sub_100003894(&qword_10005C5E8, &qword_10005C3F0, &qword_100041BE0);
  sub_100003894(&qword_10005C5F0, &qword_10005C3E0, &qword_100041BD0);
  sub_100003894(&qword_10005C5F8, &qword_10005C3D0, &qword_100041BC0);
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_100003894(&qword_10005C600, &qword_10005C440, &qword_100041C30);
  sub_100003894(&qword_10005C608, &qword_10005C3F8, &qword_100041BE8);
  v146 = v212;
  Publisher.combineLatest<A>(_:)();
  v147 = v215;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v236 = objc_opt_self();
  v148 = [v236 mainRunLoop];
  v243 = v148;
  v149 = sub_100014060(0, &qword_10005C610, NSRunLoop_ptr);
  sub_100003894(&qword_10005C618, &qword_10005C3B8, &qword_100041BA8);
  v150 = sub_10003396C();
  v151 = v216;
  v152 = v214;
  *&v242 = v149;
  v237 = v150;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v217 + 8))(v147, v218);
  (*(v213 + 8))(v146, v152);
  swift_allocObject();
  swift_weakInit();
  sub_100003894(&qword_10005C628, &qword_10005C3C0, &qword_100041BB0);
  v153 = v220;
  Publisher<>.sink(receiveValue:)();

  (*(v219 + 8))(v151, v153);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v243 = dispatch thunk of CAFTripObservable.$showOdometer.getter();
  sub_100003090(&qword_10005C630, &qword_100041D40);
  sub_100003090(&qword_10005C638, &qword_100041D48);
  sub_100003894(&qword_10005C640, &qword_10005C630, &qword_100041D40);
  v154 = v222;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C648, &qword_10005C3A8, &qword_100041B98);
  v155 = v224;
  v156 = Publisher.eraseToAnyPublisher()();

  (*(v223 + 8))(v154, v155);
  v243 = v156;
  sub_100003090(&qword_10005C650, &qword_100041D50);
  sub_100003894(&qword_10005C658, &qword_10005C650, &qword_100041D50);
  v157 = v225;
  Publisher.prepend(_:)();

  swift_allocObject();
  swift_weakInit();

  sub_100003894(&qword_10005C660, &qword_10005C3B0, &qword_100041BA0);
  v158 = v227;
  Publisher<>.sink(receiveValue:)();

  (*(v226 + 8))(v157, v158);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v159 = CAFTripObservable.observed.getter();
  v160 = [v159 car];

  if (v160)
  {
    v161 = CAFCar.dimesionObservable.getter();
  }

  else
  {
    v161 = 0;
  }

  v162 = *(v145 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable);
  *(v145 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable) = v161;
  v163 = v161;

  if (v161)
  {
    v164 = v173;
    dispatch thunk of CAFDimensionObservable.$measurementSystem.getter();
    v165 = [v236 mainRunLoop];
    v243 = v165;
    v166 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v167 = v175;
    (*(*(v166 - 8) + 56))(v175, 1, 1, v166);
    sub_100003894(&qword_10005C668, &qword_10005C398, &qword_100041B88);
    v168 = v177;
    v169 = v176;
    Publisher.receive<A>(on:options:)();
    sub_100033A44(v167);

    (*(v174 + 8))(v164, v169);
    swift_allocObject();
    swift_weakInit();
    sub_100003894(&qword_10005C670, &qword_10005C3A0, &qword_100041B90);
    v170 = v179;
    Publisher<>.sink(receiveValue:)();

    (*(v178 + 8))(v168, v170);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  sub_10002F8F4();
  (*(v228 + 8))(v239, v240);
  (*(v221 + 8))(v241, v238);
  return v145;
}

unint64_t sub_10003396C()
{
  result = qword_10005C620;
  if (!qword_10005C620)
  {
    sub_100014060(255, &qword_10005C610, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C620);
  }

  return result;
}

uint64_t sub_1000339D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033A44(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005C390, &qword_100041B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100033ADC(void *a1)
{
  v1 = a1;
  v2 = CAFFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_100056FE8 table:@"Localizable"];

  return v3;
}

uint64_t sub_100033B50(void *a1, void *a2, int a3, int a4)
{
  v5 = v4;
  LODWORD(v73) = a4;
  LODWORD(v72) = a3;
  v8 = sub_100003090(&qword_10005C398, &qword_100041B88);
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  __chkstk_darwin(v8);
  v66 = &v63 - v10;
  v11 = sub_100003090(&qword_10005C3A0, &qword_100041B90);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  __chkstk_darwin(v11);
  v69 = &v63 - v13;
  v14 = sub_100003090(&qword_10005C688, &qword_100041D60);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  __chkstk_darwin(v14);
  v75 = &v63 - v16;
  v17 = sub_100003090(&qword_10005C390, &qword_100041B80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v63 - v19;
  v21 = sub_100003090(&qword_10005C690, &qword_100041D68);
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v25 = sub_100003090(&qword_10005C698, &qword_100041D70);
  v64 = *(v25 - 8);
  v65 = v25;
  v26 = *(v64 + 64);
  __chkstk_darwin(v25);
  v28 = &v63 - v27;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v29 = sub_10001F2E0(_swiftEmptyArrayStorage);
  }

  else
  {
    v29 = &_swiftEmptySetSingleton;
  }

  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_cancellables) = v29;
  v30 = OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable;
  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable) = 0;
  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_consumption) = a1;
  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_odometer) = a2;
  v31 = a2;
  v74 = a1;
  v32 = CAFFuelConsumptionObservable.observed.getter();
  v33 = [v32 car];

  if (v33)
  {
    v34 = CAFCar.dimesionObservable.getter();
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v5 + v30);
  *(v5 + v30) = v34;

  sub_10002EFE4(v72 & 1, v73 & 1);
  v36 = objc_opt_self();

  v37 = [v36 mainBundle];
  v80._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0x5F454C4349484556;
  v38._object = 0xEC0000004F464E49;
  v39.value._countAndFlagsBits = 1885958740;
  v39.value._object = 0xE400000000000000;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v80);

  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v41;
  static Published.subscript.setter();
  if (a2)
  {
    v42 = v31;
    v78._countAndFlagsBits = dispatch thunk of CAFOdometerObservable.$distanceMiles.getter();
    v79 = dispatch thunk of CAFOdometerObservable.$distanceKM.getter();
    sub_100003090(&qword_10005C5C8, &qword_100041D30);
    sub_100003894(&qword_10005C5D0, &qword_10005C5C8, &qword_100041D30);
    Publishers.CombineLatest.init(_:_:)();
    v43 = [objc_opt_self() mainRunLoop];
    v78._countAndFlagsBits = v43;
    v44 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
    sub_100014060(0, &qword_10005C610, NSRunLoop_ptr);
    sub_100003894(&qword_10005C6B8, &qword_10005C690, &qword_100041D68);
    sub_10003396C();
    Publisher.receive<A>(on:options:)();
    sub_100033A44(v20);

    (*(v63 + 8))(v24, v21);
    swift_allocObject();
    swift_weakInit();
    sub_100003894(&qword_10005C6C0, &qword_10005C698, &qword_100041D70);
    v45 = v65;
    Publisher<>.sink(receiveValue:)();

    (*(v64 + 8))(v28, v45);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v78._countAndFlagsBits = dispatch thunk of CAFFuelConsumptionObservable.$fuelEfficiency.getter();
  v74 = objc_opt_self();
  v46 = [v74 mainRunLoop];
  v79 = v46;
  v47 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v64 = v47;
  v72 = v48 + 56;
  v73 = v49;
  (v49)(v20, 1, 1);
  sub_100003090(&qword_10005C6A0, &qword_100041D78);
  v50 = v20;
  v51 = sub_100014060(0, &qword_10005C610, NSRunLoop_ptr);
  sub_100003894(&qword_10005C6A8, &qword_10005C6A0, &qword_100041D78);
  sub_10003396C();
  v52 = v75;
  v65 = v51;
  v53 = v50;
  Publisher.receive<A>(on:options:)();
  sub_100033A44(v50);

  swift_allocObject();
  swift_weakInit();
  sub_100003894(&qword_10005C6B0, &qword_10005C688, &qword_100041D60);
  v54 = v77;
  Publisher<>.sink(receiveValue:)();

  (*(v76 + 8))(v52, v54);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v55 = *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable);
  if (v55)
  {
    v56 = v55;
    v57 = v66;
    dispatch thunk of CAFDimensionObservable.$measurementSystem.getter();
    v58 = [v74 mainRunLoop];
    v78._countAndFlagsBits = v58;
    v73(v50, 1, 1, v64);
    sub_100003894(&qword_10005C668, &qword_10005C398, &qword_100041B88);
    v59 = v68;
    v60 = v69;
    Publisher.receive<A>(on:options:)();
    sub_100033A44(v53);

    (*(v67 + 8))(v57, v59);
    swift_allocObject();
    swift_weakInit();
    sub_100003894(&qword_10005C670, &qword_10005C3A0, &qword_100041B90);
    v61 = v71;
    Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v60, v61);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  sub_10002FF68();
  return v5;
}

uint64_t sub_1000346E8()
{
  sub_100034D18();
  result = OS_os_log.init(subsystem:category:)();
  qword_10005D618 = result;
  return result;
}

uint64_t sub_100034740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003480C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001F78C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000085F8(v11);
  return v7;
}

unint64_t sub_10003480C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100034918(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100034918(uint64_t a1, unint64_t a2)
{
  v4 = sub_100034964(a1, a2);
  sub_100034A94(&off_100055CD0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100034964(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100034B80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100034B80(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100034A94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100034BF4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100034B80(uint64_t a1, uint64_t a2)
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

  sub_100003090(&qword_10005C6C8, &unk_100041D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100034BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003090(&qword_10005C6C8, &unk_100041D88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100034D18()
{
  result = qword_10005C6D0;
  if (!qword_10005C6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005C6D0);
  }

  return result;
}

uint64_t sub_100034D7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (qword_10005A3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_10005D618;
  result = os_log_type_enabled(qword_10005D618, v11);
  if (result)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100034740(a3, a4, &v15);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_100034740(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v12, v11, "%s: %ld  %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

void sub_100034F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100034FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100035098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10003517C()
{
  sub_100034F44(319, &qword_10005A6C0, type metadata accessor for LayoutConfiguration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100034F44(319, &unk_10005C740, type metadata accessor for CardCellConfiguration, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100035294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_1000133E0(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003656C(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

__n128 sub_100035460@<Q0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_100003090(&qword_10005C810, &qword_100041E68);
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v5 = &v23 - v4;
  v6 = sub_100003090(&qword_10005C818, &qword_100041E70);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v25 = v1;
  static Axis.Set.vertical.getter();
  sub_100003090(&qword_10005C820, &qword_100041E78);
  sub_100003894(&qword_10005C828, &qword_10005C820, &qword_100041E78);
  ScrollView.init(_:showsIndicators:content:)();
  v11 = (v1 + *(type metadata accessor for MeasurementList(0) + 28));
  v21 = *v11;
  v22 = v11[1];
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v2 + 32))(v10, v5, v23);
  v12 = &v10[*(v7 + 44)];
  v13 = v31;
  *(v12 + 4) = v30;
  *(v12 + 5) = v13;
  *(v12 + 6) = v32;
  v14 = v27;
  *v12 = v26;
  *(v12 + 1) = v14;
  v15 = v29;
  *(v12 + 2) = v28;
  *(v12 + 3) = v15;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = v24;
  sub_100008944(v10, v24, &qword_10005C818, &qword_100041E70);
  v17 = v16 + *(sub_100003090(&qword_10005C830, &qword_100041E80) + 36);
  v18 = v38;
  *(v17 + 64) = v37;
  *(v17 + 80) = v18;
  *(v17 + 96) = v39;
  v19 = v34;
  *v17 = v33;
  *(v17 + 16) = v19;
  result = v36;
  *(v17 + 32) = v35;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_100035760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MeasurementList(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(sub_100003090(&qword_10005C838, &qword_100041E88) + 44);
  v12[1] = *(a1 + *(v5 + 28));
  sub_1000365D4(a1, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementList);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10003656C(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MeasurementList);

  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005C840, &unk_100041E90);
  sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0);
  sub_100036464();
  sub_100036524(&qword_10005BA50, type metadata accessor for CardCellConfiguration);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000359A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v45[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + *(type metadata accessor for MeasurementList(0) + 24));
  *a3 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_100036524(&qword_10005A6E0, type metadata accessor for TripAppConfig);

  v13 = EnvironmentObject.init()();
  v15 = v14;
  v16 = type metadata accessor for TripMeasurementView();
  v17 = (a3 + v16[5]);
  *v17 = v13;
  v17[1] = v15;
  v18 = (a3 + v16[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_100036524(&unk_10005B688, type metadata accessor for CardCellConfiguration);
  *v18 = ObservedObject.init(wrappedValue:)();
  v18[1] = v19;
  *(a3 + v16[7]) = v12;
  *(a3 + v16[8]) = 0x3FF8000000000000;
  LOBYTE(v18) = static Edge.Set.leading.getter();
  sub_100035294(v10);
  sub_100008A08(&v10[*(v7 + 32)], v45);
  sub_1000086B4(v10);
  v20 = v46;
  v21 = v47;
  sub_100008A6C(v45, v46);
  (*(v21 + 64))(v20, v21);
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a3 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v30 = v18;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_1000085F8(v45);
  LOBYTE(v18) = static Edge.Set.trailing.getter();
  sub_100035294(v10);
  sub_100008A08(&v10[*(v7 + 32)], v45);
  sub_1000086B4(v10);
  v31 = v46;
  v32 = v47;
  sub_100008A6C(v45, v46);
  (*(v32 + 64))(v31, v32);
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = a3 + *(sub_100003090(&qword_10005B960, &qword_100041298) + 36);
  *v41 = v18;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_1000085F8(v45);
  v42 = (a3 + *(sub_100003090(&qword_10005C840, &unk_100041E90) + 36));
  *v42 = v11;
  v42[1] = 0xD000000000000012;
  v42[2] = 0x8000000100042830;
}