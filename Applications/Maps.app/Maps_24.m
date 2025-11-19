uint64_t sub_1002EC028()
{
  v12 = v0[34];
  v13 = v0[35];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002EC110()
{
  v2 = *v1;
  v3 = *v1;
  v2[55] = v0;

  v4 = v2[52];
  if (v0)
  {

    return _swift_task_switch(sub_1002EC7AC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[56] = v5;
    *v5 = v3;
    v5[1] = sub_1002EC2D0;
    v6 = v2[51];

    return sub_1002F0B34(v6);
  }
}

uint64_t sub_1002EC2D0()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1002EC550;
  }

  else
  {
    v2 = sub_1002EC400;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EC400()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Migration] migration complete", v3, 2u);
  }

  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002EC550()
{
  v1 = *(v0 + 272);
  v12 = *(v0 + 280);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002EC62C()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002EC6AC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002EC72C()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002EC7AC()
{
  v1 = *(v0 + 272);
  v12 = *(v0 + 280);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);

  v10 = *(v0 + 8);

  return v10();
}

void sub_1002EC888(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101918E20);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1002F18D8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002ECAD0;
  aBlock[3] = &unk_10160FF90;
  v11 = _Block_copy(aBlock);

  [a2 loadAllShortcutsWithHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1002ECA38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000CE6B8(&unk_101918E20);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a1)
    {
    }

    sub_1000CE6B8(&unk_101918E20);
    return CheckedContinuation.resume(returning:)();
  }
}

void *sub_1002ECAE4(uint64_t a1)
{
  type metadata accessor for FavoriteItem();
  v2 = MapsSyncObject.__allocating_init()();
  dispatch thunk of FavoriteItem.version.setter();
  [v2 setSourceType:2];
  if (a1 < -32768)
  {
    __break(1u);
  }

  else if (a1 < 0x8000)
  {
    dispatch thunk of FavoriteItem.type.setter();
    dispatch thunk of FavoriteItem.hidden.setter();
    v3 = NSStringFromMapsSuggestionsShortcutType();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4._countAndFlagsBits = 0x70757465535FLL;
    v4._object = 0xE600000000000000;
    String.append(_:)(v4);
    dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
    if (qword_101906668 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_10195FE88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Migration] migrating hidden setup placeholder of type %ld", v8, 0xCu);
  }

  return v2;
}

uint64_t sub_1002ECE00(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002ECEA8;

  return sub_1002E9E1C();
}

uint64_t sub_1002ECEA8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

BOOL sub_1002ED02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of FavoriteItem.type.getter();
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (*(v7 + 8 * v6) != v4)
  {
    if (v5 == ++v6)
    {
      return 0;
    }
  }

  v8 = dispatch thunk of FavoriteItem.type.getter();
  v9 = 0;
  while (*(v7 + 8 * v9) != v8)
  {
    if (v5 == ++v9)
    {
      return 0;
    }
  }

  return v6 < v9;
}

void sub_1002ED0D8(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&qword_101918E10);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1002F16F4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B0058;
  aBlock[3] = &unk_10160FEA0;
  v11 = _Block_copy(aBlock);

  [a2 moveToFrontWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_1002ED288(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000CE6B8(&qword_101918E10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000CE6B8(&qword_101918E10);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1002ED2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v9 = sub_1000CE6B8(&qword_101918E18);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_1002E2BBC();
  v15 = v14;
  sub_100014C84(0, &qword_101909920);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (qword_101906680 != -1)
  {
    swift_once();
  }

  v17 = qword_10195FEB0;
  if (qword_101906678 == -1)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
LABEL_5:
      v18 = *&qword_10195FEA8;
      (*(v10 + 16))(v13, a1, v9);
      v19 = *(v10 + 80);
      v20 = v29;
      v27 = v17;
      v28 = a4;
      v21 = v15;
      v22 = (v19 + 16) & ~v19;
      v23 = swift_allocObject();
      (*(v10 + 32))(v23 + v22, v13, v9);
      v24 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v24 = a5;
      v24[1] = v20;
      aBlock[4] = sub_1002F1E3C;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002ED5B8;
      aBlock[3] = &unk_10160FF40;
      v25 = _Block_copy(aBlock);
      sub_1000CD9D4(a5);

      [v21 fetchSuggestedLOIsForTypes:v16.super.isa minVisits:v27 maxAge:v28 maxResults:v25 handler:v18];
      _Block_release(v25);

      return;
    }
  }

  else
  {
    swift_once();
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1002ED5CC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_100014C84(0, a4);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v5, a3);
}

void sub_1002ED668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v9 = sub_1000CE6B8(&qword_101918E18);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_1002E2BBC();
  v15 = v14;
  sub_100014C84(0, &qword_101909920);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (qword_101906688 != -1)
  {
    swift_once();
  }

  v17 = qword_10195FEB8;
  if (qword_101906678 == -1)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
LABEL_5:
      v18 = *&qword_10195FEA8;
      (*(v10 + 16))(v13, a1, v9);
      v19 = *(v10 + 80);
      v20 = v29;
      v27 = v17;
      v28 = a4;
      v21 = v15;
      v22 = (v19 + 16) & ~v19;
      v23 = swift_allocObject();
      (*(v10 + 32))(v23 + v22, v13, v9);
      v24 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v24 = a5;
      v24[1] = v20;
      aBlock[4] = sub_1002F1770;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002ED5B8;
      aBlock[3] = &unk_10160FEF0;
      v25 = _Block_copy(aBlock);
      sub_1000CD9D4(a5);

      [v21 fetchAllSuggestedLOIsExcludingTypes:v16.super.isa minVisits:v27 maxAge:v28 maxResults:v25 handler:v18];
      _Block_release(v25);

      return;
    }
  }

  else
  {
    swift_once();
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1002ED924(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000CE6B8(&qword_101918E18);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a1;
    if (a4)
    {
      if (a1)
      {
        v7 = a1 & 0xFFFFFFFFFFFFFF8;
        if (a1 >> 62)
        {
          goto LABEL_25;
        }

        for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          sub_1000CD9D4(a4);

          if (!i)
          {
            break;
          }

          v14 = v6;
          v9 = 0;
          v10 = v6 & 0xC000000000000001;
          while (1)
          {
            if (v10)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *(v7 + 16))
              {
                goto LABEL_24;
              }

              v11 = *(v6 + 8 * v9 + 32);
            }

            v12 = v11;
            v13 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (a4(v11))
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v6 = v14;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v9;
            if (v13 == i)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          ;
        }

LABEL_21:
        sub_1000588AC(a4);
      }

      else
      {
      }

      sub_1000CE6B8(&qword_101918E18);
      CheckedContinuation.resume(returning:)();
      return sub_1000588AC(a4);
    }

    else
    {

      sub_1000CE6B8(&qword_101918E18);
      return CheckedContinuation.resume(returning:)();
    }
  }
}

uint64_t sub_1002EDB78()
{
  v1 = [objc_opt_self() sharedLocationManager];
  v0[7] = v1;
  if (!v1)
  {

    v5 = 0;
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 lastLocation];
  if (v3)
  {
    v4 = v3;

    v5 = v4;
LABEL_5:
    v6 = v0[1];

    return v6(v5);
  }

  v8 = static MainActor.shared.getter();
  v0[8] = v8;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v2;
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = sub_1000CE6B8(&qword_101918E30);
  *v10 = v0;
  v10[1] = sub_1002EDD3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v8, &protocol witness table for MainActor, 0x636F4C6863746566, 0xEF29286E6F697461, sub_1002F1918, v9, v11);
}

uint64_t sub_1002EDD3C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1002EDED4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1002EDE60;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002EDE60()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002EDED4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1002EDF5C(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101918E38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1002F19A4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100113C68;
  aBlock[3] = &unk_101610030;
  v10 = _Block_copy(aBlock);

  v11 = [a2 singleLocationUpdateWithHandler:v10];
  _Block_release(v10);
  if (v11)
  {
    [v11 start];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002EE138(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_101906668 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10195FE88);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch location: %@", v5, 0xCu);
      sub_100024F64(v6, &qword_1019144F0);
    }

    sub_1000CE6B8(&unk_101918E38);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v9 = a1;
    sub_1000CE6B8(&unk_101918E38);
    return CheckedContinuation.resume(returning:)();
  }
}

BOOL sub_1002EE320(id a1, SEL a2)
{
  v2 = a1;
  v3 = sub_1002EE354();

  return v3 & 1;
}

