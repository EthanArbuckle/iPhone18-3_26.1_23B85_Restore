uint64_t sub_1000DDCDC(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1000DDDA8;

  return sub_1000DC810(v8, a2);
}

uint64_t sub_1000DDDA8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000DE08C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1000E3734;

  return sub_1000DBF78(v8, a2);
}

uint64_t sub_1000DE2F4(void *a1, uint64_t a2, char a3, void *aBlock, void *a5)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = a5;
  *(v5 + 96) = a3;
  *(v5 + 56) = a1;
  *(v5 + 80) = _Block_copy(aBlock);
  v8 = a1;
  v9 = a5;

  return _swift_task_switch(sub_1000DE388, 0, 0);
}

uint64_t sub_1000DE388()
{
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 64);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v2 = *(v0 + 56);
      sub_100085D40(&qword_10059C4A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100435310;
      *(inited + 32) = v2;
      v4 = v2;
      sub_1000E2CDC(inited, v1);
      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1000DE4A4;
  v6 = *(v0 + 64);
  v7 = *(v0 + 56);

  return sub_1000DBF78(v7, v6);
}

uint64_t sub_1000DE4A4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000DE5FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE6CC, 0, 0);
}

uint64_t sub_1000DE6CC()
{
  v1 = *sub_100005B60((*(v0 + 32) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics), *(*(v0 + 32) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics + 24));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000DE778;

  return sub_1000E7C48(v1);
}

uint64_t sub_1000DE778(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1000DE878, 0, 0);
}

uint64_t sub_1000DE878()
{
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      static Logger.skanner.getter();

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 134218240;
        if (v1 >> 62)
        {
          v5 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 = *(v0 + 24);
        *(v4 + 4) = v5;

        *(v4 + 12) = 2048;
        *(v4 + 14) = v6;
        _os_log_impl(&_mh_execute_header, v2, v3, "Logging %ld events to story for app %lld", v4, 0x16u);
      }

      else
      {
      }

      v7 = *(v0 + 24);
      v8 = *(v0 + 16);
      (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
      v9 = swift_allocObject();
      *(v0 + 80) = v9;
      *(v9 + 16) = v7;
      *(v9 + 24) = 0;
      *(v9 + 32) = v8;

      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_1000DEB9C;

      return sub_1000D96A8(sub_1000E3764, v9);
    }

    static Logger.skanner.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 24);
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "Tried to log zero events for app %lld", v15, 0xCu);
    }

    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000DEB9C()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000DEE5C(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  type metadata accessor for SkannerEvent();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000DEF3C;

  return sub_1000DE5FC(v7, a2);
}

uint64_t sub_1000DEF3C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000DF098(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Calendar.Component();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF210, 0, 0);
}

uint64_t sub_1000DF210()
{
  v1 = *sub_100005B60((*(v0 + 40) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics), *(*(v0 + 40) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics + 24));
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000DF2BC;

  return sub_1000E7C48(v1);
}

uint64_t sub_1000DF2BC(char a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1000DF3BC, 0, 0);
}

uint64_t sub_1000DF3BC()
{
  if (*(v0 + 144) == 1)
  {
    static Logger.skanner.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 32);
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v1, v2, "Completing story for app %lld", v4, 0xCu);
    }

    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    v37 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 48);

    (*(v6 + 8))(v5, v7);
    sub_100085D40(&qword_10059C4A0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100435310;
    v13 = type metadata accessor for SkannerEvent();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_eventType] = 4;
    Date.init()();
    (*(v10 + 104))(v11, enum case for Calendar.Component.hour(_:), v12);
    v15 = sub_1001794D8(v8, v11);
    (*(v10 + 8))(v11, v12);
    (*(v9 + 8))(v8, v37);
    if (v15)
    {
      v16 = [v15 integerValue];
    }

    else
    {
      v16 = 0;
    }

    v19 = *(v0 + 32);
    *&v14[OBJC_IVAR____TtC9appstored12SkannerEvent_eventTime] = v16;
    v20 = [objc_opt_self() buildVersion];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_buildVersion];
    *v24 = v21;
    v24[1] = v23;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_resultType] = 11;
    v25 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID];
    *v25 = 0;
    v25[1] = 0;
    v26 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkRegistrableDomain];
    *v26 = 0;
    v26[1] = 0;
    v27 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_skanVersion];
    *v27 = 0;
    v27[1] = 0;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_adType] = 4;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_interactionType] = 2;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_destination] = 3;
    v28 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode];
    *v28 = 0;
    v28[8] = 1;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_conversionValueGranularity] = 3;
    v29 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_sourceIdentifierGranularity];
    *v29 = 0;
    v29[8] = 1;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_postbackType] = 2;
    v30 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_postbackSequenceIndex];
    *v30 = 0;
    v30[8] = 1;
    v31 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain];
    *v31 = 0;
    v31[1] = 0;
    v32 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_errorCode];
    *v32 = 0;
    v32[8] = 1;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_manualReportingModeEnabled] = 2;
    v14[OBJC_IVAR____TtC9appstored12SkannerEvent_offerType] = 2;
    v33 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_currencyCode];
    *v33 = 0;
    v33[1] = 0;
    v34 = &v14[OBJC_IVAR____TtC9appstored12SkannerEvent_countryCode];
    *v34 = 0;
    v34[1] = 0;
    *(v0 + 16) = v14;
    *(v0 + 24) = v13;
    *(v38 + 32) = objc_msgSendSuper2((v0 + 16), "init");
    v35 = swift_allocObject();
    *(v0 + 128) = v35;
    *(v35 + 16) = v19;
    *(v35 + 24) = 1;
    *(v35 + 32) = v38;
    v36 = swift_task_alloc();
    *(v0 + 136) = v36;
    *v36 = v0;
    v36[1] = sub_1000DF8C0;

    return sub_1000D96A8(sub_1000E2B30, v35);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1000DF8C0()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000DFB6C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000DFC28;

  return sub_1000DF098(a1);
}

uint64_t sub_1000DFC28()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000DFD60()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000DFE20, 0, 0);
}

uint64_t sub_1000DFE20()
{
  v1 = *sub_100005B60((*(v0 + 16) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics), *(*(v0 + 16) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics + 24));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000DFECC;

  return sub_1000E7C48(v1);
}

uint64_t sub_1000DFECC(char a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000DFFCC, 0, 0);
}

uint64_t sub_1000DFFCC()
{
  if (*(v0 + 72) == 1)
  {
    static Logger.skanner.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Flushing pending events from all stories", v3, 2u);
    }

    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    (*(v5 + 8))(v4, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    *(v9 + 16) = sub_1000E2298;
    *(v9 + 24) = v8;
    v10 = v7;
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_1000E01D8;

    return sub_1000D96A8(sub_1000E22A0, v9);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1000E01D8()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000E02F4(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Logger();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = __chkstk_darwin(v4);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v63 - v7;
  v8 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v8 - 8);
  v77 = &v63 - v9;
  v76 = type metadata accessor for SkannerStoryEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection;
  v79 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection);
  v65 = ObjCClassFromMetadata;
  v12 = sub_1002D3F5C(ObjCClassFromMetadata, v11, 0);
  sub_1000FE4D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 allMemoryEntitiesWithProperties:isa];

  sub_10009FAD4(0, &qword_10059CC48);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
LABEL_50:
    type metadata accessor for SkannerStory();

    v49 = _bridgeCocoaArray<A>(_:)();

    swift_bridgeObjectRelease_n();
    v15 = v49;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SkannerStory();
    if (!swift_dynamicCastMetatype())
    {
      v47 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        v48 = v16 + 32;
        do
        {
          if (!swift_dynamicCastClass())
          {
            goto LABEL_47;
          }

          v48 += 8;
          --v47;
        }

        while (v47);
      }
    }
  }

LABEL_4:
  if (v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_6:
      v18 = type metadata accessor for Metrics();
      v12 = 0;
      v71 = &a2[OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics];
      v72 = v18;
      v75 = v15 & 0xC000000000000001;
      v69 = v15 + 32;
      v70 = v15 & 0xFFFFFFFFFFFFFF8;
      v19 = _swiftEmptyArrayStorage;
      v73 = v17;
      v74 = v15;
      do
      {
        if (v75)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v70 + 16))
          {
            goto LABEL_49;
          }

          v32 = *(v69 + 8 * v12);
        }

        v82 = v32;
        if (__OFADD__(v12++, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v80 = v12;
        v16 = v82;
        v34 = sub_1000FDAC0();
        sub_1000FDAC0();

        sub_1000FDE24(_swiftEmptyArrayStorage);
        if (v34 >> 62)
        {
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (v12)
          {
LABEL_15:
            v35 = 0;
            v81 = v34 & 0xC000000000000001;
            a2 = (v34 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v81)
              {
                v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v35 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v36 = *(v34 + 8 * v35 + 32);
              }

              v16 = v36;
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              v38 = String._bridgeToObjectiveC()();
              v39 = sub_10023E0F8(v82, v38);

              if (v39)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
                sub_1000828A8(&v83, v84);
              }

              else
              {
                memset(v84, 0, sizeof(v84));
              }

              sub_100085D40(&unk_10059CC50);
              v40 = swift_dynamicCast();
              v42 = *(&v83 + 1);
              v41 = v83;
              if (!v40)
              {
                v42 = 0;
                v41 = 0;
              }

              if (v42)
              {
                v43 = v41;
              }

              else
              {
                v43 = 0;
              }

              if (v42)
              {
                v44 = v42;
              }

              else
              {
                v44 = 0xE000000000000000;
              }

              sub_1001A2CD8(v43, v44, v85);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_1001ACA70(0, *(v19 + 2) + 1, 1, v19);
              }

              v46 = *(v19 + 2);
              v45 = *(v19 + 3);
              v16 = v46 + 1;
              if (v46 >= v45 >> 1)
              {
                v19 = sub_1001ACA70((v45 > 1), v46 + 1, 1, v19);
              }

              *(v19 + 2) = v16;
              memcpy(&v19[424 * v46 + 32], v85, 0x1A8uLL);
              ++v35;
              if (v37 == v12)
              {
                goto LABEL_7;
              }
            }

            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:

            v15 = v16 | 1;
            goto LABEL_4;
          }
        }

        else
        {
          v12 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_15;
          }
        }

LABEL_7:

        v20 = sub_100005B60(v71, *(v71 + 3));
        v21 = sub_1000E0BF4(v19);

        v22 = *v20;
        v23 = type metadata accessor for TaskPriority();
        v24 = v77;
        (*(*(v23 - 8) + 56))(v77, 1, 1, v23);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v21;
        v25[5] = v22;
        v25[6] = v72;
        v26 = v22;
        sub_10019F02C(0, 0, v24, &unk_100435D88, v25);

        a2 = v82;
        v27 = [v82 databaseID];
        v28 = [objc_allocWithZone(v76) initWithPersistentID:v27 onConnection:*(v79 + v78)];
        v29 = sub_1001FBB74(a2);
        sub_100085D40(&qword_10059C510);
        v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10017FE88(v30);

        v31 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v28 setValuesWithDictionary:v31];

        v12 = v80;
        v19 = _swiftEmptyArrayStorage;
      }

      while (v80 != v73);
    }
  }

  v50 = String._bridgeToObjectiveC()();
  *&v84[0] = 1;
  v51 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v52 = [objc_opt_self() predicateWithProperty:v50 equalToValue:v51];
  swift_unknownObjectRelease();

  v53 = sub_1002D3F5C(v65, *(v79 + v78), v52);
  LOBYTE(v51) = [v53 deleteAllEntities];

  if (v51)
  {
    v54 = v64;
    static Logger.skanner.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v55, v56))
    {
      v68 = v54;
      goto LABEL_59;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Deleted completed stories", v57, 2u);
    v68 = v54;
    goto LABEL_57;
  }

  static Logger.skanner.getter();
  v55 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v55, v58, "Failed to delete completed stories", v59, 2u);
LABEL_57:
  }

LABEL_59:
  v61 = v66;
  v60 = v67;

  return (*(v61 + 8))(v68, v60);
}

void *sub_1000E0BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_100174844(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1000E2858(__dst, &v8);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100174844((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for SkannerEvent.Payload;
      v10 = sub_1000E28B4();
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x1A8uLL);
      v2[2] = v6 + 1;
      sub_1000056B8(&v8, &v2[5 * v6 + 4]);
      v4 += 424;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1000E0D28(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1001748A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10009FAD4(0, &qword_10059CC68);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001748A4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000828A8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10009FAD4(0, &qword_10059CC68);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1001748A4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000828A8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1000E0F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1001748A4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001748A4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000828A8(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1000E1024(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100174844(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100174844((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for AppInstallationEvent();
        v16 = sub_1000E2908(&unk_10059CC70, type metadata accessor for AppInstallationEvent);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_1000056B8(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_100174844((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for AppInstallationEvent();
        v16 = sub_1000E2908(&unk_10059CC70, type metadata accessor for AppInstallationEvent);
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_1000056B8(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E13B8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E3730;

  return sub_1000DFD60();
}

uint64_t sub_1000E1460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SkannerStoryEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1002D3F5C(ObjCClassFromMetadata, *(a1 + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection), 0);
  sub_1000FE4D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 allMemoryEntitiesWithProperties:isa];

  sub_10009FAD4(0, &qword_10059CC48);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    type metadata accessor for SkannerStory();

    v22 = _bridgeCocoaArray<A>(_:)();

    swift_bridgeObjectRelease_n();
    v8 = v22;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SkannerStory();
    if (swift_dynamicCastMetatype() || (v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v21 = v9 + 32;
      while (swift_dynamicCastClass())
      {
        v21 += 8;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      v8 = v9 | 1;
    }
  }

  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_23:

    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_6:
  result = sub_100174864(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v8 + 8 * i + 32);
      }

      v14 = v13;
      v15 = sub_1001FBB74(v13);
      sub_100085D40(&qword_10059C510);
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = sub_10017FE88(v16);

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_100174864((v18 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      _swiftEmptyArrayStorage[v19 + 4] = v17;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v29 = a5;
  v28 = type metadata accessor for Logger();
  v9 = *(v28 - 8);
  v10 = __chkstk_darwin(v28);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_100117648();
  if (v15)
  {
    v16 = v15;
    sub_1000FD7F0(a3 & 1);
    sub_1000FD674(a4);
    v17 = [v16 databaseID];
    v18 = [objc_allocWithZone(type metadata accessor for SkannerStoryEntity()) initWithPersistentID:v17 onConnection:*(a1 + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection)];
    v19 = sub_1001FBB74(v16);
    sub_100085D40(&qword_10059C510);
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10017FE88(v20);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 setValuesWithDictionary:isa];

    static Logger.skanner.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v22, v23, "Updated story for app: %lld", v24, 0xCu);
    }

    else
    {

      v22 = v16;
    }
  }

  else
  {
    static Logger.skanner.getter();
    v22 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v22, v25, "Failed to retrieve story for app: %lld", v26, 0xCu);
    }

    v14 = v12;
  }

  result = (*(v9 + 8))(v14, v28);
  *v29 = 0;
  return result;
}

uint64_t sub_1000E1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1B98, 0, 0);
}

uint64_t sub_1000E1B98()
{
  static Logger.skanner.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[3];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Synchronizing %ld events with snout", v5, 0xCu);
  }

  else
  {
  }

  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = *(v8 + 8);
  v0[9] = v10;
  v0[10] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v9;
  sub_100085D40(&qword_10059CC80);
  sub_1000E362C(&qword_10059CC88, sub_1000E3334);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;
  v0[11] = v11;
  v0[12] = v12;

  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_1000E1EF8;
  v15 = v0[4];

  return static TokenHandoff.handoffUTMetrics(eventsData:advertisedItemID:)(v11, v13, v15);
}

uint64_t sub_1000E1EF8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000E207C;
  }

  else
  {
    v2 = sub_1000E200C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E200C()
{
  sub_100088CDC(v0[11], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E207C()
{
  sub_100088CDC(*(v0 + 88), *(v0 + 96));
  static Logger.skanner.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to synchronize with snout: %@", v3, 0xCu);
    sub_100086A24(v4);
  }

  else
  {
  }

  (*(v0 + 72))(*(v0 + 56), *(v0 + 40));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E22A0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_1000E22E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v8);
  v9 = 0;
  swift_beginAccess();
  v4 = v9;
  v5 = *(a2 + 16);
  *(a2 + 16) = v8;
  v6 = *(a2 + 24);
  *(a2 + 24) = v4;
  sub_100007CF4(v5, v6);
  return 1;
}

uint64_t sub_1000E2390(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr))
{
  a3(&v9);
  v10 = 0;
  swift_beginAccess();
  v4 = v10;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a2 + 16) = v9;
  v7 = *(a2 + 32);
  *(a2 + 32) = v4;
  sub_1000E29B8(v5, v6, v7);
  return 1;
}

uint64_t sub_1000E2440(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v8);
  v9 = 0;
  swift_beginAccess();
  v4 = v9;
  v5 = *(a2 + 16);
  *(a2 + 16) = v8;
  v6 = *(a2 + 24);
  *(a2 + 24) = v4;
  sub_1000E2974(v5, v6);
  return 1;
}

