uint64_t sub_10004B66C(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  v4 = 6;
  v5 = v1;
  v3[3] = type metadata accessor for AnalyticsSender();
  v3[4] = &protocol witness table for AnalyticsSender;
  v3[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000EAC4();
  }

  return result;
}

uint64_t sub_10004B720()
{
  v1 = OBJC_IVAR____TtC6Health16IntroFlowManager__isPresentingContent;
  sub_10000C98C(0, &qword_1000DD100, &type metadata for Bool, &type metadata accessor for Published);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthAppNotificationManager);

  v4 = *(v0 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthWelcomeFlowSignalProvider);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_10004B810()
{
  result = qword_1000DD540;
  if (!qword_1000DD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD540);
  }

  return result;
}

uint64_t sub_10004B864(uint64_t a1)
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
  v10[1] = sub_100018D6C;

  return sub_100049FD0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_10004B938()
{
  if (!qword_1000DBF68)
  {
    v0 = type metadata accessor for UnsafeContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBF68);
    }
  }
}

uint64_t sub_10004B9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10004BB0C;

  return sub_10004AE48(a1, v4, v5, v7, v6);
}

void sub_10004BA8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10004BAF8(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_100049710(a1);
}

uint64_t type metadata accessor for HKKeyValueDataSource()
{
  result = qword_1000DBF80;
  if (!qword_1000DBF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BBA0()
{
  String.hash(into:)();
}

uint64_t sub_10004BCEC()
{
  String.hash(into:)();
}

Swift::Int sub_10004BE64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10004BFA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_10004C104(char a1)
{
  v2 = [objc_allocWithZone(HKHealthStore) init];
  v3 = [objc_opt_self() *off_1000CEC70[a1]];

  return v3;
}

uint64_t sub_10004C17C(char a1)
{
  if ((a1 - 2) > 4u)
  {
    return 0;
  }

  v1 = **(&off_1000CECA8 + (a1 - 2));
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10004C1C8(unsigned __int8 a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004EBD8(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v47 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 - 2 >= 3)
  {
    if (a1 == 5)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      v22 = sub_10004C104(5);
      v31._countAndFlagsBits = v28;
      v31._object = v30;
      v50 = HKKeyValueDomain.integer(for:)(v31);
      if (!v32)
      {
        is_nil = v50.is_nil;
        value = v50.value;

        if (is_nil)
        {
          return 0;
        }

        v27 = value;
        if (value <= 1)
        {
          if (!value)
          {
            return 0x656C706D6F636E49;
          }

LABEL_23:
          if (v27 == 1)
          {
            return 0x6574656C706D6F43;
          }

          return 6369134;
        }

LABEL_25:
        if (v27 == 2)
        {
          return 0x657373696D736944;
        }

        if (v27 == 3)
        {
          return 0xD000000000000012;
        }

        return 6369134;
      }
    }

    else
    {
      if (a1 != 6)
      {
        return 0;
      }

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      v22 = sub_10004C104(6);
      v23._countAndFlagsBits = v19;
      v23._object = v21;
      v49 = HKKeyValueDomain.integer(for:)(v23);
      if (!v24)
      {
        v25 = v49.is_nil;
        v26 = v49.value;

        if (!v25)
        {
          v27 = v26;
          if (v26 <= 1)
          {
            if (!v26)
            {
              return 0x656C706D6F636E49;
            }

            goto LABEL_23;
          }

          goto LABEL_25;
        }

        return 0;
      }
    }

    static Logger.view.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136315138;
      v47[1] = &type metadata for HKKeyValueDataSource.Identifier;
      v48 = v36;
      sub_10004EB90();
      v37 = String.init<A>(describing:)();
      v39 = sub_1000036D0(v37, v38, &v48);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%s] Could not get kvdomain value", v35, 0xCu);
      sub_100003B90(v36);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v47[0] = v6;
  v16 = sub_10004C104(a1);
  result = sub_10004C17C(a1);
  if (v18)
  {
    HKKeyValueDomain.date(for:)();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100015978(v10);
      return 0;
    }

    (*(v12 + 32))(v15, v10, v11);
    v40 = [objc_allocWithZone(NSDateFormatter) init];
    v41 = String._bridgeToObjectiveC()();
    [v40 setDateFormat:v41];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v43 = [v40 stringFromDate:isa];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v12 + 8))(v15, v11);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004C7A0(void *a1)
{
  if (a1 <= 1u)
  {
    v21 = v1;
    v22 = v2;
    if (a1)
    {
      v10 = objc_opt_self();
      v11 = [objc_allocWithZone(HKHealthStore) init];
      v5 = [v10 healthArticlesDefaultsDomainWithHealthStore:v11];

      v12 = swift_allocObject();
      *(v12 + 16) = 1;
      *(v12 + 24) = v5;
      v19 = sub_10004EADC;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v7 = &unk_1000CEA78;
    }

    else
    {
      v3 = objc_opt_self();
      v4 = [objc_allocWithZone(HKHealthStore) init];
      v5 = [v3 healthArticlesDefaultsDomainWithHealthStore:v4];

      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v6 + 24) = v5;
      v19 = sub_10004EB04;
      v20 = v6;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v7 = &unk_1000CEAC8;
    }

    v17 = sub_10004CDEC;
    v18 = v7;
    v13 = _Block_copy(&v15);
    v14 = v5;

    [v14 allValuesWithCompletion:{v13, v15, v16}];
    _Block_release(v13);
  }

  else if (a1 - 2 >= 3)
  {
    if (a1 == 5)
    {
      v8 = 0;
      v9 = 5;
    }

    else
    {
      v8 = 1;
      v9 = 6;
    }

    sub_10004C9FC(v8, v9);
  }

  else
  {

    sub_10004CB50(a1);
  }
}

void sub_10004C9FC(uint64_t a1, char a2)
{
  if ((a2 - 2) <= 4u)
  {
    v12[12] = v2;
    v12[13] = v3;
    v6 = **(&off_1000CECA8 + (a2 - 2));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = sub_10004C104(a2);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v9 = String._bridgeToObjectiveC()();

    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v12[4] = sub_10004EB88;
    v12[5] = v10;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000099BC;
    v12[3] = &unk_1000CEBB8;
    v11 = _Block_copy(v12);

    [v7 setNumber:isa forKey:v9 completion:v11];
    _Block_release(v11);
  }
}

id sub_10004CB50(id result)
{
  if ((result - 2) <= 4u)
  {
    v1 = **(&off_1000CECA8 + (result - 2));
    v2 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = sub_10004C104(v2);
    v4 = String._bridgeToObjectiveC()();

    v8 = 0;
    v5 = [v3 setDate:0 forKey:v4 error:&v8];

    v6 = v8;
    if (v5)
    {

      return v6;
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

void sub_10004CCA0(uint64_t a1, void *a2, char a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = (a1 + 16 + 16 * v3);
    v8 = *v7;
    v9 = v7[1];

    v10 = sub_10004D268(1, a1);
    v11 = String._bridgeToObjectiveC()();

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = v10;
    *(v12 + 32) = a2;
    v15[4] = sub_10004EB3C;
    v15[5] = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1000099BC;
    v15[3] = &unk_1000CEB18;
    v13 = _Block_copy(v15);
    v14 = a2;

    [v14 setDate:0 forKey:v11 completion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_10004CDEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10004CE98(uint64_t result, uint64_t a2, char a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v51 = _swiftEmptyArrayStorage;
      sub_10007C57C(0, v5, 0);
      v6 = _swiftEmptyArrayStorage;
      v7 = v4 + 64;
      v8 = -1 << *(v4 + 32);
      result = _HashTable.startBucket.getter();
      v9 = result;
      v10 = 0;
      v42 = v5;
      while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v4 + 32))
      {
        v12 = v9 >> 6;
        if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_38;
        }

        v43 = *(v4 + 36);
        v13 = (*(v4 + 48) + 16 * v9);
        v15 = *v13;
        v14 = v13[1];
        sub_100003B34(*(v4 + 56) + 32 * v9, v50);
        *&v46 = v15;
        *(&v46 + 1) = v14;
        sub_10004EB2C(v50, v47);
        v45[0] = v47[0];
        v45[1] = v47[1];
        v16 = v46;

        result = sub_100003B90(v45);
        v51 = v6;
        v17 = v6;
        v18 = v6[2];
        v19 = v17[3];
        if (v18 >= v19 >> 1)
        {
          result = sub_10007C57C((v19 > 1), v18 + 1, 1);
          v17 = v51;
        }

        v17[2] = v18 + 1;
        *&v17[2 * v18 + 4] = v16;
        v11 = 1 << *(v4 + 32);
        if (v9 >= v11)
        {
          goto LABEL_39;
        }

        v7 = v4 + 64;
        v20 = *(v4 + 64 + 8 * v12);
        if ((v20 & (1 << v9)) == 0)
        {
          goto LABEL_40;
        }

        v6 = v17;
        if (v43 != *(v4 + 36))
        {
          goto LABEL_41;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v12 << 6;
          v23 = v12 + 1;
          v24 = (v4 + 72 + 8 * v12);
          while (v23 < (v11 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_10000F210(v9, v43, 0);
              v11 = __clz(__rbit64(v25)) + v22;
              goto LABEL_5;
            }
          }

          result = sub_10000F210(v9, v43, 0);
        }

LABEL_5:
        ++v10;
        v9 = v11;
        if (v10 == v42)
        {
          goto LABEL_20;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
LABEL_20:
      v27 = v6[2];
      if (v27)
      {
        v28 = 0;
        v29 = v6 + 5;
        v30 = _swiftEmptyArrayStorage;
        do
        {
          v44 = v30;
          v31 = &v29[2 * v28];
          v32 = v28;
          while (1)
          {
            if (v32 >= v6[2])
            {
              __break(1u);
              goto LABEL_37;
            }

            v33 = *(v31 - 1);
            v34 = *v31;
            v28 = v32 + 1;
            v48 = v33;
            v49 = v34;
            *&v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v46 + 1) = v35;
            sub_100039898();

            v36 = StringProtocol.contains<A>(_:)();

            if (v36)
            {
              break;
            }

            v31 += 2;
            ++v32;
            if (v27 == v28)
            {
              v30 = v44;
              goto LABEL_34;
            }
          }

          v30 = v44;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10007C57C(0, v44[2] + 1, 1);
            v30 = v44;
          }

          v38 = v30[2];
          v37 = v30[3];
          if (v38 >= v37 >> 1)
          {
            result = sub_10007C57C((v37 > 1), v38 + 1, 1);
            v30 = v44;
          }

          v30[2] = v38 + 1;
          v39 = &v30[2 * v38];
          v39[4] = v33;
          v39[5] = v34;
          v29 = v6 + 5;
        }

        while (v27 - 1 != v32);
      }

      else
      {
        v30 = _swiftEmptyArrayStorage;
      }

LABEL_34:

      sub_10004CCA0(v30, a4, a3);
    }
  }

  return result;
}

uint64_t sub_10004D268(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v33 = *(a2 + 16);
        v29 = v4 - 1;
        v8 = _swiftEmptyArrayStorage;
        v32 = _swiftEmptyArrayStorage;
        v30 = a2 + 40;
        while (1)
        {
          v31 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = v8[2];
            if (v13 >= v3)
            {
              break;
            }

            v14 = *v9;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10007C57C(0, v13 + 1, 1);
            }

            v16 = v8[2];
            v15 = v8[3];
            if (v16 >= v15 >> 1)
            {
              result = sub_10007C57C((v15 > 1), v16 + 1, 1);
            }

            v8[2] = v16 + 1;
            v17 = &v8[2 * v16];
            v17[4] = v10;
            v17[5] = v11;
            v9 += 2;
            v5 = v12;
            if (v33 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v31 >= v13)
          {
            goto LABEL_33;
          }

          v18 = &v8[2 * v31];
          v19 = v18[5];
          v27 = v18[4];

          v28 = v19;

          v20 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10007C57C(0, v32[2] + 1, 1);
            v20 = v32;
          }

          v22 = v20[2];
          v21 = v20[3];
          if (v22 >= v21 >> 1)
          {
            sub_10007C57C((v21 > 1), v22 + 1, 1);
            v20 = v32;
          }

          v20[2] = v22 + 1;
          v32 = v20;
          v23 = &v20[2 * v22];
          v23[4] = v27;
          v23[5] = v28;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100033BA8(v8);
            v8 = result;
          }

          v7 = v30;
          if (v31 >= v8[2])
          {
            goto LABEL_34;
          }

          v24 = &v8[2 * v31];
          v25 = v24[5];
          v24[4] = v10;
          v24[5] = v11;

          if ((v31 + 1) < v3)
          {
            v6 = v31 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v29 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v32 = _swiftEmptyArrayStorage;
LABEL_29:

      return v32;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10004D4C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v5 = *(a4 + 16);
  if (v5)
  {
    v9 = (a4 + 16 + 16 * v5);
    v10 = *v9;
    v11 = v9[1];

    v12 = sub_10004D268(1, a4);
    v13 = String._bridgeToObjectiveC()();

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = v12;
    *(v14 + 32) = a5;
    v17[4] = sub_10004EF24;
    v17[5] = v14;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000099BC;
    v17[3] = &unk_1000CEB68;
    v15 = _Block_copy(v17);
    v16 = a5;

    [v16 setDate:0 forKey:v13 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_10004D610(char a1, ValueMetadata *a2, ValueMetadata *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  if (a2 || (a1 & 1) == 0)
  {
    static Logger.plugin.getter();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136315650;
      v43 = &type metadata for HKKeyValueDataSource.Identifier;
      v44 = v29;
      sub_10004EB90();
      v30 = String.init<A>(describing:)();
      v32 = sub_1000036D0(v30, v31, &v44);
      v42 = v6;
      v33 = v32;

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v43 = a3;
      type metadata accessor for HKEmergencyOnboardingStatus(0);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000036D0(v34, v35, &v44);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2080;
      v43 = a2;
      swift_errorRetain();
      sub_10004EBD8(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
      v37 = String.init<A>(describing:)();
      v39 = sub_1000036D0(v37, v38, &v44);

      *(v28 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Could not set emergency onboarding status to %s: %s", v28, 0x20u);
      swift_arrayDestroy();

      return (*(v7 + 8))(v11, v42);
    }

    v24 = *(v7 + 8);
    v25 = v11;
  }

  else
  {
    static Logger.plugin.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315394;
      v43 = &type metadata for HKKeyValueDataSource.Identifier;
      v44 = v17;
      sub_10004EB90();
      v18 = String.init<A>(describing:)();
      v20 = sub_1000036D0(v18, v19, &v44);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v43 = a3;
      type metadata accessor for HKEmergencyOnboardingStatus(0);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000036D0(v21, v22, &v44);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Set emergency onboarding status to %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v24 = *(v7 + 8);
    v25 = v13;
  }

  return v24(v25, v6);
}

uint64_t sub_10004DA30()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10004DB64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004EEC4(*a1);
  *a2 = result;
  return result;
}

void sub_10004DB94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006574656C706DLL;
  v4 = 0x6F636E4920444545;
  if (v2 != 5)
  {
    v4 = 0xD000000000000017;
    v3 = 0x80000001000A5230;
  }

  v5 = 0x80000001000A51C0;
  v6 = 0xD000000000000021;
  if (v2 == 3)
  {
    v6 = 0xD000000000000023;
  }

  else
  {
    v5 = 0x80000001000A51F0;
  }

  if (*v1 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001000A5140;
  v8 = 0xD000000000000013;
  v9 = 0xD000000000000023;
  v10 = 0x80000001000A5160;
  if (v2 != 1)
  {
    v9 = 0xD000000000000026;
    v10 = 0x80000001000A5190;
  }

  if (*v1)
  {
    v8 = v9;
    v7 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10004DCA0()
{
  v58 = type metadata accessor for SectionedDataSourceContainerViewType();
  v0 = *(v58 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v58);
  v57 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004EBD8(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v56 = v39 - v5;
  v55 = type metadata accessor for CellDeselectionBehavior();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v54 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UUID();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v61);
  v60 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ContentConfigurationItem();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v53);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _swiftEmptyArrayStorage;
  sub_10007C53C(0, 7, 0);
  v16 = v64;
  v51 = objc_opt_self();
  v17 = 0;
  v50 = 0x80000001000A5230;
  v48 = 0x80000001000A51F0;
  v47 = 0x80000001000A51C0;
  v46 = 0x80000001000A5190;
  v45 = 0x80000001000A5160;
  v44 = 0x80000001000A5140;
  v59 = (v9 + 8);
  v43 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v42 = (v6 + 104);
  v41 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v40 = (v0 + 104);
  v52 = v12;
  v39[2] = v12 + 32;
  do
  {
    v18 = *(&off_1000CC208 + v17 + 32);
    *(swift_allocObject() + 16) = v18;
    v19 = v60;
    UUID.init()();
    UUID.uuidString.getter();
    v49 = *v59;
    v49(v19, v61);
    v63[3] = type metadata accessor for UIListContentConfiguration();
    v63[4] = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(v63);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v20 = [v51 tintColor];
    v21 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v21(v62, 0);

    v23 = v54;
    v22 = v55;
    *v54 = 1;
    (*v42)(v23, v43, v22);
    v24 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v24 - 8) + 56))(v56, 1, 1, v24);
    (*v40)(v57, v41, v58);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v64 = v16;
    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_10007C53C(v25 > 1, v26 + 1, 1);
      v16 = v64;
    }

    ++v17;
    *(v16 + 16) = v26 + 1;
    (*(v52 + 32))(v16 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v26, v15, v53);
  }

  while (v17 != 7);
  sub_10004EBD8(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v27 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  sub_10009C004(v16);

  v30 = v60;
  UUID.init()();
  UUID.uuidString.getter();
  v31 = v61;
  v32 = v49;
  v49(v30, v61);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v63[0] = 0x3C53447961727241;
  v63[1] = 0xE800000000000000;
  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v32(v30, v31);
  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 62;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10004E53C(void *a1, char a2)
{
  v4 = sub_10004C17C(a2);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  v7 = 0xE300000000000000;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v9 = sub_10004C1C8(a2);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v7 = v10;
  }

  _StringGuts.grow(_:)(17);

  v12._countAndFlagsBits = v6;
  v12._object = v8;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x203A65756C61560ALL;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v11;
  v14._object = v7;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:{1, 0x203A79654BLL, 0xE500000000000000}];

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = String._bridgeToObjectiveC()();
  v25[4] = sub_10004EAD4;
  v25[5] = v18;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100087848;
  v25[3] = &unk_1000CEA28;
  v20 = _Block_copy(v25);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v17 addAction:v22];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 actionWithTitle:v23 style:1 handler:0];

  [v17 addAction:v24];
  [a1 presentViewController:v17 animated:1 completion:0];
}

