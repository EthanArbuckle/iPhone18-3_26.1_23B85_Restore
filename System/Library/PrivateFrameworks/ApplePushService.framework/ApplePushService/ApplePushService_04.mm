void type metadata accessor for APSIdentityProviderStatus()
{
  if (!qword_1001BD020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001BD020);
    }
  }
}

uint64_t sub_1000D4410()
{
  type metadata accessor for ClientIdentityMetricReporter();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 6;
  *(result + 56) = 0;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *(result + 88) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000D446C()
{
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 6;
  *(result + 56) = 0;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *(result + 88) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000D45EC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000D464C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___APSMultiClientIdentityProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000CD9A8;
}

uint64_t sub_1000D47C0()
{
  v1 = (v0 + OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_10001C53C(v3);
  return v3;
}

uint64_t sub_1000D48DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001C894(v6);
}

id sub_1000D499C()
{
  result = [objc_opt_self() identityUtilities];
  if (result)
  {
    v1 = result;
    v2 = [result forcedProviderDefault];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 unsignedIntegerValue];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D4A7C(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState];
  *v5 = 0;
  v5[8] = 1;
  v6 = OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider;
  *&v2[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider] = 0;
  v7 = OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider;
  *&v2[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider] = 0;
  v8 = OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors;
  *&v2[OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors] = 0;
  v9 = OBJC_IVAR___APSMultiClientIdentityProvider_metrics;
  type metadata accessor for ClientIdentityMetricReporter();
  v10 = swift_allocObject();
  *(v10 + 16) = 2;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 24) = 0;
  *(v10 + 48) = 6;
  *(v10 + 56) = 0;
  *(v10 + 64) = 1;
  *(v10 + 72) = 0;
  *(v10 + 80) = 1;
  *(v10 + 88) = &_swiftEmptyArrayStorage;
  *&v2[v9] = v10;
  swift_unknownObjectWeakInit();
  v11 = &v2[OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = [objc_allocWithZone(APSBAAClientIdentityProvider) init];
  v13 = *&v2[v6];
  *&v2[v6] = v12;

  v14 = *&v2[v7];
  *&v2[v7] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR___APSMultiClientIdentityProvider_retryCount] = 5;
  v2[OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled] = 1;
  v2[OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled] = 1;
  v2[OBJC_IVAR___APSMultiClientIdentityProvider_shouldSwapIdentityProviderAfterNextInvalidPresence] = 0;
  swift_beginAccess();
  v15 = *&v2[v8];
  *&v2[v8] = &_swiftEmptyArrayStorage;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v55.receiver = v2;
  v55.super_class = type metadata accessor for MultiClientIdentityProvider();
  v16 = objc_msgSendSuper2(&v55, "init");
  v17 = v16;
  v48 = a1;
  if (a1)
  {
    v18 = v16;
    v19 = [a1 tokenType];
    if (!v19)
    {
      goto LABEL_11;
    }

    if (v19 == 1)
    {
LABEL_10:
      v20 = 0;
      goto LABEL_12;
    }

    if (v19 != 2)
    {
      v20 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    v21 = v16;
  }

  v22 = [objc_opt_self() identityUtilities];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 baaPushIdentityEnabled];

    if (v24 && (*(v17 + OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled) & 1) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v20 = 1;
LABEL_12:
    v25 = v17 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState;
    *v25 = v20;
    v25[8] = 0;
    v26 = *((swift_isaMask & *v17) + 0x1B0);
    v27 = v26();
    if ((v28 & 1) == 0)
    {
      v29 = (v26)(v27);
      v30 = v17 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState;
      *v30 = v29;
      v30[8] = v31 & 1;
    }

    v32 = OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider;
    v33 = *(v17 + OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider);
    if (v33)
    {
      v34 = swift_allocObject();
      *(v34 + 16) = v17;
      v53 = sub_1000D7B50;
      v54 = v34;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_1000D8DD0;
      v52 = &unk_10018AAF8;
      v35 = _Block_copy(&aBlock);
      v36 = v17;
      v37 = v33;

      [v37 setIdentityAvailabilityDidChangeBlock:v35];
      _Block_release(v35);

      v38 = *(v36 + OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider);
      if (v38)
      {
        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        v53 = sub_1000D7C24;
        v54 = v39;
        aBlock = _NSConcreteStackBlock;
        v50 = 1107296256;
        v51 = sub_1000D8DD0;
        v52 = &unk_10018AB48;
        v40 = _Block_copy(&aBlock);
        v41 = v36;
        swift_unknownObjectRetain();

        [v38 setIdentityAvailabilityDidChangeBlock:v40];
        _Block_release(v40);
        swift_unknownObjectRelease();
        sub_100006B18();
        v42 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_1000D50B0();
        v43 = *(v17 + v32);
        if (v43)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v41;
          v53 = sub_1000D7CE4;
          v54 = v44;
          aBlock = _NSConcreteStackBlock;
          v50 = 1107296256;
          v51 = sub_1000D8D8C;
          v52 = &unk_10018AB98;
          v45 = _Block_copy(&aBlock);
          v46 = v41;
          v47 = v43;

          [v47 setBaaIdentityRefreshedBlock:v45];
          _Block_release(v45);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

id sub_1000D5034()
{
  result = [objc_opt_self() identityUtilities];
  if (result)
  {
    v2 = result;
    v3 = [result baaPushIdentityEnabled];

    if (v3)
    {
      return *(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D50B0()
{
  v1 = [v0 isReadyToFetchIdentity];
  if ((v0[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8] & 1) != 0 || *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState])
  {
    v2 = 0xEE0072656469766FLL;
    v3 = 0x7250747265626C41;
  }

  else
  {
    v2 = 0xEB00000000726564;
    v3 = 0x69766F7250414142;
  }

  sub_100006B18();

  oslog = static OS_os_log.default.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    v7 = sub_100007B6C(v3, v2, &v9);

    *(v5 + 4) = v7;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v4, "MultiClientIdentityProvider, currentIdentityProvider: %s, shouldIdentityBeAvailable:%{BOOL}d", v5, 0x12u);
    sub_100006CCC(v6);
  }

  else
  {
  }
}

id sub_1000D5314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiClientIdentityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000D53D8()
{
  v1 = [v0 identityStatus];
  if (v1 == 2)
  {
    goto LABEL_8;
  }

  if (v1 != 1)
  {
    if (!v1)
    {
      result = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
      if (result)
      {

        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_8:
    type metadata accessor for NoOpClientIdentityProvider();
    return ClientIdentityMetric.__allocating_init()();
  }

  result = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  return swift_unknownObjectRetain();
}

void sub_1000D5488(uint64_t a1, char a2, uint64_t a3, void (*a4)(void, void *, void), uint64_t a5)
{
  v6 = v5;
  sub_100006B18();
  v12 = static OS_os_log.default.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v12, v13, "MultiClientIdentityProvider fetching identity, attempt number %ld", v14, 0xCu);
  }

  sub_1000D50B0();
  if ([v6 isReadyToFetchIdentity])
  {
    if (a1 != 2)
    {
      v15 = *&v6[OBJC_IVAR___APSMultiClientIdentityProvider_metrics];

      (*(*v15 + 352))([v6 identityStatus], a2 & 1);
    }

    v16 = [v6 identityStatus];
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        v20 = *&v6[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
        if (v20)
        {
          v21 = *&v6[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
          swift_unknownObjectRetain();
          goto LABEL_17;
        }

        __break(1u);
        goto LABEL_20;
      }

      if (!v16)
      {
        v17 = *&v6[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
        if (v17)
        {
          v18 = v17;
LABEL_14:
          v20 = v18;
LABEL_17:
          v22 = swift_allocObject();
          *(v22 + 16) = v6;
          *(v22 + 24) = a3;
          *(v22 + 32) = a1;
          v23 = a2 & 1;
          *(v22 + 40) = v23;
          *(v22 + 48) = a4;
          *(v22 + 56) = a5;
          v26[4] = sub_1000D89F8;
          v26[5] = v22;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 1107296256;
          v26[2] = sub_1000D5BB8;
          v26[3] = &unk_10018AED8;
          v24 = _Block_copy(v26);
          v25 = v6;
          sub_10001C53C(a4);

          [v20 fetchClientIdentityWithReason:a1 hasExistingToken:v23 completionHandler:v24];
          _Block_release(v24);
          swift_unknownObjectRelease();
          return;
        }

LABEL_20:
        __break(1u);
        return;
      }
    }

    type metadata accessor for NoOpClientIdentityProvider();
    v18 = ClientIdentityMetric.__allocating_init()();
    goto LABEL_14;
  }

  v19 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a4)
  {
    a4(0, &_swiftEmptyArrayStorage, 0);
  }
}

void sub_1000D57A0(uint64_t a1)
{
  v2 = v1;
  sub_100006B18();
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1000D50B0();
  v5 = *(**(v2 + OBJC_IVAR___APSMultiClientIdentityProvider_metrics) + 344);

  v5(a1);

  v6 = v2 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState;
  if (*(v2 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8))
  {
    return;
  }

  if (*v6 != 1)
  {
    if (*v6)
    {
      return;
    }

    if ([objc_opt_self() isSimulator])
    {
      goto LABEL_20;
    }

    v7 = [objc_opt_self() identityUtilities];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 albertIdentitySupported];

      if (v9)
      {
        if (*(v2 + OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled) == 1)
        {
          (*((swift_isaMask & *v2) + 0x1B0))();
          if (v10)
          {
            v11 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            *v6 = 1;
            goto LABEL_15;
          }
        }
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v12 = [objc_opt_self() identityUtilities];
  if (!v12)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = v12;
  v14 = [v12 baaPushIdentityEnabled];

  if (v14)
  {
    if (*(v2 + OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled) == 1)
    {
      (*((swift_isaMask & *v2) + 0x1B0))();
      if (v15)
      {
        v16 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        *v6 = 0;
LABEL_15:
        v6[8] = 0;
        v17 = (*((swift_isaMask & *v2) + 0x120))();
        if (v17)
        {
          [v17 clearCachedIdentityAndTokens];

          swift_unknownObjectRelease();
        }

        return;
      }
    }
  }

LABEL_20:
  v18 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1000D5BB8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

id sub_1000D5C68()
{
  if ([objc_opt_self() isSimulator])
  {
    return 0;
  }

  result = [objc_opt_self() identityUtilities];
  if (result)
  {
    v1 = result;
    v2 = [result albertIdentitySupported];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000D5CEC(uint64_t a1, uint64_t a2, char a3)
{
  result = [v3 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v10 = *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v10)
    {
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v9 = ClientIdentityMetric.__allocating_init()();
    goto LABEL_7;
  }

  v8 = *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (v8)
  {
    v9 = v8;
LABEL_7:
    v10 = v9;
LABEL_10:
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v13[4] = sub_1000D8224;
    v13[5] = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000D5BB8;
    v13[3] = &unk_10018ABE8;
    v12 = _Block_copy(v13);

    [v10 fetchClientIdentityWithReason:3 hasExistingToken:a3 & 1 completionHandler:v12];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000D5EF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v9 = sub_1000D826C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_10001C53C(a3);
  sub_1000D5488(a1, a2 & 1, 1, v9, v8);

  return sub_10001C894(v9);
}

void sub_1000D60C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v7.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7.super.isa);
}

uint64_t sub_1000D6180(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1000D628C(void *a1, uint64_t a2)
{
  result = [v2 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v8 = *&v2[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v8)
    {
      swift_unknownObjectRetain();
      if (!a1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v7 = ClientIdentityMetric.__allocating_init()();
LABEL_7:
    v8 = v7;
    if (!a1)
    {
LABEL_9:
      [v8 preloadIdentity:a1];
      _Block_release(a1);
      return swift_unknownObjectRelease();
    }

LABEL_8:
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000D8DD0;
    v9[3] = &unk_10018AC60;
    a1 = _Block_copy(v9);

    goto LABEL_9;
  }

  v6 = *&v2[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (v6)
  {
    v7 = v6;
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000D63C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1000D64D4()
{
  v1 = v0;
  sub_100006B18();
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if ((*(v1 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8) & 1) == 0 && *(v1 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState) == 1)
  {

    sub_1000D57A0(0);
  }
}

uint64_t sub_1000D65C4()
{
  v1 = OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D66AC()
{
  *(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_shouldSwapIdentityProviderAfterNextInvalidPresence) = 0;
  v1 = (v0 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState);
  if (*(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8))
  {
    __break(1u);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_metrics);
    v4 = *v1;
    v5 = OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors;
    result = swift_beginAccess();
    v7 = *(v2 + v5);
    if (v7)
    {
      v8 = *(*v3 + 368);

      v8(v4, v7);

      v9 = *(v2 + v5);
      *(v2 + v5) = &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

id sub_1000D68C0(SEL *a1)
{
  result = [v1 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v6 = *&v1[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v6)
    {
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v5 = ClientIdentityMetric.__allocating_init()();
    goto LABEL_7;
  }

  v4 = *&v1[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (v4)
  {
    v5 = v4;
LABEL_7:
    v6 = v5;
LABEL_10:
    v7 = [v6 *a1];
    swift_unknownObjectRelease();
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1000D6970()
{
  result = [v0 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v4 = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v4)
    {
      v5 = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v3 = ClientIdentityMetric.__allocating_init()();
    goto LABEL_7;
  }

  v2 = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (v2)
  {
    v3 = v2;
LABEL_7:
    v4 = v3;
LABEL_10:
    v6 = [v4 flagsForPresence];
    swift_unknownObjectRelease();
    return v6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000D6A40()
{
  if ((*(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState);
  }

  __break(1u);
  return result;
}

id sub_1000D6B38()
{
  result = [v0 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v4 = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v4)
    {
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v3 = ClientIdentityMetric.__allocating_init()();
    goto LABEL_7;
  }

  v2 = *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
LABEL_7:
  v4 = v3;
LABEL_10:
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v6 = [v4 fetchVMHostCertsAndSignData:isa error:&v9];
  swift_unknownObjectRelease();

  if (v6)
  {
    v7 = v9;
  }

  else
  {
    v8 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_1000D6D74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  result = [v8 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v19 = *&v8[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v19)
    {
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v18 = ClientIdentityMetric.__allocating_init()();
    goto LABEL_7;
  }

  v17 = *&v8[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
LABEL_7:
  v19 = v18;
LABEL_10:
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v21 = [v19 generateNonceAndSignatureWithPublicKey:a1 privateKey:a2 dataToSign:isa time:a5 useIDSNonceVersion:a6 & 1 nonceOut:a7 signatureOut:a8];
  swift_unknownObjectRelease();

  return v21;
}

id sub_1000D6F9C(void *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v6 = sub_100006B18();
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v8 = OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled;
  v9 = v3[OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled];
  v10 = [a1 baaRetryCount];
  if (v10)
  {

    result = [a1 baaRetryCount];
    if (!result)
    {
      __break(1u);
      goto LABEL_30;
    }

    v12 = result;
    v13 = [result integerValue];

    v14 = OBJC_IVAR___APSMultiClientIdentityProvider_retryCount;
    *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_retryCount] = v13;
    v15 = v3;
    v16 = static OS_os_log.default.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v45 = v6;
      v18 = v8;
      v19 = v9;
      v20 = a2;
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *&v3[v14];

      _os_log_impl(&_mh_execute_header, v16, v17, "MultiClientIdentityProvider updating retry count to %ld", v21, 0xCu);
      a2 = v20;
      v9 = v19;
      v8 = v18;
    }

    else
    {

      v16 = v15;
    }
  }

  v22 = [a1 albertFallbackEnabled];
  if (!v22)
  {
    goto LABEL_13;
  }

  result = [a1 albertFallbackEnabled];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = result;
  v24 = [result BOOLValue];

  v25 = OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled;
  v3[OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled] = v24;
  v26 = v3;
  v27 = static OS_os_log.default.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v8;
    v30 = v9;
    v31 = a2;
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = v3[v25];

    _os_log_impl(&_mh_execute_header, v27, v28, "MultiClientIdentityProvider updating albert fallback enabled to %{BOOL}d", v32, 8u);
    a2 = v31;
    v9 = v30;
    v8 = v29;
  }

  else
  {

    v27 = v26;
  }

LABEL_13:
  if (([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0() & 1) == 0)
  {
    v33 = [a1 baaEnabledForDevices];
    if (v33)
    {

      result = [a1 baaEnabledForDevices];
      if (result)
      {
        v34 = result;
        v35 = [result BOOLValue];

        v3[v8] = v35;
        v36 = v3;
        v37 = static OS_os_log.default.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109120;
          *(v39 + 4) = v3[v8];

          _os_log_impl(&_mh_execute_header, v37, v38, "MultiClientIdentityProvider updating baa enabled to %{BOOL}d", v39, 8u);
        }

        else
        {

          v37 = v36;
        }

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
      return result;
    }
  }

LABEL_20:
  if (v9)
  {
    LOBYTE(v9) = v3[v8] ^ 1;
  }

  v40 = static OS_os_log.default.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    *(v42 + 4) = v9 & 1;
    _os_log_impl(&_mh_execute_header, v40, v41, "MultiClientIdentityProvider has BAA been disabled? %{BOOL}d", v42, 8u);
  }

  if ((v9 & 1) != 0 && (v3[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8] & 1) == 0 && !*&v3[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState])
  {
    v43 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000D57A0(2);
  }

  v44 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1000D50B0();
  return a2();
}

void sub_1000D7548()
{
  v1 = v0;
  sub_100006B18();
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v3 = *(**(v1 + OBJC_IVAR___APSMultiClientIdentityProvider_metrics) + 360);

  v3(v4);

  v5 = v1 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState;
  if ((*(v1 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8) & 1) != 0 || *v5 || (v6 = OBJC_IVAR___APSMultiClientIdentityProvider_shouldSwapIdentityProviderAfterNextInvalidPresence, *(v1 + OBJC_IVAR___APSMultiClientIdentityProvider_shouldSwapIdentityProviderAfterNextInvalidPresence) == 1))
  {
    v7 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v1 + OBJC_IVAR___APSMultiClientIdentityProvider_shouldSwapIdentityProviderAfterNextInvalidPresence) = 0;
    if (*(v5 + 8))
    {
      v8 = 1;
    }

    else if (*v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    sub_1000D57A0(v8);
  }

  else
  {
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v1 + v6) = 1;
  }
}

id sub_1000D77D0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [v4 identityStatus];
  if (result == 2)
  {
    goto LABEL_6;
  }

  if (result == 1)
  {
    v12 = *&v4[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider];
    if (v12)
    {
      swift_unknownObjectRetain();
      if (a1)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (result)
  {
LABEL_6:
    type metadata accessor for NoOpClientIdentityProvider();
    v11 = ClientIdentityMetric.__allocating_init()();
LABEL_7:
    v12 = v11;
    if (a1)
    {
LABEL_8:
      v14[4] = a1;
      v14[5] = a2;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1000D8D8C;
      v14[3] = a3;
      v13 = _Block_copy(v14);

LABEL_12:
      [v12 *a4];
      _Block_release(v13);
      return swift_unknownObjectRelease();
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v10 = *&v4[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider];
  if (v10)
  {
    v11 = v10;
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
  return result;
}

Swift::Int sub_1000D79FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D7A70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000D7AB4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D87E0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D7AEC()
{
  result = v0;
  *(v0 + 16) = 2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 6;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = &_swiftEmptyArrayStorage;
  return result;
}

void (*sub_1000D7B50(char a1))(void)
{
  v3 = *(v1 + 16);
  result = [v3 identityStatus];
  if (!result)
  {
    result = (*((swift_isaMask & *v3) + 0x198))();
    if (result)
    {
      v5 = result;
      result(a1 & 1);

      return sub_10001C894(v5);
    }
  }

  return result;
}

uint64_t sub_1000D7C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_1000D7C24(char a1))(void)
{
  v3 = *(v1 + 16);
  result = [v3 identityStatus];
  if (result == 1)
  {
    result = (*((swift_isaMask & *v3) + 0x198))();
    if (result)
    {
      v5 = result;
      result(a1 & 1);

      return sub_10001C894(v5);
    }
  }

  return result;
}

void *sub_1000D7CE4()
{
  result = (*((swift_isaMask & **(v0 + 16)) + 0x120))();
  if (result)
  {
    [result rollTokensForAllBAAEnvironments];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D7D7C(uint64_t result, char a2)
{
  if (*(v2 + 16) == 2)
  {
    *(v2 + 16) = a2 & 1;
  }

  if (*(v2 + 64) == 1)
  {
    *(v2 + 56) = result;
    *(v2 + 64) = 0;
  }

  if (result == 1)
  {
LABEL_10:
    v5 = *(v2 + 32);
    v2 += 32;
    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    goto LABEL_11;
  }

  if (result)
  {
    return result;
  }

  v3 = *(v2 + 24);
  v2 += 24;
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  *v2 = v4;
  return result;
}

void sub_1000D7DE0()
{
  v1 = *(v0 + 40);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v3;
  }
}

void sub_1000D7DF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  v3 = *(v2 + 88);
  *(v2 + 88) = a2;

  sub_1000D7E44();
}

void sub_1000D7E44()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 == 2 || (*(v1 + 64) & 1) != 0 || (*(v1 + 80) & 1) != 0)
  {
    sub_100006B18();
    v3 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v1 + 16) = 2;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 24) = 0;
    *(v1 + 48) = 6;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    v4 = *(v1 + 88);
    *(v1 + 88) = &_swiftEmptyArrayStorage;

    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
  }

  else
  {
    v14 = *(v1 + 56);
    v5 = *(v1 + 72);
    type metadata accessor for ClientIdentityMetric();
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    v9 = *(v1 + 88);
    v10 = *(v1 + 48);

    v15 = sub_1000D2C74(v2 & 1, v6, v7, v8, v10, v14, v5, v9);
    v11 = [objc_opt_self() defaultLogger];
    if (v11)
    {
      v12 = v11;
      [v11 logMetricWithFailures:v15];
    }

    *(v1 + 16) = 2;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 24) = 0;
    *(v1 + 48) = 6;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    v13 = *(v1 + 88);
    *(v1 + 88) = &_swiftEmptyArrayStorage;

    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
  }
}

uint64_t sub_1000D803C()
{
  *(v0 + 16) = 2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 6;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v1 = *(v0 + 88);
  *(v0 + 88) = &_swiftEmptyArrayStorage;

  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  return result;
}

uint64_t sub_1000D8098()
{
  v1 = *(v0 + 88);

  return v0;
}

uint64_t sub_1000D80B8()
{
  v1 = *(v0 + 88);

  return _swift_deallocClassInstance(v0, 96, 7);
}

void *sub_1000D80F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C8C30(&unk_1001BD2C0, &unk_10015D830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000C8C30(&unk_1001BD030, &qword_10015D290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D8224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (!a3 && a2)
  {
    if (*(a2 + 16))
    {
      v8 = a1 == 0;
    }

    else
    {
      v8 = 1;
    }

    v5 = !v8;
  }

  return v6(v5);
}

uint64_t sub_1000D826C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1000D8294(void *a1, unsigned __int8 *a2, void *a3)
{
  sub_100006B18();
  v6 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v7 = OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled;
  v8 = a2[OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled];
  v9 = [a1 baaRetryCount];
  if (v9)
  {

    v10 = [a1 baaRetryCount];
    if (!v10)
    {
      _Block_release(a3);
      __break(1u);
      goto LABEL_33;
    }

    v11 = v10;
    v12 = [v10 integerValue];

    v13 = OBJC_IVAR___APSMultiClientIdentityProvider_retryCount;
    *&a2[OBJC_IVAR___APSMultiClientIdentityProvider_retryCount] = v12;
    v14 = a2;
    v15 = static OS_os_log.default.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v7;
      v18 = a3;
      v19 = v8;
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *&a2[v13];

      _os_log_impl(&_mh_execute_header, v15, v16, "MultiClientIdentityProvider updating retry count to %ld", v20, 0xCu);
      v8 = v19;
      a3 = v18;
      v7 = v17;
    }

    else
    {

      v15 = v14;
    }
  }

  v21 = [a1 albertFallbackEnabled];
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = [a1 albertFallbackEnabled];
  if (!v22)
  {
LABEL_33:
    _Block_release(a3);
    __break(1u);
    goto LABEL_34;
  }

  v23 = v22;
  v24 = [v22 BOOLValue];

  v25 = OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled;
  a2[OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled] = v24;
  v26 = a2;
  v27 = static OS_os_log.default.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v7;
    v30 = a3;
    v31 = v8;
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = a2[v25];

    _os_log_impl(&_mh_execute_header, v27, v28, "MultiClientIdentityProvider updating albert fallback enabled to %{BOOL}d", v32, 8u);
    v8 = v31;
    a3 = v30;
    v7 = v29;
  }

  else
  {

    v27 = v26;
  }

LABEL_13:
  if (([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0() & 1) == 0)
  {
    v33 = [a1 baaEnabledForDevices];
    if (v33)
    {

      v34 = [a1 baaEnabledForDevices];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 BOOLValue];

        a2[v7] = v36;
        v37 = a2;
        v38 = static OS_os_log.default.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109120;
          *(v40 + 4) = a2[v7];

          _os_log_impl(&_mh_execute_header, v38, v39, "MultiClientIdentityProvider updating baa enabled to %{BOOL}d", v40, 8u);
        }

        else
        {

          v38 = v37;
        }

        goto LABEL_20;
      }

LABEL_34:
      _Block_release(a3);
      __break(1u);
      return;
    }
  }

LABEL_20:
  if (v8)
  {
    v41 = a2[v7] ^ 1;
  }

  else
  {
    v41 = 0;
  }

  v42 = static OS_os_log.default.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v41 & 1;
    _os_log_impl(&_mh_execute_header, v42, v43, "MultiClientIdentityProvider has BAA been disabled? %{BOOL}d", v44, 8u);
  }

  if ((v41 & 1) != 0 && (a2[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8] & 1) == 0 && !*&a2[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState])
  {
    v45 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000D57A0(2);
  }

  v46 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1000D50B0();
  v47 = a3[2];

  v47(a3);
}

unint64_t sub_1000D87E0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1000D87F4()
{
  result = qword_1001BD0B0;
  if (!qword_1001BD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientIdentityMetricReporter.IdentitySwapReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClientIdentityMetricReporter.IdentitySwapReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000D89C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006D20(a1, a2);
  }

  return a1;
}

void sub_1000D89F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    v21 = a1;
    sub_100006B18();
    v22 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (!v7)
    {
      return;
    }

    a1 = v21;
    a2 = &_swiftEmptyArrayStorage;
    v10 = 0;
LABEL_26:
    v7(a1, a2, v10);
    return;
  }

  if (a2[2])
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (!v7)
    {
      return;
    }

    v10 = 0;
    goto LABEL_26;
  }

LABEL_11:
  v23 = *(v3 + 40);
  v24 = *(v3 + 32);
  sub_100006B18();
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a3)
  {
    v12 = OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors;
    swift_beginAccess();
    v13 = *(v5 + v12);
    if (!v13)
    {
      __break(1u);
      return;
    }

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1000D80F0(0, v13[2] + 1, 1, v13);
      *(v5 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1000D80F0((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v13[v16 + 4] = a3;
    *(v5 + v12) = v13;
    swift_endAccess();
  }

  if ((*(v5 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8) & 1) != 0 || *(v5 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState) || *(v5 + OBJC_IVAR___APSMultiClientIdentityProvider_retryCount) <= v6)
  {
    v20 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000D57A0(3);
    if (!v7)
    {
      return;
    }

    a2 = &_swiftEmptyArrayStorage;
    a1 = 0;
    v10 = a3;
    goto LABEL_26;
  }

  v17 = static OS_os_log.default.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v17, v18, "MultiClientIdentityProvider retrying identity fetch, retry #%ld", v19, 0xCu);
  }

  sub_1000D5488(v24, v23, v6 + 1, v7, v8);
}

void sub_1000D8D20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000D8DD4()
{
  v1 = (v0 + OBJC_IVAR___APSFilterChange_triggeringTopic);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1000D8EA8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APSFilterChange_triggeringTopic);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000D8F08()
{
  v1 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D8FA0(uint64_t a1)
{
  v3 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D8FF0()
{
  v1 = OBJC_IVAR___APSFilterChange_reason;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D9034(uint64_t a1)
{
  v3 = OBJC_IVAR___APSFilterChange_reason;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1000D90E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___APSFilterChange_triggeringTopic];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  *&v7[OBJC_IVAR___APSFilterChange_topicGroupChange] = 0;
  *&v7[OBJC_IVAR___APSFilterChange_reason] = 0;
  swift_beginAccess();
  *&v7[v9] = a1;
  swift_beginAccess();
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1000D91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___APSFilterChange_triggeringTopic];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  *&v3[OBJC_IVAR___APSFilterChange_topicGroupChange] = 0;
  *&v3[OBJC_IVAR___APSFilterChange_reason] = 0;
  swift_beginAccess();
  *&v3[v8] = a1;
  swift_beginAccess();
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for FilterChange();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1000D9254()
{
  v1 = &v0[OBJC_IVAR___APSFilterChange_triggeringTopic];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR___APSFilterChange_topicGroupChange] = 0;
  *&v0[OBJC_IVAR___APSFilterChange_reason] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FilterChange();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000D9318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilterChange();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000D9374(uint64_t a1)
{
  v6 = 0;
  result = [v1 versionToSendFor:a1 error:&v6];
  v3 = v6;
  if (v6)
  {
    v4 = result;
    swift_willThrow();
    v5 = v3;
    return v4;
  }

  return result;
}

id sub_1000D9408(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion] = a1;
  *&v3[OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion] = a1;
  *&v3[OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface] = sub_1000DA120(&_swiftEmptyArrayStorage);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1000D9488(uint64_t a1)
{
  *&v1[OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion] = a1;
  *&v1[OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion] = a1;
  *&v1[OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface] = sub_1000DA120(&_swiftEmptyArrayStorage);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FilterVersionStateMachine();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000D9580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilterVersionStateMachine();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000D95C4(unint64_t a1)
{
  v2 = a1 + 100;
  if (a1 < 0xFFFFFFFFFFFFFF9CLL)
  {
    result = 0;
    *(v1 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) = v2;
  }

  else
  {
    *(v1 + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) = 0;
    *(v1 + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion) = 0;
    v3 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = &_swiftEmptyDictionarySingleton;

    return [objc_allocWithZone(NSError) initWithDomain:APSErrorDomain code:-1000 userInfo:0];
  }

  return result;
}

uint64_t sub_1000D96C8(uint64_t a1)
{
  v3 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1000063DC(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 24 * v5 + 17);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_1000D97B0(uint64_t a1)
{
  v3 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1000063DC(a1);
    if (v6)
    {
      v7 = (*(v4 + 56) + 24 * v5);
      v8 = *v7;
      v9 = v7[1];

      return v9 < v8;
    }
  }

  return 0;
}

BOOL sub_1000D989C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_1000063DC(a1);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v7 + 56) + 24 * v8 + 8);

  v11 = *(v3 + v6);
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = *(v3 + v6);

  v13 = sub_1000063DC(a2);
  if ((v14 & 1) == 0)
  {
LABEL_11:

    return 0;
  }

  v15 = (*(v11 + 56) + 24 * v13);
  v16 = *v15;
  v17 = v15[1];

  return v17 < v16 && v10 == v17;
}

uint64_t sub_1000D99E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_1000063DC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000D9FA4();
    }

    sub_1000D9D9C(v8, v11);
    *(v2 + v4) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_1000D9B04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000C8C30(&qword_1001BD378, qword_10015D968);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v37 = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 17);
      if ((v36 & 1) == 0)
      {
        v26 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v37;
      *(v17 + 16) = v24;
      *(v17 + 17) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_1000D9D9C(int64_t a1, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 24 * v3;
          v21 = (v19 + 24 * v6);
          if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
          {
            v9 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v9;
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
}

unint64_t sub_1000D9F48(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  *(v6 + 17) = HIBYTE(a5) & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

id sub_1000D9FA4()
{
  v1 = v0;
  sub_1000C8C30(&qword_1001BD378, qword_10015D968);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        v22 = *v19;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 24 * v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        *(v23 + 17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1000DA120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C8C30(&qword_1001BD378, qword_10015D968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 25);
      result = sub_1000063DC(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 17) = v8;
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

uint64_t getEnumTagSinglePayload for FilterVersionStateMachine.InterfaceState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterVersionStateMachine.InterfaceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000DA308@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APSPubSubSubscriptionStore_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1000DA390()
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_1000DDBFC(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000DA3E8()
{
  v1 = OBJC_IVAR___APSPubSubSubscriptionStore_inMemorySubscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000DA430(uint64_t a1)
{
  v3 = OBJC_IVAR___APSPubSubSubscriptionStore_inMemorySubscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000DA4E8()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1000DA524(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1000D19F8(0);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000DDBFC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR___APSPubSubSubscriptionStore_inMemorySubscriptions] = v4;
  *&v3[OBJC_IVAR___APSPubSubSubscriptionStore_messageStore] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1000DA5D8(uint64_t a1)
{
  sub_1000D19F8(0);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000DDBFC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR___APSPubSubSubscriptionStore_inMemorySubscriptions] = v3;
  *&v1[OBJC_IVAR___APSPubSubSubscriptionStore_messageStore] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PubSubSubscriptionStore();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1000DA738(id a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = (*((swift_isaMask & *v2) + 0x68))();
    v6 = sub_1000DA9A8(a1, v5);

    if (v6)
    {
      return 1;
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Saving subscription to in-memory only", v16, 2u);
    }

    v17 = (*((swift_isaMask & *v3) + 0x78))(v18);
    sub_1000DC630(&v19, a1);

    v17(v18, 0);
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
    v9 = [a1 channelID];
    v10 = [a1 channelTopic];
    v11 = [a1 environment];
    v12 = [a1 tokenName];
    v13 = [v8 lookupChannelWithChannelID:v9 andPushTopic:v10 environment:v11 userName:v12];

    if (v13)
    {

      return 1;
    }

    [v8 storeChannel:a1];
  }

  return 0;
}

uint64_t sub_1000DA9A8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000DAB18(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))();
  v4 = sub_1000DA9A8(a1, v3);

  if (v4)
  {
    v5 = (*((swift_isaMask & *v1) + 0x78))(v17);

    v5(v17, 0);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
    v7 = [a1 channelID];
    v8 = [a1 channelTopic];
    v9 = [a1 environment];
    v10 = [a1 tokenName];
    v11 = [v6 lookupChannelWithChannelID:v7 andPushTopic:v8 environment:v9 userName:v10];

    if (!v11)
    {
      return 0;
    }

    v12 = [a1 channelID];
    v13 = [a1 channelTopic];
    v14 = [a1 environment];
    v15 = [a1 tokenName];
    [v6 deleteChannelID:v12 forTopic:v13 environment:v14 userName:v15];
  }

  return 1;
}

void sub_1000DADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*((swift_isaMask & *v6) + 0x68))();
  v9 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
    sub_1000DDF38();
    Set.Iterator.init(_cocoa:)();
    v9 = v55;
    v10 = v56;
    v11 = v57;
    v12 = v58;
    v13 = v59;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);
  }

  v17 = (v11 + 64) >> 6;
  while (v9 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr), swift_dynamicCast(), (v20 = v54) == 0))
    {
LABEL_39:
      sub_1000DDFA0();
      v42 = *(v48 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = String._bridgeToObjectiveC()();
      v46 = [v42 allRegisteredChannelsForTopic:v43 environment:v44 userName:v45];

      if (v46)
      {
        sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
        v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v47 = &_swiftEmptyArrayStorage;
      }

      sub_1000DB25C(v47);
      return;
    }

LABEL_18:
    v21 = [v20 channelTopic];
    if (!v21)
    {
      goto LABEL_8;
    }

    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == a1 && v25 == a2)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v28 = [v20 environment];
    if (!v28)
    {
      goto LABEL_8;
    }

    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v30 == a3 && v32 == a4)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v34 = [v20 tokenName];
    if (!v34)
    {
      goto LABEL_8;
    }

    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (v36 == a5 && v38 == a6)
    {

      goto LABEL_36;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
LABEL_36:
      v40 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
LABEL_8:
    }
  }

  v18 = v12;
  v19 = v13;
  if (v13)
  {
LABEL_14:
    v13 = (v19 - 1) & v19;
    v20 = *(*(v9 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_39;
    }

    v19 = *(v10 + 8 * v12);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1000DB25C(unint64_t a1)
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
  sub_1000DD678(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000DD718(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

void sub_1000DB448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*((swift_isaMask & *v4) + 0x68))();
  v7 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
    sub_1000DDF38();
    Set.Iterator.init(_cocoa:)();
    v7 = v44;
    v8 = v45;
    v9 = v46;
    v10 = v47;
    v11 = v48;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
  }

  v15 = (v9 + 64) >> 6;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr), swift_dynamicCast(), (v18 = v43) == 0))
    {
LABEL_34:
      sub_1000DDFA0();
      v34 = *(v39 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
      v35 = String._bridgeToObjectiveC()();
      v36 = String._bridgeToObjectiveC()();
      v37 = [v34 allRegisteredChannelsForEnvironment:v35 userName:v36];

      if (v37)
      {
        sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
        v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v38 = &_swiftEmptyArrayStorage;
      }

      sub_1000DB25C(v38);
      return;
    }

LABEL_18:
    v19 = [v18 environment];
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v21 == a1 && v23 == a2)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v26 = [v18 tokenName];
    if (!v26)
    {
      goto LABEL_8;
    }

    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == a3 && v30 == a4)
    {

      goto LABEL_31;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
LABEL_31:
      v32 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
LABEL_8:
    }
  }

  v16 = v10;
  v17 = v11;
  if (v11)
  {
LABEL_14:
    v11 = (v17 - 1) & v17;
    v18 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_34;
    }

    v17 = *(v8 + 8 * v10);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_1000DB91C()
{
  v1 = (*((swift_isaMask & *v0) + 0x68))();
  v2 = sub_1000DD8A8(v1);

  return v2;
}

void sub_1000DBA40()
{
  v1 = *(v0 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 allRegisteredChannelsForEnvironment:v2 userName:v3];

  if (v4)
  {
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000DBB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*((swift_isaMask & *v8) + 0x68))();
  v10 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
    sub_1000DDF38();
    Set.Iterator.init(_cocoa:)();
    v10 = v64;
    v11 = v65;
    v12 = v66;
    v13 = v67;
    v14 = v68;
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);
  }

  v18 = (v12 + 64) >> 6;
  while (1)
  {
    if (v10 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr), swift_dynamicCast(), v23 = v63, v22 = v14, !v63))
      {
LABEL_42:
        sub_1000DDFA0();
        v48 = *(v53 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
        v49 = String._bridgeToObjectiveC()();
        v50 = String._bridgeToObjectiveC()();
        v51 = String._bridgeToObjectiveC()();
        v52 = String._bridgeToObjectiveC()();
        [v48 lookupChannelWithChannelID:v49 andPushTopic:v50 environment:v51 userName:v52];

        return;
      }

      goto LABEL_19;
    }

    v20 = v13;
    v21 = v14;
    if (!v14)
    {
      break;
    }

LABEL_15:
    v22 = (v21 - 1) & v21;
    v23 = *(*(v10 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v23)
    {
      goto LABEL_42;
    }

LABEL_19:
    v62 = v22;
    v24 = [v23 channelID];
    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == a1 && v28 == a2)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v31 = [v23 channelTopic];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      if (v33 == a3 && v35 == a4)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v37 = [v23 environment];
      if (v37)
      {
        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        if (v39 == a5 && v41 == a6)
        {
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v43 = [v23 tokenName];
        if (v43)
        {
          v44 = v43;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          if (v45 == a7 && v47 == a8)
          {

LABEL_41:
            sub_1000DDFA0();
            return;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_41;
          }
        }
      }
    }

LABEL_9:

    v14 = v62;
  }

  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_42;
    }

    v21 = *(v11 + 8 * v13);
    ++v20;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1000DC0F4(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))();
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
    sub_1000DDF38();
    Set.Iterator.init(_cocoa:)();
    v4 = v23[4];
    v5 = v23[5];
    v6 = v23[6];
    v7 = v23[7];
    v8 = v23[8];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
  }

  v20 = 0;
  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16 || (v22 = v16, sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr), swift_dynamicCast(), (v15 = v23[0]) == 0))
    {
LABEL_20:
      sub_1000DDFA0();
      if ((v20 & 1) == 0)
      {
        [*(v19 + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore) updateChannel:a1];
      }

      return;
    }