uint64_t sub_1002EE354()
{
  [v0 sourceType];
  v1 = FavoriteItemSourceType.rawValue.getter();
  if (v1 == FavoriteItemSourceType.rawValue.getter())
  {
    return 1;
  }

  dispatch thunk of FavoriteItem.type.getter();
  v3 = NSStringFromMapsSuggestionsShortcutType();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = 0x70757465535FLL;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  v8 = dispatch thunk of FavoriteItem.shortcutIdentifier.getter();
  if (v9)
  {
    if (v4 == v8 && v9 == v6)
    {

      return 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1002EE49C(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  swift_unknownObjectRetain();
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = *&v9[*a5];
  if (v10)
  {

    v10(a3);
    swift_unknownObjectRelease();

    sub_1000588AC(v10);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002EE6DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002EE730()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_1002ECE00(v2, v3);
}

uint64_t sub_1002EE7DC(id *__src, id *a2, id *a3, uint64_t __dst, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_1002E5B84(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < &v15[v47 & 0xFFFFFFFFFFFFFFF8] && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[8 * v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_1002E5B84(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = (v20 + 1);
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_1002EEB9C(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_1002ED02C(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < &v15[v47 & 0xFFFFFFFFFFFFFFF8] && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[8 * v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_1002ED02C(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = (v20 + 1);
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

void *sub_1002EF018(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1002EF0BC(uint64_t a1)
{
  v2 = sub_1002E2C5C();
  [v2 unregisterObserver:a1];
}

void sub_1002EF114(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v143 = a5;
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_112:
    v144 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    __dst = v143;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v148 = v8;
      v123 = *(v8 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v125 = *(v8 + 16 * v123);
          v126 = *(v8 + 16 * (v123 - 1) + 40);
          v127 = (v124 + 8 * v125);
          v128 = (v124 + 8 * *(v8 + 16 * (v123 - 1) + 32));
          v129 = (v124 + 8 * v126);
          v16 = __dst;
          sub_1002EE7DC(v127, v128, v129, v144, v16);
          if (v142)
          {

            goto LABEL_125;
          }

          if (v126 < v125)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10056D550(v8);
          }

          if (v123 - 2 >= *(v8 + 16))
          {
            goto LABEL_141;
          }

          v130 = (v8 + 16 * v123);
          *v130 = v125;
          v130[1] = v126;
          v148 = v8;
          sub_10056D4C4(v123 - 1);
          v8 = v148;
          v123 = *(v148 + 16);
        }

        while (v123 > 1);
      }

      return;
    }

LABEL_147:
    v8 = sub_10056D550(v8);
    goto LABEL_114;
  }

  v132 = a4;
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v134 = v7;
    if (v7 + 1 >= v6)
    {
      goto LABEL_34;
    }

    v11 = *a3;
    v12 = *(*a3 + 8 * v10);
    v13 = v9;
    v146 = *(*a3 + 8 * v9);
    v14 = v146;
    v147 = v12;
    v15 = v12;
    v16 = v14;
    LODWORD(v144) = sub_1002E5B84(&v147, &v146, v143);
    if (v142)
    {

LABEL_125:

      return;
    }

    v10 = v13 + 2;
    v9 = v13;
    if (v13 + 2 < v6)
    {
      v131 = v8;
      v17 = (v11 + 8 * v13 + 16);
      v138 = v6;
      while (1)
      {
        v20 = *(v17 - 1);
        __dst = *v17;
        v21 = v20;
        v18 = dispatch thunk of FavoriteItem.latitude.getter();
        v22 = dispatch thunk of FavoriteItem.longitude.getter();
        v23 = dispatch thunk of FavoriteItem.latitude.getter();
        v24 = dispatch thunk of FavoriteItem.longitude.getter();
        v25 = v24;
        if (!v18)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_9;
        }

        if (v23)
        {
          if (v24)
          {
            [v18 doubleValue];
            v27 = v26;
            [v22 doubleValue];
            v29 = [objc_allocWithZone(CLLocation) initWithLatitude:v27 longitude:v28];
            [v29 distanceFromLocation:v143];
            v31 = v30;

            [v23 doubleValue];
            v33 = v32;
            [v25 doubleValue];
            v35 = [objc_allocWithZone(CLLocation) initWithLatitude:v33 longitude:v34];
            [v35 distanceFromLocation:v143];
            v37 = v36;

            v19 = v138;
            if (((v144 ^ (v31 >= v37)) & 1) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_10;
          }

          v25 = v18;
        }

        else
        {
        }

        v19 = v138;
        if ((v144 & 1) == 0)
        {
          v8 = v131;
          v9 = v134;
          goto LABEL_34;
        }

LABEL_10:
        ++v17;
        if (v19 == ++v10)
        {
          v10 = v19;
LABEL_22:
          v8 = v131;
          v9 = v134;
          goto LABEL_23;
        }
      }

      v18 = v22;
LABEL_9:

      v19 = v138;
      if (v144)
      {
        v8 = v131;
        v9 = v134;
        if (v10 < v134)
        {
          goto LABEL_144;
        }

LABEL_27:
        if (v9 < v10)
        {
          v38 = 8 * v10 - 8;
          v39 = 8 * v9;
          v40 = v10;
          v41 = v9;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_150;
              }

              v42 = *(v43 + v39);
              *(v43 + v39) = *(v43 + v38);
              *(v43 + v38) = v42;
            }

            ++v41;
            v38 -= 8;
            v39 += 8;
          }

          while (v41 < v40);
        }

        goto LABEL_34;
      }

      goto LABEL_10;
    }

LABEL_23:
    if (v144)
    {
      if (v10 < v9)
      {
        goto LABEL_144;
      }

      goto LABEL_27;
    }

LABEL_34:
    v44 = a3[1];
    if (v10 < v44)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_143;
      }

      if (v10 - v9 < v132)
      {
        break;
      }
    }

LABEL_60:
    if (v10 < v9)
    {
      goto LABEL_142;
    }

    v140 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100097874(0, *(v8 + 16) + 1, 1, v8);
    }

    v72 = *(v8 + 16);
    v71 = *(v8 + 24);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v8 = sub_100097874((v71 > 1), v72 + 1, 1, v8);
    }

    *(v8 + 16) = v73;
    v74 = v8 + 16 * v72;
    *(v74 + 32) = v134;
    *(v74 + 40) = v10;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    if (v72)
    {
      while (1)
      {
        v75 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v76 = *(v8 + 32);
          v77 = *(v8 + 40);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_80:
          if (v79)
          {
            goto LABEL_131;
          }

          v92 = (v8 + 16 * v73);
          v94 = *v92;
          v93 = v92[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_134;
          }

          v98 = (v8 + 32 + 16 * v75);
          v100 = *v98;
          v99 = v98[1];
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_138;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v73 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v102 = (v8 + 16 * v73);
        v104 = *v102;
        v103 = v102[1];
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_94:
        if (v97)
        {
          goto LABEL_133;
        }

        v105 = v8 + 16 * v75;
        v107 = *(v105 + 32);
        v106 = *(v105 + 40);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_136;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_101:
        v113 = v75 - 1;
        if (v75 - 1 >= v73)
        {
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
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v114 = *a3;
        if (!*a3)
        {
          goto LABEL_149;
        }

        v115 = v8;
        v116 = v8 + 32;
        v8 = *(v8 + 32 + 16 * v113);
        v117 = *(v116 + 16 * v75 + 8);
        v118 = (v114 + 8 * v8);
        v119 = (v114 + 8 * *(v116 + 16 * v75));
        v120 = (v114 + 8 * v117);
        v121 = v143;
        sub_1002EE7DC(v118, v119, v120, __dst, v121);
        if (v142)
        {

          return;
        }

        if (v117 < v8)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10056D550(v115);
        }

        if (v113 >= *(v115 + 2))
        {
          goto LABEL_128;
        }

        v122 = &v115[16 * v113];
        *(v122 + 4) = v8;
        *(v122 + 5) = v117;
        v148 = v115;
        sub_10056D4C4(v75);
        v8 = v148;
        v73 = *(v148 + 16);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = v8 + 32 + 16 * v73;
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_129;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_130;
      }

      v87 = (v8 + 16 * v73);
      v89 = *v87;
      v88 = v87[1];
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_132;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_135;
      }

      if (v91 >= v83)
      {
        v109 = (v8 + 32 + 16 * v75);
        v111 = *v109;
        v110 = v109[1];
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_139;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v7 = v140;
    v6 = a3[1];
    if (v140 >= v6)
    {
      goto LABEL_112;
    }
  }

  v45 = v9 + v132;
  if (__OFADD__(v9, v132))
  {
    goto LABEL_145;
  }

  if (v45 >= v44)
  {
    v45 = a3[1];
  }

  if (v45 < v9)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v10 == v45)
  {
    goto LABEL_60;
  }

  v144 = *a3;
  v46 = *a3 + 8 * v10 - 8;
  v47 = (v9 - v10);
  v135 = v45;
LABEL_46:
  v137 = v46;
  v139 = v10;
  v49 = v47;
  v50 = *(v144 + 8 * v10);
  v136 = v47;
  while (1)
  {
    __dst = v49;
    v51 = *v46;
    v52 = v50;
    v53 = v51;
    v48 = dispatch thunk of FavoriteItem.latitude.getter();
    v54 = dispatch thunk of FavoriteItem.longitude.getter();
    v55 = dispatch thunk of FavoriteItem.latitude.getter();
    v56 = dispatch thunk of FavoriteItem.longitude.getter();
    v57 = v56;
    if (!v48)
    {
      v48 = v54;
LABEL_44:

LABEL_45:
      v10 = v139 + 1;
      v46 = v137 + 8;
      v47 = v136 - 1;
      if (v139 + 1 == v135)
      {
        v10 = v135;
        v9 = v134;
        goto LABEL_60;
      }

      goto LABEL_46;
    }

    if (!v54)
    {
      goto LABEL_44;
    }

    if (!v55)
    {

LABEL_55:
      goto LABEL_56;
    }

    if (!v56)
    {

      v57 = v48;
      goto LABEL_55;
    }

    [v48 doubleValue];
    v59 = v58;
    [v54 doubleValue];
    v61 = [objc_allocWithZone(CLLocation) initWithLatitude:v59 longitude:v60];
    [v61 distanceFromLocation:v143];
    v63 = v62;

    [v55 doubleValue];
    v65 = v64;
    [v57 doubleValue];
    v67 = [objc_allocWithZone(CLLocation) initWithLatitude:v65 longitude:v66];
    [v67 distanceFromLocation:v143];
    v69 = v68;

    if (v63 >= v69)
    {
      goto LABEL_45;
    }

LABEL_56:
    if (!v144)
    {
      break;
    }

    v70 = *v46;
    v50 = *(v46 + 8);
    *v46 = v50;
    *(v46 + 8) = v70;
    v46 -= 8;
    v49 = __dst + 1;
    if (__dst == -1)
    {
      goto LABEL_45;
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
LABEL_153:

  __break(1u);
}

void sub_1002EFB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v34 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_7:
    v31 = v5;
    v32 = a3;
    v8 = *(v34 + 8 * a3);
    v30 = v6;
    while (1)
    {
      v9 = *v5;
      v35 = v8;
      v10 = v9;
      v7 = dispatch thunk of FavoriteItem.latitude.getter();
      v11 = dispatch thunk of FavoriteItem.longitude.getter();
      v12 = dispatch thunk of FavoriteItem.latitude.getter();
      v13 = dispatch thunk of FavoriteItem.longitude.getter();
      v14 = v13;
      if (!v7)
      {
        v7 = v11;
LABEL_5:

LABEL_6:
        a3 = v32 + 1;
        v5 = v31 + 8;
        v6 = v30 - 1;
        if (v32 + 1 == a2)
        {
          return;
        }

        goto LABEL_7;
      }

      if (!v11)
      {
        goto LABEL_5;
      }

      if (!v12)
      {
        break;
      }

      if (!v13)
      {

        v14 = v7;
        goto LABEL_16;
      }

      [v7 doubleValue];
      v16 = v15;
      [v11 doubleValue];
      v18 = [objc_allocWithZone(CLLocation) initWithLatitude:v16 longitude:v17];
      [v18 distanceFromLocation:a5];
      v20 = v19;

      [v12 doubleValue];
      v22 = v21;
      [v14 doubleValue];
      v24 = [objc_allocWithZone(CLLocation) initWithLatitude:v22 longitude:v23];
      [v24 distanceFromLocation:a5];
      v26 = v25;

      if (v20 >= v26)
      {
        goto LABEL_6;
      }

LABEL_17:
      if (!v34)
      {
        __break(1u);
        return;
      }

      v27 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v27;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_6;
      }
    }

LABEL_16:
    goto LABEL_17;
  }
}

void sub_1002EFDE4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = _swiftEmptyArrayStorage;
LABEL_113:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_146:
      v8 = sub_10056D550(v8);
    }

    v119 = v8;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      do
      {
        v97 = *a3;
        if (!*a3)
        {
          goto LABEL_149;
        }

        v98 = *&v8[16 * v96];
        v99 = *&v8[16 * v96 + 24];
        v100 = (v97 + 8 * v98);
        v101 = (v97 + 8 * *&v8[16 * v96 + 16]);
        v102 = (v97 + 8 * v99);

        sub_1002EEB9C(v100, v101, v102, v9, a5);
        if (v116)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10056D550(v8);
        }

        if (v96 - 2 >= *(v8 + 2))
        {
          goto LABEL_140;
        }

        v103 = &v8[16 * v96];
        *v103 = v98;
        *(v103 + 1) = v99;
        v119 = v8;
        sub_10056D4C4(v96 - 1);
        v8 = v119;
        v96 = *(v119 + 2);
      }

      while (v96 > 1);
    }

    swift_bridgeObjectRelease_n();
    return;
  }

  v111 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      v15 = v7 + 1;
      goto LABEL_34;
    }

    v11 = *(*a3 + 8 * v10);
    v109 = *a3;
    v117 = *(*a3 + 8 * v9);
    v12 = v117;
    v118 = v11;
    v13 = v11;
    v14 = v12;
    v112 = sub_1002ED02C(&v118, &v117, a5);
    if (v116)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    v107 = v9;
    v15 = v9 + 2;
    if (v9 + 2 < v6)
    {
      do
      {
        v16 = *(v109 + 8 * v10);
        v10 = v15;
        v17 = *(v109 + 8 * v15);
        v18 = v16;
        v19 = dispatch thunk of FavoriteItem.type.getter();
        v20 = *(a5 + 16);
        if (v20)
        {
          v21 = 0;
          while (*(v111 + 8 * v21) != v19)
          {
            if (v20 == ++v21)
            {
              goto LABEL_8;
            }
          }

          v22 = dispatch thunk of FavoriteItem.type.getter();
          v23 = 0;
          while (*(v111 + 8 * v23) != v22)
          {
            if (v20 == ++v23)
            {
              goto LABEL_8;
            }
          }

          if (((v112 ^ (v21 >= v23)) & 1) == 0)
          {
            v15 = v10;
            goto LABEL_21;
          }
        }

        else
        {
LABEL_8:

          if (v112)
          {
            v15 = v10;
            goto LABEL_27;
          }
        }

        v15 = v10 + 1;
      }

      while (v10 + 1 != v6);
      v15 = v6;
      if (!v112)
      {
LABEL_25:
        v9 = v107;
        goto LABEL_34;
      }
    }

    else
    {
LABEL_21:
      if (!v112)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v9 = v107;
    if (v15 < v107)
    {
      goto LABEL_143;
    }

    if (v107 < v15)
    {
      break;
    }

LABEL_34:
    v30 = a3[1];
    if (v15 >= v30)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v15, v9))
    {
      goto LABEL_142;
    }

    if (v15 - v9 >= a4)
    {
      goto LABEL_61;
    }

    v31 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      goto LABEL_144;
    }

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v9)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v15 != v31)
    {
      v104 = v8;
      v108 = v9;
      v110 = v31;
      v32 = *a3;
      v33 = *(a5 + 16);
      do
      {
        v34 = *(v32 + 8 * v15);
        v35 = v15;
        while (1)
        {
          v36 = v15;
          v113 = v35;
          v37 = v35 - 1;
          v38 = v32;
          v39 = *(v32 + 8 * (v35 - 1));
          v40 = v34;
          v41 = v39;
          v42 = dispatch thunk of FavoriteItem.type.getter();
          if (!v33)
          {
            break;
          }

          v43 = 0;
          while (*(a5 + 8 * v43 + 32) != v42)
          {
            if (v33 == ++v43)
            {
              goto LABEL_57;
            }
          }

          v44 = dispatch thunk of FavoriteItem.type.getter();
          v45 = 0;
          while (*(a5 + 8 * v45 + 32) != v44)
          {
            if (v33 == ++v45)
            {
              goto LABEL_57;
            }
          }

          if (v43 >= v45)
          {
            goto LABEL_58;
          }

          if (!v38)
          {
            goto LABEL_150;
          }

          v15 = v36;
          v32 = v38;
          v34 = *(v38 + 8 * v113);
          *(v38 + 8 * v113) = *(v38 + 8 * v37);
          *(v38 + 8 * v37) = v34;
          v35 = v37;
          if (v37 == v108)
          {
            goto LABEL_59;
          }
        }

LABEL_57:

LABEL_58:
        v15 = v36;
        v32 = v38;
LABEL_59:
        ++v15;
      }

      while (v15 != v110);
      v15 = v110;
      v9 = v108;
      v8 = v104;
    }

LABEL_61:
    if (v15 < v9)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100097874(0, *(v8 + 2) + 1, 1, v8);
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v8 = sub_100097874((v46 > 1), v47 + 1, 1, v8);
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v15;
    v114 = v15;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_81:
          if (v55)
          {
            goto LABEL_130;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_133;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_137;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_95:
        if (v73)
        {
          goto LABEL_132;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_135;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_102:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v90 = *a3;
        if (!*a3)
        {
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_148;
        }

        v91 = *&v8[16 * v89 + 32];
        v9 = *&v8[16 * v51 + 40];
        v92 = (v90 + 8 * v91);
        v93 = (v90 + 8 * *&v8[16 * v51 + 32]);
        v94 = (v90 + 8 * v9);

        sub_1002EEB9C(v92, v93, v94, v50, a5);
        if (v116)
        {
          swift_bridgeObjectRelease_n();

          return;
        }

        if (v9 < v91)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10056D550(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_127;
        }

        v95 = &v8[16 * v89];
        *(v95 + 4) = v91;
        *(v95 + 5) = v9;
        v119 = v8;
        sub_10056D4C4(v51);
        v8 = v119;
        v48 = *(v119 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_128;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_129;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_131;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_134;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_138;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v7 = v114;
    v6 = a3[1];
    if (v114 >= v6)
    {
      goto LABEL_113;
    }
  }

  v24 = 8 * v15 - 8;
  v25 = 8 * v107;
  v26 = v15;
  v27 = v107;
  while (v27 == --v26)
  {
LABEL_30:
    ++v27;
    v24 -= 8;
    v25 += 8;
    if (v27 >= v26)
    {
      goto LABEL_34;
    }
  }

  v28 = *a3;
  if (*a3)
  {
    v29 = *(v28 + v25);
    *(v28 + v25) = *(v28 + v24);
    *(v28 + v24) = v29;
    goto LABEL_30;
  }

LABEL_148:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_149:

  __break(1u);
LABEL_150:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_151:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_152:
  swift_bridgeObjectRelease_n();
  __break(1u);
}

void sub_1002F05F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *(a5 + 16);
    v8 = a5 + 32;
    while (2)
    {
      v9 = *(v6 + 8 * v5);
      v10 = v5;
      while (1)
      {
        v22 = v10;
        v11 = v10 - 1;
        v12 = v6;
        v13 = *(v6 + 8 * (v10 - 1));
        v14 = v9;
        v15 = v13;
        v16 = dispatch thunk of FavoriteItem.type.getter();
        if (!v7)
        {
          break;
        }

        v17 = 0;
        while (*(v8 + 8 * v17) != v16)
        {
          if (v7 == ++v17)
          {
            goto LABEL_17;
          }
        }

        v18 = dispatch thunk of FavoriteItem.type.getter();
        v19 = 0;
        while (*(v8 + 8 * v19) != v18)
        {
          if (v7 == ++v19)
          {
            goto LABEL_17;
          }
        }

        v6 = v12;
        if (v17 < v19)
        {
          if (!v12)
          {
            __break(1u);
            return;
          }

          v9 = *(v12 + 8 * v22);
          *(v12 + 8 * v22) = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v9;
          v10 = v11;
          if (v11 != a1)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

LABEL_17:

      v6 = v12;
LABEL_18:
      if (++v5 != a2)
      {
        continue;
      }

      break;
    }
  }
}

Swift::Int sub_1002F073C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FavoriteItem();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_1002EFDE4(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1002F05F4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1002F0898(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10056DDF4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1002F073C(v8, a2);

  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1002F0944(uint64_t result)
{
  if (result)
  {
    type metadata accessor for MapsFavoritesManager();
    swift_unknownObjectRetain();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = v1;
      if (qword_101906668 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_10195FE88);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "LOIs changed", v6, 2u);
      }

      v7 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__needsSuggestions;
      swift_beginAccess();
      v8 = *(v2 + v7);
      os_unfair_lock_lock((v8 + 20));
      *(v8 + 16) = 1;
      os_unfair_lock_unlock((v8 + 20));
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002F0AC8()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002F0B54()
{
  v32 = v0;
  sub_1000CE6B8(&qword_101918E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  *(inited + 32) = xmmword_1011F9230;
  *(inited + 48) = 2;

  v31[0] = sub_1002EF018(v2, sub_10005EFF0, sub_100249848);
  sub_1002F0898(v31, inited);
  swift_setDeallocating();
  v10 = v31[0];
  v0[10] = v31[0];
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  v0[11] = v11;
  v12 = v0[10];
  if (v11)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v12 + 16))
      {
        __break(1u);
        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v4, v5, v6, v7, v8, v9);
      }

      v13 = *(v12 + 32);
    }

    v15 = v13;
    v0[12] = v13;
    v0[13] = 1;
    if (qword_101906668 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_10195FE88);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v20 = 136315138;
      v22 = [v17 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10004DEB8(v23, v25, v31);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "[Migration] moving favorite to front: %s", v20, 0xCu);
      sub_10004E3D0(v21);
    }

    v27 = swift_task_alloc();
    v0[14] = v27;
    *(v27 + 16) = v17;
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_1002F0FD8;
    v7 = sub_1002F16EC;
    v6 = 0x800000010122D230;
    v9 = &type metadata for () + 8;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000013;
    v8 = v27;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v4, v5, v6, v7, v8, v9);
  }

  type metadata accessor for MapsSyncStore();
  v0[17] = static MapsSyncStore.sharedStore.getter();
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    type metadata accessor for MapsSyncObject();

    v14 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    v14 = v0[10];
  }

  v0[18] = v14;

  v30 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = sub_1002F1540;

  return v30(v14);
}