uint64_t sub_1000E24F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  LOBYTE(v1) = v1(v2);

  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_1000E2570(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E25B8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000E2644(uint64_t a1, uint64_t a2)
{
  v14[3] = &type metadata for SkannerStoryMetrics;
  v14[4] = &off_10050D398;
  v14[0] = a1;
  v3 = type metadata accessor for SkannerCoordinator();
  v4 = objc_allocWithZone(v3);
  v5 = sub_1000D7184(v14, &type metadata for SkannerStoryMetrics);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = &type metadata for SkannerStoryMetrics;
  v13[4] = &off_10050D398;
  v13[0] = v9;
  sub_1000056D0(v13, &v4[OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics]);
  *&v4[OBJC_IVAR____TtC9appstored18SkannerCoordinator_databaseStore] = a2;
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100005A00(v13);
  sub_100005A00(v14);
  return v10;
}

uint64_t sub_1000E2790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100086B9C;

  return sub_1001739E0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1000E28B4()
{
  result = qword_10059CC60;
  if (!qword_10059CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CC60);
  }

  return result;
}

uint64_t sub_1000E2908(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000E2950(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1000E2968(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000E2974(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1000E2950(a1, a2 & 1);
  }
}

uint64_t sub_1000E298C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000E29A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000E29B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000E298C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000E29D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_1000E13B8(v2, v3);
}

uint64_t sub_1000E2A7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100085384;

  return sub_1000DFB6C(v2, v3, v4);
}

uint64_t sub_1000E2B54()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_1000DEE5C(v2, v3, v5, v4);
}

uint64_t sub_1000E2C14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100086B9C;

  return sub_1000DE2F4(v2, v3, v4, v6, v5);
}

char *sub_1000E2CDC(unint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
LABEL_16:
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v6, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v8;
    v38[5] = a2;
    sub_10019F02C(0, 0, v6, &unk_100435E60, v38);
  }

  v60 = _swiftEmptyArrayStorage;
  result = sub_100174824(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v39 = v6;
    v40 = a2;
    v8 = v60;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v51 = v7;
      v41 = a1;
      do
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v48 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_eventType);
        v45 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_resultType);
        v12 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID + 8);
        v50 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID);
        v47 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_adType);
        v44 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_interactionType);
        v13 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_destination);
        v46 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode);
        v14 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode + 8);
        v43 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_postbackType);
        v15 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain + 8);
        v49 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain);
        v42 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorCode);
        v16 = *(v11 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorCode + 8);

        swift_unknownObjectRelease();
        LOBYTE(v58) = v14;
        LOBYTE(v54) = v16;
        v60 = v8;
        v18 = v8[2];
        v17 = v8[3];
        if (v18 >= v17 >> 1)
        {
          sub_100174824((v17 > 1), v18 + 1, 1);
          v8 = v60;
        }

        ++v10;
        v8[2] = v18 + 1;
        v19 = &v8[14 * v18];
        *(v19 + 32) = v48;
        *(v19 + 33) = v45;
        v20 = v59;
        *(v19 + 34) = v58;
        *(v19 + 19) = v20;
        v19[5] = v50;
        v19[6] = v12;
        *(v19 + 56) = v47;
        *(v19 + 57) = v44;
        *(v19 + 58) = v13;
        v21 = v56;
        *(v19 + 63) = v57;
        *(v19 + 59) = v21;
        v19[8] = v46;
        *(v19 + 72) = v14;
        *(v19 + 73) = v43;
        v22 = v54;
        *(v19 + 39) = v55;
        *(v19 + 74) = v22;
        v19[10] = v49;
        v19[11] = v15;
        v19[12] = v42;
        *(v19 + 104) = v16;
        *(v19 + 105) = 514;
        LOBYTE(v22) = v53;
        *(v19 + 107) = v52;
        *(v19 + 111) = v22;
        *(v19 + 7) = 0u;
        *(v19 + 8) = 0u;
      }

      while (v51 != v10);
    }

    else
    {
      v23 = (a1 + 32);
      do
      {
        v51 = v7;
        v24 = *v23;
        v48 = *(*v23 + OBJC_IVAR____TtC9appstored12SkannerEvent_eventType);
        v45 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_resultType);
        v25 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID + 8);
        v50 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID);
        v47 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_adType);
        v44 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_interactionType);
        v26 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_destination);
        v46 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode);
        v27 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode + 8);
        v43 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_postbackType);
        v28 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain + 8);
        v49 = *(v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain);
        v29 = (v24 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorCode);
        v42 = *v29;
        v30 = *(v29 + 8);
        LOBYTE(v58) = v27;
        LOBYTE(v54) = v30;
        v32 = v8[2];
        v31 = v8[3];
        v60 = v8;

        if (v32 >= v31 >> 1)
        {
          sub_100174824((v31 > 1), v32 + 1, 1);
          v8 = v60;
        }

        v8[2] = v32 + 1;
        v33 = &v8[14 * v32];
        *(v33 + 32) = v48;
        *(v33 + 33) = v45;
        v34 = v59;
        *(v33 + 34) = v58;
        *(v33 + 19) = v34;
        v33[5] = v50;
        v33[6] = v25;
        *(v33 + 56) = v47;
        *(v33 + 57) = v44;
        *(v33 + 58) = v26;
        v35 = v56;
        *(v33 + 63) = v57;
        *(v33 + 59) = v35;
        v33[8] = v46;
        *(v33 + 72) = v27;
        *(v33 + 73) = v43;
        v36 = v54;
        *(v33 + 39) = v55;
        *(v33 + 74) = v36;
        v33[10] = v49;
        v33[11] = v28;
        v33[12] = v42;
        *(v33 + 104) = v30;
        *(v33 + 105) = 514;
        LOBYTE(v36) = v53;
        *(v33 + 107) = v52;
        *(v33 + 111) = v36;
        *(v33 + 7) = 0u;
        *(v33 + 8) = 0u;
        ++v23;
        v7 = v51 - 1;
      }

      while (v51 != 1);
    }

    v6 = v39;
    a2 = v40;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E3274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_1000E1ACC(a1, v4, v5, v7, v6);
}

unint64_t sub_1000E3334()
{
  result = qword_10059CC90;
  if (!qword_10059CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CC90);
  }

  return result;
}

uint64_t sub_1000E3388()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_1000DE08C(v2, v3, v5, v4);
}

uint64_t sub_1000E3448()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E3490()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_1000DDCDC(v2, v3, v5, v4);
}

uint64_t sub_1000E356C(void (*a1)(void, void))
{
  v2 = *(v1 + 24);
  if (v2 != 255)
  {
    a1(*(v1 + 16), v2 & 1);
  }

  return _swift_deallocObject(v1, 25, 7);
}

uint64_t sub_1000E35BC(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000E362C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(&qword_10059CC80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E36A4()
{
  result = qword_10059CCA8;
  if (!qword_10059CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CCA8);
  }

  return result;
}

uint64_t sub_1000E380C()
{
  v1[57] = v0;
  v2 = sub_100085D40(&qword_10059C4A8);
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[61] = v3;
  v1[62] = *(v3 - 8);
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[70] = v4;
  v1[71] = *(v4 - 8);
  v1[72] = swift_task_alloc();
  v5 = type metadata accessor for AccountClientIdentifier();
  v1[73] = v5;
  v1[74] = *(v5 - 8);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v6 = type metadata accessor for ClientInfo();
  v1[77] = v6;
  v1[78] = *(v6 - 8);
  v1[79] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3A9C, 0, 0);
}

uint64_t sub_1000E3A9C()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v7);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v7);
  v0[80] = sub_1000D6694(v1);
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_1000E3C20;

  return sub_1000C8E90((v0 + 18), 0, 0);
}

uint64_t sub_1000E3C20()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_1000E51F0;
  }

  else
  {

    v3 = sub_1000E3D3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E3D3C()
{
  v132 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = sub_100005B60((v0 + 144), v4);
  v7 = sub_1000C56EC(v4, v5, v6);
  v8 = [objc_allocWithZone(PurchaseInfo) initWithBag:v7];
  *(v0 + 664) = v8;

  [v8 setLogCode:@"RRD"];
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v1, v3);
  [v8 setExternalID:isa];

  [v8 updateLogKey];
  static Logger.push.getter();
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = [v10 logKey];
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Handling remote redownload request", v13, 0xCu);
    sub_100005518(v14, &unk_10059C250);
  }

  v16 = *(v0 + 552);
  v17 = *(v0 + 488);
  v18 = *(v0 + 496);
  v19 = *(v0 + 456);

  v20 = *(v18 + 8);
  *(v0 + 672) = v20;
  *(v0 + 680) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  v21 = *(v19 + OBJC_IVAR____TtC9appstored27RemoteRedownloadRequestTask_message);
  v22 = sub_1002DC370(v21);
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 360) = 0xD000000000000010;
  *(v0 + 368) = 0x800000010044E720;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v24 = sub_1000EE7C4(v0 + 184), (v25 & 1) == 0))
  {

    sub_1000B5BDC(v0 + 184);
LABEL_10:
    static Logger.push.getter();
    v34 = v10;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = [v34 logKey];
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] No redownload params provided on remote download request", v37, 0xCu);
      sub_100005518(v38, &unk_10059C250);
    }

    v40 = *(v0 + 520);
    v41 = *(v0 + 488);

    v42 = v20;
    v20(v40, v41);
    v43 = ASDErrorDomain;
    v44 = String._bridgeToObjectiveC()();
    ASDErrorWithDescription();

    swift_willThrow();
    static Logger.push.getter();
    v45 = v34;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 512);
    v50 = *(v0 + 488);
    if (v48)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = [v45 logKey];
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%@] Remote redownload request complete", v51, 0xCu);
      sub_100005518(v52, &unk_10059C250);
    }

    v42(v49, v50);
    sub_100005A00(v0 + 144);

    v54 = *(v0 + 8);
    goto LABEL_15;
  }

  sub_10009F6D0(*(v23 + 56) + 32 * v24, v0 + 264);
  sub_1000B5BDC(v0 + 184);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v126 = v20;
  v26 = *(v0 + 384);
  *(v0 + 392) = *(v0 + 376);
  *(v0 + 400) = v26;
  sub_100003B3C();
  StringProtocol.removingPercentEncoding.getter();
  v28 = v27;
  v20 = v126;

  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = objc_allocWithZone(AMSBuyParams);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithString:v30];

  [v10 setBuyParams:v31];
  v32 = [v10 buyParams];
  v33 = [v32 parameterForKey:AMSBuyParamPropertyItemId];

  if (v33)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v56 = v130;
  *(v0 + 296) = v129;
  *(v0 + 312) = v56;
  if (!*(v0 + 320))
  {
    sub_100005518(v0 + 296, &unk_10059CC50);
    goto LABEL_87;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_87;
  }

  v58 = *(v0 + 424);
  v57 = *(v0 + 432);
  v59 = HIBYTE(v57) & 0xF;
  v60 = v58 & 0xFFFFFFFFFFFFLL;
  if ((v57 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

    goto LABEL_87;
  }

  if ((v57 & 0x1000000000000000) == 0)
  {
    if ((v57 & 0x2000000000000000) != 0)
    {
      *&v129 = *(v0 + 424);
      *(&v129 + 1) = v57 & 0xFFFFFFFFFFFFFFLL;
      if (v58 == 43)
      {
        if (!v59)
        {
LABEL_110:
          __break(1u);
          return _swift_continuation_await(v57);
        }

        v62 = (v59 - 1);
        if (v59 != 1)
        {
          v65 = 0;
          v76 = &v129 + 1;
          while (1)
          {
            v77 = *v76 - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v78 + v77;
            if (__OFADD__(v78, v77))
            {
              break;
            }

            ++v76;
            if (!--v62)
            {
              goto LABEL_84;
            }
          }
        }
      }

      else if (v58 == 45)
      {
        if (!v59)
        {
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v62 = (v59 - 1);
        if (v59 != 1)
        {
          v65 = 0;
          v69 = &v129 + 1;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v71 - v70;
            if (__OFSUB__(v71, v70))
            {
              break;
            }

            ++v69;
            if (!--v62)
            {
              goto LABEL_84;
            }
          }
        }
      }

      else if (v59)
      {
        v65 = 0;
        v81 = &v129;
        while (1)
        {
          v82 = *v81 - 48;
          if (v82 > 9)
          {
            break;
          }

          v83 = 10 * v65;
          if ((v65 * 10) >> 64 != (10 * v65) >> 63)
          {
            break;
          }

          v65 = v83 + v82;
          if (__OFADD__(v83, v82))
          {
            break;
          }

          ++v81;
          if (!--v59)
          {
LABEL_82:
            LOBYTE(v62) = 0;
            goto LABEL_84;
          }
        }
      }
    }

    else
    {
      if ((v58 & 0x1000000000000000) != 0)
      {
        v62 = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v125 = *(v0 + 432);
        v62 = _StringObject.sharedUTF8.getter();
        v57 = v125;
      }

      v63 = *v62;
      if (v63 == 43)
      {
        if (v60 >= 1)
        {
          v72 = v60 - 1;
          if (v60 != 1)
          {
            v65 = 0;
            if (!v62)
            {
              goto LABEL_84;
            }

            v73 = v62 + 1;
            while (1)
            {
              v74 = *v73 - 48;
              if (v74 > 9)
              {
                break;
              }

              v75 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                break;
              }

              v65 = v75 + v74;
              if (__OFADD__(v75, v74))
              {
                break;
              }

              ++v73;
              if (!--v72)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_83;
        }

        goto LABEL_109;
      }

      if (v63 == 45)
      {
        if (v60 >= 1)
        {
          v64 = v60 - 1;
          if (v60 != 1)
          {
            v65 = 0;
            if (!v62)
            {
              goto LABEL_84;
            }

            v66 = v62 + 1;
            while (1)
            {
              v67 = *v66 - 48;
              if (v67 > 9)
              {
                break;
              }

              v68 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                break;
              }

              v65 = v68 - v67;
              if (__OFSUB__(v68, v67))
              {
                break;
              }

              ++v66;
              if (!--v64)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_83;
        }

        __break(1u);
        goto LABEL_108;
      }

      if (v60)
      {
        v65 = 0;
        if (!v62)
        {
          goto LABEL_84;
        }

        while (1)
        {
          v79 = *v62 - 48;
          if (v79 > 9)
          {
            break;
          }

          v80 = 10 * v65;
          if ((v65 * 10) >> 64 != (10 * v65) >> 63)
          {
            break;
          }

          v65 = v80 + v79;
          if (__OFADD__(v80, v79))
          {
            break;
          }

          ++v62;
          if (!--v60)
          {
            goto LABEL_82;
          }
        }
      }
    }

LABEL_83:
    v65 = 0;
    LOBYTE(v62) = 1;
LABEL_84:
    v131 = v62;
    v84 = v62;

    if (v84)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v65 = sub_1001704B8(v58, *(v0 + 432), 10);
  v124 = v123;

  if (v124)
  {
    goto LABEL_87;
  }

LABEL_85:
  v85 = *(v0 + 656);
  v86 = [objc_allocWithZone(NSNumber) initWithInteger:v65];
  [v10 setItemID:v86];

  v87 = [v10 itemID];
  v88 = objc_allocWithZone(ApplicationProxy);
  v89 = sub_10009F60C(v87);

  if (v85)
  {

    goto LABEL_87;
  }

  if (!v89)
  {
LABEL_87:
    v90 = sub_1002DC370(v21);
    v91 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = v0;
    *(v0 + 408) = 48;
    *(v0 + 416) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v91 + 16) && (v93 = sub_1000EE7C4(v0 + 224), (v94 & 1) != 0))
    {
      sub_10009F6D0(*(v91 + 56) + 32 * v93, v0 + 328);
      sub_1000B5BDC(v0 + 224);

      sub_10009FAD4(0, &qword_10059CBB0);
      if (swift_dynamicCast())
      {
        v95 = *(v0 + 448);
        v96 = [objc_opt_self() ams_sharedAccountStore];
        v97 = [v96 ams_iTunesAccountWithDSID:v95];

        [v10 setAccount:v97];
      }
    }

    else
    {

      sub_1000B5BDC(v0 + 224);
    }

    v98 = *(v0 + 472);
    v127 = v92[60];
    v99 = v92[58];
    [v10 setCoordinatorIntent:1];
    [v10 setCoordinatorImportance:2];
    v100 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:3];
    [v10 setMetricsType:v100];

    [v10 updateGeneratedProperties];
    objc_opt_self();
    v101 = sub_1001DFF60();
    v92[86] = v101;
    v92[2] = v92;
    v92[7] = v92 + 55;
    v92[3] = sub_1000E4E9C;
    swift_continuation_init();
    v92[17] = v99;
    v102 = sub_100005F38(v92 + 14);
    sub_10009FAD4(0, &unk_10059C4B0);
    sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v98 + 32))(v102, v127, v99);
    v92[10] = _NSConcreteStackBlock;
    v92[11] = 1107296256;
    v92[12] = sub_1000B31A8;
    v92[13] = &unk_10050D2A8;
    sub_1001E065C(v101, v10, v92 + 10);
    (*(v98 + 8))(v102, v99);
    v57 = (v92 + 2);

    return _swift_continuation_await(v57);
  }

  if ((sub_1003D0F94(v89) & 1) == 0)
  {

    goto LABEL_87;
  }

  static Logger.push.getter();
  v103 = v10;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v106 = 138412290;
    v108 = [v103 logKey];
    *(v106 + 4) = v108;
    *v107 = v108;
    _os_log_impl(&_mh_execute_header, v104, v105, "[%@] App already installed.", v106, 0xCu);
    sub_100005518(v107, &unk_10059C250);
  }

  v109 = *(v0 + 544);
  v110 = *(v0 + 488);

  v126(v109, v110);
  static Logger.push.getter();
  v111 = v103;
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  v114 = os_log_type_enabled(v112, v113);
  v128 = *(v0 + 536);
  if (v114)
  {
    v115 = *(v0 + 664);
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v116 = 138412290;
    v118 = [v115 logKey];
    *(v116 + 4) = v118;
    *v117 = v118;
    _os_log_impl(&_mh_execute_header, v112, v113, "[%@] Remote redownload request complete", v116, 0xCu);
    sub_100005518(v117, &unk_10059C250);
  }

  v119 = *(v0 + 672);
  v120 = *(v0 + 664);
  v121 = v112;
  v122 = *(v0 + 488);

  v119(v128, v122);
  sub_100005A00(v0 + 144);

  v54 = *(v0 + 8);
