unint64_t sub_10049BA28(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v36 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v36;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v39 = a1 & 0xC000000000000001;
  v37 = v4;
  v38 = a1 + 32;
  v6 = a2 + 56;
  v7 = &selRef_tintColor;
  while (v5 != v4)
  {
    if (v39)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v9 = *(v38 + 8 * v5);
    }

    v10 = v9;
    v11 = [v9 v7[339]];
    v12 = [v11 lookupInfo];

    if (v12)
    {
      v13 = [v12 emailAddress];

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (*(a2 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v17 = Hasher._finalize()();
          v18 = -1 << *(a2 + 32);
          v19 = v17 & ~v18;
          if ((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v20 = ~v18;
            do
            {
              v21 = (*(a2 + 48) + 16 * v19);
              v22 = *v21 == v14 && v21[1] == v16;
              if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_36;
              }

              v19 = (v19 + 1) & v20;
            }

            while (((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
          }
        }

        v4 = v37;
        v7 = &selRef_tintColor;
      }
    }

    v23 = [v10 v7[339]];
    v24 = [v23 lookupInfo];

    if (v24 && (v25 = [v24 phoneNumber], v24, v25))
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (*(a2 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if ((*(v6 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = (*(a2 + 48) + 16 * v31);
            v34 = *v33 == v26 && v33[1] == v28;
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v6 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

LABEL_36:

          return v5;
        }
      }

LABEL_32:

      v4 = v37;
      v7 = &selRef_tintColor;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_40;
      }
    }
  }

  return 0;
}

unint64_t sub_10049BD80(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_10049BA28(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = 0;
  v50 = a1;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v52 = a2 + 56;
  v10 = &selRef_tintColor;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    v12 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 8 * v9 + 32);
LABEL_14:
    v14 = v13;
    v15 = [v13 v10[339]];
    v16 = [v15 lookupInfo];

    if (v16)
    {
      v17 = [v16 emailAddress];

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (*(a2 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v21 = Hasher._finalize()();
          v22 = -1 << *(a2 + 32);
          v23 = v21 & ~v22;
          if ((*(v52 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            do
            {
              v25 = (*(a2 + 48) + 16 * v23);
              v26 = *v25 == v18 && v25[1] == v20;
              if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_7;
              }

              v23 = (v23 + 1) & v24;
            }

            while (((*(v52 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
          }
        }

        v10 = &selRef_tintColor;
        v12 = v5 & 0xC000000000000001;
      }
    }

    v27 = [v14 v10[339]];
    v28 = [v27 lookupInfo];

    if (!v28 || (v29 = [v28 phoneNumber], v28, !v29))
    {

      if (v8 != v9)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (*(a2 + 16))
    {
      v51 = v12;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v33 = Hasher._finalize()();
      v34 = -1 << *(a2 + 32);
      v35 = v33 & ~v34;
      if (((*(v52 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
LABEL_37:

        v10 = &selRef_tintColor;
        v12 = v51;
        if (v8 != v9)
        {
          goto LABEL_40;
        }

        goto LABEL_56;
      }

      v36 = ~v34;
      while (1)
      {
        v37 = (*(a2 + 48) + 16 * v35);
        v38 = *v37 == v30 && v37[1] == v32;
        if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v52 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

LABEL_7:

      v10 = &selRef_tintColor;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_70;
      }
    }

    else
    {

      v10 = &selRef_tintColor;
      if (v8 != v9)
      {
LABEL_40:
        if (v12)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v41 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v41)
          {
            goto LABEL_74;
          }

          if (v9 >= v41)
          {
            goto LABEL_75;
          }

          v42 = *(v5 + 32 + 8 * v9);
          v39 = *(v5 + 32 + 8 * v8);
          v40 = v42;
        }

        v43 = v40;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_10030FFBC(v5);
          v44 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v44) = 0;
        }

        v45 = v5 & 0xFFFFFFFFFFFFFF8;
        v46 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v43;

        if ((v5 & 0x8000000000000000) != 0 || v44)
        {
          v5 = sub_10030FFBC(v5);
          v45 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_66:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v9 >= *(v45 + 16))
        {
          goto LABEL_72;
        }

        v47 = v45 + 8 * v9;
        v48 = *(v47 + 32);
        *(v47 + 32) = v39;

        *v50 = v5;
      }

LABEL_56:
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_71;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_70;
      }
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10049C260()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100497338(v0 + v2, v3);
}

void sub_10049C304(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_1006BC9C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002597C(v4, qword_1006C9E28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100009D88(v9, v10, &v12);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: updateTotalNoteCount: %ld", v7, 0x16u);
    sub_100009F60(v8);
  }

  *(v2 + OBJC_IVAR___ICAppStoreRatingController_totalNoteCount) = a1;

  sub_10049D900();
}

void sub_10049C48C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-1] - v3;
  if (qword_1006BC9C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10002597C(v5, qword_1006C9E28);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100009D88(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: didEdit", v8, 0xCu);
    sub_100009F60(v9);
  }

  static Date.now.getter();
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(v4, 0, 1, v13);
  v15 = OBJC_IVAR___ICAppStoreRatingController_lastEditDate;
  swift_beginAccess();
  sub_10023A078(v4, v1 + v15);
  swift_endAccess();
  sub_10049D900();
  static Date.now.getter();
  v14(v4, 0, 1, v13);
  v16 = OBJC_IVAR___ICAppStoreRatingController_lastInteractionDate;
  swift_beginAccess();
  sub_10023A078(v4, v1 + v16);
  swift_endAccess();
  v17 = sub_10049D57C();
  [v17 requestFire];
}

void sub_10049C728()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC9C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002597C(v6, qword_1006C9E28);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100009D88(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: didLaunch", v9, 0xCu);
    sub_100009F60(v10);
  }

  v14 = sub_10049CDBC();
  static Date.now.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1001CBEC4(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1001CBEC4(v15 > 1, v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v2);
  sub_10049D640(v14);

  v17 = *(v1 + OBJC_IVAR___ICAppStoreRatingController_userDefaults);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = String._bridgeToObjectiveC()();
  [v17 setObject:isa forKey:v19];

  sub_10049D900();
}

uint64_t sub_10049CA2C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C9E28);
  sub_10002597C(v0, qword_1006C9E28);
  return static Logger.application.getter();
}

uint64_t sub_10049CBD8(uint64_t a1)
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR___ICAppStoreRatingController_userDefaults);
  sub_100239F98(a1, &v12 - v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];
  swift_unknownObjectRelease();

  return sub_1000073B4(a1, &unk_1006C1710);
}

void *sub_10049CDBC()
{
  v1 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_10015DA04(&qword_1006C9EB8);
    if (swift_dynamicCast())
    {
      *&v8[0] = v5;

      sub_10049E6D8(v8);

      return *&v8[0];
    }
  }

  else
  {
    sub_1000073B4(v8, &qword_1006BE7A0);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10049D030@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___ICAppStoreRatingController_userDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_1000073B4(v12, &qword_1006BE7A0);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

Class sub_10049D2F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_100239F98(a1 + v8, v7);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

void sub_10049D43C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_10023A078(v9, a1 + v12);
  swift_endAccess();
}

id sub_10049D57C()
{
  v1 = OBJC_IVAR___ICAppStoreRatingController____lazy_storage___interactionSelectorDelayer;
  v2 = *(v0 + OBJC_IVAR___ICAppStoreRatingController____lazy_storage___interactionSelectorDelayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICAppStoreRatingController____lazy_storage___interactionSelectorDelayer);
  }

  else
  {
    v4 = [objc_allocWithZone(ICSelectorDelayer) initWithTarget:v0 selector:"didStopInteracting" delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:*(v0 + OBJC_IVAR___ICAppStoreRatingController_noteEditRequirement)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10049D640(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = OBJC_IVAR___ICAppStoreRatingController_maximumPersistedLaunchDaysCount;
  v6 = *&v1[OBJC_IVAR___ICAppStoreRatingController_maximumPersistedLaunchDaysCount];
  if (v6 >= v4)
  {

    return;
  }

  if (v6 >= 1)
  {
    if (qword_1006BC9C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10002597C(v7, qword_1006C9E28);
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100009D88(v12, v13, &v29);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      v15 = *&v2[v5];

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: Limiting persisted launch days to maximum: %ld", v11, 0x16u);
      sub_100009F60(v28);
    }

    else
    {
    }

    if (v4)
    {
      v16 = type metadata accessor for Date();
      v17 = *&v2[v5];
      if (!__OFSUB__(v17, 1))
      {
        v18 = *(v16 - 8);
        v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v20 = sub_100438494(v17 - 1, a1);
        v22 = v21;
        v24 = v23;
        v26 = v25;
        sub_10015DA04(&qword_1006BE780);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100531E30;
        (*(v18 + 16))(v27 + v19, a1 + v19, v16);
        v29 = v27;

        sub_1002DCD18(v20, v22, v24, v26);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10049D900()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  if (sub_10049DFDC())
  {
    v5 = OBJC_IVAR___ICAppStoreRatingController_didRequestRating;
    if ((*(v0 + OBJC_IVAR___ICAppStoreRatingController_didRequestRating) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        if (qword_1006BC9C8 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10002597C(v8, qword_1006C9E28);
        v9 = v7;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v22 = v9;
          v13 = v12;
          v14 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23 = v21;
          *v13 = 136315394;
          v15 = _typeName(_:qualified:)();
          v17 = sub_100009D88(v15, v16, &v23);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2112;
          *(v13 + 14) = v22;
          *v14 = v7;
          v18 = v22;
          _os_log_impl(&_mh_execute_header, v10, v11, "%s: Requesting App Store review in windowScene: %@", v13, 0x16u);
          sub_1000073B4(v14, &qword_1006C1440);

          sub_100009F60(v21);

          v9 = v22;
        }

        v19 = type metadata accessor for MainActor();
        __chkstk_darwin(v19);
        *(&v21 - 2) = v9;
        sub_10049E228(sub_10049E628, (&v21 - 4));
        [*(v1 + OBJC_IVAR___ICAppStoreRatingController_eventReporter) submitAppReviewPromptRequestEvent];
        *(v1 + v5) = 1;
        static Date.now.getter();
        v20 = type metadata accessor for Date();
        (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
        sub_10049CBD8(v4);
      }
    }
  }
}

void sub_10049DE28()
{
  swift_getObjectType();
  if (qword_1006BC9C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10002597C(v0, qword_1006C9E28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100009D88(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: didStopInteracting", v3, 0xCu);
    sub_100009F60(v4);
  }

  sub_10049D900();
}

BOOL sub_10049DFDC()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = _s19NoteEditRequirementV5DatesVMa();
  __chkstk_darwin(v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_cohortRequirement);
  if (v8 == 100 || (, v9 = sub_1003FDF10(), , v8 >= v9)) && (v10 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_launchRequirement), v11 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_launchRequirement + 8), v12 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_launchRequirement + 16), v13 = sub_10049CDBC(), LOBYTE(v10) = sub_10043821C(v13, v10, v11, v12), , (v10) && ((v14 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_noteCountRequirement)) != 0 ? (v15 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_totalNoteCount) < v14) : (v15 = 0), !v15 && (v16 = *(v0 + OBJC_IVAR___ICAppStoreRatingController_noteEditRequirement), v17 = OBJC_IVAR___ICAppStoreRatingController_lastEditDate, swift_beginAccess(), sub_100239F98(v1 + v17, v7), v18 = OBJC_IVAR___ICAppStoreRatingController_lastInteractionDate, swift_beginAccess(), sub_100239F98(v1 + v18, &v7[*(v5 + 20)]), LOBYTE(v18) = sub_100438614(v7, v16), sub_10049E67C(v7), (v18)))
  {
    v19 = *(v1 + OBJC_IVAR___ICAppStoreRatingController_requestRequirement);
    sub_10049D030(v4);
    v20 = sub_1004388F0(v4, v19);
    sub_1000073B4(v4, &unk_1006C1710);
  }

  else
  {
    return 0;
  }

  return v20;
}

uint64_t sub_10049E228(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10049E654();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x8000000100575BE0;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AppStoreRatingController()
{
  result = qword_1006C9EA8;
  if (!qword_1006C9EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049E538()
{
  sub_10001E5B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10049E67C(uint64_t a1)
{
  v2 = _s19NoteEditRequirementV5DatesVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10049E6D8(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001B3A8C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10049E780(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10049E780(uint64_t *a1)
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
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10049EB3C(v8, v9, a1, v4);
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
    return sub_10049E8AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10049E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      sub_10049FCC0();
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10049EB3C(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v133 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v118 - v16;
  result = __chkstk_darwin(v15);
  v139 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1001B36CC(a4);
    }

    v141 = result;
    v113 = *(result + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        a4 = v113 - 1;
        v114 = *(result + 16 * v113);
        v115 = result;
        v116 = *(result + 16 * (v113 - 1) + 40);
        sub_10049F52C(*a3 + *(v10 + 72) * v114, *a3 + *(v10 + 72) * *(result + 16 * (v113 - 1) + 32), *a3 + *(v10 + 72) * v116, v5);
        if (v6)
        {
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1001B36CC(v115);
        }

        if (v113 - 2 >= *(v115 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v115[16 * v113];
        *v117 = v114;
        *(v117 + 1) = v116;
        v141 = v115;
        sub_1001B3640(a4);
        result = v141;
        v113 = *(v141 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v136 = (v10 + 8);
  v137 = v10 + 16;
  v135 = (v10 + 32);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v120 = a4;
  v140 = v9;
  v119 = v10;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v127 = v24;
      v27 = *(v25 + 16);
      v27(v139, v5, v23);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v122 = v22;
      v30 = v138;
      v130 = v27;
      v27(v138, v28, v23);
      v31 = sub_10049FCC0();
      v32 = v139;
      v129 = v31;
      LODWORD(v132) = dispatch thunk of static Comparable.< infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v128 = v33;
      result = (v33)(v32, v23);
      v34 = v122 + 2;
      v134 = v26;
      v35 = v127 + v26 * (v122 + 2);
      while (1)
      {
        v36 = v131;
        if (v131 == v34)
        {
          break;
        }

        v38 = v139;
        v37 = v140;
        v39 = v130;
        (v130)(v139, v35, v140);
        v40 = v6;
        v41 = v138;
        v39(v138, v5, v37);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v128;
        v128(v43, v37);
        result = v44(v38, v37);
        ++v34;
        v35 += v134;
        v5 += v134;
        if ((v132 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v122;
      a3 = v123;
      v10 = v119;
      v21 = v126;
      a4 = v120;
      v9 = v140;
      if (v132)
      {
        if (v36 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v36)
        {
          v45 = v134 * (v36 - 1);
          v5 = v36 * v134;
          v131 = v36;
          v46 = v36;
          v47 = v122;
          v48 = v122 * v134;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v132 = *v135;
              (v132)(v125, v50 + v48, v140, v21);
              if (v48 < v45 || v50 + v48 >= v50 + v5)
              {
                v49 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v140;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v50 + v45, v125, v49);
              a3 = v123;
              v21 = v126;
            }

            ++v47;
            v45 -= v134;
            v5 -= v134;
            v48 += v134;
          }

          while (v47 < v46);
          v10 = v119;
          a4 = v120;
          v9 = v140;
          v22 = v122;
          v36 = v131;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v126;
    }

    else
    {
      result = sub_1001B36E0(0, *(v126 + 2) + 1, 1, v126);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      result = sub_1001B36E0((v52 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_133;
    }

    v127 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_10049F52C(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1001B36CC(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v141 = v93;
        result = sub_1001B3640(v5);
        v21 = v141;
        v53 = *(v141 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v120;
    v9 = v140;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v118 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v134 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = v100 - v36;
  v132 = v97;
  v124 = v98;
  a4 = v97 + v36 * v98;
  v127 = v5;
LABEL_85:
  v130 = v99;
  v131 = v36;
  v128 = a4;
  v129 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v139;
    v105 = v134;
    (v134)(v139, a4, v9, v21);
    v106 = v138;
    v105(v138, v103, v140);
    sub_10049FCC0();
    v107 = dispatch thunk of static Comparable.< infix(_:_:)();
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v131 + 1;
      v99 = &v130[v124];
      v102 = v129 - 1;
      a4 = v128 + v124;
      v5 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v22 = v122;
      a3 = v123;
      v10 = v119;
      if (v127 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v110 = *v135;
    v111 = v133;
    (*v135)(v133, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_10049F52C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v53 = &v44 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v18;
    if (v18 >= 1)
    {
      v29 = -v14;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v18;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_10049FCC0();
          LOBYTE(v37) = dispatch thunk of static Comparable.< infix(_:_:)();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v14;
      v49 = (v8 + 8);
      do
      {
        v20 = v53;
        v21 = v56;
        v22 = v50;
        v50(v53, a2, v56);
        v23 = v54;
        v22(v54, a4, v21);
        sub_10049FCC0();
        v24 = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *v49;
        (*v49)(v23, v21);
        v25(v20, v21);
        if (v24)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_10049FBD8(&v59, &v58, &v57, &type metadata accessor for Date);
  return 1;
}

uint64_t sub_10049FAD0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10015DA04(&qword_1006BE8D0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10049FBD8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_10049FCC0()
{
  result = qword_1006C9EC0;
  if (!qword_1006C9EC0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9EC0);
  }

  return result;
}

id sub_10049FD18(void *a1, uint64_t a2)
{
  sub_10015DA04(&unk_1006BD390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100534670;
  if (a1)
  {
    v11[4] = a1;
    v11[5] = a2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10017C07C;
    v11[3] = &unk_100660140;
    a1 = _Block_copy(v11);
  }

  v6 = objc_opt_self();
  v7 = [v2 actionWithCompletion:a1];
  _Block_release(a1);
  *(v5 + 32) = v7;
  sub_1002D0574();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 ic_inlineMenuWithChildren:isa];

  return v9;
}

uint64_t sub_1004A00B8(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong showRecentlyDeletedMathNotes];
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (a1)
  {
    a1(1, v5, v7);
  }
}

uint64_t sub_1004A0370()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C9F00);
  sub_10002597C(v0, qword_1006C9F00);
  return static Logger.markdown.getter();
}

void sub_1004A03C4(void *a1)
{
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v4 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v45 = objc_opt_self();
  v5 = [v45 defaultManager];
  v6 = type metadata accessor for ICArchiveImporter();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_isImporting] = 0;
  v8 = OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_errors;
  v9 = a1;
  *&v7[v8] = sub_10018FC14(_swiftEmptyArrayStorage);
  *&v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_saveBatchSize] = 32;
  v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v10 = &v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v10 = 0u;
  v10[1] = 0u;
  *&v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_context] = v9;
  v11 = &v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_configuration];
  *v11 = IsAlexandriaDemoModeEnabled;
  v11[1] = v4;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  *(v11 + 16) = 257;
  v12 = &v7[OBJC_IVAR____TtC11MobileNotes17ICArchiveImporter_fileManager];
  *v12 = v5;
  v12[1] = &protocol witness table for NSFileManager;
  v47.receiver = v7;
  v47.super_class = v6;
  v13 = v9;
  v14 = objc_msgSendSuper2(&v47, "init");
  sub_10029FDE0();

  v15 = objc_opt_self();
  v16 = [v15 localAccountInContext:v13];
  v17 = v16;
  if (v16)
  {
LABEL_4:
    v19 = v16;

    v20 = [v17 objectID];
    v21 = [objc_allocWithZone(NSProgress) init];
    __chkstk_darwin(v21);
    NSManagedObjectContext.performAndWait<A>(_:)();
    if (v1)
    {
    }

    else
    {

      if (qword_1006BC9D0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      v44 = sub_10002597C(v22, qword_1006C9F00);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "import finished", v25, 2u);
      }

      v26 = [v45 defaultManager];
      URL.path(percentEncoded:)(1);
      v27 = String._bridgeToObjectiveC()();

      v28 = [v26 fileExistsAtPath:v27];

      if (v28)
      {
        v29 = [v45 defaultManager];
        URL._bridgeToObjectiveC()(v30);
        v32 = v31;
        v46 = 0;
        v33 = [v29 removeItemAtURL:v31 error:&v46];

        if (v33)
        {
          v34 = v46;
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "removed archive directory after import", v37, 2u);
          }
        }

        else
        {
          v43 = v46;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }

    return;
  }

  v18 = [v15 newLocalAccountInContext:v13];
  [v13 ic_save];
  if (v18)
  {
    v17 = v18;
    v16 = 0;
    goto LABEL_4;
  }

  if (qword_1006BC9D0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10002597C(v38, qword_1006C9F00);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "local account not found for import", v41, 2u);
  }

  sub_1004A100C();
  swift_allocError();
  *v42 = 1;
  swift_willThrow();
}

id sub_1004A09A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportAppMigrationDataLaunchTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004A09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100478DC4(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100008B8C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100008B8C(a3);

    return v21;
  }

LABEL_8:
  sub_100008B8C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1004A0C94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return sub_1000061F4(a1, v4);
}

uint64_t sub_1004A0D4C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1004A0F40;
  }

  else
  {
    v2 = sub_1004A0E7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A0E7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 8);
  v3(*(v0 + 48), v2);
  v3(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004A0F40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 8);
  v3(*(v0 + 48), v2);
  v3(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1004A100C()
{
  result = qword_1006C9F48;
  if (!qword_1006C9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F48);
  }

  return result;
}

unint64_t sub_1004A10E4()
{
  result = qword_1006C9F50;
  if (!qword_1006C9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9F50);
  }

  return result;
}

uint64_t type metadata accessor for ICArchiveModel()
{
  result = qword_1006C9FB8;
  if (!qword_1006C9FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004A11AC()
{
  sub_10001E5B8();
  if (v0 <= 0x3F)
  {
    sub_1004A12A8();
    if (v1 <= 0x3F)
    {
      sub_100005B5C(319, &unk_1006C9FD0, &qword_1006C2258);
      if (v2 <= 0x3F)
      {
        sub_100005B5C(319, &qword_1006C1CC0, &qword_1006C13F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004A12A8()
{
  if (!qword_1006C9FC8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C9FC8);
    }
  }
}

uint64_t sub_1004A12F8(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006CA028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_1004A1D10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = *v3;
  v14 = 0;
  sub_10027A9FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for ICArchiveModel();
    LOBYTE(v13[0]) = 2;
    type metadata accessor for Date();
    sub_1004A1F68(&qword_1006C1230, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = &v3[v9[7]];
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;
    v13[2] = v10[2];
    v14 = 3;
    sub_1004A1E78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v13[0] = *&v3[v9[8]];
    v14 = 4;
    sub_10015DA04(&qword_1006C2258);
    sub_1004A1ECC(&qword_1006C2260, &qword_1006C2268);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v13[0] = *&v3[v9[9]];
    v14 = 5;
    sub_10015DA04(&qword_1006C13F0);
    sub_10027AF58(&qword_1006C1E40);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004A1650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v32 = &v26 - v4;
  v33 = sub_10015DA04(&qword_1006CA010);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ICArchiveModel();
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  *(v10 + 1) = 1;
  v11 = v8[8];
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v10[v11], 0, 1, v12);
  v13 = &v10[v8[9]];
  *v13 = xmmword_10053D580;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  v14 = v8[10];
  *&v10[v14] = 0;
  v15 = v8[11];
  v36 = v10;
  *&v10[v15] = 0;
  v16 = a1[3];
  v37 = a1;
  sub_10017CC60(a1, v16);
  sub_1004A1D10();
  v34 = v6;
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v18 = v36;
  }

  else
  {
    v28 = v14;
    v29 = v13;
    v35 = v11;
    v20 = v31;
    v19 = v32;
    v27 = v15;
    v41 = 0;
    sub_10027ACE4();
    v21 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v36;
    *v36 = v38;
    LOBYTE(v38) = 1;
    *(v18 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 2;
    sub_1004A1F68(&qword_1006C1220, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10023A078(v19, v18 + v35);
    v41 = 3;
    sub_1004A1DC0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v39;
    v24 = v29;
    *v29 = v38;
    *(v24 + 1) = v23;
    *(v24 + 2) = v40;
    sub_10015DA04(&qword_1006C2258);
    v41 = 4;
    sub_1004A1ECC(&qword_1006C2280, &qword_1006C1208);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v18 + v28) = v38;
    sub_10015DA04(&qword_1006C13F0);
    v41 = 5;
    sub_10027AF58(&qword_1006C1E98);
    v25 = v34;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v25, v21);
    *(v18 + v27) = v38;
    sub_1004A1E14(v18, v30);
  }

  sub_100009F60(v37);
  return sub_1004A1D64(v18);
}

uint64_t sub_1004A1B70()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 0x4264657461657263;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697369766572;
  if (v1 != 1)
  {
    v5 = 0x4164657461657263;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1004A1C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004A20C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004A1C68(uint64_t a1)
{
  v2 = sub_1004A1D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004A1CA4(uint64_t a1)
{
  v2 = sub_1004A1D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1004A1D10()
{
  result = qword_1006CA018;
  if (!qword_1006CA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA018);
  }

  return result;
}

uint64_t sub_1004A1D64(uint64_t a1)
{
  v2 = type metadata accessor for ICArchiveModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004A1DC0()
{
  result = qword_1006CA020;
  if (!qword_1006CA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA020);
  }

  return result;
}

uint64_t sub_1004A1E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICArchiveModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004A1E78()
{
  result = qword_1006CA030;
  if (!qword_1006CA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA030);
  }

  return result;
}

uint64_t sub_1004A1ECC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C2258);
    sub_1004A1F68(a2, _s3TagVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004A1F68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004A1FC4()
{
  result = qword_1006CA038;
  if (!qword_1006CA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA038);
  }

  return result;
}

unint64_t sub_1004A201C()
{
  result = qword_1006CA040;
  if (!qword_1006CA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA040);
  }

  return result;
}

unint64_t sub_1004A2074()
{
  result = qword_1006CA048;
  if (!qword_1006CA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA048);
  }

  return result;
}

uint64_t sub_1004A20C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4264657461657263 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010056A310 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1004A22F0(void (*a1)(void *))
{
  sub_100377104();
  if (v2 && (v3 = v2, v4 = [v2 noteEditorViewController], v3, v5 = objc_msgSend(v4, "note"), v4, v5))
  {
    v6 = [objc_allocWithZone(ICLightContentActivity) initWithNote:v5];
    v7 = [v6 actionWithCompletion:0];
    sub_100377104();
    if (v8 && (v9 = v8, v10 = [v8 mainSplitViewController], v9, v11 = objc_msgSend(v10, "traitCollection"), v10, LOBYTE(v10) = objc_msgSend(v11, "ic_isDark"), v11, (v10 & 1) != 0))
    {
      sub_10015DA04(&unk_1006BD390);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100534670;
      v12[4] = v7;
      v7 = v6;
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  a1(v12);
}

uint64_t sub_1004A2494(void (*a1)(void *))
{
  sub_100377104();
  if (v2 && (v3 = v2, v4 = [v2 noteEditorViewController], v3, v5 = objc_msgSend(v4, "note"), v4, v5))
  {
    v6 = v5;
    v7 = [objc_allocWithZone(ICCalculatePreviewBehaviorMenu) initWithNote:v6 isMathEnabled:ICInternalSettingsIsMathEnabled()];

    v8 = [v7 makeMenu];
    if (v8)
    {
      sub_10015DA04(&unk_1006BD390);
      v9 = swift_allocObject();
      *(v9 + 1) = xmmword_100534670;
      v9[4] = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  a1(v9);
}

uint64_t sub_1004A25E4(uint64_t a1)
{
  sub_10015DA04(&unk_1006BD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E20;
  sub_1000054A4(0, &qword_1006BF850);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v20._object = 0x8000000100575D10;
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v4._countAndFlagsBits = 0x6874656B69727453;
  v4._object = 0xED00006867756F72;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v20);

  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  *(inited + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v2 mainBundle];
  v21._object = 0x8000000100575D30;
  v12._countAndFlagsBits = 0x6867696C68676948;
  v12._object = 0xE900000000000074;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v21);

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();
  v16 = [v7 systemImageNamed:v15];

  v17 = [v9 ic_keyCommandWithInput:v10 modifierFlags:1179648 action:"toggleEmphasis:" discoverabilityTitle:v14 image:v16];
  *(inited + 40) = v17;

  sub_1002DC254(inited);
  return a1;
}

id sub_1004A28DC()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100576220;
  v3._countAndFlagsBits = 0x7551206B636F6C42;
  v3._object = 0xEB0000000065746FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000012;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 ic_systemImageNamed:v7];

  v9 = [v0 ic_keyCommandWithInput:v1 modifierFlags:0x100000 action:"handleToggleBlockQuote:" discoverabilityTitle:v5 image:v8];
  return v9;
}

UIMenu sub_1004A2A70()
{
  sub_1000054A4(0, &unk_1006C6410);
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  swift__string._object = 0x80000001005760D0;
  swift__string._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 1701998413;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, swift__string);

  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  image = [v6 systemImageNamed:v5];

  sub_10015DA04(&unk_1006BD390);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E10;
  sub_1000054A4(0, &qword_1006BF850);
  v8 = [v0 mainBundle];
  swift__stringa._object = 0x80000001005760F0;
  v9._countAndFlagsBits = 0x6C41206B63656843;
  swift__stringa._countAndFlagsBits = 0xD00000000000001FLL;
  v9._object = 0xE90000000000006CLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 systemImageNamed:v11];

  *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v13 = [v0 mainBundle];
  swift__stringb._object = 0x8000000100576130;
  v14._countAndFlagsBits = 0x206B636568636E55;
  v14._object = 0xEB000000006C6C41;
  swift__stringb._countAndFlagsBits = 0xD000000000000021;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, swift__stringb);

  v16 = String._bridgeToObjectiveC()();
  v17 = [v6 systemImageNamed:v16];

  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v18 = [v0 mainBundle];
  swift__stringc._object = 0x80000001005761A0;
  v19._countAndFlagsBits = 0xD000000000000016;
  v19._object = 0x8000000100576180;
  swift__stringc._countAndFlagsBits = 0xD00000000000002CLL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, swift__stringc);

  v21 = String._bridgeToObjectiveC()();
  v22 = [v6 systemImageNamed:v21];

  *(preferredElementSize + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v23 = [v0 mainBundle];
  swift__stringd._object = 0x80000001005761F0;
  v24._countAndFlagsBits = 0x43206574656C6544;
  v24._object = 0xEE0064656B636568;
  swift__stringd._countAndFlagsBits = 0xD000000000000024;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, swift__stringd);

  v26 = String._bridgeToObjectiveC()();
  v27 = [v6 systemImageNamed:v26];

  v28 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  [v28 setAttributes:{2, _swiftEmptyArrayStorage}];
  *(preferredElementSize + 56) = v28;
  v31.value.super.isa = image;
  v31.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v31, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

id sub_1004A3010()
{
  v145 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10054D7B0;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  swift__string._object = 0x8000000100575D50;
  v5._countAndFlagsBits = 0x656C746954;
  swift__string._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0xE500000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, swift__string);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v1 ic_keyCommandWithInput:v2 modifierFlags:1179648 action:"handleSetTitleStyle:" discoverabilityTitle:v7];

  *(v0 + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v3 mainBundle];
  swift__stringa._object = 0x8000000100575D80;
  v11._countAndFlagsBits = 0x676E6964616548;
  swift__stringa._countAndFlagsBits = 0xD000000000000025;
  v11._object = 0xE700000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, swift__stringa);

  v13 = String._bridgeToObjectiveC()();

  v14 = [v1 ic_keyCommandWithInput:v9 modifierFlags:1179648 action:"handleSetHeadingStyle:" discoverabilityTitle:v13];

  *(v0 + 40) = v14;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v3 mainBundle];
  swift__stringb._object = 0x8000000100575DB0;
  v17._countAndFlagsBits = 0x6964616568627553;
  v17._object = 0xEA0000000000676ELL;
  swift__stringb._countAndFlagsBits = 0xD000000000000028;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, swift__stringb);

  v19 = String._bridgeToObjectiveC()();

  v20 = [v1 ic_keyCommandWithInput:v15 modifierFlags:1179648 action:"handleSetSubheadingStyle:" discoverabilityTitle:v19];

  *(v0 + 48) = v20;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v3 mainBundle];
  swift__stringc._object = 0x8000000100575DE0;
  swift__stringc._countAndFlagsBits = 0xD000000000000022;
  v23._countAndFlagsBits = 2036625218;
  v23._object = 0xE400000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, swift__stringc);

  v25 = String._bridgeToObjectiveC()();

  v26 = [v1 ic_keyCommandWithInput:v21 modifierFlags:1179648 action:"handleSetBodyStyle:" discoverabilityTitle:v25];

  *(v0 + 56) = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v3 mainBundle];
  swift__stringd._object = 0x8000000100575E10;
  v29._countAndFlagsBits = 0x6C7974736F6E6F4DLL;
  swift__stringd._countAndFlagsBits = 0xD000000000000028;
  v29._object = 0xEA00000000006465;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, swift__stringd);

  v31 = String._bridgeToObjectiveC()();

  v32 = [v1 ic_keyCommandWithInput:v27 modifierFlags:1179648 action:"handleSetFixedWidthStyle:" discoverabilityTitle:v31];

  *(v0 + 64) = v32;
  v33 = String._bridgeToObjectiveC()();
  v34 = [v3 mainBundle];
  swift__stringe._object = 0x8000000100575E40;
  v35._countAndFlagsBits = 0x646574656C6C7542;
  v35._object = 0xED00007473694C20;
  swift__stringe._countAndFlagsBits = 0xD00000000000002BLL;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, swift__stringe);

  v37 = String._bridgeToObjectiveC()();

  v38 = String._bridgeToObjectiveC()();
  v39 = objc_opt_self();
  v40 = [v39 systemImageNamed:v38];

  v41 = [v1 ic_keyCommandWithInput:v33 modifierFlags:1179648 action:"handleToggleBulletedListStyle:" discoverabilityTitle:v37 image:v40];
  *(v0 + 72) = v41;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v3 mainBundle];
  swift__stringf._object = 0x8000000100575E70;
  v44._countAndFlagsBits = 0x4C20646568736144;
  v44._object = 0xEB00000000747369;
  swift__stringf._countAndFlagsBits = 0xD000000000000029;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, swift__stringf);

  v46 = String._bridgeToObjectiveC()();

  v47 = String._bridgeToObjectiveC()();
  v48 = [v39 systemImageNamed:v47];

  v49 = [v1 ic_keyCommandWithInput:v42 modifierFlags:1179648 action:"handleToggleDashedListStyle:" discoverabilityTitle:v46 image:v48];
  *(v0 + 80) = v49;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v3 mainBundle];
  swift__stringg._object = 0x8000000100575EA0;
  v52._countAndFlagsBits = 0x64657265626D754ELL;
  swift__stringg._countAndFlagsBits = 0xD00000000000002BLL;
  v52._object = 0xED00007473694C20;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, swift__stringg);

  v54 = String._bridgeToObjectiveC()();

  v55 = String._bridgeToObjectiveC()();
  v56 = [v39 systemImageNamed:v55];

  v57 = [v1 ic_keyCommandWithInput:v50 modifierFlags:1179648 action:"handleToggleNumberedListStyle:" discoverabilityTitle:v54 image:v56];
  *(v0 + 88) = v57;
  *(v0 + 96) = sub_1004A28DC();
  v58 = String._bridgeToObjectiveC()();
  v59 = [v1 keyCommandWithInput:v58 modifierFlags:0 action:"handleTab:"];

  [v59 setWantsPriorityOverSystemBehavior:1];
  *(v0 + 104) = v59;
  v60 = String._bridgeToObjectiveC()();
  v61 = [v1 keyCommandWithInput:v60 modifierFlags:0x20000 action:"handleShiftTab:"];

  [v61 setWantsPriorityOverSystemBehavior:1];
  *(v0 + 112) = v61;
  v62 = String._bridgeToObjectiveC()();
  v63 = [v1 keyCommandWithInput:v62 modifierFlags:0x20000 action:"handleShiftReturn:"];

  v64 = [v63 ic_wantPriorityOverSystemBehavior];
  *(v0 + 120) = v64;
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v143 = [v145 ic_inlineMenuWithChildren:isa];

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100534950;
  v67 = String._bridgeToObjectiveC()();
  v68 = [v3 mainBundle];
  swift__stringh._object = 0x8000000100575ED0;
  swift__stringh._countAndFlagsBits = 0xD000000000000027;
  v69._countAndFlagsBits = 0x73696C6B63656843;
  v69._object = 0xE900000000000074;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, swift__stringh);

  v71 = String._bridgeToObjectiveC()();

  v72 = String._bridgeToObjectiveC()();
  v73 = [v39 systemImageNamed:v72];

  v74 = [v1 ic_keyCommandWithInput:v67 modifierFlags:1179648 action:"handleToggleTodoStyle:" discoverabilityTitle:v71 image:v73];
  *(v66 + 32) = v74;
  v75 = String._bridgeToObjectiveC()();
  v76 = [v3 mainBundle];
  swift__stringi._object = 0x800000010055FC10;
  v77._countAndFlagsBits = 0x207361206B72614DLL;
  v77._object = 0xEF64656B63656843;
  swift__stringi._countAndFlagsBits = 0xD000000000000027;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, swift__stringi);

  v79 = String._bridgeToObjectiveC()();

  v80 = String._bridgeToObjectiveC()();
  v81 = [v39 ic_systemImageNamed:v80];

  v82 = [v1 ic_keyCommandWithInput:v75 modifierFlags:1179648 action:"handleToggleTodoChecked:" discoverabilityTitle:v79 image:v81];
  *(v66 + 40) = v82;
  *(v66 + 48) = sub_1004A2A70();
  v83 = Array._bridgeToObjectiveC()().super.isa;

  v140 = [v145 ic_inlineMenuWithChildren:v83];

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_100534950;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v3 mainBundle];
  swift__stringj._object = 0x8000000100575F20;
  swift__stringj._countAndFlagsBits = 0xD000000000000023;
  v87._countAndFlagsBits = 0x656C626154;
  v87._object = 0xE500000000000000;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, swift__stringj);

  v89 = String._bridgeToObjectiveC()();

  v90 = String._bridgeToObjectiveC()();
  v91 = [v39 systemImageNamed:v90];

  v92 = [v1 ic_keyCommandWithInput:v85 modifierFlags:1572864 action:"handleAddTable:" discoverabilityTitle:v89 image:v91];
  *(v84 + 32) = v92;
  sub_1000054A4(0, &qword_1006BF850);
  v93 = [v3 mainBundle];
  swift__stringk._object = 0x8000000100575F50;
  v94._countAndFlagsBits = 0x20747265766E6F43;
  v94._object = 0xEF74786554206F74;
  swift__stringk._countAndFlagsBits = 0xD00000000000002DLL;
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, swift__stringk);

  v96 = String._bridgeToObjectiveC()();
  v97 = [v39 ic_systemImageNamed:v96];

  *(v84 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v98 = [v3 mainBundle];
  swift__stringl._object = 0x8000000100575FA0;
  v99._object = 0x8000000100575F80;
  swift__stringl._countAndFlagsBits = 0xD000000000000021;
  v99._countAndFlagsBits = 0xD000000000000017;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, swift__stringl);

  v101 = String._bridgeToObjectiveC()();
  v102 = [v39 __systemImageNamedSwift:v101];

  *(v84 + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v103 = Array._bridgeToObjectiveC()().super.isa;

  v142 = [v145 ic_inlineMenuWithChildren:{v103, _swiftEmptyArrayStorage}];

  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_100531E10;
  *(v104 + 32) = v143;
  *(v104 + 40) = v140;
  sub_1000054A4(0, &unk_1006C6410);
  v144 = v143;
  v141 = v140;
  v105 = [v3 mainBundle];
  v106._object = 0xE90000000000006DLL;
  swift__stringm._object = 0x8000000100575FF0;
  v106._countAndFlagsBits = 0x6574492065766F4DLL;
  v107._countAndFlagsBits = 0;
  v107._object = 0xE000000000000000;
  swift__stringm._countAndFlagsBits = 0xD000000000000017;
  v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, 0, v105, v107, swift__stringm);

  v109 = String._bridgeToObjectiveC()();
  image = [v39 systemImageNamed:v109];

  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  v111 = UIKeyInputUpArrow;
  v112 = [v3 mainBundle];
  swift__stringn._object = 0x8000000100576030;
  v113._object = 0xEC0000007055206DLL;
  swift__stringn._countAndFlagsBits = 0xD00000000000001BLL;
  v113._countAndFlagsBits = 0x6574492065766F4DLL;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v113, 0, v112, v114, swift__stringn);

  v115 = String._bridgeToObjectiveC()();

  v116 = String._bridgeToObjectiveC()();
  v117 = [v39 systemImageNamed:v116];

  v118 = [v1 ic_keyCommandWithInput:v111 modifierFlags:1310720 action:"handleMoveSelectedListItemUp:" discoverabilityTitle:v115 image:v117];
  v119 = [v3 mainBundle];
  swift__stringo._object = 0x8000000100576050;
  swift__stringo._countAndFlagsBits = 0xD000000000000022;
  v120._countAndFlagsBits = 28757;
  v120._object = 0xE200000000000000;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v120, 0, v119, v121, swift__stringo);

  v122 = String._bridgeToObjectiveC()();

  [v118 setTitle:v122];

  *(preferredElementSize + 32) = v118;
  v123 = UIKeyInputDownArrow;
  v124 = [v3 mainBundle];
  swift__stringp._object = 0x8000000100576080;
  v125._object = 0xEE006E776F44206DLL;
  swift__stringp._countAndFlagsBits = 0xD00000000000001DLL;
  v125._countAndFlagsBits = 0x6574492065766F4DLL;
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v125, 0, v124, v126, swift__stringp);

  v127 = String._bridgeToObjectiveC()();

  v128 = String._bridgeToObjectiveC()();
  v129 = [v39 systemImageNamed:v128];

  v130 = [v1 ic_keyCommandWithInput:v123 modifierFlags:1310720 action:"handleMoveSelectedListItemDown:" discoverabilityTitle:v127 image:v129];
  v131 = [v3 mainBundle];
  swift__stringq._object = 0x80000001005760A0;
  swift__stringq._countAndFlagsBits = 0xD000000000000024;
  v132._countAndFlagsBits = 1853321028;
  v132._object = 0xE400000000000000;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v132, 0, v131, v133, swift__stringq);

  v134 = String._bridgeToObjectiveC()();

  [v130 setTitle:v134];

  *(preferredElementSize + 40) = v130;
  v146.value.super.isa = image;
  v146.is_nil = 0;
  *(v104 + 48) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v108, 0, v146, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  *(v104 + 56) = v142;
  v135 = v142;
  v136 = Array._bridgeToObjectiveC()().super.isa;

  v137 = [v145 ic_inlineMenuWithChildren:v136];

  return v137;
}