unint64_t sub_10004E96C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_10004E9E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_10004EA48(uint64_t a1)
{
  *(a1 + 8) = sub_10004EDD4(&qword_1000DBFD0, type metadata accessor for HKKeyValueDataSource);
  result = sub_10004EDD4(&qword_1000DBFD8, type metadata accessor for HKKeyValueDataSource);
  *(a1 + 24) = result;
  return result;
}

_OWORD *sub_10004EB2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004EB48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10004EB90()
{
  result = qword_1000DBFE0;
  if (!qword_1000DBFE0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000DBFE0);
  }

  return result;
}

void sub_10004EBD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for HKKeyValueDataSource.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HKKeyValueDataSource.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10004EDD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10004EE1C()
{
  if (!qword_1000DBFF0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBFF0);
    }
  }
}

unint64_t sub_10004EE70()
{
  result = qword_1000DBFF8;
  if (!qword_1000DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBFF8);
  }

  return result;
}

unint64_t sub_10004EEC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CC928, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004EF3C(uint64_t a1, void *a2)
{
  sub_10000ACE8(a1, v15);
  v3 = [objc_opt_self() primaryProfile];
  v4 = objc_allocWithZone(type metadata accessor for PersonalizedFeedDataSource());
  v4[qword_1000DC598] = 1;
  sub_10000BFFC(v15, v15[3]);
  v5 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v6 = NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)();

  isa = [v6 fetchRequest];
  v8 = [(objc_class *)isa relationshipKeyPathsForPrefetching];
  if (v8)
  {
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061574(&off_1000CC9F0);
    if (v10)
    {
      v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:v11.super.isa, v10];

    isa = v11.super.isa;
  }

  else
  {
    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:0];
  }

  *&v4[qword_1000DC590] = a2;
  v12 = a2;
  v13 = FetchedResultsControllerDataSource.init(_:)();

  sub_100003B90(v15);
  return v13;
}

uint64_t sub_10004F0FC()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v5 = ListLayoutConfiguration.layout(for:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_10004F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100017380(0, &qword_1000DC068, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v17 - v12;
  sub_100017380(0, &qword_1000DC0C0, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource);
  v14 = method lookup function for HideableDataSource();
  v14(a1, a2, a3, a4);
  dispatch thunk of HideableDataSource.wrappedDataSource.getter();
  HeaderFooterDataSourceWithLayout.mainDataSource.getter();

  swift_getObjectType();
  LOBYTE(a4) = SnapshotDataSource.isEmpty.getter();
  swift_unknownObjectRelease();
  v15 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if ((a4 & 1) == 0)
  {
    v15 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v10 + 104))(v13, *v15, v9);
  return dispatch thunk of HideableDataSource.visibility.setter();
}

uint64_t sub_10004F3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100017380(0, &qword_1000DC068, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  sub_10002ACA0();
  v22 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017380(0, &qword_1000DC0C0, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource);
  v19 = method lookup function for HideableDataSource();

  v19(v16, v18, v15, a5);

  dispatch thunk of HideableDataSource.wrappedDataSource.getter();
  HeaderFooterDataSourceWithLayout.mainDataSource.getter();

  swift_getObjectType();
  LOBYTE(a5) = SnapshotDataSource.isEmpty.getter();
  swift_unknownObjectRelease();
  v20 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if ((a5 & 1) == 0)
  {
    v20 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v7 + 104))(v10, *v20, v23);
  dispatch thunk of HideableDataSource.visibility.setter();

  return (*(v12 + 8))(v15, v22);
}

uint64_t sub_10004F67C()
{
  sub_10004FC4C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = static FeatureStatusSupport.isHealthChecklistAvailablePublisher()();
  sub_10000CB1C();
  sub_100012940(&qword_1000DB190, sub_10000CB1C);
  Publisher.dropFirst(_:)();
  swift_allocObject();
  swift_weakInit();
  sub_100012940(&qword_1000DC0D0, sub_10004FC4C);
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004F878(unsigned __int8 *a1)
{
  sub_100017380(0, &qword_1000DC070, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v12 - v6;
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + qword_1000DC008);

    v11 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
    if (!v8)
    {
      v11 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
    }

    (*(v4 + 104))(v7, *v11, v3);
    dispatch thunk of HideableDataSource.visibility.setter();
  }

  return result;
}

void sub_10004F9EC(void *a1)
{
  v2 = type metadata accessor for HealthChecklistOpenedAnalyticsSource();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HealthChecklistOpenedAnalyticsSource.getMoreFromHealth(_:));
  v6 = objc_allocWithZone(type metadata accessor for HealthChecklistViewController());
  v7 = HealthChecklistViewController.init(sender:isDoneButtonVisible:)();
  [a1 showViewController:v7 sender:a1];
}

uint64_t sub_10004FB18()
{
  v1 = *(v0 + qword_1000DC000);

  v2 = *(v0 + qword_1000DC008);

  v3 = *(v0 + qword_1000DC010);
}

uint64_t sub_10004FB68()
{
  v0 = HideableDataSource.deinit();
  v1 = *(v0 + qword_1000DC000);

  v2 = *(v0 + qword_1000DC008);

  v3 = *(v0 + qword_1000DC010);

  return swift_deallocClassInstance();
}

unint64_t sub_10004FC00()
{
  result = qword_1000DC0B8;
  if (!qword_1000DC0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC0B8);
  }

  return result;
}

void sub_10004FC4C()
{
  if (!qword_1000DC0C8)
  {
    sub_10000CB1C();
    sub_100012940(&qword_1000DB190, sub_10000CB1C);
    v0 = type metadata accessor for Publishers.Drop();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC0C8);
    }
  }
}

uint64_t type metadata accessor for MiscellaneousItemsDataSource()
{
  result = qword_1000DC0F0;
  if (!qword_1000DC0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004FD74(void *a1, char a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(type metadata accessor for HealthSharingInternalSettingsViewController());
    v11 = HealthSharingInternalSettingsViewController.init()();
    v4 = [a1 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 pushViewController:v11 animated:1];
    }
  }

  else
  {
    v6 = [objc_allocWithZone(HKHealthStore) init];
    type metadata accessor for PinnedContentManager();
    v7 = v6;
    PinnedContentManager.__allocating_init(healthStore:domain:)();
    type metadata accessor for SharedProfileOverviewViewController();
    v11 = v7;
    UIViewController.resolvedHealthExperienceStore.getter();

    v8 = SharedProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)();
    v9 = [a1 navigationController];
    if (v9)
    {
      v10 = v9;
      [v9 pushViewController:v8 animated:1];
    }
  }
}

uint64_t sub_10004FEEC()
{
  v0 = type metadata accessor for ContentConfigurationItem();
  v96 = *(v0 - 8);
  v1 = *(v96 + 64);
  __chkstk_darwin(v0);
  v95 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SectionedDataSourceContainerViewType();
  v116 = *(v110 - 8);
  v3 = *(v116 + 64);
  __chkstk_darwin(v110);
  v109 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051028(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v108 = &v73 - v7;
  v106 = type metadata accessor for CellDeselectionBehavior();
  v115 = *(v106 - 8);
  v8 = *(v115 + 64);
  __chkstk_darwin(v106);
  v107 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051028(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v73 - v12;
  v104 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v113 = *(v104 - 8);
  v14 = *(v113 + 64);
  __chkstk_darwin(v104);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UICellAccessory.DisplayedState();
  v17 = *(v101 - 8);
  v18 = v17[8];
  __chkstk_darwin(v101);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051028(0, &qword_1000DB6C8, sub_100050F74, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  v114 = xmmword_1000AE100;
  *(inited + 16) = xmmword_1000AE100;
  v97 = v0;
  *(inited + 56) = v0;
  v90 = sub_100050FD8(&qword_1000DC150, &type metadata accessor for ContentConfigurationItem);
  *(inited + 64) = v90;
  v103 = inited;
  v102 = sub_10000AD4C((inited + 32));
  v100 = swift_allocObject();
  *(v100 + 16) = 0;
  UUID.init()();
  v99 = UUID.uuidString.getter();
  v98 = v27;
  v28 = *(v22 + 8);
  v112 = v21;
  v111 = v22 + 8;
  v105 = v28;
  v28(v25, v21);
  v89 = type metadata accessor for UIListContentConfiguration();
  v119 = v89;
  v120 = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(&v118);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v88 = objc_opt_self();
  v29 = [v88 labelColor];
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v30(v117, 0);
  sub_100051028(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v32 = v31;
  v33 = *(type metadata accessor for UICellAccessory() - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = v34 + *(v33 + 72);
  v86 = v32;
  v85 = v35;
  *(swift_allocObject() + 16) = v114;
  v36 = v17[13];
  v84 = enum case for UICellAccessory.DisplayedState.always(_:);
  v37 = v101;
  v83 = v36;
  v36(v20);
  v38 = type metadata accessor for UICellAccessory.LayoutDimension();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v82 = v38;
  v81 = v40;
  v80 = v39 + 56;
  (v40)(v13, 1, 1);
  v94 = v13;
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  v87 = v34;
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  v41 = *(v113 + 8);
  v93 = v16;
  v113 += 8;
  v79 = v41;
  v41(v16, v104);
  v42 = v37;
  v43 = v17[1];
  v91 = v20;
  v44 = v20;
  v45 = v42;
  v92 = v17 + 1;
  v43(v44);
  v46 = *(v115 + 104);
  v78 = enum case for CellDeselectionBehavior.default(_:);
  v115 += 104;
  v77 = v46;
  v46(v107);
  v47 = type metadata accessor for UIBackgroundConfiguration();
  v48 = *(v47 - 8);
  v76 = *(v48 + 56);
  v75 = v48 + 56;
  v76(v108, 1, 1, v47);
  v49 = *(v116 + 104);
  v74 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v116 += 104;
  v73 = v49;
  v49(v109);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  if (static HealthSharingFeatureManager.isFeatureFlagEnabled.getter())
  {
    v102 = swift_allocObject();
    *(v102 + 16) = 1;
    UUID.init()();
    v100 = UUID.uuidString.getter();
    v99 = v50;
    v105(v25, v112);
    v119 = v89;
    v120 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&v118);
    static UIListContentConfiguration.cell()();
    UIListContentConfiguration.text.setter();
    v51 = [v88 labelColor];
    v52 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v52(v117, 0);
    *(swift_allocObject() + 16) = v114;
    v53 = v91;
    v54 = v45;
    v83(v91, v84, v45);
    v81(v94, 1, 1, v82);
    v55 = v43;
    v56 = v93;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    v79(v56, v104);
    v55(v53, v54);
    v77(v107, v78, v106);
    v76(v108, 1, 1, v47);
    v73(v109, v74, v110);
    v57 = v95;
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v58 = sub_100031758(1, 2, 1, v103);
    v59 = v97;
    v119 = v97;
    v120 = v90;
    v60 = sub_10000AD4C(&v118);
    v61 = v96;
    (*(v96 + 16))(v60, v57, v59);
    v58[2] = 2;
    sub_100014D24(&v118, (v58 + 9));
    (*(v61 + 8))(v57, v59);
  }

  else
  {
    v58 = v103;
  }

  sub_100051028(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v62 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  *(swift_allocObject() + 16) = v114;
  sub_10009C1FC(v58);

  UUID.init()();
  UUID.uuidString.getter();
  v65 = v112;
  v66 = v105;
  v105(v25, v112);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  *&v118 = 0x3C53447961727241;
  *(&v118 + 1) = 0xE800000000000000;
  UUID.init()();
  v67 = UUID.uuidString.getter();
  v69 = v68;
  v66(v25, v65);
  v70._countAndFlagsBits = v67;
  v70._object = v69;
  String.append(_:)(v70);

  v71._countAndFlagsBits = 62;
  v71._object = 0xE100000000000000;
  String.append(_:)(v71);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

unint64_t sub_100050E14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_100050E90(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_100050EF0(uint64_t a1)
{
  *(a1 + 8) = sub_100050FD8(&qword_1000DC140, type metadata accessor for MiscellaneousItemsDataSource);
  result = sub_100050FD8(&qword_1000DC148, type metadata accessor for MiscellaneousItemsDataSource);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_100050F74()
{
  result = qword_1000DB6D0;
  if (!qword_1000DB6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB6D0);
  }

  return result;
}

uint64_t sub_100050FD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100051028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100051090()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckVersion;
  sub_10000E5C0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckDate;
  sub_10000E6E8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_10005117C()
{
  sub_100055040();
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup);
  *(v1 + 16) = xmmword_1000AE110;
  v3 = *(v0 + OBJC_IVAR____TtC6Health16TabBarController_summaryTab);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v14 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC6Health16TabBarController_sharingTab);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v14 + 16) >= *(v14 + 24) >> 1)
  {
LABEL_11:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = 0;
  v9 = *(v14 + 16);
  while (v9 != v8)
  {
    if (v8 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    v10 = *(v14 + 8 * v8++ + 32);
    if (v10)
    {
      v11 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100051304(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setSelectedTab:*&a1[OBJC_IVAR____TtC6Health16TabBarController_searchTab]];
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_10005489C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CEE40;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000548A4(&qword_1000DAD40, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005FF4(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_10005160C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6Health16TabBarController_searchViewController);
  v2 = dispatch thunk of SearchViewController.searchController.getter();
  v3 = [v2 searchBar];

  [v3 becomeFirstResponder];
}

void sub_100051684(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = [v3 presentedViewController];
  if (v20)
  {
    v53 = a2;
    v54 = v6;
    v59 = v20;
    v21 = v20;
    sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
    sub_100009630(0, &qword_1000DC3F0);
    v22 = v21;
    if (swift_dynamicCast())
    {
      sub_10000D544(&aBlock, &unk_1000DC3F8, &qword_1000DC3F0, &protocol descriptor for StartupNotDismissible, sub_100055124);
      static Logger.view.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "asked to dismiss but the present view controller is StartupNotDismissible", v25, 2u);
      }

      else
      {
      }

      (*(v7 + 8))(v19, v54);
    }

    else
    {
      v57 = 0;
      aBlock = 0u;
      v56 = 0u;
      sub_10000D544(&aBlock, &unk_1000DC3F8, &qword_1000DC3F0, &protocol descriptor for StartupNotDismissible, sub_100055124);
      if ([v22 isBeingDismissed])
      {
        static Logger.view.getter();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&aBlock = v38;
          *v37 = 136315138;
          v39 = _typeName(_:qualified:)();
          v41 = sub_1000036D0(v39, v40, &aBlock);

          *(v37 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Presented View Controller Already Being Dismissed", v37, 0xCu);
          sub_100003B90(v38);
        }

        v42 = (*(v7 + 8))(v14, v54);
        if (a1)
        {
          a1(v42);
        }
      }

      else
      {
        static Logger.view.getter();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&aBlock = v52;
          *v45 = 136315138;
          v46 = _typeName(_:qualified:)();
          v48 = v22;
          v49 = sub_1000036D0(v46, v47, &aBlock);

          *(v45 + 4) = v49;
          v22 = v48;
          _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Presented View Controller Dismissing", v45, 0xCu);
          sub_100003B90(v52);
        }

        (*(v7 + 8))(v17, v54);
        if (a1)
        {
          v57 = a1;
          v58 = v53;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v56 = sub_100008310;
          *(&v56 + 1) = &unk_1000CEE68;
          v50 = _Block_copy(&aBlock);
        }

        else
        {
          v50 = 0;
        }

        [v3 dismissViewControllerAnimated:0 completion:v50];
        _Block_release(v50);
      }
    }
  }

  else
  {
    static Logger.view.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = a1;
      *&aBlock = v29;
      v30 = v29;
      *v28 = 136315138;
      v31 = _typeName(_:qualified:)();
      v33 = sub_1000036D0(v31, v32, &aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] No presented view controller to dismiss", v28, 0xCu);
      sub_100003B90(v30);
      a1 = v54;
    }

    v34 = (*(v7 + 8))(v11, v6);
    if (a1)
    {
      a1(v34);
    }
  }
}

uint64_t sub_100051D68()
{
  v1 = [v0 selectedTab];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewController];

    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  v5 = [v0 selectedTab];
  v6 = [v5 managingTabGroup];

  v7 = [v6 managingNavigationController];
  return v7;
}

id sub_100051F7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100052100(void *a1)
{
  v2 = v1;
  v4 = sub_100051D68();
  if (!v4 || (v5 = v4, v6 = UINavigationController.rootViewController()(), v5, !v6))
  {
    v6 = v2;
  }

  v7 = [v6 navigationController];

  if (!v7)
  {
    return 0;
  }

  sub_100003DDC(0, &qword_1000DC3A8, UINavigationController_ptr);
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  return v9 & 1;
}

void *sub_1000521BC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &ObjectType - v14;
  __chkstk_darwin(v13);
  v17 = &ObjectType - v16;
  v18 = [a1 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 && (v20 = [a1 traitCollection], v21 = objc_msgSend(v20, "horizontalSizeClass"), v20, v21 == 2))
  {
    sub_100003DDC(0, &qword_1000DD140, NSObject_ptr);
    v22 = *(v4 + OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup);

    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_12;
    }

    v23 = [v22 selectedChild];
    if (v23)
    {
      v24 = v23;
      v25 = *(v4 + OBJC_IVAR____TtC6Health16TabBarController_searchTab);
      sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
      v26 = v25;
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {
        goto LABEL_12;
      }
    }

    v28 = [v22 selectedChild];
    if (!v28)
    {
LABEL_12:
      static Logger.view.getter();

      v63 = a2;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v66 = 136315650;
        v67 = _typeName(_:qualified:)();
        v69 = sub_1000036D0(v67, v68, &v82);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2080;
        sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
        v70 = Array.description.getter();
        v72 = sub_1000036D0(v70, v71, &v82);

        *(v66 + 14) = v72;
        *(v66 + 22) = 2080;
        v73 = [v63 identifier];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = sub_1000036D0(v74, v76, &v82);

        *(v66 + 24) = v77;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%s] Returning proposedViewControllers: %s for %s in regular", v66, 0x20u);
        swift_arrayDestroy();
      }

      (*(v80 + 8))(v15, v81);
    }

    else
    {
      v29 = v28;

      static Logger.view.getter();

      v30 = a2;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v33 = 136315906;
        v34 = _typeName(_:qualified:)();
        v36 = sub_1000036D0(v34, v35, &v82);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
        v37 = Array.description.getter();
        v39 = sub_1000036D0(v37, v38, &v82);

        *(v33 + 14) = v39;
        *(v33 + 22) = 2080;
        a3 = _swiftEmptyArrayStorage;
        v40 = Array.description.getter();
        v42 = sub_1000036D0(v40, v41, &v82);

        *(v33 + 24) = v42;
        *(v33 + 32) = 2080;
        v43 = [v30 identifier];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_1000036D0(v44, v46, &v82);

        *(v33 + 34) = v47;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%s] Modifying view controllers: %s to %s for %s in regular", v33, 0x2Au);
        swift_arrayDestroy();

        (*(v80 + 8))(v17, v81);
      }

      else
      {

        (*(v80 + 8))(v17, v81);
        return _swiftEmptyArrayStorage;
      }
    }
  }

  else
  {
    static Logger.view.getter();

    v48 = a2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v51 = 136315650;
      v52 = _typeName(_:qualified:)();
      v54 = sub_1000036D0(v52, v53, &v82);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
      v55 = Array.description.getter();
      v57 = sub_1000036D0(v55, v56, &v82);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2080;
      v58 = [v48 identifier];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_1000036D0(v59, v61, &v82);

      *(v51 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%s] Returning proposedViewControllers: %s for %s in compact", v51, 0x20u);
      swift_arrayDestroy();
    }

    (*(v80 + 8))(v12, v81);
  }

  return a3;
}

