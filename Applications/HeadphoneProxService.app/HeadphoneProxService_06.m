uint64_t sub_10009A778()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000CBCA4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10009A7C8()
{
  v1 = *(v0 + 16);

  sub_100008598(v0 + 24);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return v0;
}

uint64_t sub_10009A820()
{
  sub_10009A7C8();

  return swift_deallocClassInstance();
}

void sub_10009A944(void *a1)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_1001231C0);
  v3 = a1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v6 = 136315394;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v9 = v3;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_100078978(v10, v11, v18);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "NISession %s Invalidated: %@", v6, 0x16u);
    sub_10000E950(v7, &unk_10011D820, &qword_1000D7280);

    sub_10000EA94(v8);
  }

  v18[3] = &type metadata for AudioAccessoryFeatures;
  v18[4] = sub_10009B230();
  LOBYTE(v18[0]) = 1;
  v14 = isFeatureEnabled(_:)();
  sub_10000EA94(v18);
  if (v14)
  {
    if (swift_weakLoadStrong())
    {
      sub_100099938();
    }
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Feature Flag is disabled", v17, 2u);
    }
  }
}

void sub_10009ACDC(void *a1, uint64_t a2, char a3)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_1001231C0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315650;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_100078978(v13, v14, v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "NISession %s Suspension Ended: %ld, isActive: %{BOOL}d", v10, 0x1Cu);
    sub_10000EA94(v11);
  }

  v20[3] = &type metadata for AudioAccessoryFeatures;
  v20[4] = sub_10009B230();
  LOBYTE(v20[0]) = 1;
  v16 = isFeatureEnabled(_:)();
  sub_10000EA94(v20);
  if (v16)
  {
    if (swift_weakLoadStrong())
    {
      sub_100099938();
    }
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Feature Flag is disabled", v19, 2u);
    }
  }
}

id sub_10009B0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NISessionDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009B130()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009B1D0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_10009B230()
{
  result = qword_10011F660;
  if (!qword_10011F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F660);
  }

  return result;
}

void sub_10009B284(void *a1)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_1001231C0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v7 = v3;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100078978(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "NISession %s Running", v5, 0xCu);
    sub_10000EA94(v6);
  }

  else
  {
  }
}

void sub_10009B428(void *a1)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_1001231C0);
  v3 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100078978(v9, v10, &v14);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, oslog, v4, "NISession %s Failed: %@", v5, 0x16u);
    sub_10000E950(v6, &unk_10011D820, &qword_1000D7280);

    sub_10000EA94(v7);
  }

  else
  {
  }
}

void sub_10009B648(void *a1, uint64_t a2)
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_1001231C0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    sub_1000084D4(0, &qword_10011F668, NISession_ptr);
    v9 = v5;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_100078978(v10, v11, &v14);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "NISession %s Suspended: %ld", v7, 0x16u);
    sub_10000EA94(v8);
  }

  else
  {
  }
}

uint64_t sub_10009B800(void *a1)
{
  v1 = [a1 deviceIdentifer];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_1001231C0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Nearby Device: (nil)", v7, 2u);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10009B918(void *a1, void *a2)
{
  result = sub_10009B800(a1);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = result;
      if ([a2 devicePresencePreset] == 1)
      {
        if (qword_10011C720 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_10000A570(v7, qword_1001231C0);

        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v12 = v11;
          *v10 = 136315138;
          *(v10 + 4) = sub_100078978(v6, v5, &v12);
          _os_log_impl(&_mh_execute_header, v8, v9, "Found inner-boundary device: %s", v10, 0xCu);
          sub_10000EA94(v11);
        }

        if (swift_weakLoadStrong())
        {
          sub_10009A0E0(v6, v5);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009BAF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009BB40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10009BBB4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10009BD98();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10009BF2C(v4, &v12);
      v9[0] = v12;
      v9[1] = v13;
      v10 = v14;
      if (*(&v13 + 1))
      {
        sub_10000E9B0(v9, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000CC9E4(0, v5[2] + 1, 1, v5);
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          v5 = sub_1000CC9E4((v6 > 1), v7 + 1, 1, v5);
        }

        v5[2] = v7 + 1;
        sub_10000E9B0(v11, &v5[5 * v7 + 4]);
      }

      else
      {
        sub_10009BF9C(v9);
      }

      v4 += 40;
      --v3;
    }

    while (v3);

    if (v5[2])
    {
      goto LABEL_12;
    }
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_12:
      sub_10000E9C8((v5 + 4), a1);

      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10009BD24()
{
  type metadata accessor for HeadphoneDevice();
  [objc_allocWithZone(CBDevice) init];
  type metadata accessor for Headphone_Manager();
  static Headphone_Manager.shared.getter();
  result = HeadphoneDevice.__allocating_init(cbDevice:delegate:)();
  qword_1001231D8 = result;
  return result;
}

uint64_t sub_10009BD98()
{
  sub_100008438(&qword_10011F700, qword_1000D9630);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D8C40;
  if (qword_10011C728 != -1)
  {
    swift_once();
  }

  v1 = qword_1001231D8;
  v2 = type metadata accessor for B698FeatureContent();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  v6 = B698FeatureContent.init(id:headphoneDevice:)();
  if (v6)
  {
    v7 = &protocol witness table for B698FeatureContent;
  }

  else
  {
    v2 = 0;
    v7 = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
  }

  *(v0 + 32) = v6;
  *(v0 + 56) = v2;
  *(v0 + 64) = v7;
  v8 = qword_1001231D8;
  v9 = type metadata accessor for B788FeatureContent();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v8;
  v13 = B788FeatureContent.init(id:headphoneDevice:)();
  if (v13)
  {
    v14 = &protocol witness table for B788FeatureContent;
  }

  else
  {
    v9 = 0;
    v14 = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
  }

  *(v0 + 72) = v13;
  *(v0 + 96) = v9;
  *(v0 + 104) = v14;
  v15 = qword_1001231D8;
  v16 = type metadata accessor for B768FeatureContent();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v15;
  v20 = B768FeatureContent.init(id:headphoneDevice:)();
  if (v20)
  {
    v21 = &protocol witness table for B768FeatureContent;
  }

  else
  {
    v16 = 0;
    v21 = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
  }

  *(v0 + 112) = v20;
  *(v0 + 136) = v16;
  *(v0 + 144) = v21;
  return v0;
}

uint64_t sub_10009BF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011CB48, &qword_1000D85B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009BF9C(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011CB48, &qword_1000D85B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C004()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
  swift_beginAccess();
  sub_10000E390(v0 + v6, v5);
  v7 = *&v5[*(v2 + 144)];
  v8 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 isAirPods];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1000130C4(v7);
  sub_10000E8F4(v5);
  v12 = v10 | v11;
  if (v12 != 1)
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A570(v18, qword_100123040);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      v12 = 0;
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "WhatsNew2025FlowController: Device not airpods so cannot show whats new";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

LABEL_18:

    return v12;
  }

  if (sub_1000A9D50())
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A570(v13, qword_100123040);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      v12 = 1;
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "WhatsNew2025FlowController: Showing initial card";
    goto LABEL_14;
  }

  return 0;
}

id sub_10009C27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WhatsNew2025FlowController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WhatsNew2025FlowController()
{
  result = qword_10011F730;
  if (!qword_10011F730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10009C340@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000CD1FC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10003CE5C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_10009C3A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
    v1 = v4;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10009C4C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10009C520()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F740);
  v1 = sub_10000A570(v0, qword_10011F740);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10009C5E8(uint64_t a1)
{
  if (qword_10011C730 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011F740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_100078978(v7, v8, v33);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Decoding %s", v5, 0xCu);
    sub_10000EA94(v6);
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v10 = sub_1000CD1FC(v33), (v11 & 1) == 0))
  {
    sub_100047824(v33);
LABEL_31:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Cert list is missing";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  sub_10003CE5C(*(a1 + 56) + 32 * v10, v34);
  sub_100047824(v33);
  sub_100008438(&qword_10011F7F8, &qword_1000D96F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v12 = sub_1000CD1FC(v33), (v13 & 1) == 0))
  {
    sub_100047824(v33);
    goto LABEL_36;
  }

  sub_10003CE5C(*(a1 + 56) + 32 * v12, v34);
  sub_100047824(v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Model is missing";
      goto LABEL_33;
    }

LABEL_34:

    return;
  }

  v32 = MEMORY[0xD00000000000002C];
  if (MEMORY[0xD00000000000002C])
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= MEMORY[0xD00000000000002C])
      {
        __break(1u);
        return;
      }

      v15 = *(8 * v14 - 0x2FFFFFFFFFFFFFC4);

      AnyHashable.init<A>(_:)();
      if (!*(v15 + 16) || (v16 = sub_1000CD1FC(v33), (v17 & 1) == 0))
      {

        sub_100047824(v33);
        goto LABEL_41;
      }

      sub_10003CE5C(*(v15 + 56) + 32 * v16, v34);
      sub_100047824(v33);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_41:

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_34;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "Serial missing";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

        goto LABEL_34;
      }

      v34[0] = 0xD000000000000011;
      v34[1] = 0x80000001000E1AE0;
      AnyHashable.init<A>(_:)();
      if (!*(v15 + 16))
      {
        break;
      }

      v18 = sub_1000CD1FC(v33);
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_10003CE5C(*(v15 + 56) + 32 * v18, v34);
      sub_100047824(v33);

      if (!swift_dynamicCast())
      {
        goto LABEL_22;
      }

      v20 = 0xD000000000000013;
      v21 = 0x80000001000E1AC0;
LABEL_23:
      sub_10007CE0C(v20, v21);
      v22 = String._bridgeToObjectiveC()();

      v23 = String._bridgeToObjectiveC()();
      if (v21 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100047878(v20, v21);
      }

      v25 = [objc_allocWithZone(AMSDeviceOfferRegistrationItem) initWithSerialNumber:v22 model:v23 validationData:isa];

      v26 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v14;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100047878(v20, v21);

      if (v32 == v14)
      {
        goto LABEL_38;
      }
    }

    sub_100047824(v33);
LABEL_22:
    v20 = 0;
    v21 = 0xF000000000000000;
    goto LABEL_23;
  }

LABEL_38:
}

unint64_t sub_10009CCD8()
{
  result = qword_10011F800;
  if (!qword_10011F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F800);
  }

  return result;
}

void sub_10009CD34()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v108 = &v103 - v7;
  v111.receiver = v0;
  v111.super_class = ObjectType;
  objc_msgSendSuper2(&v111, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    sub_1000145EC(v9 + 16, v109);
    swift_unknownObjectRelease();
    v10 = v110;
    if (v110)
    {
      v11 = sub_10000E7E4(v109, v110);
      v12 = *(v10 - 8);
      v13 = *(v12 + 64);
      __chkstk_darwin(v11);
      v15 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v15);
      sub_10001465C(v109);
      v16 = *v15;
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v16 + v17, v6);
      (*(v12 + 8))(v15, v10);
      sub_10000E828(v6, v108);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v20 = [v0 traitCollection];
      [v20 userInterfaceStyle];

      v21 = objc_allocWithZone(BSUICAPackageView);
      v22 = v19;
      v23 = String._bridgeToObjectiveC()();
      v24 = [v21 initWithPackageName:v23 inBundle:v22];

      if (v24)
      {
        v25 = String._bridgeToObjectiveC()();

        [v24 setState:v25 animated:1];

        v26 = v24;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v27 = [v0 contentView];
        [v27 addSubview:v26];

        v28 = [v0 contentView];
        v103 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel;
        [v28 addSubview:*&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel]];

        v29 = [v0 contentView];
        v107 = v22;
        v105 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel;
        [v29 addSubview:*&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel]];

        v106 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1000D6A60;
        v31 = v30;
        v32 = [v26 topAnchor];
        v33 = [v0 contentView];
        v34 = [v33 mainContentGuide];

        v35 = [v34 topAnchor];
        v36 = [v32 constraintGreaterThanOrEqualToAnchor:v35 constant:0.0];

        v31[4] = v36;
        v37 = [v26 heightAnchor];
        v38 = [v37 constraintEqualToConstant:240.0];

        v31[5] = v38;
        v39 = [v26 widthAnchor];
        v40 = [v39 constraintEqualToConstant:240.0];

        v31[6] = v40;
        v41 = v31;
        v42 = [v26 leadingAnchor];
        v43 = [v0 contentView];
        v44 = [v43 mainContentGuide];

        v45 = [v44 leadingAnchor];
        v46 = [v42 constraintEqualToAnchor:v45];

        v31[7] = v46;
        v47 = [v26 trailingAnchor];
        v48 = [v0 contentView];
        v49 = [v48 mainContentGuide];

        v50 = [v49 trailingAnchor];
        v51 = [v47 constraintEqualToAnchor:v50];

        v31[8] = v51;
        v52 = v103;
        v53 = [*&v0[v103] topAnchor];
        v104 = v26;
        v54 = [v26 bottomAnchor];

        v55 = [v53 constraintGreaterThanOrEqualToAnchor:v54 constant:PRXMainContentMargin];
        v41[9] = v55;
        v56 = [*&v0[v52] leadingAnchor];
        v57 = [v0 contentView];
        v58 = [v57 mainContentGuide];

        v59 = [v58 leadingAnchor];
        v60 = [v56 constraintEqualToAnchor:v59];

        v41[10] = v60;
        v61 = [*&v0[v52] trailingAnchor];
        v62 = [v0 contentView];
        v63 = [v62 mainContentGuide];

        v64 = [v63 trailingAnchor];
        v65 = [v61 constraintEqualToAnchor:v64];

        v41[11] = v65;
        v66 = v105;
        v67 = [*&v0[v105] topAnchor];
        v68 = [*&v0[v52] bottomAnchor];
        v69 = [v67 constraintEqualToAnchor:v68 constant:PRXMinimumInterItemMargin];

        v41[12] = v69;
        v70 = [*&v0[v66] leadingAnchor];
        v71 = [v0 contentView];
        v72 = [v71 mainContentGuide];

        v73 = [v72 leadingAnchor];
        v74 = [v70 constraintEqualToAnchor:v73];

        v41[13] = v74;
        v75 = [*&v0[v66] trailingAnchor];
        v76 = [v0 contentView];
        v77 = [v76 mainContentGuide];

        v78 = [v77 trailingAnchor];
        v79 = [v75 constraintEqualToAnchor:v78];

        v41[14] = v79;
        v80 = [*&v0[v66] bottomAnchor];
        v81 = [v0 contentView];
        v82 = [v81 mainContentGuide];

        v83 = [v82 bottomAnchor];
        v84 = [v80 constraintEqualToAnchor:v83];

        v41[15] = v84;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v106 activateConstraints:isa];

        type metadata accessor for HeadphoneProxFeatureManager();
        static HeadphoneProxFeatureManager.shared.getter();
        v86 = v108;
        v87 = *(v108 + 144);
        v88 = *(v108 + 152);
        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v89 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
        v90 = *(v89 - 8);
        v91 = *(v90 + 72);
        v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1000D5250;
        (*(v90 + 104))(v93 + v92, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.heartRateMonitor(_:), v89);
        dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

        v94 = v86;
      }

      else
      {

        if (qword_10011C638 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_10000A570(v99, qword_100123040);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "Heart Rate: micaFile is invalid, exiting", v102, 2u);
        }

        v94 = v108;
      }

      sub_10000E8F4(v94);
      return;
    }

    sub_10001465C(v109);
  }

  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_10000A570(v95, qword_100123040);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "Heart Rate: Headphone Model is nil, exiting", v98, 2u);
  }
}

void sub_10009DAD4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel];
  v6 = String._bridgeToObjectiveC()();
  [v5 setText:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel];
  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];

  [v1 setShouldCenterAlignText:1];
  v11 = a1[4];
  v12 = a1[5];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  v18[4] = sub_10009DE64;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000C034;
  v18[3] = &unk_100107BF8;
  v15 = _Block_copy(v18);
  v16 = [objc_opt_self() actionWithTitle:v14 style:1 handler:v15];

  _Block_release(v15);

  v17 = [v1 addAction:v16];
}