void sub_1004A45B8(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100534670;
    v4 = objc_opt_self();
    v25 = sub_1004A22F0;
    v26 = 0;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1003BF11C;
    v24 = &unk_1006603D8;
    v5 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v6 = [v4 elementWithUncachedProvider:v5];
    _Block_release(v5);
    *(v3 + 32) = v6;
    sub_1000054A4(0, &qword_1006C6400);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v2 ic_inlineMenuWithChildren:isa];

    [a1 insertChildMenu:v8 atStartOfMenuForIdentifier:UIMenuFormat];
    v9 = sub_1004A3010();
    [a1 insertChildMenu:v9 atStartOfMenuForIdentifier:UIMenuFormat];

    v10 = swift_allocObject();
    *(v10 + 16) = sub_1004A25E4;
    *(v10 + 24) = 0;
    v25 = sub_1001DA9C4;
    v26 = v10;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1003F6814;
    v24 = &unk_100660428;
    v11 = _Block_copy(&aBlock);

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuTextStyle fromChildrenBlock:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      if (ICDebugModeEnabled())
      {
        v12 = [objc_opt_self() textAlignmentMenu];
        [a1 insertChildMenu:v12 atStartOfMenuForIdentifier:UIMenuText];
      }

      v13 = [objc_opt_self() indentationMenu];
      [a1 insertChildMenu:v13 atEndOfMenuForIdentifier:UIMenuFormat];

      v14 = [a1 menuForIdentifier:UIMenuWritingDirection];
      if (v14)
      {
        v15 = v14;
        [a1 replaceMenuForIdentifier:UIMenuText withMenu:v14];
      }

      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100534670;
      v25 = sub_1004A2494;
      v26 = 0;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_1003BF11C;
      v24 = &unk_100660450;
      v17 = _Block_copy(&aBlock);
      v18 = [v4 elementWithUncachedProvider:v17];
      _Block_release(v17);
      *(v16 + 32) = v18;
      v19 = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v2 ic_inlineMenuWithChildren:v19];

      [a1 insertChildMenu:v20 atEndOfMenuForIdentifier:UIMenuFormat];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1004A4A74(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  (*(a4 + 16))(a4, a1 & 1, v6);
}