void *sub_100052A58(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v3 = v1;
    v4 = v3;
    if (v2)
    {
      v5 = v3;
      v6 = [v2 viewControllers];
      sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 == 1)
      {
        v9 = UINavigationController.rootViewController()();
        v10 = sub_100052A58();

        return v10;
      }
    }

    ObjectType = swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = (*(v12 + 8))(ObjectType, v12);
    }

    else
    {
      v13 = [v4 view];
    }

    v10 = v13;

    return v10;
  }

  return result;
}

void sub_100052C6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeepLinkActivityType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for DeepLinkActivityType.allHealthData(_:) || v9 == enum case for DeepLinkActivityType.allTrends(_:))
  {
    goto LABEL_14;
  }

  v10 = v9 == enum case for DeepLinkActivityType.healthProfile(_:) || v9 == enum case for DeepLinkActivityType.medicalID(_:);
  v11 = v10 || v9 == enum case for DeepLinkActivityType.notificationSettings(_:);
  if (v11 || v9 == enum case for DeepLinkActivityType.profileAppSources(_:))
  {
    goto LABEL_14;
  }

  if (v9 == enum case for DeepLinkActivityType.sharingInviteFlow(_:) || v9 == enum case for DeepLinkActivityType.sharingOverview(_:) || v9 == enum case for DeepLinkActivityType.sharingProfile(_:))
  {
    v13 = OBJC_IVAR____TtC6Health16TabBarController_sharingTab;
    goto LABEL_15;
  }

  if (v9 == enum case for DeepLinkActivityType.summary(_:))
  {
LABEL_14:
    v13 = OBJC_IVAR____TtC6Health16TabBarController_summaryTab;
LABEL_15:
    v14 = *&v2[v13];
    goto LABEL_16;
  }

  v22 = *(v5 + 8);
  v14 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
  v22(v8, v4);
LABEL_16:
  v15 = [v2 selectedTab];
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = v15;
  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
LABEL_21:
    [v2 setSelectedTab:v14];
    goto LABEL_22;
  }

  v18 = sub_100051D68();
  if (v18)
  {
    v19 = v18;
  }

LABEL_22:
  sub_100051684(0, 0);
}

unint64_t sub_100052F1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [v2 tabs];
  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = TabIdentifier.identifier.getter();
  v9 = sub_100053280(v7, v8, v6);

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 viewController];
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  sub_100003DDC(0, &qword_1000DD140, NSObject_ptr);
  v12 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup];
  if (static NSObject.== infix(_:_:)())
  {

    v9 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
  }

  v13 = [v2 selectedTab];
  if (!v13 || (v14 = v13, v15 = v9, v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16 & 1) == 0))
  {
    [v3 setSelectedTab:v9];
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = sub_100051D68();
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 viewControllers];
  sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_27:

    return v11;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_12:
  v22 = __OFSUB__(v21, 1);
  result = v21 - 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (result >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v24 = *(v20 + 8 * result + 32);
LABEL_17:
  v25 = v24;

  if (static NSObject.== infix(_:_:)())
  {
    goto LABEL_22;
  }

  v26 = [v18 viewControllers];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v11;
  __chkstk_darwin(v28);
  v29[2] = &v30;
  LOBYTE(v26) = sub_1000545FC(sub_10005482C, v29, v27);

  if ((v26 & 1) == 0)
  {
LABEL_22:

LABEL_23:
    return v11;
  }

  return v11;
}

void *sub_100053280(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

        return v9;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        return v9;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 children];
        sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = sub_100053280(a1, a2, v19);

        if (v20)
        {
          return v20;
        }
      }

      else
      {
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

id sub_10005346C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v90 = *(v2 - 8);
  v91 = v2;
  v3 = *(v90 + 64);
  v4 = __chkstk_darwin(v2);
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v82 - v6;
  v87 = type metadata accessor for TabIdentifier();
  v85 = *(v87 - 8);
  v7 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for HKTypeGroup();
  v86 = *(v88 - 8);
  v9 = *(v86 + 64);
  __chkstk_darwin(v88);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HAUserActivity.RestorationInfoKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005FF4(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v82 - v18;
  v20 = type metadata accessor for DeepLinkActivityType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v93 = &v82 - v27;
  __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v95 = a1;
  v30 = NSUserActivity.fetchProfileIdentifier()();
  if (v30)
  {
    v31 = v30;
    if ([v30 type] != 1)
    {
      (*(v21 + 104))(v29, enum case for DeepLinkActivityType.sharingOverview(_:), v20);
      v51 = v94;
      sub_100052C6C(v29);
      (*(v21 + 8))(v29, v20);
      v52 = [v51 selectedViewController];
      v35 = &off_1000D7000;
      if (v52)
      {
        v53 = v52;
        [v52 restoreUserActivityState:v95];
      }

      v33 = type metadata accessor for TabBarController();
      v96 = v51;
      v34 = &v96;
      goto LABEL_38;
    }
  }

  v32 = [v95 activityType];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkActivityType.init(_:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100054FAC(v19);
    v33 = type metadata accessor for TabBarController();
    v102.receiver = v94;
    v34 = &v102;
LABEL_6:
    v35 = &off_1000D7000;
    goto LABEL_38;
  }

  v36 = v93;
  (*(v21 + 32))(v93, v19, v20);
  (*(v21 + 16))(v25, v36, v20);
  v37 = (*(v21 + 88))(v25, v20);
  v38 = v94;
  if (v37 == enum case for DeepLinkActivityType.allHealthData(_:) || v37 == enum case for DeepLinkActivityType.allTrends(_:) || v37 == enum case for DeepLinkActivityType.browse(_:))
  {
    goto LABEL_29;
  }

  if (v37 != enum case for DeepLinkActivityType.category(_:))
  {
    if (v37 != enum case for DeepLinkActivityType.dataTypeAddData(_:) && v37 != enum case for DeepLinkActivityType.dataTypeDetail(_:) && v37 != enum case for DeepLinkActivityType.dataTypeHighlights(_:) && v37 != enum case for DeepLinkActivityType.notificationSettings(_:))
    {
      if (v37 == enum case for DeepLinkActivityType.plugin(_:))
      {
        goto LABEL_31;
      }

      if (v37 != enum case for DeepLinkActivityType.sharingInviteFlow(_:) && v37 != enum case for DeepLinkActivityType.sharingOverview(_:) && v37 != enum case for DeepLinkActivityType.sharingProfile(_:) && v37 != enum case for DeepLinkActivityType.summary(_:))
      {
        v54 = v83;
        static Logger.general.getter();
        v55 = v95;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v99[0] = v59;
          *v58 = 136315138;
          v60 = [v55 activityType];
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          v64 = v61;
          v38 = v94;
          v65 = sub_1000036D0(v64, v63, v99);
          v36 = v93;

          *(v58 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v56, v57, "Unsupported activity type falling back to For You feed %s", v58, 0xCu);
          sub_100003B90(v59);

          (*(v90 + 8))(v83, v91);
        }

        else
        {

          (*(v90 + 8))(v54, v91);
        }

        [v38 setSelectedTab:*&v38[OBJC_IVAR____TtC6Health16TabBarController_summaryTab]];
        v81 = *(v21 + 8);
        v81(v36, v20);
        v81(v25, v20);
        v33 = type metadata accessor for TabBarController();
        v101 = v38;
        v34 = &v101;
        goto LABEL_6;
      }
    }

LABEL_29:
    sub_100052C6C(v36);
    v66 = [v38 selectedViewController];
    if (v66)
    {
      v35 = &off_1000D7000;
      v67 = v66;
      [v66 restoreUserActivityState:v95];

      (*(v21 + 8))(v36, v20);
      goto LABEL_32;
    }

LABEL_31:
    (*(v21 + 8))(v36, v20);
    v35 = &off_1000D7000;
    goto LABEL_32;
  }

  (*(v12 + 104))(v15, enum case for HAUserActivity.RestorationInfoKey.displayCategoryID(_:), v11);
  sub_1000548A4(&qword_1000DC3D8, 255, &type metadata accessor for HAUserActivity.RestorationInfoKey);
  NSUserActivity.retrieveUserInfoValueForKey<A>(_:)();
  (*(v12 + 8))(v15, v11);
  if (v99[3])
  {
    v39 = swift_dynamicCast();
    v40 = v92;
    if (v39)
    {
      v41 = v97;
      v42 = [objc_opt_self() categoryWithID:v97];
      if (v42)
      {
        v43 = v89;
        v83 = v42;
        static HKTypeGroup.typeGroup(for:)();
        v99[0] = v38;
        v44 = v84;
        *v84 = v41;
        v45 = v85;
        v46 = v87;
        v47 = (*(v85 + 104))(v44, enum case for TabIdentifier.category(_:), v87);
        v92 = &v82;
        __chkstk_darwin(v47);
        *(&v82 - 2) = v43;
        *(&v82 - 1) = v38;
        type metadata accessor for TabBarController();
        sub_1000548A4(&unk_1000DC3E0, v48, type metadata accessor for TabBarController);
        DeepLinkNavigator.openTabOrCreateOnSearch(tab:popToTabVC:orCreate:)();
        v50 = v49;
        (*(v45 + 8))(v44, v46);
        v35 = &off_1000D7000;
        [v50 restoreUserActivityState:v95];

        (*(v21 + 8))(v36, v20);
        (*(v86 + 8))(v89, v88);
LABEL_32:
        v33 = type metadata accessor for TabBarController();
        v100 = v38;
        v34 = &v100;
        goto LABEL_38;
      }
    }
  }

  else
  {
    sub_10000D544(v99, &qword_1000DB160, &type metadata for Any + 8, &type metadata accessor for Optional, sub_100003D8C);
    v40 = v92;
  }

  static Logger.view.getter();
  v68 = v95;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v99[0] = v72;
    *v71 = 136446210;
    v73 = v68;
    v74 = [v73 description];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = v75;
    v38 = v94;
    v79 = sub_1000036D0(v78, v77, v99);

    *(v71 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v69, v70, "Couldn't unpack the type group from the sending NSUserActivity. sender = %{public}s", v71, 0xCu);
    sub_100003B90(v72);

    (*(v90 + 8))(v92, v91);
    (*(v21 + 8))(v93, v20);
  }

  else
  {

    (*(v90 + 8))(v40, v91);
    (*(v21 + 8))(v36, v20);
  }

  v35 = &off_1000D7000;
  v33 = type metadata accessor for TabBarController();
  v98 = v38;
  v34 = &v98;
LABEL_38:
  v34->super_class = v33;
  return objc_msgSendSuper2(v34, v35[334], v95);
}

uint64_t sub_10005412C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKTypeGroup();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(v7 + 16))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v8 = *(a2 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore);
  sub_10000ACE8(a2 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore, v13);
  sub_10000ACE8(a2 + OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManager, v12);
  v9 = objc_allocWithZone(type metadata accessor for CategoryViewController());
  v10 = v8;
  return CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)();
}

id sub_100054478()
{
  v1 = [*v0 selectedTab];

  return v1;
}

uint64_t sub_1000544F8()
{
  v1 = *v0;
  [v1 setSelectedTab:*&v1[OBJC_IVAR____TtC6Health16TabBarController_searchTab]];
  v2 = *&v1[OBJC_IVAR____TtC6Health16TabBarController_searchViewController];
  return dispatch thunk of SearchViewController.loadSearchingState(query:)();
}

id sub_100054574(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [v3 *a3];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000545A4(uint64_t a1, uint64_t a2)
{
  result = sub_1000548A4(&qword_1000DC3A0, a2, type metadata accessor for TabBarController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000545FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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

uint64_t (*sub_100054724(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_100055200;
  }

  __break(1u);
  return result;
}

void (*sub_1000547A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100054824;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005482C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1000548A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1000548EC(void *a1, id a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003DDC(0, &qword_1000DD140, NSObject_ptr);
  v12 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup];
  v45 = v11;
  if (static NSObject.== infix(_:_:)())
  {
    if (!a2)
    {
      return;
    }

    v13 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
    sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
    v14 = v13;
    a2 = a2;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      static Logger.view.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v45;
        *v18 = 136315138;
        v19 = _typeName(_:qualified:)();
        v21 = sub_1000036D0(v19, v20, &v46);

        *(v18 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%s] searchTabGroup selected from searchTab, custom logic to ignore and reselect searchTab", v18, 0xCu);
        sub_100003B90(v45);
      }

      (*(v7 + 8))(v10, v6);
      [v3 setSelectedTab:v14];
      return;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v14 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
  }

  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v22 = a2;
  v23 = v14;
  v24 = static NSObject.== infix(_:_:)();

  if (v24 & 1) != 0 || (v25 = v22, v26 = v12, v27 = static NSObject.== infix(_:_:)(), v26, v25, (v27))
  {
    v28 = v22;
    v29 = a1;
    v30 = static NSObject.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      String._bridgeToObjectiveC()();
      v31 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
      v32 = PostNotificationOperation.init(name:userInfo:)();
      sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
      v33 = static NSOperationQueue.userInitiated.getter();
      [v33 addOperation:v32];
    }
  }

  v34 = v22;
  v35 = a1;
  v36 = static NSObject.== infix(_:_:)();

  if (v36)
  {
    v37 = [v3 selectedViewController];
    v44 = sub_100052A58(v37);

    if (v44)
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        [v38 _scrollToTopIfPossible:1];
        if (static NSObject.== infix(_:_:)())
        {
          v39 = *&v3[OBJC_IVAR____TtC6Health16TabBarController_searchViewController];
          v40 = dispatch thunk of SearchViewController.searchController.getter();
          v41 = [v40 searchBar];

          [v41 becomeFirstResponder];
        }
      }

      v42 = v44;
    }
  }
}