void sub_10009DCC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B90DC();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10009DE2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10009DE84(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_trainingView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_horizontalConstraint] = 0;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_titleLabel;
  v5 = [objc_allocWithZone(PRXLabel) initWithStyle:4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTextAlignment:1];
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_subTitleLabel;
  v7 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTextAlignment:1];
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_type] = 29;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t sub_10009DFCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(HPConnectionInfoDelegate) init];
  v3 = type metadata accessor for AMSMarketingOffersClient();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v15[3] = v3;
  v15[4] = &off_100107AE8;
  v15[0] = v4;
  v5 = type metadata accessor for HeadphoneUpsellClient();
  v6 = swift_allocObject();
  v7 = sub_1000A06AC(v15, v3);
  v8 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_1000A06FC(v2, *v10, v6);
  result = sub_10000EA94(v15);
  a1[3] = v5;
  a1[4] = &off_100103B00;
  *a1 = v12;
  return result;
}

void sub_10009E128(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10009E1A0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F870);
  v1 = sub_10000A570(v0, qword_10011F870);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_10009E268()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17[-v4];
  v6 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager;
  v7 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager);
  v8 = v7;
  if (v7 == 1)
  {
    v9 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
    swift_beginAccess();
    v10 = v9[3];
    if (v10)
    {
      v11 = *sub_10000E7E4(v9, v10);
      v12 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v11 + v12, v5);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = type metadata accessor for HeadphoneModel(0);
    (*(*(v14 - 8) + 56))(v5, v13, 1, v14);
    type metadata accessor for USBHeadphoneConnectionManager();
    swift_allocObject();
    v8 = sub_100040B90(v5);
    v15 = *(v1 + v6);
    *(v1 + v6) = v8;

    sub_1000A0644(v15);
  }

  sub_1000A0654(v7);
  return v8;
}

id sub_10009E3F8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = &v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter];
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *&v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager] = 1;
  v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed] = 0;
  v9 = [objc_allocWithZone(type metadata accessor for HeadphoneRouter()) init];
  v10 = &v3[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router];
  *v10 = v9;
  v10[1] = &off_100105398;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

void *sub_10009E610(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for HeadphoneModel(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v125 - v13;
  v15 = [a1 userInfo];
  if (v15)
  {
    v128 = v14;
    v126 = a2;
    v127 = a3;
    v16 = v15;
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_10011C738 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A570(v18, qword_10011F870);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v21 + 4) = v23;
      v22->super.isa = v23.super.isa;
      _os_log_impl(&_mh_execute_header, v19, v20, "Launched with userInfo: %@", v21, 0xCu);
      sub_10000E950(v22, &unk_10011D820, &qword_1000D7280);
    }

    v24 = v128;
    sub_100043278(v17, v128);
    if (*(v24 + *(v8 + 132)))
    {
      sub_10000E390(v24, v12);
      type metadata accessor for HeadphoneFakePairingSession();
      swift_allocObject();
      sub_1000816E8();
      v26 = v25;
      sub_10009DFCC(&v132);
      v27 = *(&v133 + 1);
      v28 = sub_1000A06AC(&v132, *(&v133 + 1));
      v125 = &v125;
      v29 = *(*(v27 - 8) + 64);
      __chkstk_darwin(v28);
      v31 = v24;
      v32 = (&v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v33 + 16))(v32);
      v34 = *v32;
      v35 = type metadata accessor for HeadphoneUpsellClient();
      v130 = v35;
      v131 = &off_100103B00;
      v129[0] = v34;
      v36 = type metadata accessor for HeadphoneInteractor();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      v39 = swift_allocObject();
      v40 = sub_1000A06AC(v129, v35);
      v41 = *(*(v35 - 8) + 64);
      __chkstk_darwin(v40);
      v43 = (&v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v44 + 16))(v43);
      v45 = sub_1000A09A0(v12, v26, *v43, v39, &off_100106E98, sub_1000A2634, &stru_100107D70, sub_1000A2638, &stru_100107D98, sub_1000A2654, &unk_100107DC0, sub_1000A263C, &unk_100107DE8, sub_1000A264C, &stru_100107E10, sub_1000A2640, sub_1000A2644, sub_1000A2648);
    }

    else
    {
      sub_10000E390(v24, v12);
      v51 = [objc_allocWithZone(SFBluetoothPairingSession) init];
      sub_10009DFCC(&v132);
      v52 = *(&v133 + 1);
      v53 = sub_1000A06AC(&v132, *(&v133 + 1));
      v125 = &v125;
      v54 = *(*(v52 - 8) + 64);
      __chkstk_darwin(v53);
      v56 = (&v125 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v57 + 16))(v56);
      v58 = *v56;
      v59 = type metadata accessor for HeadphoneUpsellClient();
      v130 = v59;
      v131 = &off_100103B00;
      v129[0] = v58;
      v31 = v24;
      v36 = type metadata accessor for HeadphoneInteractor();
      v60 = *(v36 + 48);
      v61 = *(v36 + 52);
      v62 = swift_allocObject();
      v63 = sub_1000A06AC(v129, v59);
      v64 = *(*(v59 - 8) + 64);
      __chkstk_darwin(v63);
      v66 = (&v125 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v67 + 16))(v66);
      v45 = sub_1000A09A0(v12, v51, *v66, v62, &off_100106DD0, sub_1000A2560, &stru_100107CA8, sub_1000A2580, &stru_100107CD0, sub_1000A2588, &unk_100107CF8, sub_1000A2590, &unk_100107D20, sub_1000A25B8, &stru_100107D48, sub_1000A2598, sub_1000A25A8, sub_1000A25B0);
    }

    v68 = v45;
    sub_10000EA94(v129);
    sub_10000EA94(&v132);
    *(&v133 + 1) = v36;
    v134 = &off_100106330;
    *&v132 = v68;
    v69 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor;
    swift_beginAccess();
    sub_10000EA2C(&v132, v4 + v69, &qword_10011FBC0, &unk_1000D5EF0);
    swift_endAccess();
    v70 = *(v31 + *(v8 + 192));
    v71 = v31;
    if (v70)
    {
      v72 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
      swift_beginAccess();
      v73 = v72[3];
      if (v73)
      {
        v74 = sub_10000E7E4(v72, v72[3]);
        v125 = &v125;
        v75 = *(v73 - 8);
        v76 = *(v75 + 64);
        __chkstk_darwin(v74);
        v78 = &v125 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v75 + 16))(v78);
        type metadata accessor for HeadphoneInteractor();
        v79 = v70;
        sub_100078158();
        v71 = v128;
        (*(v75 + 8))(v78, v73);
        dispatch thunk of AADBatteryInfoVM.updateBatteryInfo(_:)();
      }
    }

    sub_10000E390(v71, v12);
    v80 = type metadata accessor for HeadphonePresenter();
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    swift_allocObject();
    v83 = sub_1000B5040(v12);
    v84 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter);
    v85 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter);
    *v84 = v83;
    v84[1] = &off_1001087B0;
    v84[2] = &off_1001087F0;
    swift_unknownObjectRelease();
    v86 = *v84;
    if (*v84)
    {
      v87 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor;
      swift_beginAccess();
      sub_10000E88C(v4 + v87, &v132, &qword_10011FBC0, &unk_1000D5EF0);
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_10000EA2C(&v132, v86 + 16, &qword_10011FBC0, &unk_1000D5EF0);
      swift_endAccess();
      swift_unknownObjectRelease();
      if (*v84)
      {
        v88 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        *(*v84 + 64) = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router + 8);
        swift_unknownObjectWeakAssign();
        if (*v84)
        {
          sub_1000B54C8();
        }
      }
    }

    v89 = sub_10009E268();
    if (!v89)
    {
LABEL_31:
      v93 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager;
      v94 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager);
      if (v94)
      {
        if (*v84 && object_getClass(*v84) == _TtC20HeadphoneProxService18HeadphonePresenter)
        {
          swift_unknownObjectRetain();
          v95 = &off_100108770;
        }

        else
        {
          v95 = 0;
        }

        *(v94 + 56) = v95;
        swift_unknownObjectWeakAssign();
        sub_1000A0654(v94);
        swift_unknownObjectRelease();
        sub_1000A0644(v94);
      }

      v96 = *v84;
      if (*v84)
      {
        if (object_getClass(*v84) != _TtC20HeadphoneProxService18HeadphonePresenter)
        {
          v97 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
          v98 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
LABEL_43:
          v101 = v84[2];
          *(&v133 + 1) = swift_getObjectType();
          v134 = *(v101 + 16);
          *&v132 = v96;
LABEL_44:
          v102 = OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter;
          swift_beginAccess();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_10000EA2C(&v132, v98 + v102, &unk_10011E0C0, qword_1000D7D50);
          swift_endAccess();
          swift_unknownObjectRelease();
          *(*v97 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_delegate + 8) = &off_100107C20;
          swift_unknownObjectWeakAssign();
          v103 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
          swift_beginAccess();
          v104 = v103[3];
          if (v104)
          {
            v105 = v84[1];
            v106 = *v84 ? v84[1] : 0;
            v107 = v103[4];
            sub_1000A06AC(v103, v103[3]);
            v108 = *(v107 + 16);
            v109 = swift_unknownObjectRetain();
            v108(v109, v106, v104, v107);
            v110 = v103[3];
            if (v110)
            {
              v111 = *v97;
              v112 = v97[1];
              v113 = v103[4];
              sub_1000A06AC(v103, v103[3]);
              v114 = *(v113 + 40);
              v115 = swift_unknownObjectRetain();
              v114(v115, v112, v110, v113);
            }
          }

          swift_endAccess();
          v116 = v103[3];
          v117 = v128;
          if (v116)
          {
            v118 = *(*sub_10000E7E4(v103, v116) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner);
            if (*v84 && object_getClass(*v84) == _TtC20HeadphoneProxService18HeadphonePresenter)
            {
              swift_unknownObjectRetain();
              v119 = &off_100108760;
            }

            else
            {
              v119 = 0;
            }

            *(v118 + 32) = v119;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          if (v103[3])
          {
            sub_10000E9C8(v103, &v132);
            swift_endAccess();
            v120 = sub_10000E7E4(&v132, *(&v133 + 1));
            v121 = swift_allocObject();
            v122 = v126;
            v123 = v127;
            *(v121 + 16) = v126;
            *(v121 + 24) = v123;
            v124 = *v120;
            sub_100062D70(v122);
            sub_1000693EC(sub_1000A249C, v121);

            sub_10000E8F4(v117);
            return sub_10000EA94(&v132);
          }

          else
          {
            sub_10000E8F4(v117);
            return swift_endAccess();
          }
        }

        v99 = *(v4 + v93);
        v100 = v96[11];
        v96[11] = v99;
        swift_unknownObjectRetain();
        sub_1000A0654(v99);
        swift_unknownObjectRelease();

        v96 = *v84;
        v97 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        v98 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        if (*v84)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v97 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
        v98 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
      }

      v134 = 0;
      v132 = 0u;
      v133 = 0u;
      goto LABEL_44;
    }

    v90 = v89;
    v91 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor;
    swift_beginAccess();
    sub_10000E88C(v4 + v91, &v132, &qword_10011FBC0, &unk_1000D5EF0);
    if (*(&v133 + 1))
    {
      sub_100008438(&qword_10011F968, &unk_1000D98A0);
      type metadata accessor for HeadphoneInteractor();
      if (swift_dynamicCast())
      {
        v92 = &off_100106318;
LABEL_30:
        v90[5] = v92;
        swift_unknownObjectWeakAssign();

        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    else
    {
      sub_10000E950(&v132, &qword_10011FBC0, &unk_1000D5EF0);
    }

    v92 = 0;
    goto LABEL_30;
  }

  if (qword_10011C738 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000A570(v46, qword_10011F870);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Received nil when trying to unwrap userInfo", v49, 2u);
  }

  result = sub_10003E658();
  if (result)
  {
    [result dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10009F6A8(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v3 = sub_10003E658();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_10003E658();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  result = sub_10003E658();
  if (result)
  {
    v6 = result;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v7 = result;
      homeButtonType = MobileGestalt_get_homeButtonType();

      if (homeButtonType >= 0)
      {
        v9 = 16 * (homeButtonType != 2);
      }

      else
      {
        v9 = 16;
      }

      [v6 setDesiredHardwareButtonEvents:v9];
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009F800(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v53.receiver = v2;
  v53.super_class = ObjectType;
  objc_msgSendSuper2(&v53, "viewWillAppear:", a1 & 1);
  v18 = &v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor];
  result = swift_beginAccess();
  v20 = *(v18 + 3);
  if (v20)
  {
    v21 = *sub_10000E7E4(v18, v20);
    v22 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    sub_10000E390(v21 + v22, v15);
    sub_10000E828(v15, v17);
    if (v17[136] == 4)
    {
      if (qword_10011C738 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000A570(v23, qword_10011F870);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Whats New 20205 flow check", v26, 2u);
      }

      sub_10000E390(v17, v12);
      v27 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter];
      if (v27)
      {
        swift_beginAccess();
        sub_10000E88C(v27 + 16, v51, &qword_10011FBC0, &unk_1000D5EF0);
      }

      else
      {
        v52 = 0;
        memset(v51, 0, sizeof(v51));
      }

      v48 = &v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router];
      v29 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router];
      v30 = objc_allocWithZone(type metadata accessor for WhatsNew2025FlowController());
      sub_100008438(&qword_10011F960, &qword_1000D9898);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1000D9820;
      *(v31 + 32) = type metadata accessor for HeadphoneWhatsNew2025ViewController();
      *(v31 + 40) = &off_100103508;
      *(v31 + 48) = &off_1001034B8;
      *(v31 + 56) = type metadata accessor for HeadphoneLiveTranslationViewController();
      *(v31 + 64) = &off_100103320;
      *(v31 + 72) = &off_1001032D0;
      *(v31 + 80) = type metadata accessor for HeadphoneLiveTranslationAssetDownloadViewController();
      *(v31 + 88) = &off_100106CF0;
      *(v31 + 96) = &off_100106CA0;
      *(v31 + 104) = type metadata accessor for HeadphonePauseMediaOnSleepViewController();
      *(v31 + 112) = &off_1001046D0;
      *(v31 + 120) = &off_100104680;
      *(v31 + 128) = type metadata accessor for ChargingCaseViewController();
      *(v31 + 136) = &off_1001042A8;
      *(v31 + 144) = &off_100104258;
      sub_10000E390(v12, v9);
      sub_10000E88C(v51, v50, &qword_10011FBC0, &unk_1000D5EF0);
      *&v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController] = 0;
      v32 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_analyticsController;
      v33 = type metadata accessor for HeadphoneAnalyticsController(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v36 = swift_allocObject();
      sub_10004D5F8((v36 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics));
      *&v30[v32] = v36;
      v37 = &v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
      *v37 = 0;
      *(v37 + 1) = 0;
      *(v37 + 2) = 0;
      *&v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter__underlyingCards] = v31;
      *&v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_proxCards] = v31;
      sub_10000E390(v9, &v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel]);
      if (*(v9 + 19))
      {
        v38 = *(v9 + 18);
        v39 = *(v9 + 19);
      }

      else
      {
        v38 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = &v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address];
      *v40 = v38;
      *(v40 + 1) = v39;
      v41 = &v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_hostingController];
      *v41 = v2;
      *(v41 + 1) = &off_100107C20;
      sub_10000E88C(v50, &v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_interActor], &qword_10011FBC0, &unk_1000D5EF0);
      type metadata accessor for HeadphoneRouter();
      *&v30[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_router] = swift_dynamicCastClassUnconditional();
      v42 = type metadata accessor for ModernFlowPresenter();
      v49.receiver = v30;
      v49.super_class = v42;
      swift_unknownObjectRetain();

      v43 = v2;
      v44 = objc_msgSendSuper2(&v49, "init");
      sub_10000E950(v50, &qword_10011FBC0, &unk_1000D5EF0);
      sub_10000E8F4(v9);
      sub_10000E950(v51, &qword_10011FBC0, &unk_1000D5EF0);
      sub_10000E8F4(v12);
      v45 = sub_10009C004();

      v28 = v48;
      if (v45)
      {
        return sub_10000E8F4(v17);
      }
    }

    else
    {
      v28 = &v2[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router];
    }

    v46 = *v28;
    swift_unknownObjectRetain();
    sub_10004B6D0(v2, v17);
    swift_unknownObjectRelease();
    return sub_10000E8F4(v17);
  }

  return result;
}