LABEL_17:
    sub_1000DDFA8(0, &qword_1001BD390, NSObject_ptr);
    if (static NSObject.== infix(_:_:)())
    {
      v17 = *((swift_isaMask & *v19) + 0x78);
      v21 = v17(v23);

      v21(v23, 0);
      v18 = v17(v23);
      sub_1000DC630(&v22, a1);

      v18(v23, 0);
      v20 = 1;
    }

    else
    {
    }
  }

  v13 = v7;
  v14 = v8;
  if (v8)
  {
LABEL_13:
    v8 = (v14 - 1) & v14;
    v15 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v7);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_1000DC4E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PubSubSubscriptionStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000DC5A8(uint64_t a1, uint64_t a2)
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

  sub_1000C8C30(&qword_1001BCCD0, &unk_10015D320);
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

uint64_t sub_1000DC630(void *a1, void *a2)
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

      sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
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

    v20 = sub_1000DC868(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000DCA58(v21 + 1);
    }

    v19 = v8;
    sub_1000DCC80(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
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
    sub_1000DCD04(v19, v13, isUniquelyReferenced_nonNull_native);
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

Swift::Int sub_1000DC868(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000C8C30(&unk_1001BD3D0, qword_10015D9A8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000DCA58(v9 + 1);
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

uint64_t sub_1000DCA58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C8C30(&unk_1001BD3D0, qword_10015D9A8);
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

unint64_t sub_1000DCC80(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1000DCD04(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000DCA58(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000DCE74();
      goto LABEL_12;
    }

    sub_1000DCFC4(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
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

id sub_1000DCE74()
{
  v1 = v0;
  sub_1000C8C30(&unk_1001BD3D0, qword_10015D9A8);
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

uint64_t sub_1000DCFC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C8C30(&unk_1001BD3D0, qword_10015D9A8);
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

uint64_t sub_1000DD1D8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1000DD370();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000DCE74();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1000DD4D8(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_1000DD370()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1000DC868(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1000DD4D8(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000DD4D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000DD678(uint64_t a1)
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

uint64_t sub_1000DD718(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000DE0A4();
          for (i = 0; i != v6; ++i)
          {
            sub_1000C8C30(&qword_1001BD3C0, &qword_10015D9A0);
            v9 = sub_1000DD958(v13, i, a3);
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
        sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
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

void *sub_1000DD8A8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1000DC5A8(v2, 0);

    v1 = sub_1000DD9E0(&v5, v3 + 4, v2, v1);
    sub_1000DDFA0();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void (*sub_1000DD958(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000DD9D8;
  }

  __break(1u);
  return result;
}

id sub_1000DD9E0(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  sub_1000DDF38();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1000DDBFC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000C8C30(&unk_1001BD3D0, qword_10015D9A8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t type metadata accessor for PubSubSubscriptionStore()
{
  result = qword_1001C0190;
  if (!qword_1001C0190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000DDF38()
{
  result = qword_1001BD388;
  if (!qword_1001BD388)
  {
    sub_1000DDFA8(255, &qword_1001BD380, PKPublicChannel_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD388);
  }

  return result;
}

uint64_t sub_1000DDFA8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000DDFF8()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000DE0A4()
{
  result = qword_1001BD3C8;
  if (!qword_1001BD3C8)
  {
    sub_1000DE108(&qword_1001BD3C0, &qword_10015D9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD3C8);
  }

  return result;
}

uint64_t sub_1000DE108(uint64_t *a1, uint64_t *a2)
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

id APSCourier.reportOffloadEvents(_:droppedEvents:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  v11 = (v10 + 16);
  type metadata accessor for DroppedEvents();
  if (sub_1000DEF24(a2, a3, a4))
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v5;
  aBlock[4] = sub_1000DE408;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DE9AC;
  aBlock[3] = &unk_10018B038;
  v13 = _Block_copy(aBlock);

  v14 = v5;

  sub_1000C4B20(a1, v13);
  _Block_release(v13);
  swift_beginAccess();
  v15 = *(v10 + 16);
  if (v15 >> 62)
  {
LABEL_20:
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v18 = *(v15 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_17;
        }
      }

      result = [objc_opt_self() defaultLogger];
      if (!result)
      {
        break;
      }

      v21 = result;
      [result logMetric:v18];
      swift_unknownObjectRelease();

      ++v17;
      if (v19 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
  }

  return result;
}

void sub_1000DE408(uint64_t a1, uint64_t a2)
{
  v34 = *(v2 + 24);
  v36 = *(v2 + 16);
  v4 = sub_1000DEA94(*(a2 + 72));
  v5 = *(a2 + 80);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  v11 = *(a2 + 66) | (*(a2 + 70) << 32);
  v12 = *(a2 + 58);
  v13 = *(a2 + 50);
  v14 = *(a2 + 42);
  v15 = *(a2 + 34);
  v16 = *(a2 + 26);
  if (v6 <= 0xD3A101E500811121)
  {
    if (v6 > 0xAD93ADE4DBB03D19)
    {
      if (v6 == 0xAD93ADE4DBB03D1ALL)
      {
        v28 = v5 != 0;
        type metadata accessor for OffloadDecodingError();
        sub_1000E01E8(v7 & 0xFFFFFFFF000000FFLL, v28);
      }

      else
      {
        if (v6 != 0xD1302E1D19C591FFLL)
        {
          return;
        }

        v22 = v4;
        v23 = v5 != 0;
        type metadata accessor for OffloadConnectionEstablished();
        v24 = sub_1000DF8F0(v7 & 0xFFFFFF, v23);
        (*(*v24 + 160))(v22);
      }

      goto LABEL_22;
    }

    v18 = v4;
    if (v6 == 0x819EE7A36A163403)
    {
      v26 = v5 != 0;
      type metadata accessor for OffloadKeepAliveReceived();
      v27 = sub_1000E06A0(v7, v9 | (v10 << 8), BYTE6(v16), v26, v8);
      (*(*v27 + 184))(v18);
      goto LABEL_22;
    }

    if (v6 != 0x82DE86373BBB55A7)
    {
      return;
    }

    v32 = v5 != 0;
    type metadata accessor for OffloadOutgoingPushSent();
    v37 = v7;
    v38 = v8;
    v39 = v9;
    v40 = v10;
    v43 = v14;
    v42 = v15;
    v41 = v16;
    v44 = v13;
    v45 = v12;
    v46 = v11;
    v47 = WORD2(v11);
    v19 = sub_1000E12E0(&v37, v32);
    v20 = [v34 rootUserCourier];
    v21 = [v20 topicManager];

    if (v21)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v6 > 0x2C1838C7180DE40BLL)
  {
    if (v6 == 0x2C1838C7180DE40CLL)
    {
      v35 = v5 != 0;
      type metadata accessor for OffloadPushRejected();
      v37 = v7;
      v38 = v8;
      v39 = v9;
      v40 = v10;
      v43 = v14;
      v42 = v15;
      v41 = v16;
      v44 = v13;
      v45 = v12;
      v46 = v11;
      v47 = WORD2(v11);
      sub_1000E26E8(&v37, v35);
      goto LABEL_22;
    }

    if (v6 != 0x3076094B707DB4ECLL)
    {
      if (v6 != 0x7EA08A839B5CA7A1)
      {
        return;
      }

      v17 = v5 != 0;
      type metadata accessor for OffloadKeepAliveSent();
      sub_1000E0C34(v7, v9 | (v10 << 8), v17, v8);
      goto LABEL_22;
    }

    v18 = v4;
    v33 = v5 != 0;
    type metadata accessor for OffloadPushIntercepted();
    v37 = v7;
    v38 = v8;
    v39 = v9;
    v40 = v10;
    v43 = v14;
    v42 = v15;
    v41 = v16;
    v44 = v13;
    v45 = v12;
    v46 = v11;
    v47 = WORD2(v11);
    v19 = sub_1000E1D38(&v37, v33);
    v30 = [v34 rootUserCourier];
    v21 = [v30 topicManager];

    if (v21)
    {
LABEL_11:
      (*(*v19 + 200))(v21, v18);

      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (v6 == 0xD3A101E500811122)
  {
    v29 = v5 != 0;
    type metadata accessor for OffloadConnectionEnded();
    sub_1000DF414(v7 & 0xFFFFFFFF0000FFFFLL, v29);
  }

  else
  {
    if (v6 != 0xE63B9D553865CA75)
    {
      return;
    }

    v25 = v5 != 0;
    type metadata accessor for OffloadKeepAliveTimeout();
    sub_1000E0EA0(v7, v9 | (v10 << 8), v25, v8);
  }

LABEL_22:
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v31 = *((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_1000DE9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1000DEA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000DEA94(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &info - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &info - v10;
  v12 = mach_continuous_time();
  static Date.now.getter();
  v13 = v12 >= a1;
  v14 = v12 - a1;
  if (!v13)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  info = 0;
  mach_timebase_info(&info);
  if (!is_mul_ok(v14, info.numer))
  {
    goto LABEL_6;
  }

  if (!info.denom)
  {
    goto LABEL_7;
  }

  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v8, v2);
  v17(v11, v2);
  return v16;
}

unint64_t sub_1000DED64()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015D9C0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000100157F80;
  v2 = v0[8];
  *(inited + 48) = UInt16._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x8000000100157FA0;
  v3 = v0[9];
  *(inited + 72) = UInt16._bridgeToObjectiveC()();
  *(inited + 80) = 0xD00000000000001ELL;
  *(inited + 88) = 0x8000000100157FC0;
  v4 = v0[10];
  *(inited + 96) = UInt16._bridgeToObjectiveC()();
  *(inited + 104) = 0xD00000000000001DLL;
  *(inited + 112) = 0x8000000100157FE0;
  v5 = v0[11];
  *(inited + 120) = UInt16._bridgeToObjectiveC()();
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x8000000100158000;
  v6 = v0[12];
  *(inited + 144) = UInt16._bridgeToObjectiveC()();
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x8000000100158020;
  v7 = v0[13];
  *(inited + 168) = UInt16._bridgeToObjectiveC()();
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x8000000100158040;
  v8 = v0[14];
  *(inited + 192) = UInt16._bridgeToObjectiveC()();
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x8000000100158060;
  v9 = v0[15];
  *(inited + 216) = UInt16._bridgeToObjectiveC()();
  v10 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1000DEF24(uint64_t a1, uint64_t a2, int a3)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = WORD2(a1);
    *(result + 18) = HIWORD(a1);
    *(result + 20) = a2;
    *(result + 28) = a3;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_1000DEFBC(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *(v3 + 16) = WORD2(a1);
    *(v3 + 18) = HIWORD(a1);
    *(v3 + 20) = a2;
    *(v3 + 28) = a3;
  }

  else
  {
    type metadata accessor for DroppedEvents();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1000DF104()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1000DF1B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

unint64_t sub_1000DF2D8()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DA30;
  *(inited + 32) = 0x6361667265746E49;
  *(inited + 40) = 0xE900000000000065;
  v2 = *(v0 + 16);
  *(inited + 48) = UInt8._bridgeToObjectiveC()();
  strcpy((inited + 56), "AddressFamily");
  *(inited + 70) = -4864;
  v3 = *(v0 + 17);
  *(inited + 72) = UInt8._bridgeToObjectiveC()();
  *(inited + 80) = 0x646F43726F727245;
  *(inited + 88) = 0xE900000000000065;
  v4 = *(v0 + 20);
  *(inited + 96) = UInt32._bridgeToObjectiveC()();
  *(inited + 104) = 0x6177415041736157;
  *(inited + 112) = 0xEA0000000000656BLL;
  v5 = *(v0 + 24);
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v6 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1000DF414(unint64_t a1, char a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIDWORD(a1);
  result = swift_allocObject();
  *(result + 32) = 0xD000000000000016;
  *(result + 40) = 0x800000010015DA20;
  *(result + 16) = v3;
  *(result + 17) = v4;
  *(result + 20) = v5;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000DF48C(uint64_t a1, char a2)
{
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000010015DA20;
  *(v2 + 16) = a1;
  *(v2 + 20) = HIDWORD(a1);
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1000DF4C8()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1000DF4E8()
{
  v1 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000DF5D4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1000DF680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

unint64_t sub_1000DF7A8()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DA30;
  *(inited + 32) = 0x6361667265746E49;
  *(inited + 40) = 0xE900000000000065;
  v2 = v0[16];
  *(inited + 48) = UInt8._bridgeToObjectiveC()();
  strcpy((inited + 56), "AddressFamily");
  *(inited + 70) = -4864;
  v3 = v0[17];
  *(inited + 72) = UInt8._bridgeToObjectiveC()();
  strcpy((inited + 80), "EncodingType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v4 = v0[18];
  *(inited + 96) = UInt8._bridgeToObjectiveC()();
  *(inited + 104) = 0x6177415041736157;
  *(inited + 112) = 0xEA0000000000656BLL;
  v5 = v0[19];
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v6 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1000DF8F0(unsigned int a1, char a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  result = swift_allocObject();
  *(result + 24) = 0xD00000000000001CLL;
  *(result + 32) = 0x800000010015DA90;
  *(result + 16) = v3;
  *(result + 17) = v4;
  *(result + 18) = v5;
  *(result + 19) = a2;
  return result;
}

uint64_t sub_1000DF968(int a1, char a2)
{
  *(v2 + 24) = 0xD00000000000001CLL;
  *(v2 + 32) = 0x800000010015DA90;
  *(v2 + 16) = a1;
  *(v2 + 18) = BYTE2(a1);
  *(v2 + 19) = a2;
  return v2;
}

void sub_1000DF9A4(double a1)
{
  sub_1000C8C30(&qword_1001BD640, &unk_10015DDA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DA30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v4 = *(v1 + 16);
  *(inited + 96) = &type metadata for UInt8;
  *(inited + 72) = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for UInt;
  *(inited + 144) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = 1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = a1;
  sub_1000DFCFC(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD648, &qword_10015DAE0);
  swift_arrayDestroy();
  v5 = @"Opened Connection Stream";
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  APSPowerLog();
}

uint64_t sub_1000DFB98()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1000DFBB8()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_1000DFBF0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000DFC34(a1, v4);
}

unint64_t sub_1000DFC34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000DFEAC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000DFF08(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000DFCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C8C30(&unk_1001BD740, &unk_10015DB20);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000DFE3C(v4, v13);
      result = sub_1000DFBF0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000C92C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1000DFE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C8C30(&qword_1001BD648, &qword_10015DAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E00D0()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DB30;
  strcpy((inited + 32), "EncodingType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v2 = *(v0 + 16);
  *(inited + 48) = UInt8._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727245;
  *(inited + 64) = 0xE900000000000065;
  v3 = *(v0 + 20);
  *(inited + 72) = UInt32._bridgeToObjectiveC()();
  *(inited + 80) = 0x6177415041736157;
  *(inited + 88) = 0xEA0000000000656BLL;
  v4 = *(v0 + 24);
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  v5 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_1000E01E8(unint64_t a1, char a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  result = swift_allocObject();
  *(result + 32) = 0xD000000000000014;
  *(result + 40) = 0x800000010015DB20;
  *(result + 16) = v3;
  *(result + 20) = v4;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000E0250(uint64_t a1, char a2)
{
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x800000010015DB20;
  *(v2 + 16) = a1;
  *(v2 + 20) = HIDWORD(a1);
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1000E0338()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1000E03E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

unint64_t sub_1000E050C()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DBA0;
  *(inited + 32) = 0x6361667265746E49;
  *(inited + 40) = 0xE900000000000065;
  v2 = *(v0 + 16);
  *(inited + 48) = UInt8._bridgeToObjectiveC()();
  strcpy((inited + 56), "AddressFamily");
  *(inited + 70) = -4864;
  v3 = *(v0 + 17);
  *(inited + 72) = UInt8._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000100158280;
  v4 = *(v0 + 24);
  *(inited + 96) = Double._bridgeToObjectiveC()();
  strcpy((inited + 104), "KeepAliveState");
  *(inited + 119) = -18;
  v5 = *(v0 + 32);
  *(inited + 120) = UInt8._bridgeToObjectiveC()();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001001582A0;
  v6 = *(v0 + 33);
  *(inited + 144) = UInt8._bridgeToObjectiveC()();
  *(inited + 152) = 0x6177415041736157;
  *(inited + 160) = 0xEA0000000000656BLL;
  v7 = *(v0 + 34);
  *(inited + 168) = Bool._bridgeToObjectiveC()();
  v8 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1000E06A0(unsigned int a1, unsigned int a2, unsigned __int8 a3, char a4, double a5)
{
  v7 = a2;
  v9 = a1;
  v10 = a1 >> 8;
  v11 = a2 >> 8;
  result = swift_allocObject();
  *(result + 40) = 0xD000000000000018;
  *(result + 48) = 0x800000010015DB90;
  *(result + 16) = v9;
  *(result + 17) = v10;
  *(result + 24) = a5;
  *(result + 32) = v7;
  *(result + 33) = v11;
  *(result + 34) = a4;
  *(result + 36) = a3;
  return result;
}

uint64_t sub_1000E0744(__int16 a1, __int16 a2, unsigned __int8 a3, char a4, double a5)
{
  *(v5 + 40) = 0xD000000000000018;
  *(v5 + 48) = 0x800000010015DB90;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  *(v5 + 32) = a2;
  *(v5 + 34) = a4;
  *(v5 + 36) = a3;
  return v5;
}

void sub_1000E0790(double a1)
{
  if (!*(v1 + 36))
  {
    sub_1000C8C30(&qword_1001BD640, &unk_10015DDA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10015DA30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    v4 = *(v1 + 16);
    *(inited + 96) = &type metadata for UInt8;
    *(inited + 72) = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for UInt;
    *(inited + 144) = 0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    *(inited + 240) = &type metadata for Bool;
    *(inited + 216) = 1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    *(inited + 312) = &type metadata for Double;
    *(inited + 288) = a1;
    sub_1000DFCFC(inited);
    swift_setDeallocating();
    sub_1000C8C30(&qword_1001BD648, &qword_10015DAE0);
    swift_arrayDestroy();
    v5 = @"DidReceiveKeepAlive";
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    APSPowerLog();
  }
}

uint64_t sub_1000E09D8()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t sub_1000E09F8()
{
  v1 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

_DWORD *sub_1000E0A30@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void type metadata accessor for APSProtocolSerialKeepAliveResponse()
{
  if (!qword_1001BD930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001BD930);
    }
  }
}

uint64_t sub_1000E0C34(unsigned int a1, unsigned int a2, char a3, double a4)
{
  v5 = a2;
  v7 = a1;
  v8 = a1 >> 8;
  v9 = a2 >> 8;
  result = swift_allocObject();
  *(result + 40) = 0xD000000000000014;
  *(result + 48) = 0x800000010015DC80;
  *(result + 16) = v7;
  *(result + 17) = v8;
  *(result + 24) = a4;
  *(result + 32) = v5;
  *(result + 33) = v9;
  *(result + 34) = a3;
  return result;
}

uint64_t sub_1000E0CC4(__int16 a1, __int16 a2, char a3, double a4)
{
  *(v4 + 40) = 0xD000000000000014;
  *(v4 + 48) = 0x800000010015DC80;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = a2;
  *(v4 + 34) = a3;
  return v4;
}

uint64_t sub_1000E0EA0(unsigned int a1, unsigned int a2, char a3, double a4)
{
  v5 = a2;
  v7 = a1;
  v8 = a1 >> 8;
  v9 = a2 >> 8;
  result = swift_allocObject();
  *(result + 40) = 0xD000000000000017;
  *(result + 48) = 0x800000010015DCE0;
  *(result + 16) = v7;
  *(result + 17) = v8;
  *(result + 24) = a4;
  *(result + 32) = v5;
  *(result + 33) = v9;
  *(result + 34) = a3;
  return result;
}

uint64_t sub_1000E0F30(__int16 a1, __int16 a2, char a3, double a4)
{
  *(v4 + 40) = 0xD000000000000017;
  *(v4 + 48) = 0x800000010015DCE0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = a2;
  *(v4 + 34) = a3;
  return v4;
}

uint64_t sub_1000E1028()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_1000E10D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

unint64_t sub_1000E11FC()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DD60;
  *(inited + 32) = 0x746E65696C43;
  *(inited + 40) = 0xE600000000000000;
  v2 = *(v0 + 17);
  *(inited + 48) = UInt8._bridgeToObjectiveC()();
  *(inited + 56) = 0x6177415041736157;
  *(inited + 64) = 0xEA0000000000656BLL;
  v3 = *(v0 + 16);
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  v4 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1000E12E0(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  sub_1000E1330(a1, a2);
  return v4;
}

uint64_t sub_1000E1330(uint64_t a1, char a2)
{
  *(v2 + 80) = 0xD000000000000017;
  *(v2 + 88) = 0x800000010015DD60;
  *(v2 + 17) = *a1;
  v5 = 3;
  if (!*(a1 + 1))
  {
    v5 = 0;
  }

  if (*(a1 + 1) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  *(v2 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  v8 = v7 + 16;
  v16[4] = sub_1000E1920;
  v16[5] = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000E14F0;
  v16[3] = &unk_10018B0B0;
  v9 = _Block_copy(v16);

  sub_1000C18C0((a1 + 8), v9);
  _Block_release(v9);
  swift_beginAccess();
  v10 = sub_1000E1AB4((*v8 + 32), *(*v8 + 16));
  v12 = v11;

  *(v2 + 32) = v10;
  *(v2 + 40) = v12;
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 52) = *(a1 + 52);
  v14 = *(a1 + 56);
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 56) = v14;
    *(v2 + 64) = *(a1 + 58);
    v15 = *(a1 + 59);
    if ((v15 & 0x80000000) == 0)
    {
      *(v2 + 72) = (v15 & 3) != 0;
      *(v2 + 16) = a2 & 1;
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E14F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_1000E1550(void *a1, double a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [a1 hasTopicHash:isa];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000C8C30(&qword_1001BD640, &unk_10015DDA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DD70;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = a2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v10 = sub_1000067F8(*(v2 + 24));
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v11;
  *(inited + 224) = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v14 = *(v2 + 48);
  *(inited + 312) = &type metadata for Int32;
  *(inited + 288) = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v15 = *(v2 + 64);
  type metadata accessor for APSIncomingMessagePriority(0);
  *(inited + 384) = v16;
  *(inited + 360) = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v17 = String._bridgeToObjectiveC()();

  *(inited + 456) = sub_1000DDFA8(0, &qword_1001BDC60, NSString_ptr);
  *(inited + 432) = v17;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v18 = *(v2 + 52);
  v19 = UInt32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 528) = sub_1000DDFA8(0, &qword_1001BDB20, NSNumber_ptr);
  *(inited + 504) = v19;
  sub_1000DFCFC(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD648, &qword_10015DAE0);
  swift_arrayDestroy();
  v20 = @"Message Sent";
  v21 = Dictionary._bridgeToObjectiveC()().super.isa;

  APSPowerLog();
}

void *sub_1000E18B8()
{
  sub_100006D20(v0[4], v0[5]);
  v1 = v0[11];

  return v0;
}

uint64_t sub_1000E18E0()
{
  sub_100006D20(v0[4], v0[5]);
  v1 = v0[11];

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_1000E1920(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
    result = sub_1000CE498(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(v2 + 16) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1000CE498((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = a2;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_1000E19E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E19FC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000E1AB4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000E19FC(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000E1D38(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  sub_1000E1D88(a1, a2);
  return v4;
}

uint64_t sub_1000E1D88(uint64_t a1, char a2)
{
  *(v2 + 80) = 0xD000000000000016;
  *(v2 + 88) = 0x800000010015DE50;
  *(v2 + 17) = *a1;
  v5 = 3;
  if (!*(a1 + 1))
  {
    v5 = 0;
  }

  if (*(a1 + 1) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  *(v2 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  v8 = v7 + 16;
  v15[4] = sub_1000E1920;
  v15[5] = v7;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000E14F0;
  v15[3] = &unk_10018B160;
  v9 = _Block_copy(v15);

  sub_1000C18C0((a1 + 8), v9);
  _Block_release(v9);
  swift_beginAccess();
  v10 = sub_1000E1AB4((*v8 + 32), *(*v8 + 16));
  v12 = v11;

  *(v2 + 32) = v10;
  *(v2 + 40) = v12;
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 52) = *(a1 + 52);
  v14 = *(a1 + 56);
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 56) = v14;
    *(v2 + 64) = *(a1 + 58);
    *(v2 + 72) = (*(a1 + 59) & 3) != 0;
    *(v2 + 16) = a2 & 1;
    return v2;
  }

  return result;
}

void sub_1000E1F3C(void *a1, double a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [a1 hasTopicHash:isa];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000C8C30(&qword_1001BD640, &unk_10015DDA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DE60;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = a2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v10 = sub_1000067F8(*(v2 + 24));
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v11;
  *(inited + 224) = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v14 = *(v2 + 72);
  v15 = Bool._bridgeToObjectiveC()().super.super.isa;
  v16 = sub_1000DDFA8(0, &qword_1001BDB20, NSNumber_ptr);
  *(inited + 312) = v16;
  *(inited + 288) = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v17 = *(v2 + 48);
  *(inited + 384) = &type metadata for Int32;
  *(inited + 360) = v17;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v18 = *(v2 + 64);
  type metadata accessor for APSIncomingMessagePriority(0);
  *(inited + 456) = v19;
  *(inited + 432) = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v20 = String._bridgeToObjectiveC()();

  *(inited + 528) = sub_1000DDFA8(0, &qword_1001BDC60, NSString_ptr);
  *(inited + 504) = v20;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v21 = *(v2 + 52);
  v22.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 600) = v16;
  *(inited + 576) = v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v23 = *(v2 + 56);
  type metadata accessor for APSIncomingMessagePushType(0);
  *(inited + 672) = v24;
  *(inited + 648) = v23;
  sub_1000DFCFC(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD648, &qword_10015DAE0);
  swift_arrayDestroy();
  v25 = @"Message Received";
  v26 = Dictionary._bridgeToObjectiveC()().super.isa;

  APSPowerLog();
}

uint64_t sub_1000E231C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E23E8()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_1000E2494(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

unint64_t sub_1000E25BC()
{
  sub_1000C8C30(&qword_1001BD440, &unk_10015DA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015DA30;
  *(inited + 32) = 0x746E65696C43;
  *(inited + 40) = 0xE600000000000000;
  v2 = *(v0 + 24);
  *(inited + 48) = UInt8._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727245;
  *(inited + 64) = 0xE900000000000065;
  v3 = *(v0 + 20);
  *(inited + 72) = UInt32._bridgeToObjectiveC()();
  *(inited + 80) = 0x6177415041736157;
  *(inited + 88) = 0xEA0000000000656BLL;
  v4 = *(v0 + 16);
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0x6369706F54;
  *(inited + 112) = 0xE500000000000000;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(inited + 120) = String._bridgeToObjectiveC()();
  v7 = sub_1000D4068(inited);
  swift_setDeallocating();
  sub_1000C8C30(&qword_1001BD448, &unk_10015DAD0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1000E26E8(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  sub_1000E2738(a1, a2);
  return v4;
}

uint64_t sub_1000E2738(uint64_t a1, char a2)
{
  *(v2 + 88) = 0xD000000000000013;
  *(v2 + 96) = 0x800000010015DF20;
  *(v2 + 24) = *a1;
  v5 = 3;
  if (!*(a1 + 1))
  {
    v5 = 0;
  }

  if (*(a1 + 1) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  *(v2 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  v8 = v7 + 16;
  v16[4] = sub_1000E1920;
  v16[5] = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000E14F0;
  v16[3] = &unk_10018B1B0;
  v9 = _Block_copy(v16);

  sub_1000C18C0((a1 + 8), v9);
  _Block_release(v9);
  swift_beginAccess();
  v10 = *(*v8 + 16);

  v11 = static String._fromUTF8Repairing(_:)();
  v13 = v12;

  *(v2 + 40) = v11;
  *(v2 + 48) = v13;
  *(v2 + 56) = *(a1 + 48);
  *(v2 + 60) = *(a1 + 52);
  v15 = *(a1 + 56);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 64) = v15;
    *(v2 + 72) = *(a1 + 58);
    *(v2 + 80) = (*(a1 + 59) & 3) != 0;
    *(v2 + 20) = *(a1 + 60);
    *(v2 + 16) = a2 & 1;
    return v2;
  }

  return result;
}

uint64_t sub_1000E2908()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 96);

  return v0;
}

uint64_t sub_1000E2930()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 96);

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_1000E2970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E29F4()
{
  v1 = OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E2A8C(__int16 a1)
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000E2B84()
{
  v1 = OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E2C1C(uint64_t a1)
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000E2D14()
{
  v1 = OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E2DAC(int a1)
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000E2EA4()
{
  v1 = OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E2F3C(uint64_t a1)
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1000E3038()
{
  v1 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKey;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000E30EC(uint64_t a1)
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKey;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000E31F0()
{
  v1 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000E32A4(uint64_t a1)
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL sub_1000E3390()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v27 - v10;
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v27 - v14;
  (*((swift_isaMask & *v0) + 0xD0))(v13);
  (*((swift_isaMask & *v0) + 0xA0))();
  Date.init(timeIntervalSince1970:)();
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v17 = v16;
  v18 = *(v2 + 8);
  v18(v11, v1);
  if (v17 < 0.0)
  {
    (*(v2 + 16))(v7, v15, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v21 = 136315138;
      sub_1000E3A34();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v18(v7, v1);
      v25 = sub_100007B6C(v22, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "OffloadInfo is expired with an expiration date of %s", v21, 0xCu);
      sub_100006CCC(v27);
    }

    else
    {

      v18(v7, v1);
    }
  }

  v18(v15, v1);
  return v17 < 0.0;
}

id sub_1000E3698(__int16 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  sub_1000D19F8(1);
  *&v13[OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher] = a1;
  *&v13[OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime] = a2;
  *&v13[OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd] = a3;
  *&v13[OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime] = a4;
  *&v13[OBJC_IVAR___APSConnectionOffloadInfo_preShareKey] = a5;
  *&v13[OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID] = a6;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_1000E3768(__int16 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000D19F8(1);
  *&v6[OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher] = a1;
  *&v6[OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime] = a2;
  *&v6[OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd] = a3;
  *&v6[OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime] = a4;
  *&v6[OBJC_IVAR___APSConnectionOffloadInfo_preShareKey] = a5;
  *&v6[OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID] = a6;
  v14.receiver = v6;
  v14.super_class = type metadata accessor for ConnectionOffloadInfo();
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1000E3970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionOffloadInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000E3A34()
{
  result = qword_1001BDEA8;
  if (!qword_1001BDEA8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BDEA8);
  }

  return result;
}

uint64_t type metadata accessor for ConnectionOffloadInfo()
{
  result = qword_1001C0228;
  if (!qword_1001C0228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3AE0()
{
  result = type metadata accessor for Logger();
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

void type metadata accessor for tls_ciphersuite_t()
{
  if (!qword_1001BDED8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001BDED8);
    }
  }
}

os_log_t sub_1000E3BFC()
{
  result = os_log_create("com.apple.uaps", "lib");
  libuaps_logger = result;
  return result;
}

void uaps::LookUpTable::DEBUG_OP(uaps::LookUpTable *this, const char *a2)
{
  v4 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E42F4(this, a2, v4);
  }
}

void uaps::LookUpTable::DEBUG_ITEM(uint64_t a1, uint64_t *a2)
{
  v4 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E43D4(a1, a2, v4);
  }
}

uaps::LookUpTable *uaps::LookUpTable::LookUpTable(uaps::LookUpTable *this, void *a2, uint64_t a3)
{
  *this = off_10018B230;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 14) = a3;
  uaps::LookUpTable::_construct_mem(this);
  return this;
}

{
  *this = off_10018B230;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 14) = a3;
  uaps::LookUpTable::_construct_mem(this);
  return this;
}

void *uaps::LookUpTable::_construct_mem(void *this)
{
  v1 = this;
  v2 = this[13];
  if (v2)
  {
    this[12] = v2;
  }

  else
  {
    this = malloc_type_malloc(this[14], 0x1000040504FFAC1uLL);
    v1[12] = this;
    if (!this)
    {
      sub_1000E44B0();
    }
  }

  return this;
}

void uaps::LookUpTable::~LookUpTable(uaps::LookUpTable *this)
{
  *this = off_10018B230;
  v2 = (this + 96);
  v1 = *(this + 12);
  if (v2[1] != v1)
  {
    free(v1);
  }
}

{
  *this = off_10018B230;
  v2 = (this + 96);
  v1 = *(this + 12);
  if (v2[1] != v1)
  {
    free(v1);
  }
}

{
  *this = off_10018B230;
  v2 = (this + 96);
  v1 = *(this + 12);
  if (v2[1] != v1)
  {
    free(v1);
  }

  operator delete();
}

void uaps::LookUpTable::_destruct_mem(uaps::LookUpTable *this)
{
  v2 = (this + 96);
  v1 = *(this + 12);
  if (v2[1] != v1)
  {
    free(v1);
  }
}

BOOL uaps::LookUpTable::init(uaps::LookUpTable *this, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = a3 - 32;
  if (a3 - 32 >= a4)
  {
    v4 = a4;
  }

  v5 = a3 + 24 * a2 + v4;
  v6 = *(this + 14);
  if (v5 <= v6)
  {
    *(this + 4) = a2;
    v8 = *(this + 12);
    *(this + 11) = &v8[24 * a2];
    *(this + 10) = 0;
    *(this + 4) = 0;
    *(this + 5) = v4;
    *(this + 2) = a3;
    *(this + 3) = 0;
    bzero(v8, v6);
    *(this + 40) = -1;
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *(this + 3) = v9;
    *(this + 4) = v9;
  }

  return v5 <= v6;
}

__n128 uaps::LookUpTable::clear(uaps::LookUpTable *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  bzero(*(this + 12), *(this + 14));
  *(this + 40) = -1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(this + 3) = result;
  *(this + 4) = result;
  return result;
}

uint64_t uaps::LookUpTable::fetchIndex(uaps::LookUpTable *this, unsigned int a2, unint64_t *a3)
{
  uaps::LookUpTable::DEBUG_OP(this, "fetch");
  v6 = *(this + 5);
  if (v6 <= a2)
  {
    v12 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
    {
      sub_1000E4534(v6, a2, v12);
    }

    result = 0;
    *a3 = 0;
  }

  else
  {
    v7 = *(this + 12);
    v8 = v7 + 24 * *(this + 6);
    if (*(this + 6) <= a2)
    {
      v8 += 24 * *(this + 4);
    }

    v9 = v8 + 24 * -a2;
    v10 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      v13[0] = 67109376;
      v13[1] = a2;
      v14 = 2048;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - 24 - v7) >> 3);
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "index %u -> %ld", v13, 0x12u);
    }

    uaps::LookUpTable::DEBUG_ITEM(this, (v9 - 24));
    *a3 = *(v9 - 16);
    return *(this + 11) + *(v9 - 24);
  }

  return result;
}

void uaps::LookUpTable::dump(uaps::LookUpTable *this)
{
  uaps::LookUpTable::DEBUG_OP(this, "dump");
  if (*(this + 5))
  {
    v2 = 0;
    v3 = -24;
    do
    {
      v4 = *(this + 12) + 24 * *(this + 6);
      if (v2 >= *(this + 6))
      {
        v4 += 24 * *(this + 4);
      }

      uaps::LookUpTable::DEBUG_ITEM(this, (v4 + v3));
      ++v2;
      v3 -= 24;
    }

    while (v2 < *(this + 5));
  }
}

uaps::LookUpTable *uaps::LookUpTable::LookUpTable(uaps::LookUpTable *this, unsigned int a2, uint64_t a3, unint64_t a4)
{
  *this = off_10018B230;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (a3 - 32 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3 - 32;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v8 = a3 + 24 * a2 + v7;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = v8;
  uaps::LookUpTable::_construct_mem(this);
  v9 = *(this + 14);
  if (v8 <= v9)
  {
    *(this + 4) = a2;
    v10 = *(this + 12);
    *(this + 11) = &v10[24 * a2];
    *(this + 10) = 0;
    *(this + 4) = 0;
    *(this + 5) = v7;
    *(this + 2) = a3;
    *(this + 3) = 0;
    bzero(v10, v9);
    *(this + 40) = -1;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *(this + 3) = v11;
    *(this + 4) = v11;
  }

  return this;
}

void sub_1000E42F4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 10);
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 12);
  v8 = *(a1 + 32);
  v9 = 134220034;
  v10 = a1;
  v11 = 2080;
  v12 = a2;
  v13 = 1024;
  v14 = v3;
  v15 = 1024;
  v16 = v4;
  v17 = 2048;
  v18 = v5;
  v19 = 2048;
  v20 = 32 * v3;
  v21 = 2048;
  v22 = v6;
  v23 = 1024;
  v24 = v7;
  v25 = 2048;
  v26 = v8;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "LUT(%p): %s (%u/%u, %zu+%zu/%zu B), @ %u, %zu", &v9, 0x50u);
}

void sub_1000E43D4(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = a2 - *(a1 + 96);
  v4 = *a2;
  v5 = a2[1];
  v6 = (*(a1 + 88) + *a2);
  v7 = *v6;
  LODWORD(v6) = v6[v5 - 1];
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = 134219520;
  v11 = v3 / 24;
  v12 = 2048;
  v13 = v4;
  v14 = 2048;
  v15 = v5;
  v16 = 1024;
  v17 = v7;
  v18 = 1024;
  v19 = v6;
  v20 = 1024;
  v21 = v8;
  v22 = 1024;
  v23 = v9;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, " items_[%ld] @ %zu (%zu) [%02x...%02x] h %u -> %u", &v10, 0x38u);
}

void sub_1000E4534(unsigned __int16 a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "LUT index %u > %u", v3, 0xEu);
}

void uaps::CourierMessage::_reportError(uaps::CourierMessage *this)
{
  v2 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
  {
    sub_1000E6C34(this, v2);
  }
}

uaps::CourierMessage *uaps::CourierMessage::CourierMessage(uaps::CourierMessage *this, size_t size, char *a3)
{
  *this = off_10018B260;
  *(this + 8) = 0;
  *(this + 4) = 0;
  v4 = (this + 32);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = a3;
  *(this + 7) = size;
  *(this + 32) = 0;
  *(this + 9) = 0;
  if (a3)
  {
    v5 = SbfCreateAt(size, a3);
  }

  else
  {
    v5 = SbfCreate(size);
  }

  *v4 = v5;
  SbfSetFlags(v5, 16);
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E6CC0(v4);
  }

  return this;
}

void uaps::CourierMessage::~CourierMessage(uaps::CourierMessage *this)
{
  *this = off_10018B260;
  if (*(this + 4))
  {
    SbfDestroy();
  }
}

{
  uaps::CourierMessage::~CourierMessage(this);

  operator delete();
}

uaps::CourierMessage *uaps::CourierMessage::setCommand(uaps::CourierMessage *this, unsigned int a2)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E6D44();
  }

  SbfReset(*(this + 4));
  v4 = SbfAddObject(*(this + 4), 0, 0);
  SbfAddUint64(*(this + 4), v4, uaps::CourierMessage::COMMAND_KEY[0], a2);
  *(this + 5) = SbfAddArray(*(this + 4), v4, uaps::CourierMessage::ATTRIBUTE_VALUES_KEY[0]);
  *(this + 8) = a2;
  *(this + 32) = 0;
  *(this + 9) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

uint64_t uaps::CourierMessage::acceptUnpackedValueLength(uaps::CourierMessage *this, unint64_t a2)
{
  if (a2 >= 0x10000)
  {
    v4 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 2048;
      v13 = 0xFFFFLL;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "unpackedValueLen %zu  > %zu", &v10, 0x16u);
      v4 = libuaps_logger;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E6E58();
    }

    *(this + 32) = 1;
    v5 = "ErrorCode::ATTRIBUTE_TOO_LARGE - Attribute's value length is too large";
LABEL_13:
    *(this + 9) = v5;
    uaps::CourierMessage::_reportError(this);
    return 0;
  }

  v6 = *(this + 3) + 1;
  v7 = a2 + *(this + 2) + 3;
  *(this + 2) = v7;
  *(this + 3) = v6;
  if (v7 > 0x10000)
  {
    v8 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218752;
      v11 = a2;
      v12 = 2048;
      v13 = v7;
      v14 = 2048;
      v15 = 0x10000;
      v16 = 2048;
      v17 = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "unpackedValueLen %zu pushed unpackedSize %zu > %zu at %zu", &v10, 0x2Au);
    }

    uaps::CourierMessage::updateDomStats(this);
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E6DC4();
    }

    *(this + 32) = 2;
    v5 = "ErrorCode::FRAME_TOO_LARGE - Frame unpacked size is too large";
    goto LABEL_13;
  }

  return 1;
}

void uaps::CourierMessage::updateDomStats(uaps::CourierMessage *this)
{
  v4 = 0;
  v5 = 0;
  SbfDomGetSize(*(this + 4), &v5, &v4);
  if (v5 != *(this + 7))
  {
    sub_1000E6EEC();
  }

  v2 = v4;
  if (v4 > uaps::CourierMessage::MAX_DOM_USED)
  {
    v3 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DOM: used reached %zu", buf, 0xCu);
      v2 = v4;
    }

    uaps::CourierMessage::MAX_DOM_USED = v2;
  }
}

uaps::CourierMessage *uaps::CourierMessage::addData(uaps::CourierMessage *this, unsigned int a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, a4))
    {
      v10 = SbfAddBlob(*(this + 4), *(this + 5), 0, a3, a4);
      if (v10)
      {
        v11 = v10;
        v12 = 256;
        if (!a5)
        {
          v12 = 0;
        }

        v13 = v12 | a2;
        v14 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218496;
          v17 = this;
          v18 = 2048;
          v19 = v11;
          v20 = 2048;
          v21 = v13;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v16, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v11, v13);
      }
    }
  }

  return this;
}

uaps::CourierMessage *uaps::CourierMessage::addString(uaps::CourierMessage *this, unsigned int a2, char *__s, size_t a4, int a5)
{
  v6 = a4;
  if (__s && a4 == -1)
  {
    v6 = strlen(__s);
  }

  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, v6))
    {
      v10 = SbfAddString(*(this + 4), *(this + 5), 0, __s, v6);
      if (v10)
      {
        v11 = v10;
        v12 = 256;
        if (!a5)
        {
          v12 = 0;
        }

        v13 = v12 | a2;
        v14 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218496;
          v17 = this;
          v18 = 2048;
          v19 = v11;
          v20 = 2048;
          v21 = v13;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v16, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v11, v13);
      }
    }
  }

  return this;
}

uaps::CourierMessage *uaps::CourierMessage::addNumber(uaps::CourierMessage *this, unsigned int a2, int a3, int a4)
{
  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, 1uLL))
    {
      v8 = SbfAddUint64(*(this + 4), *(this + 5), 0, a3);
      if (v8)
      {
        v9 = v8;
        v10 = 256;
        if (!a4)
        {
          v10 = 0;
        }

        v11 = v10 | a2;
        v12 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v14 = 134218496;
          v15 = this;
          v16 = 2048;
          v17 = v9;
          v18 = 2048;
          v19 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v14, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v9, v11);
      }
    }
  }

  return this;
}

{
  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, 2uLL))
    {
      v8 = SbfAddUint64(*(this + 4), *(this + 5), 0, a3);
      if (v8)
      {
        v9 = v8;
        v10 = 256;
        if (!a4)
        {
          v10 = 0;
        }

        v11 = v10 | a2;
        v12 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v14 = 134218496;
          v15 = this;
          v16 = 2048;
          v17 = v9;
          v18 = 2048;
          v19 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v14, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v9, v11);
      }
    }
  }

  return this;
}

{
  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, 4uLL))
    {
      v8 = SbfAddUint64(*(this + 4), *(this + 5), 0, a3);
      if (v8)
      {
        v9 = v8;
        v10 = 256;
        if (!a4)
        {
          v10 = 0;
        }

        v11 = v10 | a2;
        v12 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v14 = 134218496;
          v15 = this;
          v16 = 2048;
          v17 = v9;
          v18 = 2048;
          v19 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v14, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v9, v11);
      }
    }
  }

  return this;
}

uaps::CourierMessage *uaps::CourierMessage::addNumber(uaps::CourierMessage *this, unsigned int a2, uint64_t a3, int a4)
{
  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, 8uLL))
    {
      v8 = SbfAddUint64(*(this + 4), *(this + 5), 0, a3);
      if (v8)
      {
        v9 = v8;
        v10 = 256;
        if (!a4)
        {
          v10 = 0;
        }

        v11 = v10 | a2;
        v12 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v14 = 134218496;
          v15 = this;
          v16 = 2048;
          v17 = v9;
          v18 = 2048;
          v19 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v14, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v9, v11);
      }
    }
  }

  return this;
}