id sub_100054DA4(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() itemFromRequest:a1];
  UITabSidebarItem.defaultContentConfiguration()();
  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v8(v15, 0);
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v9(v15, 0);
  v10 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.minimumScaleFactor.setter();
  v10(v15, 0);
  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.allowsDefaultTighteningForTruncation.setter();
  v11(v15, 0);
  v15[3] = v2;
  v15[4] = &protocol witness table for UIListContentConfiguration;
  v12 = sub_10000AD4C(v15);
  (*(v3 + 16))(v12, v6, v2);
  UITabSidebarItem.contentConfiguration.setter();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_100054FAC(uint64_t a1)
{
  sub_100005FF4(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100055040()
{
  if (!qword_1000DC400)
  {
    sub_1000550B4(255, &qword_1000DC408, &type metadata accessor for Optional);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC400);
    }
  }
}

void sub_1000550B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100003DDC(255, &qword_1000DC3B0, UITab_ptr);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100055124(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100009630(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10005517C()
{
  result = qword_1000DC480;
  if (!qword_1000DC480)
  {
    sub_1000550B4(255, &qword_1000DC478, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC480);
  }

  return result;
}

uint64_t sub_100055214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100055288()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC6Health32TipTileForLoggingHeaderViewModel__hasUserDismissedTipTile;
  sub_10005543C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipTileForLoggingHeaderViewModel()
{
  result = qword_1000DC4C0;
  if (!qword_1000DC4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100055390()
{
  sub_10005543C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10005543C()
{
  if (!qword_1000DD100)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD100);
    }
  }
}

uint64_t sub_10005548C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TipTileForLoggingHeaderViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000554CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10005554C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_100055600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalizedFeedDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100055650()
{
  if (!qword_1000DC5F8)
  {
    type metadata accessor for FeedSection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC5F8);
    }
  }
}

void sub_1000556A8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
    sub_100057160();
    Set.Iterator.init(_cocoa:)();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100003DDC(0, &qword_1000DD220, UIScene_ptr), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_10000F754();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_10005595C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(HKHealthStore) init];
  *a1 = result;
  return result;
}

id sub_100055B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100055BD0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10000F0C8(v2, &qword_1000DD220, UIScene_ptr);

  return v3;
}

uint64_t sub_100055C98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000571C8();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100055EB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005723C();
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

void sub_100056108(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_100056304(a1, a2, v20, a3);
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

void *sub_100056274(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_100056108(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_100056304(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000571C8();
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

uint64_t sub_1000564EC(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for AdvertisableFeatureModel();
      swift_dynamicCast();
      return v12;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    type metadata accessor for AdvertisableFeatureModel();
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = *(a4 + 40);
    sub_100003E7C(&qword_1000DBDA8, 255, &type metadata accessor for AdvertisableFeatureModel);
    v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v8 = -1 << *(a4 + 32);
    v5 = v7 & ~v8;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v9 = ~v8;
      sub_100003E7C(&unk_1000DC690, 255, &type metadata accessor for AdvertisableFeatureModel);
      do
      {
        v11 = *(*(a4 + 48) + 8 * v5);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v9;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v10 = *(*(a4 + 48) + 8 * v5);
}

void sub_100056754(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003DDC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003DDC(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10005696C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    static Logger.general.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      type metadata accessor for OpenURLOptionsKey(0);
      sub_100003E7C(&qword_1000DA758, 255, type metadata accessor for OpenURLOptionsKey);
      v13 = Dictionary.description.getter();
      v15 = sub_1000036D0(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Legacy openURL method on AppDelegate does not support options: %s", v11, 0xCu);
      sub_100003B90(v12);
    }

    (*(v5 + 8))(v8, v4);
  }

  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 connectedScenes];

  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = sub_10000F0C8(v18, &qword_1000DD220, UIScene_ptr);

  if (v19)
  {
    if ([v19 delegate])
    {
      type metadata accessor for SceneDelegate();
      if (swift_dynamicCastClass())
      {
        sub_100067E04(a1, 0);
        swift_unknownObjectRelease();

        return 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

id sub_100056C98()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v38[2] = 0;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v19 = *(v2 + 32);
    v5 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  v4 = &_swiftEmptySetSingleton;
  v40 = &_swiftEmptySetSingleton;
  v2 = __CocoaSet.makeIterator()();
  v5 = v2;
  for (i = __CocoaSet.Iterator.next()(); i; i = __CocoaSet.Iterator.next()())
  {
    v38[3] = i;
    swift_dynamicCast();
    v7 = v39;
    if ([v39 activationState])
    {
    }

    else
    {
      v8 = v4[2];
      if (v4[3] <= v8)
      {
        sub_100055C98(v8 + 1);
      }

      v4 = v40;
      v5 = v39;
      v9 = NSObject._rawHashValue(seed:)(v40[5]);
      v10 = (v40 + 7);
      v11 = -1 << *(v40 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~v40[(v12 >> 6) + 7]) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~v40[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            goto LABEL_43;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *&v10[8 * v13];
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(v4[6] + 8 * v14) = v7;
      ++v4[2];
    }

    v5 = v2;
  }

LABEL_37:
  sub_1000556A8(v4);
  v2 = v33;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v2 + 32);
LABEL_42:
        v35 = v34;

        return v35;
      }

      __break(1u);
LABEL_49:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v37 = swift_slowAlloc();
        v4 = sub_100056274(v37, v5, v2, sub_100055B94);

        goto LABEL_37;
      }

LABEL_22:
      v38[1] = v38;
      __chkstk_darwin(v3);
      v21 = v38 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v21, v20);
      v22 = 0;
      v23 = 0;
      v24 = 1 << *(v2 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v2 + 56);
      v27 = (v24 + 63) >> 6;
      while (v26)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_32:
        v31 = v28 | (v23 << 6);
        if (![*(*(v2 + 48) + 8 * v31) activationState])
        {
          *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_100056304(v21, v5, v22, v2);
            goto LABEL_37;
          }
        }
      }

      v29 = v23;
      while (1)
      {
        v23 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v23 >= v27)
        {
          goto LABEL_36;
        }

        v30 = *(v2 + 56 + 8 * v23);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_32;
        }
      }

LABEL_43:
      __break(1u);
    }

    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_45:

  return 0;
}

unint64_t sub_100057160()
{
  result = qword_1000DC640;
  if (!qword_1000DC640)
  {
    sub_100003DDC(255, &qword_1000DD220, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC640);
  }

  return result;
}

void sub_1000571C8()
{
  if (!qword_1000DC648)
  {
    sub_100003DDC(255, &qword_1000DD220, UIScene_ptr);
    sub_100057160();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC648);
    }
  }
}

void sub_10005723C()
{
  if (!qword_1000DC658)
  {
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC658);
    }
  }
}

void *sub_100057294(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v16[3] = sub_10002C1C4();
  v20 = type metadata accessor for CloudSyncBuddyAvailabilityProvider();
  sub_100058DC0();
  v11 = String.init<A>(describing:)();
  v16[1] = v12;
  v16[2] = v11;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100007D04(&unk_1000DD150, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100006058(0, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_100007DDC(&unk_1000DD160, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v19;
  v2[2] = v18;
  v2[3] = v14;
  v2[4] = v13;
  return v2;
}

void sub_100057524(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100057DB0(a1, a2, a3, a4);
}

uint64_t sub_100057570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = dispatch_semaphore_create(0);
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = type metadata accessor for CloudSyncState();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v34 = a1;
  v22 = *(a1 + 16);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v18;
  v24[4] = v17;

  v35 = v17;
  dispatch thunk of CloudSyncStateObserver.stateChangeHandler.setter();

  dispatch thunk of CloudSyncStateObserver.startObservingStateChanges()();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v10 + 8);
  v25(v14, v9);
  LOBYTE(v23) = OS_dispatch_semaphore.wait(timeout:)();
  v25(v16, v9);
  dispatch thunk of CloudSyncStateObserver.stateChangeHandler.setter();
  sub_10002C1C4();
  v26 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = v18;
  *(v27 + 32) = v23 & 1;
  v28 = v38;
  *(v27 + 40) = v37;
  *(v27 + 48) = v28;
  aBlock[4] = sub_10005836C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CF098;
  v29 = _Block_copy(aBlock);

  v30 = v36;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006058(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100007DDC(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  v32 = v39;
  v31 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v43 + 8))(v32, v31);
  (*(v41 + 8))(v30, v42);
}

Swift::Int sub_100057ACC(uint64_t a1)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11[-v4];
  v6 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);

    dispatch thunk of CloudSyncStateObserver.stateChangeHandler.setter();
  }

  sub_100058C6C(a1, v5);
  v9 = type metadata accessor for CloudSyncState();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_100058D2C(v5, v6);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100057C4C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_10005837C(v12, v11);
  sub_100058410(v11, a3 & 1, a4, a5);
  return sub_100058AE4(v11);
}

uint64_t sub_100057D44()
{

  return swift_deallocClassInstance();
}

void sub_100057DB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v44 = a4;
  v23[4] = a4;
  v24 = *(a1 + 24);

  v25 = a3;
  v26 = [v24 aida_accountForPrimaryiCloudAccount];
  if (!v26)
  {
    static Logger.cloudSync.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "No account, skip enable cloud sync buddy", v34, 2u);
    }

    (*(v42 + 8))(v22, v43);
    sub_100070280(2, a2, v25, v44);
    goto LABEL_12;
  }

  v38 = v25;

  v27 = [v24 aa_primaryAppleAccount];
  if (!v27)
  {
LABEL_11:
    v35 = *(a1 + 32);
    v36 = swift_allocObject();
    v36[2] = a1;
    v36[3] = sub_100058348;
    v36[4] = v23;
    aBlock[4] = sub_100058354;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000CEFF8;
    v37 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006058(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100007DDC(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v41 + 8))(v11, v8);
    (*(v39 + 8))(v15, v40);

LABEL_12:

    return;
  }

  v28 = v27;
  if (([v27 aa_isManagedAppleID] & 1) == 0)
  {

    goto LABEL_11;
  }

  static Logger.cloudSync.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Account is a Managed Apple ID, skip enable cloud sync buddy", v31, 2u);
  }

  (*(v42 + 8))(v20, v43);
  sub_100070280(3, a2, v38, v44);
}

Swift::Int sub_100058360(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100057ACC(a1);
}

uint64_t sub_10005837C(uint64_t a1, uint64_t a2)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058410(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v78 = a4;
  v79 = a3;
  v6 = type metadata accessor for CloudSyncState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v73 = &v68 - v12;
  v13 = __chkstk_darwin(v11);
  v74 = &v68 - v14;
  __chkstk_darwin(v13);
  v70 = &v68 - v15;
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  v75 = v16;
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v68 - v21;
  v23 = type metadata accessor for Logger();
  v76 = *(v23 - 8);
  v77 = v23;
  v24 = *(v76 + 64);
  v25 = __chkstk_darwin(v23);
  v72 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v71 = &v68 - v28;
  __chkstk_darwin(v27);
  v30 = &v68 - v29;
  sub_100058B70();
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v33 + 56);
  sub_10005837C(a1, v35);
  v37 = a2;
  v38 = a2 & 1;
  v35[v36] = v38;
  if ((*(v7 + 48))(v35, 1, v6) == 1)
  {
LABEL_4:
    static Logger.cloudSync.getter();
    sub_10005837C(a1, v22);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v41 = 136446466;
      sub_10005837C(v22, v20);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      sub_100058AE4(v22);
      v45 = sub_1000036D0(v42, v44, &v81);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v80 = v38;
      v46 = String.init<A>(describing:)();
      v48 = sub_1000036D0(v46, v47, &v81);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "state: %{public}s, timeoutResult: %{public}s, healthd did not respond fast enough, skip enable cloud sync buddy", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100058AE4(v22);
    }

    (*(v76 + 8))(v30, v77);
    v49 = 1;
    return v79(v49);
  }

  if (v37)
  {
    sub_100058AE4(v35);
    goto LABEL_4;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || !EnumCaseMultiPayload && (v52 = v70, sub_100058C6C(v35, v70), (*v52 & 1) == 0))
  {
    sub_100058CD0(v35);
    v64 = v71;
    static Logger.cloudSync.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Cloud sync disabled, show enable cloud sync buddy", v67, 2u);
    }

    (*(v76 + 8))(v64, v77);
    v49 = 0;
    return v79(v49);
  }

  v53 = v74;
  sub_100058C08(v35, v74);
  v54 = v72;
  static Logger.cloudSync.getter();
  v55 = v73;
  sub_100058C6C(v53, v73);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v81 = v59;
    *v58 = 136315138;
    sub_100058C6C(v55, v69);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    sub_100058CD0(v55);
    v63 = sub_1000036D0(v60, v62, &v81);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Cloud sync not disabled (%s), skip enable cloud sync buddy", v58, 0xCu);
    sub_100003B90(v59);
  }

  else
  {

    sub_100058CD0(v55);
  }

  (*(v76 + 8))(v54, v77);
  v79(1);
  return sub_100058CD0(v53);
}

uint64_t sub_100058AE4(uint64_t a1)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100058B70()
{
  if (!qword_1000DC768)
  {
    sub_100006058(255, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DC768);
    }
  }
}

uint64_t sub_100058C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058CD0(uint64_t a1)
{
  v2 = type metadata accessor for CloudSyncState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058D2C(uint64_t a1, uint64_t a2)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100058DC0()
{
  result = qword_1000DC770;
  if (!qword_1000DC770)
  {
    type metadata accessor for CloudSyncBuddyAvailabilityProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000DC770);
  }

  return result;
}

uint64_t type metadata accessor for WelcomeiPadHealthKitSyncViewController()
{
  result = qword_1000DC7B0;
  if (!qword_1000DC7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058EC8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v19.receiver = v0;
  v19.super_class = type metadata accessor for WelcomeiPadHealthKitSyncViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = HKUIJoinStringsForAutomationIdentifier();

  v8 = [v0 hxui_addPrimaryFooterButtonWithTitle:v5 accessibilityIdentifier:v7];
  v9 = *&v0[qword_1000DC7A0];
  *&v0[qword_1000DC7A0] = v8;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = Array._bridgeToObjectiveC()().super.isa;
  v12 = HKUIJoinStringsForAutomationIdentifier();

  v13 = [v0 hxui_addSecondaryFooterButtonWithTitle:v10 bold:0 accessibilityIdentifier:v12];
  v14 = *&v0[qword_1000DC7A8];
  *&v0[qword_1000DC7A8] = v13;

  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    v17 = Array._bridgeToObjectiveC()().super.isa;
    v18 = HKUIJoinStringsForAutomationIdentifier();

    [v16 setAccessibilityIdentifier:v18];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000591B4(void *a1)
{
  v1 = a1;
  sub_100058EC8();
}

void sub_1000591FC(void *a1)
{
  v1 = a1;
  sub_100059258(&qword_1000DC7A0, 1, 1);
}

uint64_t sub_100059258(void *a1, char a2, char a3)
{
  v6 = *(v3 + *a1);
  v7 = v6;
  sub_100059360(v6, a2);

  v10 = 7;
  v11 = a3;
  v9[3] = type metadata accessor for AnalyticsSender();
  v9[4] = &protocol witness table for AnalyticsSender;
  v9[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(v9);
}

void sub_100059304(void *a1)
{
  v1 = a1;
  sub_100059258(&qword_1000DC7A8, 0, 2);
}

void sub_100059360(void *a1, char a2)
{
  if (*(v2 + qword_1000DC798) == (a2 & 1))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100072D1C(a2 & 1);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    [a1 showsBusyIndicator];
    v4 = *(v2 + qword_1000DC790);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    if (a2)
    {
      *(v6 + 24) = 1;
      v12 = sub_10005A420;
      v13 = v6;
      v8 = _NSConcreteStackBlock;
      v9 = 1107296256;
      v10 = sub_1000099BC;
      v11 = &unk_1000CF170;
      v7 = _Block_copy(&v8);

      [v4 enableCloudSyncWithCompletion:v7];
    }

    else
    {
      *(v6 + 24) = 0;
      v12 = sub_10005A3D4;
      v13 = v6;
      v8 = _NSConcreteStackBlock;
      v9 = 1107296256;
      v10 = sub_1000099BC;
      v11 = &unk_1000CF120;
      v7 = _Block_copy(&v8);

      [v4 disableCloudSyncWithCompletion:v7];
    }

    _Block_release(v7);
  }
}

uint64_t sub_10005956C(int a1, uint64_t a2, uint64_t a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v50 = a6;
  v43 = a5;
  v51 = a4;
  v52 = a3;
  v44 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v53 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v42 = v23;
  v47 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v40 = v15;
    v25 = v24;
    v26 = swift_slowAlloc();
    v41 = v10;
    v27 = v26;
    v54 = a2;
    aBlock[0] = v26;
    *v25 = 67109378;
    *(v25 + 4) = v44 & 1;
    *(v25 + 8) = 2082;
    swift_errorRetain();
    sub_10005A4C4(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
    v28 = String.init<A>(describing:)();
    v30 = v14;
    v31 = v13;
    v32 = v9;
    v33 = sub_1000036D0(v28, v29, aBlock);

    *(v25 + 10) = v33;
    v9 = v32;
    v13 = v31;
    v14 = v30;
    v34 = v47;
    _os_log_impl(&_mh_execute_header, v47, v42, v43, v25, 0x12u);
    sub_100003B90(v27);
    v10 = v41;

    v15 = v40;
  }

  else
  {
  }

  (*(v48 + 8))(v21, v49);
  sub_10002C1C4();
  v35 = static OS_dispatch_queue.main.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = v52;
  *(v36 + 24) = v51 & 1;
  *(v36 + 32) = a2;
  aBlock[4] = v45;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = v46;
  v37 = _Block_copy(aBlock);
  swift_errorRetain();

  v38 = v53;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005A46C();
  sub_10005A4C4(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  (*(v10 + 8))(v13, v9);
  return (*(v15 + 8))(v38, v14);
}

void sub_100059A48(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1000DC7A0);
    if (v7)
    {
      [v7 hidesBusyIndicator];
    }

    if (a3)
    {
      swift_errorRetain();
      sub_10005A528();

LABEL_6:

      return;
    }

    *(v6 + qword_1000DC798) = a2 & 1;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    sub_100072D1C(a2 & 1);

    swift_unknownObjectRelease();
  }
}

void sub_100059B20(void *a1)
{
  sub_10005A4C4(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a1;
    swift_unknownObjectRelease();
    if (qword_1000DA590 != -1)
    {
      swift_once();
    }

    v8 = sub_10005A254(v3, qword_1000E3EA0);
    sub_10005A28C(v8, v6);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_10005A320(v6);
    }

    else
    {
      URL.openSensitiveURL()();
      (*(v10 + 8))(v6, v9);
    }
  }
}

