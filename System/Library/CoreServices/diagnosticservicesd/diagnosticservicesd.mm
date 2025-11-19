uint64_t sub_100001010()
{
  type metadata accessor for DiagnosticServicesXPCService.SessionHandler();
  sub_1000010A0(&qword_100008228, v0, type metadata accessor for DiagnosticServicesXPCService.SessionHandler);
  return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
}

uint64_t sub_1000010A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000010E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DiagnosticServicesXPCService.SessionHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10000111C@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = type metadata accessor for PanicMatcherOOP();
  v57 = *(v1 - 8);
  v2 = *(v57 + 64);
  (__chkstk_darwin)();
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CrashMatcherOOP();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  (__chkstk_darwin)();
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCPatternInfoContainer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v17 = XPCReceivedMessage.auditToken.getter();
  sub_100001AF8(v17, v18, v19, v20);
  v52 = v4;
  v53 = v1;
  v54 = v8;
  v55 = v14;
  v56 = v10;
  sub_1000010A0(&qword_1000081F8, 255, &type metadata accessor for XPCPatternInfoContainer);
  XPCReceivedMessage.decode<A>(as:)();
  v21 = v9;
  v23 = v55;
  v22 = v56;
  (*(v56 + 16))(v55, v16, v9);
  v24 = (*(v22 + 88))(v23, v9);
  if (v24 == enum case for XPCPatternInfoContainer.crash(_:))
  {
    v25 = *(v22 + 96);
    v57 = v9;
    v25(v23, v9);
    v26 = *v23;
    v27 = os_variant_allows_internal_security_policies();
    v28 = v58;
    v29 = v5;
    v30 = v54;
    if (!v27)
    {
LABEL_17:
      v49 = sub_1000022CC(&qword_1000081E0, &qword_100002C58);
      v50 = v59;
      v59[3] = v49;
      v50[4] = sub_100001D10(&qword_1000081E8, &qword_1000081E0, &qword_100002C58);
      sub_100001CAC(v50);
      CrashMatcherOOP.init()();
      CrashMatcherOOP.lookForPattern(_:)();

      (*(v28 + 8))(v30, v29);
      return (*(v56 + 8))(v16, v57);
    }

    if (CrashPatternInfo.procName.getter() == 0xD000000000000026 && 0x8000000100002EB0 == v31)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sleep(0xCu);
LABEL_14:
    if (CrashPatternInfo.procName.getter() == 0xD000000000000024 && 0x8000000100002EE0 == v47)
    {
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    abort();
  }

  if (v24 == enum case for XPCPatternInfoContainer.panic(_:))
  {
    (*(v22 + 96))(v23, v9);
    v34 = *v23;
    v35 = v22;
    v36 = sub_1000022CC(&qword_100008200, &qword_100002C68);
    v37 = v21;
    v38 = v59;
    v59[3] = v36;
    v38[4] = sub_100001D10(&qword_100008208, &qword_100008200, &qword_100002C68);
    sub_100001CAC(v38);
    v39 = v52;
    PanicMatcherOOP.init()();
    PanicMatcherOOP.lookForPattern(_:)();

    (*(v57 + 8))(v39, v53);
    return (*(v35 + 8))(v16, v37);
  }

  else
  {
    v41 = sub_1000022CC(&qword_1000081E0, &qword_100002C58);
    v42 = v59;
    v59[3] = v41;
    v42[4] = sub_100001D10(&qword_1000081E8, &qword_1000081E0, &qword_100002C58);
    v43 = sub_100001CAC(v42);
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v44._countAndFlagsBits = 0xD000000000000018;
    v44._object = 0x8000000100002E90;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45 = v61;
    *v43 = v60;
    v43[1] = v45;
    (*(*(v41 - 8) + 104))(v43, enum case for PatternMatchResult.failure<A>(_:), v41);
    v46 = *(v22 + 8);
    v46(v16, v9);
    return (v46)(v23, v9);
  }
}

void sub_100001AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  *token.val = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, &token);

  v8 = *token.val;
  if (*token.val)
  {
    type metadata accessor for CFError();
    sub_1000010A0(&qword_100008218, 255, type metadata accessor for CFError);
    swift_allocError();
    *v9 = v8;
LABEL_8:
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v7 || (swift_unknownObjectRetain(), !swift_dynamicCast()) || (v10 & 1) == 0)
  {
    sub_100002460();
    swift_allocError();
    goto LABEL_8;
  }

LABEL_9:
  swift_unknownObjectRelease();
}

uint64_t *sub_100001CAC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100001D10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000234C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for CFError()
{
  if (!qword_100008130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100008130);
    }
  }
}

uint64_t sub_100001DD0()
{
  v0 = type metadata accessor for Logger();
  sub_1000023FC(v0, qword_100008238);
  sub_100002314(v0, qword_100008238);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100001E54()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100001EC0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_100001F34()
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1000024B4();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static XPCListener.InitializationOptions.none.getter();
  v12 = type metadata accessor for XPCListener();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  dispatch_main();
}

uint64_t sub_1000022CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002314(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000234C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002394(uint64_t a1)
{
  v2 = sub_1000022CC(&qword_1000081F0, &qword_100002C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1000023FC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100002460()
{
  result = qword_100008210;
  if (!qword_100008210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008210);
  }

  return result;
}

unint64_t sub_1000024B4()
{
  result = qword_100008220;
  if (!qword_100008220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticServicesXPCService.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DiagnosticServicesXPCService.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_1000025F4()
{
  result = qword_100008230;
  if (!qword_100008230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008230);
  }

  return result;
}