uaps::CourierMessage *uaps::CourierMessage::addBoolean(uaps::CourierMessage *this, unsigned int a2, unsigned int a3)
{
  if (!*(this + 32))
  {
    if (uaps::CourierMessage::acceptUnpackedValueLength(this, 1uLL))
    {
      v6 = SbfAddBoolean(*(this + 4), *(this + 5), 0, a3);
      if (v6)
      {
        v7 = v6;
        v8 = libuaps_logger;
        if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
        {
          v10 = 134218496;
          v11 = this;
          v12 = 2048;
          v13 = v7;
          v14 = 2048;
          v15 = a2;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "CourierMessage(%p) atom %p ticks 0x%llx", &v10, 0x20u);
        }

        SbfSetAtomTicks(*(this + 4), v7, a2);
      }
    }
  }

  return this;
}

uaps::CourierMessage *uaps::CourierMessage::addBinaryPropertyList(uaps::CourierMessage *this, unsigned int a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (!*(this + 32) && uaps::CourierMessage::acceptUnpackedValueLength(this, a4))
  {
    v18[0] = a3;
    v18[1] = a4;
    v19 = 0u;
    v20 = 0u;
    v8 = SbfImportPlistb(*(this + 4), *(this + 5), 0, v18);
    if (v8)
    {
      SbfSetAtomTicks(*(this + 4), v8, a2);
    }

    else
    {
      v9 = libuaps_logger;
      if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000E6F18(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }

  return this;
}

uint64_t uaps::CourierMessage::getCommand(uaps::CourierMessage *this)
{
  if (*(this + 32))
  {
    return 0;
  }

  else
  {
    return *(this + 8);
  }
}

uint64_t uaps::CourierMessage::getAttributeCount(uaps::CourierMessage *this)
{
  if (*(this + 32))
  {
    return 0;
  }

  if (*(this + 5) && !SbfError(*(this + 4)))
  {
    return SbfCount(*(this + 5));
  }

  return 0;
}

BOOL uaps::CourierMessage::getAttributeId(uaps::CourierMessage *this, int a2, unsigned __int8 *a3)
{
  v5 = SbfIndexToAtom(*(this + 4), *(this + 5), a2);
  if (v5)
  {
    *a3 = SbfTicks(*(this + 4), v5);
  }

  return v5 != 0;
}

uint64_t uaps::CourierMessage::getData(uaps::CourierMessage *this, int a2, unsigned __int8 *a3, unint64_t *a4)
{
  result = SbfIndexToAtom(*(this + 4), *(this + 5), a2);
  if (result)
  {
    v8 = result;
    v9 = SbfBlobSize(*(this + 4), result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    if (a3)
    {
      if (*a4 < v9)
      {
        return 0;
      }

      *a4 = v9;
      return SbfGetBlob(*(this + 4), v8, a3, v9) == 0;
    }

    else
    {
      *a4 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t uaps::CourierMessage::getString(uaps::CourierMessage *this, int a2, char *a3, unint64_t *a4)
{
  result = SbfIndexToAtom(*(this + 4), *(this + 5), a2);
  if (result)
  {
    v8 = result;
    v9 = SbfStringLength(*(this + 4), result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    if (a3)
    {
      if (*a4 < v9)
      {
        return 0;
      }

      *a4 = v9;
      return SbfGetString(*(this + 4), v8, a3, v9) == 0;
    }

    else
    {
      *a4 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, unsigned __int8 *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    if (SbfGetUint64(v4, result, &v7))
    {
      return 0;
    }

    else
    {
      v6 = v7;
      *a3 = v7;
      return (v6 < 0x100);
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, unsigned __int16 *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    if (SbfGetUint64(v4, result, &v7))
    {
      return 0;
    }

    else
    {
      v6 = v7;
      *a3 = v7;
      return (v6 < 0x10000);
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, unsigned int *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    if (SbfGetUint64(v4, result, &v7))
    {
      return 0;
    }

    else
    {
      v6 = v7;
      *a3 = v7;
      return (HIDWORD(v6) == 0);
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, unint64_t *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    Uint64 = SbfGetUint64(v4, result, &v7);
    result = (Uint64 == 0);
    if (!Uint64)
    {
      *a3 = v7;
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, signed __int8 *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    if (SbfGetUint64(v4, result, &v7))
    {
      return 0;
    }

    else
    {
      v6 = v7;
      *a3 = v7;
      return (v6 == v6);
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, __int16 *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    if (SbfGetUint64(v4, result, &v7))
    {
      return 0;
    }

    else
    {
      v6 = v7;
      *a3 = v7;
      return (v6 == v6);
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, int *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    if (SbfGetUint64(v4, result, &v7))
    {
      return 0;
    }

    else
    {
      v6 = v7;
      *a3 = v7;
      return (v6 == v6);
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getNumber(uaps::CourierMessage *this, int a2, uint64_t *a3)
{
  v4 = *(this + 4);
  result = SbfIndexToAtom(v4, *(this + 5), a2);
  if (result)
  {
    v7 = 0;
    Uint64 = SbfGetUint64(v4, result, &v7);
    result = (Uint64 == 0);
    if (!Uint64)
    {
      *a3 = v7;
    }
  }

  return result;
}

uint64_t *uaps::CourierMessage::getBoolean(uaps::CourierMessage *this, int a2, BOOL *a3)
{
  result = SbfIndexToAtom(*(this + 4), *(this + 5), a2);
  if (result)
  {
    return (SbfGetBoolean(*(this + 4), result, a3) == 0);
  }

  return result;
}

BOOL uaps::CourierMessage::getBinaryPropertyList(uaps::CourierMessage *this, int a2, unsigned __int8 *a3, unint64_t *a4)
{
  v7 = SbfIndexToAtom(*(this + 4), *(this + 5), a2);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (SbfType(*(this + 4), v7) != 6)
  {
    return 0;
  }

  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E6F50();
  }

  v21 = 0u;
  v22 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = *a4;
  *(&v21 + 1) = a3;
  *&v22 = v9;
  v10 = SbfExportPlistb(*(this + 4), v8, &v21, a4);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
    {
      sub_1000E6FC4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return v11;
}

uint64_t uaps::CourierMessage::estimateUnpackedSize(uaps::CourierMessage *this)
{
  v2 = 0;
  v3 = 0;
  SbfDomGetSize(*(this + 4), &v3, &v2);
  return v2;
}

uint64_t *uaps::CourierMessage::getNumber(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

{
  v2 = *(a1 + 32);
  result = SbfIndexToAtom(v2, *(a1 + 40), a2);
  if (result)
  {
    v4 = 0;
    return (SbfGetUint64(v2, result, &v4) == 0);
  }

  return result;
}

BOOL uaps::CourierMessage::getData(uint64_t a1, int a2, uint64_t a3)
{
  v5 = SbfIndexToAtom(*(a1 + 32), *(a1 + 40), a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = SbfBlobSize(*(a1 + 32), v5);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v12 = 0;
  v9 = SbfBlobPtr(*(a1 + 32), v6, &v12);
  v10 = v9 == 0;
  if (!v9 && v8 && v12)
  {
    (*(a3 + 16))(a3, v12, v8);
  }

  return v10;
}

BOOL uaps::CourierMessage::getString(uint64_t a1, int a2, uint64_t a3)
{
  v5 = SbfIndexToAtom(*(a1 + 32), *(a1 + 40), a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = SbfStringLength(*(a1 + 32), v5);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v12 = 0;
  v9 = SbfStringPtr(*(a1 + 32), v6, &v12);
  v10 = v9 == 0;
  if (!v9 && v8 && v12)
  {
    (*(a3 + 16))(a3, v12, v8);
  }

  return v10;
}

BOOL uaps::CourierMessage::getBinaryPropertyList()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = SbfIndexToAtom(*(v0 + 32), *(v0 + 40), v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (SbfType(*(v3 + 32), v5) != 6)
  {
    return 0;
  }

  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E6F50();
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  v18[0] = 0;
  v18[1] = &v26;
  v18[2] = 4096;
  v18[3] = sub_1000E60D4;
  v18[4] = &v24;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = SbfExportPlistb(*(v3 + 32), v6, v18, &v23);
  v8 = v7 == 0;
  if (v7)
  {
    v9 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
    {
      sub_1000E6FC4(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    if (v23 != v25)
    {
      sub_1000E6FFC();
    }

    (*(v2 + 16))(v2, v24);
    free(v24);
  }

  return v8;
}

uint64_t sub_1000E60D4(const void *a1, uint64_t a2, size_t size, uint64_t a4)
{
  v8 = *(a4 + 8);
  if (*a4)
  {
    if (v8 != a2)
    {
      sub_1000E7028();
    }

    v9 = malloc_type_realloc(*a4, a2 + size, 0x100004077774924uLL);
    if (!v9)
    {
      sub_1000E7054();
    }
  }

  else
  {
    if (v8)
    {
      sub_1000E7080();
    }

    if (a2)
    {
      sub_1000E70AC();
    }

    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v9)
    {
      sub_1000E70D8();
    }
  }

  *a4 = v9;
  memcpy(&v9[a2], a1, size);
  *(a4 + 8) += size;
  return 0;
}

BOOL uaps::CourierMessage::encodePacked(uaps::CourierMessage *this, unsigned __int8 *a2, unint64_t *a3, uaps::PackState *a4)
{
  if (*(this + 32))
  {
    return 0;
  }

  uaps::CourierMessage::updateDomStats(this);
  if (SbfError(*(this + 4)))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E7104();
    }

    *(this + 32) = 3;
    *(this + 9) = "ErrorCode::INTERNAL_DOM_INVALID - Tried to encode invalid DOM";
    uaps::CourierMessage::_reportError(this);
    return 0;
  }

  v10 = SbfRoot(*(this + 4));
  v16 = 0;
  v11 = uaps::PackState::encodeFromSbf(a4, *(this + 4), v10, a2, *a3, &v16);
  v12 = v16;
  *a3 = v16;
  v8 = v11 == 0;
  if (v11)
  {
    *(this + 32) = *(a4 + 16) & 0xFFF | 0x1000;
  }

  else
  {
    v13 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(this + 8);
      v15 = *(this + 2);
      *buf = 67109632;
      v18 = v14;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "packed command %u in %zu bytes (%zu)", buf, 0x1Cu);
    }
  }

  return v8;
}

BOOL uaps::CourierMessage::encodeSerialized(uaps::CourierMessage *this, unsigned __int8 *a2, unint64_t *a3, uaps::SerialState *a4)
{
  if (*(this + 32))
  {
    return 0;
  }

  uaps::CourierMessage::updateDomStats(this);
  if (SbfError(*(this + 4)))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E7198();
    }

    *(this + 32) = 3;
    *(this + 9) = "ErrorCode::INTERNAL_DOM_INVALID - Tried to encode invalid DOM";
    uaps::CourierMessage::_reportError(this);
    return 0;
  }

  v10 = SbfRoot(*(this + 4));
  v16 = 0;
  v11 = uaps::SerialState::encodeFromSbf(a4, *(this + 4), v10, a2, *a3, &v16);
  v12 = v16;
  *a3 = v16;
  v8 = v11 == 0;
  if (v11)
  {
    *(this + 32) = *(a4 + 2) & 0xFFF | 0x2000;
  }

  else
  {
    v13 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(this + 8);
      v15 = *(this + 2);
      *buf = 67109632;
      v18 = v14;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "serialized command %u in %zu bytes (%zu)", buf, 0x1Cu);
    }
  }

  return v8;
}

uint64_t uaps::CourierMessage::decodePacked(uaps::CourierMessage *this, unsigned __int8 *a2, unint64_t *a3, uaps::PackState *a4)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E722C();
  }

  SbfReset(*(this + 4));
  v9 = 0;
  result = uaps::PackState::decodeToSbf(a4, *(this + 4), 0, 0, a2, *a3, &v9);
  if (result)
  {
    result = uaps::CourierMessage::resetFromSbf(this);
    if (result)
    {
      *a3 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t uaps::CourierMessage::resetFromSbf(uaps::CourierMessage *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E7484();
    }

    *(this + 32) = 3;
    v4 = "ErrorCode::INTERNAL_DOM_INVALID - DOM reference invalid";
    goto LABEL_20;
  }

  if (SbfError(v2))
  {
    v3 = libuaps_logger;
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
    {
      v7 = SbfError(*(this + 4));
      LODWORD(v8) = 67109120;
      HIDWORD(v8) = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DOM reports error %d", &v8, 8u);
      v3 = libuaps_logger;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E729C();
    }

    *(this + 32) = 3;
    v4 = "ErrorCode::INTERNAL_DOM_INVALID - DOM has errors";
LABEL_20:
    *(this + 9) = v4;
    uaps::CourierMessage::_reportError(this);
    return 0;
  }

  v8 = 0;
  if (SbfGetUint64ByName(*(this + 4), 0, uaps::CourierMessage::COMMAND_KEY[0], &v8))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E7330();
    }

    *(this + 32) = 3;
    v4 = "ErrorCode::INTERNAL_DOM_INVALID - DOM has no command";
    goto LABEL_20;
  }

  v5 = v8;
  *(this + 8) = v8;
  if (v5 >= 0x100)
  {
    sub_1000E7458();
  }

  if (SbfGetArrayByName(*(this + 4), 0, uaps::CourierMessage::ATTRIBUTE_VALUES_KEY[0], this + 5))
  {
    if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E73C4();
    }

    *(this + 32) = 3;
    v4 = "ErrorCode::INTERNAL_DOM_INVALID - DOM has no attribute value information";
    goto LABEL_20;
  }

  uaps::CourierMessage::updateDomStats(this);
  return 1;
}

uint64_t uaps::CourierMessage::decodeSerialized(uaps::CourierMessage *this, uaps::SerialState *a2, unint64_t *a3, uaps::SerialState *a4)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E7518();
  }

  SbfReset(*(this + 4));
  v9 = 0;
  result = uaps::SerialState::decodeToSbf(a4, *(this + 4), 0, 0, a2, *a3, &v9);
  if (result)
  {
    result = uaps::CourierMessage::resetFromSbf(this);
    if (result)
    {
      *a3 = v9;
      return 1;
    }
  }

  return result;
}

BOOL uaps::CourierMessage::decodeNeededSerialized(uaps::CourierMessage *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v7 = 0;
  v8 = 0;
  result = uaps::SerialState::decodeHeader(this, a2, &v8, &v7, a5);
  if (result)
  {
    *a3 = v7 + v8;
  }

  return result;
}

BOOL uaps::CourierMessage::decodeNeededPacked(uaps::CourierMessage *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v7 = 0;
  v8 = 0;
  result = uaps::PackState::decodeHeader(this, a2, &v8, &v7, a5);
  if (result)
  {
    *a3 = v7 + v8;
  }

  return result;
}

unsigned __int8 *uaps::CourierMessage::describeCommandItem(int a1, unsigned int a2, unsigned int a3)
{
  v6 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    v15 = 67109632;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a1;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "looking for %u:%u towards %d", &v15, 0x14u);
  }

  if (a1 == 1)
  {
    v7 = &_APSProtocolCommand_to_ap_descriptions;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    v7 = &_APSProtocolCommand_to_apns_descriptions;
  }

  if (a2 > 0x22)
  {
    return 0;
  }

  v8 = &v7[16 * a2];
  if (*v8 != a2)
  {
    return 0;
  }

  if (v8[1] <= a3)
  {
    return 0;
  }

  v9 = (*(v8 + 1) + 24 * a3);
  if (*v9 != a3)
  {
    return 0;
  }

  v10 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(v9 + 1);
    v12 = off_10018B270[v11];
    v13 = *(v9 + 1);
    v15 = 67110146;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = v11;
    v21 = 2080;
    v22 = v12;
    v23 = 2080;
    v24 = v13;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%u:%d] type %d:%s - %s", &v15, 0x28u);
  }

  return v9;
}

BOOL uaps::CourierMessage::exportDom(uaps::CourierMessage *this, unsigned __int8 *a2, unint64_t *a3)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E7588();
  }

  v8 = 0u;
  v9 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = *a3;
  *(&v8 + 1) = a2;
  *&v9 = v6;
  return SbfExportSbf(*(this + 4), 0, &v8, a3) == 0;
}

void *uaps::CourierMessage::importDom(uaps::CourierMessage *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E7604();
  }

  if (*(this + 7) < a3)
  {
    return 0;
  }

  result = SbfImportDom(*(this + 4), 0, 0, a2, a3);
  if (result)
  {
    return uaps::CourierMessage::resetFromSbf(this);
  }

  return result;
}