LABEL_15:

  return v54();
}

uint64_t sub_1000E4E9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 696) = v1;
  if (v1)
  {
    v2 = sub_1000E5308;
  }

  else
  {
    v2 = sub_1000E4FAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E4FAC()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);

  static Logger.push.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v17 = *(v0 + 528);
  if (v6)
  {
    v7 = *(v0 + 664);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = [v7 logKey];
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Remote redownload request complete", v8, 0xCu);
    sub_100005518(v9, &unk_10059C250);
  }

  v11 = *(v0 + 672);
  v12 = *(v0 + 664);
  v13 = v4;
  v14 = *(v0 + 488);

  v11(v17, v14);
  sub_100005A00(v0 + 144);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000E51F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5308()
{
  v1 = v0[86];
  v2 = v0[83];
  swift_willThrow();

  static Logger.push.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[63];
  v10 = v0[61];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = [v8 logKey];
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Remote redownload request complete", v11, 0xCu);
    sub_100005518(v12, &unk_10059C250);
  }

  v7(v9, v10);
  sub_100005A00((v0 + 18));

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000E56B0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_1000E380C();
}

uint64_t sub_1000E581C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_1000E56B0(v2, v3);
}

id sub_1000E5974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _AppStoreWidget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E59CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v9 = 0;
  v10 = 0;
  v47 = (v11 + 8);
  v48 = "_AppStoreWidget";
  v45 = "re.Widgets.Today";
  v46 = "com.apple.AppStore.Widgets";
  *&v12 = 136315138;
  v40 = v12;
  *&v12 = 136315394;
  v41 = v12;
  v42 = v8;
  v43 = v7;
  v44 = &v40 - v13;
  do
  {
    v49 = v9;
    if (*(&off_100508AF0 + v10 + 32))
    {
      v15 = 0xD000000000000020;
    }

    else
    {
      v15 = 0xD000000000000025;
    }

    if (*(&off_100508AF0 + v10 + 32))
    {
      v16 = v46;
    }

    else
    {
      v16 = v45;
    }

    v17 = objc_allocWithZone(CHSTimelineController);
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 initWithExtensionBundleIdentifier:v18 kind:v19];

    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 reloadTimelineWithReason:v21];

    if (v22)
    {
      swift_willThrow();

      v23 = v44;
      static Logger.general.getter();
      v24 = v22;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = a2;
        v29 = swift_slowAlloc();
        v30 = a1;
        v31 = swift_slowAlloc();
        v50 = v31;
        *v27 = v41;
        v32 = sub_1001AD0D8(v15, v16 | 0x8000000000000000, &v50);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2112;
        v33 = v24;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v34;
        *v29 = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "Error reloading widget (%s: %@", v27, 0x16u);
        sub_100086A24(v29);
        a2 = v28;

        sub_100005A00(v31);
        a1 = v30;
        v4 = v42;

        v23 = v44;
      }

      else
      {
      }

      result = (*v47)(v23, v4);
      v7 = v43;
    }

    else
    {

      static Logger.general.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v50 = v38;
        *v37 = v40;
        v39 = sub_1001AD0D8(v15, v16 | 0x8000000000000000, &v50);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "Reloaded widget (%s", v37, 0xCu);
        sub_100005A00(v38);
        v7 = v43;
      }

      result = (*v47)(v7, v4);
    }

    v9 = 1;
    v10 = &_mh_execute_header.magic + 1;
  }

  while ((v49 & 1) == 0);
  return result;
}

id sub_1000E5E58()
{
  v1 = [v0 encryptedValues];
  v2 = String._bridgeToObjectiveC()();
  v3 = COERCE_DOUBLE([v1 objectForKeyedSubscript:v2]);
  swift_unknownObjectRelease();

  if (v3 == 0.0)
  {
    return 0;
  }

  v24 = v3;
  sub_100085D40(&unk_10059CD10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v0 encryptedValues];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKeyedSubscript:v5];
  swift_unknownObjectRelease();

  if (!v6 || (swift_dynamicCast() & 1) == 0 || (v7 = [v0 encryptedValues], v8 = String._bridgeToObjectiveC()(), v9 = objc_msgSend(v7, "objectForKeyedSubscript:", v8), swift_unknownObjectRelease(), v8, !v9) || (swift_dynamicCast() & 1) == 0 || (v10 = objc_msgSend(v0, "encryptedValues"), v11 = String._bridgeToObjectiveC()(), v12 = objc_msgSend(v10, "objectForKeyedSubscript:", v11), swift_unknownObjectRelease(), v11, !v12) || (swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v13 = objc_allocWithZone(ASDApp);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithBundleID:v14];

  [v15 setStoreItemID:*&v3];
  [v15 setStoreExternalVersionID:*&v3];
  v16 = *&v3 != 0;
  v17 = [v0 encryptedValues];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 objectForKeyedSubscript:v18];
  swift_unknownObjectRelease();

  if (!v19 || (swift_dynamicCast() & 1) == 0 || v3 >= 1.0)
  {
    v16 |= 4uLL;
    goto LABEL_18;
  }

  v20 = [objc_opt_self() progressWithTotalUnitCount:1000];
  [v15 setProgress:v20];

  result = [v15 progress];
  if (v24 < 0.0)
  {
    if (result)
    {
      v22 = result;
      [result setCompletedUnitCount:-1];
LABEL_24:
    }

LABEL_18:
    [v15 setStatus:v16];
    return v15;
  }

  if (!result)
  {
    goto LABEL_18;
  }

  v23 = v24 * 1000.0;
  if (COERCE__INT64(fabs(v24 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v23 < 9.22337204e18)
  {
    v22 = result;
    [result setCompletedUnitCount:v23];
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void static Analytics.postHashMismatch(taskInfo:)(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1000E7060;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000E73D4;
  v6[3] = &unk_10050D2F8;
  v4 = _Block_copy(v6);
  v5 = a1;

  sub_1003F2684(ObjCClassFromMetadata, v4, 25);
  _Block_release(v4);
}

void *sub_1000E63E8(void *a1)
{
  v3 = sub_100085D40(&qword_10059CD20);
  __chkstk_darwin(v3 - 8);
  v5 = &v103 - v4;
  v6 = type metadata accessor for NWInterface();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10020F538(a1);
  v111 = &type metadata for Bool;
  LOBYTE(v110) = v10 ^ 1;
  sub_1000828A8(&v110, v109);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = &_swiftEmptyDictionarySingleton;
  sub_1001B3A08(v109, 0x6361437465737361, 0xEA00000000006568, isUniquelyReferenced_nonNull_native);
  v12 = v112;
  v14 = sub_10020F408(a1, v13);
  v15 = [v14 countOfBytesReceived];

  v111 = &type metadata for Int64;
  *&v110 = v15;
  sub_1000828A8(&v110, v109);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v12;
  sub_1001B3A08(v109, 0x6365527365747962, 0xED00006465766965, v16);
  v112 = v108;
  v18 = sub_10020F550(a1, v17);
  if (v18)
  {
    v20 = v18;
    v21 = [v18 transactionMetrics];

    sub_10009FAD4(0, &qword_10059DE90);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23)
      {
LABEL_4:
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
          __break(1u);
        }

        else if ((v22 & 0xC000000000000001) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v25 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v26 = *(v22 + 8 * v25 + 32);
            goto LABEL_9;
          }

          __break(1u);
          goto LABEL_62;
        }

        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
        v27 = v26;

        v28 = [v27 response];
        if (!v28)
        {
          goto LABEL_25;
        }

        v1 = v28;
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (!v29)
        {

          goto LABEL_25;
        }

        v30 = v29;
        v107 = v7;
        v31 = String._bridgeToObjectiveC()();
        v32 = [v30 valueForHTTPHeaderField:v31];

        if (v32)
        {
          v106 = v27;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v105 = &v103;
          *&v110 = 47;
          *(&v110 + 1) = 0xE100000000000000;
          __chkstk_darwin(v36);
          *(&v103 - 2) = &v110;
          v37 = sub_1000E755C(sub_1000E772C, (&v103 - 4), v33, v35);
          if ((v38 & 1) == 0)
          {
            v39 = HIBYTE(v35) & 0xF;
            if ((v35 & 0x2000000000000000) == 0)
            {
              v39 = v33 & 0xFFFFFFFFFFFFLL;
            }

            if (v37 >> 14 < 4 * v39)
            {
              v40 = String.index(after:)();
              v41 = sub_1000E7784(v40, v33, v35);
              v43 = v42;
              v105 = v44;
              v46 = v45;

              if ((v41 ^ v43) >> 14)
              {
                v104 = v46;
                v47 = sub_1000E7660(v41, v43, v105, v46, 10);
                v27 = v106;
                if ((v48 & 0x100) != 0)
                {
                  v49 = sub_10009D3E4(v41, v43, v105, v104, 10);
                  v60 = v59;

                  if ((v60 & 1) == 0)
                  {
LABEL_32:
                    v111 = &type metadata for Int;
                    *&v110 = v49;
                    goto LABEL_23;
                  }
                }

                else
                {
                  v49 = v47;
                  v50 = v48;

                  if ((v50 & 1) == 0)
                  {
                    goto LABEL_32;
                  }
                }

LABEL_31:
                sub_10016D4C4(0x4C746E65746E6F63, 0xED00006874676E65, v109);

                sub_100005518(v109, &unk_10059CC50);
                goto LABEL_24;
              }

LABEL_62:

              v27 = v106;
              goto LABEL_31;
            }
          }

          v27 = v106;
        }

        v51 = [v30 expectedContentLength];
        v111 = &type metadata for Int64;
        *&v110 = v51;
LABEL_23:
        sub_1000828A8(&v110, v109);
        v52 = v112;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v108 = v52;
        sub_1001B3A08(v109, 0x4C746E65746E6F63, 0xED00006874676E65, v53);

        v112 = v108;
LABEL_24:
        v7 = v107;
LABEL_25:
        v54 = [v27 _interfaceName];
        if (v54)
        {
          v55 = v54;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          NWInterface.init(_:)();
          if ((*(v7 + 48))(v5, 1, v6) == 1)
          {

            sub_100005518(v5, &qword_10059CD20);
          }

          else
          {
            (*(v7 + 32))(v9, v5, v6);
            sub_1000E7068();
            v56 = String._bridgeToObjectiveC()();

            v111 = sub_10009FAD4(0, &unk_10059CE30);
            *&v110 = v56;
            sub_1000828A8(&v110, v109);
            v57 = v112;
            v58 = swift_isUniquelyReferenced_nonNull_native();
            v108 = v57;
            sub_1001B3A08(v109, 0x6361667265746E69, 0xED00006570795465, v58);

            (*(v7 + 8))(v9, v6);
            v112 = v108;
          }
        }

        else
        {
        }

        goto LABEL_35;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_35:
  v61 = sub_1001FBBDC(a1, v19);
  if (!v61 || (*&v110 = v61, sub_100085D40(&unk_10059DE80), sub_10009FAD4(0, &qword_10059CD28), (swift_dynamicCast() & 1) == 0))
  {
LABEL_51:
    v89 = sub_1001FBBDC(a1, v62);
    if (v89 && (*&v110 = v89, sub_100085D40(&unk_10059DE80), sub_10009FAD4(0, &qword_10059CD28), (swift_dynamicCast() & 1) != 0))
    {
      v90 = *&v109[0];
      v91 = [*&v109[0] domain];
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      *&v110 = v92;
      *(&v110 + 1) = v94;
      v95._object = 0xE900000000000028;
      v95._countAndFlagsBits = 0x6E776F6E6B6E552FLL;
      String.append(_:)(v95);
      *&v109[0] = [v90 code];
      v96._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v96);

      v97._countAndFlagsBits = 41;
      v97._object = 0xE100000000000000;
      String.append(_:)(v97);
      v111 = &type metadata for String;
      sub_1000828A8(&v110, v109);
      v98 = v112;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v98;
      sub_1001B3A08(v109, 0x707954726F727265, 0xE900000000000065, v99);
    }

    else
    {
      v111 = &type metadata for String;
      *&v110 = 1701736302;
      *(&v110 + 1) = 0xE400000000000000;
      sub_1000828A8(&v110, v109);
      v100 = v112;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v100;
      sub_1001B3A08(v109, 0x707954726F727265, 0xE900000000000065, v101);
    }

    return v108;
  }

  v63 = *&v109[0];
  v64 = [*&v109[0] domain];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {

    goto LABEL_41;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v69 & 1) == 0)
  {

    goto LABEL_51;
  }

LABEL_41:
  sub_1000E72C4(v63);
  v70 = String._bridgeToObjectiveC()();

  v111 = sub_10009FAD4(0, &unk_10059CE30);
  *&v110 = v70;
  sub_1000828A8(&v110, v109);
  v71 = v112;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v71;
  sub_1001B3A08(v109, 0x707954726F727265, 0xE900000000000065, v72);
  v112 = v108;
  v73 = [v63 userInfo];
  v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v74 + 16))
  {
    v77 = sub_1000EE808(v75, v76);
    v79 = v78;

    if (v79)
    {
      sub_10009F6D0(*(v74 + 56) + 32 * v77, &v110);
      sub_1000828A8(&v110, v109);
      v80 = v112;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v80;
      sub_1001B3A08(v109, 0x7366664F656C6966, 0xEA00000000007465, v81);
      v112 = v108;
      goto LABEL_46;
    }
  }

  else
  {
  }

  sub_10016D4C4(0x7366664F656C6966, 0xEA00000000007465, &v110);
  sub_100005518(&v110, &unk_10059CC50);
LABEL_46:
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v74 + 16))
  {

    goto LABEL_57;
  }

  v84 = sub_1000EE808(v82, v83);
  v86 = v85;

  if ((v86 & 1) == 0)
  {
LABEL_57:

    sub_10016D4C4(0x65646E4968736168, 0xE900000000000078, v109);

    sub_100005518(v109, &unk_10059CC50);
    return v112;
  }

  sub_10009F6D0(*(v74 + 56) + 32 * v84, &v110);

  sub_1000828A8(&v110, v109);
  v87 = v112;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v87;
  sub_1001B3A08(v109, 0x65646E4968736168, 0xE900000000000078, v88);

  return v108;
}