uint64_t sub_1002F0FD8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1002F14DC;
  }

  else
  {

    v2 = sub_1002F1120;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F1120()
{
  v32 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 != v2)
  {
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        __break(1u);
        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v13, v4, v5, v6, v7, v8, v9);
      }

      v14 = *(v13 + 8 * v12 + 32);
    }

    v17 = v14;
    *(v0 + 96) = v14;
    *(v0 + 104) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else if (qword_101906668 == -1)
    {
LABEL_15:
      v18 = type metadata accessor for Logger();
      sub_100021540(v18, qword_10195FE88);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31 = v23;
        *v22 = 136315138;
        v24 = [v19 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10004DEB8(v25, v27, &v31);

        *(v22 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "[Migration] moving favorite to front: %s", v22, 0xCu);
        sub_10004E3D0(v23);
      }

      v29 = swift_task_alloc();
      *(v0 + 112) = v29;
      *(v29 + 16) = v19;
      v3 = swift_task_alloc();
      *(v0 + 120) = v3;
      *v3 = v0;
      v3[1] = sub_1002F0FD8;
      v7 = sub_1002F16EC;
      v6 = 0x800000010122D230;
      v9 = &type metadata for () + 8;
      v13 = 0;
      v4 = 0;
      v5 = 0xD000000000000013;
      v8 = v29;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v13, v4, v5, v6, v7, v8, v9);
    }

    swift_once();
    goto LABEL_15;
  }

  v10 = *(v0 + 80);
  type metadata accessor for MapsSyncStore();
  *(v0 + 136) = static MapsSyncStore.sharedStore.getter();
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    type metadata accessor for MapsSyncObject();

    v11 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    v11 = *(v0 + 80);
  }

  *(v0 + 144) = v11;

  v30 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_1002F1540;

  return v30(v11);
}

uint64_t sub_1002F14DC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F1540()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002F1684, 0, 0);
  }

  else
  {
    v3 = v2[17];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1002F1684()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002F16F4(uint64_t a1)
{
  sub_1000CE6B8(&qword_101918E10);

  return sub_1002ED288(a1);
}

uint64_t sub_1002F1774()
{
  v1 = sub_1000CE6B8(&qword_101918E18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1002F1828(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000CE6B8(&qword_101918E18) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1002ED924(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1002F1920(uint64_t *a1)
{
  v2 = sub_1000CE6B8(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1002F19CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_1000CE6B8(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_1002F1AE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1002E96C4(a1, v4, v5, v6);
}

uint64_t sub_1002F1B98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC40;

  return sub_1002E5ADC(v2, v3);
}

uint64_t sub_1002F1C44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC40;

  return sub_1002E56A8(v2, v3);
}

uint64_t sub_1002F1CF8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002F1D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003AC40;

  return sub_1002E4B34(v2, v3, v4);
}

void sub_1002F1E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for AccessoryType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, a1, v7, v9);
  if ((*(v8 + 88))(v11, v7) != enum case for AccessoryType.action(_:))
  {
    (*(v8 + 8))(v11, v7);
    return;
  }

  (*(v8 + 96))(v11, v7);
  v13 = *v11;
  v12 = v11[1];

  v14._countAndFlagsBits = v13;
  v14._object = v12;
  v15 = _findStringSwitchCase(cases:string:)(&off_1016003E0, v14);

  if (v15 == 1)
  {
    sub_1002F357C(a2, 1);
    v24 = [objc_opt_self() sharedService];
    if (v24)
    {
      v23 = v24;

      [v23 captureUserAction:6027 onTarget:147 eventValue:0];
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (!v15)
  {
    v16 = type metadata accessor for TaskPriority();
    v17 = *(*(v16 - 8) + 56);
    v17(v6, 1, 1, v16);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = a2;
    sub_10020AAE4(0, 0, v6, &unk_1011F9660, v19);

    v17(v6, 1, 1, v16);

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = a2;
    sub_10020AAE4(0, 0, v6, &unk_1011F9670, v21);

    v22 = [objc_opt_self() sharedService];
    if (v22)
    {
      v23 = v22;

      [v23 captureUserAction:508 onTarget:147 eventValue:0];
LABEL_9:

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }
}

uint64_t sub_1002F21E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002F5D2C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1002AB7F0(v4, v5);
}

uint64_t sub_1002F2268()
{
  swift_getKeyPath();
  sub_1002F5D2C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002F2308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002F5D2C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
  a2[1] = v4;
}

uint64_t sub_1002F2390(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1002A4AFC(v1, v2);
}

void sub_1002F23D0(uint64_t a1, unsigned __int8 a2)
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  if (a2 > 3u)
  {
    if (a2 - 4 >= 2)
    {
      if (a2 != 6)
      {
        v20 = type metadata accessor for TaskPriority();
        (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        type metadata accessor for MainActor();

        v21 = v2;
        v22 = static MainActor.shared.getter();
        v23 = swift_allocObject();
        v23[2] = v22;
        v23[3] = &protocol witness table for MainActor;
        v23[4] = a1;
        v23[5] = v21;
        sub_10020AAE4(0, 0, v7, &unk_1011F9590, v23);

        v24 = [objc_opt_self() sharedService];
        if (!v24)
        {
LABEL_48:
          __break(1u);
          return;
        }

        v15 = v24;
        swift_getKeyPath();
        v40 = a1;
        sub_1002F5D2C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8))
        {

          v16 = String._bridgeToObjectiveC()();
        }

        else
        {
          v16 = 0;
        }

        [v15 captureUserAction:519 onTarget:147 eventValue:v16];
        goto LABEL_43;
      }

      sub_1002F357C(a1, 0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        swift_getKeyPath();
        v40 = a1;
        sub_1002F5D2C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
        if (v11 - 1 >= 2)
        {
          v12 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
        }

        else
        {
          v12 = 0;
          v11 = 0;
        }

        [*(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) _muid];
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = a1;
        v27 = objc_allocWithZone(type metadata accessor for PlaceNoteEditViewController());

        v28 = PlaceNoteEditViewController.init(note:)(v12, v11);
        [v28 setContaineeDelegate:v10];
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = swift_allocObject();
        v31[2] = v29;
        v31[3] = v30;
        v31[4] = sub_1002F5D84;
        v31[5] = v26;
        v32 = &v28[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler];
        swift_beginAccess();
        v33 = *v32;
        *v32 = sub_1002F5D8C;
        v32[1] = v31;

        sub_1000588AC(v33);

        v34 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
        swift_beginAccess();
        v35 = v28;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v10 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        swift_beginAccess();
        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          [v36 setNeedsUpdateComponent:@"cards" animated:1];

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        sub_1002F32C8(a1);
        v17 = [objc_opt_self() sharedService];
        if (v17)
        {
          v39 = v17;
          [v17 captureUserAction:477 onTarget:147 eventValue:0];
          goto LABEL_22;
        }

        goto LABEL_47;
      }

      sub_1002F2B9C(a1, 0, 0, 0);
      v8 = [objc_opt_self() sharedService];
      if (v8)
      {
        v39 = v8;
        [v8 captureUserAction:469 onTarget:147 eventValue:0];
LABEL_22:
        v18 = v39;

        return;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (a2 == 2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
        sub_10044368C(v13);

        swift_unknownObjectRelease();
      }

      v14 = [objc_opt_self() sharedService];
      if (!v14)
      {
        goto LABEL_46;
      }

      v15 = v14;
      swift_getKeyPath();
      v40 = a1;
      sub_1002F5D2C();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8))
      {

        v16 = String._bridgeToObjectiveC()();
      }

      else
      {
        v16 = 0;
      }

      [v15 captureUserAction:6013 onTarget:147 eventValue:v16];
LABEL_43:

      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
      sub_100443878(v19);

      swift_unknownObjectRelease();
    }
  }
}

id sub_1002F2B9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - v10;
  result = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:*(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) isPlaceHolderPlace:0];
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for TaskPriority();
    v15 = *(v14 - 8);
    v72 = *(v15 + 56);
    v73 = v14;
    v71 = v15 + 56;
    v72(v11, 1, 1);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = a1;
    v17[5] = a3;
    v17[6] = a4;
    sub_10020AAE4(0, 0, v11, &unk_101205570, v17);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      (*(v18 + 24))(v4, a1, a3, a4, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    type metadata accessor for MapsSyncStore();
    v20 = static MapsSyncStore.sharedStore.getter();
    v21 = type metadata accessor for LibraryDataOperationsProvider();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v20;
    v74.receiver = v22;
    v74.super_class = v21;
    v23 = objc_msgSendSuper2(&v74, "init");
    v24 = swift_allocObject();
    *(v24 + 16) = a2 & 1;
    *(v24 + 24) = v23;
    *(v24 + 32) = a3;
    *(v24 + 40) = a4;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1002F6228;
    *(v25 + 24) = v24;
    *(v25 + 32) = v23;
    *(v25 + 40) = v13;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    v26 = v23;
    swift_retain_n();
    v27 = v26;
    v28 = v13;

    v29 = v27;
    v30 = v28;
    v31 = &selRef__didChangeCenterCoordinate_fromEditLocationMapView_;
    if ([v30 _geoMapItem])
    {
      swift_unknownObjectRetain();
      v32 = [v30 _geoMapItemStorageForPersistence];
      v69 = v29;
      v70 = v11;
      v68 = v30;
      if (v32)
      {
        v33 = v32;
        v34 = [v32 userValues];

        if (v34)
        {
          v35 = [v34 name];

          if (v35)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }
      }

      Predicate = type metadata accessor for MapsSyncQueryPredicate();
      v43 = objc_allocWithZone(Predicate);
      v44 = MapsSyncQueryPredicate.init(mapItem:customName:)();
      v45 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
      v46 = type metadata accessor for MapsSyncRange();
      v47 = objc_allocWithZone(v46);
      v48 = v44;
      MapsSyncRange.init(offset:limit:)();
      Options = type metadata accessor for MapsSyncQueryOptions();
      v50 = objc_allocWithZone(Options);
      v51 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
      sub_1000CE6B8(&qword_101908400);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1011E4FD0;
      *(v52 + 32) = v48;
      *(v52 + 40) = v45;
      v53 = objc_allocWithZone(Predicate);
      v54 = v48;
      v55 = v45;
      MapsSyncQueryPredicate.init(and:)();
      v56 = objc_allocWithZone(v46);
      MapsSyncRange.init(offset:limit:)();
      v57 = objc_allocWithZone(Options);
      v58 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
      v59 = v70;
      (v72)(v70, 1, 1, v73);
      v60 = swift_allocObject();
      v60[2] = 0;
      v60[3] = 0;
      v60[4] = v58;
      v60[5] = v51;
      v60[6] = sub_1002F6238;
      v60[7] = v25;
      v61 = v58;
      v62 = v51;

      sub_10020AAE4(0, 0, v59, &unk_101206A90, v60);

      v29 = v69;

      v63 = v68;

      swift_unknownObjectRelease();

      v30 = v63;
    }

    else
    {
      v36 = sub_100491EAC();
      type metadata accessor for CollectionPlaceItem();
      v37 = MapsSyncObject.__allocating_init()();
      v38 = [v30 name];
      if (v38)
      {
        v39 = v36;
        v40 = v30;
        v41 = v38;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = v40;
        v36 = v39;
        v31 = &selRef__didChangeCenterCoordinate_fromEditLocationMapView_;
      }

      dispatch thunk of CollectionPlaceItem.customName.setter();
      v64 = [v30 v31[464]];
      if (v64)
      {
        v65 = [objc_opt_self() mapItemStorageForGEOMapItem:v64];
        dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
        swift_unknownObjectRelease();
      }

      dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
      (v72)(v11, 1, 1, v73);
      v66 = swift_allocObject();
      v66[2] = 0;
      v66[3] = 0;
      v66[4] = v29;
      v66[5] = v37;
      v66[6] = sub_1002F6228;
      v66[7] = v24;
      v67 = v29;

      sub_10020AAE4(0, 0, v11, &unk_1011F9AB0, v66);
    }
  }

  return result;
}