void sub_100059D1C()
{
  sub_10005A3AC(v0 + qword_1000DC780);

  v1 = *(v0 + qword_1000DC7A8);
}

id sub_100059D8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeiPadHealthKitSyncViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100059DC4(uint64_t a1)
{
  sub_10005A3AC(a1 + qword_1000DC780);

  v2 = *(a1 + qword_1000DC7A8);
}

void sub_100059E48(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  *(v4 + qword_1000DC780 + 8) = 0;
  v13 = swift_unknownObjectWeakInit();
  *(v4 + qword_1000DC7A0) = 0;
  *(v4 + qword_1000DC7A8) = 0;
  *(v4 + qword_1000DC798) = a4;
  *(v4 + qword_1000DC788) = a1;
  *(v13 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v14 = [objc_allocWithZone(HKCloudSyncControl) initWithHealthStore:a1];
  *(v4 + qword_1000DC790) = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  [objc_opt_self() wapiCapability];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  static OnboardingImageHeight.iconDefaultHeight.getter();
  v16 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v15];
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  if (v18)
  {
    v19 = type metadata accessor for ImageWithCircleBackground();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image] = v18;
    v24.receiver = v20;
    v24.super_class = v19;
    v21 = v18;
    v22 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_100028D78();
    v23 = v22;
    OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10005A28C(uint64_t a1, uint64_t a2)
{
  sub_10005A4C4(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A320(uint64_t a1)
{
  sub_10005A4C4(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005A46C()
{
  result = qword_1000DAD40;
  if (!qword_1000DAD40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD40);
  }

  return result;
}

void sub_10005A4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10005A528()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() actionWithTitle:v8 style:0 handler:0];

  [v7 addAction:v9];
  [v0 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_10005A7D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t type metadata accessor for CloudSyncDownloadingStateViewController()
{
  result = qword_1000DC818;
  if (!qword_1000DC818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A898()
{
  result = type metadata accessor for CloudSyncRestoreState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005A93C(uint64_t a1)
{
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_1000DC808 + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 16);
  v8(v1 + qword_1000DC810, a1, v3);
  v9 = [objc_allocWithZone(UIView) init];
  static OnboardingImageHeight.iconDefaultHeight.getter();
  v11 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v10];
  v8(v7, a1, v3);
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == enum case for CloudSyncRestoreState.failed(_:) || v12 == enum case for CloudSyncRestoreState.completed(_:))
  {
    v13 = v11;
    v14 = String._bridgeToObjectiveC()();

    v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

    if (v15)
    {
      v16 = type metadata accessor for ImageWithCircleBackground();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image] = v15;
      v22.receiver = v17;
      v22.super_class = v16;
      v18 = v15;
      v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100028D78();
    }
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }

  sub_10005AC74();
  sub_10005AEA4();
  v20 = OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();

  (*(v4 + 8))(a1, v3);
  return v20;
}

uint64_t sub_10005AC74()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for CloudSyncRestoreState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CloudSyncRestoreState.failed(_:) || v10 == enum case for CloudSyncRestoreState.completed(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }
}

uint64_t sub_10005AEA4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for CloudSyncRestoreState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CloudSyncRestoreState.failed(_:))
  {
    [objc_opt_self() wapiCapability];
LABEL_4:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v10 == enum case for CloudSyncRestoreState.completed(_:))
  {
    goto LABEL_4;
  }

  (*(v6 + 8))(v9, v5);
  return 0;
}

void sub_10005B104()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CloudSyncDownloadingStateViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  sub_10005B23C();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = HKUIJoinStringsForAutomationIdentifier();

    if (v5)
    {
      [v3 setAccessibilityIdentifier:v5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10005B1F4(void *a1)
{
  v1 = a1;
  sub_10005B104();
}

void sub_10005B23C()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for CloudSyncRestoreState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + qword_1000DC810, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CloudSyncRestoreState.failed(_:))
  {
    v11 = [objc_opt_self() boldButton];
    [v11 addTarget:v0 action:"tryAgainButtonTapped" forControlEvents:64];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();

    [v11 setTitle:v12 forState:0];

    sub_10000B84C();
    v13 = swift_allocObject();
    v45 = xmmword_1000AE110;
    *(v13 + 16) = xmmword_1000AE110;
    v14 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v16 = HKUIJoinStringsForAutomationIdentifier();

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *(v13 + 32) = v17;
      *(v13 + 40) = v19;
      strcpy((v13 + 48), "TryAgainButton");
      *(v13 + 63) = -18;
      v20 = Array._bridgeToObjectiveC()().super.isa;

      v21 = HKUIJoinStringsForAutomationIdentifier();

      [v14 setAccessibilityIdentifier:v21];
      v22 = [v0 buttonTray];
      [v22 addButton:v14];

      v23 = [objc_opt_self() linkButton];
      [v23 addTarget:v0 action:"doneButtonTapped" forControlEvents:64];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v24 = String._bridgeToObjectiveC()();

      [v23 setTitle:v24 forState:0];

      v25 = swift_allocObject();
      *(v25 + 16) = v45;
      v26 = v23;
      v27 = Array._bridgeToObjectiveC()().super.isa;
      v28 = HKUIJoinStringsForAutomationIdentifier();

      if (v28)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(v25 + 32) = v29;
        *(v25 + 40) = v31;
        *(v25 + 48) = 0xD000000000000013;
        *(v25 + 56) = 0x80000001000A8090;
        v32 = Array._bridgeToObjectiveC()().super.isa;

        v33 = HKUIJoinStringsForAutomationIdentifier();

        [v26 setAccessibilityIdentifier:v33];
        v34 = [v0 buttonTray];
        [v34 addButton:v26];

LABEL_8:
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

  if (v10 == enum case for CloudSyncRestoreState.completed(_:))
  {
    v35 = [objc_opt_self() boldButton];
    [v35 addTarget:v0 action:"doneButtonTapped" forControlEvents:64];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v36 = String._bridgeToObjectiveC()();

    [v35 setTitle:v36 forState:0];

    sub_10000B84C();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1000AE110;
    v26 = v35;
    v38 = Array._bridgeToObjectiveC()().super.isa;
    v39 = HKUIJoinStringsForAutomationIdentifier();

    if (v39)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      *(v37 + 32) = v40;
      *(v37 + 40) = v42;
      *(v37 + 48) = 0x74747542656E6F44;
      *(v37 + 56) = 0xEA00000000006E6FLL;
      v43 = Array._bridgeToObjectiveC()().super.isa;

      v44 = HKUIJoinStringsForAutomationIdentifier();

      [v26 setAccessibilityIdentifier:v44];
      v34 = [v0 buttonTray];
      [v34 addButton:v26];
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005B98C()
{
  sub_10005BEE0();
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v12 - v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
    v9 = type metadata accessor for CloudSyncRestoreState();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v6, v8, v9);
    v11 = *(v10 + 56);
    v11(v6, 0, 1, v9);
    v11(v4, 1, 1, v9);
    sub_1000731F4(v6, v4);
    swift_unknownObjectRelease();
    sub_10001DC44(v4);
    return sub_10001DC44(v6);
  }

  return result;
}

void sub_10005BB10(void *a1)
{
  v1 = a1;
  sub_10005B98C();
}

uint64_t sub_10005BB58()
{
  sub_10005BEE0();
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v13 - v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = enum case for CloudSyncRestoreState.failed(_:);
    v9 = type metadata accessor for CloudSyncRestoreState();
    v10 = *(v9 - 8);
    v11 = *(v10 + 104);
    v11(v6, v8, v9);
    v12 = *(v10 + 56);
    v12(v6, 0, 1, v9);
    v11(v4, enum case for CloudSyncRestoreState.activelyRestoring(_:), v9);
    v12(v4, 0, 1, v9);
    sub_1000731F4(v6, v4);
    swift_unknownObjectRelease();
    sub_10001DC44(v4);
    return sub_10001DC44(v6);
  }

  return result;
}

void sub_10005BD04(void *a1)
{
  v1 = a1;
  sub_10005BB58();
}

uint64_t sub_10005BDAC()
{
  sub_10005A3AC(v0 + qword_1000DC808);
  v1 = qword_1000DC810;
  v2 = type metadata accessor for CloudSyncRestoreState();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10005BE24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncDownloadingStateViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005BE5C(uint64_t a1)
{
  sub_10005A3AC(a1 + qword_1000DC808);
  v2 = qword_1000DC810;
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_10005BEE0()
{
  if (!qword_1000DD4D0)
  {
    type metadata accessor for CloudSyncRestoreState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD4D0);
    }
  }
}

uint64_t property wrapper backing initializer of TipTileForLoggingHeaderView.model()
{
  type metadata accessor for TipTileForLoggingHeaderViewModel();
  State.init(wrappedValue:)();
  return v1;
}

void TipTileForLoggingHeaderView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TipTileForLoggingHeaderView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10005C7E0();
  sub_10005C17C(v1, a1 + *(v6 + 44));
  sub_10005E854(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipTileForLoggingHeaderView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100022B68(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_10005CECC(0, &qword_1000DC970, sub_10005D498, sub_10005D54C);
  v10 = (a1 + *(v9 + 36));
  *v10 = sub_10005D3F4;
  v10[1] = 0;
  v10[2] = sub_10005D494;
  v10[3] = v8;
}

uint64_t type metadata accessor for TipTileForLoggingHeaderView()
{
  result = qword_1000DC9F8;
  if (!qword_1000DC9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C17C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CB04(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CAA8(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v80 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v78 - v18;
  v79 = objc_opt_self();
  v20 = [v79 systemBackgroundColor];
  v86 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v21 = v121;
  v82 = v123;
  v83 = v122;
  v22 = v124;
  v81 = v125;
  v23 = v126;
  v24 = static Alignment.center.getter();
  v84 = v25;
  v85 = v24;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = a1[3];
  v97 = a1[2];
  v98 = v26;
  sub_10005DFE0(0, &unk_1000DCA10, &type metadata for CGFloat, &type metadata accessor for State);
  State.wrappedValue.getter();
  v27 = *&v88 + -38.0;
  v87 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v97) = 0;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_10005E6EC();
  v37 = &v7[*(v36 + 44)];
  *v37 = static VerticalAlignment.top.getter();
  *(v37 + 1) = 0;
  v37[16] = 1;
  sub_10005E754();
  sub_10005D618(a1, &v37[*(v38 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10005E7EC(v7, v12, sub_10005CB2C);
  v39 = &v12[*(v9 + 44)];
  v40 = v132;
  *(v39 + 4) = v131;
  *(v39 + 5) = v40;
  *(v39 + 6) = v133;
  v41 = v128;
  *v39 = v127;
  *(v39 + 1) = v41;
  v42 = v130;
  *(v39 + 2) = v129;
  *(v39 + 3) = v42;
  LOBYTE(v7) = static Edge.Set.all.getter();
  sub_10005E7EC(v12, v19, sub_10005CB04);
  sub_10005CADC(0);
  v44 = &v19[*(v43 + 36)];
  *v44 = v7;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  v44[40] = 1;
  v45 = &v19[*(v14 + 44)];
  v78 = v19;
  v46 = *(type metadata accessor for RoundedRectangle() + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #10.0 }

  *v45 = _Q0;
  v54 = [v79 systemBackgroundColor];
  v55 = Color.init(_:)();
  sub_10005D344();
  *&v45[*(v56 + 52)] = v55;
  *&v45[*(v56 + 56)] = 256;
  v57 = static Alignment.center.getter();
  v59 = v58;
  sub_10005D2B0();
  v61 = &v45[*(v60 + 36)];
  *v61 = v57;
  v61[1] = v59;
  v62 = v80;
  sub_10005EA6C(v19, v80, sub_10005CAA8);
  *&v88 = v21;
  LODWORD(v19) = v82;
  LODWORD(v59) = v83;
  *(&v88 + 1) = __PAIR64__(v82, v83);
  *&v89 = v22;
  v63 = v81;
  *(&v89 + 1) = v81;
  *&v90 = v23;
  v64 = v86;
  *(&v90 + 1) = v86;
  LOWORD(v91) = 256;
  *(&v91 + 2) = v137;
  WORD3(v91) = v138;
  v66 = v84;
  v65 = v85;
  *(&v91 + 1) = v85;
  *&v92[0] = v84;
  *(&v92[1] + 8) = v135;
  *(&v92[2] + 8) = v136;
  *(v92 + 8) = v134;
  *(&v92[3] + 1) = v27;
  *&v93 = 0;
  BYTE8(v93) = v87;
  *(&v93 + 9) = *v120;
  HIDWORD(v93) = *&v120[3];
  *&v94 = v29;
  *(&v94 + 1) = v31;
  *&v95 = v33;
  *(&v95 + 1) = v35;
  v96 = 0;
  v67 = v88;
  v68 = v89;
  v69 = v91;
  *(a2 + 32) = v90;
  *(a2 + 48) = v69;
  *a2 = v67;
  *(a2 + 16) = v68;
  v70 = v92[0];
  v71 = v92[1];
  v72 = v92[3];
  *(a2 + 96) = v92[2];
  *(a2 + 112) = v72;
  *(a2 + 64) = v70;
  *(a2 + 80) = v71;
  v73 = v93;
  v74 = v94;
  v75 = v95;
  *(a2 + 176) = 0;
  *(a2 + 144) = v74;
  *(a2 + 160) = v75;
  *(a2 + 128) = v73;
  sub_10005C878();
  sub_10005EA6C(v62, a2 + *(v76 + 48), sub_10005CAA8);
  sub_10005E854(&v88, &v97, sub_10005C8E8);
  sub_10005EAD4(v78, sub_10005CAA8);
  sub_10005EAD4(v62, sub_10005CAA8);
  v97 = v21;
  v98 = __PAIR64__(v19, v59);
  v99 = v22;
  v100 = v63;
  v101 = v23;
  v102 = v64;
  v103 = 256;
  v104 = v137;
  v105 = v138;
  v106 = v65;
  v107 = v66;
  v110 = v136;
  v109 = v135;
  v108 = v134;
  v111 = v27;
  v112 = 0;
  v113 = v87;
  *&v114[3] = *&v120[3];
  *v114 = *v120;
  v115 = v29;
  v116 = v31;
  v117 = v33;
  v118 = v35;
  v119 = 0;
  return sub_10005EC54(&v97, sub_10005C8E8);
}

void sub_10005C7E0()
{
  if (!qword_1000DC868)
  {
    sub_10005CC74(255, &qword_1000DC870, sub_10005C878, &type metadata accessor for TupleView);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC868);
    }
  }
}

void sub_10005C878()
{
  if (!qword_1000DC878)
  {
    sub_10005C8E8(255);
    sub_10005CAA8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DC878);
    }
  }
}

void sub_10005C938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005C9C4()
{
  if (!qword_1000DC898)
  {
    sub_10005CA54();
    v0 = type metadata accessor for StrokeShapeView();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC898);
    }
  }
}

unint64_t sub_10005CA54()
{
  result = qword_1000DC8A0;
  if (!qword_1000DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC8A0);
  }

  return result;
}