id sub_1004A4CCC(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5)
{
  result = [*&a4[OBJC_IVAR___ICEditSmartFolderActivity_smartFolder] managedObjectContext];
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = a4;
    v12[3] = v11;
    v12[4] = a3;
    v12[5] = a1;
    v12[6] = a2;
    v12[7] = a5;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1004A5500;
    *(v13 + 24) = v12;
    v20[4] = sub_10000EFBC;
    v20[5] = v13;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10000EAF8;
    v20[3] = &unk_100660568;
    v14 = _Block_copy(v20);

    v15 = a5;

    v16 = a4;
    v17 = v11;
    v18 = a3;

    [v17 performBlockAndWait:v14];

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1004A4E8C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a1 + OBJC_IVAR___ICEditSmartFolderActivity_smartFolder);
  v11 = [v10 smartFolderQueryObjC];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 tagSelectionWithManagedObjectContext:a2];

    v14 = [v13 includedTagIdentifiers];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a3)
  {
LABEL_3:
    type metadata accessor for ICQuery();
    v16 = a3;
    v17 = static ICQuery.makeQueryForNotesMatching(_:)();
    [v10 setSmartFolderQueryObjC:v17];
  }

LABEL_4:
  if (a5)
  {
    v18 = String._bridgeToObjectiveC()();
    [v10 setTitle:v18];
  }

  v19 = String._bridgeToObjectiveC()();
  [v10 updateChangeCountWithReason:v19];

  if (v15)
  {
    if (*(v15 + 16))
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      [a6 deleteUnusedHashtagsWithStandardizedContent:isa];
    }

    else
    {
    }
  }

  return [a2 ic_save];
}

uint64_t sub_1004A51F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_1004A52D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&v0[OBJC_IVAR___ICEditSmartFolderActivity_smartFolder];
    v4 = [v3 account];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = v4;
    v6 = v3;
    v7 = v0;
    v8 = v4;
    v9 = sub_100334EA4(v6, sub_1004A54E4, v5);
    v10 = [v9 ic_embedInNavigationControllerForModalPresentation];
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v14[4] = sub_1004A54EC;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10028DCE8;
    v14[3] = &unk_1006604F0;
    v12 = _Block_copy(v14);
    v13 = v7;

    [v2 presentViewController:v10 animated:1 completion:v12];
    _Block_release(v12);
  }
}

void sub_1004A547C(char a1)
{
  v3 = *(v1 + 16);
  v4 = String._bridgeToObjectiveC()();
  (*(v3 + 16))(v3, a1 & 1, v4);
}

uint64_t ShowQuickNoteIntent.init()()
{
  v0 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v1 = [objc_opt_self() monitorWithConfiguration:v0];

  type metadata accessor for ShowQuickNoteIntent.LayoutMonitorBox();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_1004A55E4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static ShowQuickNoteIntent.title);
  sub_10002597C(v6, static ShowQuickNoteIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t ShowQuickNoteIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC9D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static ShowQuickNoteIntent.title);
}

uint64_t static ShowQuickNoteIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC9D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static ShowQuickNoteIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ShowQuickNoteIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static ShowQuickNoteIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006CA088);
  __chkstk_darwin(v0 - 8);
  sub_10021B1DC();
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t ShowQuickNoteIntent.perform()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1004A5CC8, 0, 0);
}

uint64_t sub_1004A5CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1004A5D5C;

  return sub_1004A6428();
}

uint64_t sub_1004A5D5C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = sub_1004A5ED0;
    v7 = *(v2 + 24);

    return sub_1004A6980(v7);
  }
}

uint64_t sub_1004A5ED0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1004A6000, 0, 0);
  }
}

uint64_t sub_1004A6000()
{
  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if ((v2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1004A6164;

    return sub_1004A7CD0();
  }

  else if (sub_1004A6EF0(v0[3]))
  {
    static IntentResult.result<>()();
    v5 = v0[1];

    return v5();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1004A62F8;

    return sub_1004A7DD4();
  }
}

uint64_t sub_1004A6164()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1004A6294, 0, 0);
  }
}