void sub_1002F32C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:*(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) isPlaceHolderPlace:0];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for MapsSyncStore();
    v9 = static MapsSyncStore.sharedStore.getter();
    v10 = type metadata accessor for LibraryDataOperationsProvider();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v9;
    v22.receiver = v11;
    v22.super_class = v10;
    v12 = objc_msgSendSuper2(&v22, "init");
    v13 = type metadata accessor for TaskPriority();
    v14 = *(*(v13 - 8) + 56);
    v14(v6, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    v15[5] = v8;
    v16 = v12;
    v17 = v8;
    sub_10020AAE4(0, 0, v6, &unk_1011F9600, v15);

    v14(v6, 1, 1, v13);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = a1;
    *(v19 + 40) = xmmword_1011F7C60;
    sub_10020AAE4(0, 0, v6, &unk_1011F9608, v19);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v20 + 24))(v2, a1, 0, 2, ObjectType, v20);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1002F357C(uint64_t a1, char a2)
{
  v5 = *(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
  type metadata accessor for VisitLocationCorrectionSessionImpl();
  v6 = swift_allocObject();
  v7 = v5;

  v8 = sub_1002F5D98(v7, a1, a2 & 1, v6);
  *(v8 + 56) = &off_1016103B0;
  swift_unknownObjectWeakAssign();
  *(v2 + 48) = v8;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;

    sub_1002F5E88(v11, v10);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1002F369C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      sub_1002F2B9C(a5, 1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1002F372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1002F37C4, v6, v5);
}

uint64_t sub_1002F37C4()
{
  v1 = v0[5];
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  v0[9] = v2;
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = v2;
  v4 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_visitId;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1002F38A8;

  return sub_100255E94(v1 + v4);
}

uint64_t sub_1002F38A8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1002F39C8, v3, v2);
}

uint64_t sub_1002F39C8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002F3A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002F3AC8, v7, v6);
}

uint64_t sub_1002F3AC8()
{
  if (qword_101906610 != -1)
  {
    swift_once();
  }

  v1 = *(*(v0[5] + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
  v0[10] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1002F3BC8;

  return sub_100256D78(v2);
}

uint64_t sub_1002F3BC8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  v4[2] = v2;
  v4[3] = a1;
  v5 = v3[10];
  *(v4 + 96) = a2;

  v6 = v3[9];
  v7 = v3[8];

  return _swift_task_switch(sub_1002F3D10, v7, v6);
}

uint64_t sub_1002F3D10()
{
  v1 = *(v0 + 96);

  if ((v1 & 1) == 0)
  {
    sub_1002F3D84(*(v0 + 40), *(v0 + 24));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002F3D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place);
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  type metadata accessor for VisitHistoryRemoveVisitConfirmationAlertProvider();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = a2;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  v9[5] = sub_1002F656C;
  v9[6] = v11;

  sub_1000588AC(0);

  *(v3 + 56) = v9;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = sub_1001FDED0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v12 = v12;
      [v14 _maps_topMostPresentViewController:v12 animated:1 completion:0];
    }

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_1002F3F64(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (!a1)
    {
LABEL_15:
      v9[7] = 0;
    }

    if (a1 == 1)
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      type metadata accessor for MainActor();

      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = &protocol witness table for MainActor;
      *(v12 + 32) = 0;
      *(v12 + 40) = a3;
      *(v12 + 48) = v9;
      sub_10020AAE4(0, 0, v7, &unk_1011F9628, v12);

      result = [objc_opt_self() sharedService];
      if (result)
      {
        v13 = result;
        swift_getKeyPath();
        v18 = a3;
        sub_1002F5D2C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(a3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8))
        {

          v14 = String._bridgeToObjectiveC()();
        }

        else
        {
          v14 = 0;
        }

        [v13 captureUserAction:514 onTarget:152 eventValue:v14];
LABEL_14:

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      type metadata accessor for MainActor();

      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = &protocol witness table for MainActor;
      *(v17 + 32) = 1;
      *(v17 + 40) = a3;
      *(v17 + 48) = v9;
      sub_10020AAE4(0, 0, v7, &unk_1011F9620, v17);

      result = [objc_opt_self() sharedService];
      if (result)
      {
        v13 = result;
        swift_getKeyPath();
        v18 = a3;
        sub_1002F5D2C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(a3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8))
        {

          v14 = String._bridgeToObjectiveC()();
        }

        else
        {
          v14 = 0;
        }

        [v13 captureUserAction:522 onTarget:152 eventValue:v14];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002F4338(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 128) = a4;
  *(v6 + 64) = type metadata accessor for MainActor();
  *(v6 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;

  return _swift_task_switch(sub_1002F43D8, v8, v7);
}

uint64_t sub_1002F43D8()
{
  if (qword_101906610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  if (*(v0 + 128) == 1)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
    *(v0 + 96) = v2;
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_1002F4554;

    return sub_100254FA4(v2);
  }

  else
  {
    v6 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_visitId;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_1002F4700;

    return sub_100254450(v1 + v6);
  }
}

uint64_t sub_1002F4554()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1002F4694, v4, v3);
}

uint64_t sub_1002F4694()
{
  swift_weakInit();

  return _swift_task_switch(sub_1002F4820, 0, 0);
}

uint64_t sub_1002F4700()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1002F6974, v3, v2);
}

uint64_t sub_1002F4820()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F48AC, v2, v1);
}

uint64_t sub_1002F48AC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[6];
      v4 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v2, v3, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  swift_weakDestroy();
  v6 = v0[10];
  v7 = v0[11];

  return _swift_task_switch(sub_1002F4994, v6, v7);
}

uint64_t sub_1002F4994()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002F49F4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  if (a3)
  {
    if (a1)
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      type metadata accessor for MainActor();

      swift_unknownObjectRetain();
      v15 = a4;
      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;
      v17[5] = a5;
      v17[6] = a6;
      v17[7] = a1;
      sub_10020B0D8(0, 0, v13, &unk_1011F95F8, v17);
    }
  }
}

uint64_t sub_1002F4B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = type metadata accessor for MainActor();
  v7[4] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1002F4C30;

  return sub_100489CBC(a5, a6, a7);
}

uint64_t sub_1002F4C30(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1002F4E30;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1002F4DC4;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002F4DC4()
{
  v1 = *(v0 + 48);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002F4E30()
{

  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F4E9C()
{
  sub_1000A09E0(v0 + 16);
  sub_1000A09E0(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_1002F4F10(void *a1)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + 48);
  if (v6)
  {
    if (object_getClass(a1) == _TtC4Maps34VisitLocationCorrectionSessionImpl && v6 == a1)
    {
      v8 = v6[3];
      if (v8)
      {
        if (*(v6 + 40))
        {
          if (*(v6 + 40) != 1)
          {
            return;
          }

          v9 = *(v6 + 8);
          v10 = type metadata accessor for TaskPriority();
          v11 = *(*(v10 - 8) + 56);
          v11(v5, 1, 1, v10);
          type metadata accessor for MainActor();
          swift_retain_n();
          swift_retain_n();

          v12 = static MainActor.shared.getter();
          v13 = swift_allocObject();
          v13[2] = v12;
          v13[3] = &protocol witness table for MainActor;
          v13[4] = v6;
          v13[5] = v1;
          sub_10020AAE4(0, 0, v5, &unk_1011F9650, v13);

          if (v9)
          {
            v11(v5, 1, 1, v10);

            v14 = v1;
            v15 = static MainActor.shared.getter();
            v16 = swift_allocObject();
            *(v16 + 16) = v15;
            *(v16 + 24) = &protocol witness table for MainActor;
            *(v16 + 32) = 0;
            *(v16 + 40) = v8;
            *(v16 + 48) = v14;
            sub_10020AAE4(0, 0, v5, &unk_1011F9658, v16);

LABEL_15:

            return;
          }
        }

        else
        {
          v17 = type metadata accessor for TaskPriority();
          (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
          type metadata accessor for MainActor();
          swift_retain_n();
          swift_retain_n();

          v18 = v1;
          v19 = static MainActor.shared.getter();
          v20 = swift_allocObject();
          v20[2] = v19;
          v20[3] = &protocol witness table for MainActor;
          v20[4] = v6;
          v20[5] = v18;
          v20[6] = v8;
          sub_10020AAE4(0, 0, v5, &unk_1011F9640, v20);
        }

        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_1002F5250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_1002F5300;

  return sub_1002B1464();
}

uint64_t sub_1002F5300(void *a1)
{
  v3 = *v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return _swift_task_switch(sub_1002F544C, v5, v4);
}

uint64_t sub_1002F544C()
{
  swift_weakInit();

  return _swift_task_switch(sub_1002F54B8, 0, 0);
}

uint64_t sub_1002F54B8()
{
  *(v0 + 96) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F5544, v2, v1);
}

uint64_t sub_1002F5544()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 48) = 0;
  }

  swift_weakDestroy();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1002F55E4, v2, v3);
}

uint64_t sub_1002F55E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[9] = type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v6[11] = v7;
  *v7 = v6;
  v7[1] = sub_1002F56F4;

  return sub_1002B1464();
}

uint64_t sub_1002F56F4(uint64_t a1)
{
  v2 = *v1;
  v2[12] = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v4;
  v2[14] = v3;

  return _swift_task_switch(sub_1002F5840, v4, v3);
}

uint64_t sub_1002F5840()
{
  v1 = *(v0 + 96);
  if (v1)
  {

    swift_weakInit();
    v2 = sub_1002F5A64;
  }

  else
  {
    swift_weakInit();
    v2 = sub_1002F58D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F58D8()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F5964, v2, v1);
}

uint64_t sub_1002F5964()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 48) = 0;
  }

  swift_weakDestroy();
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  return _swift_task_switch(sub_1002F5A04, v2, v3);
}

uint64_t sub_1002F5A04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F5A64()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F5AF0, v2, v1);
}

uint64_t sub_1002F5AF0()
{
  v1 = v0[8];

  sub_1002F5BA4((v0 + 6), v1);
  swift_weakDestroy();
  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1002F6978, v2, v3);
}

uint64_t sub_1002F5BA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v4, a2, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    *(v4 + 48) = 0;
  }

  return result;
}

uint64_t sub_1002F5C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_1002F3A30(a1, v4, v5, v7, v6);
}

unint64_t sub_1002F5D2C()
{
  result = qword_101911EF0;
  if (!qword_101911EF0)
  {
    type metadata accessor for VisitHistoryItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911EF0);
  }

  return result;
}

uint64_t sub_1002F5D98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  *(a4 + 40) = 2;
  *(a4 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = [objc_opt_self() sharedService];
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  if (a3)
  {
    v8 = 0xD000000000000013;
    if (a3 == 1)
    {
      v9 = 0x800000010122D320;
    }

    else
    {
      v8 = 0x4755535F49524953;
      v9 = 0xEF4E4F4954534547;
    }
  }

  else
  {
    v9 = 0xEE004E4F49544143;
    v8 = 0x4F4C5F474E4F5257;
  }

  *(a4 + 64) = v8;
  *(a4 + 72) = v9;
  return a4;
}

void sub_1002F5E88(uint64_t a1, uint64_t a2)
{
  if (GEOConfigGetBOOL())
  {
    v3 = type metadata accessor for VisitLocationCorrectionSearchableViewController();
    v4 = objc_allocWithZone(v3);
    type metadata accessor for VisitLocationCorrectionSearchableViewModel();
    v5 = swift_allocObject();

    *&v4[OBJC_IVAR____TtC4Maps47VisitLocationCorrectionSearchableViewController_viewModel] = sub_1002F60C8(v6, v5);
    v17 = v4;
    v7 = &v17;
  }

  else
  {
    v3 = type metadata accessor for VisitLocationCorrectionViewController();
    v8 = objc_allocWithZone(v3);
    type metadata accessor for VisitLocationCorrectionViewModel();
    v9 = swift_allocObject();

    *&v8[OBJC_IVAR____TtC4Maps37VisitLocationCorrectionViewController_viewModel] = sub_1002F617C(v10, v9);
    v18.receiver = v8;
    v7 = &v18;
  }

  v7->super_class = v3;
  v11 = [(objc_super *)v7 initWithNibName:0 bundle:0];
  [(objc_super *)v11 setContaineeDelegate:a2];
  v12 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }

  v15 = [objc_opt_self() sharedService];
  if (v15)
  {
    v16 = v15;
    [v15 captureUserAction:515 onTarget:147 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002F60C8(uint64_t a1, uint64_t a2)
{
  *(a2 + 120) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  ObservationRegistrar.init()();
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_10160F590;
  v4 = *(a1 + 16);
  type metadata accessor for VisitLocationCorrectionSearchableDataProvider();
  v5 = swift_allocObject();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 sharedService];
  *(v5 + 16) = v4;
  *(v5 + 24) = v7;
  *(a2 + 112) = v5;
  return a2;
}

uint64_t sub_1002F617C(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  ObservationRegistrar.init()();
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_10160F590;
  v4 = *(a1 + 16);
  type metadata accessor for VisitLocationCorrectionDataProvider();
  v5 = swift_allocObject();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 sharedService];
  *(v5 + 16) = v4;
  *(v5 + 24) = v7;
  *(a2 + 80) = v5;
  return a2;
}

uint64_t sub_1002F626C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002F62BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_1002F4B58(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002F6390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_10048DD38(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F6450()
{
  swift_unknownObjectRelease();

  if ((*(v0 + 48) - 1) >= 2)
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002F64A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1002A9024(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002F6574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1002F4338(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1002F663C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1002F5644(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002F6704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_1002F5250(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F67C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002F680C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1002A91F0(a1, v4, v5, v6);
}

uint64_t sub_1002F68C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1002F372C(a1, v4, v5, v6);
}

void sub_1002F6A28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (!v2)
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = [v2 collectionPinsItemSource];

    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 searchPinsManager];

  if (!v7)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = [v7 searchResultsItemSource];

  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void sub_1002F6CD0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100215204(a2);
  }
}

void sub_1002F6DA4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong searchPinsManager];

    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v8[4] = sub_1002F6FE4;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100039C64;
      v8[3] = &unk_1016107E0;
      v6 = _Block_copy(v8);
      v7 = v4;

      [a1 addAnimations:v6];
      _Block_release(v6);
    }
  }
}

void sub_1002F6EC0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps17UserGuidesContext_searchInfo);
  if (v2)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v8[4] = sub_1002F6FDC;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100039C64;
    v8[3] = &unk_101610790;
    v6 = _Block_copy(v8);
    v7 = v2;

    [a1 addAnimations:v6];
    _Block_release(v6);
  }
}