uint64_t uaps::CourierMessage::storageUsed(uaps::CourierMessage *this)
{
  v3 = 0;
  v4 = 0;
  SbfDomGetSize(*(this + 4), &v4, &v3);
  if (v4 != *(this + 7))
  {
    sub_1000E7680();
  }

  return v3;
}

void sub_1000E6C34(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MESSAGE ERROR (%d) %s", v4, 0x12u);
}

void sub_1000E6CC0(uint64_t *a1)
{
  v6 = *a1;
  sub_100012D0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000E6D44()
{
  sub_100012CC8();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000E6DC4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E6E58()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E7104()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E7198()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E722C()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E729C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E7330()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E73C4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E7484()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E7518()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E7588()
{
  sub_100012CC8();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000E7604()
{
  sub_100012CC8();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void uaps::PackState::_reportError(uaps::PackState *this)
{
  v2 = libuaps_logger;
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_ERROR))
  {
    sub_1000E7874(this, v2);
  }
}

uint64_t uaps::PackState::getPrefixIntegerLength(uaps::PackState *this)
{
  if (this < 0x40FE)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (this >= 0x17E)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (this >= 0xFF)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1000E7730(unint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (*a1 > a2 || v2 < a2)
  {
    sub_1000E8074();
  }

  return v2 - a2;
}

unint64_t sub_1000E7758(unint64_t *a1, unint64_t a2)
{
  if (*a1 > a2 || a1[2] < a2)
  {
    sub_1000EA6B0();
  }

  return a2 - *a1;
}

void uaps::PackState::dumpTables(uaps::LookUpTable **this)
{
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA990();
  }

  uaps::LookUpTable::dump(this[1]);
  if (os_log_type_enabled(libuaps_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EA9CC();
  }

  uaps::LookUpTable::dump(this[2]);
}

void sub_1000E7804(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

unsigned __int8 *sub_1000E7868@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1000E7874(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PACK ERROR (%d) %s", v4, 0x12u);
}

void sub_1000E79CC()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E7A34()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7AEC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7B78()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7C04()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7C90()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7D48()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7DD4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7E60()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E7ED0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7F5C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E7FE8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E80A0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8184()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E81C0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E824C()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E82BC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8348()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E83D4()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8410(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000E7834();
  sub_1000E7854();
  sub_100012CA0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x14u);
  *a3 = libuaps_logger;
}

void sub_1000E84A4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E855C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E85E8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8674()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8700()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E873C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E87C8()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8804()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8890()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E88CC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8958()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8994()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8A20()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8AAC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8B38(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 4) - 1;
    if (v1 <= 4)
    {
      v2 = dword_10015E0C0[v1];
    }
  }

  sub_1000E7848();
  sub_100012D0C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000E8BE8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8C74()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8CB0()
{
  sub_100012CC8();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000E8D64()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8DF0()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E8E60()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8EEC()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E8F28()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E8FB4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9040()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E90CC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9158()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E91E4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9270()
{
  sub_100051FEC();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000E92AC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000E7834();
  sub_1000E7854();
  sub_100012CA0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x14u);
  *a3 = libuaps_logger;
}

void sub_1000E9340()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E93CC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9458()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E94E4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9570()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E95FC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9758()
{
  sub_1000E7820();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1000E97E0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E986C()
{
  sub_100012CC8();
  sub_100012D0C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000E98E8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E99A0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9A2C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9AB8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9B44()
{
  sub_100012CC8();
  sub_100012CA0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000E9C38()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9CC4()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9D50()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9E08(unsigned __int8 *a1)
{
  sub_1000E7868(a1, __stack_chk_guard);
  sub_1000E7848();
  sub_100012D0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000E9E84()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000E9F88()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA014()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA0A0()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA12C()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA1B8()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA270()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA2FC()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA3B4(unsigned __int8 *a1)
{
  sub_1000E7868(a1, __stack_chk_guard);
  sub_1000E7848();
  sub_100012D0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000EA500()
{
  sub_1000E6C14();
  sub_1000E6C24();
  sub_1000E7804(&_mh_execute_header, v0, v1, "PACK ERROR at %s():%d: %s", v2, v3, v4, v5, 2u);
}

void sub_1000EA62C(unsigned __int8 *a1)
{
  sub_1000E7868(a1, __stack_chk_guard);
  sub_100012D0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}