void sub_10005CB2C()
{
  if (!qword_1000DC8C0)
  {
    sub_10005CBC0();
    sub_10005D268(&qword_1000DC948, sub_10005CBC0);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC8C0);
    }
  }
}

void sub_10005CBC0()
{
  if (!qword_1000DC8C8)
  {
    sub_10005CC74(255, &qword_1000DC8D0, sub_10005CCD8, &type metadata accessor for TupleView);
    sub_10005D204(&qword_1000DC940, &qword_1000DC8D0, sub_10005CCD8);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC8C8);
    }
  }
}

void sub_10005CC74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10005CCD8()
{
  if (!qword_1000DC8D8)
  {
    sub_10005CD48(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DC8D8);
    }
  }
}

void sub_10005CD70()
{
  if (!qword_1000DC8E8)
  {
    sub_10005CE14();
    sub_10005CE98(255);
    sub_10005D04C();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC8E8);
    }
  }
}

void sub_10005CE14()
{
  if (!qword_1000DC8F0)
  {
    sub_10005CE98(255);
    sub_10005D04C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DC8F0);
    }
  }
}

void sub_10005CECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10005CF40()
{
  if (!qword_1000DC900)
  {
    sub_10005CC74(255, &qword_1000DC908, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC900);
    }
  }
}

void sub_10005CFD0()
{
  if (!qword_1000DC910)
  {
    sub_10005DFE0(255, &qword_1000DC918, &type metadata for Color, &type metadata accessor for Optional);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC910);
    }
  }
}

unint64_t sub_10005D04C()
{
  result = qword_1000DC920;
  if (!qword_1000DC920)
  {
    sub_10005CE98(255);
    sub_10005D0FC();
    sub_10005D268(&qword_1000DC938, sub_10005CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC920);
  }

  return result;
}

unint64_t sub_10005D0FC()
{
  result = qword_1000DC928;
  if (!qword_1000DC928)
  {
    sub_10005CF40();
    sub_10005D17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC928);
  }

  return result;
}

unint64_t sub_10005D17C()
{
  result = qword_1000DC930;
  if (!qword_1000DC930)
  {
    sub_10005CC74(255, &qword_1000DC908, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC930);
  }

  return result;
}

uint64_t sub_10005D204(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_10005CC74(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005D268(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005D2B0()
{
  if (!qword_1000DC950)
  {
    sub_10005D344();
    sub_10005D268(&qword_1000DC968, sub_10005D344);
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC950);
    }
  }
}

void sub_10005D344()
{
  if (!qword_1000DC958)
  {
    type metadata accessor for RoundedRectangle();
    sub_10005D268(&qword_1000DC960, &type metadata accessor for RoundedRectangle);
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC958);
    }
  }
}

uint64_t sub_10005D3F4@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10005D420(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_10005DFE0(0, &unk_1000DCA10, &type metadata for CGFloat, &type metadata accessor for State);
  return State.wrappedValue.setter();
}

void sub_10005D498()
{
  if (!qword_1000DC978)
  {
    sub_10005CC74(255, &qword_1000DC870, sub_10005C878, &type metadata accessor for TupleView);
    sub_10005D204(&qword_1000DC980, &qword_1000DC870, sub_10005C878);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC978);
    }
  }
}

void sub_10005D54C()
{
  if (!qword_1000DC988)
  {
    sub_10005D5A8();
    v0 = type metadata accessor for _GeometryActionModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC988);
    }
  }
}

unint64_t sub_10005D5A8()
{
  result = qword_1000DC990;
  if (!qword_1000DC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC990);
  }

  return result;
}

uint64_t sub_10005D618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipTileForLoggingHeaderView();
  v51 = *(v4 - 8);
  v50 = *(v51 + 64);
  __chkstk_darwin(v4 - 8);
  v49 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005CD48(0);
  v7 = *(v6 - 8);
  v53 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v54 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v52 = &v46[-v11];
  v48 = a1;
  v12 = a1[1];
  v56 = *a1;
  v57 = v12;
  sub_10005CC74(0, &qword_1000DCA08, type metadata accessor for TipTileForLoggingHeaderViewModel, &type metadata accessor for State);
  State.wrappedValue.getter();
  v13 = *(v55 + 16);
  v14 = *(v55 + 24);

  v56 = v13;
  v57 = v14;
  sub_100039898();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_1000385F4(v15, v17, v19 & 1);

  LODWORD(v56) = static HierarchicalShapeStyle.secondary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  v47 = v28;
  v30 = v29;
  sub_1000385F4(v20, v22, v24 & 1);

  v31 = v49;
  sub_10005E854(v48, v49, type metadata accessor for TipTileForLoggingHeaderView);
  v32 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v33 = swift_allocObject();
  sub_100022B68(v31, v33 + v32);
  sub_10005CE14();
  sub_10005CE98(255);
  v35 = v34;
  v36 = sub_10005D04C();
  v56 = v35;
  v57 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v52;
  Button.init(action:label:)();
  LOBYTE(v13) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v38 = v54;
  v39 = v37 + *(v53 + 44);
  *v39 = v13;
  *(v39 + 8) = v40;
  *(v39 + 16) = v41;
  *(v39 + 24) = v42;
  *(v39 + 32) = v43;
  *(v39 + 40) = 0;
  sub_10005EA6C(v37, v38, sub_10005CD48);
  *a2 = v25;
  *(a2 + 8) = v27;
  LOBYTE(v32) = v47 & 1;
  *(a2 + 16) = v47 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_10005CCD8();
  sub_10005EA6C(v38, a2 + *(v44 + 64), sub_10005CD48);
  sub_1000385D8(v25, v27, v32);

  sub_10005EAD4(v37, sub_10005CD48);
  sub_10005EAD4(v38, sub_10005CD48);
  sub_1000385F4(v25, v27, v32);
}

void sub_10005DA30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10005CC74(0, &qword_1000DCA08, type metadata accessor for TipTileForLoggingHeaderViewModel, &type metadata accessor for State);
  State.wrappedValue.getter();
  v3 = *(v6 + 32);

  State.wrappedValue.getter();
  v4 = *(v6 + 40);
  v5 = *(v6 + 48);

  HKKeyValueDomain.setBool(_:for:)();

  State.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

uint64_t sub_10005DB74()
{
  sub_10005CE98(0);
  v1 = v0;
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = Image.init(systemName:)();
  sub_10005CF40();
  v7 = (v4 + *(v6 + 36));
  sub_10005CC74(0, &qword_1000DC908, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
  v9 = *(v8 + 28);
  v10 = enum case for Image.Scale.small(_:);
  v11 = type metadata accessor for Image.Scale();
  (*(*(v11 - 8) + 104))(v7 + v9, v10, v11);
  *v7 = swift_getKeyPath();
  *v4 = v5;
  v12 = static Color.tertiary.getter();
  KeyPath = swift_getKeyPath();
  v14 = (v4 + *(v1 + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  static Font.Weight.bold.getter();
  sub_10005D04C();
  View.fontWeight(_:)();
  return sub_10005EC54(v4, sub_10005CE98);
}

void sub_10005DD20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10005C7E0();
  sub_10005C17C(v2, a2 + *(v6 + 44));
  sub_10005E854(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipTileForLoggingHeaderView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100022B68(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_10005CECC(0, &qword_1000DC970, sub_10005D498, sub_10005D54C);
  v10 = (a2 + *(v9 + 36));
  *v10 = sub_10005D3F4;
  v10[1] = 0;
  v10[2] = sub_10005ECB4;
  v10[3] = v8;
}

void sub_10005DEC0()
{
  sub_10005CC74(319, &qword_1000DCA08, type metadata accessor for TipTileForLoggingHeaderViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10005DFE0(319, &unk_1000DCA10, &type metadata for CGFloat, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10005CC74(319, &qword_1000DC998, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005DFE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10005E030()
{
  result = qword_1000DCA48;
  if (!qword_1000DCA48)
  {
    sub_10005CECC(255, &qword_1000DC970, sub_10005D498, sub_10005D54C);
    sub_10005D268(&qword_1000DCA50, sub_10005D498);
    sub_10005D268(&qword_1000DCA58, sub_10005D54C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA48);
  }

  return result;
}

void sub_10005E198()
{
  if (!qword_1000DCA68)
  {
    sub_10005CA54();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCA68);
    }
  }
}

double sub_10005E214@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  *&v11 = CGRectGetMinY(v23);
  Path.move(to:)(__PAIR128__(v11, *&MidX));
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  *&v13 = CGRectGetMaxY(v25);
  Path.addLine(to:)(__PAIR128__(v13, *&MinX));
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  *&v15 = CGRectGetMaxY(v27);
  Path.addLine(to:)(__PAIR128__(v15, *&MaxX));
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v16 = CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  *&v17 = CGRectGetMinY(v29);
  Path.addLine(to:)(__PAIR128__(v17, *&v16));
  result = *&v19;
  *a1 = v19;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  return result;
}

void (*sub_10005E38C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10005E414;
}

void sub_10005E414(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10005E460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005CA54();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005E4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005CA54();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005E528(uint64_t a1)
{
  v2 = sub_10005CA54();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_10005E578()
{
  result = qword_1000DCA70;
  if (!qword_1000DCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA70);
  }

  return result;
}

unint64_t sub_10005E5D0()
{
  result = qword_1000DCA78;
  if (!qword_1000DCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA78);
  }

  return result;
}

unint64_t sub_10005E628()
{
  result = qword_1000DCA80;
  if (!qword_1000DCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA80);
  }

  return result;
}

uint64_t sub_10005E67C(uint64_t *a1)
{
  v3 = *(type metadata accessor for TipTileForLoggingHeaderView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10005D420(a1, v4);
}

void sub_10005E6EC()
{
  if (!qword_1000DCA88)
  {
    sub_10005CBC0();
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCA88);
    }
  }
}

void sub_10005E754()
{
  if (!qword_1000DCA90)
  {
    sub_10005CC74(255, &qword_1000DC8D0, sub_10005CCD8, &type metadata accessor for TupleView);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCA90);
    }
  }
}

uint64_t sub_10005E7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E8BC()
{
  v1 = (type metadata accessor for TipTileForLoggingHeaderView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  sub_10005CC74(0, &qword_1000DA5D8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10005EA0C()
{
  v1 = *(type metadata accessor for TipTileForLoggingHeaderView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_10005DA30(v2);
}

uint64_t sub_10005EA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005EAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005EB34(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_10005EBFC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005EC28(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10005EC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005ECB8()
{
  sub_100003B90((v0 + 16));

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

id sub_10005ED5C(uint64_t a1)
{
  if (*(a1 + qword_1000DCB70 + 8))
  {
    v1 = *(a1 + qword_1000DCB70);
    v2 = *(a1 + qword_1000DCB70 + 8);

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void (*sub_10005EDCC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100018E60();
  return sub_10005EE14;
}

void sub_10005EE14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + qword_1000DCB98);
  *(v1 + qword_1000DCB98) = v2;
}

uint64_t sub_10005EE2C()
{
  v1 = qword_1000DCBA8;
  if (*(v0 + qword_1000DCBA8))
  {
    v2 = *(v0 + qword_1000DCBA8);
  }

  else
  {
    v3 = *(v0 + qword_1000DCB78);
    v4 = type metadata accessor for AlertStackModalPresentationManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = v3;
    v8 = v0;
    v2 = AlertStackModalPresentationManager.init(healthStore:)();
    v9 = *(v0 + v1);
    *(v8 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10005EEBC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_10000ACE8(a2, v14);
  v7 = [a1 collectionView];
  v8 = type metadata accessor for SummaryFeedDataSource(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a3;

  v12 = sub_100010970(v14, v11, a4, v7);

  return v12;
}

void sub_10005EFA8(char a1)
{
  v3 = type metadata accessor for UITraitOverrides();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for Presentation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 104))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Presentation.summaryFeed(_:));
  UIViewController.traitOverrides.getter();
  UIMutableTraits.presentation.setter();
  UIViewController.traitOverrides.setter();
  v9 = type metadata accessor for SummaryFeedViewController();
  v13.receiver = v1;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, "viewIsAppearing:", a1 & 1);
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];
  }

  else
  {
    __break(1u);
  }
}

void sub_10005F178(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummaryFeedViewController();
  v15.receiver = v2;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, "viewDidDisappear:", a1 & 1);
  sub_10001BC98();
  Date.init()();
  dispatch thunk of PersonalizedFeedTrainer.feedDidEndDisplay(at:)();

  (*(v5 + 8))(v8, v4);
  v10 = [v2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setAllowsFocus:1];

    v12 = [v2 collectionView];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(UIFocusHaloEffect) init];
      [v13 setFocusEffect:v14];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10005F318(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005F178(a3);
}

void sub_10005F36C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[qword_1000DCB68] & 1) == 0)
  {
    v1[qword_1000DCB68] = 1;
    static Logger.view.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Setting visible rect edges of collection view", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 _visibleRectEdgeInsets];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = [v1 collectionView];
      if (v20)
      {
        v21 = v20;
        [v20 _setVisibleRectEdgeInsets:{0.0, 0.0, -10000.0, 0.0}];

        v22 = [v1 collectionView];
        if (v22)
        {
          v23 = v22;
          [v22 _setVisibleRectEdgeInsets:{v13, v15, v17, v19}];

          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10005F59C(void *a1)
{
  v1 = a1;
  sub_10005F36C();
}

void sub_10005F5E4(void *a1, void *a2)
{
  type metadata accessor for PlatformTabCollectionViewController();
  v4 = method lookup function for CompoundDataSourceCollectionViewController();
  v4(a1, a2);
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != [a2 horizontalSizeClass])
  {

    sub_100018B30();
  }
}

uint64_t sub_10005F6E4()
{
  v1 = *(v0 + qword_1000DCB70 + 8);

  sub_100003B90((v0 + qword_1000DCB80));
  sub_100003B90((v0 + qword_1000DCB88));
  v2 = *(v0 + qword_1000DCB90);

  v3 = *(v0 + qword_1000DCBA0);

  v4 = *(v0 + qword_1000DCBA8);

  v5 = *(v0 + qword_1000DCBB8);

  return sub_100003B90((v0 + qword_1000DCBC0));
}

id sub_10005F7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryFeedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005F7E4(uint64_t a1)
{
  v2 = *(a1 + qword_1000DCB70 + 8);

  sub_100003B90((a1 + qword_1000DCB80));
  sub_100003B90((a1 + qword_1000DCB88));
  v3 = *(a1 + qword_1000DCB90);

  v4 = *(a1 + qword_1000DCBA0);

  v5 = *(a1 + qword_1000DCBA8);

  v6 = *(a1 + qword_1000DCBB8);

  return sub_100003B90((a1 + qword_1000DCBC0));
}

uint64_t sub_10005F8E8()
{
  v1 = qword_1000DCBB8;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10005F994(uint64_t a1)
{
  v2 = *(*v1 + qword_1000DCB98);
  *(*v1 + qword_1000DCB98) = a1;
  return _objc_release_x1();
}

void (*sub_10005F9AC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10005EDCC(v3);
  return sub_10005E414;
}

void sub_10005FA20(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CellDeselectionBehavior();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Presentation();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HealthAppInteraction.Action();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [a1 cellForItemAtIndexPath:isa];

  if (!v17)
  {
    return;
  }

  v36 = a1;
  v43 = v17;
  sub_100003DDC(0, &qword_1000DCCE0, UICollectionViewCell_ptr);
  sub_100009630(0, &qword_1000DCCE8);
  v18 = v17;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_100061728(&v40, &unk_1000DCCF0, &qword_1000DCCE8, &protocol descriptor for CellSelectionHandling, sub_100055124);
    return;
  }

  v33 = v4;
  sub_100014D24(&v40, v44);
  sub_10000BFFC(v44, v45);
  v34 = v18;
  v35 = a2;
  dispatch thunk of CellSelectionHandling.didSelectCell(_:in:)();
  dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
  type metadata accessor for SummaryFeedDataSource(0);
  swift_dynamicCastClassUnconditional();
  SnapshotDataSource.item(at:)();

  sub_100009630(0, &qword_1000DAC08);
  type metadata accessor for FeedItem();
  if (swift_dynamicCast())
  {
    v19 = v43;
    FeedItem.favoriteStatus.getter();
    v20 = FeedItem.FavoriteStatus.rawValue.getter();
    v22 = v21;
    v23 = FeedItem.FavoriteStatus.rawValue.getter();
    v25 = v33;
    if (v20 == v23 && v22 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v32[1] = type metadata accessor for HealthAppAnalyticsManager();
    v27 = v37;
    (*(v37 + 104))(v15, enum case for HealthAppInteraction.Action.selectFavorite(_:), v12);
    v28 = v38;
    (*(v38 + 104))(v11, enum case for Presentation.summaryFeed(_:), v8);
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v32[0] = v8;
    static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)();

    sub_100061728(&v40, &unk_1000DCD00, &unk_1000DCD08, &protocol descriptor for PinnedContentManaging, sub_100055124);
    (*(v28 + 8))(v11, v32[0]);
    (*(v27 + 8))(v15, v12);
  }

  else
  {
    v25 = v33;
  }

LABEL_12:
  sub_10000BFFC(v44, v45);
  dispatch thunk of CellSelectionHandling.deselectionBehavior(in:)();
  v29 = v39;
  if ((*(v39 + 88))(v7, v25) == enum case for CellDeselectionBehavior.deselectOnDidSelect(_:))
  {
    (*(v29 + 96))(v7, v25);
    v30 = *v7;
    v31 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v36 deselectItemAtIndexPath:v31 animated:v30];
  }

  else
  {

    (*(v29 + 8))(v7, v25);
  }

  sub_100003B90(v44);
}

uint64_t sub_10005FFF8(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_10005FA20(v10, v9);

  return (*(v6 + 8))(v9, v5);
}

void sub_1000600F4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 2 && (*(v1 + qword_1000DCBC8) & 1) == 0)
  {
    static Logger.view.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_1000036D0(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] Checking if we need to show the alerts modal", v11, 0xCu);
      sub_100003B90(v12);
    }

    (*(v3 + 8))(v6, v2);
    sub_10005EE2C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of AlertStackModalPresentationManager.fetchEligibleAlerts(completion:)();
  }
}