uint64_t sub_1000E7068()
{
  v0 = type metadata accessor for NWInterface.InterfaceType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  NWInterface.type.getter();
  v7 = (*(v1 + 88))(v6, v0);
  if (v7 == enum case for NWInterface.InterfaceType.other(_:))
  {
    return 0x726568746FLL;
  }

  if (v7 == enum case for NWInterface.InterfaceType.wifi(_:))
  {
    return 1768319351;
  }

  if (v7 == enum case for NWInterface.InterfaceType.cellular(_:))
  {
    return 0x72616C756C6C6563;
  }

  if (v7 == enum case for NWInterface.InterfaceType.wiredEthernet(_:))
  {
    return 0x6465726977;
  }

  if (v7 == enum case for NWInterface.InterfaceType.loopback(_:))
  {
    return 0x6B636162706F6F6CLL;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v9._countAndFlagsBits = 0x286E776F6E6B6E75;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  NWInterface.type.getter();
  _print_unlocked<A, B>(_:_:)();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = v13[0];
  v10(v6, v0);
  return v12;
}

unint64_t sub_1000E72C4(void *a1)
{
  if ([a1 code] == 4)
  {
    return 0xD000000000000023;
  }

  if ([a1 code] == 2)
  {
    return 0xD000000000000022;
  }

  _StringGuts.grow(_:)(34);

  [a1 code];
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000001FLL;
}

Class sub_1000E73D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1000E7460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E755C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1000E7660(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000E77D0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1000E772C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1000E7784(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E77D0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10019AA64(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_10019AA64(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_10019AA64(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1000E7C48(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000E7D08, 0, 0);
}

uint64_t sub_1000E7D08()
{
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1000E7DB4;
  v2 = *(v0 + 80);

  return sub_1000C5300(v0 + 16, 0, 0, v2);
}

uint64_t sub_1000E7DB4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000E7F0C, 0, 0);
}

uint64_t sub_1000E7F0C()
{
  if (qword_10059B490 != -1)
  {
    swift_once();
  }

  v1 = qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues;
  os_unfair_lock_lock((qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues));
  v2 = *(v1 + 8);
  if (v2 == 2)
  {
    objc_opt_self();
    LOBYTE(v2) = sub_10030B548();
    *(v1 + 8) = v2;
  }

  os_unfair_lock_unlock(v1);
  if (v2)
  {
    sub_100005B60(v0 + 2, v0[5]);
    v3 = sub_1000D06CC();
  }

  else
  {
    v3 = 0;
  }

  sub_100005A00((v0 + 2));

  v4 = v0[1];

  return v4(v3 & 1);
}

double sub_1000E8064(uint64_t a1, uint64_t a2)
{
  result = COERCE_DOUBLE(sub_1000D0880(@"skanner-service-sample-rate", a1, a2));
  if (v3)
  {
    return 0.1;
  }

  return result;
}

id sub_1000E8114()
{
  result = [objc_allocWithZone(type metadata accessor for KatanaSubscriptionCoordinator()) init];
  qword_1005AB0E8 = result;
  return result;
}

uint64_t sub_1000E81A4(void *a1, void *a2)
{
  v4 = [a1 ams_DSID];
  if (!v4)
  {
    v24 = a2;
    v25 = a1;
    v11 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412547;
      *(v27 + 4) = v24;
      *(v27 + 12) = 2113;
      *(v27 + 14) = v25;
      *v28 = v24;
      v28[1] = v25;
      v29 = v24;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v11, v26, "[%@] Failed to find DSID for account: %{private}@", v27, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
    }

    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 stringValue];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  _StringGuts.grow(_:)(25);

  v92[0] = 0xD000000000000017;
  v92[1] = 0x800000010044EB90;
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1000E8A98(a1, a2, __src);
  memcpy(__dst, __src, 0x13AuLL);
  if (sub_1000F2708(__dst) != 1)
  {
    sub_100005518(__src, &unk_10059CE70);
    v31 = a2;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v92[0] = v36;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2082;
      v37 = v31;
      v38 = sub_1001AD0D8(v7, v9, v92);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Subscription info exists for accountID: %{public}s. Clearing default.", v34, 0x16u);
      sub_100005518(v35, &unk_10059C250);

      sub_100005A00(v36);
    }

    else
    {
    }

    v39 = objc_opt_self();
    sub_1003D4024(v39, 0, v11);
    goto LABEL_15;
  }

  v12 = objc_opt_self();
  v13 = sub_1003D3F18(v12, v11);
  if (!v13 || (v14 = v13, v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v14, v16 = sub_100172EF8(v15), , !v16))
  {

LABEL_15:

    v41 = 0;
    return v41 & 1;
  }

  v17 = a2;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v53 = v12;
  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v11;
    v22 = swift_slowAlloc();
    v92[0] = v22;
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v21 = v17;
    *(v20 + 12) = 2082;
    v23 = v17;
    *(v20 + 14) = sub_1001AD0D8(v7, v9, v92);
    _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Migrating subscription info for account: %{public}s", v20, 0x16u);
    sub_100005518(v21, &unk_10059C250);

    sub_100005A00(v22);
    v11 = v51;
  }

  sub_1000F0164(&v57);
  *&v55[0] = v57;
  BYTE8(v55[0]) = v58;
  *&v55[1] = v59;
  BYTE8(v55[1]) = v60;
  v55[2] = v61;
  *&v55[3] = v62;
  BYTE8(v55[3]) = v63;
  *&v55[4] = v64;
  BYTE8(v55[4]) = v65;
  *&v55[5] = v66;
  BYTE8(v55[5]) = v67;
  *&v55[6] = v68;
  BYTE8(v55[6]) = v69;
  *&v55[7] = v70;
  BYTE8(v55[7]) = v71;
  *&v55[8] = v72;
  BYTE8(v55[8]) = v73;
  *&v55[9] = v74;
  BYTE8(v55[9]) = v75;
  *&v55[10] = v76;
  BYTE8(v55[10]) = v77;
  v55[11] = v78;
  *&v55[12] = v79;
  BYTE8(v55[12]) = v80;
  v55[13] = v81;
  *&v55[14] = v82;
  BYTE8(v55[14]) = v83;
  v55[15] = v84;
  BYTE8(v55[16]) = v86;
  v55[17] = v87;
  v55[18] = v88;
  *&v55[16] = v85;
  *&v55[19] = v89;
  WORD4(v55[19]) = v90;
  memcpy(v92, v55, 0x13AuLL);
  v41 = sub_1000E9020(v92, a1, v17);
  sub_1000F22F8(v55);
  sub_1003D4024(v53, 0, v11);
  v42 = v52;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v46 = 138412802;
    *(v46 + 4) = v42;
    *v47 = v42;
    *(v46 + 12) = 2082;
    v49 = v42;
    v50 = sub_1001AD0D8(v7, v9, &v54);

    *(v46 + 14) = v50;
    *(v46 + 22) = 1024;
    *(v46 + 24) = v41 & 1;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%@] Migrated subscription info for account: %{public}s result: %{BOOL}d", v46, 0x1Cu);
    sub_100005518(v47, &unk_10059C250);

    sub_100005A00(v48);
  }

  else
  {
  }

  return v41 & 1;
}

void *sub_1000E8A98@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [a1 ams_DSID];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringValue];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = a2;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = a3;
      v17 = swift_slowAlloc();
      __src[0] = v17;
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2082;
      v18 = v12;
      v19 = v9;
      *(v15 + 14) = sub_1001AD0D8(v9, v11, __src);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Loading subscription info for account: %{public}s", v15, 0x16u);
      sub_100005518(v16, &unk_10059C250);

      sub_100005A00(v17);
      a3 = v42;
    }

    else
    {
      v19 = v9;
    }

    v28 = sub_1000E996C(v12);
    if (v28[2] && (v29 = sub_1000EE808(v19, v11), (v30 & 1) != 0))
    {
      v31 = (v28[7] + 320 * v29);
      memcpy(__dst, v31, 0x13AuLL);
      memmove(__src, v31, 0x13AuLL);
      nullsub_75(__src);
      sub_1000F2328(__dst, v43);

      memcpy(v45, __src, 0x13AuLL);
    }

    else
    {

      sub_1000F281C(v45);
    }

    sub_1000044A4(v45, __src, &unk_10059CE70);
    v32 = v12;

    sub_1000044A4(v45, __src, &unk_10059CE70);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      __src[0] = v37;
      *v35 = 138412802;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 2082;
      v38 = v32;
      v39 = sub_1001AD0D8(v19, v11, __src);

      *(v35 + 14) = v39;
      *(v35 + 22) = 1024;
      v40 = sub_1000F2708(v45) == 0;
      sub_100005518(v45, &unk_10059CE70);
      *(v35 + 24) = v40;
      sub_100005518(v45, &unk_10059CE70);
      _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Subscription info loaded for account: %{public}s exists: %{BOOL}d", v35, 0x1Cu);
      sub_100005518(v36, &unk_10059C250);

      sub_100005A00(v37);
    }

    else
    {
      sub_100005518(v45, &unk_10059CE70);
      sub_100005518(v45, &unk_10059CE70);
    }

    memcpy(__src, v45, 0x13AuLL);
  }

  else
  {
    v20 = a2;
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412547;
      *(v24 + 4) = v20;
      *(v24 + 12) = 2113;
      *(v24 + 14) = v21;
      *v25 = v20;
      v25[1] = v21;
      v26 = v20;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Failed to find DSID for account: %{private}@", v24, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
    }

    sub_1000F281C(__src);
  }

  return memcpy(a3, __src, 0x13AuLL);
}

uint64_t sub_1000E9020(const void *a1, id a2, void *a3)
{
  v6 = [a2 ams_DSID];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringValue];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000E996C(a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v12;
    sub_1000F2328(a1, v24);
    sub_1001B3CD4(a1, v9, v11, isUniquelyReferenced_nonNull_native);

    v14 = sub_1000E9FDC(v25, a3);
  }

  else
  {
    v15 = a3;
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412547;
      *(v19 + 4) = v15;
      *(v19 + 12) = 2113;
      *(v19 + 14) = v16;
      *v20 = v15;
      v20[1] = v16;
      v21 = v15;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Failed to find DSID for account: %{private}@", v19, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
    }

    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_1000E9288(void *a1)
{
  v67 = type metadata accessor for Date();
  v3 = *(v67 - 8);
  v4 = __chkstk_darwin(v67);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = a1;
  v73 = &v58 - v7;
  v70 = v1;
  v8 = sub_1000E996C(a1);
  v9 = v8;
  v78 = v8;
  v10 = v8 + 8;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8[8];
  v68 = OBJC_IVAR____TtC9appstored29KatanaSubscriptionCoordinator_logger;

  swift_beginAccess();
  result = v9;
  v15 = 0;
  LODWORD(v62) = 0;
  v16 = (v11 + 63) >> 6;
  v64 = (v3 + 8);
  *&v17 = 138413058;
  v58 = v17;
  *&v17 = 138412802;
  v60 = v17;
  v63 = result;
  v65 = result;
  v66 = v6;
  v59 = v10;
  while (v13)
  {
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v15 << 6);
    if ((*(*(result + 56) + 320 * v20 + 312) & 1) == 0)
    {
      v21 = (*(result + 48) + 16 * v20);
      v22 = v21[1];
      v69 = *v21;

      Date.init(timeIntervalSince1970:)();
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v24 = v23;
      Date.timeIntervalSince1970.getter();
      v26 = v24 - v25;
      if (v26 > 2678400.0)
      {
        v37 = v63;

        v71 = v22;
        v38 = sub_1000EE808(v69, v22);
        if (v39)
        {
          v40 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v37;
          v42 = v37;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1001B1424();
            v42 = v75;
          }

          memcpy(v74, (*(v42 + 56) + 320 * v40), 0x13AuLL);
          sub_1001B29DC(v40, v42);

          sub_1000F22F8(v74);
          memcpy(v76, v74, 0x13AuLL);
          nullsub_75(v76);
          memcpy(v77, v76, 0x13AuLL);
          v37 = v42;
        }

        else
        {

          sub_1000F281C(v76);
          memcpy(v77, v76, 0x13AuLL);
        }

        v63 = v37;
        v78 = v37;
        v43 = v71;

        v44 = v72;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v62 = v45;
          v48 = v47;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          LODWORD(v61) = v46;
          v51 = v50;
          v76[0] = v50;
          *v48 = v58;
          *(v48 + 4) = v44;
          *v49 = v72;
          *(v48 + 12) = 2082;
          v52 = v44;
          v53 = sub_1001AD0D8(v69, v43, v76);

          *(v48 + 14) = v53;
          *(v48 + 22) = 1026;
          *(v48 + 24) = sub_1000F2708(v77) == 1;
          *(v48 + 28) = 2050;
          *(v48 + 30) = v26;
          v54 = v62;
          _os_log_impl(&_mh_execute_header, v62, v61, "[%@] Cleared subscriptionInfo for accountID: %{public}s result: %{BOOL,public}d age: %{public}f", v48, 0x26u);
          sub_100005518(v49, &unk_10059C250);

          sub_100005A00(v51);
        }

        else
        {
        }

        v55 = *v64;
        v56 = v67;
        (*v64)(v66, v67);
        v55(v73, v56);
        LODWORD(v62) = 1;
      }

      else
      {

        v27 = v72;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        v71 = v28;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v77[0] = v61;
          *v30 = v60;
          *(v30 + 4) = v27;
          *v31 = v72;
          *(v30 + 12) = 2082;
          v32 = v27;
          v33 = sub_1001AD0D8(v69, v22, v77);

          *(v30 + 14) = v33;
          *(v30 + 22) = 2050;
          *(v30 + 24) = v26;
          v34 = v71;
          _os_log_impl(&_mh_execute_header, v71, v29, "[%@] Not clearing subscriptionInfo for accountID: %{public}s age: %{public}f", v30, 0x20u);
          sub_100005518(v31, &unk_10059C250);
          v10 = v59;

          sub_100005A00(v61);
        }

        else
        {
        }

        v35 = *v64;
        v36 = v67;
        (*v64)(v66, v67);
        v35(v73, v36);
      }

      result = v65;
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v16)
    {
      break;
    }

    v13 = v10[v18];
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_9;
    }
  }

  if (v62)
  {
    v57 = sub_1000E9FDC(v63, v72);
  }

  else
  {
    v57 = 0;
  }

  return v57 & 1;
}

void *sub_1000E996C(void *a1)
{
  v43 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v6 - 8);
  v8 = v39 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v44 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = v39 - v13;
  v14 = OBJC_IVAR____TtC9appstored29KatanaSubscriptionCoordinator_logger;
  v15 = a1;
  v39[1] = v14;
  v40 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v41 = v15;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v41;
    *(v18 + 4) = v41;
    *v19 = v20;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Loading all subscription info", v18, 0xCu);
    sub_100005518(v19, &unk_10059C250);
  }

  objc_opt_self();
  v22 = sub_10029BA64();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v10;
  (*(v10 + 56))(v8, 1, 1, v9);
  v23 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v46 = v9;
  v24 = *(v3 + 104);
  v25 = v5;
  v26 = v5;
  v27 = v43;
  v24(v26, enum case for URL.DirectoryHint.inferFromPath(_:), v43);
  v28 = v44;
  URL.init(filePath:directoryHint:relativeTo:)();
  v47 = 0xD00000000000001FLL;
  v48 = 0x800000010044E9C0;
  v24(v25, v23, v27);
  v29 = v46;
  sub_100003B3C();
  v30 = v45;
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v25, v27);
  v31 = *(v42 + 8);
  v31(v28, v29);
  v32 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v33 = String._bridgeToObjectiveC()();

  LODWORD(v28) = [v32 fileExistsAtPath:v33];

  if (v28)
  {
    v34 = Data.init(contentsOf:options:)();
    v36 = v35;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000F2780();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100088CDC(v34, v36);
    v38 = v47;
  }

  else
  {
    v38 = sub_1000EF9A4(_swiftEmptyArrayStorage);
  }

  v31(v30, v29);
  return v38;
}