uint64_t sub_1004A6294()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A62F8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1004A80D8, 0, 0);
  }
}

uint64_t sub_1004A6428()
{
  v1[7] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004A6550, 0, 0);
}

uint64_t sub_1004A6550()
{
  v1 = [*(v0 + 56) currentLayout];
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    static Clock<>.continuous.getter();
    *(v0 + 40) = xmmword_10054D800;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v7 = sub_1004A8090(&qword_1006C91E0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1004A8090(&qword_1006CA160, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v8 = *(v5 + 8);
    *(v0 + 120) = v8;
    *(v0 + 128) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_1004A678C;
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 16, v10, v7);
  }
}

uint64_t sub_1004A678C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2 + 120))(*(v2 + 88), *(v2 + 64));
    v3 = sub_1004A68E4;
  }

  else
  {
    v5 = *(v2 + 104);
    v4 = *(v2 + 112);
    v6 = *(v2 + 96);
    (*(v2 + 120))(*(v2 + 88), *(v2 + 64));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1004A6550;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004A68E4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004A69A0()
{
  if (sub_1004A72B4(v0[45]))
  {
    v1 = v0[45];
    sub_10015DA04(&unk_1006C60C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100535E30;
    v0[40] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[41] = v3;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    v0[42] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[43] = v4;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    sub_1001913C0(inited);
    swift_setDeallocating();
    sub_10015DA04(&unk_1006C60D0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [objc_opt_self() optionsWithDictionary:isa];
    v0[46] = v6;

    sub_1004A754C(v1);
    v7 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    v0[47] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = String._bridgeToObjectiveC()();
      v0[48] = v9;

      v0[2] = v0;
      v0[7] = v0 + 44;
      v0[3] = sub_1004A6CE4;
      v10 = swift_continuation_init();
      v0[39] = sub_10015DA04(&qword_1006CA158);
      v0[32] = _NSConcreteStackBlock;
      v0[33] = 1107296256;
      v0[34] = sub_1004A76F8;
      v0[35] = &unk_1006605C8;
      v0[36] = v10;
      [v8 openApplication:v9 withOptions:v6 completion:v0 + 32];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004A6CE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_1004A6E6C;
  }

  else
  {
    v2 = sub_1004A6DF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A6DF4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004A6E6C()
{
  v1 = v0[48];
  v3 = v0[46];
  v2 = v0[47];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004A6EF0(uint64_t a1)
{
  result = [*(a1 + 16) currentLayout];
  if (result)
  {
    v2 = result;
    v3 = [result elements];

    sub_1004A8044();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_23:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        return 0;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == 0xD000000000000020 && 0x8000000100576400 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {

        return 1;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1004A70B4()
{
  v0 = sub_10015DA04(&qword_1006CA088);
  __chkstk_darwin(v0 - 8);
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1004A7184(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return ShowQuickNoteIntent.perform()(a1, v4);
}

uint64_t sub_1004A7224@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v3 = [objc_opt_self() monitorWithConfiguration:v2];

  type metadata accessor for ShowQuickNoteIntent.LayoutMonitorBox();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1004A72B4(uint64_t a1)
{
  result = [*(a1 + 16) currentLayout];
  if (result)
  {
    v2 = result;
    v3 = [result elements];

    sub_1004A8044();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_32:
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      if (v19 == v5)
      {

        return 0;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v7 = *(v4 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v13 == v12)
      {
        goto LABEL_21;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_26;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v16 == v12)
      {
        goto LABEL_21;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_26;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v18 == v12)
      {
LABEL_21:

LABEL_26:

        return 1;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v5;
    }

    while ((v6 & 1) == 0);

    return 1;
  }

  return result;
}

id sub_1004A754C(uint64_t a1)
{
  result = [*(a1 + 16) currentLayout];
  if (result)
  {
    v2 = result;
    v3 = [result elements];

    sub_1004A8044();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_18:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_4:
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
              goto LABEL_17;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          if ([v7 isUIApplicationElement] && objc_msgSend(v8, "layoutRole") == 1)
          {
            break;
          }

          ++v6;
          if (v9 == v5)
          {
            goto LABEL_19;
          }
        }

        v10 = [v8 bundleIdentifier];
        if (v10)
        {
          v11 = v10;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v12;
        }

        return 0;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_19:

    return 0;
  }

  return result;
}

void *sub_1004A76F8(uint64_t a1, void *a2, void *a3)
{
  result = sub_10017CC60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10015DA04(&unk_1006C9B40);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A77D0()
{
  [*(v0 + 16) invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_1004A7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1004A7918, 0, 0);
}

uint64_t sub_1004A7918()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1004A8090(&qword_1006C91E0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1004A8090(&qword_1006CA160, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1004A7AA8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1004A7AA8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1004A7C64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1004A7C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A7CEC()
{
  v1 = ICNotesAppBundleIdentifier();
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(SBSSystemNotesPresentationConfiguration) initWithSceneBundleIdentifier:v1 userActivity:0 preferredPresentationMode:0];

  v3 = [objc_allocWithZone(SBSSystemNotesPresentationHandle) initWithConfiguration:v2];
  [v3 activate];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004A7DF0()
{
  v1 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 initWithServiceName:v2 viewControllerClassName:v3];

  v5 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v6 = [objc_opt_self() newHandleWithDefinition:v4 configurationContext:v5];
  v7 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v6 activateWithContext:v7];

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1004A7F50()
{
  result = qword_1006CA090;
  if (!qword_1006CA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA090);
  }

  return result;
}

unint64_t sub_1004A7FA8()
{
  result = qword_1006CA098;
  if (!qword_1006CA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA098);
  }

  return result;
}

unint64_t sub_1004A8044()
{
  result = qword_1006CA150;
  if (!qword_1006CA150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CA150);
  }

  return result;
}

uint64_t sub_1004A8090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A80DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v5 = type metadata accessor for URL();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = sub_10015DA04(&qword_1006BF070);
  *(v3 + 120) = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  *(v3 + 128) = swift_task_alloc();
  sub_10015DA04(&qword_1006BCC20);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 160) = *a2;
  *(v3 + 176) = v6;
  *(v3 + 248) = *(a2 + 32);
  *(v3 + 192) = *(a2 + 40);
  type metadata accessor for MainActor();
  *(v3 + 208) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 216) = v8;
  *(v3 + 224) = v7;

  return _swift_task_switch(sub_1004A82B0, v8, v7);
}

uint64_t sub_1004A82B0()
{
  v1 = *(v0 + 80);

  v2 = [v1 note];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  v4 = *(v0 + 128);
  IntentParameter.wrappedValue.getter();
  v5 = type metadata accessor for NoteEntity(0);
  v6 = 1;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    (*(*(v0 + 96) + 16))(*(v0 + 152), *(v0 + 128) + *(v5 + 20), *(v0 + 88));
    v6 = 0;
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v42 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  sub_1000073B4(*(v0 + 128), &unk_1006BCAC0);
  v12 = *(v10 + 56);
  v12(v8, v6, 1, v11);
  v44 = v3;
  v13 = [v3 objectID];
  v14 = [v13 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12(v7, 0, 1, v11);
  v15 = *(v42 + 48);
  sub_1001D9600(v8, v9);
  sub_1001D9600(v7, v9 + v15);
  v16 = *(v10 + 48);
  if (v16(v9, 1, v11) == 1)
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 88);
    sub_1000073B4(*(v0 + 144), &qword_1006BCC20);
    sub_1000073B4(v17, &qword_1006BCC20);
    if (v16(v9 + v15, 1, v18) == 1)
    {
      sub_1000073B4(*(v0 + 120), &qword_1006BCC20);
      v19 = v44;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v20 = *(v0 + 88);
  sub_1001D9600(*(v0 + 120), *(v0 + 136));
  v21 = v16(v9 + v15, 1, v20);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v24 = *(v0 + 136);
  if (v21 == 1)
  {
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    sub_1000073B4(*(v0 + 144), &qword_1006BCC20);
    sub_1000073B4(v22, &qword_1006BCC20);
    (*(v25 + 8))(v24, v26);
LABEL_9:
    sub_1000073B4(*(v0 + 120), &qword_1006BF070);
    v19 = v44;
    goto LABEL_13;
  }

  v43 = *(v0 + 120);
  v27 = *(v0 + 96);
  v28 = *(v0 + 104);
  v29 = *(v0 + 88);
  (*(v27 + 32))(v28, v9 + v15, v29);
  sub_1004A8BDC();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v27 + 8);
  v31(v28, v29);
  sub_1000073B4(v23, &qword_1006BCC20);
  sub_1000073B4(v22, &qword_1006BCC20);
  v31(v24, v29);
  sub_1000073B4(v43, &qword_1006BCC20);
  v19 = v44;
  if (v30)
  {
LABEL_11:
    v32 = [*(v0 + 80) textView];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 selectedRange];
      v36 = v35;

      v37 = 0;
      goto LABEL_15;
    }
  }

LABEL_13:

LABEL_14:
  v37 = *(v0 + 248);
  v34 = *(v0 + 176);
  v36 = *(v0 + 184);
LABEL_15:
  *(v0 + 16) = *(v0 + 160);
  v38 = *(v0 + 72);
  *(v0 + 32) = v34;
  *(v0 + 40) = v36;
  *(v0 + 48) = v37;
  *(v0 + 56) = *(v0 + 192);
  v38[3] = sub_10015DA04(&unk_1006BE4B0);
  v38[4] = sub_1004A8B78();
  v39 = sub_100180240(v38);
  v40 = swift_task_alloc();
  *(v0 + 232) = v40;
  *v40 = v0;
  v40[1] = sub_1004A87A0;

  return InsertNoteLinkIntent.perform()(v39);
}

uint64_t sub_1004A87A0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_1004A89CC;
  }

  else
  {
    v5 = sub_1004A88DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004A88DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A89CC()
{
  v1 = *(v0 + 72);

  sub_1001EA9F0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004A8AC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A600;

  return sub_1004A80DC(a1, a2, v6);
}

unint64_t sub_1004A8B78()
{
  result = qword_1006BFBE8;
  if (!qword_1006BFBE8)
  {
    sub_10017992C(&unk_1006BE4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFBE8);
  }

  return result;
}

unint64_t sub_1004A8BDC()
{
  result = qword_1006C1750;
  if (!qword_1006C1750)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1750);
  }

  return result;
}

uint64_t ChangeSettingIntent.changeOperation.setter(uint64_t a1)
{
  v2 = type metadata accessor for ChangeOperation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1004A8D50()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static ChangeSettingIntent.title);
  sub_10002597C(v6, static ChangeSettingIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t ChangeSettingIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC9E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static ChangeSettingIntent.title);
}

uint64_t static ChangeSettingIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC9E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static ChangeSettingIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ChangeSettingIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static ChangeSettingIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006CA168);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006CA170);
  __chkstk_darwin(v1);
  sub_10021B284();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006CA178);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x2065687420;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006CA180);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x676E697474657320;
  v4._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*ChangeSettingIntent.changeOperation.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*ChangeSettingIntent.setting.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*ChangeSettingIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t ChangeSettingIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for ConfirmationActionName();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C6920);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0D0);
  v5[33] = swift_task_alloc();
  v8 = type metadata accessor for IntentDialog();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[37] = v9;
  v5[38] = *(v9 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v10 = type metadata accessor for ChangeOperation();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();

  return _swift_task_switch(sub_1004A9930, 0, 0);
}

uint64_t sub_1004A9930()
{
  v84 = v0;
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  IntentParameter.wrappedValue.getter();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = v4;
  if (v4 == enum case for ChangeOperation.disable(_:))
  {
    v81 = enum case for ChangeOperation.disable(_:);
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v6 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v83[0] = v22;
      *v21 = 136446210;
      IntentParameter.wrappedValue.getter();
      v23 = *(v0 + 420);
      v24 = 0x800000010056A0A0;
      v25 = 0xD000000000000015;
      if (v23 != 3)
      {
        v25 = 0xD000000000000016;
        v24 = 0x800000010056A080;
      }

      if (v23 == 2)
      {
        v25 = 0x6361206C61636F6CLL;
        v24 = 0xED0000746E756F63;
      }

      v26 = 0x800000010056A0E0;
      v27 = 0xD000000000000017;
      if (*(v0 + 420))
      {
        v26 = 0x800000010056A0C0;
      }

      else
      {
        v27 = 0xD000000000000013;
      }

      if (*(v0 + 420) <= 1u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      if (*(v0 + 420) <= 1u)
      {
        v29 = v26;
      }

      else
      {
        v29 = v24;
      }

      v79 = *(v0 + 336);
      v31 = *(v0 + 296);
      v30 = *(v0 + 304);
      v32 = sub_100009D88(v28, v29, v83);

      *(v21 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v6, v20, "Disabling %{public}s setting", v21, 0xCu);
      sub_100009F60(v22);

      (*(v30 + 8))(v79, v31);
      goto LABEL_40;
    }

    v38 = *(v0 + 336);
    goto LABEL_39;
  }

  if (v4 == enum case for ChangeOperation.enable(_:))
  {
    v81 = enum case for ChangeOperation.disable(_:);
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v83[0] = v9;
      *v8 = 136446210;
      IntentParameter.wrappedValue.getter();
      v10 = *(v0 + 419);
      v11 = 0x800000010056A0A0;
      v12 = 0xD000000000000015;
      if (v10 != 3)
      {
        v12 = 0xD000000000000016;
        v11 = 0x800000010056A080;
      }

      if (v10 == 2)
      {
        v12 = 0x6361206C61636F6CLL;
        v11 = 0xED0000746E756F63;
      }

      v13 = 0x800000010056A0E0;
      v14 = 0xD000000000000017;
      if (*(v0 + 419))
      {
        v13 = 0x800000010056A0C0;
      }

      else
      {
        v14 = 0xD000000000000013;
      }

      if (*(v0 + 419) <= 1u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (*(v0 + 419) <= 1u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v11;
      }

      v78 = *(v0 + 328);
      v18 = *(v0 + 296);
      v17 = *(v0 + 304);
      v19 = sub_100009D88(v15, v16, v83);

      *(v8 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Enabling %{public}s setting", v8, 0xCu);
      sub_100009F60(v9);

      (*(v17 + 8))(v78, v18);
      goto LABEL_40;
    }

    v38 = *(v0 + 328);
LABEL_39:
    v39 = *(v0 + 296);
    v40 = *(v0 + 304);

    (*(v40 + 8))(v38, v39);
LABEL_40:
    *(v0 + 422) = v5 != v81;
    IntentParameter.wrappedValue.getter();
    if (*(v0 + 417) == 2)
    {

      if (v5 != v81)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5 != v81 || (v41 & 1) == 0)
      {
LABEL_46:
        v44 = swift_task_alloc();
        *(v0 + 384) = v44;
        *v44 = v0;
        v44[1] = sub_1004AAAA0;
        v45 = *(v0 + 264);
        v46 = *(v0 + 200);
        v47 = *(v0 + 208);
        v48 = *(v0 + 184);
        v49 = *(v0 + 192);

        return sub_1004AB3B0(v45, v48, v49, v46, v47);
      }
    }

    v42 = [objc_opt_self() sharedInstance];
    v43 = [v42 hasSyncingAccount];

    if (v43)
    {
      goto LABEL_46;
    }

    sub_100197CCC();
    swift_allocError();
    *v50 = 14;
    swift_willThrow();

    v51 = *(v0 + 8);
    goto LABEL_69;
  }

  if (v4 != enum case for ChangeOperation.toggle(_:))
  {
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v52, v53))
    {
      v67 = *(v0 + 352);
      v69 = *(v0 + 304);
      v68 = *(v0 + 312);
      v70 = *(v0 + 296);

      (*(v69 + 8))(v68, v70);
      (*(v67 + 8))(*(v0 + 368), *(v0 + 344));
LABEL_68:
      static IntentResult.result<>()();

      v51 = *(v0 + 8);
LABEL_69:

      return v51();
    }

    v80 = v52;
    v82 = v53;
    v55 = *(v0 + 352);
    v54 = *(v0 + 360);
    v56 = *(v0 + 344);
    v57 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v57 = 136446466;
    IntentParameter.wrappedValue.getter();
    v58 = ChangeOperation.rawValue.getter();
    v60 = v59;
    v61 = *(v55 + 8);
    v61(v54, v56);
    v62 = sub_100009D88(v58, v60, v83);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    v63 = *(v0 + 416);
    if (v63 <= 1)
    {
      v71 = v63 == 0;
      if (*(v0 + 416))
      {
        v65 = "mention notifications";
      }

      else
      {
        v65 = "auto sort checked items";
      }

      if (v71)
      {
        v66 = 0xD000000000000013;
      }

      else
      {
        v66 = 0xD000000000000017;
      }
    }

    else
    {
      if (v63 == 2)
      {
        v66 = 0x6361206C61636F6CLL;
        v73 = 0xED0000746E756F63;
        v72 = v80;
        goto LABEL_67;
      }

      v64 = v63 == 3;
      if (v63 == 3)
      {
        v65 = "resume last quick note";
      }

      else
      {
        v65 = "URL prompt for App Intent";
      }

      if (v64)
      {
        v66 = 0xD000000000000015;
      }

      else
      {
        v66 = 0xD000000000000016;
      }
    }

    v72 = v80;
    v73 = v65 | 0x8000000000000000;