void sub_10009FE2C(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000084D4(0, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr);
    sub_10001C19C(&unk_10011F950, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v28;
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
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

  v9 = (v3 + 64) >> 6;
  do
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000084D4(0, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v12 = v27) == 0))
      {
LABEL_29:
        sub_10001C2C4();
        return;
      }
    }

    else
    {
      v10 = v4;
      v11 = v5;
      if (!v5)
      {
        while (1)
        {
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            goto LABEL_29;
          }

          v11 = *(v2 + 8 * v4);
          ++v10;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_22;
      }

LABEL_14:
      v5 = (v11 - 1) & v11;
      v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    v13 = [v12 events];
  }

  while ((v13 & 0x10) == 0);
  sub_10001C2C4();
  v4 = v26;
  v14 = (v26 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
  swift_beginAccess();
  v15 = v14[3];
  if (v15)
  {
    v16 = *sub_10000E7E4(v14, v15) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    if (*(v16 + 136) == 13)
    {
      return;
    }
  }

  if (qword_10011C738 != -1)
  {
    goto LABEL_33;
  }

LABEL_22:
  v17 = type metadata accessor for Logger();
  sub_10000A570(v17, qword_10011F870);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Home button pressed", v20, 2u);
  }

  v21 = OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed;
  if ((*(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed) & 1) != 0 || MKBGetDeviceLockState() - 1 > 1)
  {
    v25 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_router);
    swift_unknownObjectRetain();
    sub_100047C68();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "ignoring first home button press to unlock", v24, 2u);
    }

    *(v4 + v21) = 1;
  }
}

uint64_t sub_1000A0430()
{
  v1 = v0;
  if (qword_10011C738 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011F870);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HeadphoneFlowViewController.didCompleteFlow", v5, 2u);
  }

  v6 = sub_10009E268();
  if (v6)
  {
    [v6[2] invalidate];
  }

  v7 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor);
  swift_beginAccess();
  v8 = v7[3];
  if (v8)
  {
    v9 = sub_10000E7E4(v7, v8);
    v10 = *v9;
    [*(*v9 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery) invalidate];
    [*(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery) invalidate];
    if (*(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) == 1)
    {
      [*(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) invalidate];
    }

    v11 = *(v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner);

    sub_1000995B4();

    sub_10006B1F0(0);
  }

  v12 = sub_10003E658();
  if (v12)
  {
    [v12 dismiss];
    swift_unknownObjectRelease();
  }

  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  dispatch thunk of HeadphoneProxFeatureManager.notShownFeatures2025.setter();
}

uint64_t sub_1000A0644(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000A0654(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000A0664()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A06AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000A06FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v6 - 8);
  v17 = v6;
  v7 = *(v16 + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v23 = sub_1000084D4(0, &unk_10011FA10, off_100101340);
  v24 = &off_100104640;
  *&v22 = a1;
  v20 = type metadata accessor for AMSMarketingOffersClient();
  v21 = &off_100107AE8;
  *&v19 = a2;
  v15 = sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000A24D0();
  sub_100008438(&qword_10011F648, &qword_1000D98F0);
  sub_10001C3D8(&qword_10011F650, &qword_10011F648, &qword_1000D98F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v16 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(a3 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 104) = 0;
  sub_10000E9B0(&v22, a3 + 16);
  sub_10000E9B0(&v19, a3 + 56);
  return a3;
}

uint64_t sub_1000A09A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, ValueMetadata *a7, void *a8, ValueMetadata *a9, char *a10, uint64_t a11, char *a12, uint64_t a13, unint64_t a14, ValueMetadata *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v169 = a8;
  v168 = a7;
  v167 = a6;
  v170 = a5;
  v166 = a2;
  v190 = a1;
  v20 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v159 = &v158 - v22;
  v23 = sub_100008438(&qword_10011F970, &qword_1000D64C8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v185 = &v158 - v25;
  v181 = sub_100008438(&qword_10011F978, &qword_1000D98C0);
  v26 = *(*(v181 - 8) + 64);
  __chkstk_darwin(v181);
  v180 = &v158 - v27;
  v174 = sub_100008438(&qword_10011F980, &qword_1000D98C8);
  v186 = *(v174 - 8);
  v28 = *(v186 + 64);
  __chkstk_darwin(v174);
  v172 = &v158 - v29;
  v179 = sub_100008438(&qword_10011F988, &qword_1000D98D0);
  v30 = *(*(v179 - 8) + 64);
  v31 = __chkstk_darwin(v179);
  v175 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v173 = &v158 - v34;
  v35 = __chkstk_darwin(v33);
  v189 = &v158 - v36;
  v37 = __chkstk_darwin(v35);
  v188 = &v158 - v38;
  __chkstk_darwin(v37);
  v187 = &v158 - v39;
  v178 = sub_100008438(&qword_10011F990, &qword_1000D98D8);
  v177 = *(v178 - 8);
  v40 = *(v177 + 64);
  __chkstk_darwin(v178);
  v176 = &v158 - v41;
  v184 = sub_100008438(&qword_10011F998, &unk_1000D98E0);
  v183 = *(v184 - 8);
  v42 = *(v183 + 64);
  __chkstk_darwin(v184);
  v182 = &v158 - v43;
  v165 = sub_100008438(&qword_10011F9A0, &qword_1000D8968);
  v164 = *(v165 - 8);
  v44 = *(v164 + 64);
  __chkstk_darwin(v165);
  v163 = &v158 - v45;
  v171 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v162 = *(v171 - 8);
  v46 = *(v162 + 64);
  __chkstk_darwin(v171);
  v161 = &v158 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.Attributes();
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v50 = type metadata accessor for DispatchQoS();
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v198[3] = type metadata accessor for HeadphoneUpsellClient();
  v198[4] = &off_100103B00;
  v198[0] = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_allowRepairAutoConnect) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_wantsTemporaryPairing) = 0;
  v160 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue;
  v52 = sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000A24D0();
  sub_100008438(&qword_10011F648, &qword_1000D98F0);
  sub_10001C3D8(&qword_10011F650, &qword_10011F648, &qword_1000D98F0);
  v53 = v190;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v162 + 104))(v161, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v171);
  v171 = v52;
  *(a4 + v160) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v54 = (a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  *v54 = 0;
  v54[1] = 0;
  v55 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery;
  *(a4 + v55) = [objc_allocWithZone(CBDiscovery) init];
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) = 0;
  v56 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager;
  *(a4 + v56) = [objc_allocWithZone(AADeviceManager) init];
  v57 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient;
  *(a4 + v57) = [objc_allocWithZone(AudioAccessoryAssetManagementClient) init];
  v58 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_translationAssetGetter;
  *(a4 + v58) = [objc_allocWithZone(ProxCardTranslationAssets) init];
  v59 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_nwPathMonitor;
  v60 = type metadata accessor for NWPathMonitor();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  *(a4 + v59) = NWPathMonitor.init()();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isUsingCellular) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager) = 0;
  v63 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager) = 0;
  v64 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner;
  type metadata accessor for HeadphoneDisambiguationScanner();
  swift_allocObject();
  *(a4 + v64) = sub_100098310();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) = 0;
  v65 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_settings;
  v66 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v67 = String._bridgeToObjectiveC()();
  v68 = [v66 initWithStoreIdentifier:v67 type:1];

  [v68 synchronize];
  *(a4 + v65) = v68;
  v69 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate;
  v70 = type metadata accessor for Date();
  (*(*(v70 - 8) + 56))(a4 + v69, 1, 1, v70);
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetFetchDuration) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_didSubmitMetrics) = 0;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager) = 0;
  v71 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor__batteryInfo;
  v72 = type metadata accessor for AADBatteryInfoVM();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  aBlock = AADBatteryInfoVM.init(with:)();
  v75 = v163;
  Published.init(initialValue:)();
  (*(v164 + 32))(a4 + v71, v75, v165);
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_listeners) = &_swiftEmptySetSingleton;
  v76 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo;
  v77 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  (*(*(v77 - 8) + 56))(a4 + v76, 1, 1, v77);
  sub_10000E390(v53, a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model);
  v78 = (a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v79 = v170;
  *v78 = v166;
  v78[1] = v79;
  sub_10000E9C8(v198, a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_offersClient);
  v80 = [objc_opt_self() currentNotificationSettingsCenter];
  v81 = (a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
  v81[3] = sub_1000084D4(0, &unk_10011F9A8, UNNotificationSettingsCenter_ptr);
  v81[4] = &off_100108CF8;
  *v81 = v80;
  v82 = type metadata accessor for HeadphoneModel(0);
  v83 = 0;
  if (*(v53 + *(v82 + 88)) == 1)
  {
    v84 = objc_allocWithZone(PowerUISmartChargeClientAudioAccessories);
    v85 = String._bridgeToObjectiveC()();
    v83 = [v84 initWithClientName:v85];
  }

  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_smartChargeClient) = v83;
  type metadata accessor for HeadphoneProxFeatureManager();
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager) = static HeadphoneProxFeatureManager.shared.getter();
  v86 = *(v53 + *(v82 + 136));
  if (*(v53 + 152))
  {
    v87 = *(v53 + 144);
    v88 = String._bridgeToObjectiveC()();
  }

  else
  {
    v88 = 0;
  }

  v89 = objc_allocWithZone(HPHeadphoneFeatureManager);
  LODWORD(v165) = v86;
  v90 = [v89 initWithBluetoothAddress:v88 productID:v86];

  v91 = *(a4 + v63);
  *(a4 + v63) = v90;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v160 = v82;
  v170 = a17;
  v166 = a16;
  v164 = a13;
  v163 = a12;
  v162 = a11;
  v161 = a10;
  v92 = type metadata accessor for Logger();
  sub_10000A570(v92, qword_10011E7A0);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "Initialized Headphone Feature Manager", v95, 2u);
  }

  v96 = [objc_allocWithZone(CBDiscovery) init];
  v97 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery;
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery) = v96;
  [v96 setDiscoveryFlags:0x80000200000];
  [*(a4 + v97) setBleScanRate:50];
  v98 = [objc_allocWithZone(SFDeviceDiscovery) init];
  *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery) = v98;
  [v98 setChangeFlags:13];
  v99 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery;
  [*(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery) setDiscoveryFlags:2];
  [*(a4 + v99) setScanRate:40];
  v100 = *(a4 + v99);
  v101 = swift_allocObject();
  swift_weakInit();
  v196 = v167;
  v197 = v101;
  aBlock = _NSConcreteStackBlock;
  v193 = 1107296256;
  v194 = sub_1000A2630;
  v195 = v168;
  v102 = _Block_copy(&aBlock);
  v103 = v100;

  [v103 setDeviceFoundHandler:v102];
  _Block_release(v102);

  v104 = *(a4 + v99);
  v105 = swift_allocObject();
  swift_weakInit();
  v196 = v169;
  v197 = v105;
  aBlock = _NSConcreteStackBlock;
  v193 = 1107296256;
  v194 = sub_1000A2630;
  v195 = a9;
  v106 = _Block_copy(&aBlock);
  v107 = v104;

  [v107 setDeviceLostHandler:v106];
  _Block_release(v106);

  v108 = *(a4 + v99);
  v109 = swift_allocObject();
  swift_weakInit();
  v196 = v161;
  v197 = v109;
  aBlock = _NSConcreteStackBlock;
  v193 = 1107296256;
  v194 = sub_10009E128;
  v195 = v162;
  v110 = _Block_copy(&aBlock);
  v111 = v108;

  [v111 setDeviceChangedHandler:v110];
  _Block_release(v110);

  v112 = *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery);
  v113 = swift_allocObject();
  swift_weakInit();
  v196 = v163;
  v197 = v113;
  aBlock = _NSConcreteStackBlock;
  v193 = 1107296256;
  v194 = sub_1000A2630;
  v195 = v164;
  v114 = _Block_copy(&aBlock);
  v115 = v112;

  [v115 setDeviceFoundHandler:v114];
  _Block_release(v114);

  v195 = &type metadata for AudioAccessoryFeatures;
  v196 = sub_10009B230();
  LOBYTE(aBlock) = 0;
  LOBYTE(v114) = isFeatureEnabled(_:)();
  sub_10000EA94(&aBlock);
  v116 = v165;
  if ((v114 & 1) != 0 && sub_1000A25C0(v165) && sub_1000130C4(v116))
  {
    v117 = *(v190 + 136) == 9;
    *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) = v117;
    if (v117)
    {
      v118 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery;
      [*(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) setDiscoveryFlags:0x82000004000];
      [*(a4 + v118) setBleScanRate:50];
      [*(a4 + v118) clearDuplicateFilterCache];
      v119 = *(a4 + v118);
      v120 = swift_allocObject();
      swift_weakInit();
      v196 = a14;
      v197 = v120;
      aBlock = _NSConcreteStackBlock;
      v193 = 1107296256;
      v194 = sub_1000A2630;
      v195 = a15;
      v121 = _Block_copy(&aBlock);
      v122 = v119;

      [v122 setDeviceFoundHandler:v121];
      _Block_release(v121);
    }
  }

  else
  {
    *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) = 0;
  }

  v123 = *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of HeadphoneProxFeatureManager.batteryChangeHandler.setter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v124 = v172;
  dispatch thunk of AADBatteryInfoVM.$batteryCase.getter();

  v125 = v174;
  v126 = Published.Publisher.didSet.getter();
  v186 = *(v186 + 8);
  (v186)(v124, v125);
  aBlock = v126;
  v127 = sub_100008438(&qword_10011F9B8, &qword_1000D9940);
  v169 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v128 = sub_10001C3D8(&qword_10011F9C0, &qword_10011F9B8, &qword_1000D9940);
  sub_10001C19C(&qword_10011F9C8, &qword_10011F9D0, AABattery_ptr);
  v167 = v127;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryLeft.getter();

  v129 = Published.Publisher.didSet.getter();
  v130 = v186;
  (v186)(v124, v125);
  aBlock = v129;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryRight.getter();

  v131 = Published.Publisher.didSet.getter();
  v130(v124, v125);
  aBlock = v131;
  v168 = v128;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryCombinedLeftRight.getter();

  v132 = Published.Publisher.didSet.getter();
  v130(v124, v125);
  aBlock = v132;
  Publisher<>.removeDuplicates()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of AADBatteryInfoVM.$batteryMain.getter();

  v133 = Published.Publisher.didSet.getter();
  (v186)(v124, v125);
  aBlock = v133;
  Publisher<>.removeDuplicates()();

  sub_10001C3D8(&qword_10011F9D8, &qword_10011F988, &qword_1000D98D0);
  Publishers.CombineLatest.init(_:_:)();
  sub_10001C3D8(&qword_10011F9E0, &qword_10011F978, &qword_1000D98C0);
  v134 = v176;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_10001C3D8(&qword_10011F9E8, &qword_10011F990, &qword_1000D98D8);
  v135 = v178;
  v136 = Publisher.eraseToAnyPublisher()();
  (*(v177 + 8))(v134, v135);
  aBlock = v136;
  v137 = static OS_dispatch_queue.main.getter();
  v191 = v137;
  v138 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v139 = v185;
  (*(*(v138 - 8) + 56))(v185, 1, 1, v138);
  sub_100008438(&qword_10011F9F0, &qword_1000D9948);
  sub_10001C3D8(&qword_10011F9F8, &qword_10011F9F0, &qword_1000D9948);
  sub_10001C19C(&qword_10011FA00, &qword_10011D240, OS_dispatch_queue_ptr);
  v140 = v182;
  Publisher.receive<A>(on:options:)();
  sub_10000E950(v139, &qword_10011F970, &qword_1000D64C8);

  swift_allocObject();
  swift_weakInit();

  sub_10001C3D8(&qword_10011FA08, &qword_10011F998, &unk_1000D98E0);
  v141 = v184;
  Publisher<>.sink(receiveValue:)();

  (*(v183 + 8))(v140, v141);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v142 = v190;
  v143 = *(v190 + 136);
  if (v143 > 9)
  {
    if (v143 != 10 && v143 != 14)
    {
      goto LABEL_28;
    }

LABEL_27:
    sub_10006901C();
    v153 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_nwPathMonitor;
    v154 = *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_nwPathMonitor);

    sub_100062D70(a18);
    NWPathMonitor.pathUpdateHandler.setter();

    v155 = *(a4 + v153);
    v156 = *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
    NWPathMonitor.start(queue:)();
    goto LABEL_28;
  }

  if (v143 == 4)
  {
    goto LABEL_27;
  }

  if (v143 == 9)
  {
    v144 = *(a4 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner);
    v145 = v159;
    sub_10000E88C(v190 + *(v160 + 48), v159, &qword_10011DE28, &unk_1000D98B0);
    v146 = type metadata accessor for UUID();
    v147 = *(v146 - 8);
    v148 = (*(v147 + 48))(v145, 1, v146);

    if (v148 == 1)
    {
      sub_10000E950(v145, &qword_10011DE28, &unk_1000D98B0);
      v149 = 0;
      v150 = 0xE000000000000000;
    }

    else
    {
      v151 = UUID.uuidString.getter();
      v150 = v152;
      (*(v147 + 8))(v145, v146);
      v149 = v151;
    }

    sub_100098F00(v149, v150);

    goto LABEL_27;
  }