uint64_t sub_1002F7388()
{
  v1 = v0;
  v2 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SearchHomeCityCell();
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v10 = [v1 contentView];
  [v10 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v11 = OBJC_IVAR____TtC4Maps18SearchHomeCityCell_currentContainerSize;
  swift_beginAccess();
  v12 = *(v3 + 16);
  v12(v5, &v1[v11], v2);
  sub_1002F86FC(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v3;
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v10 & 1) == 0)
  {
    v12(v5, v8, v2);
    swift_beginAccess();
    (*(v16 + 40))(&v1[v11], v5, v2);
    swift_endAccess();
    [v1 setNeedsUpdateConfiguration];
  }

  return (v13)(v8, v2);
}

size_t sub_1002F7630()
{
  v58 = type metadata accessor for UUID();
  v1 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for CityTileViewModel();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&qword_101918F98);
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v41 - v5;
  v43 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ColumnViewConfig();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v9 = type metadata accessor for SearchHomeCityCell();
  v66.receiver = v0;
  v66.super_class = v9;
  objc_msgSendSuper2(&v66, "_bridgedUpdateConfigurationUsingState:", isa);

  v61 = v0;
  v10 = *&v0[OBJC_IVAR____TtC4Maps18SearchHomeCityCell_guideLocationViewModels];
  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = _swiftEmptyArrayStorage;
  v49 = v4;
  if (v11)
  {
    v62 = _swiftEmptyArrayStorage;

    result = sub_100511934(0, v11 & ~(v11 >> 63), 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v12 = v62;
      v55 = v10 & 0xC000000000000001;
      v50 = v10 & 0xFFFFFFFFFFFFFF8;
      v52 = (v1 + 8);
      v51 = v60 + 32;
      v54 = v10;
      v53 = v11;
      while (1)
      {
        if (v55)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            v11 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if (v14 >= *(v50 + 16))
          {
            goto LABEL_22;
          }

          v15 = *(v10 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = [v15 title];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 string];

          v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v1 = 0;
        }

        v20 = [v16 subTitle];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 string];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v23 = v16;
        [v61 bounds];
        v25 = v24 * 0.5;
        v26 = v24 * 0.5 * 1.33333333;
        v64 = &type metadata for CompactGuideImageProvider;
        v65 = sub_1002F8588();
        v63[0] = v23;
        *&v63[1] = v25;
        *&v63[2] = v26;
        v27 = v57;
        UUID.init()();
        v4 = UUID.uuidString.getter();
        (*v52)(v27, v58);
        v28 = v59;
        CityTileViewModel.init(id:title:subtitle:imageProvider:)();

        v62 = v12;
        v30 = v12[2];
        v29 = v12[3];
        if (v30 >= v29 >> 1)
        {
          sub_100511934(v29 > 1, v30 + 1, 1);
          v28 = v59;
          v12 = v62;
        }

        ++v14;
        v12[2] = v30 + 1;
        (*(v60 + 32))(v12 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v30, v28, v56);
        v10 = v54;
        if (v53 == v14)
        {

          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    v31 = OBJC_IVAR____TtC4Maps18SearchHomeCityCell_currentContainerSize;
    v32 = v61;
    swift_beginAccess();
    v33 = v42;
    v34 = &v32[v31];
    v35 = v41;
    v36 = v43;
    (*(v42 + 16))(v41, v34, v43);
    v37 = v44;
    static MapsDesignConstants.ColumnViews.SearchHome.cityGuidesColumnViewConfig(itemCount:containerSize:)();
    v38 = (*(v33 + 8))(v35, v36);
    __chkstk_darwin(v38);
    *(&v41 - 4) = v32;
    *(&v41 - 3) = v37;
    *(&v41 - 2) = v12;
    sub_1000CE6B8(&qword_101918FA8);
    sub_1000414C8(&qword_101918FB0, &qword_101918FA8);
    v39 = v47;
    UIHostingConfiguration<>.init(content:)();

    static Edge.Set.all.getter();
    v40 = v49;
    v64 = v49;
    v65 = sub_1000414C8(&qword_101918FB8, &qword_101918F98);
    sub_10001A848(v63);
    UIHostingConfiguration.margins(_:_:)();
    (*(v48 + 8))(v39, v40);
    UICollectionViewCell.contentConfiguration.setter();
    return (*(v45 + 8))(v37, v46);
  }

  return result;
}

uint64_t sub_1002F7E48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = type metadata accessor for ColumnViewConfig();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v14 = v11;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  (*(v8 + 16))(v10, a2, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v14;
  v18 = v14;

  sub_1000CE6B8(&qword_101918FC0);
  sub_1002F8638();
  return ColumnView.init(config:scrollIndex:columnBuilder:)();
}

void sub_1002F8084(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CityTileViewModel();
  v11 = __chkstk_darwin(v8);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    (*(v10 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    CityTile.init(model:tapHandler:)();
    [a3 bounds];
    v15 = v14 * 0.5 / (v14 * 0.5 * 1.33333333);
    v16 = a4 + *(sub_1000CE6B8(&qword_101918FC0) + 36);
    *v16 = v15;
    *(v16 + 8) = 0;
    return;
  }

  __break(1u);
}

void sub_1002F8238(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        [v5 didSelectCompactGuideModelAtIndex:a2];

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

id sub_1002F83BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHomeCityCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchHomeCityCell()
{
  result = qword_101918F88;
  if (!qword_101918F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F84D4()
{
  result = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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

unint64_t sub_1002F8588()
{
  result = qword_101918FA0;
  if (!qword_101918FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918FA0);
  }

  return result;
}

void sub_1002F85E8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32) + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_scrollIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1002F860C(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v1 + 32) + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_scrollIndex;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

unint64_t sub_1002F8638()
{
  result = qword_101918FC8;
  if (!qword_101918FC8)
  {
    sub_1000D6664(&qword_101918FC0);
    sub_1002F86FC(&qword_101918FD0, &type metadata accessor for CityTile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918FC8);
  }

  return result;
}

uint64_t sub_1002F86FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002F8744()
{
  result = qword_101918FD8[0];
  if (!qword_101918FD8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_101918FD8);
  }

  return result;
}

uint64_t sub_1002F87D8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1002F8B3C(a1);
  (*(*(*(v2 + qword_10195FF00) - 8) + 8))(a1);
  return v5;
}

void *sub_1002F889C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10195FF00);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_1002F89D4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1002F8AA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002F8B3C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return UIHostingController.init(rootView:)();
}

void sub_1002F8D4C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v12 = *&v3[OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId];
  v11 = *&v3[OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId + 8];

  if (v12 == Handle.identifier.getter() && v11 == v13)
  {

    goto LABEL_14;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_14:
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v4;
    v21[5] = a1;
    v21[6] = a2;
    v21[7] = a3;
    v22 = v4;
    v23 = a1;

    sub_10020AAE4(0, 0, v10, &unk_1011F97C0, v21);

    return;
  }

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_101960048);
  v25 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v25, v17, "SearchFindMyFriendshipCoordinator handle identifier and passed handle do not match", v18, 2u);
  }

  v19 = v25;
}

uint64_t sub_1002F8FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  v10 = type metadata accessor for Location();
  v7[33] = v10;
  v11 = *(v10 - 8);
  v7[34] = v11;
  v7[35] = *(v11 + 64);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  sub_1000CE6B8(&qword_1019162C0);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v12 = type metadata accessor for ClientOrigin();
  v7[40] = v12;
  v7[41] = *(v12 - 8);
  v7[42] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v7[43] = swift_task_alloc();

  return _swift_task_switch(sub_1002F923C, 0, 0);
}

uint64_t sub_1002F923C()
{
  v26 = v0;
  v1 = v0[23];
  (*(v0[41] + 104))(v0[42], enum case for ClientOrigin.other(_:), v0[40]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v2 = Session.init(_:)();
  v0[44] = v2;
  *(v1 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_session) = v2;

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = type metadata accessor for Logger();
  v0[45] = sub_100021540(v4, qword_101960048);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v11 = v8 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId;
    v12 = *(v8 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId);
    v13 = *(v11 + 8);

    v14 = sub_10004DEB8(v12, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "SearchFindMyFriendshipCoordinator: Calling FM to get fresh location for handle:%s", v9, 0xCu);
    sub_10004E3D0(v10);
  }

  v15 = v0[24];
  v16 = OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle;
  v0[46] = OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle;
  GEOConfigGetDouble();
  v18 = v17;
  sub_1000CE6B8(&unk_101925050);
  v19 = type metadata accessor for Handle();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v0[47] = v22;
  *(v22 + 16) = xmmword_1011E1D30;
  (*(v20 + 16))(v22 + v21, v15 + v16, v19);
  v23 = swift_task_alloc();
  v0[48] = v23;
  *v23 = v0;
  v23[1] = sub_1002F9594;

  return Session._maps_latestLocations(for:includeAddress:timeout:)(v22, 0, v18);
}

uint64_t sub_1002F9594(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1002F9DFC;
  }

  else
  {

    v4 = sub_1002F96B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002F96B0()
{
  v64 = v0;
  if (*(v0[49] + 16) && (v1 = sub_10029741C(v0[24] + v0[46]), (v2 & 1) != 0))
  {
    (*(v0[34] + 16))(v0[39], *(v0[49] + 56) + *(v0[34] + 72) * v1, v0[33]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[33];
  v7 = v0[34];

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_1000D2DFC(v4, v5, &qword_1019162C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = v0[23];
    sub_100024F64(v0[38], &qword_1019162C0);
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[23];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v63 = v14;
      *v13 = 136315138;
      v15 = v12 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId;
      v16 = *(v12 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId);
      v17 = *(v15 + 8);

      v18 = sub_10004DEB8(v16, v17, &v63);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "SearchFindMyFriendshipCoordinator couldn't find location for handle:%s", v13, 0xCu);
      sub_10004E3D0(v14);
    }

    v62 = v0[39];
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[29];
    aBlock = v0[30];
    v22 = v0[27];
    v23 = v0[28];
    v24 = v0[25];
    v25 = v0[26];
    sub_100109428();
    v58 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    v0[13] = v26;
    v0[12] = sub_1002FC3F8;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100039C64;
    v0[11] = &unk_101610A28;
    v27 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[21] = _swiftEmptyArrayStorage;
    sub_1000DB364();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v27);

    (*(v23 + 8))(v21, v22);
    (*(v20 + 8))(v19, aBlock);
  }

  else
  {
    v28 = v0[23];
    v60 = (v0[34] + 32);
    v59 = *v60;
    (*v60)(v0[37], v0[38], v0[33]);
    v29 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[23];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v63 = v34;
      *v33 = 136315138;
      v35 = v32 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId;
      v36 = *(v32 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId);
      v37 = *(v35 + 8);

      v38 = sub_10004DEB8(v36, v37, &v63);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "SearchFindMyFriendshipCoordinator did find location for handle:%s", v33, 0xCu);
      sub_10004E3D0(v34);
    }

    v62 = v0[39];
    v40 = v0[36];
    v39 = v0[37];
    v41 = v0[34];
    v42 = v0[33];
    v51 = v0[32];
    v56 = v0[31];
    v57 = v0[30];
    v53 = v0[29];
    v54 = v39;
    v55 = v0[28];
    v43 = v0[26];
    v44 = v0[27];
    v45 = v0[25];
    sub_100109428();
    v52 = static OS_dispatch_queue.main.getter();
    (*(v41 + 16))(v40, v39, v42);
    v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v43;
    v59(v47 + v46, v40, v42);
    v0[19] = v47;
    v0[18] = sub_1002FC1BC;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100039C64;
    v0[17] = &unk_101610A78;
    v48 = _Block_copy(v0 + 14);

    static DispatchQoS.unspecified.getter();
    v0[22] = _swiftEmptyArrayStorage;
    sub_1000DB364();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v48);

    (*(v55 + 8))(v53, v44);
    (*(v56 + 8))(v51, v57);
    (*(v41 + 8))(v54, v42);
  }

  sub_100024F64(v62, &qword_1019162C0);

  v49 = v0[1];

  return v49();
}

uint64_t sub_1002F9DFC()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "SearchFindMyFriendshipCoordinator encountered error:%@.", v3, 0xCu);
    sub_100024F64(v4, &qword_1019144F0);
  }

  v6 = v0[32];
  v17 = v0[31];
  v7 = v0[29];
  v18 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];

  sub_100109428();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  v0[6] = sub_1002FC190;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100039C64;
  v0[5] = &unk_1016109D8;
  v14 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[20] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v9 + 8))(v7, v8);
  (*(v17 + 8))(v6, v18);

  v15 = v0[1];

  return v15();
}

void sub_1002FA128(void (*a1)(id), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, a3, v5, v7);
  MyLocation = type metadata accessor for SearchFindMyLocation(0);
  v12 = objc_allocWithZone(MyLocation);
  UUID.init()();
  (v10)(&v12[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v9, v5);
  v14.receiver = v12;
  v14.super_class = MyLocation;
  v13 = objc_msgSendSuper2(&v14, "init");
  (*(v6 + 8))(v9, v5);
  a1(v13);
}

uint64_t sub_1002FA33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Friend();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for FriendStreamChange();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_1000CE6B8(&qword_1019190C0);
  v4[12] = swift_task_alloc();
  v7 = sub_1000CE6B8(&qword_1019190C8);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1000CE6B8(&qword_1019190B8);
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  sub_1000CE6B8(&unk_1019190D0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for ClientOrigin();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002FA62C, 0, 0);
}

uint64_t sub_1002FA62C()
{
  v1 = v0[5];
  (*(v0[22] + 104))(v0[23], enum case for ClientOrigin.other(_:), v0[21]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v2 = Session.init(_:)();
  v0[25] = v2;
  *(v1 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_session) = v2;

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1002FA750;
  v4 = v0[20];

  return Session.startUpdatingFriends(receiveInitialUpdates:)(v4, 1);
}

uint64_t sub_1002FA750()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002FAFF0;
  }

  else
  {
    v2 = sub_1002FA864;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002FA864()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 40);
  (*(v4 + 56))(v2, 0, 1, v3);
  v6 = OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_updateStream;
  swift_beginAccess();
  sub_1002FC380(v2, v5 + v6);
  swift_endAccess();
  sub_1000D2DFC(v5 + v6, v1, &unk_1019190D0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_100024F64(*(v0 + 152), &unk_1019190D0);
    if (qword_101906738 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960048);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SearchFindMyFriendshipCoordinator did not receive a stream.", v10, 2u);
    }

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 152), *(v0 + 128));
    AsyncStream.makeAsyncIterator()();
    v13 = enum case for FriendStreamChange.removed(_:);
    *(v0 + 232) = enum case for FriendStreamChange.added(_:);
    *(v0 + 236) = v13;
    v14 = swift_task_alloc();
    *(v0 + 224) = v14;
    *v14 = v0;
    v14[1] = sub_1002FAB80;
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);

    return AsyncStream.Iterator.next(isolation:)(v15, 0, 0, v16);
  }
}