LABEL_67:
    v75 = *(v0 + 304);
    v74 = *(v0 + 312);
    v76 = *(v0 + 296);
    v77 = sub_100009D88(v66, v73, v83);

    *(v57 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v72, v82, "Unknown change operation type %{public}s — unable to change %{public}s setting", v57, 0x16u);
    swift_arrayDestroy();

    (*(v75 + 8))(v74, v76);
    v61(*(v0 + 368), *(v0 + 344));
    goto LABEL_68;
  }

  v33 = swift_task_alloc();
  *(v0 + 376) = v33;
  *v33 = v0;
  v33[1] = sub_1004AA468;
  v34 = *(v0 + 200);
  v35 = *(v0 + 208);
  v36 = *(v0 + 192);

  return sub_1004AE44C(v36, v34, v35);
}

uint64_t sub_1004AA468(char a1)
{
  *(*v1 + 421) = a1;

  return _swift_task_switch(sub_1004AA568, 0, 0);
}

uint64_t sub_1004AA568()
{
  v38 = v0;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v3 = 136446466;
    IntentParameter.wrappedValue.getter();
    v4 = 0xED0000746E756F63;
    v5 = *(v0 + 418);
    v6 = 0x6361206C61636F6CLL;
    v7 = 0x800000010056A0A0;
    v8 = 0xD000000000000015;
    if (v5 != 3)
    {
      v8 = 0xD000000000000016;
      v7 = 0x800000010056A080;
    }

    if (v5 != 2)
    {
      v6 = v8;
      v4 = v7;
    }

    v9 = 0x800000010056A0E0;
    v10 = 0xD000000000000017;
    if (*(v0 + 418))
    {
      v9 = 0x800000010056A0C0;
    }

    else
    {
      v10 = 0xD000000000000013;
    }

    if (*(v0 + 418) <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (*(v0 + 418) <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v4;
    }

    v13 = *(v0 + 421);
    v36 = *(v0 + 320);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = sub_100009D88(v11, v12, v37);

    *(v3 + 4) = v16;
    *(v3 + 12) = 2082;
    if (v13)
    {
      v17 = 0x64656C6261736964;
    }

    else
    {
      v17 = 0x64656C62616E65;
    }

    if (v13)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = sub_100009D88(v17, v18, v37);

    *(v3 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v1, v2, "Toggling %{public}s setting to %{public}s", v3, 0x16u);
    swift_arrayDestroy();

    (*(v15 + 8))(v36, v14);
  }

  else
  {
    v20 = *(v0 + 320);
    v21 = *(v0 + 296);
    v22 = *(v0 + 304);

    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 421);
  *(v0 + 422) = v23 ^ 1;
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 417) == 2)
  {

    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & v23 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 hasSyncingAccount];

  if ((v26 & 1) == 0)
  {
    sub_100197CCC();
    swift_allocError();
    *v27 = 14;
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }

LABEL_30:
  v30 = swift_task_alloc();
  *(v0 + 384) = v30;
  *v30 = v0;
  v30[1] = sub_1004AAAA0;
  v31 = *(v0 + 264);
  v32 = *(v0 + 200);
  v33 = *(v0 + 208);
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);

  return sub_1004AB3B0(v31, v34, v35, v32, v33);
}

uint64_t sub_1004AAAA0()
{

  return _swift_task_switch(sub_1004AAB9C, 0, 0);
}

uint64_t sub_1004AAB9C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000073B4(v3, &unk_1006BE0D0);
    v4 = swift_task_alloc();
    *(v0 + 408) = v4;
    *v4 = v0;
    v4[1] = sub_1004AAFF4;
    v5 = *(v0 + 422);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);

    return sub_1004AB780(v5, v8, v9, v6, v7);
  }

  else
  {
    v17 = *(v0 + 200);
    v18 = *(v0 + 184);
    (*(v2 + 32))(*(v0 + 288), v3, v1);
    *(v0 + 80) = v18;
    *(v0 + 96) = v17;
    static IntentResult.result<>(dialog:)();
    static ConfirmationActionName.continue.getter();
    v11 = swift_task_alloc();
    *(v0 + 392) = v11;
    v12 = sub_10021B284();
    v13 = sub_1000060B4(&qword_1006C7E10, &qword_1006C6920);
    *v11 = v0;
    v11[1] = sub_1004AADBC;
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);

    return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v14, v15, 1, &type metadata for ChangeSettingIntent, v16, v12, v13);
  }
}

uint64_t sub_1004AADBC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = v2[31];
    v3 = v2[32];
    v5 = v2[30];
    (*(v2[28] + 8))(v2[29], v2[27]);
    (*(v4 + 8))(v3, v5);
    v6 = sub_1004AB2B0;
  }

  else
  {
    v8 = v2[31];
    v7 = v2[32];
    v9 = v2[30];
    (*(v2[28] + 8))(v2[29], v2[27]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_1004AAF40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004AAF40()
{
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_1004AAFF4;
  v2 = *(v0 + 422);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  return sub_1004AB780(v2, v5, v6, v3, v4);
}

uint64_t sub_1004AAFF4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1004AB1C0, 0, 0);
  }
}

uint64_t sub_1004AB1C0()
{
  static IntentResult.result<>()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AB2B0()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004AB3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1004AB3D8, 0, 0);
}

uint64_t sub_1004AB3D8()
{
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 88) == 2)
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    AppDependency.wrappedValue.getter();
    v5 = *(v0 + 16);
    v6 = [v5 modernManagedObjectContext];
    *(v0 + 64) = v6;

    v7 = swift_allocObject();
    *(v0 + 72) = v7;
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v3;
    v7[5] = v2;
    v7[6] = v1;
    v6;

    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    v9 = sub_10015DA04(&unk_1006BE0D0);
    *v8 = v0;
    v8[1] = sub_1004AB5E4;
    v10 = *(v0 + 24);

    return NSManagedObjectContext.perform<A>(_:)(v10, sub_1004AEA38, v7, v9);
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = type metadata accessor for IntentDialog();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1004AB5E4()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1004AB720, 0, 0);
  }
}

uint64_t sub_1004AB720()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AB780(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 89) = a1;
  return _swift_task_switch(sub_1004AB7A8, 0, 0);
}

uint64_t sub_1004AB7A8()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 88);
  if (v1 <= 1)
  {
    if (*(v0 + 88))
    {
      [objc_opt_self() setChecklistAutoSortEnabled:*(v0 + 89)];
    }

    else
    {
      [objc_opt_self() setShouldAutoConvertToTag:*(v0 + 89)];
    }

LABEL_14:
    v16 = *(v0 + 8);

    return v16();
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v2 = *(v0 + 89);
      AppDependency.wrappedValue.getter();
      v3 = *(v0 + 16);
      v4 = [v3 modernManagedObjectContext];
      *(v0 + 64) = v4;

      v5 = swift_allocObject();
      *(v0 + 72) = v5;
      *(v5 + 16) = v4;
      *(v5 + 24) = v2;
      v4;
      v6 = swift_task_alloc();
      *(v0 + 80) = v6;
      *v6 = v0;
      v6[1] = sub_1004ABA4C;

      return NSManagedObjectContext.perform<A>(_:)(v6, sub_1004AE934, v5, &type metadata for () + 8);
    }

    v13 = objc_opt_self();
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v15 = String._bridgeToObjectiveC()();
    [v13 setObject:isa forKey:v15];

    goto LABEL_14;
  }

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1001E26AC;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 89);

  return sub_1004AC24C(v12, v10, v11, v8, v9);
}

uint64_t sub_1004ABA4C()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1004ABB88, 0, 0);
  }
}

uint64_t sub_1004ABB88()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004ABBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = __chkstk_darwin(v5 - 8);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v56 - v8;
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = __chkstk_darwin(v9 - 8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for ChangeOperation();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = [objc_opt_self() localAccountInContext:a1];
  if (v19)
  {
    v20 = v19;
    v65 = a2;
    if ([v19 visibleNotesCount] <= 0 || (v61 = v2, IntentParameter.wrappedValue.getter(), (*(v13 + 104))(v16, enum case for ChangeOperation.enable(_:), v12), sub_1001DD21C(&qword_1006CA1B0), v21 = dispatch thunk of static Equatable.== infix(_:_:)(), v22 = *(v13 + 8), v22(v16, v12), v22(v18, v12), (v21 & 1) != 0))
    {

      v25 = type metadata accessor for IntentDialog();
      return (*(*(v25 - 8) + 56))(v65, 1, 1, v25);
    }

    else
    {
      v59 = objc_opt_self();
      v26 = [v59 mainBundle];
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 localizedStringForKey:v27 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10015DA04(&qword_1006C1A30);
      v29 = swift_allocObject();
      v58 = xmmword_100531E30;
      *(v29 + 16) = xmmword_100531E30;
      v30 = [v20 localizedName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v29 + 56) = &type metadata for String;
      v57 = sub_1001D9030();
      *(v29 + 64) = v57;
      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      v60 = static String.localizedStringWithFormat(_:_:)();
      v35 = v34;

      v36 = [v59 mainBundle];
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 localizedStringForKey:v37 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = swift_allocObject();
      *(v39 + 16) = v58;
      v40 = [v20 localizedName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = v57;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = v44;
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      v45 = static String.localizedStringWithFormat(_:_:)();
      v47 = v46;

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
      v49._countAndFlagsBits = v60;
      v49._object = v35;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v49);

      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
      LocalizedStringResource.init(stringInterpolation:)();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
      v52._countAndFlagsBits = v45;
      v52._object = v47;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v52);

      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
      LocalizedStringResource.init(stringInterpolation:)();
      v54 = v65;
      IntentDialog.init(full:supporting:)();

      v55 = type metadata accessor for IntentDialog();
      return (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    }
  }

  else
  {
    v23 = type metadata accessor for IntentDialog();
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }
}

uint64_t sub_1004AC24C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 120) = a1;
  v6 = type metadata accessor for Logger();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1004AC314, 0, 0);
}

uint64_t sub_1004AC314()
{
  v27 = v0;
  v1 = *(v0 + 120);
  if (v1 == (sub_1004AE074() & 1))
  {
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    if (v10)
    {
      v14 = *(v0 + 120);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315138;
      if (v14)
      {
        v17 = 0x64656C62616E65;
      }

      else
      {
        v17 = 0x64656C6261736964;
      }

      if (v14)
      {
        v18 = 0xE700000000000000;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      v19 = sub_100009D88(v17, v18, &v26);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Local account is already %s, so no work is needed", v15, 0xCu);
      sub_100009F60(v16);
    }

    (*(v12 + 8))(v11, v13);

    v20 = *(v0 + 8);

    return v20();
  }

  else if (*(v0 + 120) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1004AC5F4;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);

    return sub_1004AC884(v6, v5, v3, v4);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 112) = v21;
    *v21 = v0;
    v21[1] = sub_1004AC70C;
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);

    return sub_1004ACBF0(v25, v24, v22, v23);
  }
}

uint64_t sub_1004AC5F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004AC70C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1004AC824(void **a1, uint64_t a2)
{
  v3 = [objc_opt_self() localAccountInContext:a2];
  v4 = *a1;
  *a1 = v3;
}

uint64_t sub_1004AC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1004AC8A8, 0, 0);
}

uint64_t sub_1004AC8A8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  AppDependency.wrappedValue.getter();
  v5 = v0[2];
  v6 = [v5 modernManagedObjectContext];
  v0[7] = v6;

  v7 = swift_allocObject();
  v0[8] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v1;
  v6;

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1004ACA04;

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_1004AE954, v7, &type metadata for () + 8);
}

uint64_t sub_1004ACA04()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1004ACB84;
  }

  else
  {

    v2 = sub_1004ACB20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004ACB20()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004ACB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004ACBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1004ACC14, 0, 0);
}

uint64_t sub_1004ACC14()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  AppDependency.wrappedValue.getter();
  v5 = v0[2];
  v6 = [v5 modernManagedObjectContext];
  v0[7] = v6;

  v7 = swift_allocObject();
  v0[8] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v1;
  v6;

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1004ACD70;

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_1004AE980, v7, &type metadata for () + 8);
}

uint64_t sub_1004ACD70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1004AEA78;
  }

  else
  {

    v2 = sub_1004AEA7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1004ACE8C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 localAccountInContext:a1];
  if (v3)
  {
  }

  else
  {

    v12 = 0;
    v4 = [a1 save:&v12];
    v5 = v12;
    if (v4)
    {
      v6 = objc_opt_self();
      v7 = v5;
      v8 = String._bridgeToObjectiveC()();
      [v6 setBool:1 forKey:v8];

      [objc_opt_self() updateNotesOnLockScreenWhenAccountSupportingLockScreenAdded];
      AppDependency.wrappedValue.getter();
      v9 = v12;
      v10 = [v12 modernCrossProcessChangeCoordinator];

      [v10 postAccountDidChangeNotification];
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1004AD02C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 localAccountInContext:a1];
  if (v12)
  {
    v13 = v12;
    v27[1] = v4;
    v28 = v8;
    v14 = [v12 visibleNotesCount];
    if (v14 >= 1)
    {
      v15 = v14;
      AppDependency.wrappedValue.getter();
      Logger.init(subsystem:category:)();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Local account has %ld note(s). Deleting notes and local account.", v18, 0xCu);
      }

      (*(v28 + 8))(v10, v7);
    }

    [v11 deleteAccount:v13];
    v29 = 0;
    v19 = [a1 save:&v29];
    v20 = v29;
    if (v19)
    {
      v21 = objc_opt_self();
      v22 = v20;
      v23 = String._bridgeToObjectiveC()();
      [v21 setBool:0 forKey:v23];

      [v21 setBool:1 forKey:kICDefaultsKeyDidMigrateLocalAccount];
      [objc_opt_self() disableNotesOnLockScreenIfNecessary];
      AppDependency.wrappedValue.getter();
      v24 = v29;
      v25 = [v29 modernCrossProcessChangeCoordinator];

      [v25 postAccountDidChangeNotification];
    }

    else
    {
      v26 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1004AD354(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [objc_opt_self() defaultAccountInContext:a1];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() sharedController];
    v6 = [v5 isSubscribedToMentionNotificationsForAccount:v4];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1004AD408(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() defaultAccountInContext:a1];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() sharedController];
    [v5 updateSubscriptionPreferenceForMentionNotifications:a2 & 1 forAccount:v4];
  }
}