void sub_100060358(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(a1 + 16) < 2uLL)
    {
    }

    else
    {
      v13 = Strong;
      sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
      v18 = static OS_dispatch_queue.main.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      aBlock[4] = sub_100061670;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008310;
      aBlock[3] = &unk_1000CF320;
      v15 = _Block_copy(aBlock);
      v16 = v13;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100007D4C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000060BC(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
      sub_100028B74();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_100060684(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1000DCBC8;
  if ((*(a1 + qword_1000DCBC8) & 1) == 0)
  {
    static Logger.view.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000036D0(0xD000000000000019, 0x80000001000AFBA0, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] User has at least two new alerts; displaying the expanded modal!", v11, 0xCu);
      sub_100003B90(v12);
    }

    (*(v3 + 8))(v7, v2);
    *(a1 + v8) = 1;
    dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
    type metadata accessor for SummaryFeedDataSource(0);
    swift_dynamicCastClassUnconditional();
    sub_100081BB8();
  }

  return result;
}

uint64_t sub_100060880(void *a1)
{
  v95 = a1;
  v91 = type metadata accessor for Presentation();
  v90 = *(v91 - 8);
  v1 = *(v90 + 64);
  __chkstk_darwin(v91);
  v86[1] = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for HAUserActivity.ViewNavigationKeys();
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060BC(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v86 - v7;
  v9 = type metadata accessor for DeepLinkActivityType();
  v96 = *(v9 - 8);
  v10 = *(v96 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v86 - v14;
  v93 = type metadata accessor for Logger();
  v15 = *(v93 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v93);
  v86[0] = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v86 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v86 - v23;
  __chkstk_darwin(v22);
  v26 = v86 - v25;
  static Logger.view.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Attempting to restore ForYou View Controller from User Activity.", v29, 2u);
  }

  v30 = *(v15 + 8);
  v30(v26, v93);
  v31 = type metadata accessor for SummaryFeedViewController();
  v32 = v95;
  v102.receiver = v94;
  v102.super_class = v31;
  objc_msgSendSuper2(&v102, "restoreUserActivityState:", v95);
  v33 = [v32 activityType];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkActivityType.init(_:)();
  v34 = v96;
  v35 = v9;
  if ((*(v96 + 48))(v8, 1, v9) == 1)
  {
    return sub_100061728(v8, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional, sub_1000060BC);
  }

  v37 = v92;
  (*(v34 + 32))(v92, v8, v35);
  (*(v34 + 16))(v13, v37, v35);
  v38 = (*(v34 + 88))(v13, v35);
  if (v38 == enum case for DeepLinkActivityType.allHealthData(_:))
  {
    static Logger.view.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Restoring to All Data view from User Activity via Discover.", v41, 2u);
    }

    v30(v24, v93);
    v42 = v94;
    v43 = *&v94[qword_1000DCB78];
    sub_10000ACE8(&v94[qword_1000DCB80], v101);
    v44 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController());
    (*(v90 + 104))(&v44[qword_1000E3F58], enum case for Presentation.showAllData(_:), v91);
    *&v44[qword_1000DDE98] = v43;
    sub_10000ACE8(v101, &v44[qword_1000DDEA0]);
    sub_10000ACE8(v101, &v97);
    v45 = type metadata accessor for AllHealthDataDataSource(0);
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = v43;
    sub_100030B28(v48, &v97);

    v49 = CompoundDataSourceCollectionViewController.init(dataSource:)();
    sub_100003B90(v101);
    v50 = [v42 navigationController];
    if (v50)
    {
      v51 = v50;
      [v50 pushViewController:v49 animated:0];
    }

    [v49 restoreUserActivityState:v95];
LABEL_17:

    return (*(v96 + 8))(v92, v35);
  }

  if (v38 == enum case for DeepLinkActivityType.notificationSettings(_:))
  {
    static Logger.view.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Restoring to notification settings view from User Activity via Discover.", v54, 2u);
    }

    v30(v21, v93);
    v55 = v94;
    UIViewController.resolvedHealthExperienceStore.getter();
    v56 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
    v49 = NotificationSettingsViewController.init(healthExperienceStore:)();
    type metadata accessor for ProfileViewController();
    v57 = *&v55[qword_1000DCB78];
    v58 = *&v55[qword_1000DCB90];
    dispatch thunk of PinnedContentManagerProvider.manager(for:)();
    v59 = static ProfileViewController.makeProfileNavigationController(healthStore:pinnedContentManager:configurator:)();
    sub_100003B90(v101);
    [v59 pushViewController:v49 animated:0];
    v60 = [v55 navigationController];
    if (v60)
    {
      v61 = v60;
      [v60 presentViewController:v59 animated:0 completion:0];
    }

    [v49 restoreUserActivityState:v95];

    goto LABEL_17;
  }

  v64 = *(v34 + 8);
  v62 = v34 + 8;
  v63 = v64;
  v64(v13, v35);
  v65 = [v95 userInfo];
  if (!v65)
  {
    v63(v92, v35);
    v97 = 0u;
    v98 = 0u;
    return sub_100061678(&v97);
  }

  v96 = v62;
  v66 = v65;
  v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v88;
  v69 = v87;
  v70 = v89;
  (*(v88 + 104))(v87, enum case for HAUserActivity.ViewNavigationKeys.allTrends(_:), v89);
  v71 = HAUserActivity.ViewNavigationKeys.rawValue.getter();
  v73 = v72;
  (*(v68 + 8))(v69, v70);
  v99 = v71;
  v100 = v73;
  AnyHashable.init<A>(_:)();
  if (!*(v67 + 16) || (v74 = sub_100033344(v101), (v75 & 1) == 0))
  {

    sub_10002E508(v101);
    v97 = 0u;
    v98 = 0u;
    goto LABEL_28;
  }

  sub_100003B34(*(v67 + 56) + 32 * v74, &v97);
  sub_10002E508(v101);

  if (!*(&v98 + 1))
  {
LABEL_28:
    v63(v92, v35);
    return sub_100061678(&v97);
  }

  sub_100061678(&v97);
  v76 = v86[0];
  static Logger.view.getter();
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "Restoring to All Trends View Controller from User Activity via Discover.", v79, 2u);
  }

  v30(v76, v93);
  v80 = v94;
  v81 = *&v94[qword_1000DCB78];
  UIViewController.resolvedHealthExperienceStore.getter();
  UIViewController.resolvedPresentation.getter();
  v82 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
  v83 = AllTrendsViewController.init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)();
  v84 = [v80 navigationController];
  if (v84)
  {
    v85 = v84;
    [v84 pushViewController:v83 animated:0];
  }

  [v83 restoreUserActivityState:v95];

  return (v63)(v92, v35);
}

void sub_100061434(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100060880(v4);
}

void sub_10006149C(char *a1)
{
  v2 = *&a1[qword_1000DCB78];
  v3 = objc_allocWithZone(type metadata accessor for InternalSettingsViewController());
  v7 = a1;
  v4 = v2;
  v5 = sub_10002BCE4(v4);

  v6 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v5];
  [v7 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_100061574(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100031A88(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100061678(uint64_t a1)
{
  sub_1000616D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000616D4()
{
  if (!qword_1000DB160)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB160);
    }
  }
}

uint64_t sub_100061728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_100061788()
{
  if (!qword_1000DCD30)
  {
    sub_100003DDC(255, &qword_1000DB670, UIColor_ptr);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCD30);
    }
  }
}

void sub_1000617F0()
{
  v1 = v0;
  v2 = v0 + qword_1000DCB60;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = xmmword_1000AFB70;
  *(v0 + qword_1000DCB68) = 0;
  v3 = (v0 + qword_1000DCB70);
  type metadata accessor for SidebarDataSourceItem();
  *v3 = static SidebarDataSourceItem.summarySidebarItemIdentifier.getter();
  v3[1] = v4;
  *(v0 + qword_1000DCB98) = 0;
  *(v0 + qword_1000DCBA0) = 0;
  *(v0 + qword_1000DCBA8) = 0;
  v5 = (v0 + qword_1000DCBB0);
  v6 = [objc_allocWithZone(type metadata accessor for ProfileGradientWithFadeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = ProfileGradientWithFadeView.gradientView.getter();
  dispatch thunk of ProfileGradientView.delayAnimation.setter();

  *v5 = v6;
  v5[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v1 + qword_1000DCBB8) = 0;
  *(v1 + qword_1000DCBC8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for MedicalIDEmergencyBuddyDataSource()
{
  result = qword_1000DCD70;
  if (!qword_1000DCD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000619D0()
{
  v48 = *v0;
  v1 = type metadata accessor for UUID();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  __chkstk_darwin(v1);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EmergencyAccessBuddyFlow();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ContentConfigurationItem();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v47);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static EmergencyAccessBuddyFlow.allCases.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v49 = _swiftEmptyArrayStorage;
    v14 = v12;
    sub_10007C53C(0, v13, 0);
    v15 = 0;
    v16 = v49;
    v43 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v44 = (v5 + 8);
    v45 = v8;
    v41 = v8 + 32;
    v42 = v5 + 16;
    while (v15 < *(v14 + 16))
    {
      v17 = v43 + *(v5 + 72) * v15;
      v18 = v5;
      v19 = *(v5 + 16);
      v20 = v46;
      v19(v46, v17, v4);
      sub_100061EF8(v20, v48, v11);
      v21 = v20;
      v22 = v4;
      (*v44)(v21, v4);
      v49 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_10007C53C(v23 > 1, v24 + 1, 1);
        v16 = v49;
      }

      ++v15;
      v16[2] = v24 + 1;
      (*(v45 + 32))(v16 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, v11, v47);
      v4 = v22;
      v5 = v18;
      if (v13 == v15)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    (*v44)(v5, v4);

    __break(1u);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_9:
    sub_100015F04(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
    v25 = *(type metadata accessor for ArrayDataSourceSection() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_1000AE100;
    sub_10009C004(v16);

    v28 = v38;
    UUID.init()();
    UUID.uuidString.getter();
    v29 = v40;
    v30 = *(v39 + 8);
    v30(v28, v40);
    ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
    v49 = 0x3C53447961727241;
    v50 = 0xE800000000000000;
    UUID.init()();
    v31 = UUID.uuidString.getter();
    v33 = v32;
    v30(v28, v29);
    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 62;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    return ArrayDataSource.init(arrangedSections:identifier:)();
  }

  return result;
}

uint64_t sub_100061EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v35 = a2;
  v46 = a1;
  v3 = type metadata accessor for SectionedDataSourceContainerViewType();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015F04(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v39 = &v33 - v8;
  v9 = type metadata accessor for CellDeselectionBehavior();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EmergencyAccessBuddyFlow();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v33 - v21;
  v23 = *(v17 + 16);
  v23(&v33 - v21, v46, v16);
  v24 = (*(v17 + 88))(v22, v16);
  if (v24 == enum case for EmergencyAccessBuddyFlow.followUpOnboarding(_:))
  {
    (*(v17 + 8))(v22, v16);
    v33 = 0xD000000000000013;
  }

  else if (v24 == enum case for EmergencyAccessBuddyFlow.followUpReview(_:))
  {
    (*(v17 + 8))(v22, v16);
    v33 = 0x7055776F6C6C6F46;
  }

  else if (v24 == enum case for EmergencyAccessBuddyFlow.healthOnboarding(_:))
  {
    v33 = 0xD000000000000011;
  }

  else if (v24 == enum case for EmergencyAccessBuddyFlow.healthReview(_:))
  {
    v33 = 0x522068746C616548;
  }

  else
  {
    (*(v17 + 8))(v22, v16);
    v33 = 0;
  }

  v23(v20, v46, v16);
  v25 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v26 = swift_allocObject();
  (*(v17 + 32))(v26 + v25, v20, v16);
  *(v26 + ((v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v12 + 8))(v15, v34);
  v45[3] = type metadata accessor for UIListContentConfiguration();
  v45[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v45);
  static UIListContentConfiguration.cell()();

  UIListContentConfiguration.text.setter();
  v27 = [objc_opt_self() tintColor];
  v28 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v28(v44, 0);

  v29 = v37;
  v30 = v38;
  *v38 = 1;
  (*(v36 + 104))(v30, enum case for CellDeselectionBehavior.deselectOnDidSelect(_:), v29);
  v31 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  (*(v41 + 104))(v40, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v42);
  return ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
}

void sub_10006255C(void *a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v5 = type metadata accessor for Logger();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EmergencyAccessUserStatus();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v58 = &v56 - v11;
  v12 = type metadata accessor for EmergencyAccessBuddyFlow();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v56 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v56 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v56 - v24;
  __chkstk_darwin(v23);
  v27 = &v56 - v26;
  v62 = a1;
  v28 = UIViewController.resolvedHealthStore.getter();
  if (!v28)
  {
    v28 = [objc_allocWithZone(HKHealthStore) init];
  }

  v63 = v28;
  v29 = *(v13 + 16);
  v29(v27, a2, v12);
  v30 = (*(v13 + 88))(v27, v12);
  if (v30 == enum case for EmergencyAccessBuddyFlow.followUpOnboarding(_:) || v30 == enum case for EmergencyAccessBuddyFlow.followUpReview(_:))
  {
    (*(v13 + 8))(v27, v12);
    v29(v22, a2, v12);
    EmergencyAccessBuddyFlow.isReview.getter();
    EmergencyAccessUserStatus.init(onboardingStatus:isStewieSupported:)();
    v32 = objc_allocWithZone(type metadata accessor for EmergencyAccessFollowUpStartViewController());
    v33 = v63;
    v34 = v63;
    v35 = EmergencyAccessFollowUpStartViewController.init(healthStore:flow:emergencyStatus:)();
LABEL_15:
    v39 = v35;
    v40 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v35];
    [v62 presentViewController:v40 animated:1 completion:0];

    return;
  }

  if (v30 == enum case for EmergencyAccessBuddyFlow.healthOnboarding(_:) || v30 == enum case for EmergencyAccessBuddyFlow.healthReview(_:))
  {
    v29(v25, a2, v12);
    EmergencyAccessBuddyFlow.isReview.getter();
    EmergencyAccessUserStatus.init(onboardingStatus:isStewieSupported:)();
    v37 = objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyStartViewController());
    v33 = v63;
    v38 = v63;
    v35 = EmergencyAccessBuddyStartViewController.init(healthStore:flow:emergencyStatus:)();
    goto LABEL_15;
  }

  v41 = v61;
  static Logger.general.getter();
  v42 = v19;
  v29(v19, a2, v12);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v46 = swift_slowAlloc();
    LODWORD(v58) = v44;
    v47 = v46;
    v62 = swift_slowAlloc();
    v64[0] = v62;
    *v47 = 136315394;
    v64[1] = v57;
    swift_getMetatypeMetadata();
    v48 = String.init<A>(describing:)();
    v50 = sub_1000036D0(v48, v49, v64);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v29(v56, v19, v12);
    v51 = String.init<A>(describing:)();
    v53 = v52;
    v54 = *(v13 + 8);
    v54(v42, v12);
    v55 = sub_1000036D0(v51, v53, v64);

    *(v47 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v43, v58, "[%s] Flow is not supported: %s", v47, 0x16u);
    swift_arrayDestroy();

    (*(v59 + 8))(v61, v60);
  }

  else
  {

    v54 = *(v13 + 8);
    v54(v42, v12);
    (*(v59 + 8))(v41, v60);
  }

  v54(v27, v12);
}

unint64_t sub_100062BC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getWitnessTable();
  return sub_100029354(a1);
}

uint64_t sub_100062C3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

uint64_t sub_100062C9C(uint64_t a1)
{
  *(a1 + 8) = sub_100062D04(&qword_1000DCDC0);
  result = sub_100062D04(&qword_1000DCDC8);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100062D04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicalIDEmergencyBuddyDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100062D48(void *a1)
{
  v3 = *(type metadata accessor for EmergencyAccessBuddyFlow() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10006255C(a1, v1 + v4, v5);
}

uint64_t sub_100062DE4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  __chkstk_darwin(v2);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InsetGroupedListStyle();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065BB8();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000660C4();
  v44 = v15;
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000661E0();
  v46 = v19;
  v47 = *(v19 - 8);
  v20 = *(v47 + 64);
  __chkstk_darwin(v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000662E4();
  v48 = v23;
  v50 = *(v23 - 8);
  v24 = *(v50 + 64);
  __chkstk_darwin(v23);
  v41 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  sub_100065C68(0);
  sub_100066198(&qword_1000DCE48, sub_100065C68);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v26 = sub_100066198(&qword_1000DCE58, sub_100065BB8);
  View.listStyle<A>(_:)();
  (*(v42 + 8))(v8, v5);
  (*(v11 + 8))(v14, v10);
  LocalizedStringKey.init(stringLiteral:)();
  v57 = v10;
  v58 = v5;
  v59 = v26;
  v60 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v44;
  View.navigationTitle(_:)();

  v29 = v18;
  v30 = v28;
  (*(v45 + 8))(v29, v28);
  v32 = v51;
  v31 = v52;
  v33 = v49;
  (*(v51 + 104))(v49, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v52);
  v57 = v30;
  v58 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v41;
  v36 = v46;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v32 + 8))(v33, v31);
  (*(v47 + 8))(v22, v36);
  v37 = v43;
  v56 = *(v43 + 72);
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.projectedValue.getter();
  v54 = v37;
  v57 = v36;
  v58 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v48;
  View.alert(isPresented:content:)();

  return (*(v50 + 8))(v35, v38);
}

uint64_t sub_100063484@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  sub_100065F94(0, &qword_1000DCE30, sub_100065FF4);
  v68 = v3;
  v75 = *(v3 - 8);
  v4 = v75[8];
  v5 = __chkstk_darwin(v3);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v71 = &v60 - v7;
  sub_100065F94(0, &qword_1000DCE28, sub_100065E8C);
  v70 = v8;
  v64 = *(v8 - 8);
  v9 = v64;
  v10 = *(v64 + 64);
  v11 = __chkstk_darwin(v8);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  sub_100065F94(0, &qword_1000DCDE8, sub_100065D78);
  v73 = v15;
  v66 = *(v15 - 8);
  v16 = v66;
  v17 = *(v66 + 64);
  v18 = __chkstk_darwin(v15);
  v72 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v78 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v83 = Text.init(_:tableName:bundle:comment:)();
  v84 = v22;
  v85 = v23 & 1;
  v86 = v24;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v25;
  v81 = v26 & 1;
  v82 = v27;
  sub_100065D78(0);
  sub_100066198(&qword_1000DCE88, sub_100065D78);
  v65 = v21;
  Section<>.init(header:footer:content:)();
  v77 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v83 = Text.init(_:tableName:bundle:comment:)();
  v84 = v28;
  v85 = v29 & 1;
  v86 = v30;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v31;
  v81 = v32 & 1;
  v82 = v33;
  sub_100065E8C();
  sub_100066468();
  v34 = v14;
  v63 = v14;
  Section<>.init(header:footer:content:)();
  v76 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v83 = Text.init(_:tableName:bundle:comment:)();
  v84 = v35;
  v85 = v36 & 1;
  v86 = v37;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v38;
  v81 = v39 & 1;
  v82 = v40;
  sub_100065FF4();
  sub_100066198(&qword_1000DCEA8, sub_100065FF4);
  v41 = v71;
  Section<>.init(header:footer:content:)();
  v61 = *(v16 + 16);
  v42 = v72;
  v43 = v73;
  v61(v72, v21, v73);
  v62 = *(v9 + 16);
  v44 = v74;
  v62(v74, v34, v70);
  v45 = v75[2];
  v46 = v67;
  v47 = v68;
  v45(v67, v41, v68);
  v48 = v45;
  v49 = v69;
  v61(v69, v42, v43);
  sub_100065C9C();
  v51 = v50;
  v52 = v44;
  v53 = v70;
  v62(&v49[*(v50 + 48)], v52, v70);
  v48(&v49[*(v51 + 64)], v46, v47);
  v54 = v75[1];
  v55 = v47;
  v54(v71, v47);
  v56 = *(v64 + 8);
  v56(v63, v53);
  v57 = *(v66 + 8);
  v58 = v73;
  v57(v65, v73);
  v54(v46, v55);
  v56(v74, v53);
  return (v57)(v72, v58);
}

uint64_t sub_100063CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_100065E8C();
  v4 = *(v3 - 8);
  v38 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v35 - v8;
  sub_100065E10();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v46 = *(a1 + 48);
  v47 = *(a1 + 64);
  v44 = *(a1 + 48);
  v45 = *(a1 + 64);
  v35 = &type metadata accessor for State;
  sub_100066E40(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.projectedValue.getter();
  *&v41 = 0x1000000000000036;
  *(&v41 + 1) = 0x80000001000A5740;
  sub_100039898();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  v44 = v46;
  v45 = v47;
  State.projectedValue.getter();
  v16 = v42;
  v17 = v43;
  v18 = &v15[*(v10 + 44)];
  *v18 = v41;
  *(v18 + 2) = v16;
  *(v18 + 3) = v17;
  LocalizedStringKey.init(stringLiteral:)();
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a1 + 96);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  v22 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v22;
  sub_100066620(a1, &v41);
  v23 = v36;
  Button<>.init(_:action:)();
  v41 = *(a1 + 88);
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, v35);
  State.wrappedValue.getter();
  v24 = v44;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = v23;
  v28 = &v23[*(v38 + 44)];
  *v28 = KeyPath;
  v28[1] = sub_100066F9C;
  v28[2] = v26;
  v29 = v37;
  sub_1000667C4(v15, v37, sub_100065E10);
  v30 = v23;
  v31 = v39;
  sub_1000667C4(v30, v39, sub_100065E8C);
  v32 = v40;
  sub_1000667C4(v29, v40, sub_100065E10);
  sub_100066B08(0, &qword_1000DCDF8, sub_100065E10, sub_100065E8C);
  sub_1000667C4(v31, v32 + *(v33 + 48), sub_100065E8C);
  sub_10006682C(v27, sub_100065E8C);
  sub_10006682C(v15, sub_100065E10);
  sub_10006682C(v31, sub_100065E8C);
  return sub_10006682C(v29, sub_100065E10);
}