LABEL_28:
  sub_10000EA94(v198);
  sub_10000E8F4(v142);
  return a4;
}

uint64_t sub_1000A245C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A249C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000A24D0()
{
  result = qword_10011F640;
  if (!qword_10011F640)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F640);
  }

  return result;
}

uint64_t sub_1000A2528()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000A2658(float a1, float a2)
{
  if (a1 == 0.0)
  {
    v4 = _swiftEmptyArrayStorage;
    if (a2 == 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorMatrix];
  v7 = objc_opt_self();
  *v19 = a1;
  *&v19[4] = *(&CAColorMatrixIdentity + 4);
  v20 = *(&CAColorMatrixIdentity + 5);
  *v21 = a1;
  *&v21[4] = *(&CAColorMatrixIdentity + 28);
  v22 = *(&CAColorMatrixIdentity + 11);
  v23 = a1;
  *v24 = *(&CAColorMatrixIdentity + 52);
  *&v24[12] = *(&CAColorMatrixIdentity + 4);
  v8 = [v7 valueWithCAColorMatrix:v19];
  v9 = String._bridgeToObjectiveC()();
  [v6 setValue:v8 forKey:v9];

  *v21 = sub_1000084D4(0, &qword_10011FA58, CAFilter_ptr);
  *v19 = v6;
  v4 = sub_1000CC584(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = sub_1000CC584((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  sub_10004D3D8(v19, &v4[32 * v11 + 32]);
  if (a2 != 0.0)
  {
LABEL_7:
    v12 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterBias];
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v14 = String._bridgeToObjectiveC()();
    [v12 setValue:isa forKey:v14];

    *v21 = sub_1000084D4(0, &qword_10011FA58, CAFilter_ptr);
    *v19 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1000CC584(0, *(v4 + 2) + 1, 1, v4);
    }

    v16 = *(v4 + 2);
    v15 = *(v4 + 3);
    if (v16 >= v15 >> 1)
    {
      v4 = sub_1000CC584((v15 > 1), v16 + 1, 1, v4);
    }

    *(v4 + 2) = v16 + 1;
    sub_10004D3D8(v19, &v4[32 * v16 + 32]);
  }

LABEL_12:
  v17 = [v2 layer];
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v17 setFilters:v18];
}

id sub_1000A2978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100008480();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v19 = v9;
  v20 = v11;
  v18[3] = 35;
  v18[4] = 0xE100000000000000;
  v18[1] = 0;
  v18[2] = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v19 = 0;
  v12 = objc_allocWithZone(NSScanner);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithString:v13];

  LODWORD(v13) = [v14 scanHexLongLong:&v19];
  if (v13)
  {
    v15 = String.count.getter();

    if (v15 == 6)
    {
      v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      return [v16 initWithRed:BYTE2(v19) / 255.0 green:BYTE1(v19) / 255.0 blue:v19 / 255.0 alpha:1.0];
    }
  }

  else
  {
  }

  return 0;
}

void sub_1000A2C08(void *a1)
{
  v3 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D6000;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

uint64_t sub_1000A2F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v40 = a3;
  static CharacterSet.newlines.getter();
  sub_100008480();
  v11 = StringProtocol.components(separatedBy:)();
  (*(v7 + 8))(v10, v6);
  if (!v11[2])
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = v11[4];
  v13 = v11[5];
  v14 = objc_opt_self();

  v15 = [v14 _preferredFontForTextStyle:a1 variant:256];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  v37 = v12;
  v38 = a3;

  v17 = [v16 fontDescriptor];
  v18 = [v17 fontDescriptorWithSymbolicTraits:2];

  if (v18)
  {
    [v16 pointSize];
    v19 = [v14 fontWithDescriptor:v18 size:?];

    sub_100008438(&qword_10011C8F0, &unk_1000D5640);
    inited = swift_initStackObject();
    v35 = xmmword_1000D5250;
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = NSFontAttributeName;
    v21 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
    *(inited + 64) = v21;
    *(inited + 40) = v19;
    v22 = NSFontAttributeName;
    v36 = v19;
    sub_1000A3410(inited);
    swift_setDeallocating();
    sub_10000E950(inited + 32, &qword_10011C900, &unk_1000D6750);
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 rangeOfString:v24];
    v37 = v26;

    v27 = swift_initStackObject();
    *(v27 + 16) = v35;
    *(v27 + 32) = v22;
    *(v27 + 64) = v21;
    *(v27 + 40) = v16;
    v28 = v16;
    sub_1000A3410(v27);
    swift_setDeallocating();
    sub_10000E950(v27 + 32, &qword_10011C900, &unk_1000D6750);
    v29 = objc_allocWithZone(NSMutableAttributedString);
    v30 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10003CDAC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = [v29 initWithString:v30 attributes:isa];

    v33 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v32 addAttributes:v33 range:{v25, v37}];

    return v32;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1000A3410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA20, &qword_1000D9950);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E88C(v4, &v11, &qword_10011C900, &unk_1000D6750);
      v5 = v11;
      result = sub_1000CE8DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004D3D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA30, &qword_1000D9960);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000CD118(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E88C(v4, &v13, &qword_10011FA28, &qword_1000D9958);
      v5 = v13;
      v6 = v14;
      result = sub_1000CD118(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004D3D8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA38, &qword_1000D9968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000CD118(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA48, &qword_1000D9978);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E88C(v4, &v11, &qword_10011FA50, qword_1000D9980);
      v5 = v11;
      result = sub_1000CE8DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004D3D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011E310, &unk_1000D7F30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000CD118(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A3A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008438(&qword_10011FA40, &qword_1000D9970);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000CD118(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000A3BA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011D308, &qword_1000D6760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  result = [a4 attributedText];
  if (result)
  {
    v14 = result;
    v15 = [result string];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v29 = v16;
    v30 = v18;
    v27 = a2;
    v28 = a3;
    v19 = type metadata accessor for Locale();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    sub_100008480();
    v20 = StringProtocol.range<A>(of:options:range:locale:)();
    v22 = v21;
    v24 = v23;
    sub_10000E950(v12, &qword_10011D308, &qword_1000D6760);
    if (v24)
    {
    }

    else
    {
      v29 = v20;
      v30 = v22;
      v27 = v16;
      v28 = v18;
      sub_100008438(&qword_10011D310, qword_1000D6768);
      sub_10001E5B0();
      v25 = _NSRange.init<A, B>(_:in:)();
      result = sub_10001DF68(a4, v25, v26);
      if (result)
      {
        return (*(a5 + 16))(a5);
      }
    }
  }

  return result;
}

uint64_t sub_1000A3DCC()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FA60);
  v1 = sub_10000A570(v0, qword_10011FA60);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A3F9C(char a1, SEL *a2, const char *a3, SEL *a4)
{
  v8 = v4;
  v15.receiver = v8;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, *a2, a1 & 1);
  if (qword_10011C740 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A570(v10, qword_10011FA60);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 2u);
  }

  result = *&v8[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView];
  if (result)
  {
    return [result *a4];
  }

  return result;
}

uint64_t sub_1000A413C(void *a1)
{
  v3 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v89 - v5;
  v7 = type metadata accessor for HeadphoneAssets(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HeadphoneViewModel(0);
  v94 = *(v12 - 8);
  v13 = v94[8];
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(__chkstk_darwin(v12) + 56));
  v16 = v15[11];
  v17 = v15[13];
  v113 = v15[12];
  v114 = v17;
  v18 = v15[13];
  v115 = v15[14];
  v19 = v15[7];
  v20 = v15[9];
  v109 = v15[8];
  v110 = v20;
  v22 = v15[9];
  v21 = v15[10];
  v23 = v21;
  v112 = v15[11];
  v111 = v21;
  v24 = v15[3];
  v25 = v15[5];
  v105 = v15[4];
  v106 = v25;
  v27 = v15[5];
  v26 = v15[6];
  v28 = v26;
  v108 = v15[7];
  v107 = v26;
  v29 = v15[1];
  v101 = *v15;
  v102 = v29;
  v30 = v15[2];
  v32 = *v15;
  v31 = v15[1];
  v104 = v15[3];
  v103 = v30;
  v128 = v113;
  v129 = v18;
  v130 = v15[14];
  v124 = v109;
  v125 = v22;
  v127 = v16;
  v126 = v23;
  v120 = v105;
  v121 = v27;
  v123 = v19;
  v122 = v28;
  v116 = v32;
  v117 = v31;
  v119 = v24;
  v118 = v30;
  result = sub_100026134(&v116);
  if (result != 1)
  {
    v91 = v8;
    v92 = v6;
    v93 = v7;
    v89 = v11;
    v100[12] = v128;
    v100[13] = v129;
    v100[14] = v130;
    v100[8] = v124;
    v100[9] = v125;
    v100[11] = v127;
    v100[10] = v126;
    v100[4] = v120;
    v100[5] = v121;
    v100[7] = v123;
    v100[6] = v122;
    v100[0] = v116;
    v100[1] = v117;
    v100[3] = v119;
    v100[2] = v118;
    v34 = *a1;
    v35 = a1[1];
    v98[12] = v113;
    v98[13] = v114;
    v98[14] = v115;
    v98[8] = v109;
    v98[9] = v110;
    v98[11] = v112;
    v98[10] = v111;
    v98[5] = v106;
    v98[7] = v108;
    v98[6] = v107;
    v98[0] = v101;
    v98[1] = v102;
    v98[3] = v104;
    v98[4] = v105;
    v98[2] = v103;
    sub_10000A304(v98, v99);
    v36 = String._bridgeToObjectiveC()();
    [v1 setTitle:v36];

    v37 = a1[2];
    v38 = a1[3];
    v39 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v39];

    v90 = v12;
    v40 = a1[4];
    v41 = a1[5];
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000944B8(a1, &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = v1;
    v44 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v45 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v46 + v44;
    v48 = v43;
    sub_1000A5590(v14, v47, type metadata accessor for HeadphoneViewModel);
    *(v46 + v45) = v42;

    v49 = String._bridgeToObjectiveC()();
    v99[2].n128_u64[0] = sub_1000A5464;
    v99[2].n128_u64[1] = v46;
    v99[0].n128_u64[0] = _NSConcreteStackBlock;
    v99[0].n128_u64[1] = 1107296256;
    v99[1].n128_u64[0] = sub_10000C034;
    v99[1].n128_u64[1] = &unk_100107EC8;
    v50 = _Block_copy(v99);
    v51 = objc_opt_self();
    v52 = [v51 actionWithTitle:v49 style:0 handler:v50];

    _Block_release(v50);

    v94 = v52;

    v53 = v90;
    if ((*(a1 + *(v90 + 64)) & 1) == 0)
    {
      v54 = a1[6];
      v55 = a1[7];
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v57 = String._bridgeToObjectiveC()();
      v99[2].n128_u64[0] = sub_1000A5518;
      v99[2].n128_u64[1] = v56;
      v99[0].n128_u64[0] = _NSConcreteStackBlock;
      v99[0].n128_u64[1] = 1107296256;
      v99[1].n128_u64[0] = sub_10000C034;
      v99[1].n128_u64[1] = &unk_100107EF0;
      v58 = _Block_copy(v99);
      v59 = [v51 actionWithTitle:v57 style:1 handler:v58];

      _Block_release(v58);

      v60 = [v43 addAction:v59];
    }

    v61 = a1 + *(v53 + 44);
    v62 = v92;
    sub_1000A5520(v61, v92);
    v63 = v93;
    if ((*(v91 + 48))(v62, 1, v93) == 1)
    {

      sub_10000E950(&v101, &unk_10011FF80, &qword_1000D8590);
      v64 = &qword_10011CCF0;
      v65 = qword_1000D61B0;
      v66 = v62;
    }

    else
    {
      v67 = v89;
      sub_1000A5590(v62, v89, type metadata accessor for HeadphoneAssets);
      v68 = [objc_allocWithZone(SFMediaPlayerView) init];
      v69 = [objc_opt_self() currentTraitCollection];
      v70 = [v69 userInterfaceStyle];

      if (v70 == 2)
      {
        v72 = 1;
      }

      else
      {
        v72 = 2;
      }

      URL._bridgeToObjectiveC()(v71);
      v74 = v73;
      [v68 updateViewForAssetType:v72 adjustmentsURL:v73];

      v75 = *(v63 + 20);
      v76 = objc_allocWithZone(SFMediaPlayerItem);
      URL._bridgeToObjectiveC()(v77);
      v79 = v78;
      v80 = [v76 initWithURL:v78];

      [v80 setShouldLoop:1];
      [v68 addMovieItem:v80];
      v81 = v68;
      sub_1000AC67C(v81, v100, 0, v99);
      memcpy(v95, v99, sizeof(v95));
      v82 = [v48 contentView];
      v83 = v99[0].n128_u64[0];
      [v99[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v82 addLayoutGuide:v99[0].n128_u64[1]];
      [v82 addSubview:v83];
      [v82 sendSubviewToBack:v83];

      v84 = objc_opt_self();
      v85 = [v48 contentView];
      v86 = [v85 mainContentGuide];

      sub_1000ABDA8(v86);
      sub_10000F5A0();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v84 activateConstraints:isa];

      sub_1000A55F8(v67);
      v88 = *&v48[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView];
      *&v48[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView] = v81;

      memcpy(v96, v95, sizeof(v96));
      nullsub_1(v96);
      memcpy(v97, &v48[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieContainer], sizeof(v97));
      memcpy(&v48[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieContainer], v96, 0x130uLL);
      v64 = &qword_10011E760;
      v65 = &qword_1000D8598;
      v66 = v97;
    }

    return sub_10000E950(v66, v64, v65);
  }

  return result;
}

void sub_1000A4AD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for HeadphoneViewModel(0) + 64)) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();

      if (v4)
      {
        sub_1000B70B4();
LABEL_8:
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = swift_unknownObjectWeakLoadStrong();

      if (v7)
      {
        sub_1000B90EC(1);
        goto LABEL_8;
      }
    }
  }
}

void sub_1000A4BA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B90EC(0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000A4D78(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 64);
    v3 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v3];
  }
}