uint64_t sub_1004AD4A8(uint64_t a1)
{
  v2 = type metadata accessor for ChangeOperation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1004AD598(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*sub_1004AD60C(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_1004AD688(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return ChangeSettingIntent.perform()(a1, v4, v5, v7, v6);
}

char *sub_1004AD748@<X0>(char **a1@<X8>)
{
  result = _s11MobileNotes19ChangeSettingIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

char *_s11MobileNotes19ChangeSettingIntentVACycfC_0()
{
  v52 = type metadata accessor for InputConnectionBehavior();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v35 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10015DA04(&unk_1006BE0D0);
  v2 = __chkstk_darwin(v1 - 8);
  v48 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v50 = v35 - v4;
  v5 = sub_10015DA04(&qword_1006BCB10);
  __chkstk_darwin(v5 - 8);
  v49 = v35 - v6;
  v7 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v7 - 8);
  v53 = v35 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v45 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35[1] = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10015DA04(&qword_1006BCB18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = *(v10 + 104);
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v40 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v41 = v9;
  v18(v12);
  v42 = v18;
  v43 = v10 + 104;
  v35[0] = v12;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v18)(v12, v19, v9);
  v20 = v53;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v16 + 56);
  v44 = v16 + 56;
  v46 = v21;
  v21(v20, 0, 1, v15);
  v22 = type metadata accessor for ChangeOperation();
  (*(*(v22 - 8) + 56))(v49, 1, 1, v22);
  v23 = type metadata accessor for IntentDialog();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v36 = v25;
  v37 = v24 + 56;
  v25(v50, 1, 1, v23);
  v26 = v48;
  v25(v48, 1, 1, v23);
  v38 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v54 + 104);
  v54 += 104;
  v39 = v27;
  v27(v51);
  sub_1001DD21C(&qword_1006BCB20);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_1001DD21C(&qword_1006BCB28);
  v49 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v47 = sub_10015DA04(&qword_1006BCEC0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = v35[0];
  v29 = v40;
  v30 = v41;
  v31 = v42;
  (v42)(v35[0], v40, v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v28, v29, v30);
  v32 = v53;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v46(v32, 0, 1, v45);
  LOBYTE(v57) = 5;
  v33 = v36;
  v36(v50, 1, 1, v23);
  v33(v26, 1, 1, v23);
  v39(v51, v38, v52);
  sub_100179C4C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&qword_1006C34B0);
  v55 = 0xD000000000000021;
  v56 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v55 = 0xD000000000000024;
  v56 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v49;
}

uint64_t sub_1004AE074()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedContext];
  if (!v4 || (v5 = v4, v6 = [v4 managedObjectContext], v5, !v6))
  {
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cannot get modern managed object context — returning false for local account setting", v16, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  v19 = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = &v19;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1004AE9D8;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100660778;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  [v10 performBlockAndWait:v9];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v12 = v19;

    v13 = v12 != 0;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AE354()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1000073B4(v7, &qword_1006BE7A0);
  }

  return 1;
}

uint64_t sub_1004AE44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1004AE470, 0, 0);
}

uint64_t sub_1004AE470()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 72);
  if (v1 <= 1)
  {
    if (*(v0 + 72))
    {
      v6 = [objc_opt_self() checklistAutoSortEnabled];
    }

    else
    {
      v6 = [objc_opt_self() shouldAutoConvertToTag];
    }
  }

  else if (v1 == 2)
  {
    v6 = sub_1004AE074();
  }

  else
  {
    if (v1 == 3)
    {
      AppDependency.wrappedValue.getter();
      v2 = *(v0 + 16);
      v3 = [v2 modernManagedObjectContext];
      *(v0 + 48) = v3;

      v4 = swift_allocObject();
      *(v0 + 56) = v4;
      *(v4 + 16) = v3;
      v3;
      v5 = swift_task_alloc();
      *(v0 + 64) = v5;
      *v5 = v0;
      v5[1] = sub_1004AE63C;

      return NSManagedObjectContext.perform<A>(_:)(v0 + 73, sub_1004AEA5C, v4, &type metadata for Bool);
    }

    v6 = sub_1004AE354();
  }

  v7 = *(v0 + 8);
  v8 = v6 & 1;

  return v7(v8);
}

uint64_t sub_1004AE63C()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1004AE778, 0, 0);
  }
}

uint64_t sub_1004AE778()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1004AE7E0()
{
  result = qword_1006CA188;
  if (!qword_1006CA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA188);
  }

  return result;
}

unint64_t sub_1004AE840()
{
  result = qword_1006CA190;
  if (!qword_1006CA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA190);
  }

  return result;
}

unint64_t sub_1004AE898()
{
  result = qword_1006CA198;
  if (!qword_1006CA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA198);
  }

  return result;
}

uint64_t sub_1004AE9E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004AEAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10001FA64(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10027CAAC(v13);
}

unint64_t sub_1004AEB6C(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_1000054A4(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1004AEDC0()
{
  v1 = [objc_allocWithZone(type metadata accessor for InlineMenuButtonTextAttachment()) init];
  v2 = OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment;
  v3 = *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment];
  *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment] = v1;

  v4 = sub_1004AF0EC();
  v5 = [v0 traitCollection];
  v6 = *&v4[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_traitCollection];
  *&v4[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_traitCollection] = v5;

  if (v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_fontSymbolicTraits + 4])
  {
    v7 = *&v0[v2];
    v8 = objc_opt_self();
    v9 = *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_textStyle];
    v10 = v7;
    v11 = [v8 preferredFontForTextStyle:v9];
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_fontSymbolicTraits];
    v13 = *&v0[v2];
    v14 = objc_opt_self();
    v15 = *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_textStyle];
    v10 = v13;
    v11 = [v14 ic_preferredFontForStyle:v15 symbolicTraits:v12];
    if (!v11)
    {
      __break(1u);
      return;
    }
  }

  v16 = *&v10[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font];
  *&v10[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font] = v11;

  v17 = *&v0[v2];
  v18 = *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_foregroundColor];
  v19 = *&v17[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_foregroundColor];
  *&v17[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_foregroundColor] = v18;
  v20 = v17;
  v21 = v18;

  v22 = *&v0[v2];
  v23 = *&v0[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu];
  v24 = *&v22[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_menu];
  *&v22[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_menu] = v23;
  v25 = v22;
  v26 = v23;

  v27 = *&v0[v2];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
    v40 = v27;

    v32 = v40;
    v33 = 28.0;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v41 = v27;

    v33 = 28.0;
    if ((v34 & 1) == 0)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
      if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
      {

        v33 = 26.0;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v33 = 0.0;
        if (v39)
        {
          v33 = 26.0;
        }
      }
    }

    v32 = v41;
  }

  *&v32[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight] = v33;
}

id sub_1004AF0EC()
{
  v1 = OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for InlineMenuButtonTextAttachment()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1004AF270()
{
  ObjectType = swift_getObjectType();
  v43.receiver = v0;
  v43.super_class = ObjectType;
  result = objc_msgSendSuper2(&v43, "attributedText");
  if (!result)
  {
    goto LABEL_20;
  }

  v3 = result;
  v4 = [result string];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v4];

  v40.super_class = ObjectType;
  v41 = 0;
  v42 = 1;
  v40.receiver = v0;
  result = objc_msgSendSuper2(&v40, "attributedText");
  if (!result)
  {
    goto LABEL_21;
  }

  v6 = result;
  v7 = [result string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String.count.getter();

  v39.receiver = v0;
  v39.super_class = ObjectType;
  result = objc_msgSendSuper2(&v39, "attributedText");
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  v10 = swift_allocObject();
  *(v10 + 16) = &v41;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1004B0B3C;
  *(v11 + 24) = v10;
  v37 = sub_1004B0B28;
  v38 = v11;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1004AEAA8;
  v36 = &unk_1006609A8;
  v12 = _Block_copy(&aBlock);

  [v9 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v8 usingBlock:{0, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v41;
  v15 = v42;

  if (v15)
  {
    return v5;
  }

  v16 = [v0 layoutManager];
  v17 = sub_1004AF0EC();
  v18 = [v16 viewProviderForTextAttachment:v17 characterIndex:v14];

  if (!v18)
  {
    return v5;
  }

  v19 = [v18 view];

  if (!v19)
  {
    return v5;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
LABEL_16:

    return v5;
  }

  v21 = v20;
  v41 = 0;
  v42 = 1;
  v32.receiver = v0;
  v32.super_class = ObjectType;
  result = objc_msgSendSuper2(&v32, "attributedText");
  if (!result)
  {
    goto LABEL_23;
  }

  v22 = result;
  v23 = [result string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = String.count.getter();

  v31.receiver = v0;
  v31.super_class = ObjectType;
  result = objc_msgSendSuper2(&v31, "attributedText");
  if (result)
  {
    v25 = result;
    v26 = swift_allocObject();
    *(v26 + 16) = &v41;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1004B0B3C;
    *(v27 + 24) = v26;
    v37 = sub_1004B0B28;
    v38 = v27;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1004AEAA8;
    v36 = &unk_100660A20;
    v28 = _Block_copy(&aBlock);

    [v25 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v24 usingBlock:{0, v28}];

    _Block_release(v28);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if ((v25 & 1) == 0)
    {
      v29 = v41;
      v30 = v42;

      if ((v30 & 1) == 0)
      {
        [v5 addAttribute:UIAccessibilityTokenAttachment value:v21 range:{v29, 1}];
      }

      goto LABEL_16;
    }

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1004AF7D0()
{
  ObjectType = swift_getObjectType();
  v19.super_class = ObjectType;
  v20 = 0;
  v21 = 1;
  v19.receiver = v0;
  result = objc_msgSendSuper2(&v19, "attributedText");
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  v4 = [result string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.count.getter();

  v18.receiver = v0;
  v18.super_class = ObjectType;
  result = objc_msgSendSuper2(&v18, "attributedText");
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = swift_allocObject();
  *(v7 + 16) = &v20;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1004B070C;
  *(v8 + 24) = v7;
  v17[4] = sub_1004B0714;
  v17[5] = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1004AEAA8;
  v17[3] = &unk_100660840;
  v9 = _Block_copy(v17);

  [v6 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v5 usingBlock:{0, v9}];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v20;
  v12 = v21;

  if ((v12 & 1) == 0)
  {
    v13 = [v0 layoutManager];
    v14 = sub_1004AF0EC();
    v15 = [v13 viewProviderForTextAttachment:v14 characterIndex:v11];

    if (v15)
    {
      v16 = [v15 view];

      if (v16)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

id sub_1004AFB14()
{
  ObjectType = swift_getObjectType();
  v28 = 0;
  v29 = 1;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  result = objc_msgSendSuper2(&v27, "attributedText");
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  v4 = [result string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.count.getter();

  v26.receiver = v0;
  v26.super_class = ObjectType;
  result = objc_msgSendSuper2(&v26, "attributedText");
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = &v28;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1004B0B3C;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1004B0B28;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004AEAA8;
    aBlock[3] = &unk_100660930;
    v9 = _Block_copy(aBlock);

    [v6 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v5 usingBlock:{0, v9}];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v11 = v28;
      v12 = v29;

      if ((v12 & 1) == 0 && (v13 = [v0 layoutManager], v14 = sub_1004AF0EC(), v15 = objc_msgSend(v13, "viewProviderForTextAttachment:characterIndex:", v14, v11), v13, v14, v15) && (v16 = objc_msgSend(v15, "view"), v15, v16) && (objc_opt_self(), v17 = swift_dynamicCastObjCClass(), v16, v17))
      {
        v18 = [objc_opt_self() mainBundle];
        v30._object = 0x80000001005767F0;
        v19._object = 0x80000001005767C0;
        v30._countAndFlagsBits = 0xD000000000000035;
        v19._countAndFlagsBits = 0xD000000000000025;
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v30)._countAndFlagsBits;
      }

      else
      {
        v24.receiver = v0;
        v24.super_class = ObjectType;
        v22 = objc_msgSendSuper2(&v24, "accessibilityHint");
        if (!v22)
        {
          return 0;
        }

        v18 = v22;
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v23 = countAndFlagsBits;

      return v23;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1004AFF70()
{
  ObjectType = swift_getObjectType();
  v29.super_class = ObjectType;
  v30 = 0;
  v31 = 1;
  v29.receiver = v0;
  result = objc_msgSendSuper2(&v29, "attributedText");
  if (!result)
  {
    goto LABEL_45;
  }

  v3 = result;
  v4 = [result string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.count.getter();

  v28.receiver = v0;
  v28.super_class = ObjectType;
  result = objc_msgSendSuper2(&v28, "attributedText");
  if (!result)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = NSAttachmentAttributeName;
  v8 = swift_allocObject();
  v8[2] = &v30;
  v9 = swift_allocObject();
  v9[2] = sub_1004B0B3C;
  v9[3] = v8;
  v27[4] = sub_1004B0B28;
  v27[5] = v9;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1004AEAA8;
  v27[3] = &unk_1006608B8;
  v10 = _Block_copy(v27);

  [v6 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v5 usingBlock:{0, v10}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

  v12 = v30;
  v13 = v31;

  if ((v13 & 1) == 0)
  {
    v14 = [v0 layoutManager];
    v15 = sub_1004AF0EC();
    v16 = [v14 viewProviderForTextAttachment:v15 characterIndex:v12];

    if (v16)
    {
      isEscapingClosureAtFileLocation = [v16 view];

      if (isEscapingClosureAtFileLocation)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17 || (v8 = v17, (v18 = [v17 menu]) == 0))
        {
          v23 = 0;
LABEL_35:

          return v23;
        }

        v0 = v18;
        v19 = [v18 children];
        sub_1000054A4(0, &qword_1006C6400);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v9 = [v0 selectedElements];
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v7 >> 62))
        {
          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          goto LABEL_34;
        }

LABEL_33:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_11:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_38;
            }

            v20 = *(v7 + 32);
          }

          v9 = v20;

          v21 = sub_1004AEB6C(v9, v6, &qword_1006C6400);
          if (v22)
          {

            v23 = 0;
LABEL_30:
            isEscapingClosureAtFileLocation = v9;
            goto LABEL_35;
          }

          v7 = v21 + 1;
          if (!__OFADD__(v21, 1))
          {
            if (!(v6 >> 62))
            {
              result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_22;
              }

              goto LABEL_40;
            }

LABEL_39:
            result = _CocoaArrayWrapper.endIndex.getter();
            if (result)
            {
LABEL_22:
              if (v7 == 0x8000000000000000 && result == -1)
              {
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

              result = v7 % result;
              if ((v6 & 0xC000000000000001) == 0)
              {
                if (result < 0)
                {
                  __break(1u);
                }

                else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v24 = *(v6 + 8 * result + 32);
LABEL_28:
                  v25 = v24;

                  objc_opt_self();
                  v26 = swift_dynamicCastObjCClass();
                  if (!v26)
                  {

                    v23 = 0;
                    isEscapingClosureAtFileLocation = v25;
                    goto LABEL_35;
                  }

                  [v8 sendAction:v26];

                  v23 = 1;
                  goto LABEL_30;
                }

                __break(1u);
                goto LABEL_44;
              }

LABEL_41:
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_28;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_34:

        v23 = 0;
        isEscapingClosureAtFileLocation = v0;
        goto LABEL_35;
      }
    }
  }

  return 0;
}

void sub_1004B0560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10027CA3C(a1, v8);
  if (v9)
  {
    sub_1000054A4(0, &qword_1006C6820);
    if (swift_dynamicCast())
    {

      *a5 = a2;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    sub_10027CAAC(v8);
  }
}

void sub_1004B073C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1004AEDC0();
  if (a1)
  {
    v5 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
    v6 = [v5 string];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    v7 = [objc_allocWithZone(NSString) initWithString:v6];

    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 rangeOfString:v8];
    v11 = v10;

    if (v9 == NSNotFound.getter() || !*&v2[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_menu])
    {
      if (v2[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView_preservesMenuLineHeight] == 1)
      {
        v34 = ObjectType;
        v14 = sub_1001901EC(_swiftEmptyArrayStorage);
        v15 = [objc_allocWithZone(NSMutableParagraphStyle) init];
        v16 = sub_1004AF0EC();
        v17 = sub_1001DD260();

        [v15 setMinimumLineHeight:v17];
        v18 = *&v2[OBJC_IVAR____TtC11MobileNotes24InlineMenuButtonTextView____lazy_storage___menuAttachment];
        v19 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font;
        v20 = *&v18[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font];
        v21 = v18;
        [v20 lineHeight];
        v23 = *&v21[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight];
        if (v22 + 8.0 >= v23)
        {

          v27 = 4.0;
        }

        else
        {
          v24 = *&v18[v19];
          [v24 lineHeight];
          v26 = v25;

          v27 = (v23 - v26) * 0.5;
        }

        v38 = &type metadata for CGFloat;
        *&v37 = v27;
        sub_10001FA64(&v37, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1002E67CC(v36, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
        v38 = sub_1000054A4(0, &qword_1006CA218);
        *&v37 = v15;
        sub_10001FA64(&v37, v36);
        v29 = v15;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v35 = v14;
        sub_1002E67CC(v36, NSParagraphStyleAttributeName, v30);
        type metadata accessor for Key(0);
        sub_1001D8FD8();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v32 = [v5 ic_range];
        [v5 addAttributes:isa range:{v32, v33}];
      }
    }

    else
    {
      v12 = sub_1004AF0EC();
      v13 = [objc_opt_self() attributedStringWithAttachment:v12];

      [v5 replaceCharactersInRange:v9 withAttributedString:{v11, v13}];
    }

    v39.receiver = v2;
    v39.super_class = ObjectType;
    objc_msgSendSuper2(&v39, "setAttributedText:", v5, v34, v35);
  }

  else
  {
    __break(1u);
  }
}

objc_class *sub_1004B0B40()
{
  v1 = OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E20;
    v5 = v0;
    *(preferredElementSize + 32) = sub_1004B0EF0();
    *(preferredElementSize + 40) = sub_1004B0F28();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_1004B0D84();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1004B0C98()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v1 = [v2 inclusionType];
      v3 = 0;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v3 = 1;
LABEL_6:
  v4 = sub_1004B0D84();
  [v4 setState:v3];

  v5 = sub_1004B0EF0();
  v6 = v5;
  v7 = v3 ^ 1;
  if (v1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v5 setState:v8];

  v9 = sub_1004B0F28();
  v11 = v9;
  if (v1 == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  [v9 setState:v10];
}

id sub_1004B0D84()
{
  v1 = OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionOff;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionOff];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionOff];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1004B0F8C(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_1004B0C98();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

uint64_t sub_1004B1028(uint64_t a1, void *a2, uint64_t a3)
{
  (*((swift_isaMask & *a2) + 0x1D0))();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInclusionType:a3];
  v6 = *(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection);
  *(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection) = v5;
  v7 = v5;

  [a2 setNeedsUpdateConfiguration];
  result = sub_1004B0C98();
  v9 = *(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange);
  if (v9)
  {

    v9(v10);

    return sub_10000C840(v9);
  }

  return result;
}

id sub_1004B11D4(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionOff] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionInclude] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionExclude] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerFilterCellInclusion();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1004B1294()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerFilterCellInclusion____lazy_storage___menuActionExclude);
}

id sub_1004B12F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellInclusion();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004B1448(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000054A4(0, &qword_1006BF450);
  ICFolderObject<>.entityIdentifier.getter();
  v4 = [a1 objectID];
  v5 = [v4 URIRepresentation];

  v6 = type metadata accessor for FolderEntity();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 localizedTitle];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (a2 + v6[6]);
  *v11 = v8;
  v11[1] = v10;
  v12 = [a1 account];
  v13 = [v12 localizedName];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = (a2 + v6[7]);
  *v17 = v14;
  v17[1] = v16;
  v18 = a1;
  *(a2 + v6[9]) = [v18 folderType] == 2;
  v19 = [v18 isSharedViaICloud];

  *(a2 + v6[8]) = v19;
}

void sub_1004B15DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10015DA04(qword_1006CA2C0);
  ICFolderObject<>.entityIdentifier.getter();
  v4 = [a1 objectID];
  v5 = [v4 URIRepresentation];

  v6 = type metadata accessor for FolderEntity();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 localizedTitle];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (a2 + v6[6]);
  *v11 = v8;
  v11[1] = v10;
  v12 = [a1 account];
  v13 = [v12 localizedName];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = (a2 + v6[7]);
  *v17 = v14;
  v17[1] = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    *(a2 + v6[9]) = [v19 folderType] == 2;
    LOBYTE(v19) = [v19 isSharedViaICloud];

    *(a2 + v6[8]) = v19;
  }

  else
  {

    *(a2 + v6[9]) = 0;
    *(a2 + v6[8]) = 0;
  }
}

uint64_t sub_1004B17A8()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006CA270);
  sub_10002597C(v0, qword_1006CA270);
  return static Logger.link.getter();
}