uint64_t sub_100064148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_1000641E0, v6, v5);
}

uint64_t sub_1000641E0()
{
  v1 = *(v0 + 88);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  type metadata accessor for NotificationSyncStoreModel();
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel);
  *(v0 + 120) = StateObject.wrappedValue.getter();
  v5 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v5;
  sub_100066E40(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.wrappedValue.getter();
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  *(v0 + 128) = v7;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_100064348;

  return sub_1000234F8(3, v6, v7);
}

uint64_t sub_100064348()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return _swift_task_switch(sub_1000644A8, v6, v5);
}

uint64_t sub_1000644A8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  *(v0 + 56) = *(v2 + 72);
  *(v0 + 144) = 1;
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();
  *(v0 + 72) = *(v2 + 88);
  *(v0 + 145) = 0;
  State.wrappedValue.setter();
  v3 = *(v0 + 8);

  return v3();
}

void sub_100064580(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = swift_allocObject();
  v5 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a1 + 96);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  v7 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v7;
  sub_100066620(a1, v13);
  Button<>.init(_:action:)();
  v13[0] = *(a1 + 88);
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v12;
  sub_100065E8C();
  v11 = (a2 + *(v10 + 36));
  *v11 = KeyPath;
  v11[1] = sub_100066658;
  v11[2] = v9;
}

uint64_t sub_1000646FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100066C68(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v16[0] = *(a1 + 88);
  v17 = 1;
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  sub_100066620(a1, v16);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  v12 = *(a1 + 80);
  *(v11 + 96) = *(a1 + 64);
  *(v11 + 112) = v12;
  *(v11 + 128) = *(a1 + 96);
  v13 = *(a1 + 16);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  v14 = *(a1 + 48);
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 80) = v14;
  sub_100084B64(0, 0, v8, a3, v11);
}

uint64_t sub_1000648B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100064948, v6, v5);
}

uint64_t sub_100064948()
{
  v1 = v0[6];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  type metadata accessor for NotificationSyncStoreModel();
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel);
  v0[10] = StateObject.wrappedValue.getter();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100064A54;

  return sub_1000234F8(1, 0, 0);
}

uint64_t sub_100064A54()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_100064B98, v5, v4);
}

uint64_t sub_100064B98()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  *(v0 + 16) = *(v2 + 72);
  *(v0 + 96) = 1;
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();
  *(v0 + 32) = *(v2 + 88);
  *(v0 + 97) = 0;
  State.wrappedValue.setter();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100064C70(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  type metadata accessor for NotificationSyncStoreModel();
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel);
  StateObject.wrappedValue.getter();
  ObservedObject.init(wrappedValue:)();
  sub_100066070();
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_100064D60@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100064DD8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_100066C68(0, &qword_1000DCE78, &type metadata accessor for Alert.Button, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v43 = v42 - v4;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  type metadata accessor for NotificationSyncStoreModel();
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = v46._countAndFlagsBits;
  if (LOBYTE(v46._object) == 1)
  {
    object = 0x80000001000A8470;
    v46._countAndFlagsBits = 0x203A726F727245;
    v46._object = 0xE700000000000000;
    v45._countAndFlagsBits = countAndFlagsBits;
    swift_errorRetain();
    sub_100008C14();
    v10._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v10);

    sub_10006644C(countAndFlagsBits, 1);
    v11 = 0xD00000000000001ALL;
  }

  else if (v46._countAndFlagsBits)
  {
    [v46._countAndFlagsBits action];
    v12 = NSStringFromHKNotificationInstructionAction();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v45._countAndFlagsBits = v13;
    v45._object = v15;
    sub_100039898();
    v16 = StringProtocol.localizedCapitalized.getter();
    v18 = v17;

    v46._countAndFlagsBits = v16;
    v46._object = v18;
    v19._countAndFlagsBits = 0xD000000000000011;
    v19._object = 0x80000001000A84D0;
    String.append(_:)(v19);
    object = v46._object;
    v11 = v46._countAndFlagsBits;
    v46._countAndFlagsBits = 0xD000000000000026;
    v46._object = 0x80000001000A84F0;
    v20 = [countAndFlagsBits categoryIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v45._countAndFlagsBits = 2230794;
      v45._object = 0xE300000000000000;
      v25 = [countAndFlagsBits categoryIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      v30._countAndFlagsBits = 34;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      String.append(_:)(v45);
      sub_10006644C(countAndFlagsBits, 0);
    }

    else
    {
      sub_10006644C(countAndFlagsBits, 0);
    }
  }

  else
  {
    object = 0x80000001000A8490;
    v46._countAndFlagsBits = 0xD00000000000001DLL;
    v46._object = 0x80000001000A84B0;
    v11 = 0xD000000000000010;
  }

  v45._countAndFlagsBits = v11;
  v45._object = object;
  sub_100039898();
  v31 = Text.init<A>(_:)();
  v42[2] = v32;
  v42[3] = v31;
  v42[1] = v33;
  v45 = v46;
  Text.init<A>(_:)();
  LocalizedStringKey.init(stringLiteral:)();
  v34 = Text.init(_:tableName:bundle:comment:)();
  v36 = v35;
  v38 = v37;
  v39 = v43;
  static Alert.Button.default(_:action:)();
  sub_1000385F4(v34, v36, v38 & 1);

  v40 = type metadata accessor for Alert.Button();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  return Alert.init(title:message:dismissButton:)();
}

uint64_t sub_1000652F4@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_100062DE4(a1);
}

uint64_t sub_100065340@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v53 = a5;
  sub_100066CCC();
  v10 = v9;
  v55 = *(v9 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v9);
  v50 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100066C34(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v56 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v52 = v48 - v17;
  sub_100066B84();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v18);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v20[2];
  v54 = v48 - v26;
  v51 = v25;
  v25();
  v27 = a1;
  v59 = a1;
  v60 = a2;
  v28 = a2;
  v49 = a3;
  v61 = a3;
  v62 = a4;
  v29 = a4;
  sub_100066E40(0, &qword_1000DCF00, &type metadata for String, &type metadata accessor for Binding);
  Binding.wrappedValue.getter();
  v31 = v57;
  v30 = v58;

  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = swift_allocObject();
    v33[2] = v27;
    v33[3] = v28;
    v33[4] = v49;
    v33[5] = v29;
    sub_100066D30();
    v48[1] = v34;
    sub_100066D90();
    v49 = v24;

    v24 = v49;
    v35 = v50;
    Button.init(action:label:)();
    v36 = v55;
    v37 = v52;
    (*(v55 + 32))(v52, v35, v10);
    v38 = 0;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    v38 = 1;
    v39 = v55;
    v40 = v52;
  }

  (*(v39 + 56))(v40, v38, 1, v10);
  v41 = v54;
  v42 = v51;
  (v51)(v24, v54, v19);
  v43 = v56;
  sub_1000667C4(v40, v56, sub_100066C34);
  v44 = v53;
  (v42)(v53, v24, v19);
  sub_100066B08(0, &qword_1000DCEC8, sub_100066B84, sub_100066C34);
  sub_1000667C4(v43, v44 + *(v45 + 48), sub_100066C34);
  sub_10006682C(v40, sub_100066C34);
  v46 = v20[1];
  v46(v41, v19);
  sub_10006682C(v43, sub_100066C34);
  return (v46)(v24, v19);
}

uint64_t sub_1000657B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = [objc_opt_self() opaqueSeparatorColor];
  v4 = Color.init(_:)();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_10006585C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_100066A64();
  return sub_100065340(v3, v4, v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_1000658D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10006593C@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  if (!a1)
  {
    a1 = [objc_allocWithZone(HKHealthStore) init];
  }

  v4 = type metadata accessor for NotificationSyncStoreModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  result = sub_10002327C(0x46656C706D617845, 0xEE00657275746165, v7);
  strcpy(a2, "ExampleFeature");
  *(a2 + 15) = -18;
  *(a2 + 16) = v7;
  *(a2 + 24) = sub_100065AAC;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  return result;
}

__n128 sub_100065AC0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100065AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100065B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100065BB8()
{
  if (!qword_1000DCDD0)
  {
    sub_100065C68(255);
    sub_100066198(&qword_1000DCE48, sub_100065C68);
    v0 = type metadata accessor for List();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCDD0);
    }
  }
}

void sub_100065C9C()
{
  if (!qword_1000DCDE0)
  {
    sub_100065F94(255, &qword_1000DCDE8, sub_100065D78);
    sub_100065F94(255, &qword_1000DCE28, sub_100065E8C);
    sub_100065F94(255, &qword_1000DCE30, sub_100065FF4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DCDE0);
    }
  }
}

void sub_100065DB4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_100066B08(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100065E10()
{
  if (!qword_1000DCE00)
  {
    sub_100065F34(255, &qword_1000DCE08, &type metadata accessor for TextField);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCE00);
    }
  }
}

void sub_100065E8C()
{
  if (!qword_1000DCE10)
  {
    sub_100065F34(255, &qword_1000DCE18, &type metadata accessor for Button);
    sub_100066E40(255, &qword_1000DCE20, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCE10);
    }
  }
}

void sub_100065F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Text, &protocol witness table for Text);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100065F94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Section();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100065FF4()
{
  if (!qword_1000DCE38)
  {
    sub_100066070();
    v0 = type metadata accessor for NavigationLink();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCE38);
    }
  }
}

unint64_t sub_100066070()
{
  result = qword_1000DCE40;
  if (!qword_1000DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCE40);
  }

  return result;
}

void sub_1000660C4()
{
  if (!qword_1000DCE50)
  {
    sub_100065BB8();
    type metadata accessor for InsetGroupedListStyle();
    sub_100066198(&qword_1000DCE58, sub_100065BB8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DCE50);
    }
  }
}

uint64_t sub_100066198(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000661E0()
{
  if (!qword_1000DCE60)
  {
    sub_1000660C4();
    sub_100065BB8();
    type metadata accessor for InsetGroupedListStyle();
    sub_100066198(&qword_1000DCE58, sub_100065BB8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DCE60);
    }
  }
}

void sub_1000662E4()
{
  if (!qword_1000DCE68)
  {
    sub_1000661E0();
    sub_1000660C4();
    sub_100065BB8();
    type metadata accessor for InsetGroupedListStyle();
    sub_100066198(&qword_1000DCE58, sub_100065BB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DCE68);
    }
  }
}

void sub_10006644C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_100066468()
{
  result = qword_1000DCE90;
  if (!qword_1000DCE90)
  {
    sub_100065E8C();
    sub_1000664E8();
    sub_10006655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCE90);
  }

  return result;
}

unint64_t sub_1000664E8()
{
  result = qword_1000DCE98;
  if (!qword_1000DCE98)
  {
    sub_100065F34(255, &qword_1000DCE18, &type metadata accessor for Button);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCE98);
  }

  return result;
}

unint64_t sub_10006655C()
{
  result = qword_1000DCEA0;
  if (!qword_1000DCEA0)
  {
    sub_100066E40(255, &qword_1000DCE20, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyTransformModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCEA0);
  }

  return result;
}

uint64_t sub_100066670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004BB0C;

  return sub_1000648B0(a1, v4, v5, v1 + 32);
}

uint64_t sub_100066720()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1000665E0();
  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000667C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006682C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006688C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_1000665E0();
  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100066900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100018D6C;

  return sub_100064148(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000669B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}