uint64_t sub_1000E9FDC(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for URL();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v38 = a1;
  sub_1000F272C();
  v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v17;
  v29 = a2;
  v30 = v2;

  objc_opt_self();
  v18 = sub_10029BA64();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v20;
  v32 = v19;

  (*(v36 + 56))(v10, 1, 1, v37);
  v21 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v22 = v35;
  v23 = *(v35 + 104);
  v23(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  URL.init(filePath:directoryHint:relativeTo:)();
  v38 = 0xD00000000000001FLL;
  v39 = 0x800000010044E9C0;
  v23(v7, v21, v5);
  sub_100003B3C();
  URL.appending<A>(path:directoryHint:)();
  v24 = v36;
  (*(v22 + 8))(v7, v5);
  v25 = *(v24 + 8);
  v25(v14, v37);
  v27 = v33;
  v26 = v34;
  Data.write(to:options:)();
  v25(v16, v37);
  sub_100088CDC(v27, v26);
  return 1;
}

uint64_t sub_1000EA524(void *a1, char a2, void *a3)
{
  sub_1000E8A98(a1, a3, __src);
  if ((a2 & 1) == 0 || (v5 = BYTE8(__src[0]), v65 = *&__src[1], v66 = *&__src[0], v6 = BYTE8(__src[1]), v64 = __src[2], v7 = BYTE8(__src[3]), v62 = *&__src[4], v63 = *&__src[3], v8 = BYTE8(__src[4]), v9 = BYTE8(__src[5]), v60 = *&__src[6], v61 = *&__src[5], v10 = BYTE8(__src[6]), v11 = BYTE8(__src[7]), v58 = *&__src[8], v59 = *&__src[7], v12 = BYTE8(__src[8]), v56 = *&__src[10], v57 = *&__src[9], v41 = BYTE8(__src[9]), v42 = BYTE8(__src[10]), v55 = __src[11], v54 = *&__src[12], v53 = __src[13], v52 = *&__src[14], v43 = BYTE8(__src[12]), v44 = BYTE8(__src[14]), v51 = __src[15], v50 = *&__src[16], v48 = __src[18], v49 = __src[17], v47 = *&__src[19], v45 = BYTE8(__src[16]), v46 = BYTE8(__src[19]), v69 = BYTE9(__src[19]), memcpy(__dst, __src, 0x13AuLL), sub_1000F2708(__dst) == 1) || __dst[313] == 2)
  {
    memcpy(v72, __src, 0x13AuLL);
    if (sub_1000F2708(v72) == 1)
    {
      return 0;
    }

    v67 = a3;
    v68 = a2 ^ 1;
    v13 = *&v72[0];
    v73 = BYTE8(v72[0]);
    v14 = *&v72[1];
    v15 = v72[2];
    v16 = *&v72[3];
    v17 = *&v72[4];
    v18 = *&v72[5];
    v19 = *&v72[6];
    v20 = *&v72[7];
    v21 = *&v72[8];
    v22 = *&v72[9];
    v23 = *&v72[10];
    v24 = v72[11];
    v25 = *&v72[12];
    v26 = v72[13];
    v27 = *&v72[14];
    v28 = v72[15];
    v29 = *&v72[16];
    v30 = v72[17];
    v31 = v72[18];
    v32 = *&v72[19];
    v69 = BYTE9(v72[19]);
    v33 = BYTE8(v72[19]);
    v34 = BYTE8(v72[16]);
    v35 = BYTE8(v72[14]);
    v36 = BYTE8(v72[12]);
    v37 = BYTE8(v72[10]);
    v38 = BYTE8(v72[9]);
    v12 = BYTE8(v72[8]);
    v11 = BYTE8(v72[7]);
    v10 = BYTE8(v72[6]);
    v9 = BYTE8(v72[5]);
    v8 = BYTE8(v72[4]);
    v7 = BYTE8(v72[3]);
    v5 = BYTE8(v72[0]) & 1;
    v6 = BYTE8(v72[1]);
  }

  else
  {
    v67 = a3;
    v68 = __dst[313];
    v14 = v65;
    v13 = v66;
    v15 = v64;
    v17 = v62;
    v16 = v63;
    v19 = v60;
    v18 = v61;
    v21 = v58;
    v20 = v59;
    v23 = v56;
    v22 = v57;
    v24 = v55;
    v25 = v54;
    v26 = v53;
    v27 = v52;
    v28 = v51;
    v29 = v50;
    v31 = v48;
    v30 = v49;
    v32 = v47;
    v34 = v45;
    v33 = v46;
    v36 = v43;
    v35 = v44;
    v38 = v41;
    v37 = v42;
  }

  *&v70[0] = v13;
  BYTE8(v70[0]) = v5 & 1;
  *&v70[1] = v14;
  BYTE8(v70[1]) = v6 & 1;
  v70[2] = v15;
  *&v70[3] = v16;
  BYTE8(v70[3]) = v7 & 1;
  *&v70[4] = v17;
  BYTE8(v70[4]) = v8 & 1;
  *&v70[5] = v18;
  BYTE8(v70[5]) = v9 & 1;
  *&v70[6] = v19;
  BYTE8(v70[6]) = v10 & 1;
  *&v70[7] = v20;
  BYTE8(v70[7]) = v11 & 1;
  *&v70[8] = v21;
  BYTE8(v70[8]) = v12 & 1;
  *&v70[9] = v22;
  BYTE8(v70[9]) = v38 & 1;
  *&v70[10] = v23;
  BYTE8(v70[10]) = v37 & 1;
  v70[11] = v24;
  *&v70[12] = v25;
  BYTE8(v70[12]) = v36 & 1;
  v70[13] = v26;
  *&v70[14] = v27;
  BYTE8(v70[14]) = v35 & 1;
  v70[15] = v28;
  *&v70[16] = v29;
  BYTE8(v70[16]) = v34 & 1;
  v70[17] = v30;
  v70[18] = v31;
  *&v70[19] = v32;
  BYTE8(v70[19]) = v33 & 1;
  BYTE9(v70[19]) = v69;
  memcpy(v75, v70, sizeof(v75));
  if (v68)
  {
    v39 = sub_1000EA89C(v67);
    sub_1000F22F8(v70);
    return v39;
  }

  sub_1000F22F8(v70);
  return 0;
}

uint64_t sub_1000EA89C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  memcpy(v33, v1, 0x13AuLL);
  sub_1000F2658();
  v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v19 = v18;

  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v33[0] = 0;
  v22 = [v20 JSONObjectWithData:isa options:0 error:v33];

  if (v22)
  {
    v23 = *&v33[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100085D40(&unk_10059DC90);
    if (swift_dynamicCast())
    {
      v32 = v31;
      sub_10016D4C4(0xD000000000000015, 0x800000010044EA30, v33);
      sub_100088CDC(v17, v19);
      sub_100005518(v33, &unk_10059CC50);
      return v32;
    }

    sub_100088CDC(v17, v19);
  }

  else
  {
    v25 = *&v33[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100088CDC(v17, v19);
    static Logger.arcade.getter();
    v7 = a1;
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v3;
      v12 = v11;
      v27 = swift_slowAlloc();
      *&v33[0] = v27;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v12 = v7;
      *(v10 + 12) = 2082;
      swift_getErrorValue();
      v28 = v4;
      v29 = v6;
      v13 = v7;
      v14 = Error.localizedDescription.getter();
      v16 = sub_1001AD0D8(v14, v15, v33);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Error serializing property list: %{public}s", v10, 0x16u);
      sub_100005518(v12, &unk_10059C250);

      sub_100005A00(v27);

      (*(v28 + 8))(v29, v30);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_1000EADAC(void *a1, id a2, uint64_t a3, void *a4)
{
  v8 = [a2 ams_DSID];
  if (!v8)
  {
    v23 = a4;
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412547;
      *(v27 + 4) = v23;
      *(v27 + 12) = 2113;
      *(v27 + 14) = v24;
      *v28 = v23;
      v28[1] = v24;
      v29 = v23;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Updating cached subscription info failed to find DSID for account: %{private}@", v27, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
    }

    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 stringValue];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = a4;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v33 = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v11;
    v20 = swift_slowAlloc();
    *&v36[0] = v20;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2082;
    v21 = v14;
    v22 = sub_1001AD0D8(v19, v13, v36);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Updating cached subscription info for account: %{public}s", v17, 0x16u);
    sub_100005518(v18, &unk_10059C250);

    sub_100005A00(v20);

    a1 = v33;

    if (a3)
    {
LABEL_4:
      sub_1000056D0(a3 + OBJC_IVAR___Bag_bag, __dst);
      sub_100085D40(&qword_10059C3D0);
      sub_100085D40(&unk_10059CE80);
      swift_dynamicCast();
      goto LABEL_10;
    }
  }

  else
  {

    if (a3)
    {
      goto LABEL_4;
    }
  }

  memset(v36, 0, 40);
LABEL_10:
  sub_1000EB1B8(a1, a2, v36, v14, __src);
  sub_100005518(v36, &qword_10059BDF0);
  memcpy(__dst, __src, 0x13AuLL);
  if (sub_1000F2708(__dst) != 1)
  {
    memcpy(v36, __dst, 0x13AuLL);
    v31 = sub_1000E9020(v36, a2, v14);
    sub_100005518(__src, &unk_10059CE70);
    return v31 & 1;
  }

LABEL_11:
  v31 = 0;
  return v31 & 1;
}

void *sub_1000EB1B8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v167 = a3;
  v194 = a2;
  v8 = type metadata accessor for AccountClientIdentifier();
  v166 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v164 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v162 = &v157 - v11;
  v165 = type metadata accessor for ClientInfo();
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v161 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Calendar.Component();
  v198 = *(v196 - 8);
  __chkstk_darwin(v196);
  v195 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100085D40(&qword_10059CB40);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v186 = &v157 - v19;
  v20 = __chkstk_darwin(v18);
  v187 = &v157 - v21;
  v22 = __chkstk_darwin(v20);
  v192 = &v157 - v23;
  v24 = __chkstk_darwin(v22);
  v188 = &v157 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v157 - v27;
  __chkstk_darwin(v26);
  v30 = &v157 - v29;
  v197 = type metadata accessor for Date();
  *&v199 = *(v197 - 8);
  v31 = __chkstk_darwin(v197);
  v32 = __chkstk_darwin(v31);
  v34 = &v157 - v33;
  v35 = __chkstk_darwin(v32);
  v36 = __chkstk_darwin(v35);
  v191 = &v157 - v37;
  __chkstk_darwin(v36);
  v39 = __chkstk_darwin(&v157 - v38);
  v40 = __chkstk_darwin(v39);
  v45 = &v157 - v44;
  if (!a1)
  {
    sub_1000E8A98(v194, a4, v240);
    memcpy(v241, v240, 0x13AuLL);
    if (sub_1000F2708(v241) == 1)
    {
      v54 = v240;
    }

    else
    {
      v237 = v241[6];
      v238 = v241[7];
      v239 = v241[8];
      v233 = v241[2];
      v234 = v241[3];
      v235 = v241[4];
      v236 = v241[5];
      v231 = v241[0];
      v232 = v241[1];
      v228 = *(&v241[13] + 9);
      v229 = *(&v241[14] + 9);
      v230[0] = *(&v241[15] + 9);
      *(v230 + 15) = *(&v241[16] + 1);
      v224 = *(&v241[9] + 9);
      v225 = *(&v241[10] + 9);
      v226 = *(&v241[11] + 9);
      v227 = *(&v241[12] + 9);
      *(v223 + 10) = *(&v241[18] + 10);
      v223[0] = v241[18];
      v242 = v241[17];
      LOBYTE(v206[0]) = 1;
      sub_100005518(&v242, &qword_10059CEB8);
      v220[5] = v236;
      v220[6] = v237;
      v220[7] = v238;
      v220[8] = v239;
      v220[1] = v232;
      v220[2] = v233;
      v220[3] = v234;
      v220[4] = v235;
      v220[0] = v231;
      *&v220[9] = 0;
      v86 = v206[0];
      BYTE8(v220[9]) = v206[0];
      *(&v220[13] + 9) = v228;
      *(&v220[14] + 9) = v229;
      *(&v220[15] + 9) = v230[0];
      *(&v220[16] + 1) = *(v230 + 15);
      *(&v220[9] + 9) = v224;
      *(&v220[10] + 9) = v225;
      *(&v220[11] + 9) = v226;
      *(&v220[12] + 9) = v227;
      v199 = xmmword_100435FC0;
      *(&v220[18] + 10) = *(v223 + 10);
      v220[17] = xmmword_100435FC0;
      v220[18] = v223[0];
      memcpy(v221, v220, 0x13AuLL);
      nullsub_75(v221);
      v222[6] = v237;
      v222[7] = v238;
      v222[8] = v239;
      v222[2] = v233;
      v222[3] = v234;
      v222[4] = v235;
      v222[5] = v236;
      v222[0] = v231;
      v222[1] = v232;
      *(&v222[13] + 9) = v228;
      *(&v222[14] + 9) = v229;
      *(&v222[15] + 9) = v230[0];
      *(&v222[9] + 9) = v224;
      *(&v222[10] + 9) = v225;
      *(&v222[11] + 9) = v226;
      *&v222[9] = 0;
      BYTE8(v222[9]) = v86;
      *(&v222[16] + 1) = *(v230 + 15);
      *(&v222[12] + 9) = v227;
      *(&v222[18] + 10) = *(v223 + 10);
      v222[17] = v199;
      v222[18] = v223[0];
      sub_1000F2328(v220, v243);
      sub_1000F22F8(v222);
      v54 = v221;
    }

    memcpy(v243, v54, 0x13AuLL);
    v87 = a5;
    return memcpy(v87, v243, 0x13AuLL);
  }

  v171 = v40;
  v178 = v43;
  v158 = v8;
  v159 = v42;
  v190 = a4;
  v183 = v41;
  v176 = a5;
  LOBYTE(v243[0]) = 1;
  LOBYTE(v241[0]) = 1;
  LOBYTE(v222[0]) = 1;
  LOBYTE(v221[0]) = 1;
  LOBYTE(v220[0]) = 1;
  LOBYTE(v231) = 1;
  v201 = 1;
  LOBYTE(v224) = 1;
  LOBYTE(v223[0]) = 1;
  LOBYTE(v242) = 1;
  LOBYTE(v206[0]) = 1;
  v200 = 1;
  v175 = 1;
  v212 = 1;
  v211 = 1;
  v210 = 1;
  v209 = 1;
  v208 = 1;
  v207 = 1;
  v205 = 1;
  v203 = 1;
  v46 = a1;
  v174 = [v46 autoRenewEnabled];
  v214 = 0;
  v47 = [v46 chargeStoreFrontID];
  v193 = Int.init(truncating:)();

  v213 = 0;
  v48 = [v46 expiryDate];
  v189 = v17;
  v160 = v34;
  if (v48)
  {
    v49 = v48;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v199;
    v51 = *(v199 + 56);
    v52 = v28;
    v53 = 0;
  }

  else
  {
    v50 = v199;
    v51 = *(v199 + 56);
    v52 = v28;
    v53 = 1;
  }

  v55 = v197;
  v185 = v51;
  v51(v52, v53, 1, v197);
  v56 = v198;
  v57 = *(v198 + 104);
  v58 = v195;
  v59 = v196;
  v181 = enum case for Calendar.Component.month(_:);
  v182 = v198 + 104;
  v180 = v57;
  v57(v195);
  sub_1000ECBDC(v28, v58, v30);
  v60 = *(v56 + 8);
  v198 = v56 + 8;
  v179 = v60;
  v60(v58, v59);
  sub_100005518(v28, &qword_10059CB40);
  v194 = *(v50 + 48);
  if ((v194)(v30, 1, v55) == 1)
  {
    sub_100005518(v30, &qword_10059CB40);
    v61 = 0;
    v173 = 0;
  }

  else
  {
    (*(v50 + 32))(v45, v30, v55);
    v62 = v188;
    (*(v50 + 16))(v188, v45, v55);
    v185(v62, 0, 1, v55);
    v61 = sub_1000F08D4(v62);
    v173 = v63;
    sub_100005518(v62, &qword_10059CB40);
    (*(v50 + 8))(v45, v55);
  }

  v64 = v55;
  v65 = v190;
  v66 = [v46 initialPurchaseTimestamp];
  v67 = v189;
  v68 = v192;
  if (v66)
  {
    v69 = v66;
    v70 = v61;
    Int.init(truncating:)();
    v71 = v178;
    Date.init(timeIntervalSince1970:)();
    sub_1000ED07C(v71, v65, v68);
    v72 = (v194)(v68, 1, v64);
    v73 = v199;
    if (v72 == 1)
    {
      (*(v199 + 8))(v71, v64);

      sub_100005518(v68, &qword_10059CB40);
      v178 = 0;
      v74 = v191;
      v61 = v70;
      v67 = v189;
    }

    else
    {
      v75 = v171;
      (*(v199 + 32))(v171, v68, v64);
      Date.timeIntervalSince1970.getter();
      v77 = v76;

      v78 = *(v73 + 8);
      v78(v75, v64);
      result = (v78)(v71, v64);
      v80 = v77 * 1000.0;
      if (COERCE__INT64(fabs(v77 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v74 = v191;
      if (v80 <= -9.22337204e18)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v61 = v70;
      v67 = v189;
      if (v80 >= 9.22337204e18)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v178 = v80;
      v212 = 0;
    }
  }

  else
  {
    v178 = 0;
    v73 = v199;
    v74 = v191;
  }

  LODWORD(v171) = [v46 isInGracePeriod];
  v211 = 0;
  LODWORD(v170) = [v46 isOfferPeriod];
  v210 = 0;
  v169 = [v46 isPurchaser];
  v209 = 0;
  v168 = [v46 isTrialPeriod];
  v208 = 0;
  v81 = [v46 vendorAdHocOfferID];
  v172 = v61;
  if (v81)
  {

    v82 = [v46 vendorAdHocOfferID];
    if (v82)
    {
      v83 = v82;
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v191 = v85;
      v192 = v84;

      goto LABEL_25;
    }
  }

  v191 = 0;
  v192 = 0;
LABEL_25:
  v88 = [v46 serviceBeginsTimestamp];
  v89 = v187;
  if (!v88)
  {
LABEL_28:
    v190 = 0;
    v91 = v185;
    goto LABEL_33;
  }

  v90 = v88;
  Int.init(truncating:)();
  Date.init(timeIntervalSince1970:)();
  sub_1000ED07C(v74, v190, v89);
  if ((v194)(v89, 1, v64) == 1)
  {
    (*(v73 + 8))(v74, v64);

    sub_100005518(v89, &qword_10059CB40);
    goto LABEL_28;
  }

  v92 = v159;
  (*(v73 + 32))(v159, v89, v64);
  Date.timeIntervalSince1970.getter();
  v94 = v93;

  v95 = *(v73 + 8);
  v95(v92, v64);
  result = (v95)(v74, v64);
  v96 = v94 * 1000.0;
  if (COERCE__INT64(fabs(v94 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v91 = v185;
  if (v96 <= -9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v96 < 9.22337204e18)
  {
    v190 = v96;
    v207 = 0;
LABEL_33:
    v97 = [v46 startDate];
    v177 = v46;
    if (v97)
    {
      v98 = v97;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v91(v67, v99, 1, v64);
    v100 = v195;
    v101 = v67;
    v102 = v196;
    v180(v195, v181, v196);
    v103 = v91;
    v104 = v186;
    sub_1000ECBDC(v101, v100, v186);
    v179(v100, v102);
    sub_100005518(v101, &qword_10059CB40);
    if ((v194)(v104, 1, v64) == 1)
    {
      sub_100005518(v104, &qword_10059CB40);
      v198 = 0;
      v196 = 0;
    }

    else
    {
      v105 = v160;
      (*(v73 + 32))(v160, v104, v64);
      v106 = v188;
      (*(v73 + 16))(v188, v105, v64);
      v103(v106, 0, 1, v64);
      v198 = sub_1000F08D4(v106);
      v196 = v107;
      sub_100005518(v106, &qword_10059CB40);
      (*(v73 + 8))(v105, v64);
    }

    v108 = v183;
    v109 = v177;
    v110 = [v177 inAppAdamID];
    v195 = [v110 longLongValue];

    v205 = 0;
    v111 = [v109 featureAccessTypeID];
    v194 = (v111 && (v112 = v111, v113 = [v111 integerValue], v112, v113 > 0));
    v114 = 1819047278;
    v203 = 0;
    v115 = [v109 freeTrialPeriodID];
    if (v115)
    {
      v116 = v115;
      v117 = [v115 integerValue];

      if (v117 > 0)
      {
        v114 = 21574;
      }

      v118 = 0xE400000000000000;
      if (v117 > 0)
      {
        v118 = 0xE200000000000000;
      }
    }

    else
    {

      v118 = 0xE400000000000000;
    }

    v188 = v118;
    v119 = [v109 isTrialPeriod];

    if (v119)
    {
      v120 = 0x6169725465657266;
    }

    else
    {
      v120 = 1684627792;
    }

    v121 = 0xE90000000000006CLL;
    if (!v119)
    {
      v121 = 0xE400000000000000;
    }

    v186 = v121;
    v187 = v120;
    v122 = [v109 subscriptionBundleID];
    v123 = [v122 integerValue];

    v189 = v114;
    if (v123)
    {
      v124 = v178;

      v125 = 0xE900000000000065;
      v126 = 0x6E4F20656C707041;
LABEL_57:
      v127 = v199;
      v128 = v197;
      goto LABEL_58;
    }

    v140 = [v109 promoScenarioID];
    if (!v140)
    {
      v124 = v178;
      v125 = 0xEA0000000000656ELL;

      v126 = 0x6F6C61646E617453;
      goto LABEL_57;
    }

    v141 = v140;
    v142 = [v140 longLongValue];

    if (*(v184 + OBJC_IVAR____TtC9appstored29KatanaSubscriptionCoordinator_hardwareBundlePromoScenarios))
    {
      v124 = v178;
      v143 = *(v184 + OBJC_IVAR____TtC9appstored29KatanaSubscriptionCoordinator_hardwareBundlePromoScenarios);
      goto LABEL_74;
    }

    sub_1000044A4(v167, v243, &qword_10059BDF0);
    v144 = v243[3];
    if (v243[3])
    {
      v145 = v243[4];
      v146 = sub_100005B60(v243, v243[3]);
      *(&v241[1] + 1) = v144;
      *&v241[2] = v145;
      v147 = sub_100005F38(v241);
      (*(*(v144 - 8) + 16))(v147, v146, v144);
      sub_100005A00(v243);
      if (*(&v241[1] + 1))
      {
        sub_1000D8B18(v241, v243);
LABEL_73:
        v124 = v178;
        sub_100005B60(v243, v243[3]);
        v143 = sub_1000ED6E8();
        sub_100005A00(v243);
LABEL_74:
        v154 = *(v143 + 2);
        v155 = 32;
        v127 = v199;
        v128 = v197;
        while (v154)
        {
          v156 = *&v143[v155];
          v155 += 8;
          --v154;
          if (v156 == v142)
          {

            v125 = 0xEF656C646E754220;
            v126 = 0x6572617764726148;
            goto LABEL_58;
          }
        }

        v125 = 0xEA0000000000656ELL;

        v126 = 0x6F6C61646E617453;
LABEL_58:
        v201 = 0;
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v130 = v129;

        result = (*(v127 + 8))(v108, v128);
        v131 = v130 * 1000.0;
        if (COERCE__INT64(fabs(v130 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v131 > -9.22337204e18)
        {
          if (v131 < 9.22337204e18)
          {
            v167 = v131;
            v200 = 0;
            v183 = v174;
            v221[0] = v174;
            v181 = v214;
            v165 = v171;
            LOBYTE(v221[1]) = v214;
            *&v199 = v170;
            *(&v221[1] + 1) = *v219;
            v184 = v169;
            HIDWORD(v221[1]) = *&v219[3];
            v221[2] = v193;
            v180 = v168;
            LODWORD(v171) = v213;
            LOBYTE(v221[3]) = v213;
            *(&v221[3] + 1) = *v218;
            HIDWORD(v221[3]) = *&v218[3];
            v132 = v126;
            v166 = v126;
            v133 = v172;
            v134 = v173;
            v221[4] = v172;
            v221[5] = v173;
            v221[6] = 0;
            LOBYTE(v221[7]) = 1;
            *(&v221[7] + 1) = *v217;
            HIDWORD(v221[7]) = *&v217[3];
            v221[8] = 0;
            v135 = v175;
            LOBYTE(v221[9]) = v175;
            *(&v221[9] + 1) = *v216;
            HIDWORD(v221[9]) = *&v216[3];
            v221[10] = v124;
            v136 = v212;
            LOBYTE(v221[11]) = v212;
            *(&v221[11] + 1) = *v215;
            HIDWORD(v221[11]) = *&v215[3];
            v221[12] = v165;
            LODWORD(v197) = v211;
            LOBYTE(v221[13]) = v211;
            HIDWORD(v221[13]) = *(v220 + 3);
            *(&v221[13] + 1) = v220[0];
            v221[14] = v170;
            LODWORD(v185) = v210;
            LOBYTE(v221[15]) = v210;
            HIDWORD(v221[15]) = *(&v231 + 3);
            *(&v221[15] + 1) = v231;
            v221[16] = v169;
            LODWORD(v182) = v209;
            LOBYTE(v221[17]) = v209;
            *(&v221[17] + 1) = v224;
            HIDWORD(v221[17]) = *(&v224 + 3);
            v221[18] = 1;
            LODWORD(v179) = v201;
            LOBYTE(v221[19]) = v201;
            HIDWORD(v221[19]) = *(v223 + 3);
            *(&v221[19] + 1) = v223[0];
            v221[20] = v168;
            LODWORD(v178) = v208;
            LOBYTE(v221[21]) = v208;
            HIDWORD(v221[21]) = *(&v242 + 3);
            *(&v221[21] + 1) = v242;
            v221[22] = v192;
            v221[23] = v191;
            v221[24] = v190;
            LODWORD(v177) = v207;
            LOBYTE(v221[25]) = v207;
            HIDWORD(v221[25]) = *(v206 + 3);
            *(&v221[25] + 1) = v206[0];
            v221[26] = v198;
            v221[27] = v196;
            v221[28] = v195;
            v174 = v205;
            LOBYTE(v221[29]) = v205;
            HIDWORD(v221[29]) = *&v204[3];
            *(&v221[29] + 1) = *v204;
            v221[30] = v189;
            v221[31] = v188;
            v221[32] = v194;
            *(&v221[33] + 1) = *v202;
            v137 = v203;
            LOBYTE(v221[33]) = v203;
            HIDWORD(v221[33]) = *&v202[3];
            v139 = v186;
            v138 = v187;
            v221[34] = v187;
            v221[35] = v186;
            v221[36] = v132;
            v221[37] = v125;
            v221[38] = v131;
            v170 = v125;
            LOWORD(v221[39]) = 256;
            memcpy(v222, v221, 0x13AuLL);
            nullsub_75(v222);
            *&v241[0] = v183;
            BYTE8(v241[0]) = v181;
            *&v241[1] = v193;
            BYTE8(v241[1]) = v171;
            *&v241[2] = v133;
            *(&v241[2] + 1) = v134;
            BYTE8(v241[3]) = 1;
            BYTE8(v241[4]) = v135;
            *&v241[5] = v124;
            BYTE8(v241[5]) = v136;
            *&v241[6] = v165;
            *(v241 + 9) = *v219;
            HIDWORD(v241[0]) = *&v219[3];
            *(&v241[1] + 9) = *v218;
            HIDWORD(v241[1]) = *&v218[3];
            *(&v241[3] + 9) = *v217;
            HIDWORD(v241[3]) = *&v217[3];
            *(&v241[4] + 9) = *v216;
            HIDWORD(v241[4]) = *&v216[3];
            *(&v241[5] + 9) = *v215;
            HIDWORD(v241[5]) = *&v215[3];
            *&v241[3] = 0;
            *&v241[4] = 0;
            BYTE8(v241[6]) = v197;
            *(&v241[6] + 9) = v220[0];
            HIDWORD(v241[6]) = *(v220 + 3);
            *&v241[7] = v199;
            BYTE8(v241[7]) = v185;
            HIDWORD(v241[7]) = *(&v231 + 3);
            *(&v241[7] + 9) = v231;
            *&v241[8] = v184;
            BYTE8(v241[8]) = v182;
            HIDWORD(v241[8]) = *(&v224 + 3);
            *(&v241[8] + 9) = v224;
            *&v241[9] = 1;
            BYTE8(v241[9]) = v179;
            HIDWORD(v241[9]) = *(v223 + 3);
            *(&v241[9] + 9) = v223[0];
            *&v241[10] = v180;
            BYTE8(v241[10]) = v178;
            HIDWORD(v241[10]) = *(&v242 + 3);
            *(&v241[10] + 9) = v242;
            *&v241[11] = v192;
            *(&v241[11] + 1) = v191;
            *&v241[12] = v190;
            BYTE8(v241[12]) = v177;
            HIDWORD(v241[12]) = *(v206 + 3);
            *(&v241[12] + 9) = v206[0];
            *&v241[13] = v198;
            *(&v241[13] + 1) = v196;
            *&v241[14] = v195;
            BYTE8(v241[14]) = v174;
            HIDWORD(v241[14]) = *&v204[3];
            *(&v241[14] + 9) = *v204;
            *&v241[15] = v189;
            *(&v241[15] + 1) = v188;
            *&v241[16] = v194;
            BYTE8(v241[16]) = v137;
            *(&v241[16] + 9) = *v202;
            HIDWORD(v241[16]) = *&v202[3];
            *&v241[17] = v138;
            *(&v241[17] + 1) = v139;
            *&v241[18] = v166;
            *(&v241[18] + 1) = v170;
            *&v241[19] = v167;
            WORD4(v241[19]) = 256;
            sub_1000F2328(v221, v243);
            sub_1000F22F8(v241);
            memcpy(v243, v222, 0x13AuLL);
            v87 = v176;
            return memcpy(v87, v243, 0x13AuLL);
          }

          goto LABEL_81;
        }

        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }
    }

    else
    {
      sub_100005518(v243, &qword_10059BDF0);
      memset(v241, 0, 40);
    }

    v148 = v162;
    static AccountClientIdentifier.production.getter();
    v149 = v166;
    v150 = *(v166 + 16);
    v185 = 0;
    v151 = v158;
    v150(v164, v148, v158);
    v152 = v161;
    ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
    (*(v149 + 8))(v148, v151);
    v153 = sub_1000D6694(v152);
    (*(v163 + 8))(v152, v165);
    sub_1000C7BA4(v243);

    if (*(&v241[1] + 1))
    {
      sub_100005518(v241, &unk_10059CEC0);
    }

    goto LABEL_73;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1000ECBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v37 = a1;
  v4 = type metadata accessor for DateComponents();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Calendar.Identifier();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100085D40(&qword_10059CB40);
  v13 = __chkstk_darwin(v12 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000044A4(v37, v16, &qword_10059CB40);
  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    sub_100005518(v16, &qword_10059CB40);
    return (*(v18 + 56))(a3, 1, 1, v17);
  }

  else
  {
    v37 = a3;
    v28 = *(v18 + 32);
    v28(v20, v16, v17);
    v23 = v30;
    (*(v6 + 104))(v8, enum case for Calendar.Identifier.gregorian(_:), v30);
    Calendar.init(identifier:)();
    (*(v6 + 8))(v8, v23);
    sub_1000F0604(v34);
    v24 = v33;
    Calendar.dateComponents(_:from:)();

    v25 = v29;
    Calendar.date(from:)();
    (*(v35 + 8))(v24, v36);
    (*(v31 + 8))(v11, v32);
    (*(v18 + 8))(v20, v17);
    v26 = (v18 + 56);
    if (v21(v25, 1, v17) == 1)
    {
      sub_100005518(v25, &qword_10059CB40);
      return (*v26)(v37, 1, 1, v17);
    }

    else
    {
      v27 = v37;
      v28(v37, v25, v17);
      return (*v26)(v27, 0, 1, v17);
    }
  }
}

uint64_t sub_1000ED07C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v51 = a1;
  v53 = a3;
  v3 = type metadata accessor for Logger();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = __chkstk_darwin(v9);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Calendar.Identifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Calendar();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for Calendar.Identifier.gregorian(_:), v14);
  Calendar.init(identifier:)();
  v22 = v17;
  v23 = v51;
  (*(v15 + 8))(v22, v14);
  Date.init()();
  v56[1] = 0;
  (*(v6 + 104))(v8, enum case for Calendar.Component.weekOfMonth(_:), v5);
  LOBYTE(v14) = Calendar.dateInterval(of:start:interval:for:)();
  (*(v6 + 8))(v8, v5);
  if (v14)
  {
    v24 = v53;
    Calendar.startOfDay(for:)();
    v25 = v54;
    v26 = v55;
    (*(v54 + 8))(v13, v55);
    (*(v19 + 8))(v21, v18);
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v45 = v19;
    v46 = v18;
    static Logger.arcade.getter();
    v25 = v54;
    v26 = v55;
    v29 = v48;
    (*(v54 + 16))(v48, v23, v55);
    v30 = v47;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      LODWORD(v47) = v32;
      v35 = v34;
      v44 = v34;
      v51 = swift_slowAlloc();
      v56[0] = v51;
      *v33 = 138412546;
      *(v33 + 4) = v30;
      *v35 = v30;
      *(v33 + 12) = 2082;
      sub_1000F27D4(&qword_10059DC10, &type metadata accessor for Date);
      v36 = v30;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v25 + 8);
      v40(v29, v55);
      v41 = sub_1001AD0D8(v37, v39, v56);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v31, v47, "[%@] Failed to deres date: %{public}s", v33, 0x16u);
      sub_100005518(v44, &unk_10059C250);

      sub_100005A00(v51);

      v26 = v55;

      (*(v49 + 8))(v52, v50);
      v40(v13, v26);
    }

    else
    {

      v42 = *(v25 + 8);
      v42(v29, v26);
      (*(v49 + 8))(v52, v50);
      v42(v13, v26);
      v25 = v54;
    }

    (*(v45 + 8))(v21, v46);
    v27 = 1;
    v28 = v53;
  }

  return (*(v25 + 56))(v28, v27, 1, v26);
}

char *sub_1000ED6E8()
{
  v0 = type metadata accessor for AnyValue();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of Bag.subscript.getter();
  if (!v4)
  {
    return &off_100508B18;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v20 = v7;
    v8 = *(v6 + 64);
    v19[1] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v10 = *(v6 + 56);
    v11 = (v6 - 8);
    v12 = _swiftEmptyArrayStorage;
    v19[2] = v6;
    v7(v3, v9, v0);
    while (1)
    {
      v13 = AnyValue.int.getter();
      v15 = v14;
      (*v11)(v3, v0);
      if ((v15 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1001AC928(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_1001AC928((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        *&v12[8 * v17 + 32] = v13;
      }

      v9 += v10;
      if (!--v5)
      {
        break;
      }

      v20(v3, v9, v0);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t type metadata accessor for KatanaSubscriptionCoordinator()
{
  result = qword_10059CD70;
  if (!qword_10059CD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000ED9C8()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000EDA64(char a1)
{
  result = 0x656E65526F747561;
  switch(a1)
  {
    case 1:
    case 14:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6144657269707865;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6164417070416E69;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x5065636172477369;
      break;
    case 7:
      result = 0x50726566664F7369;
      break;
    case 8:
      result = 0x6168637275507369;
      break;
    case 9:
      result = 0x7263736275537369;
      break;
    case 10:
      result = 0x506C616972547369;
      break;
    case 11:
      result = 0x656449726566666FLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x7461447472617473;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
    case 20:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000EDCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F0AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EDD1C(uint64_t a1)
{
  v2 = sub_1000F22A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EDD58(uint64_t a1)
{
  v2 = sub_1000F22A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EDD94(void *a1)
{
  v3 = sub_100085D40(&qword_10059CD90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100005B60(a1, a1[3]);
  sub_1000F22A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_1000EE204@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000F11C4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x13AuLL);
  }

  return result;
}

uint64_t sub_1000EE268(void *a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CDD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100005B60(a1, a1[3]);
  sub_1000F252C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100085D40(&qword_10059CDA8);
  sub_1000F25D4(&qword_10059CDD8, sub_1000F2658);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_1000EE3FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000EE468()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EE4B8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100508BB8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000EE540@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100508BF0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000EE5A4(uint64_t a1)
{
  v2 = sub_1000F252C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EE5E0(uint64_t a1)
{
  v2 = sub_1000F252C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000EE61C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000F2360(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1000EE664()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  v6 = String._bridgeToObjectiveC()();
  [v4 setDateFormat:v6];

  qword_10059CD30 = v4;
}

unint64_t sub_1000EE7C4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000EEAF4(a1, v4);
}

unint64_t sub_1000EE808(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000EEBBC(a1, a2, v4);
}

unint64_t sub_1000EE880(Swift::UInt64 a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  v4 = Hasher._finalize()();

  return sub_1000EEC74(a1, a2 & 1, v4);
}

unint64_t sub_1000EE910(void *a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v2 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();

  return sub_1000EECF8(a1, v3);
}

unint64_t sub_1000EE9A0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000EEDFC(a1, v4, &unk_10059CE30);
}

unint64_t sub_1000EE9F0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000EEDFC(a1, v4, &qword_10059CBB0);
}

unint64_t sub_1000EEA40(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1000F27D4(&qword_10059CE50, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000EEEC8(a1, v2);
}

unint64_t sub_1000EEAF4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000F26AC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000B5BDC(v8);
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

unint64_t sub_1000EEBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EEC74(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000EECF8(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_10009FAD4(0, &qword_10059CBB0);
          v10 = v9;
          v11 = a1;
          v12 = static NSObject.== infix(_:_:)();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EEDFC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_10009FAD4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EEEC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000F27D4(&qword_10059CE50, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000EEFD4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000EF040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&unk_10059ECF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000044A4(v4, v13, &unk_10059CDF0);
      result = sub_1000EE7C4(v13);
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
      result = sub_1000828A8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000EF17C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059ED00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000044A4(v4, &v13, &qword_10059CE00);
      v5 = v13;
      v6 = v14;
      result = sub_1000EE808(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000828A8(&v15, (v3[7] + 32 * result));
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

void *sub_1000EF2AC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100085D40(&unk_10059CE10);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1000081E4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1000081E4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000EF3C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059F6E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000EE9A0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1000EF4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059CEE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000EE808(v5, v6);
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

unint64_t sub_1000EF5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059CEF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000EE808(v5, v6);
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

unint64_t sub_1000EF6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059CEF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1000EE9F0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000EF7B8(uint64_t a1)
{
  v2 = sub_100085D40(&qword_10059CED8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100085D40(&qword_10059CEE0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000044A4(v9, v5, &qword_10059CED8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000EE808(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AnyValue();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_1000EF9A4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100085D40(&qword_10059CDC0);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  memcpy(__dst, a1 + 4, 0x14AuLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_1000044A4(__dst, v15, &qword_10059CDC8);
  v6 = sub_1000EE808(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 46);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 320 * v6), &__dst[2], 0x13AuLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x14AuLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1000044A4(__dst, v15, &qword_10059CDC8);
    v6 = sub_1000EE808(v4, v5);
    v8 += 336;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000EFB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059CE58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000044A4(v4, &v11, &unk_10059CE60);
      v5 = v11;
      result = sub_1000EEA40(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000828A8(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1000EFC58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059CE08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000EE808(v5, v6);
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

unint64_t sub_1000EFD6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059CE48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000EE808(v5, v6);
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

unint64_t sub_1000EFE68(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100085D40(&qword_10059CE40);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1000081E4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1000081E4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000EFF64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&qword_10059F680);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000EE808(v5, v6);
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

unint64_t sub_1000F0060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100085D40(&unk_10059CE20);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000EE808(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F0164@<X0>(uint64_t a1@<X8>)
{
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 1;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 1;
  v95 = 0;
  v96 = 1;
  v97 = 0;
  v98 = 1;
  v99 = 0;
  v100 = 1;
  v101 = 0;
  v102 = 1;
  v103 = 0;
  v104 = 1;
  v105 = 0;
  v106 = 1;
  v107 = 0;
  v108 = 1;
  v110 = 0;
  v109 = 0;
  v111 = 0;
  v112 = 1;
  v114 = 0;
  v113 = 0;
  v115 = 0;
  v116 = 1;
  v118 = 0;
  v117 = 0;
  v119 = 0;
  v120 = 1;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v124 = 1;
  v125 = 2;
  sub_1000F22F8(&v87);
  v3 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v40 = 0;
  v5 = [v3 dataWithJSONObject:isa options:0 error:&v40];

  v6 = v40;
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000F2580();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    result = sub_100088CDC(v7, v9);
    if (!v1)
    {
      v11 = v41;
      v12 = v43;
      v13 = v44;
      v14 = v47;
      v15 = v48;
      v16 = v50;
      v17 = v51;
      v18 = v53;
      v19 = v54;
      v20 = v56;
      v21 = v57;
      v22 = v59;
      v23 = v60;
      v24 = v62;
      v25 = v63;
      v26 = v65;
      v27 = v66;
      v28 = v68;
      result = v69;
      v29 = v72;
      v30 = v73;
      v31 = v76;
      v32 = v77;
      v38 = v80;
      v33 = v81;
      v39 = v85;
      v34 = v86;
      *a1 = v40;
      *(a1 + 8) = v11;
      *(a1 + 9) = *v42;
      *(a1 + 12) = *&v42[3];
      *(a1 + 16) = v12;
      *(a1 + 24) = v13;
      *(a1 + 25) = *v45;
      *(a1 + 28) = *&v45[3];
      *(a1 + 32) = v46;
      *(a1 + 48) = v14;
      *(a1 + 56) = v15;
      *(a1 + 57) = *v49;
      *(a1 + 60) = *&v49[3];
      *(a1 + 64) = v16;
      *(a1 + 72) = v17;
      *(a1 + 73) = *v52;
      *(a1 + 76) = *&v52[3];
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
      *(a1 + 89) = *v55;
      *(a1 + 92) = *&v55[3];
      *(a1 + 96) = v20;
      *(a1 + 104) = v21;
      *(a1 + 105) = *v58;
      *(a1 + 108) = *&v58[3];
      *(a1 + 112) = v22;
      *(a1 + 120) = v23;
      *(a1 + 124) = *&v61[3];
      *(a1 + 121) = *v61;
      *(a1 + 128) = v24;
      *(a1 + 136) = v25;
      *(a1 + 140) = *&v64[3];
      *(a1 + 137) = *v64;
      *(a1 + 144) = v26;
      *(a1 + 152) = v27;
      *(a1 + 156) = *&v67[3];
      *(a1 + 153) = *v67;
      *(a1 + 160) = v28;
      *(a1 + 168) = result;
      LODWORD(v20) = *v70;
      *(a1 + 172) = *&v70[3];
      *(a1 + 169) = v20;
      *(a1 + 176) = v71;
      *(a1 + 192) = v29;
      *(a1 + 200) = v30;
      LODWORD(v20) = *v74;
      *(a1 + 204) = *&v74[3];
      *(a1 + 201) = v20;
      *(a1 + 208) = v75;
      *(a1 + 224) = v31;
      *(a1 + 232) = v32;
      v35 = *v78;
      *(a1 + 236) = *&v78[3];
      *(a1 + 233) = v35;
      *(a1 + 240) = v79;
      *(a1 + 256) = v38;
      *(a1 + 264) = v33;
      LODWORD(v20) = *v82;
      *(a1 + 268) = *&v82[3];
      *(a1 + 265) = v20;
      v36 = v84;
      *(a1 + 272) = v83;
      *(a1 + 288) = v36;
      *(a1 + 304) = v39;
      *(a1 + 312) = v34;
    }
  }

  else
  {
    v37 = v6;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void *sub_1000F0604(uint64_t a1)
{
  v21 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v18 = &v17 - v5;
  sub_100085D40(&qword_10059CED0);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100435FD0;
  v17 = v8;
  v9 = v8 + v7;
  v10 = *(v2 + 104);
  v10(v8 + v7, enum case for Calendar.Component.year(_:), v1);
  v10(v9 + v6, enum case for Calendar.Component.month(_:), v1);
  v10(v9 + 2 * v6, enum case for Calendar.Component.day(_:), v1);
  v10(v9 + 3 * v6, enum case for Calendar.Component.hour(_:), v1);
  v10(v9 + 4 * v6, enum case for Calendar.Component.minute(_:), v1);
  v10(v9 + 5 * v6, enum case for Calendar.Component.second(_:), v1);
  v19 = v6;
  v10(v9 + 6 * v6, enum case for Calendar.Component.nanosecond(_:), v1);
  v22 = &_swiftEmptySetSingleton;
  v11 = *(v2 + 16);
  v12 = 8;
  do
  {
    if (!--v12)
    {
      break;
    }

    v13 = v20;
    v14 = v9 + v19;
    v11(v20, v9, v1);
    v15 = v18;
    sub_1001750DC(v18, v13);
    (*(v2 + 8))(v15, v1);
    v9 = v14;
  }

  while ((static Calendar.Component.== infix(_:_:)() & 1) == 0);

  return v22;
}

uint64_t sub_1000F08D4(uint64_t a1)
{
  v2 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000044A4(a1, v4, &qword_10059CB40);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005518(v4, &qword_10059CB40);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (qword_10059B4C8 != -1)
    {
      swift_once();
    }

    v10 = qword_10059CD30;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v12 = [v10 stringFromDate:isa];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 8))(v8, v5);
    return v13;
  }
}

uint64_t sub_1000F0AF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E65526F747561 && a2 == 0xE900000000000077 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010044EB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144657269707865 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010044EB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6164417070416E69 && a2 == 0xEB0000000064496DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010044EB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5065636172477369 && a2 == 0xED0000646F697265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x50726566664F7369 && a2 == 0xED0000646F697265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6168637275507369 && a2 == 0xEB00000000726573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000072656269 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x506C616972547369 && a2 == 0xED0000646F697265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656449726566666FLL && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010044EB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010044EAF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010044EAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010044EAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010044EA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010044EA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010044EA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010044EA50 == a2)
  {

    return 20;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

void *sub_1000F11C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100085D40(&qword_10059CD80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v163 = 1;
  v161 = 1;
  v159 = 1;
  v157 = 1;
  v155 = 1;
  v153 = 1;
  v151 = 1;
  v149 = 1;
  v147 = 1;
  v145 = 1;
  v143 = 1;
  v141 = 1;
  v139 = 1;
  v137 = 1;
  v9 = a1[3];
  v72 = a1;
  sub_100005B60(a1, v9);
  sub_1000F22A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v164 = v2;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v70 = 0;
    v71 = 0;
    sub_100005A00(v72);
    v83 = 0;
    v84 = v163;
    *v85 = *v162;
    *&v85[3] = *&v162[3];
    v86 = 0;
    v87 = v161;
    *v88 = *v160;
    *&v88[3] = *&v160[3];
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = v159;
    *v93 = *v158;
    *&v93[3] = *&v158[3];
    v94 = 0;
    v95 = v157;
    *v96 = *v156;
    *&v96[3] = *&v156[3];
    v97 = 0;
    v98 = v155;
    *&v99[3] = *&v154[3];
    *v99 = *v154;
    v100 = 0;
    v101 = v153;
    *&v102[3] = *&v152[3];
    *v102 = *v152;
    v103 = v71;
    v104 = v151;
    *&v105[3] = *&v150[3];
    *v105 = *v150;
    v106 = v70;
    v107 = v149;
    *&v108[3] = *&v148[3];
    *v108 = *v148;
    v109 = v80;
    v110 = v147;
    *&v111[3] = *&v146[3];
    *v111 = *v146;
    v112 = v79;
    v113 = v145;
    *&v114[3] = *&v144[3];
    *v114 = *v144;
    v115 = v77;
    v116 = v78;
    v117 = v76;
    v118 = v143;
    *&v119[3] = *&v142[3];
    *v119 = *v142;
    v120 = v74;
    v121 = v75;
    v122 = v73;
    v123 = v141;
    *&v124[3] = *&v140[3];
    *v124 = *v140;
    v125 = v63;
    v126 = v65;
    v127 = v64;
    v128 = v139;
    *v129 = *v138;
    *&v129[3] = *&v138[3];
    v130 = v68;
    v131 = v66;
    v132 = v62;
    v133 = v69;
    v134 = v67;
    v135 = v137;
    v136 = 2;
    return sub_1000F22F8(&v83);
  }

  else
  {
    LOBYTE(v83) = 0;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v163 = v11 & 1;
    LOBYTE(v83) = 1;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v161 = v12 & 1;
    LOBYTE(v83) = 2;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v13;
    LOBYTE(v83) = 3;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v159 = v14 & 1;
    LOBYTE(v83) = 4;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v157 = v15 & 1;
    LOBYTE(v83) = 5;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v155 = v16 & 1;
    LOBYTE(v83) = 6;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v153 = v17 & 1;
    LOBYTE(v83) = 7;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v151 = v18 & 1;
    LOBYTE(v83) = 8;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v20 = a2;
    v70 = v19;
    v149 = v21 & 1;
    LOBYTE(v83) = 9;
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v147 = v22 & 1;
    LOBYTE(v83) = 10;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v145 = v23 & 1;
    LOBYTE(v83) = 11;
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v24;
    v164 = 0;
    LOBYTE(v83) = 12;
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v143 = v25 & 1;
    LOBYTE(v83) = 13;
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v75 = v26;
    v164 = 0;
    LOBYTE(v83) = 14;
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v141 = v27 & 1;
    LOBYTE(v83) = 15;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v28;
    v164 = 0;
    LOBYTE(v83) = 16;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v139 = v29 & 1;
    LOBYTE(v83) = 17;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v30;
    v164 = 0;
    LOBYTE(v83) = 18;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v31;
    v164 = 0;
    LOBYTE(v83) = 19;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v137 = v32 & 1;
    v82 = 20;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v164 = 0;
    v34 = v33;
    (*(v6 + 8))(v8, v5);
    *v81 = v61;
    v47 = v163;
    v81[8] = v163;
    *&v81[9] = *v162;
    *&v81[12] = *&v162[3];
    *&v81[16] = v60;
    v45 = v161;
    v81[24] = v161;
    *&v81[25] = *v160;
    *&v81[28] = *&v160[3];
    *&v81[32] = v58;
    *&v81[40] = v59;
    v35 = v56;
    *&v81[48] = v57;
    v42 = v159;
    v81[56] = v159;
    *&v81[57] = *v158;
    *&v81[60] = *&v158[3];
    *&v81[64] = v56;
    v41 = v157;
    v81[72] = v157;
    *&v81[73] = *v156;
    *&v81[76] = *&v156[3];
    v37 = v54;
    v36 = v55;
    *&v81[80] = v55;
    v38 = v155;
    v81[88] = v155;
    *&v81[92] = *&v154[3];
    *&v81[89] = *v154;
    *&v81[96] = v54;
    v53 = v153;
    v81[104] = v153;
    *&v81[108] = *&v152[3];
    *&v81[105] = *v152;
    *&v81[112] = v71;
    v52 = v151;
    v81[120] = v151;
    *&v81[124] = *&v150[3];
    *&v81[121] = *v150;
    *&v81[128] = v70;
    v51 = v149;
    v81[136] = v149;
    *&v81[140] = *&v148[3];
    *&v81[137] = *v148;
    *&v81[144] = v80;
    v50 = v147;
    v81[152] = v147;
    *&v81[156] = *&v146[3];
    *&v81[153] = *v146;
    *&v81[160] = v79;
    v49 = v145;
    v81[168] = v145;
    *&v81[172] = *&v144[3];
    *&v81[169] = *v144;
    *&v81[176] = v77;
    *&v81[184] = v78;
    *&v81[192] = v76;
    v48 = v143;
    v81[200] = v143;
    *&v81[204] = *&v142[3];
    *&v81[201] = *v142;
    *&v81[208] = v74;
    *&v81[216] = v75;
    *&v81[224] = v73;
    v46 = v141;
    v81[232] = v141;
    *&v81[236] = *&v140[3];
    *&v81[233] = *v140;
    *&v81[240] = v63;
    *&v81[248] = v65;
    *&v81[256] = v64;
    *&v81[265] = *v138;
    v43 = v139;
    v81[264] = v139;
    *&v81[268] = *&v138[3];
    v39 = v69;
    *&v81[272] = v68;
    *&v81[280] = v66;
    *&v81[288] = v62;
    *&v81[296] = v69;
    *&v81[304] = v67;
    v44 = v137;
    v81[312] = v137;
    v81[313] = v34;
    sub_1000F2328(v81, &v83);
    sub_100005A00(v72);
    v83 = v61;
    v84 = v47;
    v86 = v60;
    v87 = v45;
    v89 = v58;
    v90 = v59;
    v91 = v57;
    v92 = v42;
    v94 = v35;
    v95 = v41;
    v97 = v36;
    v98 = v38;
    v100 = v37;
    *v85 = *v162;
    *&v85[3] = *&v162[3];
    *v88 = *v160;
    *&v88[3] = *&v160[3];
    *v93 = *v158;
    *&v93[3] = *&v158[3];
    *v96 = *v156;
    *&v96[3] = *&v156[3];
    *v99 = *v154;
    *&v99[3] = *&v154[3];
    v101 = v53;
    *v102 = *v152;
    *&v102[3] = *&v152[3];
    v103 = v71;
    v104 = v52;
    *&v105[3] = *&v150[3];
    *v105 = *v150;
    v106 = v70;
    v107 = v51;
    *&v108[3] = *&v148[3];
    *v108 = *v148;
    v109 = v80;
    v110 = v50;
    *&v111[3] = *&v146[3];
    *v111 = *v146;
    v112 = v79;
    v113 = v49;
    *&v114[3] = *&v144[3];
    *v114 = *v144;
    v115 = v77;
    v116 = v78;
    v117 = v76;
    v118 = v48;
    *&v119[3] = *&v142[3];
    *v119 = *v142;
    v120 = v74;
    v121 = v75;
    v122 = v73;
    v123 = v46;
    *&v124[3] = *&v140[3];
    *v124 = *v140;
    v125 = v63;
    v126 = v65;
    v127 = v64;
    v128 = v43;
    *v129 = *v138;
    *&v129[3] = *&v138[3];
    v130 = v68;
    v131 = v66;
    v132 = v62;
    v133 = v39;
    v134 = v67;
    v135 = v44;
    v136 = v34;
    sub_1000F22F8(&v83);
    return memcpy(v20, v81, 0x13AuLL);
  }
}

unint64_t sub_1000F22A4()
{
  result = qword_10059CD88;
  if (!qword_10059CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CD88);
  }

  return result;
}

void *sub_1000F2360(void *a1)
{
  v3 = sub_100085D40(&qword_10059CD98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  sub_1000EF9A4(_swiftEmptyArrayStorage);

  v7 = sub_100005B60(a1, a1[3]);
  sub_1000F252C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005A00(a1);
  }

  else
  {
    sub_100085D40(&qword_10059CDA8);
    sub_1000F25D4(&qword_10059CDB0, sub_1000F2580);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005A00(a1);
  }

  return v7;
}

unint64_t sub_1000F252C()
{
  result = qword_10059CDA0;
  if (!qword_10059CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CDA0);
  }

  return result;
}

unint64_t sub_1000F2580()
{
  result = qword_10059CDB8;
  if (!qword_10059CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CDB8);
  }

  return result;
}

uint64_t sub_1000F25D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(&qword_10059CDA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F2658()
{
  result = qword_10059CDE0;
  if (!qword_10059CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CDE0);
  }

  return result;
}

uint64_t sub_1000F2708(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1000F272C()
{
  result = qword_10059CE98;
  if (!qword_10059CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CE98);
  }

  return result;
}

unint64_t sub_1000F2780()
{
  result = qword_10059CEA8;
  if (!qword_10059CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CEA8);
  }

  return result;
}

uint64_t sub_1000F27D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F281C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 48) = 0u;
  result = a1 + 48;
  *(result + 250) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for KatanaSubscriptionMetadata.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KatanaSubscriptionMetadata.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for KatanaSubscriptionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KatanaSubscriptionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F2A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 314))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000F2AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 314) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 314) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1000F2BC0()
{
  result = qword_10059CF00;
  if (!qword_10059CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CF00);
  }

  return result;
}

unint64_t sub_1000F2C18()
{
  result = qword_10059CF08;
  if (!qword_10059CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CF08);
  }

  return result;
}

unint64_t sub_1000F2C70()
{
  result = qword_10059CF10;
  if (!qword_10059CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CF10);
  }

  return result;
}

unint64_t sub_1000F2CC8()
{
  result = qword_10059CF18;
  if (!qword_10059CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CF18);
  }

  return result;
}

unint64_t sub_1000F2D20()
{
  result = qword_10059CF20;
  if (!qword_10059CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CF20);
  }

  return result;
}

unint64_t sub_1000F2D78()
{
  result = qword_10059CF28;
  if (!qword_10059CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CF28);
  }

  return result;
}

uint64_t sub_1000F2DD0(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = (a3 - a3) * 1.0e18;
  v4 = COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v4)
  {
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 9.22337204e18)
  {
    return Duration.init(secondsComponent:attosecondsComponent:)(a3, v3);
  }

LABEL_12:
  __break(1u);
  return Duration.init(secondsComponent:attosecondsComponent:)(a1, a2);
}

id sub_1000F2E78()
{
  result = [objc_allocWithZone(type metadata accessor for RestoreKeeper()) init];
  qword_1005AB0F0 = result;
  return result;
}

void sub_1000F30E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000F32E8(void *a1, char a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a3;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_1000F33E0;

  return sub_1000F7020(v10, a2, v11);
}

uint64_t sub_1000F33E0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000F3550(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (a2)
  {
    swift_errorRetain();
    static Logger.restore.getter();
    swift_errorRetain();
    v12 = a3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2112;
      swift_errorRetain();
      v17 = v12;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v18;
      v16[1] = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Deletion failed with error: %@", v15, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
    }

    else
    {
    }

    v9 = v11;
  }

  else
  {
    static Logger.restore.getter();
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Deletion complete", v22, 0xCu);
      sub_100005518(v23, &unk_10059C250);
    }
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1000F384C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000F3AC0(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1000F3B90;

  return (sub_1000F66F8)(v3, v5);
}

uint64_t sub_1000F3B90(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000F3CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 96) = v15;
  *(v8 + 112) = v16;
  *(v8 + 64) = v13;
  *(v8 + 80) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1000F3E64, 0, 0);
}

uint64_t sub_1000F3E64()
{
  v1 = v0[13];
  v2 = v0[11];
  v17 = v0[10];
  v18 = v0[12];
  v3 = v0[9];
  v16 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = OBJC_IVAR____TtC9appstored13RestoreKeeper_lockedRestores;
  v0[25] = OBJC_IVAR____TtC9appstored13RestoreKeeper_lockedRestores;
  v10 = v8 + v9;
  os_unfair_lock_lock((v8 + v9));
  v11 = *(v10 + 8);

  os_unfair_lock_unlock(v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001B3E60(1, v7, v6, isUniquelyReferenced_nonNull_native);
  os_unfair_lock_lock(v10);

  *(v10 + 8) = v11;
  os_unfair_lock_unlock(v10);
  type metadata accessor for SystemAlert();
  v13 = swift_allocObject();
  v0[26] = v13;
  *(v13 + 16) = v5;
  *(v13 + 24) = v4;
  *(v13 + 32) = v16;
  *(v13 + 40) = v3;
  *(v13 + 48) = v17;
  *(v13 + 56) = v2;
  *(v13 + 64) = v18;
  *(v13 + 72) = v1;
  *(v13 + 80) = 1;

  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_1000F402C;

  return sub_1000F4788();
}

uint64_t sub_1000F402C(char a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1000F4178, 0, 0);
}

uint64_t sub_1000F4178()
{
  v70 = v0;
  if (*(v0 + 224) == 1)
  {
    v36 = *(v0 + 112);
    static Logger.restore.getter();
    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 112);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v40;
      *v42 = v40;
      v43 = v40;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%@] User chose to delete", v41, 0xCu);
      sub_100005518(v42, &unk_10059C250);
    }

    v45 = *(v0 + 168);
    v44 = *(v0 + 176);
    v46 = *(v0 + 160);
    v47 = *(v0 + 112);
    v49 = *(v0 + 32);
    v48 = *(v0 + 40);

    (*(v45 + 8))(v44, v46);
    sub_1000F7E78(v49, v48, v47);
  }

  else if (!*(v0 + 224))
  {
    v1 = *(v0 + 112);
    static Logger.restore.getter();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 112);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] User chose to continue", v6, 0xCu);
      sub_100005518(v7, &unk_10059C250);
    }

    v9 = *(v0 + 192);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 112);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);

    v15 = *(v11 + 8);
    v15(v9, v10);
    v16 = sub_1000F8038(v14, v13, v12);
    if (v16)
    {
      v17 = v16;
      v18 = *(v0 + 112);
      static Logger.restore.getter();
      v19 = v18;
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 184);
      v25 = *(v0 + 160);
      if (v23)
      {
        v67 = *(v0 + 160);
        v68 = *(v0 + 184);
        v27 = *(v0 + 144);
        v26 = *(v0 + 152);
        v63 = *(v0 + 136);
        v28 = *(v0 + 112);
        v65 = v15;
        v29 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v69 = v66;
        *v29 = 138412546;
        *(v29 + 4) = v28;
        *v64 = v28;
        *(v29 + 12) = 2080;
        v30 = v28;
        v62 = v22;
        v31 = [v20 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000F8840(&qword_10059C3E8, &type metadata accessor for UUID);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v27 + 8))(v26, v63);
        v35 = sub_1001AD0D8(v32, v34, &v69);

        *(v29 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v21, v62, "[%@] Prioritizing coordinator with id: %s", v29, 0x16u);
        sub_100005518(v64, &unk_10059C250);

        sub_100005A00(v66);

        v65(v68, v67);
      }

      else
      {

        v15(v24, v25);
      }

      *(v0 + 16) = 0;
      v50 = [v20 prioritizeWithError:v0 + 16];
      v51 = *(v0 + 16);
      if (v50)
      {
        v52 = v51;
      }

      else
      {
        v53 = v51;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  v54 = *(v0 + 120);
  v56 = *(v0 + 32);
  v55 = *(v0 + 40);
  v57 = *(v0 + 24) + *(v0 + 200);

  os_unfair_lock_lock(v57);
  v58 = *(v57 + 8);

  os_unfair_lock_unlock(v57);
  v69 = v58;
  sub_1001AA8CC(2, v56, v55);
  v59 = v69;
  os_unfair_lock_lock(v57);

  *(v57 + 8) = v59;
  os_unfair_lock_unlock(v57);
  v54(0);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1000F4788()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1000F47D0, 0, 0);
}

uint64_t sub_1000F47D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000F48C8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0x28746E6573657270, 0xE900000000000029, sub_1000F87C8, v3, &type metadata for SystemAlert.Response);
}