uint64_t sub_1004B17F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a1;
  sub_10015DA04(&unk_1006BF9D0);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a2 + 32);
  type metadata accessor for MainActor();
  *(v4 + 112) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 120) = v8;
  *(v4 + 128) = v7;

  return _swift_task_switch(sub_1004B18F4, v8, v7);
}

uint64_t sub_1004B18F4()
{
  v1 = *(v0 + 104);
  IntentParameter.wrappedValue.getter();
  v2 = type metadata accessor for FolderEntity();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = sub_1000073B4(v1, &unk_1006BF9D0);
  if (v4 == 1)
  {
    v6 = (*(v0 + 72))(v5);
    if (v6)
    {
      v7 = v6;
      *(v0 + 56) = &OBJC_PROTOCOL___ICFolderObject;
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        v9 = v8;
        v11 = *(v0 + 88);
        v10 = *(v0 + 96);
        v12 = v7;
        sub_1004B15DC(v9, v10);
        (*(v3 + 56))(v10, 0, 1, v2);
        sub_100006038(v10, v11, &unk_1006BF9D0);
        IntentParameter.wrappedValue.setter();

        sub_1000073B4(v10, &unk_1006BF9D0);
      }

      else
      {
      }
    }
  }

  v13 = *(v0 + 64);
  v13[3] = sub_10015DA04(&unk_1006BE4B0);
  v13[4] = sub_1001EAB4C(&qword_1006BFBE8, &unk_1006BE4B0);
  v14 = sub_100180240(v13);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_1004B1B34;

  return CreateNoteIntent.perform()(v14);
}

uint64_t sub_1004B1B34()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1004B1CF8;
  }

  else
  {
    v5 = sub_1004B1C70;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004B1C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B1CF8()
{
  v1 = *(v0 + 64);

  sub_1001EA9F0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004B1D8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  type metadata accessor for AttributedString();
  v6 = swift_task_alloc();
  v7 = *a2;
  v4[5] = v6;
  v4[6] = v7;

  return _swift_task_switch(sub_1004B1E28, 0, 0);
}

uint64_t sub_1004B1E28()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_1000054A4(0, &qword_1006CA2A8);
  IntentParameter.wrappedValue.getter();
  v3 = NSAttributedString.init(_:)();
  v1();

  v2[3] = sub_10015DA04(&qword_1006BE0A0);
  v2[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  v0[7] = sub_100180240(v2);
  type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004B1F60, v5, v4);
}

uint64_t sub_1004B1F60()
{

  static IntentResult.result<>()();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004B1FD8()
{
  v1 = [v0 interactions];
  sub_10015DA04(&unk_1006BFB00);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    type metadata accessor for UIAppIntentInteraction();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      [v0 removeInteraction:v5];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
}

void sub_1004B215C(void *a1)
{
  v2 = type metadata accessor for FolderID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  v13 = &type metadata for AppIntentsFeature;
  v14 = sub_10001BDA4();
  v11[0] = "viewActions";
  v11[1] = 11;
  v12 = 2;
  v6 = isFeatureEnabled(_:)();
  sub_100009F60(v11);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for FolderEntity();
      swift_getObjectType();
      v7 = a1;
      ICFolderObject<>.entityIdentifier.getter();
      sub_10001C21C(&qword_1006C45A0, type metadata accessor for FolderEntity);
      EntityIdentifier.init<A>(for:identifier:)();
      v8 = type metadata accessor for EntityIdentifier();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      UIView.appEntityIdentifier.setter();
    }
  }
}

void sub_1004B23F0(void *a1)
{
  v2 = type metadata accessor for TagID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  v13 = &type metadata for AppIntentsFeature;
  v14 = sub_10001BDA4();
  v11[0] = "viewActions";
  v11[1] = 11;
  v12 = 2;
  v6 = isFeatureEnabled(_:)();
  sub_100009F60(v11);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for TagEntity();
      v7 = a1;
      ICHashtag.entityIdentifier.getter();
      sub_10001C21C(&qword_1006BCB08, type metadata accessor for TagEntity);
      EntityIdentifier.init<A>(for:identifier:)();
      v8 = type metadata accessor for EntityIdentifier();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      UIView.appEntityIdentifier.setter();
    }
  }
}

void sub_1004B2674(void *a1)
{
  v2 = type metadata accessor for TableID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-1] - v4;
  v13 = &type metadata for AppIntentsFeature;
  v14 = sub_10001BDA4();
  v11[0] = "viewActions";
  v11[1] = 11;
  v12 = 2;
  v6 = isFeatureEnabled(_:)();
  sub_100009F60(v11);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for TableEntity();
      swift_getObjectType();
      v7 = a1;
      ICTableObject<>.tableEntityIdentifier.getter();
      sub_10001C21C(&qword_1006BCCE0, type metadata accessor for TableEntity);
      EntityIdentifier.init<A>(for:identifier:)();
      v8 = type metadata accessor for EntityIdentifier();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      UIView.appEntityIdentifier.setter();
    }
  }
}

void sub_1004B2908(void *a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006CA290);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for ChecklistItemID();
  v8 = __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for UUID();
  v37 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &type metadata for AppIntentsFeature;
  v41 = sub_10001BDA4();
  v38[0] = "viewActions";
  v38[1] = 11;
  v39 = 2;
  v19 = isFeatureEnabled(_:)();
  sub_100009F60(v38);
  if ((v19 & 1) == 0)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  sub_100006038(a2, v15, &unk_1006BE0B0);
  v20 = v37;
  if ((*(v37 + 48))(v15, 1, v16) == 1)
  {
    sub_1000073B4(v15, &unk_1006BE0B0);
LABEL_5:
    v21 = type metadata accessor for EntityIdentifier();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    UIView.appEntityIdentifier.setter();
    if (qword_1006BC9E8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10002597C(v22, qword_1006CA270);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Clearing checklist view annotation", v25, 2u);
    }

    return;
  }

  (*(v20 + 32))(v18, v15, v16);
  v26 = a1;
  v27 = [v26 objectID];
  v28 = *(v20 + 16);
  v29 = v12;
  v28(&v12[*(v7 + 20)], v18, v16);
  v30 = [v27 URIRepresentation];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ChecklistItemEntity();
  sub_1003A91D8(v12, v10);
  sub_10001C21C(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);
  EntityIdentifier.init<A>(for:identifier:)();
  v31 = type metadata accessor for EntityIdentifier();
  (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
  UIView.appEntityIdentifier.setter();
  if (qword_1006BC9E8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10002597C(v32, qword_1006CA270);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Setting checklist view annotation", v35, 2u);
  }

  sub_1003A923C(v29);
  (*(v37 + 8))(v18, v16);
}

uint64_t sub_1004B2FE4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000A1FC;

  return sub_1004B1D8C(a1, a2, v7, v6);
}

uint64_t sub_1004B3098(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000A600;

  return sub_1004B17F4(a1, a2, v7, v6);
}

uint64_t AsyncBufferedQueue.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  v2 = sub_1004B4040(a1);
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t AsyncBufferedQueue.enqueue(_:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v1 + 16))(&v4 - v2);
  type metadata accessor for AsyncStream.Continuation();
  return AsyncStream.Continuation.yield(_:)();
}

uint64_t AsyncBufferedMulticastManager.makeAsyncStream(bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncBufferedQueue();
  swift_allocObject();
  v4 = sub_1004B3CD8(a1);
  type metadata accessor for Array();
  v5 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v5));
  sub_1004B4094();
  os_unfair_lock_unlock((a2 + v5));
  return v4;
}

uint64_t BidirectionalAsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  type metadata accessor for AsyncBufferedQueue();
  swift_allocObject();
  v2 = sub_1004B3CD8(a1);
  swift_allocObject();
  sub_1004B3CD8(a1);
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

Swift::Void __swiftcall BidirectionalAsyncBufferedQueue.finish()()
{
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
}

Swift::Void __swiftcall AsyncBufferedMulticastManager.finish()()
{
  v1 = v0;
  type metadata accessor for AsyncBufferedQueue();
  type metadata accessor for Array();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1004B40B0((v1 + v2), &v4);
  os_unfair_lock_unlock((v1 + v3));
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t AsyncBufferedMulticastManager.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-v8];
  v19 = a3;
  type metadata accessor for AsyncBufferedQueue();
  type metadata accessor for Array();
  v10 = *(*a2 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v11));
  sub_1004B4160((a2 + v10), &v20);
  os_unfair_lock_unlock((a2 + v11));
  if (Array.endIndex.getter())
  {
    v12 = (v7 + 8);
    v13 = 4;
    do
    {
      v14 = v13 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {

        v16 = v13 - 3;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v13 - 3;
        if (__OFADD__(v14, 1))
        {
LABEL_9:
          __break(1u);
        }
      }

      AsyncBufferedQueue.enqueue(_:)(a1);

      (*v12)(v9, v6);
      ++v13;
    }

    while (v16 != Array.endIndex.getter());
  }
}

uint64_t AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  v2 = sub_1004B3CD8(a1);
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_1004B3978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncStream.Continuation();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t AsyncBufferedQueue.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
  (*(*(v2 - 8) + 8))(v1 + *(*v1 + 88), v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for AsyncStream();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t AsyncBufferedQueue.__deallocating_deinit()
{
  AsyncBufferedQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004B3BCC()
{
  AsyncBufferedQueue.makeAsyncIterator()();
}

uint64_t sub_1004B3C04()
{
  type metadata accessor for Array();

  return Array.append(_:)();
}

uint64_t sub_1004B3C88(uint64_t *a1)
{
  type metadata accessor for AsyncBufferedQueue();
  *a1 = static Array._allocateUninitialized(_:)();
}

uint64_t sub_1004B3CD8(uint64_t a1)
{
  v22 = a1;
  v2 = *(*v1 + 80);
  v20 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v18 = &v17 - v4;
  v21 = type metadata accessor for AsyncStream();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v17 - v5;
  v7 = type metadata accessor for AsyncStream.Continuation();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  v15 = *(v7 - 8);
  (*(v15 + 56))(&v17 - v13, 1, 1, v7);
  (*(v3 + 16))(v18, v22, v20);
  v23 = v2;
  v24 = v14;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v19 + 32))(v1 + *(*v1 + 96), v6, v21);
  (*(v9 + 16))(v12, v14, v8);
  result = (*(v15 + 48))(v12, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v1 + *(*v1 + 88), v12, v7);
    (*(v9 + 8))(v14, v8);
    return v1;
  }

  return result;
}

uint64_t sub_1004B40B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *a1;

  return sub_1004B3C88(a1);
}

uint64_t sub_1004B419C()
{
  result = type metadata accessor for AsyncStream.Continuation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AsyncStream();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1004B4274()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004B42C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004B4324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1004B4348, 0, 0);
}

uint64_t sub_1004B4348()
{
  v1 = v0 + 2;
  v2 = v0[13];
  v3 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1004B4434;
  v4 = swift_continuation_init();
  *(swift_allocObject() + 16) = v4;
  CKSerializeRecordModificationsOperation.serializeResultBlock.setter();
  [v3 addOperation:v2];

  return _swift_continuation_await(v1);
}

uint64_t sub_1004B4434()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  else
  {
    **(*v0 + 96) = *(*v0 + 80);
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004B4548(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    _s3__C4CodeOMa_0(0);
    swift_errorRetain();
    sub_1004B476C(&qword_1006BD5B0, _s3__C4CodeOMa_0);
    v7 = static _ErrorCodeProtocol.~= infix(_:_:)();
    sub_1004B4760(a1, a2, 1);
    if (v7)
    {
      sub_1004B4760(a1, a2, 1);
      type metadata accessor for CancellationError();
      sub_1004B476C(&qword_1006C4950, &type metadata accessor for CancellationError);
      v8 = swift_allocError();
      CancellationError.init()();
      swift_allocError();
      *v9 = v8;
    }

    else
    {
      swift_allocError();
      *v12 = a1;
    }

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1001C4E38(a1, a2);
    v10 = *(*(a4 + 64) + 40);
    *v10 = a1;
    v10[1] = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1004B4760(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10019671C(a1, a2);
  }
}

uint64_t sub_1004B476C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B47B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_1004B47D8, 0, 0);
}

uint64_t sub_1004B47D8()
{
  v1 = v0 + 2;
  v2 = v0[13];
  v3 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1004B4434;
  v4 = swift_continuation_init();
  *(swift_allocObject() + 16) = v4;
  CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter();
  [v3 addOperation:v2];

  return _swift_continuation_await(v1);
}