uint64_t sub_1002FAB80()
{

  return _swift_task_switch(sub_1002FAC7C, 0, 0);
}

uint64_t sub_1002FAC7C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 232);
    v13 = *(v0 + 88);
    (*(v3 + 32))(v13, v1, v2);
    v14 = (*(v3 + 88))(v13, v2);
    if (v14 == v12)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    }

    else if (v14 == *(v0 + 236))
    {
      v15 = *(v0 + 88);
      v16 = *(v0 + 64);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);
      (*(*(v0 + 80) + 96))(v15, *(v0 + 72));
      (*(v18 + 32))(v16, v15, v17);
      sub_1002FBA48(v16);
      (*(v18 + 8))(v16, v17);
    }

    else
    {
      if (qword_101906738 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100021540(v19, qword_101960048);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "SearchFindMyFriendshipCoordinator received unhandled friendship event", v22, 2u);
      }

      v24 = *(v0 + 80);
      v23 = *(v0 + 88);
      v25 = *(v0 + 72);

      (*(v24 + 8))(v23, v25);
    }

    v26 = swift_task_alloc();
    *(v0 + 224) = v26;
    *v26 = v0;
    v26[1] = sub_1002FAB80;
    v27 = *(v0 + 96);
    v28 = *(v0 + 104);

    return AsyncStream.Iterator.next(isolation:)(v27, 0, 0, v28);
  }
}

uint64_t sub_1002FAFF0()
{

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960048);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "SearchFindMyFriendshipCoordinator: encountered error: %@ when monitoring handles", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002FB328()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_session);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1002FB40C;

    return Session.stopUpdatingFriends()();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1002FB40C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002FB548, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002FB548()
{

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960048);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "SearchFindMyFriendshipCoordinator: encountered error: %@ when stopped monitoring handles.", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002FB868(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002FB910;

  return sub_1002FB308();
}

uint64_t sub_1002FB910()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1002FBA48(uint64_t a1)
{
  v3 = type metadata accessor for Friend();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Handle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v35 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId);
  v13 = *(v1 + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId + 8);

  v39 = a1;
  Friend.handle.getter();
  v15 = Handle.identifier.getter();
  v17 = v16;
  v37 = *(v8 + 8);
  v38 = v7;
  v37(v12, v7);
  if (v14 == v15 && v13 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100021540(v21, qword_101960048);
  (*(v4 + 16))(v6, v39, v3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v24 = 136315138;
    v25 = v36;
    Friend.handle.getter();
    v26 = Handle.identifier.getter();
    v28 = v27;
    v37(v25, v38);
    (*(v4 + 8))(v6, v3);
    v29 = sub_10004DEB8(v26, v28, &v40);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Found a handle that was removed; identifier: %s", v24, 0xCu);
    sub_10004E3D0(v34);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    v31 = v36;
    Friend.handle.getter();
    Handle.identifier.getter();
    v37(v31, v38);
    v32 = String._bridgeToObjectiveC()();

    [v30 searchFindMyFriendDidRemoveHandleWithIdentifier:v32];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002FBEA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchFindMyFriendshipCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchFindMyFriendshipCoordinator()
{
  result = qword_1019190A0;
  if (!qword_1019190A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FBFA8()
{
  sub_1002FC058();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FC058()
{
  if (!qword_1019190B0)
  {
    sub_1000D6664(&qword_1019190B8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019190B0);
    }
  }
}

uint64_t sub_1002FC0BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_1002F8FE0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1002FC1BC()
{
  v1 = *(type metadata accessor for Location() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1002FA128(v2, v3, v4);
}

uint64_t sub_1002FC220()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC40;

  return sub_1002FB868(v2, v3);
}

uint64_t sub_1002FC2CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1002FA33C(a1, v4, v5, v6);
}

uint64_t sub_1002FC380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_1019190D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002FC404(void *a1)
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  if (!v3 || ![v3 _geoMapItem])
  {
    goto LABEL_9;
  }

  if (!a1 || ![a1 _geoMapItem])
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_1002FF35C();
    return;
  }

  if (!GEOMapItemIsEqualToMapItemForPurpose())
  {
    sub_1002FF35C();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void (*sub_1002FC52C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_1002FC584;
}

void sub_1002FC584(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v9 = *(v4 + v3);
  *(v4 + v3) = *a1;
  v6 = v5;
  v7 = v6;
  if (a2)
  {
    v8 = v6;
    sub_1002FC404(v9);
  }

  else
  {
    sub_1002FC404(v9);
  }
}

void *PlaceCardLibraryOperationsCoordinator.mapItem.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  v2 = v1;
  return v1;
}

void PlaceCardLibraryOperationsCoordinator.mapItem.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &unk_101918390);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_1002FC404(v10);
}

id sub_1002FC9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  *a2 = v4;

  return v4;
}

uint64_t type metadata accessor for PlaceCardLibraryOperationsCoordinator()
{
  result = qword_1019191D0;
  if (!qword_1019191D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FCABC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  *(v2 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem) = v1;
  v4 = v1;
  sub_1002FC404(v3);
}

void (*PlaceCardLibraryOperationsCoordinator.mapItem.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1002FC52C(v4);
  return sub_1002FCC48;
}

uint64_t PlaceCardLibraryOperationsCoordinator.savedStateOfPlace.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace);
}

uint64_t sub_1002FCE14(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace) == a1)
  {
    sub_10030131C();

    return sub_100301510();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002FCF4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace);
  return result;
}

void (*sub_1002FD024(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__viewControllerForPresentingAlert;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002FD0BC;
}

void sub_1002FD0BC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t PlaceCardLibraryOperationsCoordinator.viewControllerForPresentingAlert.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void PlaceCardLibraryOperationsCoordinator.viewControllerForPresentingAlert.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_100014C84(0, &qword_101919110);
      v4 = v3;
      v5 = static NSObject.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002FD4D4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*PlaceCardLibraryOperationsCoordinator.viewControllerForPresentingAlert.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1002FD024(v4);
  return sub_1002FD734;
}

uint64_t PlaceCardLibraryOperationsCoordinator.shouldDeleteWithoutConfirmation.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t PlaceCardLibraryOperationsCoordinator.shouldDeleteWithoutConfirmation.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1002FDAB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1002FDBA0(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t sub_1002FDBFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*PlaceCardLibraryOperationsCoordinator.shouldDeleteWithoutConfirmation.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1002FD740();
  return sub_1002FDD90;
}

id sub_1002FDD9C()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers);

  return v1;
}

id sub_1002FDE54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers);
  *a2 = v4;

  return v4;
}

void sub_1002FDF14(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers);
  sub_1000CE6B8(&qword_101909888);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002FE084()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress);
}

uint64_t sub_1002FE12C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress);
  return result;
}

uint64_t sub_1002FE1DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1002FE2F4()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_1002FE3A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary);
  return swift_unknownObjectRetain();
}

id PlaceCardLibraryOperationsCoordinator.placeNote.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary);
  if (result)
  {
    result = [result placeItemNote];
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

BOOL PlaceCardLibraryOperationsCoordinator.isPinned.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary))
  {
    return 0;
  }

  type metadata accessor for FavoriteItem();
  return swift_dynamicCastClass() != 0;
}

uint64_t PlaceCardLibraryOperationsCoordinator.syncObject.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary))
  {
    return 0;
  }

  type metadata accessor for MapsSyncObject();
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    return v2;
  }

  return result;
}

id sub_1002FE8F4()
{
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem] = 0;
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation] = 0;
  v1 = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL___MULibraryAccessProviderObserver queue:0];
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers] = v1;
  v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress] = 0;
  v2 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator_dataOperationsProvider;
  type metadata accessor for MapsSyncStore();
  v3 = static MapsSyncStore.sharedStore.getter();
  v4 = type metadata accessor for LibraryDataOperationsProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v3;
  v11.receiver = v5;
  v11.super_class = v4;
  *&v0[v2] = objc_msgSendSuper2(&v11, "init");
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary] = 0;
  sub_100024578();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D40;
  *(v6 + 32) = type metadata accessor for FavoriteItem();
  *(v6 + 40) = type metadata accessor for CollectionPlaceItem();
  *(v6 + 48) = type metadata accessor for Collection();
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__storeSubscriptionTypes] = v6;
  ObservationRegistrar.init()();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PlaceCardLibraryOperationsCoordinator();
  v7 = objc_msgSendSuper2(&v10, "init");
  v8 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.subscribe(_:)();

  return v7;
}

uint64_t PlaceCardLibraryOperationsCoordinator.storeSubscriptionTypes.setter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id PlaceCardLibraryOperationsCoordinator.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  v3 = v1;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for PlaceCardLibraryOperationsCoordinator();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void _s4Maps37PlaceCardLibraryOperationsCoordinatorC14storeDidChangeyySay0A4Sync0aJ6ObjectCmGF_0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  if (v2)
  {
    swift_getKeyPath();
    v3 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress))
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100492000(v3, v6);
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace))
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10030131C();
    sub_100301510();
  }
}

void sub_1002FEFD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (a2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress) = 0;
      if (a2)
      {
LABEL_4:
        if (*&v5[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace])
        {
          v7 = swift_getKeyPath();
          __chkstk_darwin(v7);
          sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
LABEL_13:
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return;
        }

        goto LABEL_11;
      }
    }

    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (*&v5[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace] != v9)
    {
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);
      goto LABEL_13;
    }

LABEL_11:
    sub_10030131C();
    sub_100301510();
  }
}

void sub_1002FF35C()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10030131C();
    sub_100301510();
  }

  if (*(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress))
  {
    v2 = swift_getKeyPath();
    __chkstk_darwin(v2);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress) = 0;
  }

  v3 = swift_getKeyPath();
  __chkstk_darwin(v3);
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  _s4Maps37PlaceCardLibraryOperationsCoordinatorC14storeDidChangeyySay0A4Sync0aJ6ObjectCmGF_0();
}

void sub_1002FF600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - v11;
  swift_getKeyPath();
  v72 = v4;
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v4 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__mapItem);
  if (v13)
  {
    v71 = a1;
    swift_getKeyPath();
    v72 = v5;
    v14 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v5 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress))
    {
    }

    else
    {
      v68 = v12;
      v69 = a3;
      v70 = a2;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v64 - 2) = v5;
      *(&v64 - 8) = 1;
      v72 = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (*(v5 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace) == 1)
      {
        sub_10030131C();
        sub_100301510();
      }

      else
      {
        v17 = swift_getKeyPath();
        __chkstk_darwin(v17);
        *(&v64 - 2) = v5;
        *(&v64 - 1) = 1;
        v72 = v5;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v18 = *(v5 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator_dataOperationsProvider);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = sub_1003024AC;
      v20[3] = v19;
      v20[4] = v18;
      v20[5] = v14;
      v21 = v70;
      v20[6] = v71;
      v20[7] = v21;
      v20[8] = v69;
      v20[9] = a4;
      v67 = a4;
      swift_bridgeObjectRetain_n();
      v22 = v14;
      v23 = v18;

      swift_retain_n();
      v24 = v22;
      v25 = v23;

      if ([v24 _geoMapItem])
      {
        swift_unknownObjectRetain();
        v26 = [v24 _geoMapItemStorageForPersistence];
        v65 = v25;
        v66 = v19;
        if (v26)
        {
          v27 = v26;
          v28 = [v26 userValues];

          if (v28)
          {
            v29 = [v28 name];

            if (v29)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }
        }

        Predicate = type metadata accessor for MapsSyncQueryPredicate();
        v39 = objc_allocWithZone(Predicate);
        v40 = MapsSyncQueryPredicate.init(mapItem:customName:)();
        v41 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
        v42 = type metadata accessor for MapsSyncRange();
        v43 = objc_allocWithZone(v42);
        v44 = v40;
        MapsSyncRange.init(offset:limit:)();
        Options = type metadata accessor for MapsSyncQueryOptions();
        v46 = objc_allocWithZone(Options);
        v47 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
        sub_1000CE6B8(&qword_101908400);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1011E4FD0;
        *(v48 + 32) = v44;
        *(v48 + 40) = v41;
        objc_allocWithZone(Predicate);
        v71 = v44;
        v49 = v41;
        MapsSyncQueryPredicate.init(and:)();
        v50 = objc_allocWithZone(v42);
        MapsSyncRange.init(offset:limit:)();
        v51 = objc_allocWithZone(Options);
        v52 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
        v53 = type metadata accessor for TaskPriority();
        v54 = v68;
        (*(*(v53 - 8) + 56))(v68, 1, 1, v53);
        v55 = swift_allocObject();
        v55[2] = 0;
        v55[3] = 0;
        v55[4] = v52;
        v55[5] = v47;
        v55[6] = sub_1002F6238;
        v55[7] = v20;
        v56 = v52;
        v57 = v47;

        sub_10020AAE4(0, 0, v54, &unk_101206A90, v55);
        v33 = v24;

        swift_unknownObjectRelease();

        v25 = v65;
      }

      else
      {
        v30 = sub_100491EAC();
        type metadata accessor for CollectionPlaceItem();
        v31 = MapsSyncObject.__allocating_init()();
        if (v21)
        {
          v32 = String._bridgeToObjectiveC()();
          [v24 setName:v32];
        }

        v33 = v24;
        v34 = [v24 name];
        if (v34)
        {
          v35 = v30;
          v36 = v25;
          v37 = v34;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = v36;
          v30 = v35;
        }

        dispatch thunk of CollectionPlaceItem.customName.setter();
        v58 = [v33 _geoMapItem];
        if (v58)
        {
          v59 = [objc_opt_self() mapItemStorageForGEOMapItem:v58];
          dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
          swift_unknownObjectRelease();
        }

        dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
        v60 = type metadata accessor for TaskPriority();
        v61 = v68;
        (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
        v62 = swift_allocObject();
        v62[2] = 0;
        v62[3] = 0;
        v62[4] = v25;
        v62[5] = v31;
        v62[6] = sub_1003024AC;
        v62[7] = v19;
        v63 = v25;

        sub_10020AAE4(0, 0, v61, &unk_1011F9AB0, v62);
      }
    }
  }

  else if (*(v5 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace))
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    *(&v64 - 2) = v5;
    *(&v64 - 1) = 0;
    v72 = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10030131C();
    sub_100301510();
  }
}