uint64_t sub_1000F48C8()
{

  return _swift_task_switch(sub_1000F49E0, 0, 0);
}

void sub_1000F4A7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 connection];
  v23 = [objc_allocWithZone(AppInstallEntity) initWithPersistentID:a2 onConnection:v11];

  if ([v23 existsInDatabase])
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v23 setValue:isa forProperty:@"supress_dialogs"];

    v13 = Int._bridgeToObjectiveC()().super.super.isa;
    [v23 setValue:v13 forProperty:@"priority"];

    static Logger.restore.getter();
    v14 = a4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%@ Moved to user prioritized", v17, 0xCu);
      sub_100005518(v18, &unk_10059C250);

      v20 = v23;
    }

    else
    {
      v20 = v15;
      v15 = v23;
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = v23;
  }
}

uint64_t sub_1000F4DD8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10009FAD4(0, &qword_10059D030);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [a1 connection];
  v8 = sub_1002D3F5C(ObjCClassFromMetadata, v7, a2);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v8 firstMemoryEntityWithProperties:isa];

  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1000F506C(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1000F894C;

  return (sub_1000F66F8)(v3, v5);
}

uint64_t sub_1000F516C()
{
  v6[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v6[0] - 8);
  __chkstk_darwin(v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  sub_10009FAD4(0, &qword_10059CBC8);
  static DispatchQoS.unspecified.getter();
  v6[1] = _swiftEmptyArrayStorage;
  sub_1000F8840(&qword_10059D0F0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100085D40(&qword_10059D0F8);
  sub_1000F8888(&qword_10059D100, &qword_10059D0F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6[0]);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10059CF30 = result;
  return result;
}

uint64_t sub_1000F53D0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100085D40(&unk_10059D0B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  if (qword_10059B4D8 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10059CF30;
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_1000F87D0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005A4C;
  aBlock[3] = &unk_10050D880;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000F8840(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_1000F8888(&qword_10059CBE0, &unk_10059D0C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

void sub_1000F579C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085D40(&unk_10059D0D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100434780;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = inited;
  v34[0] = v4;
  v34[1] = a2;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  v11 = a1[2];
  v10 = a1[3];
  v9[8] = &type metadata for String;
  v9[5] = v11;
  v9[6] = v10;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v9[9] = kCFUserNotificationAlertMessageKey;
  v12 = a1[4];
  v13 = a1[5];
  v9[13] = &type metadata for String;
  v9[10] = v12;
  v9[11] = v13;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
    goto LABEL_21;
  }

  v9[14] = kCFUserNotificationDefaultButtonTitleKey;
  v14 = a1[6];
  v15 = a1[7];
  v9[18] = &type metadata for String;
  v9[15] = v14;
  v9[16] = v15;

  v16 = kCFUserNotificationDefaultButtonTitleKey;
  v17 = kCFUserNotificationAlertMessageKey;
  v18 = kCFUserNotificationAlertHeaderKey;
  v19 = sub_1000EFB30(v9);
  swift_setDeallocating();
  sub_100085D40(&unk_10059CE60);
  swift_arrayDestroy();
  v20 = a1[9];
  if (!v20)
  {
LABEL_8:
    error[0] = 0;
    type metadata accessor for CFString(0);
    sub_1000F8840(&unk_10059D0E0, type metadata accessor for CFString);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = CFUserNotificationCreate(0, 0.0, 3uLL, error, isa);

    if (!v29 || error[0])
    {
      static Logger.daemon.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 67240192;
        swift_beginAccess();
        *(v33 + 4) = error[0];
        _os_log_impl(&_mh_execute_header, v31, v32, "Could not create CFUserNotification: %{public}d", v33, 8u);
      }

      (*(v5 + 8))(v7, v34[0]);
    }

    else
    {
      responseFlags[0] = 2;
      CFUserNotificationReceiveResponse(v29, 0.0, responseFlags);
      v30 = responseFlags[0];
      if (responseFlags[0] == 1)
      {
LABEL_17:
        LOBYTE(v35) = v30;
        goto LABEL_18;
      }

      if (!responseFlags[0])
      {
        LOBYTE(v35) = 0;
LABEL_18:
        sub_100085D40(&unk_10059D0B0);
        CheckedContinuation.resume(returning:)();

        return;
      }
    }

    v30 = 2;
    goto LABEL_17;
  }

  if (kCFUserNotificationAlternateButtonTitleKey)
  {
    v21 = a1[8];
    v38 = &type metadata for String;
    responseFlags[0] = v21;
    responseFlags[1] = v20;
    sub_1000828A8(responseFlags, error);
    v22 = kCFUserNotificationAlternateButtonTitleKey;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v19;
    sub_1001B3FCC(error, v22, isUniquelyReferenced_nonNull_native);

    v24 = SBUserNotificationAlternateButtonPresentationStyleKey;
    if (SBUserNotificationAlternateButtonPresentationStyleKey)
    {
      v25 = v35;
      v38 = &type metadata for UInt32;
      LODWORD(responseFlags[0]) = 1;
      sub_1000828A8(responseFlags, error);
      v26 = v24;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v25;
      sub_1001B3FCC(error, v26, v27);

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000F5C54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000F5CC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_1000F506C(v2, v3);
}

void sub_1000F5D7C(uint64_t a1, uint64_t a2, void *a3, char *a4, void (**a5)(const void *, void *))
{
  v10 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for Logger();
  v73 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v68 - v19;
  v74 = swift_allocObject();
  *(v74 + 16) = a5;
  v69 = a5;
  _Block_copy(a5);
  static Logger.restore.getter();
  v21 = a3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v75 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v68 = v14;
    v25 = a1;
    v26 = a2;
    v27 = v24;
    v28 = a4;
    v29 = swift_slowAlloc();
    *v27 = 138412290;
    v30 = v75;
    *(v27 + 4) = v75;
    *v29 = v30;
    v31 = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Prompting the user whether or not to delete restore", v27, 0xCu);
    sub_100005518(v29, &unk_10059C250);
    a4 = v28;

    a2 = v26;
    a1 = v25;
  }

  (*(v73 + 8))(v20, v16);
  v32 = &a4[OBJC_IVAR____TtC9appstored13RestoreKeeper_lockedRestores];
  os_unfair_lock_lock(&a4[OBJC_IVAR____TtC9appstored13RestoreKeeper_lockedRestores]);
  v33 = *(v32 + 1);

  os_unfair_lock_unlock(v32);
  if (*(v33 + 16))
  {
    sub_1000EE808(a1, a2);
    v35 = v34;

    if (v35)
    {
      type metadata accessor for ASDError(0);
      v76 = 506;
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000F8840(&qword_10059B7F0, type metadata accessor for ASDError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v36 = v77;
      v37 = _convertErrorToNSError(_:)();
      v69[2](v69, v37);

      return;
    }
  }

  else
  {
  }

  v38 = objc_allocWithZone(LSApplicationRecord);

  v69 = a1;
  v73 = a2;
  v39 = sub_1001914DC(a1, a2, 1);
  v70 = a4;
  v40 = v39;
  v41 = [v39 localizedName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._object = 0x800000010044EDA0;
  v45._countAndFlagsBits = 0xD000000000000015;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
  v46._countAndFlagsBits = v42;
  v46._object = v44;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v46);

  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
  String.LocalizationValue.init(stringInterpolation:)();
  v72 = String.init(appStoreDaemonLocalized:comment:)();
  v68 = v48;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = String.init(appStoreDaemonLocalized:comment:)();
  v51 = v50;
  String.LocalizationValue.init(stringLiteral:)();
  v52 = String.init(appStoreDaemonLocalized:comment:)();
  v54 = v53;
  String.LocalizationValue.init(stringLiteral:)();
  v55 = String.init(appStoreDaemonLocalized:comment:)();
  v57 = v56;
  v58 = type metadata accessor for TaskPriority();
  v59 = v71;
  (*(*(v58 - 8) + 56))(v71, 1, 1, v58);
  v60 = swift_allocObject();
  v60[2] = 0;
  v60[3] = 0;
  v61 = v69;
  v62 = v70;
  v60[4] = v70;
  v60[5] = v61;
  v63 = v72;
  v60[6] = v73;
  v60[7] = v63;
  v60[8] = v68;
  v60[9] = v49;
  v60[10] = v51;
  v60[11] = v52;
  v60[12] = v54;
  v60[13] = v55;
  v65 = v74;
  v64 = v75;
  v60[14] = v57;
  v60[15] = v64;
  v60[16] = sub_1000F8678;
  v60[17] = v65;
  v66 = v64;

  v67 = v62;

  sub_10019F02C(0, 0, v59, &unk_1004365E8, v60);
}