uint64_t sub_1004B48C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    _s3__C4CodeOMa_0(0);
    swift_errorRetain();
    sub_1004B476C(&qword_1006BD5B0, _s3__C4CodeOMa_0);
    v6 = static _ErrorCodeProtocol.~= infix(_:_:)();
    sub_1004B4AE0(a1, a2, 1);
    if (v6)
    {
      sub_1004B4AE0(a1, a2, 1);
      type metadata accessor for CancellationError();
      sub_1004B476C(&qword_1006C4950, &type metadata accessor for CancellationError);
      v7 = swift_allocError();
      CancellationError.init()();
      swift_allocError();
      *v8 = v7;
    }

    else
    {
      swift_allocError();
      *v11 = a1;
    }

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v9 = *(*(a4 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1004B4AE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1004B4B30()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006CA4A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-1] - v4;
  type metadata accessor for FilterType(0);
  sub_1004B5940();
  sub_1004B5994();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064B970);
  v6 = ICFilterTypeCount;
  if ((ICFilterTypeCount & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v25 = v3;
  if (ICFilterTypeCount)
  {
    v7 = sub_1001CC1D4(ICFilterTypeCount, 0);
    if (sub_1004B55BC(v26, (v7 + 4), v6, 0, v6) == v6)
    {
      v8 = v7[2];
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v7 = _swiftEmptyArrayStorage;
  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
LABEL_5:
    v9 = v7 + 4;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1001CABF8(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_1001CABF8((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      *&v10[8 * v14 + 32] = v11;
      --v8;
    }

    while (v8);
  }

LABEL_13:

  LOBYTE(v26[0]) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v15 = *(v1 + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_diffableDataSource);
  if (v15)
  {
    v16 = v15;
    dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
  }

  v17 = OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_heightConstraint;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = v25;
  if (v18)
  {
    swift_endAccess();
    v20 = v18;
    v21 = sub_1004B4E5C();
    v22 = [v21 collectionViewLayout];

    [v22 collectionViewContentSize];
    v24 = v23;

    [v20 setConstant:v24];
    (*(v19 + 8))(v5, v2);
  }

  else
  {
    (*(v25 + 8))(v5, v2);
    swift_endAccess();
  }
}

id sub_1004B4E5C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_1004B5658();
    v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setUserInteractionEnabled:0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1004B4F24()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006CA490);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v23[-v7];
  type metadata accessor for LearnMoreSmartFoldersFiltersCell();
  type metadata accessor for FilterType(0);
  UICollectionView.CellRegistration.init(handler:)();
  sub_1004B4E5C();
  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  v11 = objc_allocWithZone(sub_10015DA04(&qword_1006CA498));
  v12 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v13 = *&v0[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_diffableDataSource];
  *&v0[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_diffableDataSource] = v12;
  v14 = v12;

  v15 = OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView;
  v16 = *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView];
  [v16 setDataSource:v14];

  [v1 addSubview:*&v1[v15]];
  [*&v1[v15] ic_addAnchorsToFillSuperview];
  v17 = [*&v1[v15] heightAnchor];
  v18 = [v17 constraintEqualToConstant:34.0];

  v19 = OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_heightConstraint;
  swift_beginAccess();
  v20 = *&v1[v19];
  *&v1[v19] = v18;

  swift_beginAccess();
  v21 = *&v1[v19];
  if (v21)
  {
    swift_endAccess();
    [v21 setActive:1];
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    (*(v3 + 8))(v8, v2);
    return swift_endAccess();
  }
}

id sub_1004B52E8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_diffableDataSource] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1004B4F24();
  }

  return v5;
}

uint64_t sub_1004B53CC()
{
  type metadata accessor for LearnMoreSmartFoldersFiltersCell();
  type metadata accessor for FilterType(0);
  return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
}

unint64_t sub_1004B54D4()
{
  result = qword_1006CA488;
  if (!qword_1006CA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA488);
  }

  return result;
}

uint64_t sub_1004B5528()
{
  sub_10015DA04(&qword_1006CA490);

  return sub_1004B53CC();
}

uint64_t *sub_1004B55BC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1004B5658()
{
  v0 = objc_opt_self();
  v1 = [v0 estimatedDimension:48.0];
  v2 = [v0 estimatedDimension:34.0];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize:v4];
  v6 = [v0 fractionalWidthDimension:1.0];
  v7 = [v0 estimatedDimension:34.0];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100534670;
  *(v10 + 32) = v5;
  sub_1004B58F4();
  v11 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v9 horizontalGroupWithLayoutSize:v8 subitems:isa];

  v14 = [objc_opt_self() fixedSpacing:8.0];
  [v13 setInterItemSpacing:v14];

  v15 = [objc_opt_self() sectionWithGroup:v13];
  [v15 setInterGroupSpacing:8.0];
  v16 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v15];

  return v16;
}

unint64_t sub_1004B58F4()
{
  result = qword_1006C63B0;
  if (!qword_1006C63B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C63B0);
  }

  return result;
}

unint64_t sub_1004B5940()
{
  result = qword_1006CA4A8;
  if (!qword_1006CA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4A8);
  }

  return result;
}

unint64_t sub_1004B5994()
{
  result = qword_1006CA4B0;
  if (!qword_1006CA4B0)
  {
    type metadata accessor for FilterType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4B0);
  }

  return result;
}

uint64_t sub_1004B59EC()
{
  (*((swift_isaMask & *v0) + 0xC8))();
  v1 = ICLocalizedStringForICFilterType();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1004B5AAC(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1004B5B10()
{
  v1 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___image;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___image);
  v3 = v2;
  if (v2 == 1)
  {
    (*((swift_isaMask & *v0) + 0xC8))();
    v4 = ICSymbolImageNameForICFilterType();
    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();
    }

    v5 = ICTintColorForICFilterType();
    v6 = objc_opt_self();
    v7 = [objc_opt_self() whiteColor];
    v3 = [v6 ic_symbolGraphicNamed:v4 size:v7 symbolColor:v5 backgroundColor:{28.0, 28.0}];

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_1004B7914(v8);
  }

  sub_1004B7924(v2);
  return v3;
}

id sub_1004B5C64()
{
  v1 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel];
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setAdjustsFontForContentSizeCategory:1];
    [v4 setTextAlignment:{2 * (objc_msgSend(v0, "effectiveUserInterfaceLayoutDirection") != 1)}];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1004B5D3C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_accountObjectID] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;
  v9 = &v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___horizontalStackView] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_horizontalStackViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___listContentView] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___image] = 1;
  *&v4[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FolderComposerFilterCell();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_1000054A4(0, &qword_1006BDAB0);
  v11 = v10;
  static UITraitCollection.traitsAffectingSizeAndColor.getter();
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v11;
}

id sub_1004B5EA4(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_accountObjectID] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;
  v3 = &v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___horizontalStackView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_horizontalStackViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___listContentView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___image] = 1;
  *&v1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FolderComposerFilterCell();
  v4 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  if (v4)
  {
    sub_1000054A4(0, &qword_1006BDAB0);
    v5 = v4;
    static UITraitCollection.traitsAffectingSizeAndColor.getter();
    UIView.registerForTraitChanges(_:action:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1004B6000(uint64_t a1)
{
  v2 = v1;
  v144 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v5 - 8);
  v134 = &v131 - v6;
  v139 = type metadata accessor for UICellAccessory.PopUpMenuOptions();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for UICellAccessory.DisplayedState();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for UICellAccessory();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v131 - v15;
  static UIListContentConfiguration.valueCell()();
  v17 = type metadata accessor for UICellConfigurationState();
  *(&v156 + 1) = v17;
  v157 = &protocol witness table for UICellConfigurationState;
  v18 = sub_100180240(&v155);
  (*(*(v17 - 8) + 16))(v18, a1, v17);
  UIListContentConfiguration.updated(for:)();
  v147 = v11;
  v19 = *(v11 + 8);
  v149 = v11 + 8;
  v148 = v19;
  v19(v14, v10);
  sub_100009F60(&v155);
  v20 = UIListContentConfiguration.directionalLayoutMargins.getter();
  v22 = v21;
  v24 = v23;
  (*((swift_isaMask & *v2) + 0xC0))(v20);
  if (v25)
  {
    v26 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    LODWORD(v27) = 1.0;
    [v26 setHyphenationFactor:v27];
    sub_10015DA04(&unk_1006C8190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    v29 = v10;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_1000054A4(0, &qword_1006CA218);
    *(inited + 40) = v26;
    v30 = NSParagraphStyleAttributeName;
    v31 = v26;
    sub_1001901EC(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &qword_1006C81A0);
    v32 = objc_allocWithZone(NSAttributedString);
    v33 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_1001D8FD8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v32 initWithString:v33 attributes:isa];

    v10 = v29;
    UIListContentConfiguration.attributedText.setter();
  }

  sub_1004B5B10();
  UIListContentConfiguration.image.setter();
  v35 = UIListContentConfiguration.imageProperties.modify();
  v36 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *(v37 + 8) = 0x4036000000000000;
  v36(&v152, 0);
  v35(&v155, 0);
  v38 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v38(&v155, 0);
  v39 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v40 + 8) = 0;
  v39(&v155, 0);
  v41 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v42 + 24) = 0;
  v41(&v155, 0);
  *&v155 = v2;
  v43 = type metadata accessor for FolderComposerFilterCell();
  v44 = v2;
  v45 = sub_10015DA04(&qword_1006CA528);
  v46 = swift_dynamicCast();
  v151 = v43;
  v150 = v45;
  if ((v46 & 1) == 0)
  {
    v154 = 0;
    v152 = 0u;
    v153 = 0u;
    goto LABEL_12;
  }

  if (!*(&v153 + 1))
  {
LABEL_12:
    sub_1000073B4(&v152, &qword_1006CA530);
    v146 = 0;
    v59 = 0;
    goto LABEL_16;
  }

  sub_100192680(&v152, &v155);
  v47 = *(&v156 + 1);
  v48 = v157;
  sub_10017CC60(&v155, *(&v156 + 1));
  v48[2](v47, v48);
  v49 = *(&v156 + 1);
  v50 = v157;
  sub_10017CC60(&v155, *(&v156 + 1));
  v51 = v50[1](v49, v50);
  v52 = [v51 selectedElements];

  sub_1000054A4(0, &qword_1006C6400);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_7:
      if ((v53 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v55 = *(v53 + 32);
      }

      v56 = v55;

      v57 = [v56 title];

      v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v58;

      goto LABEL_15;
    }
  }

  v146 = 0;
  v145 = 0;
LABEL_15:
  v60 = *(&v156 + 1);
  v61 = v157;
  sub_10017CC60(&v155, *(&v156 + 1));
  v62 = v61[1](v60, v61);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = v133;
  v64 = v132;
  v65 = v136;
  (*(v133 + 104))(v132, enum case for UICellAccessory.DisplayedState.always(_:), v136);
  v66 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v66 - 8) + 56))(v134, 1, 1, v66);

  v67 = v135;
  UICellAccessory.PopUpMenuOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  v68 = v137;
  static UICellAccessory.popUpMenu(_:displayed:options:selectedElementDidChangeHandler:)();

  (*(v138 + 8))(v67, v139);
  (*(v63 + 8))(v64, v65);

  sub_10015DA04(&unk_1006BD9E0);
  v69 = v140;
  v70 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100531E30;
  v72 = v141;
  (*(v69 + 16))(v71 + v70, v68, v141);
  UICollectionViewListCell.accessories.setter();
  (*(v69 + 8))(v68, v72);
  sub_100009F60(&v155);
  v59 = v145;
LABEL_16:
  v73 = sub_1004B5A6C();
  v74 = [v73 superview];

  if (!v74)
  {
    v145 = v10;
    v78 = [v44 contentView];
    v79 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___horizontalStackView;
    [v78 addSubview:*(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___horizontalStackView)];

    LODWORD(v78) = [v44 ic_isRTL];
    v80 = [v44 contentView];
    [v80 layoutMargins];
    v82 = v81;
    v84 = v83;

    if (v78)
    {
      v85 = v84;
    }

    else
    {
      v85 = v82;
    }

    if (v85 > v22)
    {
      v86 = v85;
    }

    else
    {
      v86 = v22;
    }

    sub_10015DA04(&unk_1006BD390);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_100534950;
    v88 = [*(v44 + v79) topAnchor];
    v89 = [v44 contentView];
    v90 = [v89 topAnchor];

    v91 = [v88 constraintEqualToAnchor:v90];
    *(v87 + 32) = v91;
    v92 = [*(v44 + v79) leadingAnchor];
    v93 = [v44 contentView];
    v94 = [v93 safeAreaLayoutGuide];

    v95 = [v94 leadingAnchor];
    v96 = [v92 constraintEqualToAnchor:v95 constant:v86];

    *(v87 + 40) = v96;
    v97 = [*(v44 + v79) trailingAnchor];
    v98 = [v44 contentView];
    v99 = [v98 trailingAnchor];

    v100 = [v97 constraintEqualToAnchor:v99 constant:-v24];
    *(v87 + 48) = v100;
    *&v155 = v87;
    v101 = [*(v44 + v79) bottomAnchor];
    v10 = v145;
    v102 = [v44 contentView];
    v103 = [v102 bottomAnchor];

    v104 = [v101 constraintEqualToAnchor:v103];
    v105 = *(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_horizontalStackViewBottomConstraint);
    *(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_horizontalStackViewBottomConstraint) = v104;
    v106 = v104;

    *&v152 = v104;
    sub_10015DA04(&qword_1006C3678);
    Array.appendNonNil(_:)();

    v107 = objc_opt_self();
    sub_1000054A4(0, &qword_1006C5D90);
    v108 = Array._bridgeToObjectiveC()().super.isa;

    [v107 activateConstraints:v108];

    if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
    {
      goto LABEL_18;
    }

LABEL_28:
    v145 = v59;
    [*(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___horizontalStackView) setSpacing:v22];
    [*(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_horizontalStackViewBottomConstraint) setConstant:0.0];
    v109 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint;
    v110 = *(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint);
    if (v110)
    {
      [v110 setActive:1];
      v111 = *(v44 + v109);
      if (v111)
      {
        v112 = v111;
        [v44 frame];
        [v112 setConstant:v113 * 0.6];
      }
    }

    v114 = sub_1004B5C64();
    [v114 setHidden:0];

    v115 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel;
    v116 = *(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell____lazy_storage___menuLabel);
    v117 = v142;
    UIListContentConfiguration.textProperties.getter();
    v118 = UIListContentConfiguration.TextProperties.font.getter();
    v119 = *(v143 + 8);
    v120 = v144;
    v119(v117, v144);
    [v116 setFont:v118];

    v121 = *(v44 + v115);
    UIListContentConfiguration.secondaryTextProperties.getter();
    v122 = UIListContentConfiguration.TextProperties.color.getter();
    v119(v117, v120);
    [v121 setTextColor:v122];

    v123 = *(v44 + v115);
    if (v145)
    {
      v124 = v123;
      v125 = String._bridgeToObjectiveC()();
    }

    else
    {
      v124 = v123;
      v125 = 0;
    }

    v77 = v147;
    [v124 setText:v125];

    UIListContentConfiguration.secondaryText.setter();
    goto LABEL_35;
  }

  if (!ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    goto LABEL_28;
  }

LABEL_18:
  v75 = *(v44 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_listContentViewWidthConstraint);
  if (v75)
  {
    [v75 setActive:0];
  }

  v76 = sub_1004B5C64();
  [v76 setHidden:1];

  UIListContentConfiguration.secondaryText.setter();
  v77 = v147;
LABEL_35:
  v126 = sub_1004B5A8C();
  *(&v156 + 1) = v10;
  v157 = &protocol witness table for UIListContentConfiguration;
  v127 = sub_100180240(&v155);
  (*(v77 + 16))(v127, v16, v10);
  UIListContentView.configuration.setter();

  *&v152 = v44;
  v128 = v44;
  if (swift_dynamicCast())
  {
    v129 = *(&v156 + 1);
    if (*(&v156 + 1))
    {
      v130 = v157;
      sub_10017CC60(&v155, *(&v156 + 1));
      v130[2](v129, v130);
      v148(v16, v10);
      return sub_100009F60(&v155);
    }
  }

  else
  {
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
  }

  v148(v16, v10);
  return sub_1000073B4(&v155, &qword_1006CA530);
}

void sub_1004B7240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsUpdateConfiguration];
  }
}

void sub_1004B7384()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FolderComposerFilterCell();
  objc_msgSendSuper2(&v7, "updateConstraints");
  v1 = sub_1004B5A8C();
  v2 = [v1 textLayoutGuide];

  if (v2)
  {
    v3 = [v0 separatorLayoutGuide];
    v4 = [v3 leadingAnchor];

    v5 = [v2 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    [v6 setActive:1];
  }
}