uint64_t sub_1000A4DDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4E14()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v4 + 24);

  v9 = *(v0 + v4 + 40);

  v10 = *(v0 + v4 + 56);

  v11 = *(v0 + v4 + 72);

  v12 = *(v0 + v4 + 88);

  v13 = v0 + v4 + v2[11];
  v14 = type metadata accessor for HeadphoneAssets(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v64 = v5;
    v67 = (v3 + 16) & ~v3;
    v70 = v3;
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 8);
    v17(v13, v15);
    v17(v13 + v14[5], v15);
    v18 = v14[6];
    if (!(*(v16 + 48))(v13 + v18, 1, v15))
    {
      v17(v13 + v18, v15);
    }

    v19 = v13 + v14[7];
    v20 = type metadata accessor for HeadphoneAssets.Feature(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v17(v19, v15);
      v21 = *(v19 + *(v20 + 20));

      v22 = *(v19 + *(v20 + 24));
    }

    v23 = *(v13 + v14[8]);

    v4 = v67;
    v3 = v70;
    v5 = v64;
  }

  v24 = v6 + v2[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v42 = type metadata accessor for HeadphoneBatteryInfo(0);
    v43 = *(v42 + 28);
    v69 = v4;
    v73 = v3;
    v44 = type metadata accessor for BatteryIconStyle();
    v45 = *(*(v44 - 8) + 8);
    v66 = v5;
    v45(v24 + v43, v44);
    v29 = (v42 + 32);

    v24 += *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    v46 = v44;
    v3 = v73;
    v45(v24 + *(v42 + 28), v46);
LABEL_18:
    v5 = v66;
    v4 = v69;
    goto LABEL_19;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v30 = type metadata accessor for HeadphoneBatteryInfo(0);
      v31 = *(v30 + 28);
      v71 = v3;
      v32 = type metadata accessor for BatteryIconStyle();
      v65 = v5;
      v33 = *(*(v32 - 8) + 8);
      v33(v24 + v31, v32);
      v29 = (v30 + 32);

      v68 = v4;
      v34 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v35 = v24 + *(v34 + 48);
      v33(v35 + *(v30 + 28), v32);

      v24 += *(v34 + 64);
      v36 = v32;
      v4 = v68;
      v3 = v71;
      v33(v24 + *(v30 + 28), v36);
      v5 = v65;
      goto LABEL_19;
    case 3:
      v37 = type metadata accessor for HeadphoneBatteryInfo(0);
      v38 = *(v37 + 28);
      v69 = v4;
      v72 = v3;
      v39 = type metadata accessor for BatteryIconStyle();
      v40 = *(*(v39 - 8) + 8);
      v66 = v5;
      v40(v24 + v38, v39);
      v29 = (v37 + 32);

      v24 += *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v41 = v39;
      v3 = v72;
      v40(v24 + *(v37 + 28), v41);
      goto LABEL_18;
    case 4:
LABEL_14:
      v26 = type metadata accessor for HeadphoneBatteryInfo(0);
      v27 = *(v26 + 28);
      v28 = type metadata accessor for BatteryIconStyle();
      (*(*(v28 - 8) + 8))(v24 + v27, v28);
      v29 = (v26 + 32);
LABEL_19:

      break;
  }

LABEL_20:
  v47 = v6 + v2[13];
  if (*(v47 + 8))
  {

    v48 = *(v47 + 24);
  }

  v49 = v6 + v2[14];
  if (*(v49 + 176))
  {

    v50 = *(v49 + 192);
  }

  v51 = *(v6 + v2[17]);

  v52 = *(v6 + v2[18]);

  v53 = v6 + v2[19];
  if (*(v53 + 8))
  {

    v54 = *(v53 + 24);

    v55 = *(v53 + 56);

    v56 = *(v53 + 72);

    v57 = *(v53 + 96);

    v58 = *(v53 + 104);
  }

  v59 = (v6 + v2[20]);
  if (*v59)
  {

    v60 = v59[1];
  }

  v61 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v62 = *(v1 + v61);

  return _swift_deallocObject(v1, v61 + 8, v3 | 7);
}

void sub_1000A5464(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneViewModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000A4AD0(a1, v1 + v4);
}