void sub_1002FFEF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v5[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress] == 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (a2)
      {
        if (*&v5[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace])
        {
LABEL_12:
          v9 = swift_getKeyPath();
          __chkstk_darwin(v9);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return;
        }
      }

      else
      {
        v7 = swift_getKeyPath();
        __chkstk_darwin(v7);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        if (a1)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        if (*&v5[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace] != v8)
        {
          goto LABEL_12;
        }
      }

      sub_10030131C();
      sub_100301510();
    }
  }
}

Swift::Void __swiftcall PlaceCardLibraryOperationsCoordinator.deletePlaceFromLibrary()()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary);
  if (!v2)
  {
    return;
  }

  swift_getKeyPath();
  swift_unknownObjectRetain();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress;
  if (*(v0 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress))
  {
LABEL_13:
    swift_unknownObjectRelease();
    return;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
  swift_beginAccess();
  if (*(v1 + v4) != 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (*(v1 + v3) == 1)
      {
        *(v1 + v3) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_10048AC00(v2, v6, sub_100302218, v11);
    }

    goto LABEL_13;
  }

  if (*(v1 + v3) == 1)
  {
    *(v1 + v3) = 1;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E47B0;
  *(inited + 32) = v2;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_10048A910(inited, sub_100302220, v9);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_1003006AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003008E0(a1 == 0);
  }
}

void sub_10030070C(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v5[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress] == 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1003008E0((a2 == 0) & ~a1);
    }
  }
}

uint64_t sub_1003008E0(uint64_t result)
{
  v2 = result;
  if (*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__hasOperationInProgress) = 0;
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace) == 2)
  {
    sub_10030131C();
    sub_100301510();
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = swift_getKeyPath();
  __chkstk_darwin(v5);
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

Swift::Void __swiftcall PlaceCardLibraryOperationsCoordinator.updatePlaceNote(to:)(Swift::String_optional to)
{
  v2 = v1;
  object = to.value._object;
  countAndFlagsBits = to.value._countAndFlagsBits;
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  swift_getKeyPath();
  v18 = v1;
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace;
  if (*&v1[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace])
  {
    swift_getKeyPath();
    v18 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *&v1[v8];
    if (v9 == 2)
    {
      if (object)
      {
        v14 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = 0;
      }

      if (object)
      {
        v15 = object;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_1002FF600(0, 0, countAndFlagsBits, object);
      }
    }

    else if (v9 == 1)
    {
      swift_getKeyPath();
      v18 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *&v1[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary];
      if (v10)
      {
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = v2;
        v12[5] = countAndFlagsBits;
        v12[6] = object;
        v12[7] = v10;

        swift_unknownObjectRetain();
        v13 = v2;
        sub_10020AAE4(0, 0, v7, &unk_1011F99D0, v12);
      }
    }
  }
}

uint64_t sub_100300E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100300E50, 0, 0);
}

uint64_t sub_100300E50()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100300EF8;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_100489CBC(v4, v2, v3);
}

uint64_t sub_100300EF8(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_100301050, 0, 0);
  }
}

uint64_t sub_100301050()
{
  if (*(v0 + 56) == 1)
  {
    sub_100301510();
  }

  v1 = *(v0 + 8);

  return v1();
}

id sub_100301154(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v2 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers) *a2];
}

void sub_100301224(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  swift_unknownObjectRetain();
  v7 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *&v7[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers];
  [v8 *a4];

  swift_unknownObjectRelease();
}

uint64_t sub_100301344(char *a1)
{
  swift_getKeyPath();
  v11 = a1;
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*&a1[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers] allObservers];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace;
    v7 = v4 + 32;
    do
    {
      sub_10004E374(v7, &v11);
      sub_1000CE6B8(&qword_1019191E0);
      if (swift_dynamicCast())
      {
        v8 = v10;
        swift_getKeyPath();
        v10 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v8 libraryAccessProvider:a1 savedStateOfPlaceDidChange:*&a1[v6] == 1];
        swift_unknownObjectRelease();
      }

      v7 += 32;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_100301538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003023EC(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1003017F0(char *a1)
{
  swift_getKeyPath();
  v18 = a1;
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*&a1[OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers] allObservers];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = v3;
    v5 = v3 + 32;
    v15 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary;
    v16 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace;
    v6 = &qword_1019191E0;
    do
    {
      sub_10004E374(v5, &v18);
      sub_1000CE6B8(v6);
      if (swift_dynamicCast())
      {
        v8 = v6;
        v9 = v17;
        swift_getKeyPath();
        v17 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*&a1[v16] == 1 && (swift_getKeyPath(), v17 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v10 = *&a1[v15]) != 0) && (v11 = [v10 placeItemNote]) != 0)
        {
          v12 = v11;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v7 = String._bridgeToObjectiveC()();
        }

        else
        {
          v7 = 0;
        }

        [v9 libraryAccessProvider:a1 placeNoteDidChange:{v7, v14}];
        swift_unknownObjectRelease();

        v6 = v8;
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }
}

uint64_t PlaceCardLibraryOperationsCoordinator.storeSubscriptionTypes.getter()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100301DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__storeSubscriptionTypes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100301E94()
{
  swift_getKeyPath();
  sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100301F50(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__storeSubscriptionTypes;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*PlaceCardLibraryOperationsCoordinator.storeSubscriptionTypes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003023EC(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100301A7C();
  return sub_1003020F8;
}

void sub_100302104(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_100302228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_100300E2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100302304()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1003023EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10030246C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers);
  *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateObservers) = v2;
  v4 = v2;
}

uint64_t sub_1003024B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_10048B5AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100302588()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace) = *(v0 + 24);
  sub_10030131C();
  return sub_100301510();
}

uint64_t sub_1003025D0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__placeItemInLibrary) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

unint64_t sub_100302694()
{
  result = qword_1019191E8;
  if (!qword_1019191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019191E8);
  }

  return result;
}

void sub_1003026E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1000D2C74;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100271778;
  v9[3] = &unk_101610D30;
  v8 = _Block_copy(v9);

  [v6 publisherLogoImageWithCompletion:v8];
  _Block_release(v8);
}

unint64_t sub_100302814()
{
  result = qword_1019191F0;
  if (!qword_1019191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019191F0);
  }

  return result;
}

uint64_t sub_1003029EC(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100302AB4;

  return (sub_100302D34)(v4);
}

uint64_t sub_100302AB4(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100302C00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_1003029EC(v2, v3);
}