uint64_t sub_1000A5500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A5520(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A55F8(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A566C(int a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 arrayForKey:v4];

  if (v5 && (v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v5, v7 = sub_1000A5EA0(v6), , v7))
  {
    if (v7[2])
    {
      if (qword_10011C748 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000A570(v8, qword_10011FAC0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136315138;
        v13 = Array.description.getter();
        v15 = sub_100078978(v13, v14, &v24);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "User has seen tutorial cards for: %s", v11, 0xCu);
        sub_10000EA94(v12);
      }
    }

    v16 = v7[2];
    v17 = 32;
    while (v16)
    {
      v18 = *(v7 + v17);
      v17 += 4;
      --v16;
      if (v18 == a1)
      {

        return 1;
      }
    }
  }

  else
  {
    if (qword_10011C748 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A570(v20, qword_10011FAC0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No seen tutorial product IDs found", v23, 2u);
    }
  }

  return 0;
}

void sub_1000A594C(int a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 arrayForKey:v4];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000A5EA0(v6);

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = sub_1000A7FF8(v7);

  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_6:

LABEL_7:
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  v10 = sub_1000A5FAC(*(v8 + 16), 0);
  v11 = sub_1000A7CAC(&v33, v10 + 8, v9, v8);
  sub_10001C2C4();
  if (v11 != v9)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_8:
  v12 = v10[2];
  v13 = 32;
  v14 = v12;
  while (v14)
  {
    v15 = *(v10 + v13);
    v13 += 4;
    --v14;
    if (v15 == a1)
    {
      goto LABEL_21;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1000CCC48(0, v12 + 1, 1, v10);
  }

  v17 = v10[2];
  v16 = v10[3];
  if (v17 >= v16 >> 1)
  {
    v10 = sub_1000CCC48((v16 > 1), v17 + 1, 1, v10);
  }

  v10[2] = v17 + 1;
  *(v10 + v17 + 8) = a1;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = String._bridgeToObjectiveC()();
  [a2 setObject:isa forKey:v19];

  if (qword_10011C748 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A570(v20, qword_10011FAC0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;

    v25 = Array.description.getter();
    v27 = v26;

    v28 = sub_100078978(v25, v27, &v33);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saved seen tutorial product IDs as %s", v23, 0xCu);
    sub_10000EA94(v24);
  }

LABEL_21:
  v29 = String._bridgeToObjectiveC()();
  v30 = [a2 longLongForKey:v29];

  if (v30)
  {
  }

  else
  {
    v31 = Int._bridgeToObjectiveC()().super.super.isa;
    v32 = String._bridgeToObjectiveC()();
    [a2 setObject:v31 forKey:v32];
  }
}

uint64_t sub_1000A5D4C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FAC0);
  v1 = sub_10000A570(v0, qword_10011FAC0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A5E14()
{
  v0 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithStoreIdentifier:v1 type:1];

  v3 = v2;
  [v3 synchronize];

  qword_1001231E0 = v3;
}

void *sub_1000A5EA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_1000CD5E4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10003CE5C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000CD5E4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      *(v3 + v6 + 8) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1000A5FAC(uint64_t a1, uint64_t a2)
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

  sub_100008438(&unk_100120050, &qword_1000D9A48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1000A6034(uint64_t a1, uint64_t a2)
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

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
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

uint64_t sub_1000A60BC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000A652C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000A671C(v21 + 1);
    }

    v19 = v8;
    sub_1000A6DCC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000A6E50(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1000A62F4(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000A6FC0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000A63DC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000A70E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000A652C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100008438(&qword_10011D258, &qword_1000D64E8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000A671C(v9 + 1);
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

uint64_t sub_1000A671C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008438(&qword_10011D258, &qword_1000D64E8);
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

uint64_t sub_1000A6944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008438(&qword_10011FAD8, &qword_1000D9A50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000A6B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008438(&qword_10011FAE0, &qword_1000D9A58);
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

unint64_t sub_1000A6DCC(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1000A6E50(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000A671C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000A7264();
      goto LABEL_12;
    }

    sub_1000A7650(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000A6FC0(uint64_t result, unint64_t a2, char a3)
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
    sub_1000A6944(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1000A73B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000A7864(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000A70E4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000A6B6C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000A74F4();
      goto LABEL_16;
    }

    sub_1000A7A58(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1000A7264()
{
  v1 = v0;
  sub_100008438(&qword_10011D258, &qword_1000D64E8);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1000A73B4()
{
  v1 = v0;
  sub_100008438(&qword_10011FAD8, &qword_1000D9A50);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000A74F4()
{
  v1 = v0;
  sub_100008438(&qword_10011FAE0, &qword_1000D9A58);
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

uint64_t sub_1000A7650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008438(&qword_10011D258, &qword_1000D64E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000A7864(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008438(&qword_10011FAD8, &qword_1000D9A50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000A7A58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100008438(&qword_10011FAE0, &qword_1000D9A58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

void *sub_1000A7CAC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_1000A7DC8(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000084D4(0, a5, a6);
  sub_1000A806C(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000084D4(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_1000A7FF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000A62F4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000A806C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000084D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A80C0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FAF0);
  v1 = sub_10000A570(v0, qword_10011FAF0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A81EC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31[-v7];
  v9 = type metadata accessor for HeadphoneAssets(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32.receiver = v2;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewWillAppear:", a1 & 1);
  v14 = &v2[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_viewModel];
  swift_beginAccess();
  v15 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_10000E950(v8, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_5;
  }

  sub_10000E88C(&v14[*(v15 + 44)], v8, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_1000A9BF0(v8, v13);
  v22 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
  swift_beginAccess();
  v23 = *&v2[v22];
  if (v23)
  {
    swift_endAccess();
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 currentTraitCollection];
    v27 = [v26 userInterfaceStyle];

    if (v27 == 2)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    URL._bridgeToObjectiveC()(1);
    v30 = v29;
    [v25 updateViewForAssetType:v28 adjustmentsURL:v29];

    sub_1000A55F8(v13);
  }

  else
  {
    sub_1000A55F8(v13);
    swift_endAccess();
  }

LABEL_5:
  if (qword_10011C758 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A570(v16, qword_10011FAF0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Playing movie", v19, 2u);
  }

  v20 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
  swift_beginAccess();
  result = *&v2[v20];
  if (result)
  {
    return [result play];
  }

  return result;
}

id sub_1000A8604(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  if (qword_10011C758 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FAF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping movie", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
  swift_beginAccess();
  result = *&v2[v8];
  if (result)
  {
    return [result stop];
  }

  return result;
}

id sub_1000A8798(uint64_t *a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v133 - v5;
  v7 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v133 - v9;
  v11 = type metadata accessor for HeadphoneAssets(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HeadphoneViewModel(0);
  v17 = (a1 + *(v16 + 56));
  v18 = v17[11];
  v19 = v17[13];
  v160 = v17[12];
  v161 = v19;
  v20 = v17[7];
  v21 = v17[9];
  v156 = v17[8];
  v157 = v21;
  v22 = v17[9];
  v23 = v17[11];
  v158 = v17[10];
  v159 = v23;
  v24 = v17[3];
  v25 = v17[5];
  v152 = v17[4];
  v153 = v25;
  v26 = v17[5];
  v27 = v17[7];
  v154 = v17[6];
  v155 = v27;
  v28 = v17[1];
  v148 = *v17;
  v149 = v28;
  v29 = v17[3];
  v31 = *v17;
  v30 = v17[1];
  v150 = v17[2];
  v151 = v29;
  v174 = v18;
  v175 = v160;
  v32 = v17[14];
  v176 = v17[13];
  v177 = v17[14];
  v170 = v20;
  v171 = v156;
  v172 = v22;
  v173 = v158;
  v166 = v24;
  v167 = v152;
  v168 = v26;
  v169 = v154;
  v162 = v32;
  v163 = v31;
  v164 = v30;
  v165 = v150;
  result = sub_100026134(&v163);
  if (result != 1)
  {
    v147[12] = v175;
    v147[13] = v176;
    v147[14] = v177;
    v147[8] = v171;
    v147[9] = v172;
    v147[10] = v173;
    v147[11] = v174;
    v147[4] = v167;
    v147[5] = v168;
    v147[6] = v169;
    v147[7] = v170;
    v147[2] = v165;
    v147[3] = v166;
    v147[0] = v163;
    v147[1] = v164;
    sub_10000E88C(a1 + *(v16 + 44), v10, &qword_10011CCF0, qword_1000D61B0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_10000E950(v10, &qword_10011CCF0, qword_1000D61B0);
    }

    sub_1000A9BF0(v10, v15);
    sub_1000944B8(a1, v6);
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    v34 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_viewModel;
    swift_beginAccess();
    v145[12] = v160;
    v145[13] = v161;
    v145[14] = v162;
    v145[8] = v156;
    v145[9] = v157;
    v145[10] = v158;
    v145[11] = v159;
    v145[4] = v152;
    v145[5] = v153;
    v145[6] = v154;
    v145[7] = v155;
    v145[0] = v148;
    v145[1] = v149;
    v145[2] = v150;
    v145[3] = v151;
    sub_10000A304(v145, v146);
    sub_10004D3E8(v6, &v1[v34]);
    swift_endAccess();
    v35 = *a1;
    v36 = a1[1];
    v37 = String._bridgeToObjectiveC()();
    [v1 setTitle:v37];

    v38 = v1;
    v39 = [objc_allocWithZone(PRXLabel) initWithStyle:5];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v39 setTextAlignment:1];
    v40 = a1[2];
    v41 = a1[3];
    v42 = String._bridgeToObjectiveC()();
    [v39 setText:v42];

    v43 = [v1 contentView];
    [v43 addSubview:v39];

    v44 = [objc_allocWithZone(SFMediaPlayerView) init];
    v45 = *(v11 + 20);
    v46 = objc_allocWithZone(SFMediaPlayerItem);
    v137 = v15;
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    v50 = [v46 initWithURL:v48];

    [v50 setShouldLoop:1];
    v139 = v44;
    v136 = v50;
    [v44 addMovieItem:v50];
    v138 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000D5C90;
    v52 = [v39 leadingAnchor];
    v53 = [v38 contentView];
    v54 = [v53 mainContentGuide];

    v55 = [v54 leadingAnchor];
    v56 = [v52 constraintEqualToAnchor:v55];

    *(v51 + 32) = v56;
    v57 = [v39 trailingAnchor];
    v58 = [v38 contentView];
    v59 = [v58 mainContentGuide];

    v60 = [v59 trailingAnchor];
    v61 = [v57 constraintEqualToAnchor:v60];

    *(v51 + 40) = v61;
    v135 = v39;
    v62 = [v39 bottomAnchor];
    v63 = [v38 contentView];
    v64 = [v63 mainContentGuide];

    v65 = [v64 bottomAnchor];
    v66 = [v62 constraintEqualToAnchor:v65];

    *(v51 + 48) = v66;
    v144 = v51;
    if (v171.n128_u8[0] == 1)
    {
      sub_10000E88C(&v148, v146, &unk_10011FF80, &qword_1000D8590);
      sub_1000AC67C(v139, v147, 1u, v146);
      memcpy(v143, v146, sizeof(v143));
      result = [v38 view];
      if (result)
      {
        v67 = result;
        v68 = [v38 contentView];
        v69 = v146[0].n128_u64[0];
        [v146[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
        [v68 addLayoutGuide:v146[0].n128_u64[1]];
        [v67 addSubview:v69];
        v133 = v69;
        [v67 sendSubviewToBack:v69];

        v70 = [v38 contentView];
        v134 = v38;
        v71 = objc_opt_self();
        v72 = [v71 clearColor];
        [v70 setBackgroundColor:v72];

        v73 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
        v74 = [v73 CGColor];

        v75 = [objc_allocWithZone(CAGradientLayer) init];
        [v69 bounds];
        [v75 setFrame:?];
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1000D6000;
        sub_1000084D4(0, &qword_10011DC20, NSNumber_ptr);
        *(v76 + 32) = NSNumber.init(floatLiteral:)(0.01);
        *(v76 + 40) = NSNumber.init(floatLiteral:)(0.32);
        *(v76 + 48) = NSNumber.init(floatLiteral:)(0.7);
        *(v76 + 56) = NSNumber.init(floatLiteral:)(0.99);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v75 setLocations:isa];

        sub_100008438(&unk_10011DC30, &unk_1000D7D30);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1000D5FF0;
        type metadata accessor for CGColor(0);
        v80 = v79;
        *(v78 + 56) = v79;
        *(v78 + 32) = v74;
        v81 = v74;
        v82 = [v71 whiteColor];
        v83 = [v82 CGColor];

        *(v78 + 88) = v80;
        *(v78 + 64) = v83;
        v84 = [v71 whiteColor];
        v85 = [v84 CGColor];

        *(v78 + 96) = v85;
        v86 = v134;
        *(v78 + 152) = v80;
        *(v78 + 120) = v80;
        *(v78 + 128) = v81;
        v138 = v81;
        v87 = Array._bridgeToObjectiveC()().super.isa;

        [v75 setColors:v87];

        v88 = [v133 layer];
        [v88 setMask:v75];

        v89 = *&v86[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer];
        *&v86[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer] = v75;
        v90 = v75;

        memcpy(v141, v143, sizeof(v141));
        nullsub_1(v141);
        memcpy(v142, &v86[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], sizeof(v142));
        memcpy(&v86[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], v141, 0x130uLL);
        sub_10006207C(v146, &v140);
        sub_10000E950(v142, &qword_10011E760, &qword_1000D8598);
        result = [v86 view];
        if (result)
        {
          v91 = result;
          v92 = [v86 contentView];
          v93 = [v92 mainContentGuide];

          v94 = sub_1000AC264(v91, v93);
          sub_100009D2C(v94);
          v95 = v135;
          v96 = [v135 topAnchor];

          v97 = [v86 contentView];
          v98 = [v97 mainContentGuide];

          v99 = [v98 topAnchor];
          v100 = [v96 constraintGreaterThanOrEqualToAnchor:v99 constant:v170.n128_f64[1]];
          sub_10000E950(&v148, &unk_10011FF80, &qword_1000D8590);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v101 = v137;
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v132 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_10000A3B4(v146);

          goto LABEL_11;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v102 = [objc_allocWithZone(UILayoutGuide) init];
    v103 = [v38 contentView];
    [v103 addLayoutGuide:v102];

    sub_1000AC67C(v139, v147, 1u, v146);
    memcpy(v141, v146, sizeof(v141));
    v104 = [v38 contentView];
    v86 = v38;
    v105 = v146[0].n128_u64[0];
    [v146[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v104 addLayoutGuide:v146[0].n128_u64[1]];
    [v104 addSubview:v105];
    [v104 sendSubviewToBack:v105];

    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1000D6000;
    v107 = [v102 topAnchor];
    v108 = [v86 contentView];
    v109 = [v108 mainContentGuide];

    v110 = [v109 topAnchor];
    v111 = [v107 constraintEqualToAnchor:v110];

    *(v106 + 32) = v111;
    v112 = [v102 leadingAnchor];
    v113 = [v86 contentView];
    v114 = [v113 mainContentGuide];

    v115 = [v114 leadingAnchor];
    v116 = [v112 constraintEqualToAnchor:v115];

    *(v106 + 40) = v116;
    v117 = [v102 trailingAnchor];
    v118 = [v86 contentView];
    v119 = [v118 mainContentGuide];

    v120 = [v119 trailingAnchor];
    v121 = [v117 constraintEqualToAnchor:v120];

    *(v106 + 48) = v121;
    v122 = [v102 bottomAnchor];
    v95 = v135;
    v123 = [v135 topAnchor];

    v124 = [v122 constraintEqualToAnchor:v123 constant:-PRXMainContentMargin];
    *(v106 + 56) = v124;
    sub_100009D2C(v106);
    v125 = sub_1000ABDA8(v102);
    sub_100009D2C(v125);

    memcpy(v142, v141, sizeof(v142));
    nullsub_1(v142);
    memcpy(v143, &v86[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], sizeof(v143));
    memcpy(&v86[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer], v142, 0x130uLL);
    sub_10000E950(v143, &qword_10011E760, &qword_1000D8598);
    v101 = v137;
LABEL_11:
    v126 = v139;
    v127 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView;
    swift_beginAccess();
    v128 = *&v86[v127];
    *&v86[v127] = v126;
    v129 = v126;

    v130 = objc_opt_self();
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    v131 = Array._bridgeToObjectiveC()().super.isa;

    [v130 activateConstraints:v131];

    return sub_1000A55F8(v101);
  }

  return result;
}

void sub_1000A98E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer;
    memcpy(v9, (v0 + OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer), sizeof(v9));
    if (sub_1000627F8(v9) == 1)
    {
      v3 = v1;
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
    }

    else
    {
      v8 = *(v0 + v2);
      v3 = v1;
      [v8 bounds];
    }

    [v3 setFrame:{v4, v5, v6, v7}];
  }
}

uint64_t type metadata accessor for HeadphoneRepairViewController()
{
  result = qword_10011FB50;
  if (!qword_10011FB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A9B24()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000A9BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000A9C54(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieContainer;
  sub_100062284(__src);
  memcpy(&v1[v4], __src, 0x130uLL);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_movieView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_gradientLayer] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_type] = 21;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithContentView:", a1);
}

uint64_t sub_1000A9D50()
{
  v1 = v0;
  v38 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v38 - 8) + 64);
  v3 = __chkstk_darwin(v38);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = sub_1000AA014();
  v10 = v9;
  ObjectType = swift_getObjectType();
  v40 = v8;
  v13 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address);
  v12 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address + 8);
  v14 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
  swift_beginAccess();
  sub_10000E390(v14, v5);
  v15 = (*(v10 + 8))(v7, v13, v12, v5, ObjectType, v10);
  sub_1000AB47C(v5, type metadata accessor for HeadphoneModel);

  sub_1000AB47C(v7, type metadata accessor for HeadphoneModel);
  if (v15)
  {
    v16 = (v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard);
    v17 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard);
    v18 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard + 8);
    v19 = swift_getObjectType();
    v20 = *(v18 + 32);
    v21 = v17;
    LOBYTE(v19) = v20(v19, v18);

    v22 = *v16;
    v23 = v16[1];
    v24 = swift_getObjectType();
    v25 = *(v23 + 32);
    v26 = v22;
    LOBYTE(v23) = v25(v24, v23);

    swift_beginAccess();
    v27 = *(v38 + 196);
    v28 = *(v14 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v14 + v27);
    *(v14 + v27) = 0x8000000000000000;
    sub_100097468(v23, 0, 3, v19, isUniquelyReferenced_nonNull_native);
    *(v14 + v27) = v39;
    swift_endAccess();
    v30 = [*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_hostingController) presentProxCardFlowWithDelegate:v1 initialViewController:*v16];
    v31 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController;
    v32 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController);
    *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController) = v30;

    v33 = *(v1 + v31);
    if (v33)
    {
      v34 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_router);
      v35 = *(v34 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
      *(v34 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = v33;
      v36 = v33;
    }
  }

  return v15 & 1;
}

id sub_1000AA014()
{
  v1 = &v0[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter____lazy_storage___initialCard];
  if (v2)
  {
    v4 = *(v1 + 1);
    v3 = *(v1 + 2);
    v5 = v2;
  }

  else
  {
    v6 = sub_1000AAC64(v0);
    v7 = *v1;
    *v1 = v6;
    *(v1 + 1) = v8;
    *(v1 + 2) = v9;
    v5 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v5;
}

void sub_1000AA094(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v87 - v12;
  v92 = type metadata accessor for HeadphoneModel(0);
  v14 = *(v92 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v92);
  v100 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v87 - v18;
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000A570(v19, qword_100123040);
  sub_10004F924(a1, v4);
  v102 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100097708(a1, v4);
  v23 = os_log_type_enabled(v21, v22);
  v90 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v106 = v25;
    *v24 = 136315138;
    v26 = v4 == 1;
    if (v4 == 1)
    {
      v27 = 0x2064657070696B53;
    }

    else
    {
      v27 = 0x65756E69746E6F43;
    }

    LODWORD(v104) = v4;
    v4 = v13;
    v28 = v9;
    v29 = a1;
    if (v26)
    {
      v30 = 0xEC0000006D657449;
    }

    else
    {
      v30 = 0xEE00776F6C462064;
    }

    v31 = sub_100078978(v27, v30, &v106);
    a1 = v29;
    v9 = v28;
    v13 = v4;
    LOBYTE(v4) = v104;

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "FlowPresenter: %s", v24, 0xCu);
    sub_10000EA94(v25);
  }

  v32 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController;
  v33 = *&v3[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController];
  if (v33)
  {
    v34 = [v33 topViewController];
    if (v34)
    {
      v91 = v34;
      ObjectType = swift_getObjectType();
      v36 = swift_conformsToProtocol2();
      if (v36)
      {
        v37 = v36;
        v87 = v32;
        v88 = v13;
        v89 = v9;
        v38 = *(v36 + 32);
        v39 = v38(ObjectType, v36);
        v40 = v38(ObjectType, v37);
        v41 = &v3[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel];
        swift_beginAccess();
        v42 = *(v92 + 196);
        sub_10004F924(a1, v4);
        v43 = *(v41 + v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = *(v41 + v42);
        *(v41 + v42) = 0x8000000000000000;
        sub_100097468(v40, a1, v4, v39, isUniquelyReferenced_nonNull_native);
        v99 = v41;
        *(v41 + v42) = v105;
        swift_endAccess();
        v45 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_proxCards;
        v46 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_address;
        swift_beginAccess();
        v48 = *&v3[v45];
        v49 = *(v48 + 2);
        if (v49)
        {
          v97 = &v3[v46];
          v96 = -24;
          *&v47 = 136315138;
          v93 = v47;
          v98 = v3;
          v94 = v45;
          while (1)
          {
            v103 = *(v48 + 2);
            v104 = *(v48 + 6);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v45] = v48;
            if (!v50 || (v49 - 1) > *(v48 + 3) >> 1)
            {
              v48 = sub_1000CC694(v50, v49, 1, v48);
              *&v3[v45] = v48;
            }

            v51 = *(v48 + 2);
            memmove(v48 + 32, v48 + 56, v96 + 24 * v51);
            *(v48 + 2) = v51 - 1;
            *&v3[v45] = v48;
            swift_endAccess();
            v95 = v103;
            v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
            v53 = swift_getObjectType();
            *&v106 = v52;
            v54 = *v97;
            v55 = *(v97 + 1);
            v56 = v100;
            sub_10000E390(v99, v100);
            v57 = v104;
            v58 = *(v104 + 8);
            v59 = v52;
            v60 = v101;
            LOBYTE(v52) = v58(v101, v54, v55, v56, v53, v57);
            sub_1000AB47C(v56, type metadata accessor for HeadphoneModel);

            sub_1000AB47C(v60, type metadata accessor for HeadphoneModel);
            if (v52)
            {
              break;
            }

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v105 = v64;
              *v63 = v93;
              v106 = v103;
              v107 = v104;
              sub_100008438(&qword_10011FBC8, &qword_1000D9CB0);
              v65 = String.init<A>(describing:)();
              v67 = sub_100078978(v65, v66, &v105);

              *(v63 + 4) = v67;
              _os_log_impl(&_mh_execute_header, v61, v62, "FlowPresenter: %s shouldShow returned false for should show", v63, 0xCu);
              sub_10000EA94(v64);
            }

            v3 = v98;
            v45 = v94;
            swift_beginAccess();
            v48 = *&v3[v45];
            v49 = *(v48 + 2);
            if (!v49)
            {
              goto LABEL_23;
            }
          }

          *&v106 = v59;
          v72 = v104;
          v73 = *(v104 + 24);
          v74 = v98;
          v75 = v98;
          v73(v74, v53, v72);
          v76 = v106;
          v77 = v99;
          v78 = v88;
          sub_10000E390(v99, v88);
          (*(v90 + 56))(v78, 0, 1, v92);
          v79 = swift_getObjectType();
          *&v106 = v76;
          (*(v72 + 48))(v78, v79, v72);
          v80 = v106;
          v81 = swift_getObjectType();
          *&v106 = v80;
          v82 = v101;
          sub_10000E390(v77, v101);
          v83 = *(v72 + 72);
          v84 = v80;
          v85 = v89;
          v83(v82);
          sub_1000AB47C(v82, type metadata accessor for HeadphoneModel);
          (*(v72 + 64))(v85, v81, v72);
          sub_1000AB47C(v85, type metadata accessor for HeadphoneViewModel);

          v86 = *&v74[v87];
          if (v86)
          {
            [v86 pushViewController:v84 animated:1];
          }
        }

        else
        {
LABEL_23:
          swift_endAccess();
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&_mh_execute_header, v68, v69, "FlowPresenter: Reached end of flow calling dismissFlow", v70, 2u);
          }

          sub_1000AA9CC();
        }
      }

      else
      {
        v71 = v91;
      }
    }
  }
}

void sub_1000AA9CC()
{
  v1 = v0;
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_100123040);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100078978(0x467373696D736964, 0xED00002928776F6CLL, v15);
    _os_log_impl(&_mh_execute_header, v3, v4, "FlowPresenter: %s called", v5, 0xCu);
    sub_10000EA94(v6);
  }

  v7 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_navigationController];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v15[4] = sub_1000AB434;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100019340;
    v15[3] = &unk_100108048;
    v9 = _Block_copy(v15);
    v10 = v7;
    v11 = v1;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  v12 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_analyticsController];

  v13 = String._bridgeToObjectiveC()();

  sub_10004D7D4();
  sub_10004CE78();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_1000AAC64(char *a1)
{
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeadphoneViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v29 - v13;
  v15 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_proxCards;
  swift_beginAccess();
  v16 = *&a1[v15];
  if (v16[2])
  {
    v17 = v16[4];
    v29[1] = v16[5];
    v18 = v16[6];
    sub_1000AB4DC(0, 1);
    swift_endAccess();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
    v20 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
    swift_beginAccess();
    sub_10000E390(&a1[v20], v14);
    (*(v3 + 56))(v14, 0, 1, v2);
    ObjectType = swift_getObjectType();
    v30 = v19;
    v18[6](v14, ObjectType, v18);
    v22 = v30;
    v23 = swift_getObjectType();
    v30 = v22;
    sub_10000E390(&a1[v20], v6);
    v24 = v18[9];
    v25 = v22;
    v24(v6, v17, v18);
    sub_1000AB47C(v6, type metadata accessor for HeadphoneModel);
    v18[8](v10, v23, v18);
    sub_1000AB47C(v10, type metadata accessor for HeadphoneViewModel);

    v30 = v25;
    v26 = v18[3];
    v27 = a1;
    v26(a1, v23, v18);
    return v30;
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

id sub_1000AAFB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernFlowPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ModernFlowPresenter()
{
  result = qword_10011FBB0;
  if (!qword_10011FBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AB128()
{
  result = type metadata accessor for HeadphoneModel(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000AB210(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 sub_1000AB22C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000AB240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000AB288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1000AB2DC(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_1000AA9CC();
  }
}

uint64_t sub_1000AB2E8(uint64_t a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E390(a1, v6);
  v7 = OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_headphoneModel;
  swift_beginAccess();
  sub_1000AB398(v6, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1000AB398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB3FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AB47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000AB4DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000CC694(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1000AF798(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1000AB59C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000AB5B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000AB5F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AB63C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000AB66C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AB6B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AB754(void *a1, void *a2)
{
  v3 = v2;
  v80 = *(v2 + 208);
  v81 = *(v2 + 224);
  v82 = *(v2 + 240);
  v76 = *(v2 + 144);
  v77 = *(v2 + 160);
  v78 = *(v2 + 176);
  v79 = *(v2 + 192);
  v72 = *(v2 + 80);
  v73 = *(v2 + 96);
  v74 = *(v2 + 112);
  v75 = *(v2 + 128);
  v68 = *(v2 + 16);
  v69 = *(v2 + 32);
  v70 = *(v2 + 48);
  v71 = *(v2 + 64);
  v6 = *(v2 + 152);
  v7 = *(v2 + 160);
  v8 = *(v2 + 256);
  sub_10002B2D0(v8);
  v10 = v9;
  if (v8 == 2)
  {
    v6 = *(&v77 + 1);
    v7 = *&v78;
  }

  v11 = *(v2 + 8);
  v12 = [*(v3 + 8) centerYAnchor];
  v64 = a1;
  v13 = [a1 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = [v11 topAnchor];
  v16 = [a2 topAnchor];
  v66 = [v15 constraintEqualToAnchor:v16];

  v17 = [v11 topAnchor];
  v18 = [a1 topAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];

  v20 = *v3;
  v21 = [*v3 centerYAnchor];
  v22 = [v11 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v10];

  v24 = [v20 topAnchor];
  v25 = [v11 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000D5C90;
  *(v27 + 32) = v23;
  *(v27 + 40) = v14;
  *(v27 + 48) = v19;
  v28 = *(v3 + 272);
  v29 = v23;
  v30 = v14;
  v62 = v19;

  *(v3 + 272) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000D5DA0;
  *(v31 + 32) = v66;
  *(v31 + 40) = v26;
  v32 = *(v3 + 280);
  v65 = v66;
  v67 = v26;

  *(v3 + 280) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000D78E0;
  *(v33 + 32) = v30;
  v34 = *(v3 + 288);
  v35 = v30;

  *(v3 + 288) = v33;
  v36 = *(v3 + 296);

  *(v3 + 296) = _swiftEmptyArrayStorage;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000D9D50;
  v38 = [v20 heightAnchor];
  v39 = [v38 constraintEqualToConstant:v7];

  *(v37 + 32) = v39;
  v40 = [v20 widthAnchor];
  v41 = [v40 constraintEqualToConstant:v6];

  *(v37 + 40) = v41;
  *(v37 + 48) = v29;
  v63 = v29;
  v42 = [v20 centerXAnchor];
  v43 = [v11 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v37 + 56) = v44;
  *(v37 + 64) = v62;
  v45 = v62;
  v46 = [v11 bottomAnchor];
  v47 = [v64 bottomAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47];

  v49 = *(v3 + 264);
  *(v37 + 72) = v48;
  *(v37 + 80) = v49;
  *(v37 + 88) = v35;
  v50 = v35;
  v51 = v49;
  v52 = [v11 centerXAnchor];
  v53 = [v64 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v37 + 96) = v54;
  v55 = [v11 leadingAnchor];
  v56 = [v64 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v37 + 104) = v57;
  v58 = [v11 trailingAnchor];
  v59 = [v64 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v37 + 112) = v60;
  return v37;
}

uint64_t sub_1000ABDA8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 224);
  v65 = *(v1 + 208);
  v66 = v4;
  v67 = *(v1 + 240);
  v5 = *(v1 + 160);
  v61 = *(v1 + 144);
  v62 = v5;
  v6 = *(v1 + 192);
  v63 = *(v1 + 176);
  v64 = v6;
  v7 = *(v1 + 96);
  v57 = *(v1 + 80);
  v58 = v7;
  v8 = *(v1 + 128);
  v59 = *(v1 + 112);
  v60 = v8;
  v9 = *(v1 + 32);
  v53 = *(v1 + 16);
  v54 = v9;
  v10 = *(v1 + 64);
  v55 = *(v1 + 48);
  v56 = v10;
  v11 = *(v1 + 256);
  v12 = sub_10002B2D0(v11);
  v14 = v13;
  v15 = 136;
  if (v11 == 2)
  {
    v15 = 152;
  }

  v16 = *(&v53 + v15);
  v17 = 144;
  if (v11 == 2)
  {
    v17 = 160;
  }

  v18 = *(&v53 + v17);
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000D9D50;
  v20 = *v2;
  v21 = [*v2 heightAnchor];
  v22 = [v21 constraintEqualToConstant:v18];

  *(v19 + 32) = v22;
  v23 = [v20 widthAnchor];
  v24 = [v23 constraintEqualToConstant:v16];

  *(v19 + 40) = v24;
  v25 = [v20 centerYAnchor];
  v26 = *(v2 + 8);
  v27 = [v26 centerYAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:v14];

  *(v19 + 48) = v28;
  v29 = [v20 centerXAnchor];
  v30 = [v26 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v19 + 56) = v31;
  v32 = [v26 topAnchor];
  v33 = [a1 topAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33];

  *(v19 + 64) = v34;
  v35 = [v26 bottomAnchor];
  v36 = [a1 bottomAnchor];
  v37 = [v35 constraintLessThanOrEqualToAnchor:v36];

  *(v19 + 72) = v37;
  v38 = [v26 heightAnchor];
  v39 = [v38 constraintEqualToConstant:v12];

  *(v19 + 80) = v39;
  v40 = [v26 centerYAnchor];
  v41 = [a1 centerYAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v19 + 88) = v42;
  v43 = [v26 centerXAnchor];
  v44 = [a1 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v19 + 96) = v45;
  v46 = [v26 leadingAnchor];
  v47 = [a1 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v19 + 104) = v48;
  v49 = [v26 trailingAnchor];
  v50 = [a1 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v19 + 112) = v51;
  return v19;
}

uint64_t sub_1000AC264(void *a1, void *a2)
{
  v5 = 152;
  if (*(v2 + 256) == 2)
  {
    v5 = 168;
  }

  v6 = 160;
  if (*(v2 + 256) == 2)
  {
    v6 = 176;
  }

  v7 = *(v2 + v6);
  v8 = *(v2 + v5);
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D9D50;
  v10 = *v2;
  v11 = [*v2 heightAnchor];
  v12 = [v11 constraintEqualToConstant:v7];

  *(v9 + 32) = v12;
  v13 = [v10 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v8];

  *(v9 + 40) = v14;
  v15 = [v10 topAnchor];
  v16 = [a1 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v9 + 48) = v17;
  v18 = [v10 centerXAnchor];
  v19 = [a1 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v9 + 56) = v20;
  v21 = *(v2 + 8);
  v22 = [v21 topAnchor];
  v23 = [a2 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  v25 = [v21 bottomAnchor];
  v26 = [a2 bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26];

  *(v9 + 72) = v27;
  v28 = [v21 centerYAnchor];
  v29 = [a2 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  v31 = *(v2 + 264);
  *(v9 + 80) = v30;
  *(v9 + 88) = v31;
  v32 = v31;
  v33 = [v21 centerXAnchor];
  v34 = [a2 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v9 + 96) = v35;
  v36 = [v21 leadingAnchor];
  v37 = [a2 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v9 + 104) = v38;
  v39 = [v21 trailingAnchor];
  v40 = [a2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v9 + 112) = v41;
  return v9;
}

__n128 sub_1000AC67C@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v8 = a2[13];
  v40 = a2[12];
  v41 = v8;
  v42 = a2[14];
  v9 = a2[9];
  v36 = a2[8];
  v37 = v9;
  v10 = a2[11];
  v38 = a2[10];
  v39 = v10;
  v11 = a2[5];
  v32 = a2[4];
  v33 = v11;
  v12 = a2[7];
  v34 = a2[6];
  v35 = v12;
  v13 = a2[1];
  v28 = *a2;
  v29 = v13;
  v14 = a2[3];
  v30 = a2[2];
  v31 = v14;
  v15 = objc_allocWithZone(UILayoutGuide);
  sub_10000A304(a2, &v27);
  v16 = [v15 init];
  v17 = sub_10002B2D0(a3);
  sub_10000A360(a2);
  v18 = [v16 heightAnchor];

  v19 = [v18 constraintEqualToConstant:v17];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = v16;
  v20 = v41;
  a4[13] = v40;
  a4[14] = v20;
  a4[15] = v42;
  v21 = v37;
  a4[9] = v36;
  a4[10] = v21;
  v22 = v39;
  a4[11] = v38;
  a4[12] = v22;
  v23 = v33;
  a4[5] = v32;
  a4[6] = v23;
  v24 = v35;
  a4[7] = v34;
  a4[8] = v24;
  v25 = v29;
  a4[1] = v28;
  a4[2] = v25;
  result = v31;
  a4[3] = v30;
  a4[4] = result;
  a4[16].n128_u8[0] = a3;
  a4[16].n128_u64[1] = v19;
  a4[17].n128_u64[0] = _swiftEmptyArrayStorage;
  a4[17].n128_u64[1] = _swiftEmptyArrayStorage;
  a4[18].n128_u64[0] = _swiftEmptyArrayStorage;
  a4[18].n128_u64[1] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000AC7FC(void *a1)
{
  v2 = v1;
  v51 = *(v1 + 208);
  v52 = *(v1 + 224);
  v53 = *(v1 + 240);
  *v49 = *(v1 + 144);
  *&v49[16] = *(v1 + 160);
  *&v49[32] = *(v1 + 176);
  v50 = *(v1 + 192);
  v45 = *(v1 + 80);
  v46 = *(v1 + 96);
  v47 = *(v1 + 112);
  v48 = *(v1 + 128);
  v41 = *(v1 + 16);
  v42 = *(v1 + 32);
  v43 = *(v1 + 48);
  v44 = *(v1 + 64);
  v4 = *(v1 + 256);
  v5 = sub_10002B2D0(v4);
  v7 = v6;
  if (v4 == 2)
  {
    v40 = *&v49[24];
    v37 = [objc_opt_self() mainScreen];
    [v37 bounds];
    v39 = v38;

    v8 = 1.0;
    if (v39 < 375.0)
    {
      v8 = 298.0 / *&v49[24];
    }
  }

  else
  {
    v8 = 1.0;
    v40 = *&v49[8];
  }

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D5260;
  v10 = *v2;
  v11 = [*v2 heightAnchor];
  v12 = [v11 constraintEqualToConstant:{vmuld_lane_f64(v8, v40, 1)}];

  *(v9 + 32) = v12;
  v13 = [v10 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v8 * v40.f64[0]];

  *(v9 + 40) = v14;
  v15 = [v10 centerYAnchor];
  v16 = *(v2 + 8);
  v17 = [v16 centerYAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:v7 * v8];

  *(v9 + 48) = v18;
  v19 = [v10 centerXAnchor];
  v20 = [v16 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [v16 topAnchor];
  v23 = [a1 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v9 + 64) = v24;
  v25 = [v16 heightAnchor];
  v26 = [v25 constraintEqualToConstant:v5 * v8];

  *(v9 + 72) = v26;
  v27 = [v16 centerXAnchor];
  v28 = [a1 centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v9 + 80) = v29;
  v30 = [v16 leadingAnchor];
  v31 = [a1 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v9 + 88) = v32;
  v33 = [v16 trailingAnchor];
  v34 = [a1 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v9 + 96) = v35;
  return v9;
}

void *sub_1000ACC6C()
{
  v9[4] = [v0 titleView];
  v1 = [v0 bodyView];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView];
  v9[5] = v1;
  v9[6] = v2;
  result = v2;
  v4 = 0;
LABEL_2:
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  while (1)
  {
    if (v4 == 3)
    {
      sub_100008438(&qword_10011D148, &qword_1000D6430);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v5 == v4)
    {
      break;
    }

    v6 = v9[v4++ + 4];
    if (v6)
    {
      v7 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1000ACDB4()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = [objc_allocWithZone(ControlCenterTrainingView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v3 = [v0 contentView];
  v4 = [v3 mainContentGuide];

  v5 = [v1 centerXAnchor];
  v6 = [v4 centerXAnchor];
  v29 = [v5 constraintEqualToAnchor:v6 constant:195.0];

  v7 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5C90;
  v9 = [v1 topAnchor];
  v10 = [v4 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v1 bottomAnchor];

  v28 = v4;
  v13 = [v4 bottomAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

  *(v8 + 40) = v14;
  *(v8 + 48) = v29;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v15 = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  v17 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView];
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView] = v1;
  v18 = v1;

  v19 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint];
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint] = v15;
  v20 = v15;

  v21 = sub_1000ACC6C();
  v22 = v21;
  if (v21 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v24 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [v25 setAlpha:0.0];

      ++v24;
      if (v27 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1000AD1C8()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1000AE174;
  v21 = v2;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100019340;
  v19 = &unk_100108230;
  v3 = _Block_copy(&v16);

  [v1 animateWithDuration:0 delay:v3 options:0 animations:0.5 completion:0.0];
  _Block_release(v3);
  v4 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v5) = 1041865114;
  LODWORD(v6) = 0.75;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1041865114;
  v9 = [v4 initWithControlPoints:v5 :v6 :v8 :v7];
  v10 = objc_opt_self();
  [v10 begin];
  [v10 setAnimationTimingFunction:v9];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1000AE194;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100019340;
  v19 = &unk_100108258;
  v12 = _Block_copy(&v16);

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v20 = sub_1000AE1D4;
  v21 = v13;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000194C0;
  v19 = &unk_1001082A8;
  v14 = _Block_copy(&v16);
  v15 = v0;

  [v1 animateWithDuration:v12 animations:v14 completion:0.5];
  _Block_release(v14);
  _Block_release(v12);
  [v10 commit];
}

void sub_1000AD4E4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitleText:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setBodyText:v8];

  [v1 setShouldCenterAlignText:1];
  v9 = a1[6];
  v10 = a1[7];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v16[4] = sub_1000AE154;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000C034;
  v16[3] = &unk_100108208;
  v13 = _Block_copy(v16);
  v14 = [objc_opt_self() actionWithTitle:v12 style:3 handler:v13];

  _Block_release(v13);

  v15 = [v1 addAction:v14];
}

void sub_1000AD698()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B9ADC();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000AD70C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint);
    if (v2)
    {
      v3 = v2;

      [v3 setConstant:0.0];
      v1 = v3;
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 contentView];

    [v6 layoutIfNeeded];
  }
}

uint64_t sub_1000AD7EC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v24 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000AE1DC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_1001082D0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001C380();
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_100041EE4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v28 + 8))(v5, v2);
  (*(v26 + 8))(v9, v27);
  return (v19)(v17, v24);
}

void sub_1000ADB64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView);
    if (v4)
    {
      v5 = v4;

      aBlock[4] = sub_1000AE1E4;
      aBlock[5] = a1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019340;
      aBlock[3] = &unk_1001082F8;
      v6 = _Block_copy(aBlock);

      [v5 animateToInitialStateWithCompletionHandler:v6];
      _Block_release(v6);
      v3 = v5;
    }
  }
}

void sub_1000ADC70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000ADCC4();
  }
}

void sub_1000ADCC4()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_1000AE1EC;
  v10 = v1;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_100019340;
  v8 = &unk_100108320;
  v2 = _Block_copy(&v5);

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_1000AE20C;
  v10 = v3;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000194C0;
  v8 = &unk_100108348;
  v4 = _Block_copy(&v5);

  [v0 animateWithDuration:0 delay:v2 options:v4 animations:0.166666667 completion:0.0];
  _Block_release(v4);
  _Block_release(v2);
}

uint64_t sub_1000ADE60(double a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1000ACC6C();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v7 setAlpha:a1];

        if (v9 == i)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

void sub_1000ADF84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B6720();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000AE11C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AE19C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000AE24C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v108 = *&v0[v3];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
    v5 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews;
    swift_beginAccess();
    v6 = *&v1[v5];
    v7 = v6[2];
    if (!v7)
    {
      goto LABEL_60;
    }

    v116 = ObjectType;
    v8 = v6[4];
    v9 = v6[5];

    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v6;
    if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > v6[3] >> 1)
    {
      v6 = sub_1000CC450(isUniquelyReferenced_nonNull_native, v7, 1, v6);
      v142 = v6;
    }

    sub_1000AF850(0, 1, 0);
    if (v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows] == 1)
    {
      v12 = [v10 topAnchor];
      v13 = [v1 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v110 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v15 = [v10 leadingAnchor];
      v16 = [v1 leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v111 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v18 = v10;
      v19 = [v10 trailingAnchor];
      v20 = [v1 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v112 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v22 = v6[2];
      if (v22)
      {
        v23 = v9;
        v24 = v6 + 5;
        v25 = v18;
        do
        {
          v125 = v23;
          v26 = *(v24 - 1);
          v123 = *v24;
          v121 = swift_getObjectType();
          v27 = v26;
          v28 = [v27 topAnchor];
          v119 = swift_getObjectType();
          v29 = [v25 bottomAnchor];
          v30 = [v28 constraintEqualToAnchor:v29 constant:20.0];

          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v40 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v31 = [v27 leadingAnchor];
          v32 = [v1 leadingAnchor];
          v33 = [v31 constraintEqualToAnchor:v32];

          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v34 = [v27 trailingAnchor];
          v35 = [v1 trailingAnchor];
          v36 = [v34 constraintEqualToAnchor:v35];

          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          *&v127 = v27;
          v37 = (*(v123 + 16))(v121, v123);
          v38 = (*(v125 + 16))(v119);
          v39 = [v37 constraintEqualToAnchor:v38];

          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v42 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          v24 += 2;
          v25 = v27;
          v23 = v123;
          --v22;
        }

        while (v22);
      }

      else
      {
        v27 = v18;
      }

      v100 = [v27 bottomAnchor];
      v101 = [v1 bottomAnchor];
      v102 = [v100 constraintEqualToAnchor:v101];
LABEL_57:
      v103 = v102;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v109 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v104 = *&v1[v3];
      swift_endAccess();
      v105 = objc_opt_self();
      sub_10000F5A0();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v105 activateConstraints:isa];

      ObjectType = v116;
      goto LABEL_60;
    }

    v43 = [v10 leftAnchor];
    v44 = [v1 leftAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v113 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v46 = [v10 topAnchor];
    v47 = [v1 topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v114 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v49 = v10;
    v50 = [v10 bottomAnchor];
    v51 = [v1 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v53 = &unk_100116000;
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v115 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v54 = v6[2];
    if (!v54)
    {
      v27 = v49;
LABEL_56:

      v100 = [v27 rightAnchor];
      v101 = [v1 rightAnchor];
      v102 = [v100 constraintLessThanOrEqualToAnchor:v101];
      goto LABEL_57;
    }

    v55 = v9;
    v56 = &v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
    v57 = v6 + 5;
    v58 = v49;
    v117 = v1;
    v118 = v3;
    while (1)
    {
      v122 = v54;
      v59 = v53;
      v60 = v57;
      v61 = *(v57 - 1);
      v62 = *v57;
      v63 = swift_getObjectType();
      v124 = v58;
      *&v127 = v58;
      v64 = v55;
      v65 = *(v55 + 40);
      v66 = v61;
      v120 = v63;
      v126 = v64;
      if (v65(v63, v64) > 1u)
      {
        v68 = v62;
        v27 = v66;
        v53 = v59;
        v70 = v60;
        v1 = v117;
      }

      else
      {
        v67 = swift_getObjectType();
        v68 = v62;
        v69 = (*(v62 + 40))(v67, v62);
        v27 = v66;
        if (!v69)
        {
          v53 = v59;
          v70 = v60;
          v1 = v117;
LABEL_42:
          v80 = *(v56 + 13);
          v139 = *(v56 + 12);
          v140 = v80;
          v141 = *(v56 + 14);
          v81 = *(v56 + 9);
          v135 = *(v56 + 8);
          v136 = v81;
          v82 = *(v56 + 11);
          v137 = *(v56 + 10);
          v138 = v82;
          v83 = *(v56 + 5);
          v131 = *(v56 + 4);
          v132 = v83;
          v84 = *(v56 + 7);
          v133 = *(v56 + 6);
          v134 = v84;
          v85 = *(v56 + 1);
          v127 = *v56;
          v128 = v85;
          v86 = *(v56 + 3);
          v129 = *(v56 + 2);
          v130 = v86;
          v78 = v68;
          v3 = v118;
          if (sub_100026134(&v127) != 1)
          {
            v79 = *(v56 + 25);
            goto LABEL_45;
          }

LABEL_43:
          v79 = 0.0;
          goto LABEL_45;
        }

        v53 = v59;
        v70 = v60;
        v1 = v117;
        if (v69 == 1)
        {
          goto LABEL_42;
        }
      }

      v71 = *(v56 + 13);
      v139 = *(v56 + 12);
      v140 = v71;
      v141 = *(v56 + 14);
      v72 = *(v56 + 9);
      v135 = *(v56 + 8);
      v136 = v72;
      v73 = *(v56 + 11);
      v137 = *(v56 + 10);
      v138 = v73;
      v74 = *(v56 + 5);
      v131 = *(v56 + 4);
      v132 = v74;
      v75 = *(v56 + 7);
      v133 = *(v56 + 6);
      v134 = v75;
      v76 = *(v56 + 1);
      v127 = *v56;
      v128 = v76;
      v77 = *(v56 + 3);
      v129 = *(v56 + 2);
      v130 = v77;
      v78 = v68;
      v3 = v118;
      if (sub_100026134(&v127) == 1)
      {
        goto LABEL_43;
      }

      v79 = *(v56 + 26);
LABEL_45:
      v87 = swift_getObjectType();
      *&v127 = v27;
      v88 = (*(v78 + 24))(v87, v78);
      v89 = (*(v126 + 32))(v120);
      v90 = [v88 constraintEqualToAnchor:v89 constant:v79];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v97 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v91 = [v27 topAnchor];
      v92 = [v1 topAnchor];
      v93 = [v91 v53[88]];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v98 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v94 = [v27 bottomAnchor];
      v95 = [v1 bottomAnchor];
      v96 = [v94 v53[88]];

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v99 = *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v57 = v70 + 2;
      v58 = v27;
      v55 = v78;
      v54 = v122 - 1;
      if (v122 == 1)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_60:
  v143.receiver = v1;
  v143.super_class = ObjectType;
  return objc_msgSendSuper2(&v143, "updateConstraints");
}

id sub_1000AF228(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows] = v3 & 1;
  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints;
  swift_beginAccess();
  v7 = *&v1[v6];
  sub_10000F5A0();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:isa];

  v9 = *&v1[v6];
  *&v1[v6] = _swiftEmptyArrayStorage;

  return [v1 setNeedsUpdateConstraints];
}

id sub_1000AF3E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  sub_10001309C(v23);
  v11 = v23[13];
  v10[12] = v23[12];
  v10[13] = v11;
  v10[14] = v23[14];
  v12 = v23[9];
  v10[8] = v23[8];
  v10[9] = v12;
  v13 = v23[11];
  v10[10] = v23[10];
  v10[11] = v13;
  v14 = v23[5];
  v10[4] = v23[4];
  v10[5] = v14;
  v15 = v23[7];
  v10[6] = v23[6];
  v10[7] = v15;
  v16 = v23[1];
  *v10 = v23[0];
  v10[1] = v16;
  v17 = v23[3];
  v10[2] = v23[2];
  v10[3] = v17;
  *&v4[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints] = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows;
  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4[v18] = v19 & 1;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000AF55C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  sub_10001309C(v18);
  v5 = v18[13];
  v4[12] = v18[12];
  v4[13] = v5;
  v4[14] = v18[14];
  v6 = v18[9];
  v4[8] = v18[8];
  v4[9] = v6;
  v7 = v18[11];
  v4[10] = v18[10];
  v4[11] = v7;
  v8 = v18[5];
  v4[4] = v18[4];
  v4[5] = v8;
  v9 = v18[7];
  v4[6] = v18[6];
  v4[7] = v9;
  v10 = v18[1];
  *v4 = v18[0];
  v4[1] = v10;
  v11 = v18[3];
  v4[2] = v18[2];
  v4[3] = v11;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedConstraints] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_isUsingRows;
  v13 = [objc_opt_self() currentTraitCollection];
  v14 = [v13 preferredContentSizeCategory];

  LOBYTE(v13) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v1[v12] = v13 & 1;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);

  if (v15)
  {
  }

  return v15;
}

unint64_t sub_1000AF798(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000AF850(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100008438(&qword_10011FC60, qword_1000D9EC0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AF920(uint64_t a1)
{
  v2 = sub_100008438(&unk_10011FF80, &qword_1000D8590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AF988()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FC68);
  v1 = sub_10000A570(v0, qword_10011FC68);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000AFA50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v68.receiver = v1;
  v68.super_class = ObjectType;
  objc_msgSendSuper2(&v68, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_1000145EC(v11 + 16, &v65);
    swift_unknownObjectRelease();
    v12 = v67;
    if (v67)
    {
      v13 = sub_10000E7E4(&v65, v67);
      v64 = &v64;
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      __chkstk_darwin(v13);
      v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v17);
      sub_10001465C(&v65);
      v18 = *v17;
      v19 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v18 + v19, v7);
      (*(v14 + 8))(v17, v12);
      v20 = v9;
      sub_10000E828(v7, v9);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v64}];
      v23 = [v1 traitCollection];
      v24 = [v23 userInterfaceStyle];

      v25 = v24 == 1;
      if (v24 == 1)
      {
        v26 = 0x746867694CLL;
      }

      else
      {
        v26 = 1802658116;
      }

      if (v25)
      {
        v27 = 0xE500000000000000;
      }

      else
      {
        v27 = 0xE400000000000000;
      }

      v28 = *&v9[*(v3 + 136)] - 8217;
      if (v28 <= 7 && ((1 << v28) & 0xA5) != 0)
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v29 = 0x80000001000E2120;
        v30 = 0xD000000000000022;
      }

      else
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v29 = 0x80000001000E2100;
        v30 = 0xD00000000000001CLL;
      }

      v65 = v30;
      v66 = v29;
      v31._countAndFlagsBits = v26;
      v31._object = v27;
      String.append(_:)(v31);
      v32 = objc_allocWithZone(BSUICAPackageView);
      v33 = v22;
      v34 = String._bridgeToObjectiveC()();
      v35 = [v32 initWithPackageName:v34 inBundle:v33];

      if (v35)
      {

        v36 = String._bridgeToObjectiveC()();
        [v35 setState:v36 animated:1];

        v37 = v35;
        [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
        v38 = [v1 contentView];
        [v38 addSubview:v37];

        v39 = [v1 contentView];
        v40 = [v39 mainContentGuide];

        v41 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1000D5C80;
        v43 = [v37 topAnchor];
        v44 = [v40 topAnchor];
        v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

        *(v42 + 32) = v45;
        v46 = [v37 bottomAnchor];
        v47 = [v40 bottomAnchor];
        v48 = [v46 constraintLessThanOrEqualToAnchor:v47];

        *(v42 + 40) = v48;
        v49 = [v37 heightAnchor];
        v50 = [v49 constraintEqualToConstant:160.0];

        *(v42 + 48) = v50;
        v51 = [v37 widthAnchor];
        v52 = [v51 constraintEqualToConstant:320.0];

        *(v42 + 56) = v52;
        v53 = [v37 centerYAnchor];
        v54 = [v40 centerYAnchor];
        v55 = [v53 constraintEqualToAnchor:v54];

        *(v42 + 64) = v55;
        v56 = [v37 centerXAnchor];

        v57 = [v40 centerXAnchor];
        v58 = [v56 constraintEqualToAnchor:v57];

        *(v42 + 72) = v58;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v41 activateConstraints:isa];

        sub_10000E8F4(v20);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    sub_10001465C(&v65);
  }

  if (qword_10011C760 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_10000A570(v60, qword_10011FC68);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Headphone Model is nil, exiting", v63, 2u);
  }
}

void sub_1000B0318(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_1000B074C;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_1001083D8;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000B0784;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100108400;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_1000B05D0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000B7CC0(a3 & 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000B0714()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B076C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000B07AC()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() lightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:450.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1000B08D8()
{
  v1 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v27 - v3 + 40;
  v5 = type metadata accessor for HeadhponeHeartRateTutorial1ViewController();
  v29.receiver = v0;
  v29.super_class = v5;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    sub_1000145EC(v7 + 16, v27);
    swift_unknownObjectRelease();
    v8 = v28;
    if (v28)
    {
      v9 = sub_10000E7E4(v27, v28);
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      __chkstk_darwin(v9);
      v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v10 + 16))(v13);
      sub_10000E950(v27, &qword_10011FBC0, &unk_1000D5EF0);
      v14 = *v13;
      v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v14 + v15, v4);
      (*(v10 + 8))(v13, v8);
      v16 = type metadata accessor for HeadphoneModel(0);
      (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
      sub_10000E950(v4, &qword_10011EBD0, &unk_1000D5EE0);
      v17 = [v0 contentView];
      v18 = sub_1000B07AC();
      [v17 addSubview:v18];

      v19 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset];
      v20 = [v0 contentView];
      v21 = [v20 mainContentGuide];

      [v19 pinToOtherWithLayoutGuide:v21];
      goto LABEL_9;
    }

    sub_10000E950(v27, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v22 = type metadata accessor for HeadphoneModel(0);
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_10000E950(v4, &qword_10011EBD0, &unk_1000D5EE0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A570(v23, qword_100123040);
  v21 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v21, v24, "HeadhponeHeartRateTutorial1ViewController: Headphone Model is nil, exiting", v25, 2u);
  }

LABEL_9:
}

id sub_1000B0E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadhponeHeartRateTutorial1ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B0F04()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FCF8);
  v1 = sub_10000A570(v0, qword_10011FCF8);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000B0FCC()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView);
  }

  else
  {
    v4 = sub_1000B1030();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000B1030()
{
  swift_getObjectType();
  v0 = type metadata accessor for HeadphoneModel(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v33[-v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    sub_1000145EC(v8 + 16, &v34);
    swift_unknownObjectRelease();
    v9 = v36;
    if (v36)
    {
      v10 = sub_10000E7E4(&v34, v36);
      v11 = *(v9 - 8);
      v12 = *(v11 + 64);
      __chkstk_darwin(v10);
      v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v11 + 16))(v14);
      sub_10000E950(&v34, &qword_10011FBC0, &unk_1000D5EF0);
      v15 = *v14;
      v16 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v15 + v16, v4);
      (*(v11 + 8))(v14, v9);
      sub_10000E828(v4, v6);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v34 = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v34 = 0xD000000000000011;
      v35 = 0x80000001000E2240;
      v19 = v6[160];
      v33[7] = v6[160];
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21 = v18;
      v22 = String._bridgeToObjectiveC()();

      v23 = objc_opt_self();
      v24 = [v23 imageNamed:v22 inBundle:v21];

      if (!v24)
      {
        v25 = String._bridgeToObjectiveC()();
        v24 = [v23 imageNamed:v25 inBundle:v21];
      }

      v26 = [objc_allocWithZone(UIImageView) initWithImage:v24];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ((v19 - 18) >= 5)
      {
        v27 = 5;
      }

      else
      {
        v27 = v19 - 18;
      }

      sub_1000B14CC(v26, v27);

      sub_10000E8F4(v6);
      return v26;
    }

    sub_10000E950(&v34, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C768 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A570(v29, qword_10011FCF8);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Headphone Model is nil, exiting", v32, 2u);
  }

  return [objc_allocWithZone(UIImageView) init];
}

void sub_1000B14CC(void *a1, char a2)
{
  if (a2 == 5)
  {
    if (qword_10011C768 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011FCF8);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v28 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100078978(0xD000000000000022, 0x80000001000E2280, v28);
      _os_log_impl(&_mh_execute_header, oslog, v4, "%s nil tint color early exit", v5, 0xCu);
      sub_10000EA94(v6);
    }

    else
    {
    }
  }

  else
  {
    v9 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorMatrix];
    v10 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterBias];
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceStyle];

    if (v12 == 1)
    {
      v13 = &unk_1000DA04C;
    }

    else
    {
      v14 = dword_1000DA060[a2];
      v13 = "fff?";
    }

    v15 = *&v13[4 * a2];
    v16 = objc_opt_self();
    *v28 = v15;
    *&v28[4] = *(&CAColorMatrixIdentity + 4);
    v29 = *(&CAColorMatrixIdentity + 5);
    v30 = v15;
    v31 = *(&CAColorMatrixIdentity + 28);
    v32 = *(&CAColorMatrixIdentity + 11);
    v33 = v15;
    *v34 = *(&CAColorMatrixIdentity + 52);
    *&v34[12] = *(&CAColorMatrixIdentity + 4);
    v17 = [v16 valueWithCAColorMatrix:v28];
    v18 = String._bridgeToObjectiveC()();
    [v9 setValue:v17 forKey:v18];

    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v20 = String._bridgeToObjectiveC()();
    [v10 setValue:isa forKey:v20];

    v21 = [a1 layer];
    sub_100008438(&unk_10011DC30, &unk_1000D7D30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000D66A0;
    v23 = sub_1000084D4(0, &qword_10011FA58, CAFilter_ptr);
    *(v22 + 32) = v9;
    *(v22 + 88) = v23;
    *(v22 + 56) = v23;
    *(v22 + 64) = v10;
    v24 = v9;
    v25 = v10;
    v26 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setFilters:v26];
  }
}