uint64_t sub_100302CB4()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FF18);
  sub_100021540(v0, qword_10195FF18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100302D34(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for Location();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1000CE6B8(&qword_1019162C0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for ClientOrigin();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for Handle();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100302F64, 0, 0);
}

uint64_t sub_100302F64()
{
  v1 = [*(v0 + 72) stringForKey:@"MapsSuggestionsContactLikelyAppleIDKey"];
  if (v1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 200);
    v25 = *(v0 + 192);
    v26 = *(v0 + 176);
    v5 = *(v0 + 168);
    v27 = *(v0 + 160);
    v6 = *(v0 + 88);
    v28 = *(v0 + 152);
    v29 = *(v0 + 80);
    v7 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1004C0804(_swiftEmptyArrayStorage);
    Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
    v8 = *(v4 + 16);
    *(v0 + 224) = v8;
    *(v0 + 232) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v2, v25);
    MyHandle = type metadata accessor for SearchFindMyHandle(0);
    v10 = objc_allocWithZone(MyHandle);
    UUID.init()();
    v8(&v10[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v3, v25);
    *(v0 + 16) = v10;
    *(v0 + 24) = MyHandle;
    *(v0 + 240) = objc_msgSendSuper2((v0 + 16), "init", 0);
    v11 = *(v4 + 8);
    v4 += 8;
    *(v0 + 248) = v11;
    *(v0 + 256) = v4 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v3, v25);
    (*(v5 + 104))(v26, enum case for ClientOrigin.other(_:), v27);
    RequestOrigin.init(_:)();
    type metadata accessor for Session();
    swift_allocObject();
    *(v0 + 264) = Session.init(_:)();
    v12 = *(v6 + 56);
    *(v0 + 272) = v12;
    *(v0 + 280) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v28, 1, 1, v29);
    GEOConfigGetDouble();
    v14 = v13;
    *(v0 + 288) = sub_1000CE6B8(&unk_101925050);
    *(v0 + 296) = *(v4 + 64);
    v15 = *(v4 + 72);
    *(v0 + 376) = v15;
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject();
    *(v0 + 304) = v17;
    *(v17 + 16) = xmmword_1011E1D30;
    v8((v17 + v16), v2, v25);
    v18 = swift_task_alloc();
    *(v0 + 312) = v18;
    *v18 = v0;
    v18[1] = sub_100303400;

    return Session._maps_locations(for:reverseGeocode:maxAge:)(v17, 0, v14);
  }

  else
  {
    if (qword_1019066D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100021540(v20, qword_10195FF18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Entry does not have a value for MapsSuggestionsContactLikelyAppleIDKey. Returning.", v23, 2u);
    }

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_100303400(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {

    v4 = sub_100303DE0;
  }

  else
  {

    v4 = sub_100303550;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100303550()
{
  v89 = v0;
  if (*(*(v0 + 320) + 16) && (v1 = sub_10029741C(*(v0 + 216)), (v2 & 1) != 0))
  {
    (*(*(v0 + 88) + 16))(*(v0 + 144), *(*(v0 + 320) + 56) + *(*(v0 + 88) + 72) * v1, *(v0 + 80));
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 144);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  v4(v5, v3, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100304EE4(*(v0 + 144));
    if (qword_1019066D0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    *(v0 + 336) = sub_100021540(v8, qword_10195FF18);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to get cached location from Find My", v11, 2u);
    }

    v12 = *(v0 + 376);
    v13 = *(v0 + 224);
    v14 = *(v0 + 216);
    v15 = *(v0 + 192);

    GEOConfigGetDouble();
    v17 = v16;
    v18 = swift_allocObject();
    *(v0 + 344) = v18;
    *(v18 + 16) = xmmword_1011E1D30;
    v13(v18 + ((v12 + 32) & ~v12), v14, v15);
    v19 = swift_task_alloc();
    *(v0 + 352) = v19;
    *v19 = v0;
    v19[1] = sub_100303FE0;

    return Session._maps_latestLocations(for:includeAddress:timeout:)(v18, 0, v17);
  }

  else
  {
    v21 = *(v0 + 272);
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);
    v24 = *(v0 + 120);
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);
    sub_100304EE4(v23);
    v27 = *(v26 + 32);
    v27(v24, v22, v25);
    v27(v23, v24, v25);
    v21(v23, 0, 1, v25);
    v28 = *(v0 + 328);
    v29 = *(v0 + 128);
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    sub_10027169C(*(v0 + 152), v29);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      v33 = *(v0 + 240);
      v32 = *(v0 + 248);
      v34 = *(v0 + 216);
      v35 = *(v0 + 192);
      v36 = *(v0 + 152);
      v37 = *(v0 + 128);

      sub_100304EE4(v36);
      v32(v34, v35);
      sub_100304EE4(v37);
      v86 = 0;
    }

    else
    {
      v87 = v28;
      v38 = *(v0 + 240);
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      v42 = *(v0 + 80);
      v41 = *(v0 + 88);
      v43 = *(v0 + 72);
      (*(v41 + 32))(v40, *(v0 + 128), v42);
      v44 = *(v41 + 16);
      v44(v39, v40, v42);
      MyLocation = type metadata accessor for SearchFindMyLocation(0);
      v46 = objc_allocWithZone(MyLocation);
      UUID.init()();
      v44(&v46[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v39, v42);
      *(v0 + 32) = v46;
      *(v0 + 40) = MyLocation;
      v47 = objc_msgSendSuper2((v0 + 32), "init");
      v85 = *(v41 + 8);
      v85(v39, v42);
      MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
      v49 = objc_allocWithZone(MyLocationHandle);
      v50 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
      *&v49[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
      *&v49[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v38;
      *&v49[v50] = v47;
      *(v0 + 48) = v49;
      *(v0 + 56) = MyLocationHandle;
      v51 = v38;
      v84 = v47;
      v52 = objc_msgSendSuper2((v0 + 48), "init");
      v53 = [v43 dataForKey:@"MapsSuggestionsContactAsDataKey"];
      if (v53)
      {
        v54 = v53;
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        sub_100014C84(0, &qword_10190DD40);
        sub_100014C84(0, &unk_10191FF10);
        sub_10017A6A4(v55, v57);
        v58 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        sub_1000D41B4(v55, v57);
        v83 = v55;
        if (v87)
        {
          if (qword_1019066D0 != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          sub_100021540(v59, qword_10195FF18);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&_mh_execute_header, v60, v61, "Unable to get data from Contacts", v62, 2u);
          }

          swift_errorRetain();
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v88 = v66;
            *v65 = 136315138;
            *(v0 + 64) = v87;
            swift_errorRetain();
            sub_1000CE6B8(&qword_101915AB0);
            v67 = String.init<A>(describing:)();
            v69 = sub_10004DEB8(v67, v68, &v88);

            *(v65 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v63, v64, "CNContactVCardSerialization threw an error: %s", v65, 0xCu);
            sub_10004E3D0(v66);
          }

          else
          {
          }

          v58 = 0;
        }

        v70 = v57;
      }

      else
      {
        v58 = 0;
        v83 = 0;
        v70 = 0xF000000000000000;
      }

      v71 = *(v0 + 240);
      v82 = *(v0 + 248);
      v80 = *(v0 + 192);
      v81 = *(v0 + 216);
      v72 = *(v0 + 152);
      v73 = *(v0 + 104);
      v74 = *(v0 + 80);
      v75 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
      v76 = v52;
      v77 = v52;
      v78 = v76;
      v86 = sub_10050AF34(v58, 0, v77, 0);

      sub_1000D41A0(v83, v70);

      v85(v73, v74);
      sub_100304EE4(v72);
      v82(v81, v80);
    }

    v79 = *(v0 + 8);

    return v79(v86);
  }
}

uint64_t sub_100303DE0()
{
  (*(v0 + 272))(*(v0 + 144), 1, 1, *(v0 + 80));
  sub_100304EE4(*(v0 + 144));
  if (qword_1019066D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 336) = sub_100021540(v1, qword_10195FF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get cached location from Find My", v4, 2u);
  }

  v5 = *(v0 + 376);
  v6 = *(v0 + 224);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);

  GEOConfigGetDouble();
  v10 = v9;
  v11 = swift_allocObject();
  *(v0 + 344) = v11;
  *(v11 + 16) = xmmword_1011E1D30;
  v6(v11 + ((v5 + 32) & ~v5), v7, v8);
  v12 = swift_task_alloc();
  *(v0 + 352) = v12;
  *v12 = v0;
  v12[1] = sub_100303FE0;

  return Session._maps_latestLocations(for:includeAddress:timeout:)(v11, 0, v10);
}

uint64_t sub_100303FE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {

    v4 = sub_100304888;
  }

  else
  {

    v4 = sub_100304130;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100304130()
{
  v81 = v0;
  if (*(*(v0 + 360) + 16) && (v1 = sub_10029741C(*(v0 + 216)), (v2 & 1) != 0))
  {
    (*(*(v0 + 88) + 16))(*(v0 + 136), *(*(v0 + 360) + 56) + *(*(v0 + 88) + 72) * v1, *(v0 + 80));
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  v4(v5, v3, 1, v6);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 136);
  if (v8 == 1)
  {
    v10 = *(v0 + 368);
    sub_100304EE4(*(v0 + 136));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to get live location from Find My", v13, 2u);
    }
  }

  else
  {
    v14 = *(v0 + 272);
    v15 = *(v0 + 152);
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    sub_100304EE4(v15);
    v19 = *(v18 + 32);
    v19(v16, v9, v17);
    v19(v15, v16, v17);
    v14(v15, 0, 1, v17);
    v10 = *(v0 + 368);
  }

  v20 = *(v0 + 128);
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  sub_10027169C(*(v0 + 152), v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = *(v0 + 216);
    v26 = *(v0 + 192);
    v27 = *(v0 + 152);
    v28 = *(v0 + 128);

    sub_100304EE4(v27);
    v23(v25, v26);
    sub_100304EE4(v28);
    v78 = 0;
  }

  else
  {
    v79 = v10;
    v29 = *(v0 + 240);
    v30 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = *(v0 + 80);
    v32 = *(v0 + 88);
    v34 = *(v0 + 72);
    (*(v32 + 32))(v31, *(v0 + 128), v33);
    v35 = *(v32 + 16);
    v35(v30, v31, v33);
    MyLocation = type metadata accessor for SearchFindMyLocation(0);
    v37 = objc_allocWithZone(MyLocation);
    UUID.init()();
    v35(&v37[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v30, v33);
    *(v0 + 32) = v37;
    *(v0 + 40) = MyLocation;
    v38 = objc_msgSendSuper2((v0 + 32), "init");
    v77 = *(v32 + 8);
    v77(v30, v33);
    MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
    v40 = objc_allocWithZone(MyLocationHandle);
    v41 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
    *&v40[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
    *&v40[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v29;
    *&v40[v41] = v38;
    *(v0 + 48) = v40;
    *(v0 + 56) = MyLocationHandle;
    v42 = v29;
    v76 = v38;
    v43 = objc_msgSendSuper2((v0 + 48), "init");
    v44 = [v34 dataForKey:@"MapsSuggestionsContactAsDataKey"];
    if (v44)
    {
      v45 = v44;
      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      sub_100014C84(0, &qword_10190DD40);
      sub_100014C84(0, &unk_10191FF10);
      sub_10017A6A4(v46, v48);
      v49 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_1000D41B4(v46, v48);
      v75 = v46;
      if (v79)
      {
        if (qword_1019066D0 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100021540(v50, qword_10195FF18);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Unable to get data from Contacts", v53, 2u);
        }

        swift_errorRetain();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v80 = v57;
          *v56 = 136315138;
          *(v0 + 64) = v79;
          swift_errorRetain();
          sub_1000CE6B8(&qword_101915AB0);
          v58 = String.init<A>(describing:)();
          v60 = sub_10004DEB8(v58, v59, &v80);

          *(v56 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v54, v55, "CNContactVCardSerialization threw an error: %s", v56, 0xCu);
          sub_10004E3D0(v57);
        }

        else
        {
        }

        v49 = 0;
      }

      v61 = v48;
    }

    else
    {
      v49 = 0;
      v75 = 0;
      v61 = 0xF000000000000000;
    }

    v62 = *(v0 + 240);
    v74 = *(v0 + 248);
    v72 = *(v0 + 192);
    v73 = *(v0 + 216);
    v63 = *(v0 + 152);
    v64 = *(v0 + 104);
    v65 = *(v0 + 80);
    v66 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v67 = v43;
    v68 = v43;
    v69 = v67;
    v78 = sub_10050AF34(v49, 0, v68, 0);

    sub_1000D41A0(v75, v61);

    v77(v64, v65);
    sub_100304EE4(v63);
    v74(v73, v72);
  }

  v70 = *(v0 + 8);

  return v70(v78);
}

uint64_t sub_100304888()
{
  (*(v0 + 272))(*(v0 + 136), 1, 1, *(v0 + 80));
  sub_100304EE4(*(v0 + 136));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get live location from Find My", v3, 2u);
  }

  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_10027169C(*(v0 + 152), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);

    sub_100304EE4(v11);
    v7(v9, v10);
    sub_100304EE4(v12);
    v51 = 0;
  }

  else
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);
    (*(v17 + 32))(v15, *(v0 + 128), v16);
    v19 = *(v17 + 16);
    v19(v14, v15, v16);
    MyLocation = type metadata accessor for SearchFindMyLocation(0);
    v21 = objc_allocWithZone(MyLocation);
    UUID.init()();
    v19(&v21[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v14, v16);
    *(v0 + 32) = v21;
    *(v0 + 40) = MyLocation;
    v22 = objc_msgSendSuper2((v0 + 32), "init");
    v50 = *(v17 + 8);
    v50(v14, v16);
    MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
    v24 = objc_allocWithZone(MyLocationHandle);
    v25 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
    *&v24[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
    *&v24[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v13;
    *&v24[v25] = v22;
    *(v0 + 48) = v24;
    *(v0 + 56) = MyLocationHandle;
    v26 = v13;
    v49 = v22;
    v27 = objc_msgSendSuper2((v0 + 48), "init");
    v28 = [v18 dataForKey:@"MapsSuggestionsContactAsDataKey"];
    if (v28)
    {
      v29 = v28;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      sub_100014C84(0, &qword_10190DD40);
      sub_100014C84(0, &unk_10191FF10);
      sub_10017A6A4(v30, v32);
      v33 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_1000D41B4(v30, v32);
      v48 = v30;
      v34 = v32;
    }

    else
    {
      v33 = 0;
      v48 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = *(v0 + 240);
    v47 = *(v0 + 248);
    v45 = *(v0 + 192);
    v46 = *(v0 + 216);
    v36 = *(v0 + 152);
    v37 = *(v0 + 104);
    v38 = *(v0 + 80);
    v39 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
    v40 = v27;
    v41 = v27;
    v42 = v40;
    v51 = sub_10050AF34(v33, 0, v41, 0);

    sub_1000D41A0(v48, v34);

    v50(v37, v38);
    sub_100304EE4(v36);
    v47(v46, v45);
  }

  v43 = *(v0 + 8);

  return v43(v51);
}

uint64_t sub_100304EE4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019162C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100304F78@<Q0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  sub_1003050A0(&v10);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v19 = v10;
  v20 = v11;
  v28[6] = v16;
  v28[7] = v17;
  v28[8] = v18;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[0] = v10;
  v28[1] = v11;
  sub_1000D2DFC(&v19, &v9, &qword_101919248);
  sub_100024F64(v28, &qword_101919248);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v26;
  *(a1 + 112) = v25;
  *(a1 + 128) = v5;
  *(a1 + 144) = v27;
  v6 = v22;
  *(a1 + 48) = v21;
  *(a1 + 64) = v6;
  v7 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v7;
  result = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = result;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_1003050A0@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v22 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];

  v6 = Image.init(systemName:)();
  static Font.Weight.bold.getter();
  v7 = enum case for Font.Design.rounded(_:);
  v8 = type metadata accessor for Font.Design();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v4, v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v10 = static Font.system(size:weight:design:)();
  sub_100024F64(v4, &qword_1019109C0);
  KeyPath = swift_getKeyPath();
  v12 = static Color.gray.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = v22;
  *&v41[0] = v22;
  WORD4(v41[0]) = 256;
  *(v41 + 10) = *v40;
  *(&v41[1] + 10) = *&v40[8];
  *(&v41[2] + 10) = *&v40[16];
  *(&v41[3] + 1) = *&v40[23];
  v28 = v41[0];
  v29 = v41[1];
  v30 = v41[2];
  v31 = v41[3];
  *&v42 = v6;
  *(&v42 + 1) = KeyPath;
  *&v43 = v10;
  *(&v43 + 1) = v12;
  v14 = v38;
  v45 = v38;
  v46 = v39;
  v15 = v37;
  v44 = v37;
  v35 = v38;
  v36 = v39;
  v33 = v43;
  v34 = v37;
  v32 = v42;
  v16 = v41[3];
  a1[2] = v41[2];
  a1[3] = v16;
  v17 = v29;
  *a1 = v28;
  a1[1] = v17;
  v18 = v36;
  a1[7] = v35;
  a1[8] = v18;
  v19 = v34;
  a1[5] = v33;
  a1[6] = v19;
  a1[4] = v32;
  v47[0] = v6;
  v47[1] = KeyPath;
  v47[2] = v10;
  v47[3] = v12;
  v48 = v15;
  v49 = v14;
  v50 = v39;
  sub_1000D2DFC(v41, &v23, &qword_101919250);
  sub_1000D2DFC(&v42, &v23, &qword_101919258);
  sub_100024F64(v47, &qword_101919258);
  v23 = v13;
  v24 = 256;
  v25 = *v40;
  v26 = *&v40[8];
  v27[0] = *&v40[16];
  *(v27 + 14) = *&v40[23];
  return sub_100024F64(&v23, &qword_101919250);
}

uint64_t sub_1003053F0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_1019191F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1000CE6B8(&qword_101919200);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = type metadata accessor for ButtonRole();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v16;
  v18[5] = v15;
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v29 = v15;

  sub_1000CE6B8(&qword_101919208);
  sub_100305720();
  Button.init(role:action:label:)();
  PlainButtonStyle.init()();
  sub_1000414C8(&qword_101919238, &qword_101919200);
  sub_100305804();
  v19 = v25;
  v20 = v23;
  View.buttonStyle<A>(_:)();
  (*(v24 + 8))(v5, v20);
  (*(v10 + 8))(v12, v9);
  result = sub_1000CE6B8(&qword_101919240);
  *(v19 + *(result + 36)) = 257;
  return result;
}

unint64_t sub_100305720()
{
  result = qword_101919210;
  if (!qword_101919210)
  {
    sub_1000D6664(&qword_101919208);
    sub_1000414C8(&qword_101919218, &qword_101919220);
    sub_1000414C8(&qword_101919228, &qword_101919230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919210);
  }

  return result;
}

unint64_t sub_100305804()
{
  result = qword_10190C670;
  if (!qword_10190C670)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C670);
  }

  return result;
}

unint64_t sub_10030585C()
{
  result = qword_101919260;
  if (!qword_101919260)
  {
    sub_1000D6664(&qword_101919240);
    sub_1000D6664(&qword_101919200);
    type metadata accessor for PlainButtonStyle();
    sub_1000414C8(&qword_101919238, &qword_101919200);
    sub_100305804();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101919260);
  }

  return result;
}

uint64_t sub_100305A18(double a1, double a2)
{
  v4 = sub_100221EA0();
  sub_100434AAC(v4);

  v5 = sub_100222BC0();
  sub_100434EA8(v5);

  v6 = sub_100217754();
  sub_1004324B8(v6, a1, a2);

  v7 = sub_100222FE8();
  sub_1004316D8(v7);

  v8 = sub_100222DCC();
  sub_1003D0E40(v8);

  v9 = sub_100223204();
  sub_100468B08(v9);
}

id sub_100305BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryAsyncDataManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100305C58()
{
  swift_getKeyPath();
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100305D18()
{
  swift_getKeyPath();
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100305DD8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100305E78(uint64_t a1)
{
  v2 = v1;
  v3 = *(*(a1 + 88) + OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler);
  swift_getKeyPath();
  v9[1] = v2;
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  v4 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__selectedUserGuides;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v7 = sub_100360D3C(v4, v6);

  swift_getKeyPath();
  if (v7)
  {
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v8 = sub_100308920(v4, &qword_101922CC0, off_1015F61A0, &unk_101919350, &unk_1011F9EC0);
  }

  else
  {
    v4 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1003082B8(v9, v4, &qword_101922CC0, off_1015F61A0, &unk_101919350, &unk_1011F9EC0);
    v8 = v9[0];
  }

  swift_endAccess();

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10030611C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__state) = a2;
}

uint64_t sub_1003061F8(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_100306378(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_1003063D8()
{
  swift_getKeyPath();
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100306498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__selectedUserGuides;
  swift_beginAccess();

  sub_10019D0EC(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003065E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__selectedUserGuides;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1003066E0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__showsAddToLibrarySection) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__showsAddToLibrarySection) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10030685C()
{
  v5 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v1 = *(v5 - 8);
  __chkstk_darwin(v5);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = v0;
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000CE6B8(&unk_10190D580);
  type metadata accessor for TrailingAccessoryViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  swift_getKeyPath();
  v6 = v0;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = *(v0 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected);
  (*(v1 + 104))(v3, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.select(_:), v5);
  TrailingAccessoryViewModel.init(type:)();
  dispatch thunk of ListCellViewModel.trailingAccessory.setter();
}

uint64_t sub_100306AC4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  v6 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = v6[*a4];

  return v7;
}

uint64_t sub_100306BD8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected) = a1 & 1;

    return sub_10030685C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100306D14(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__libraryCellViewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D75C(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t type metadata accessor for GuidesPickerViewModel()
{
  result = qword_101919338;
  if (!qword_101919338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100306FE4()
{
  result = type metadata accessor for ObservationRegistrar();
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

Swift::Int sub_1003070E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000CE6B8(&qword_10190CDD8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for PlaceItemRowViewModel();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003099E4(v9 + 1, &qword_10190CDD8);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1003072E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_1000CE6B8(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100014C84(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1003099E4(v14 + 1, a3);
        }

        v7 = v20;
        result = NSObject._rawHashValue(seed:)(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}